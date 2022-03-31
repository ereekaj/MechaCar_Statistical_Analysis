library(dplyr)

mecha_car_df <- read.csv(file="Resources/MechaCar_mpg.csv")
head(mecha_car_df)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car_df))

suspension_coil <- read.csv(file="Resources/Suspension_Coil.csv")
head(suspension_coil)
tail(suspension_coil)

total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD =  sd(PSI), .groups = 'keep')
total_summary

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD =  sd(PSI), .groups = 'keep')
lot_summary

t.test(suspension_coil$PSI, mu = 1500)

Lot1 <- filter(suspension_coil, Manufacturing_Lot == "Lot1")
Lot1
Lot2 <- filter(suspension_coil, Manufacturing_Lot == "Lot2")
Lot2
Lot3 <- filter(suspension_coil, Manufacturing_Lot == "Lot3")
Lot3

t.test(Lot1$PSI, mu = 1500)
t.test(Lot2$PSI, mu = 1500)
t.test(Lot3$PSI, mu= 1500)
