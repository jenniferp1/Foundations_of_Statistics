library(SDSFoundations)
animaldata <- AnimalData
View(animaldata)


table(animaldata$Age.Intake)

cats <- animaldata[animaldata$Animal.Type == 'Cat',]
dogs <- animaldata[animaldata$Animal.Type == 'Dog',]

table(cats$Age.Intake)
length(cats[cats$Age.Intake > 0,7])

table(dogs$Age.Intake)
length(dogs[dogs$Age.Intake > 0,7])

adult_cats <- cats[cats$Age.Intake > 0,]
adult_dogs <- dogs[dogs$Age.Intake > 0,]

hist(adult_dogs$Weight)
hist(adult_cats$Weight,breaks=15)

m <- mean(adult_cats$Weight)
median(adult_cats$Weight)
s <- sd(adult_cats$Weight)
(13-mean(adult_cats$Weight))/sd(adult_cats$Weight)

1-pnorm(13,m,s)


fivenum(adult_dogs$Weight)


8.6+2*1.9


table(dogs$Intake.Type)

81/(1+81+20+189)

dogssurrender <- dogs[dogs$Intake.Type == "Owner Surrender",]
table(dogssurrender$Outcome.Type)

days <- dogssurrender$Days.Shelter[dogssurrender$Outcome.Type=="Return to Owner"]
mean(days)

#Question 4 on adults sleeping
meansleep <- 6.7
stdev <- 1.1

-1.5 = (x-6.7)/1.1

-1.5*1.1+6.7

1-pnorm(4.5,6.7,1.1)


pnorm(8.79,6.7,1.1)-pnorm(5.38,6.7,1.1)
