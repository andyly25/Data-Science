# instructors always loading from a file, but since we aren't this is how we do it
library(SDSFoundations)
animaldata <- AnimalData

# similar to pandas head() that shows default 5 cases, this one is 6
head(animaldata)

# Here's how we call a variable within a data frame
table(animaldata$Sex)

# plot gives us a bar chart, with ',' we can add options
plot(animaldata$Sex, main='Bar Chart of Animal Genders', xlab='Animal Gender', ylab='Frequency')


# Let's make a histogram 
# graph shown is a right skew/ positive skew distribution
hist(animaldata$Age.Intake, main='Histogram of Intake Ages', xlab='Age of Intake')

## HISTOGRAM by GROUPS

#Here we are grabbing just the female animals
femaleage <- animaldata$Age.Intake[animaldata$Sex=='Female']
maleage <- animaldata$Age.Intake[animaldata$Sex=='Male']

#can just give object name into hist
hist(femaleage, main='Histogram of Female Ages', xlab='Age at Intake of Female Animals')
# here we add breaks, so histogram changes based on # of bins
hist(maleage, main='Histogram of Male Ages', xlab='Age at Intake of Male Animals', breaks=15)

#here's how we can check max age
max(maleage)
max(femaleage)

# this gives you record number (row number)
which(animaldata$Age.Intake==17) #415
animaldata[415,]


##univariate descriptive statistics
mean(animaldata$Age.Intake)
median(animaldata$Age.Intake)
sd(animaldata$Age.Intake)
# here's 5 numbers summary: min, 1st quart, median, 3rd quart, max
fivenum(animaldata$Age.Intake)











