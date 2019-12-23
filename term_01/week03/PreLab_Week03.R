library(SDSFoundations)
bull <- BullRiders
View(bull)

top10 <- bull[1:10,]
top10[top10$YearsPro >= 10,]

top15 <- bull[1:15,]
buckouts <- top15$BuckOuts
which(top15$BuckOuts == min(buckouts))

top15[4,'BuckOuts']

###Import CSV file which is different from what is in SDSFoundations

bull58 <- BullRiders
top10 <- bull58[1:10,]
#get number of rows in top10 to answer how many of top 10 pro > 10 years
dim(top10[top10$YearsPro >= 10,])

top15 <- bull58[1:15,]

buckouts14 <- bull58$BuckOuts14
#buckouts14

which(top15$BuckOuts14 == min(buckouts14))

#bull58[c(4,39,51),'BuckOuts14']
#rider_names <- bull58[c(4,39,51),'Rider']
#rider_names

top15[4,'Rides14']

#get column header names
names(bull58)
bull58$Top10_13
bull58$Rides13

#PART 2
#Subset for riders that participated in at least one event in 2013
new_bull <- bull58[bull58$Events13  > 0 ,]

# Visualize and describe the first variable of interest
hist(new_bull$Rides13)
fivenum(new_bull$Rides13)
mean(new_bull$Rides13)
sd(new_bull$Rides13)

# Visualize and describe the second variable of interest
hist(new_bull$Top10_13)
fivenum(new_bull$Top10_13)
mean(new_bull$Top10_13)
sd(new_bull$Top10_13)

# Create a scatterplot
plot(new_bull$Rides13,new_bull$Top10_13)

# Add line of best fit
abline(lm(new_bull$Top10_13~new_bull$Rides13))

# Calculate the correlation coefficient
cor(new_bull$Rides13,new_bull$Top10_13)

# Create a correlation matrix 
vars <- c("Top10_13", "Rides13")
cor(new_bull[,vars])

#PART 3
#identify a specific record
which(new_bull$Top10_13==2 & new_bull$Rides13==22)

new_bull[4,]
