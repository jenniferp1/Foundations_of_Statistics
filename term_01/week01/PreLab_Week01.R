#Load the Data:
library(SDSFoundations)
bike <- BikeData

#Step 1
#My Attempts at Solution

#Age of 7th rider
BikeData$age[7]

first10 <- BikeData[BikeData$user_id <= 10,]
table(first10$cyc_freq)

female <- BikeData[BikeData$gender == 'F',]
femalespeeds <- female$speed[female$cyc_freq == 'Less than once a month']
femalespeeds[1]

#Instructor Solution

#Age of 7th rider
  #Visual check of data frame
View(bike)

#How many of the first 10 riders ride daily
  #Visual check of data frame
View(bike)

#What is speed of 1st female rider that rides less once month
  #Visual check of data frame
View(bike)


#Step 2 -- Breakdown of code
#How many cyclists were students?,  how often did they ride, and what was the average distance they rode?

# Find the number of students in the dataset
table(bike$student)

# Pull out student data into a new dataframe
student <-bike[bike$student==1,]

# Find how often the students ride, using the new dataframe
table(student$cyc_freq)

# Create a vector for the distance variable
distance <-student$distance

# Find average distance ridden
mean(distance)

#Step 3
#How many of the cyclists were students, how often did they ride, and what was the average distance they rode?

# Find the number of students in the dataset
table(bike$student)

# Pull out student data into a new dataframe
student <-bike[bike$student==1,]

# Find how often the students ride, using the new dataframe
table(student$cyc_freq)

# Create a vector for the distance variable
distance <-student$distance

# Find average distance ridden
mean(distance)
  
