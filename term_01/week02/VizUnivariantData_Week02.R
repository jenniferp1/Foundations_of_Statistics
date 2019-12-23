#Visualizing Univariant Data
#Frequency tables, bar charts, histograms in R

setwd("~/Desktop/Foundations of Statistics/Week02/R_Exercises")

animaldata <- read.csv(file = 'AnimalData.csv')
View(animaldata)

head(animaldata)

table(animaldata$Sex)
plot(animaldata$Sex)
plot(animaldata$Sex,main='Bar Chart of Animal Genders',xlab='Animal Gender',
      ylab='Frequency')

hist(animaldata$Age.Intake)
hist(animaldata$Age.Intake,main='Histogram of Intake Ages',
     xlab="Age at Intake")

femaleage <- animaldata$Age.Intake[animaldata$Sex == 'Female']
maleage <- animaldata$Age.Intake[animaldata$Sex == 'Male']

hist(femaleage,main='Histogram of Female Ages',xlab='Age at intake of females')
hist(maleage,main='Histogram of Male Ages',xlab='Age at intake of Males')

hist(maleage,main='Histogram of Male Ages',xlab='Age at intake of Males',
     breaks=15)

max(maleage)
max(femaleage)

which(animaldata$Age.Intake==17)
animaldata[415,]


mean(animaldata$Age.Intake)
median(animaldata$Age.Intake)

#standard deviation
sd(animaldata$Age.Intake)

#five number summary
fivenum(animaldata$Age.Intake)
