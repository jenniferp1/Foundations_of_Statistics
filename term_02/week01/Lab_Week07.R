library(SDSFoundations)
survey <- StudentSurvey

#What percentage of the time are college students happy? 

#1. Visualize the shape of the population data by making a histogram. 
hist(survey$happy)

#2. Calculate the “true” mean and standard deviation of the population.
mean(survey$happy)
sd(survey$happy)

#3. Draw 1,000 samples of size n=5 from the population data.  
#Calculate the mean of each sample. 
xbar5 <-rep(NA, 1000)
for (i in 1:1000)
{x <-sample(survey$happy, size =5)
xbar5[i] <-  mean(x)}

#4. Graph these 1,000 sample means in a histogram and 
#examine the shape.
hist(xbar5)

#5. Calculate the mean and standard deviation of the sampling 
#distribution.
mean(xbar5)
sd(xbar5)

#6. Repeat this process for samples of size n=15 and n=25.
xbar15 <-rep(NA, 1000)
for (i in 1:1000)
{x <-sample(survey$happy, size =15)
xbar15[i] <-  mean(x)}

hist(xbar15)
mean(xbar15)
sd(xbar15)

xbar25 <-rep(NA, 1000)
for (i in 1:1000)
{x <-sample(survey$happy, size =25)
xbar25[i] <-  mean(x)}

hist(xbar25)
mean(xbar25)
sd(xbar25)

#7. Compare the results you get to the predictions of the Central Limit Theorem.