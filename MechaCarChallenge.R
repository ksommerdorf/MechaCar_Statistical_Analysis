# Import libraries
library(dplyr)

# Import data sets
MechaCars <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

# Perform multiple linear regression
MechaCars_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCars)
MechaCars_lm

# Calculate p-value and r-squared value
summary(MechaCars_lm)

#-----------------------------

# Import data sets
SuspensionCoil <- read.csv(file="Suspension_Coil.csv",check.names=F,stringsAsFactors=F)

# Summary of Suspension Coil data
total_summary <- SuspensionCoil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
total_summary

lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
lot_summary

#-----------------------------

# Suspension Coil T Test

# For all manufacturing lots
t.test(SuspensionCoil$PSI, mu=1500)

# For lot1
t.test(subset(SuspensionCoil,Manufacturing_Lot=="Lot1")$PSI, mu=1500)

# For lot2
t.test(subset(SuspensionCoil,Manufacturing_Lot=="Lot2")$PSI, mu=1500)

# For lot3
t.test(subset(SuspensionCoil,Manufacturing_Lot=="Lot3")$PSI, mu=1500)
