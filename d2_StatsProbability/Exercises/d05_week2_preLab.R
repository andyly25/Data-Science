library(SDSFoundations)
animaldata <- AnimalData

# The question: How many days do animals spend in the shelter before they are adopted?

#### Reflect on the Question
### Check the Data

# 1a. How many variables are in this dataset? 24

# 1b. How many of the first 10 animals in the dataset were adopted?
head(animaldata, n=10L)
# results shows 4

#1c. Was the first owner-surrendered animal in the dataset neutered? No


### Check the Variables of Interest

# 2a. What variable tells us the length of time an animal stayed in the shelter? The variable name in the dataset is:
## Days.Shelter
# 2b. What type of variable is this?
## numerical 
# 2c. What variable tells us if the animal was adopted? The variable name in the dataset is:
## Outcome.Type
# What type of variable is this?
## categorical


### Reflect on the Method
# Which method should we be using for this analysis and why?
# 3. We will use descriptive statistics to answer this question of interest. Why?
## We want to describe the distribution of a quantitative variable. correct
# 4. We should generate a histogram of the distribution before we calculate descriptive measures of center and spread. Why?
## We need to check the shape of the distribution


#### ANalyze the Data
#Here is the code you will use:

#Find the number of animals that were adopted
# 1. What will the line of the code do for us?
table(animaldata$Outcome.Type)
## It will generate a frequency table to show us how many animals experienced each type of outcome.

#Pull out only adopted animals
adopted <- animaldata[animaldata$Outcome.Type=="Adoption",]

#Pull out just the days in shelter for the adopted animals
# 2. We are creating a new object called daystoadopt. What does this object contain?
daystoadopt <- adopted$Days.Shelter
## The number of days that animals spent in the shelter if their outcome type was "Adoption."

# 3. Which line in the R code produces a visual of the distribution of daystoadopt?
## hist(daystoadopt)
#Visualize and describe this variable
hist(daystoadopt)
fivenum(daystoadopt)
mean(daystoadopt)
sd(daystoadopt)
# 4. The following line of R code will produce a row number:
which(animaldata$Days.Shelter==max(daystoadopt))
# What will this row number tell us?
## It will tell us the row that contains the animal that took the longest to be adopted

# 5. Suppose we have run the following code to subset the dataset for only male animals. What is the cause of the error below? (Examine the data set in R for help.)
animaldata<-AnimalData 
males<-animaldata[animaldata$Sex == 'Male'] 
# Error in [.data.frame`(animaldata, animaldata$Sex == "Male") :
# undefined columns selected
## We are missing a comma inside of the brackets

### Problems

# 1. How would you describe the shape of the distribution of daystoadopt?
## positively skewed

# 2. Which measures of center and spread should you report for this data?
## median and IQR

# 3. Enter numerical values for the following:
## 3a. Center = median = 13
## 3b. Spread = IQR = q3-q1 = 30

# 4. It looks like one adopted animal spent much more time in the shelter than the others.
# 4a. How many days was this animal in the shelter?
which(animaldata$Days.Shelter==max(daystoadopt))
animaldata[425,]
## 211 days
# 4b. what was the z-score for this particular animal? round to nearest 2 dec places
z <- (211 - mean(daystoadopt))/(sd(daystoadopt))
## 5.09

# 5. Why should we NOT report a z-score for this animal, even though we can calculate one?
## the distributions is skewed


#### Draw Conclusions
# On average, animals spent fewer than two   weeks   in the shelter before being 
# adopted (   media   = 13 days, IQR = 30 days). The length of time was highly 
# skewed to the   right   , however. The longest period of time an animal was in 
# the shelter was   211   days before being adopted. This animal was a 
# 2-year-old   dog   that entered the shelter injured. The middle 50% of the 
# distribution were adopted between   8   and   38   days.



