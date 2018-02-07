# Have you ever been curious about how long it takes for an animal to be adopted?  
# To investigate questions like this, we contacted the Austin Animal Shelter and 
# they provided us with information about 473 cats and dogs.  
# Included in the dataset are information about how the animals arrived at the shelter, 
# their sex, breed, age, weight, and the number of days spent in the shelter.  
# The data is contained in AnimalData.csv and each variable is described in the codebook file.

#### Reflect on the Question
# 1a. In this lab you will use descriptive statistics to answer a question of interest. Let’s start by remembering why we calculate descriptive statistics.
## What the distribution of a variable looks like
# 1b. Which of the following are example of descriptive statistics?
## The mean and standard deviation of a distribution

### Lab Preparation
library(SDSFoundations)
animaldata <- AnimalData

# 2. One of the following questions will be answered in this lab using descriptive statistics. Select the question that can be answered with descriptive statistics.
## How much do adult cats and dogs at the shelter weight?

#### Analyze the data
### Primary Research Question:
# Compare the weight of adult cats and dogs at the shelter.  How typical would it be to find a 13-pound cat?  What about a 13-pound dog?

### Analysis
# Let’s break this question down into the different descriptive statistics that you will need to construct your answer.  Be sure that your R output includes all of the following components. 

# 1. Create a table to show how many adult (at intake) cats and dogs are in the dataset.
# An animal is considered an adult if it is at least one year of age. 
adultAge <- animaldata$Age.Intake >= 1
adult <- animaldata[adultAge,]

# 2. Make a histogram of weight for both adult dogs and cats. 
weight <- adult$Weight
hist(weight)

# 3. Calculate the appropriate measures of center and spread for each distribution.
fivenum(weight)
## center: 20.625, spread: 49-9.3 = 39.7

# 4. Find the z-score for a 13-pound cat.
z <- (13 - mean(weight))/(sd(weight))

# 5. Find the quartile for a 13-pound dog.

### Problems

# 1a. How many adult dogs are in the shelter?
dogs <- adult$Animal.Type == 'Dog'
adultDogs <- sum(dogs)
adultDog <- adult[dogs,]
## 226
# How many adult cats are in the shelter?
cats <- adult$Animal.Type == 'Cat'
adultCats <- sum(cats)
adultCat <- adult[cats, ]
## 56

# 2a. What is the shape of the distribution of weight for adult dogs?
hist(adultDog$Weight)
## positively skewed
# 2b. What is the shape of the distribution of weight for adult cats?
hist(adultCat$Weight)
## approximately normal

# 3a. Which measure of center should be used to describe the average weight of the adult cats?
## mean
# 3b. Average adult cat weight in pounds (rounded to one decimal place)=
meanAdultCat <- mean(adultCat$Weight)
## 8.6

# 4. What is the standard deviation for the weight of the adult cats? Round to two decimal places.
sdAdultCat <- sd(adultCat$Weight)
## 1.91

# 5. What is the z-score of a 13 pound adult cat? Round to one decimal point.
zcat <- (13- meanAdultCat)/sdAdultCat
## 2.3

# 6. Which of these best describes the location of a 13 pound adult cat in the shelter distribution?
## More than 2 standard deviatiions above the mean.

# 7. What proportion of adult cats weigh more than 13 pounds, according to your data? 
# Use the following code to answer this question: 1-pnorm(zcat). 
# Replace "zcat" with your z-score for the cat. Round to three decimal places.
1-pnorm(zcat)
## 0.011

# 8a. What quartile would contain a 13-pound adult dog?
fivenum(adultDog$Weight) 
# 3.30  13.50  35.25  54.00 131.00
## first

# 8b. What percentage of adult dogs in the shelter weigh more than 13 pounds?
sum(adultDog$Weight > 13)
172/227 
## approximately 75%


#### Draw Conclusions
### Write your conclusion

# The distribution of adult cats in the shelter is   roughly symmetric   with a
# mean   of 8.6 pounds and a standard deviation of  1.9   pounds. 
# About 95% of adult cats at the shelter weigh between   4.8   and   12.4   
# pounds. The distribution of adult dogs in the shelter is   positively skewed   , 
# with a median of 35.3 pounds and an IQR of 40.4 pounds. Half of the dogs at 
# the shelter do weigh much more, including one that weighs   131.00   ). 
# As the two distributions are to be compared, and one distribution is skewed, 
# the data shows that the median weight for both groups is   8.5   for 
# cats and 35.3 for dogs. 

