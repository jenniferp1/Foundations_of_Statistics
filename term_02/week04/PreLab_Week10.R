library(SDSFoundations)

acl <- AustinCityLimits

gtab <- table(acl$Grammy)

prop.table(gtab)

gtab2 <- table(acl$Grammy,acl$Gender)
gtab2

prop.table(gtab2)
21/116

prop.table(gtab2,1)
21/(21+46)

prop.table(gtab2,2)
21/(21+14)

barplot(gtab,xlab="Win?",ylab="Counts")

barplot(gtab2,legend=T)
barplot(gtab2,legend=T,beside=T)
barplot(prop.table(gtab2,2))


#-----ChiSq GoFT


# So suppose we hear a claim that 1/3 of all the ACL Live artists
# have won a Grammy.
# We can test this claim with a chi-squared goodness of fit test.

#observed counts of Y and N
gtab <- table(acl$Grammy)
gtab

claimp <- c(2/3,1/3)  #claimed propostions
claimp

chisq.test(gtab,p=claimp)

#Reject null hypothesis that claim proportions are real proportions

# Now, one thing we have to also make sure to do
# is to check our assumption of sufficient sample size.
# And we can do this within our chi-squared dot test function.

chisq.test(gtab,p=claimp)$expected #gives expected counts if true
#both are over five so satisfy assumption


#-----ChiSq ToI


grammyage <- table(acl$Grammy,acl$Age.Group)
grammyage

chisq.test(grammyage)$expected

chisq.test(grammyage,correct=F)
# Note: above we add one other option-- correct equals false.
# Now if we hadn't met our sample-size assumption,
# there is a non-parametric correction that we
# could apply this chi-square test of independence.
# And actually, that is the default in R for chi-square.test.
# Typically, in R, any statistical test is going
# to default to the more conservative type of test

#p-value > .05 so fail to reject that these two variables are independent


#-----

#PART: Examine the data - Conduct Analysis

# 
# Primary Research Questions
# 
# 1. Are there an equal number of male and female performers on Austin City Limits?
# 2. Are male performers just as likely to have had a Top 10 hit as female performers?
#   

acl[acl$Artist=="Allen Toussaint",]
acl$BB.wk.top10
colnames(acl)


###Question 1 (Goodness of Fit)
# Create a table of counts for Gender
gender_tab <-table(acl$Gender)
gender_tab

# Create vector of expected proportions
ExpGender <- c(.50, .50)

# Check expected counts assumption
chisq.test(gender_tab, p=ExpGender)$expected

# Run goodness of fit
chisq.test(gender_tab, p=ExpGender)


###Question 2 (Test of Independence)
# Create two-way table
gender_top10 <-table(acl$Gender, acl$BB.wk.top10)
gender_top10

# Generate expected counts
chisq.test(gender_top10, correct=FALSE)$expected

# Run test of independence
chisq.test(gender_top10, correct=FALSE)
