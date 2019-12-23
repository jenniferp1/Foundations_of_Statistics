library(SDSFoundations)
library(psych)

res <- TempskiResilience

# QUESTION 1

#Subset into the Clinical Sciences
clin <- res[res$Group == "Clinical Sciences",]
names(res)

vars <- c("Female","Age","State.Anxiety","Trait.anxiety")

m <- lm(BDI ~ Female + Age + State.Anxiety + Trait.anxiety, data=clin)
summary(m)
#Put model into context
lmBeta(m) 
round(pCorr(m), 4) 



# QUESTION 2


# QUESTION 3

# 3d. What salary would you forecast for a man with 12 years of education, 
# 10 months of experience, 
# and 15 months with the company? 
# (Round to the nearest dollar - whole number.)
3526.4+12*90.02+10*1.269+15*23.406+722.5

# and for a woman
3526.4+12*90.02+10*1.269+15*23.406
