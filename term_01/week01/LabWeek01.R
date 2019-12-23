#Load the Data:
library(SDSFoundations)
bike <- BikeData

#How many daily riders are in bikes
table(bike$cyc_freq)

#How many daily riders are male
dailyRiders <- bike[bike$cyc_freq == "Daily",]
table(dailyRiders$gender)

#Average age of daily riders
mean(dailyRiders$age)

#Average age of female daily riders
femaleDailyRiders <- dailyRiders[dailyRiders$gender == 'F',]
mean(femaleDailyRiders$age)

#Average age of female daily riders
maleDailyRiders <- dailyRiders[dailyRiders$gender == 'M',]
mean(maleDailyRiders$age)

#How many male daily riders are 30 or older
table(maleDailyRiders$age >= 30)
