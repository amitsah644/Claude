# Difference-in-Differences (DiD) Example

library(plm)
library(dplyr)

# Sample data
data <- data.frame(
  firm = rep(1:4, each = 4),
  year = rep(2018:2021, times = 4),
  treated = c(0,0,1,1, 0,0,1,1, 0,0,1,1, 0,0,1,1),
  post = ifelse(rep(2018:2021, times = 4) >= 2020, 1, 0),
  outcome = runif(16, 50, 100)
)

# DiD model
model <- lm(outcome ~ treated * post, data = data)

summary(model)
