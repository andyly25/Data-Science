library(SDSFoundations)
bike <- BikeData

#apparently the instructor cheated by just looking directly at data frame instead of forming R code
#1a. What is the age of the 7th rider in the dataset?
age <- bike[7,2]
age #45

#1b. How many of the first 10 riders in the dataset ride daily?
daily<- bike$cyc_freq[0:10] == 'Daily'
daily
sum(daily, na.rm=TRUE)  #3

#1c. What is the speed of the first female who cycles less than one time per month (in miles/hour)?
females <- bike[bike$gender == 'F', ]
females[1, 9] #8.1

#2a. What type of variable is student? Categorical
#2b. What type of variable is cyc_freq? Categorical
#2c. What type of variable is distance? Numerical

#3. In this lab, we will be creating a new dataset that includes just the student riders and all of their variables. What is the correct terminology for this new dataset?
# Data frame

## Analysis portion!

# Find the number of students in the dataset
table(bike$student)

# Pull out student data into a new dataframe
#student <-bike[bike$student==1,]

# Find how often the students ride, using the new dataframe
#table(student$cyc_freq)

# Create a vector for the distance variable
distance <-student$distance

#1a. What is the name of the data frame? bike
#1b. What is the name of the variable? student

#2. This line creates a new dataframe called "student": what is the role of the comma?
student <-bike[bike$student==1,]
# It tells R to include all the variables (columns) for the riders that are students. 

#3. What does "student" refer to in this line of code?:
table(student$cyc_freq)
# The new dataframe called "student"

#This line of code creates a vector called "distance:"
distance <-student$distance
#4. What does this vector consist of?
#It is a string of numbers, each of which is the distance ridden by a student in the dataset.

# Find average distance ridden
mean(distance)

#Suppose we have run the following code to try to create a list of the times.
#Read in the dataset and name it bike
bike<-BikeData
#Create a vector of the times
rider_times<-bike$times
#Check the contents of our rider_times vector
rider_times
#5. What error has caused the vector of rider_times to be empty? (Examine the data set in R for help.)
#The variable "times" is not spelled the same way in our datafile


## MORE ANALYSIS! from same code above
#1. How many students are in the dataset?
table(bike$student)
# 14

#2. How many variables are in the new data frame "student"? 
student
# 9

#3. We want to know how often the students ride. What is the most frequently observed response?
# https://codereview.stackexchange.com/questions/132551/function-for-most-frequent-level-of-string-or-factor-categorical-variable-in-r
# Mode function
MaxTable <- function(x){
  dd <- unique(x)
  # which() function will return the position of the elements(i.e., row number/column number/array index) in a logical vector which are TRUE
  # tabulate takes the integer-valued vector bin and counts the number of times each integer occurs in it.
  # match() function returns a vector of the position of first occurrence of the vector1 in vector2.
  dd[which.max(tabulate(match(x,dd)))]
}
MaxTable(student$cyc_freq) # Daily

# Actually this is much easier and you can analyze which one occurs most often
table(student$cyc_freq)

#4. How is the vector "distance" described in the workspace?
# num[1:14]

#5. How far do students ride on average? (Round to the nearest 0.01)
round(mean(distance),2) #6.26


## CONCLUSION
# In this Pre Lab, we examined data on 14 student riders. Most of the student riders 
# ( a total of  8  out of   14  ) rode their bikes   daily   . 
# On average, the students rode about   6.26  miles on each trip.