# A 13-pound cat   would not   be typical at the shelter. On the other hand, 
# about 75% of all dogs at the shelter weigh more than 13 pounds. Overall, the 
# distributions of weights for adult cats and adult dogs at the shelter differ 
# both in shape and in measures of center and spread. Cats generally weigh less and 
# have   less   variation in their weights than dogs, while dogs tend to weigh 
# more and have  more   variability.


#### Exercises

# 1a. What was the most common way that dogs arrived in the shelter? (as defined by the “Intake.Type” variable)
table(animaldata$Intake.Type)
## Stray

####### WHOOPS! I did based on animals overall! I'll just list out the answer
# 1b. What proportion of dogs were brought to the shelter as an owner surrender? (Round to 3 decimal places.)
129/473
## 129/473 = 0.273
## for dogs: 0.278

# 1c. Of the dogs that were brought to the shelter as an owner surrender, how many were returned to their owner?
ownerSurrender <- animaldata[animaldata$Intake.Type=='Owner Surrender',]
table(ownerSurrender$Outcome.Type=="Return to Owner")
## 3
## for dogs: 2

# 1d. What was the mean number of days that the dogs referenced in Question 1c spent at the shelter before being returned to their owner? (Round to 1 decimal place.)
ownerReturned <- ownerSurrender[ownerSurrender$Outcome.Type=="Return to Owner",]
mean(ownerReturned$Days.Shelter)
## 6.7
## for dogs: 3.5

# 1e. What would be the correct graph type to show the distribution of dog intake types?
## bar graph


### 2. refer to the image for the frequency table used for these problems
# 2a. A total of 6 students reported that they worked on the take-home exam for 5 hours or longer. 
# What is the total number of students that reported their time?
## x = 6/.15 = 40

# 2b. How many students spent fewer than 3 hours completing the take-home exam?
## 0.55x40 = 22

# 2c. If the professor wanted to report the center of this distribution, which measure of center should she use?
## median

# 2d. Which bin inclues the value of Q3?
## At least 4 hrs, but less than 5 hrs


### Question 3
# Here is a list of ten data values that are sorted from smallest to largest, but five of the data values are missing.  The missing values are represented by A, B, C, D, and E.
# 2     A     3     B     6     C     9     D     15     E
# Using the statistics below, find the missing values for the data set.  
# Mean = 8     Median = 6.5     Mode = 2     Range = 16     IQR = 10

# 3a.
## A = 2, since mode = 2
## B = 5, since (75+B)/10 = 8
## C = 7, since (C+6)/2
## D = 13, since (D-3)=10
## E = 18, since range = E-2=16

# 3b. Which of the statistics would change if each value in the dataset were increased by 2?
## Mean, Median, Mode

# 3c. Which of the statistics would change if each value in the dataset were multiplied by 2?
## Range, IQR, Mean, Median, Mode


### Question 4
# Suppose that hours of sleep per night for single adults between 30 and 40 years of 
# age are normally distributed with a mean of 6.7 hours and a standard deviation of 1.1 hours.  

# 4a. If an adult has a z-score of -1.5, how many hours of sleep does this person get per night? (Report to 2 decimal places.)
## (x-6.7)/1.1 = -1.5 => x = 5.05

# 4b. What proportion of adults sleep longer than 4.5 hours per night? (Report to 3 decimal places.)
## (4.5-6.7)/1.1 = -2.2, 1 - .0228 = .977

# 4c. What proportion of adults sleep between 5.38 and 8.79 hours of sleep? (Report to 3 decimal places.)
## (5.38-6.7)/1.1 = -1.2, .1151, 1-.1151 = 0.8849
## (8.79-6.7)/1.1 = 2.7, .9965
## .9965-.1151 = 0.8814
## well let's do by code format
pnorm(8.79,6.7,1.1) - pnorm(5.38,6.7,1.1)
# [1] 0.8562138
## their answer is 0.856








