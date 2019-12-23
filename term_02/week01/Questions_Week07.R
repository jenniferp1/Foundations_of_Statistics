# Question 1
# On a scale of 1 to 10, how much do UT Austin students like Austin?
#   1. What are the true mean and standard deviation for our population of UT Austin students?
#   2. What should the sampling distribution of the mean look like, as predicted by the Central Limit Theorem?
#   3. How do our simulated values compare to these predicted values?

library(SDSFoundations)
survey <- StudentSurvey

hist(survey$austin)
mean(survey$austin)
sd(survey$austin)

sd(survey$austin)/sqrt(10)

xbar10 <-rep(NA, 1000)
for (i in 1:1000)
{x <-sample(survey$austin, size =10)
xbar10[i] <-  mean(x)}

hist(xbar10)
mean(xbar10)
sd(xbar10)


# Question 2
# A population of sunflower plants is described as having a 
# monthly growth rate that follows a normal distribution with 
# μ = 3.08 in and σ = 0.40 in. 

z <- (3.2-3.08)/0.40
1-.6179
0.40/sqrt(25)
3.08+.08

# confidence interval = (2.9,3.2) = mean +/- z (sigma/sqrt(n))
(-3.08+2.9)*sqrt(25)/0.40  #gives z score
(-3.08+3.2)*sqrt(25)/0.40  #gives z score
#-2.25 => 0.0122 conversion using table 4.14
#1.5 => 0.9332 covnersion using table 4.14
.9332-0.0122

#Question 3
# mean of 28 minutes and a standard deviation of 11 minutes.
# samples 23 of its employees and finds that their mean commute time
# is 35.1 minutes. 
# Is there evidence that their commute time is longer than the other company's, or is this just random sampling error?

11/sqrt(23)
z <- (35.1-28)/(11/sqrt(23))
#z => 0.9987 conversion using table 4.14
1-0.9987


#Question 4
# a normal distribution with σ= 1.5 ml. 
# randomly selected 15 ice cream pints and found that 
#the average volume was 471.46 ml. 
# She wants to know if her machine is performing as expected.

se <- 1.5/sqrt(15)
# margin of error = Z (sigma/sqrt(n))
1.96*se
me <- 0.759

# confidence interval = mean +/- margin of error
471.46+me
471.46-me
