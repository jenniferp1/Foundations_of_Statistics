library(SDSFoundations)

acl <- AustinCityLimits

#Question 1

# You want to know if the proportion of female performers on 
# Austin City Limits Live has changed in the past two years.  

acl$Recent[acl$Year < 2012] <- 0 
acl$Recent[acl$Year >= 2012] <- 1

rect <- table(acl$Gender,acl$Recent)
rect

chisq.test(rect)$expected

chisq.test(rect, correct = F)

rect2 <- table(acl$Recent,acl$Gender)
chisq.test(rect, correct = F)


#Question 2

squash <- data.frame("White"=152,"Yellow"=39,"Green"=14)
squash
claimp <- c(0.75,.15,.10)

chisq.test(squash,p=claimp,correct = F)$expected
chisq.test(squash,p=claimp,correct = F)
qchisq(0.05,2,lower.tail = FALSE)


#Question 3

qchisq(0.05,1,lower.tail = FALSE)

gender <- c("M",
            "M",
            "F",
            "M",
            "F",
            "F",
            "F",
            "M",
            "F",
            "F",
            "M",
            "F",
            "M",
            "M",
            "F",
            "M",
            "M",
            "F",
            "F",
            "M",
            "F")
hand <- c("L",
          "R",
          "R",
          "R",
          "R",
          "L",
          "L",
          "R",
          "R",
          "R",
          "L",
          "R",
          "R",
          "R",
          "R",
          "R",
          "R",
          "R",
          "L",
          "R",
          "R")

lr <- data.frame(gender,hand)
lr

tab <- table(lr)
tab

chisq.test(tab)$expected


#---- QUESTION 4

rural <- c(13,15)
sub <- c(35,7)
urb <- c(50,3)

internet <- data.frame(rural,sub,urb)
internet

ptab <- prop.table(internet)
ptab
sum(ptab[1,])
sum(ptab[2,])

chisq.test(internet)$expected
chisq.test(internet,correct = F)
