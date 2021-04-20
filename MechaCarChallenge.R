#Deliverable 1
library(dplyr) #load dplyr package

mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F) #import car data as dataframe
head(mecha_table)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table)) #generate summary statistics

#Deliverable 2
library(tidyverse)
suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F) #import suspension data as dataframe

summarize_suspension <- suspension_table %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #summary statisics

total_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #summary dataframe

#Deliverable 3
t.test(suspension_table$PSI,mu=1500) #Deviation from the mean

lot_1 <- subset(suspension_table, Manufacturing_Lot=="Lot1") #Create dataframes for each lot
lot_2 <- subset(suspension_table, Manufacturing_Lot=="Lot2")
lot_3 <- subset(suspension_table, Manufacturing_Lot=="Lot3")

t.test(lot_1$PSI,mu=1500) #t.tests for each lot
t.test(lot_2$PSI,mu=1500)
t.test(lot_3$PSI,mu=1500)
