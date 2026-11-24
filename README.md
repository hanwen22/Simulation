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

# 11.23（12:00）：Part one panelB
# I reorganized the structure of my entire assignment. I created folders named RDA, code, and results, and placed the corresponding files in the respective folders.
# I also completed the simulation work for part one, panel B. First, I prepared an R script for the HPC simulation based on the requirements of the problem. Each task used a different random seed. Then, I submitted these tasks to the HPC. The results ran smoothly. Next, I used AI to write an independent R script for merging the simulation results. At step 120, I calculated the extinction probability and generated the charts for Group B. Next, I plan to run the analysis script to check the extinction probability, view the charts, and combine Panels A and B into the required double-panel graph.

# 11.24(23:02) : part one PanelB
# I noticed that there were overlapping parts between the graphics and the text in my panel A chart, and there was too much blank space above the chart in panel B, which made it look very unattractive. So I changed the maximum value of the y-axis to make the chart clearer and more understandable. Then I used AI to combine the two charts. Next, I will proceed to further complete the content of part one. Based on the charts and the obtained data, I will analyze and summarize, and then start writing.