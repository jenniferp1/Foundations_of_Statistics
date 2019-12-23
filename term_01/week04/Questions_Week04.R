#Question 1

library(SDSFoundations)
acl <- AustinCityLimits

fb <- table(acl$Facebook.100k)
fb

age <- table(acl$Age.Group)
age

twoway <- table(acl$Facebook.100k,acl$Age.Group)
twoway

#proportion of (20,30,40,50+ year olds) that have 
#100,000+ likes on Facebook
prop.table(twoway,2)

#Question 2

num_studs <- 5+10+9+10+6+8+10+9+7+4+11+5+4+4+2+9+9+4+2+0
num_studs
A <- 5+8+11+9
A
A/num_studs
 
upper <- 11+5+4+4+2+9+9+4+2+0
upper
upper/num_studs

#prob of failing (getting an F) given Freshman
6/(5+10+9+10+6)

#prob getting a B given sophomore
10/(8+10+9+7+4)

#prob of a student being a sophomore and getting a B
10/num_studs

#proportion of junior passing with D or better
(11+5+4+4)/(11+5+4+4+2)

#prob of being senior
(9+9+4+2+0)/num_studs

#prob of being a senior given D
2/(10+7+4+2)


#Question 3

0.15/0.35

#Question 4

12+34+30+24
35+25+32.5+7.5

#prob that person prefers Action
#130 aduls: 50 W and 80 M
#if .12 of W like action -> 
.12*50 #6 W like action
#if .35 M liek action ->
.35 * 80 #28 M like action
(6+28)/130

