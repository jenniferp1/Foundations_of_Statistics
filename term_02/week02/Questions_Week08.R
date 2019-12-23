# Question 1
# How much money do professional bull riders earn 
# by participating in an event?

bullcsv <- read.csv("/Users/shaaron-palguta/Desktop/Foundations of Statistics/Part_I_Week03/R_exercises/BullRiders.csv")

comp12 <- bullcsv[bullcsv$Events12>0,]

comp12$earnings_per <- comp12$Earnings12/comp12$Events12

colnames(bullcsv)
colnames(comp12)

comp12$earnings_per
hist(comp12$earnings_per)

# Queestion 2
# 1. Create a new variable that is the log of your "earnings_per" variable.  
# 
# 2. Here is the code to make a log transformation of a variable: 
  
comp12$log_earnings_per <- log(comp12$earnings_per)
comp12$log_earnings_per
hist(comp12$log_earnings_per)

# Summarize the bull rider weights
mean(comp12$log_earnings_per)
sd(comp12$log_earnings_per)

t.test(comp12$log_earnings_per, mu=8.85)  

exp(8.572169)
exp(9.120605)

# Question 2
# Students collected 8 random bags of a specific brand of potato chips and carefully weighed the contents of each bag, recording the following weights (in grams): 
#   29.4      29.0      28.4      28.8      28.9      29.3      28.5      28.2 

bag <- c(29.4,29.0,28.4,28.8,28.9,29.3,28.5,28.2 )
mean(bag)
sd(bag)
t.test(bag,mu=28.5)

(28.5-28.81)/(0.43/sqrt(8))
              


# Question 3
# An industrial plant dumps its waste into a nearby river, 
# but claims that it is not impacting the native species of frogs 
# that live in the river.  
# The frogs are able to tolerate calcium concentrations up to 91 mg/L.  
# You measure the concentration of calcium in 25 random samples 
# from the river.  Your measurements are approximately normally 
# distributed, with a mean of 93.6 mg/L, with a 
# standard deviation of 7.8 mg/L.  

(93.6-91)/(7.8/sqrt(25))

(95.0-91)/(7.8/sqrt(25))



# Question 4
# You are studying a population of peregrine falcons and 
# want to estimate their average wingspan.  
# So you collect a random sample of 12 adult male birds 
# and measure a mean wingspan of 42.6 cm, with 
# a standard deviation of 5.3 cm. 
# Assume that the distribution of measurements was approximately normal.

42.6-1.796*(5.3/sqrt(12))
42.6+1.796*(5.3/sqrt(12))
