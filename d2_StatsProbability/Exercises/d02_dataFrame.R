#if confused look here
# https://courses.edx.org/courses/course-v1:UTAustinX+UT.7.11x+2T2017/discussion/forum/course/threads/593c21ff22a8fb07a50011bf

# Here we'll learn how to import data set into R Studio
# CSV is the most common format imported into R
# you can convert a .XLS excel file into CSV
# Note for me and others confused, recall you downloaded SDSFoundations package and installed into Rstudio
# instead of import dataset and selecting the file from our environment windows
# we enter
library(SDSFoundations) #loads package into our workspace
bike <- BikeData # creates a data frame named bike using BikeData

# after you run that, on the environment window bike pops up
# if you click on bike it opens a tab on the object or you can run code below: View(dataSet)
View(bike)

#if we want the mean of bike distance we use the dataset then '$' in between and then distance
mean(bike$distance)

# Here's how we make a frequency table using 'table'
table(bike$cyc_freq)


#INDEXING BIKE DATA

# We need to use 2 numbers for rows and columns data[row,col]
bike[2,5]

# Now if we want to pull out every single row, and in this case we're pull out col 5
bike[,5]

# let's make a table for the gender
table(bike$gender)

# now let's try grab a subset, e.g. just females
bike$gender == 'F'

# Here we leave blank after comma, only goes into rows to find our data
females <- bike[bike$gender == 'F' , ]
# now the data set is identical to the bike but with only females

#This is how we can grab a vector, not data frame
femalespeeds <- bike$speed[bike$gender == 'F']
mean(femalespeeds)


#QUIZ

#1. What type of dataset file extension is most easily imported in R?
#.csv

#2. In R terminology, what is the name for a matrix with cases in rows and variables in columns?
# data frame

#3. What will the following line of code do when we run it?
table(BikeData$employed)
#tell us the number of cyclists who are employed and the number of cyclists who are unemployed

#4. If we index BikeData with the following line of code, what value will result?
BikeData[8,7] #note for us our BikeData is bike
# 6.21

#5. If we modify the above code as follows and run the code, what will result?
BikeData[,7]
#A vector of distance values for all cases

#6. You would like to create a new data frame from BikeData which contains only employed cyclists. What should your code look like?
employed<-BikeData[BikeData$employed=='1',] 

#7. You would like to create a vector of distances for employed cyclists. What will your code look like?
employed_distance<-BikeData$distance[BikeData$employed=='1']

