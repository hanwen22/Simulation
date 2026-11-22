# Simulation Development Diary


# 11.22 (20:47): Part one panelA
# Firstly, I wrote the R code needed for the graph based on the requirements of part one, and then used ai to refine my code. My steps are as follows: Set the model parameters: Use the matrix provided by the teacher. Set the initial conditions: 10 and 100 adult individuals. Deterministic simulation: Run each initial condition once. Random simulation: Run each initial condition 10 times. Successfully, I generated part1_panelA.pdf and part1_panelA_data.RDA. Next, I will start working on panel B.
# 1. Deterministic population dynamics
# - Population size changes in a relatively stable and predictable manner.
# - Under the same initial conditions, the population follows the same trajectory of change.
# 2. Stochastic population dynamics
# - There will be significant fluctuations in population size.
# - Even if the initial population size is the same, different simulation results may vary.
# - The smaller the initial population, the more obvious the impact of random fluctuations usually is.
# 3. Initial population size
# - When the initial population is 10, the random fluctuations are relatively large, and there may even be a significant decrease in population size.
# - When the initial population is 100, the fluctuations are relatively small, and the overall situation is more stable.
# Therefore, my conclusion is Small populations are more vulnerable to stochastic fluctuations and extinction.

