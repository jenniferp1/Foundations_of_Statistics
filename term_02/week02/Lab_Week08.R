library(SDSFoundations)
bull <- BullRiders
View(bull)

bullcsv <- read.csv("/Users/shaaron-palguta/Desktop/Foundations of Statistics/Part_I_Week03/R_exercises/BullRiders.csv")
View(bullcsv)

# 1. Reflect on the Question

# 2. Analyze datadata(Primary Research Question

# Do professional bull riders stay on their bulls 50% of the time? 
# Test the hypothesis that the mean ride percentage is 0.500 in 2014, 
# using riders with at least 5 events in 2014. )

# Ho = 0.5

riders5 <- bullcsv[bullcsv$Events14>=5,]
riders5$RidePer14

# Summarize the bull rider weights
mean(riders5$RidePer14)
sd(riders5$RidePer14)

# Run the single sample t-test
t.test(riders5$RidePer14, mu=0.50)  
