# Import dplyr library
library(dplyr)
# Deliverable 1: Linear Regression to Predict MPG
# read csv to data frame
mechacar_mpg <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)
# multiple linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,
   data = mechacar_mpg)
# summary of multiple linear regression to find p-value and r-squared
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,
           data = mechacar_mpg))

#Deliverable 2: Suspension Coil Lot Analysis
# Read csv to data frame
suspension_table <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors=F)
# Create a summary data frame
total_summary <- suspension_table %>%
  summarize(Mean = mean(PSI),
            Median = median(PSI),
            Variance = var(PSI),
            SD = sd(PSI))
# Summarize by Lot
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean = mean(PSI),
            Median = median(PSI),
            Variance = var(PSI),
            SD = sd(PSI))
