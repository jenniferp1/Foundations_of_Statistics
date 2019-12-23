library(SDSFoundations)

acl <- AustinCityLimits

table(acl$Genre)
table(acl$Twitter.100k)


# Primary Research Questions
# 
# 1. Are each of the four musical genres equally represented on Austin City Limits?   
# 2. Are some genres more likely to draw a large (100K+) Twitter following than others?
#   
#   
#   Goodness of Fit Test:
#   1. Create a table to show the counts of each genre.
# 2. Create a vector of expected proportions.
# 3. Check the expected counts assumption.
# 4. Run a chi square test.
# 5. Interpret the chi square statistic and p-value.
# 
# Test of Independence:
#   1. Create a two-way table for genre and Twitter following.
# 2. Check the expected counts assumption.
# 3. Run a chi square test.
# 4. Interpret the chi square statistic and p-value.

# GoF Test

genre <- table(acl$Genre)
genre
claimp <- c(1/4,1/4,1/4,1/4)

chisq.test(genre,p=claimp)$expected
chisq.test(genre,p=claimp)

# Independence teat

twit <- table(acl$Twitter.100k,acl$Genre)
twit

prop.table(twit,2)

chisq.test(twit)
