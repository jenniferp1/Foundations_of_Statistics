library(SDSFoundations)

animaldata <- AnimalData

mean(animaldata$Age.Intake)

median(animaldata$Age.Intake)

sd(animaldata$Age.Intake)

#min, Q1, median (Q2), Q3, max
fivenum(animaldata$Age.Intake)

survey <- StudentSurvey
View(survey)

mean(survey$age)
sd(survey$age)

hist(survey$age)

#select random sample of size size
sample(survey$age,size=30)

#sample distribution of sample means for age
#Step 1: create an empty vector of N/As with length 1000 
myxbar <- rep(NA,1000)
#Step 2: use for loop to randomly sample 1000 times
for(i in 1:1000){
  mysamp <- sample(survey$age,size=30)
  myxbar[i] <- mean(mysamp)
}
#Step 3: view sample distribution
hist(myxbar)
#Step 4: compare sample distriution mean and sd to that of population
mean(myxbar)
sd(myxbar)
sd(survey$age)/sqrt(30)



#Primary Research Question
#How many letters long is the typical UT student’s name?  
#How does our estimate change as we increase the size of our sample?

#PREVIEW
dim(survey)  

first_10 <- survey[1:10,]
first_10
length(first_10[first_10$name_letters > 5,"name_letters"])

survey[survey$happy < 40,]

#PART 1
# Calculate the population parameters
hist(survey$name_letters)
fivenum(survey$name_letters)
mean(survey$name_letters)
sd(survey$name_letters)


# Draw 1,000 samples of n=5 and find the mean of each sample.
xbar5 <-rep(NA, 1000)
for (i in 1:1000)
{x <-sample(survey$name_letters, size =5)
xbar5[i] <-  mean(x)}


# Graph the histogram of 1,000 sample means.
hist(xbar5,xlim=c(2,10))


# Calculate the mean and sd of the sampling distribution.
mean(xbar5)
sd(xbar5)

# Compare to the std dev predicted by the CLT.
sd(survey$name_letters)/sqrt(5)

#Repeat for samples of size n=15
xbar15 <-rep(NA, 1000)
for (i in 1:1000)
{x <-sample(survey$name_letters, size =15)
xbar15[i] <- mean(x)}
hist(xbar15,xlim=c(2,10))

mean(xbar15)
sd(xbar15)
sd(survey$name_letters)/sqrt(15)

#Repeat for samples of size n=25
xbar25 <-rep(NA, 1000)
for (i in 1:1000)
{x <-sample(survey$name_letters, size =25)
xbar25[i] <- mean(x)}
hist(xbar25,xlim=c(2,10))

mean(xbar25)
sd(xbar25)
sd(survey$name_letters)/sqrt(25)

#PART 2

