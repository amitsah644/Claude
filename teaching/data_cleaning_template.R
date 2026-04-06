library(dplyr)

# Load data
data <- read.csv("data/sample_dataset.csv")

# Basic cleaning
clean_data <- data %>%
  filter(!is.na(value)) %>%
  mutate(year = as.numeric(year))

summary(clean_data)
