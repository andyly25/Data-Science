# if we want to assign a vector(set of # to specific obj)
# we would need to be able to concatenate using c()
myVariable <- c(72, 28, -9, 12, 11)
#now we can take this vector and manipulate its elements
myVariable * 3
# we can also get a warning if you run this (can't do for negative)
sqrt(myVariable)
# can assign a modifcation into another object
myVariable2 <- myVariable*4
myVariable2
#can grab the mean
mean(myVariable)
#Can grab length
length(myVariable)
#Sum
sum(myVariable)

# INDEXING

# Here's how we index by using '[]'
# Note: indexing does not start at 0, so 2 is really the 2nd
myVariable[2]

#Here we can use boolean
myVariable > 0
# we can grab elements using conditions
myVariable[myVariable>11]

# they come in: < > == !=


# QUIZ

#1. What is a vector?
# A set of values of the same type

#2 The concatenate function in R helps you create a vector. What does the concatenate function look like?
# c()

#3 If you wanted to assign the even numbers from 1 and 10 to a vector called z, which code should you use?
# z <- c(2,4,6,8,10) 

#4 You can index vector z. What does this mean?
# Specify a specific value or set of values within a vector. correct

#5 Please refer to your answers to the previous questions to determine what value would be returned by the following line of code:
z[3]
# 6

#6 If you ran the following logical statement, what would be returned? Please refer to your answers to the previous questions.
z != 10
# TRUE TRUE TRUE TRUE FALSE

#7 Which line of code would return the values 6, 8,10? Please refer to your answers to the previous questions.
z[z>5]


