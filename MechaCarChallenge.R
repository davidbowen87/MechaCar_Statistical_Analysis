#Deliverable 1

#Importing library
library(tidyverse)

#Reading CSV for MechaCar
MechaCar <- read.csv('C:\\Users\\david.bowen\\ur\\hw\\16-R\\MechaCar_Statistical_Analysis\\MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

#Confirming layout of Dataframe
head(MechaCar)

#Running linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar)

#Running Summary for linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar))


#Deliverable 2

#import csv to dataframe
Suspension <- read.csv('C:\\Users\\david.bowen\\ur\\hw\\16-R\\MechaCar_Statistical_Analysis\\Suspension_Coil.csv',check.names = F, stringsAsFactors = F)

#Confirming Dataframe
head(Suspension)

#Creating the Total Summary
total_summary <- Suspension %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), Std_Deviation = sd(PSI), .groups = 'keep')

#Creating the lot summary
lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), Std_Deviation = sd(PSI), .groups = 'keep')


#Deliverable 3

#t-test for total 
t.test(Suspension$PSI,mu=mean(Suspension$PSI))

#t-test for Lot1
t.test(subset(Suspension$PSI,Suspension$Manufacturing_Lot == "Lot1"),mu=mean(Suspension$PSI))

#t-test for Lot2
t.test(subset(Suspension$PSI,Suspension$Manufacturing_Lot == "Lot2"),mu=mean(Suspension$PSI))

#t-test for Lot3
t.test(subset(Suspension$PSI,Suspension$Manufacturing_Lot == "Lot3"),mu=mean(Suspension$PSI))
