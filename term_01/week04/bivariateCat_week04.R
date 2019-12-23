#Extract probabilities from a table of a categorical variable
#and then learn how we can calculate the marginal and conditional 
#probabilities of categorical variables.


library(SDSFoundations)
acl <- AustinCityLimits
View(acl)

#video 1
#Look at variable Gender and Grammy

table(acl$Grammy)

gtab <- table(acl$Grammy)
#calcualte proportion in each category in table
#frequency table
prop.table(gtab)
67/116
49/116

#create contingency table
gtab2 <- table(acl$Grammy, acl$Gender)
gtab2

prop.table(gtab2)
21/116

#take props by row or column
#by row (gender given grammy winning status)
prop.table(gtab2, 1)

#by col (grammy winning status given gender)
prop.table(gtab2, 2)

#video 2
#segemented bar plots (video 2)

barplot(gtab,main='ACL Grammy Winners',xlab='Grammy Winner',
        ylab='Counts')

barplot(gtab2,legend=T,main='Gender by Grammy Winner',ylab='Counts',
        xlab='Gender',beside=T)
barplot(gtab2,legend=T,main='Gender by Grammy Winner',ylab='Counts',
        xlab='Gender')

barplot(prop.table(gtab2, 2))
