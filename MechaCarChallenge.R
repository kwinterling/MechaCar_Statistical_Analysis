

library(dplyr)

# Part 1

mpg.data <- read.csv("Resources/MechaCar_mpg.csv")

mpg.linear.model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg.data)

mpg.lm.summary <- summary(mpg.linear.model)

# Part 2

suspension.coil.data <- read.csv("Resources/Suspension_Coil.csv")

total_summary <- summarize(suspension.coil.data,
                           Mean = mean(PSI),
                           Median = median(PSI),
                           Variance = var(PSI),
                           SD = sd(PSI))

lot_summary <- suspension.coil.data %>%
  group_by(Manufacturing_Lot) %>%
  summarize(Mean = mean(PSI),
            Median = median(PSI),
            Variance = var(PSI),
            SD = sd(PSI))


# Part 3

lot1.coil.data <- subset(suspension.coil.data, Manufacturing_Lot == "Lot1")
lot2.coil.data <- subset(suspension.coil.data, Manufacturing_Lot == "Lot2")
lot3.coil.data <- subset(suspension.coil.data, Manufacturing_Lot == "Lot3")

lot1.t.test <- t.test(lot1.coil.data["PSI"], mu = 1500)
lot2.t.test <- t.test(lot2.coil.data["PSI"], mu = 1500)
lot3.t.test <- t.test(lot3.coil.data["PSI"], mu = 1500)



