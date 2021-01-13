#Delivverable 1

#1.3
library(dplyr)

#1.4
df_MechaCarMPG <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#1.5
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = df_MechaCarMPG)

#1.6
summary( lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = df_MechaCarMPG))
