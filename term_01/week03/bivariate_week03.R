#test anxiety relation to exam score
#dependent variable -> y-axis (score)
#independent variable -> x-axis (anxiety)

#for pearson correlation coeff -> NOT effected by scale
#relationship is a relationship regardless of scale

#tutorial in r
#make scatter plot showing two numeric variables
#first tutorial video

library(SDSFoundations)
bullriders <- BullRiders
View(bullriders)

#verify no non-linear relationships via scatter plot

plot(bullriders$YearsPro,bullriders$BuckOuts,xlab='Years Pro',
     ylab='Buckouts',main='Plot of Years Pro vs. Buckouts')

#lm is a linear model function
#predict buck outs as a function of years pro
#tilda (~) is basically saying as a function of 
abline(lm(bullriders$BuckOuts~bullriders$YearsPro))


plot(bullriders$Events,bullriders$BuckOuts,xlab='Number of Events',
     ylab='Buckouts',main='Plot of Events vs. Buckouts')

abline(lm(bullriders$BuckOuts~bullriders$Events))


#Second tutorial video
#calculate the correlation between any pair of variables

cor(bullriders$YearsPro,bullriders$BuckOuts)

cor(bullriders$Events,bullriders$BuckOuts)

#correlation matrix
#make vector of var names
myvars <- c('YearsPro','Events','BuckOuts')
cor(bullriders[,myvars])
