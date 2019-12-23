library(SDSFoundations)
bull <- BullRiders
View(bull)

bullcsv <- read.csv("/Users/shaaron-palguta/Desktop/Foundations of Statistics/Part_I_Week03/R_exercises/BullRiders.csv")
View(bullcsv)

age <- 2012 - bull$YearBorn

#check normality assumption
hist(age)

t.test(age,mu=30)  #mu is value in Ho
# by default is two-tail test
# to make one-tail

t.test(age, mu=30,alternative = 'less')


# 1. Examine the Data


# 2. Prepare for Analysis

# Primary Research Question

# The average American adult man weighs 190 pounds.  
# Do professional bull riders in the US weigh the same?


#Select bull riders from the US
USA <-bullcsv[bullcsv$Country=="USA",]

# Summarize the bull rider weights
mean(USA$Weight)
sd(USA$Weight)
se <- sd(USA$Weight)/sqrt(37)

# Visualize the weight distribution
hist(USA$Weight, main='Histogram of US Bull Rider Weights',xlab='Weight (lbs)')

# Run the single sample t-test
t.test(USA$Weight, mu=190)  
