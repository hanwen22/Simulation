# Part One - Panel B
# Calculate extinction probabilities from HPC simulations

rm(list = ls())
graphics.off()

# 1. Find the 20 HPC result files
files <- list.files(
  "RDA",
  pattern = "^part1_hpc_results_[0-9]+\\.RDA$",
  full.names = TRUE
)

if (length(files) != 20) {
  stop(paste("Expected 20 RDA files, found", length(files)))
}

# 2. Set up storage for the simulations
initial_sizes <- c(3, 10, 30, 100)

all_simulations <- setNames(
  lapply(initial_sizes, function(x) list()),
  as.character(initial_sizes)
)

# 3. Read all 20 RDA files
for (file in files) {

  env <- new.env()
  load(file, envir = env)

  if (!exists("results", envir = env)) {
    stop(paste("Missing results in", file))
  }

  for (size in initial_sizes) {

    sims <- env$results[[as.character(size)]]

    if (length(sims) != 40) {
      stop(paste("Incorrect simulation count in", file))
    }

    all_simulations[[as.character(size)]] <- c(
      all_simulations[[as.character(size)]],
      sims
    )
  }
}

# 4. Calculate extinction probabilities at step 120
extinct_counts <- numeric(length(initial_sizes))
total_counts <- numeric(length(initial_sizes))

for (i in seq_along(initial_sizes)) {

  size <- initial_sizes[i]
  sims <- all_simulations[[as.character(size)]]

  if (length(sims) != 800) {
    stop(paste("Expected 800 simulations for size", size))
  }

  extinction <- vapply(sims, function(x) {
    if (length(x) < 121) {
      stop("A simulation has fewer than 121 time points")
    }
    x[121] == 0
  }, logical(1))

  extinct_counts[i] <- sum(extinction)
  total_counts[i] <- length(extinction)
}

# 5. Create the summary table
summary_data <- data.frame(
  initial_population = initial_sizes,
  extinct_count = extinct_counts,
  total_simulations = total_counts,
  extinction_probability = extinct_counts / total_counts
)

print(summary_data)

# 6. Save the summary data
write.csv(
  summary_data,
  "results/part1_panelB_summary.csv",
  row.names = FALSE
)

save(
  summary_data,
  all_simulations,
  file = "results/part1_panelB_summary.RDA"
)

# 7. Plot Panel B
pdf("results/part1_panelB.pdf", width = 7, height = 5)

par(mar = c(5, 5, 2, 1))

plot(
  summary_data$initial_population,
  summary_data$extinction_probability,
  type = "b",
  pch = 19,
  lwd = 2,
  xlab = "Initial population size",
  ylab = "Extinction probability",
  xlim = c(0, 110),
  ylim = c(0, 1),
  xaxt = "n"
)

axis(1, at = initial_sizes)

dev.off()

cat("\nPanel B analysis completed successfully.\n")
cat("20 RDA files read; 3200 simulations analysed.\n")
