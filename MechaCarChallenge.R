#Delivverable 1

#1.3
library(dplyr)

#1.4
df_MechaCarMPG <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#1.5
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = df_MechaCarMPG)

#1.6
summary( lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = df_MechaCarMPG))

#2.2
df_SuspensionCoils <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#2.3 
total_summary <- df_SuspensionCoils %>% summarize(mean = mean(PSI), median = median(PSI), var = var(PSI), sd = sd(PSI), .groups = 'keep')


#2.4
lot_summary <- df_SuspensionCoils %>% group_by(Manufacturing_Lot) %>% summarize(mean = mean(PSI), median = median(PSI), var = var(PSI), sd = sd(PSI), .groups = 'keep')

#3.1
t.test(log10(df_SuspensionCoils$PSI),mu=mean(log10(1500)))

#3.2
t.test(log10(df_SuspensionCoils$PSI),df_SuspensionCoils$Manufacturing_Lot=="Lot1",mu=mean(log10(1500)))
t.test(log10(df_SuspensionCoils$PSI),df_SuspensionCoils$Manufacturing_Lot=="Lot2",mu=mean(log10(1500)))
t.test(log10(df_SuspensionCoils$PSI),df_SuspensionCoils$Manufacturing_Lot=="Lot3",mu=mean(log10(1500)))
