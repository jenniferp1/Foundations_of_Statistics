#YOGURT CALORIES

calories <- c(180,200,190,230,80,160,170,130,140,220,110,120,100,170)
a <- mean(calories)

sd <- 48.5

#how much variation for samples of size 14 (calculate standard error)
se <- sd/sqrt(14)

#assume 95% confidence and find margin of error
me <- 1.96*se

#find confidence interval
a+me
a-me
