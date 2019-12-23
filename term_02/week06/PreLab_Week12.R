library(SDSFoundations)

bull <- BullRiders

# Scatterplots

plot(bull$YearsPro,bull$BuckOuts)

abline(lm(bull$BuckOuts ~ bull$YearsPro))

plot(bull$Events,bull$BuckOuts)

abline(lm(bull$BuckOuts ~ bull$Events))

# Correlation

cor(bull$YearsPro,bull$BuckOuts)

cor(bull$Events,bull$BuckOuts)

myvars <- c('YearsPro','Events','BuckOuts')

cor(bull[,myvars])

# Correlation Testing

res <- TempskiResilience

# create new dataframe
clerk <- res[res$Group == "Clerkship",]
names(clerk)

vars <- c("BDI","Resilience","State.Anxiety","Trait.anxiety")

cor(clerk[,vars])

cor.test(clerk[,vars])
?cor.test   #help

library(psych)

corr.test(clerk[,vars])

corr.test(clerk[,vars])$r
corr.test(clerk[,vars])$p
corr.test(clerk[,vars])$t

# REMEBMER: the Pearson correlation coefficient
# value is actually tested against a t distribution.
# So it actually has an underlying t-test associated with it.
# And I can actually get those t-values if I really wanted to.


# Simple Regression

linFit(x=clerk$Resilience,y=clerk$BDI)

#better way to model data...
lm(BDI ~ Resilience, data = clerk)

bdi_mod <- lm(BDI ~ Resilience, data = clerk)
summary(bdi_mod)

#confidence intervals
confint(bdi_mod)
?confint
confint(bdi_mod, level = .90)  #change confidence intrval to 90%

# what are these standardized betas for our regression?
# What would it be if I had a standardized x and a standardized y?
lmBeta(bdi_mod)


# Regression Diagnostic Plots 

# How to determine whether or not the linear model that we've submitted
# to R is a good linear model, if our data is pretty decent,
# and to actually examine for any outliers that we can potentially
# remove from our linear model.

bdi_mod <- lm(BDI ~ Resilience, data = clerk)
summary(bdi_mod)

#diagnostic plot
plot(bdi_mod,which=1) #residuals vs. fitted plot

# The other plot that I really like to do is something called
# the Cook's D plot or a Cook's distance.
# Now, a Cook's distance is a great measure
# of influence on the overall model.
# And there's a classic rule of thumb that says, 
# our cutoff for a Cook's distance is 4 divided by the 
# number of degrees of freedom within our model.

# if observation has high Cook's D value = contender for removal
# justified in terms of having a high Cook's D cutoff.

cutoff <- 4/(bdi_mod$df)
plot(bdi_mod, which=4, cook.levels=cutoff, id.n=5)


# Multiple Regerssion

bdi_mult <- lm(BDI ~ Resilience + State.Anxiety + Trait.anxiety,
               data=clerk)
 
summary(bdi_mult)

plot(bdi_mult,which=1)
cutoff <- 4/(bdi_mult$df)
plot(bdi_mult, which=4, cook.levels=cutoff, id.n=6)
confint(bdi_mult)
lmBeta(bdi_mult)

# Again, just like before, I can ask my standardized betas.
# That will give me sort of a standardized pull for each one
# of these coefficients, completely free of scale.
# So it lets me see how effective each one of these
# are in relation to one another.
# So right now it looks like trait anxiety because it's
# the highest value away from zero.
# Compared to all of the others, it is the biggest player 
# within the prediction of BDI

# But if I wanted to look at things in terms of variance accounted for,
# I could do another function called pCorr.
pCorr(bdi_mult)

# From output:
# I can see that my trait anxiety can actually account for about 7.8%
# of the overall variance in BDI.
# And it does that uniquely by 7.8%, whereas state anxiety
# is only about 1.2% uniquely.
# And resilience is only about 3.1% uniquely.

# The nice thing about pCorr (compared with lmBeta):
# the story matches the story
# that I got from my standardized betas.
# 
# with pCorr I'm talking about variance accounted for,
# with lmBeta I'm talking about impact that's completely free of scale,
# as if everybody was on the same z-score concept.


