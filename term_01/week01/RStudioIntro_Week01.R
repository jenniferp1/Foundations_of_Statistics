#Simple calculations
3+4
5*6*7/9
2^10

sqrt(25)
#R is case sensitive

#get info/help on function
?sqrt

#assign a value to a variable
x <- 5
x + 2

y <- x^2
sqrt(y) 

x <- 6^2+2
x^2

x <- 6+2
sqrt(x^2)


#assign data to a vector
#c() is the concatinate function
myvariable <- c(72, 28, -9, 12, 11)
myvariable*3
sqrt(myvariable)

myvariable2 <- myvariable*3
myvariable2

mean(myvariable)
length(myvariable)
sum(myvariable)

#sq brackets to index a value
myvariable[2]

myvariable > 0
myvariable[myvariable > 0]

#Boolean < > == !=

myvariable[myvariable == 12]
myvariable[myvariable !=12]

#Data frames
#csv files best to import into R.  Save excel as csv before importing
#Click Import Dataset box on upper right
#Read in BikeData.csv

#calculate mean of distance variable (column)
mean(BikeData$distance)

#look at categorical data - counts of ride freq
#table
table(BikeData$cyc_freq)

#pull specific case from Dataframe
#5th column is binary data related to employment status
BikeData[,5]

table(BikeData$gender)

#build a logical statement
BikeData$gender == 'F'

females <- BikeData[BikeData$gender == 'F',] #pull specified rows and all cols

femalespeeds <- BikeData$speed[BikeData$gender == 'F'] #vector of speed values for females
mean(femalespeeds)

BikeData[8,7]
BikeData[,7]
