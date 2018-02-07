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




