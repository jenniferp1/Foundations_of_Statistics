# To find z-statistic value that represents lower/upper 2.5%
# use a z-table or qnorm() fucntion in R  (i.e., alpha = 0.05)

qnorm(0.025)
qnorm(1-.025)
1-.025

# The probability of finding a z-statistic value of 1.72 or higher
# is 4.26% or as a proportion 0.0426.
z <- 1.72
1 - pnorm(z)

# And the probability of finding a 
# z-value of -1.72 or lower is also 4.26%.
pnorm(-z)

# Taking both possibilities together gives us our p-value -
# for two-tail test
#   and we represent it as a proportion.
(1 - pnorm(z)) + pnorm(-z)

# We see p-value is > than alpha
# So how are these three concepts related?
#   Our alpha level is the starting point - it's
# our concept for "difference" in our chosen test.
# Our alpha level (and our statistical test)
# tell us what our critical value of our statistic will be
# - what the cut off for "difference" is.
# Any statistic that is past this critical value,
# and we Reject our Null Hypothesis.
# And finally, there's our p-value, and it's
# related to both, as it tells us the proportion of finding a test
# statistic from our chosen test purely by chance.
# Smaller than our alpha and again, we Reject our Null.

# The average flight time for the pilots is found to be 8.12 hours. The standard deviation reported by the FAA is 0.72 hours, and there were 81 pilots 
# in the sample. What is the z-statistic for this hypothesis test?

z <- (8.12-8)/(0.72/sqrt(81))
z


#T-TEST
# What is the probability of getting a t-statisic of -4.011 or smaller
# and, of couse, 4.011 or larger, since we have a non-directional Hypothesis Test?
# We have 12 observations or 11 Deg of Freedom
#   Well, using the pt() in R, we find that the probabilities are only 0.001.
# We add those two probabilities together, and we
# get our non-directional p-value of 0.002.

pt(-4.011,11)
1-pt(4.011,11)
# Thus the non-directional p-value is:
2*0.001

# For a t-distribution with 11 degrees of freedom,
# the critical values to cut off the lower and upper 2.5% are -2.20 and 2.20.

# Since this value is in fact less than our alpha level,
# we can again Reject the Null Hypothesis.
ibu <- c(38,39,41,34,37,40,38,35,37,38,36,39)

t.test(ibu, mu=40)
# t.test function in R even gives us the 95% confidence intervals, which we can interpret:
#   We are 95% confident that the true population
# value of IBU for this type brewing process with this type of barley
# is between 36.39 and 38.95.
# And this range does not capture our Null Hypothesis value -
#   exactly what we would expect since we Rejected our Null Hypothesis.

# 2. Researchers are interested in whether or not the average 
# person consumes 2,000 calories per day. Their random sample of 
# 25 people consumed an average of 1,891 calories, with a 
# standard deviation of 251 calories.

sx <- 251/sqrt(25)
(1891-2000)/sx
