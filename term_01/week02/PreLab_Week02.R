library(SDSFoundations)
animaldata <- AnimalData
View(animaldata)

animaldata[animaldata$Outcome.Type == 'Adoption',]

animaldata[animaldata$Intake.Type == 'Owner Surrender',5]

colnames(animaldata)


#Find the number of animals that were adopted
table(animaldata$Outcome.Type)

#Pull out only adopted animals
adopted <- animaldata[animaldata$Outcome.Type=="Adoption",]

#Pull out just the days in shelter for the adopted animals
daystoadopt <- adopted$Days.Shelter

#Visualize and describe this variable
hist(daystoadopt)
fivenum(daystoadopt)
mean(daystoadopt)
median(daystoadopt)
sd(daystoadopt)
which(animaldata$Days.Shelter==max(daystoadopt))
animaldata[425,]

animal_sd <- sd(daystoadopt)
animal_mean <- mean(daystoadopt)

z <- (211-animal_mean)/animal_sd
z
