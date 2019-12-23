library(SDSFoundations)

animaldata <- AnimalData

head(animaldata)

table(animaldata$Sex)
table(animaldata$Sex,animaldata$Animal.Type)

plot(animaldata$Sex)

hist(animaldata$Age.Intake)


# -----

femaleage <- animaldata$Age.Intake[animaldata$Sex=="Female"]
maleage <- animaldata$Age.Intake[animaldata$Sex=="Male"]

hist(femaleage,main="hist of female ages",xlab="age at intake")
hist(maleage,main="hist of male ages",xlab="age at intake")

# Rule want 5 - 15 bins

hist(maleage,main="hist of male ages",xlab="age at intake",
     breaks=15)

# a function called "which"
# and which will pull out a case from your data frame
# that follows a certain condition.

age <-max(maleage)
age

which(animaldata$Age.Intake==age)
animaldata[415,]


# -----

# Boxplots

film <- FilmData

fivenum(film$Days)

boxplot(film$Days,main="Days in Theater",ylab="Num Days",xlab="Films")
hist(film$Days)

# Plot by function of genre
boxplot(film$Days~film$Genre)

# let us test one of the assumptions of an ANOVA.
aggregate(Days~Genre,film,mean)
mean(film$Days)

aggregate(Days~Genre,film,sd)


daysmodel <- aov(film$Days~film$Genre)
summary(daysmodel)


TukeyHSD(daysmodel)


# Analyze the Data 

# 
# Primary Research Questions
# 
# 1. Does a film’s rating (PG, PG-13, or R) impact its cost to produce?
# 2. Does a film’s rating (PG, PG-13, or R) influence its IMDB score?
  
film[film$Film=="Titanic",]
film[film$Studio=="Uni.",c("Rank","Film")]

rank <- film[film$Rank<=10,c("Rank","IMDB")]
rank
min(rank$IMDB)

colnames(film)

film$Rating

length(film$Rating[film$Rating=="PG"])

table(film$Rating)

# Question 1

# Calculate avg film budget of each group
aggregate(Budget~Rating,film,mean)

# Calculate sd of film budget within each group
aggregate(Budget~Rating,film,sd)

# Visualize the group means and variability
boxplot(film$Budget~film$Rating, main= "Film Budgets by Rating",
        ylab= "Budget", xlab= "MPAA Rating")

# Run ANOVA
modelbud <- aov(film$Budget~film$Rating)
summary(modelbud)

# Run post-hoc test if F statistic is significant
TukeyHSD(modelbud)

# Question 2

# Calculate avg IMDB score of each group
aggregate(IMDB~Rating,film,mean)

#Calculate sd of IMDB scores within each group
aggregate(IMDB~Rating,film,sd)

# Visualize the group means and variability
boxplot(film$IMDB~film$Rating, main= "IMDB Scores by Rating",
        ylab= "IMDB Score", xlab= "MPAA Rating")

# Run ANOVA
modelscore <- aov(film$IMDB~film$Rating)
summary(modelscore)

# Run post-hod text if F statistic is significant
TukeyHSD(modelscore)