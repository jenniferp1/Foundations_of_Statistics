qt(0.025,22.20)

t <- 4.37

pt(-t,22.20)
1-pt(t,22.20)

pt(-t,22.20) +(1-pt(t,22.20))

# From above calculation:
# If we run the simulated data using t.test(), we see that we have a 
# two-tailed p-value
# of less than 0.001 - and because 
# that's lower than our alpha of 0.05,
# we again Reject our Null Hypothesis.

(78-66)/(sqrt(12.56^2/10+12.04^2/15))

qt(0.05,9)
t<-2.37918
pt(-t,9)

chewing <- c(79,95,85,82)
nogum <- c(80,94,87,84)

d <- chewing - nogum
mean(d)
sd(d)/sqrt(4)

(-1-0)/0.7071068

qt(0.025,3)

t.test(chewing,nogum,paired=TRUE,alternative = "two.sided")
