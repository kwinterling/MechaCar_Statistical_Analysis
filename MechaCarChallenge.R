

library(dplyr)

# Part 1

mpg.data <- read.csv("Resources/MechaCar_mpg.csv")

mpg.linear.model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg.data)

mpg.lm.summary <- summary(mpg.linear.model)

