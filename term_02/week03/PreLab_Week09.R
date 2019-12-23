library(SDSFoundations)

View(PostSurvey)

post <- PostSurvey

exc <- post$exclusive
postexc <- post$post_exclusive

#DEPENDENT EXAMPLE
t.test(exc,postexc,paired=TRUE,alternative="two.sided")


hist(post$exclusive)
hist(post$post_exclusive)

diff <- exc - postexc

hist(diff)

t.test(exc,postexc,paired=TRUE)

# From above calculation:
# We see that our p is less than alpha, less than 0.05.
# So we would reject the null hypothesis that the mean response
# to the first exclusive variable is equal to the mean of the second.
# And then we also see the mean of the differences from our sample.
# If we were to calculate the mean of dif, we
# would get this exact number from our paired t-test output 0.602.
# So similar to a one sample t-test, if we had a one sided alternative hypothesis,
# we could add the alternative option and then
# give it either the less or greater word in quotes.
# End of transcript. Skip to the start.

t.test(exc,postexc,paired=TRUE,alternative="less")
t.test(exc,postexc,paired=TRUE,alternative="greater")

#INDEPENDENT EXAMPLE

fsleep <- post$sleep_Tues[post$gender=='Female']
msleep <- post$sleep_Tues[post$gender=='Male']

hist(fsleep)
hist(msleep)

t.test(fsleep,msleep)

#From above
# So because our p value here is greater than 0.05,
# we would fail to reject the null hypothesis
# that the means of these two groups are equal.
# Similar to the other t-test, we get a 95% confidence interval
# for the difference in the means, and then also our sample
# estimate-- which is the mean hours of sleep for females,
# 6.809, and also for males, 6.938.

# 1. Examine the Data

campus10 <- post$live_campus[1:10]
campus10
l <- length(campus10)
length(campus10[campus10=="yes"])/l


# 2. Prepare for the Analysis

# Primary Research Questions
# 
# 1.  Who is happier at the beginning of the semester:  under-classmen or upper-classmen?
# 2.  Does student happiness change from the beginning of the semester to the end?
  

# Make a vector of happiness scores for each sample
underclass_happy <- post$happy[post$classification=='Freshman'|post$classification=='Sophomore']
upperclass_happy <- post$happy[post$classification=='Junior'|post$classification=='Senior']

# Check the normality assumption
hist(underclass_happy, xlab='Underclassman Happiness', main='Percent of Time Happy')
hist(upperclass_happy, xlab='Upperclassman Happiness', main='Percent of Time Happy')

# Run independent t-test
t.test(underclass_happy, upperclass_happy)

# Make a vector of difference scores
post$diff_happy <- post$happy - post$post_happy
length(post$diff_happy)

# Check the normality assumption
hist(post$diff_happy, xlab= 'Difference in Happiness over the Semester', main = 'Happy-Post Happy')

# Run dependent t-test
t.test(post$happy, post$post_happy, paired=T)
