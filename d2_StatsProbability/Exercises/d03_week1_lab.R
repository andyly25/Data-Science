# This is the actual lab, previous was a pre-lab, my bad!

library(SDSFoundations)
#When we first load a dataset, it is a good idea to immediately rename it something simple and familiar to you.
#1. In this example, what is the new name for "BikeData?" 
bike <- BikeData
# bike

#In many of our labs, we only want to work with a subset of the data.
#2. In this example, which variable is being used to identify the cases that will be included in a new dataframe called "males?"
males <- bike [bike$gender == 'M',]
# gender

#When we want to find an average, we will pull out a vector of the the variable and then take its mean.
#3. In this example, a vector called "male_times" will include a string of values from which dataframe?
male_times <- males$time
#males

#4. Assuming we have run the lines of code from the previous questions, if we want to find the mean ride time for the males, what should we place in the parentheses?
mean(male_times)

#5. One of the following questions will be answered in lab using basic R functions. Select the question that will require subsetting the data.
#How many daily riders are in the dataset and what is their average age?


## ANALYSIS
#1. Make a table to show how many daily riders are in the original dataset.
#2. Create a new datafile that includes only the daily riders.
#3. Make a table to show the number of male and female daily riders.
#4. Make a vector of the ages of these daily riders.
#5. Find the mean age for men and for women daily riders.

#1. How many daily riders are in the dataset?
dailyRider <- bike[bike$cyc_freq == 'Daily',] #47
dailyRider[names(dailyRider)=='Daily']

#2. How many of the daily riders are male?
dailyMale <- dailyRider[dailyRider$gender=='M',]
#dailyMales <- males$cyc_freq=="Daily"
#sum(dailyMales, na.rm = TRUE) # 38


#3. What is the average age of daily riders? (Round to 1 decimal place.)
mean(dailyRider$age) # 33.7

#4. What is the average age of the female daily riders? (Round to 1 decimal place)
dailyFemale <- dailyRider[dailyRider$gender=='F',]
mean(dailyFemale$age) # 32.6

#5. What is the average age of the male daily riders? (Round to 1 decimal place.)
round(mean(dailyMale$age), 1) #33.9

#6. How many daily male riders are age 30 or older?
table(dailyMale$age >= 30) #25


## CONCLUSION
# In this lab, we examined data on   47   daily riders. 
# Most of the daily riders (a total of   38   ) were  male   . 
# The average age of all daily riders was   33.7   . 
# The average age of female daily riders was  32.6   , 
# while the averge age of male daily riders was   33.9   .



