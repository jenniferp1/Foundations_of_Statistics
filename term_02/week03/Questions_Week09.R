library(SDSFoundations)
post <- PostSurvey

# Question 1
high_nurse <- post$hw_hours_HS[post$major=='Nursing']
high_bio <- post$hw_hours_HS[post$major=='Biology']

coll_nurse <- post$hw_hours_college[post$major=='Nursing']
coll_bio <- post$hw_hours_college[post$major=='Biology']

high <- post$hw_hours_HS
college <- post$hw_hours_college

diff <- college - high
hist(diff)

diff_nurse <- coll_nurse - high_nurse
diff_bio <- coll_bio - high_bio

hist(diff_nurse)
hist(diff_bio)

t.test(diff_nurse,diff_bio)



# Question 2

qt(0.05,25)        #t-critical, one-tail
sqrt(25/26+36/32)  #Standard Error
((80-74)-(0))/1.444486
pt(-4.153727,25)



#Question 3

qt(0.05,15) #t-critical, one-tail

left <- c(16.3,4.8,10.7,14.0,15.7,9.9,29.3,20.4,15.7,7.6,16.2,17.4,15.0,8.4,23.3,17.7)
right <- c(11.5,3.5,12.8,7.9,15.2,9.8,24.0,14.9,12.6,8.2,8.4,11.0,12.5,9.2,17.5,11.1)

diff <- (left-right)
hist(diff)
mean(diff)
sd(diff)
3.05/sqrt(16) #standard error
t.test(left, right, paired=TRUE,alternative = "greater")
t.test(left, right, paired=TRUE)
