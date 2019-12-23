library(SDSFoundations)
library(psych)


# Primary research questions
# 
# 1) Can you confirm the claim that Beck Depression Inventory 
# score is a significant predictor of Overall Quality of Life 
# among students enrolled in the Clinical Sciences program?
#   
# 2) For students enrolled in the Clinical Sciences program, 
# examine the effects of DREEM: Social Self Perception, DREEM: 
# Academic Self Perception, Resilience, BDI, and Age on 
# Med School Quality of Life? 
# 
  
res <- TempskiResilience
names(res)

res[res$MS.QoL==10,"Age"]
res[1:10,"MS.QoL"]

#Subset into the Clinical Sciences
clin <- res[res$Group == "Clinical Sciences",]

# Question One
#Intial Correlations
vars <- c("QoL", "BDI")
cor(clin[,vars])

#RQ1 Model
ov_mod <- lm(QoL ~ BDI, data=clin)
summary(ov_mod)
confint(ov_mod)

#Diagnostics
plot(ov_mod, which=1)
cutoff <- 4/(ov_mod$df) 
plot(ov_mod, which=4, cook.levels=cutoff)

# Question Two
#Initial correlations
vars <- c("MS.QoL", "DREEM.S.SP", "DREEM.A.SP", "Resilience", "BDI", "Age")
cor(clin[,vars], use="pairwise.complete.obs")

#Test the initial correlations
library(psych)
corr.test(clin[,vars], use="pairwise.complete.obs")

#RQ2 Model
ms_mod <- lm(MS.QoL ~ DREEM.S.SP + DREEM.A.SP + Resilience + BDI + Age, data=clin)
summary(ms_mod)
confint(ms_mod)

#Diagnostics
library(car)
vif(ms_mod)
plot(ms_mod, which=1)
cutoff <- 4/(ms_mod$df) 
plot(ms_mod, which=4, cook.levels=cutoff)

#Put model into context
lmBeta(ms_mod) 
round(pCorr(ms_mod), 4) 



# Review of Regression Analysis

# Analyze the Data


# PRIMARY RESEARCH QUESTIONS
# 
# 1. For students in the Basic Sciences program, of the four measures 
# of Quality of Life (Physical Health, Psychological, 
#                     Social Relationships, and Environment), 
# which has the greatest impact on Med School Quality of Life?
#   
# 2. What is the overall proportion of variance accounted for 
# by all four scales?
  
res <- TempskiResilience

# create subset of students in Basic Sciences Program
table(res$Group)
basic <- res[res$Group == "Basic Sciences",]

names(basic)
vars <- c("MS.QoL","WHOQOL.PH", "WHOQOL.PSY", "WHOQOL.SOC", "WHOQOL.ENV")

basic_mult <- lm(MS.QoL ~ 
                   WHOQOL.PH+WHOQOL.PSY+WHOQOL.SOC+WHOQOL.ENV,
                 data=basic)
summary(basic_mult)
cor(basic[,vars])

#Put model into context
lmBeta(basic_mult) 
round(pCorr(basic_mult), 4) 
