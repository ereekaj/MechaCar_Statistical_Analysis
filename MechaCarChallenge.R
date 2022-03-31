library(dplyr)

mecha_car_df <- read.csv(file="Resources/MechaCar_mpg.csv")
head(mecha_car_df)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car_df))

suspension_coil <- read.csv(file="Resources/Suspension_Coil.csv")
head(suspension_coil)

total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD =  sd(PSI), .groups = 'keep')
total_summary

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD =  sd(PSI), .groups = 'keep')
lot_summary
