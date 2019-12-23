# REGRESSION INFERENCE

# Call:
#   lm(formula = commitment ~ investment, data = commit)

# lmBeta(model) ***

# When we use another function called pCorr, we can get the partial
# and semi-partial or Part Correlation Coefficient
# squared value for every variable in the model.
# This effectively models the concept of the unique sliver represented
# by this single coefficient in the model.

# Thus...
# we can evaluate the overall proportion of variance accounted
# for uniquely by each coefficient. --->
# 
# Examining which one has the biggest impact.

# pCorr(model) ***

# Check for multicollinearity....
# Now the easiest way to do this, is to install another package
# into R called the Car package.
# And then use a function in there called vif ' 
# short for Variance Inflation Factor.

library(car)
# vif(model) ***

# So what do we use for our typical rules of thumb here?
# We say that any variable that has a Variance Inflation Factor over five
# (five or larger) is kind of redundant.
# This corresponds to a tolerance value that would be 0.2 or below.
# Effectively saying that I've only got about 20%
# of the variance of this independent variable
# left over once I account for all of the other variables in the model.


# Using vif... 

library(SDSFoundations)
library(car)

bdi_mult <- lm(BDI ~ Resilience + State.Anxiety + Trait.anxiety,
               data=clerk)

summary(bdi_mult)

vif(bdi_mult)
