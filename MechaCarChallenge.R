# Deliverable 1
library(dplyr)

#import dataset
mecha_car <-read.csv('MechaCar_mpg.csv') 

#generate multiple linear regression model
linear_mecha<-lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car)

#create a summary
summary(linear_mecha)

# Deliverable 2
#import dataset
suspension_coil <-read.csv('Suspension_Coil.csv') 

total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary <- suspension_cosil %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Deliverable 3 - Create T-Test

#Step 1 
t.test(suspension_coil$PSI,mu=1500)

#Step 2

Lot1 <- subset(suspension_coil, suspension_coil$Manufacturing_Lot == "Lot1")
Lot2 <- subset(suspension_coil, suspension_coil$Manufacturing_Lot == "Lot2")
Lot3 <- subset(suspension_coil, suspension_coil$Manufacturing_Lot == "Lot3")

t.test(Lot1$PSI,mu=1500)
t.test(Lot2$PSI,mu=1500)
t.test(Lot3$PSI,mu=1500)

