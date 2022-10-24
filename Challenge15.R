#----Deliverable 1
library(dplyr)
demo_table <- read.csv(file='MechaCar_mpg.CSV',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = demo_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = demo_table))
head(demo_table)

#---Deliverable 2
Suspension_Coil <- read.csv(file='Suspension_Coil.CSV',check.names=F,stringsAsFactors = F)
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#---Deliverable 3
?t.test()
t.test(Suspension_Coil$PSI, mu = 1500)
test <- subset(Suspension_Coil, Manufacturing_Lot == 'Lot1', select = PSI)
t.test(subset(Suspension_Coil, Manufacturing_Lot == 'Lot1', select = PSI), mu = 1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot == 'Lot2', select = PSI), mu = 1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot == 'Lot3', select = PSI), mu = 1500)
