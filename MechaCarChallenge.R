library(dplyr)

mecha_car_df <- read.csv(file="Resources/MechaCar_mpg.csv")
head(mecha_car_df)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car_df))
