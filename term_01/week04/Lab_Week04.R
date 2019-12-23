#Primary Research Question
#Among male artists, is there an association between winning a 
#Grammy and the genre of music that he plays?
  
library(SDSFoundations)
acl <- AustinCityLimits
View(acl)

males <- acl[acl$Gender == 'M',]
males

length(males[males$Grammy == 'Y','Grammy'])

grammy <- table(males$Grammy)
grammy

genre <- table(males$Genre)
genre

twoway <- table(males$Grammy,males$Genre)
twoway

prop.table(grammy)

#prob of winnig grammy given singer-songwriter
2/(7)
prop.table(twoway,2)

#prob of singer-songwriter given grammy winner
2/(7+4+22+2)
7+4+22+2
prop.table(twoway,1)

#probability of winning grammy given genre X
prop.table(twoway,2)

barplot(twoway, legend=T, beside=T)
