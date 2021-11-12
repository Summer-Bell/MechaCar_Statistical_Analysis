#Deliverable 1
#3 Use library () function to load the dplyr package
library(dplyr)

#4 Import and read in the MechaCar_mpg.csv file as a dataframe
library(tidyverse)
mechaMPG <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 

#5 Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaMPG)

#6 Using the summary() function determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaMPG)) 

#Deliverable 2
# Import the Suspension_Coil.csv as a table
Suspension <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create a total_summary dataframe
total_summary <- Suspension %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI)) 

#Create lot_summary
lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Deliverable 3
# 1 Perform t-test across all lots
t.test(Suspension$PSI,mu = 1500)

#2 
t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# Peform t-test on Lot 2
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# Peform t-test on Lot 3
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
