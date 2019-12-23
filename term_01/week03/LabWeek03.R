#Click on "Import Dataset" button at the top of the workspace window. Choose "from text file."
#Click on the location of the BullRiders.csv file you just downloaded.

bull <- BullRiders

#Primary Research Question
#In 2012, which variable had the strongest linear relationship with 
#Earnings:  Ride Percentage or Cup Points?
new_bull <- bull[bull$Events12  > 0 ,]

hist(new_bull$Earnings12)
fivenum(new_bull$Earnings12)

plot(new_bull$RidePer12,new_bull$Earnings12)  
cor(new_bull$RidePer12,new_bull$Earnings12)

plot(new_bull$CupPoints12,new_bull$Earnings12) 
cor(new_bull$CupPoints12,new_bull$Earnings12)

# identify specific case
which(new_bull$Earnings12 == max(new_bull$Earnings12))
new_bull[4,]

#remove outlier
#Subset the data
nooutlier <- new_bull[new_bull$Earnings12 < 1000000 ,] 

cor(nooutlier$RidePer12,nooutlier$Earnings12)
cor(nooutlier$CupPoints12,nooutlier$Earnings12)


#During a professional bull-riding event, riders usually attempt 
#to ride a bull three or more times.  
#This means that they can record a "ride" (successfully staying on the bull) multiple times in the same event.

#Subset the dataset for riders that had at least 1 ride in the 
#2014 season. Call this dataset new_bull.
new_bull <- bull[bull$Events14  > 0 ,]
RidesPerEvent14 <- new_bull$Rides14/new_bull$Events14

hist(RidesPerEvent14,breaks=12)
fivenum(RidesPerEvent14)

plot(RidesPerEvent14,new_bull$Rank14)
abline(lm(new_bull$Rank14~RidesPerEvent14))
cor(RidesPerEvent14,new_bull$Rank14)


#Time studying and grade
time <- c(30,45,180,95,130,140,30,80,60,110,0,80)
grade <- c(74,68,87,90,94,84,92,88,82,93,65,90)
cor(time,grade)
x<-cor(time,grade)
x^2

plot(time,grade)

time <- c(30,45,180,95,130,140,80,60,110,0,80)
grade <- c(74,68,87,90,94,84,88,82,93,65,90)
cor(time,grade)


