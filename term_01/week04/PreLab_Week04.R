#Primary Research Question
#For artists age 30 or older, do female artists play different 
#kinds of music on Austin City Limits than male artists?
  


library(SDSFoundations)
acl <- AustinCityLimits
View(acl)

#PART 1

#top 10 that are grammy winners
top10 <- acl[1:10,'Grammy']
length(top10[top10=='Y'])

#Genre played by the first female artist in the dataset 
#who was over 60 years of age
female <- acl[acl$Gender == 'F',]
over60 <- female[female$Age > 60,]
over60$Genre


#PART 2

#Subset the data for artists age 30 or older
older <-acl[acl$Age>=30,]

# Create tables of marginal distributions
genre <- table(older$Genre)
genre
gender <- table(older$Gender)
gender

# Create contingency table 
twoway <- table(older$Gender,older$Genre)
twoway

# Visualize the counts
barplot(twoway, legend=T, beside=T)

# Calculate P(A): the probability of each genre being played
prop.table(genre)

# Calculate P(A|B): the probability of each genre being played, 
#given the artist’s gender
prop.table(twoway,1)

#Verify sample space is 102 for both genre and gender table
25+77
17+11+61+13

#Verify Country given Female P(Country|F) -- see twoway output
#P(Country and F) = 6/102
#P(F) = 25/102
#using equation
(6/102)/(25/102)
#or straight from table
#there are 6 in F/Country box, Tot_F = 6+4+8+7=25
6/25

barplot(twoway, legend=TRUE)


#PART 3

# Number of male artists
gender

# Proportion of jazz performers male (gender given genre)
twoway
7/(4+7) #jazz is 4+7=11
prop.table(twoway,2)


# Proportion of males that preform jazz (genre given gender)
twoway
7/(11+7+53+6)
11+7+53+6 #number of males = 77
prop.table(twoway,1)

genre
prop.table(genre)
