
library(SDSFoundations)

world <- WorldBankData
View(world)


#subset data
gbr <- world[world$Country.Code=='GBR',]
gbr2000 <- gbr[gbr$year >= 2000 & gbr$year < 2010,]

gbr2000$year

#set time variable to 0
time <- gbr2000$year - 2000

mv <- gbr2000$motor.vehicles

plot(time,mv)

expFit(time,mv)

logisticFit(time,mv)

#see all three types of models on one plot: linear, exp, logit
tripleFit(time,mv)

#predict a value of your dependent variable
#based on your value of your independent variable for one 
#of these models.
expFitPred(time,mv,12)

logisticFitPred(time,mv,12)


#PART 1 - Familiarize
#low income countries

world[world$IncomeGroup=="Low income","Country"][1:5]

world[world$Country=="Aruba" & world$year==1970,"rural.population"]

world[world$Country=="Australia",c("mobile.users","year")]

names(world)

#Part 2 - Analysis
# Subset data for just the United States and name the new data frame "us"
us <- world[world$Country.Code == "USA",]

# Select the years from 1990 and name the new data frame "us_select"
us_select <- us[us$year >= 1990, ]

# Create a new variable in our datset called internet.mil to make the number of users more interpretable (into millions)
us_select$internet.mil <- us_select$internet.users / 1000000

# Create a new variable in our dataset called time that represents "years since 1990"
us_select$time <- us_select$year - 1990

# Select the first 10 years (from 1990 to 1999) and name the new data frame "us_select_10"
us_select_10 <- us_select[us_select$time < 10,]

# Use a function to fit an exponential and logistic model for 1990-1999
expFit(us_select_10$time, us_select_10$internet.mil)
logisticFit(us_select_10$time, us_select_10$internet.mil)

# Based on the prior model parameters, predict the number of internet users in 2006
e <- expFitPred(us_select_10$time, us_select_10$internet.mil, 16)
l <- logisticFitPred(us_select_10$time, us_select_10$internet.mil, 16)

us[us$year==2006,"internet.users"]

