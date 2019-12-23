library(SDSFoundations)
post <- PostSurvey

# 1. Reflect on the Question

# 2. Analyze the Data


# Primary Research Questions
# 
# 1. Do students at UT spend more time on homework per week in college than they did in high school?
# 2. Do students in fraternities and sororities get less sleep on the weekends than other college students?

# NOTE:  If you are running directional hypotheses tests, 
# remember that you must modify the code to reflect this direction.
# A one-sided test looks like this:  
#   
# t.test(Variable1, Variable2, alternative = 'less'), 
#     when you expect Mean1 < Mean2
# t.test(Variable1, Variable2, alternative = 'greater'), 
#     when you expect Mean1 > Mean2  

high <- post$hw_hours_HS
college <- post$hw_hours_college

diff <- college - high
mean(diff)

t.test(college,high,paired = TRUE)



greek <- post$sleep_Sat[post$greek =='yes']
nongreek <- post$sleep_Sat[post$greek =='no']

hist(greek)
hist(nongreek)

mean(greek)
mean(nongreek)
mean(greek)-mean(nongreek)

t.test(greek,nongreek,alternative="less")
