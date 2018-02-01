# Reading Comprehension for Univariate Descriptive Statistics
Here I'll make some postings on reading comprehension quizzes.

---

## Reading Comprehension: Graphing a Single Variable
1. What's the first step in creating a graph of our data?
    - Coming up with an aggregate table
2. The aggregated table when examining a categorical variable is:
    - Table of Counts
3. What would be a standard "good" number of rows in a frequency table?
    - 10 to 15

### Histogram showing # vaccinations recieved by sample dogs in local animal shelter
![Histogram on sample dog vaccination](https://prod-edxapp.edx-cdn.org/assets/courseware/v1/262c8caa26fa4c38e23034988a8e9573/asset-v1:UTAustinX+UT.7.11x+2T2017+type@asset+block/IMAGE_R1-1.jpg "histogram on sample dog vaccination")

1. According to the histogram, how many dogs did not receive any vaccinations at all while in the shelter?
    - 10
2. How many dogs were in this sample?
    - 220
3. What percentage of the dogs received three or more vaccinations?
    - 72.7
4. What is the bin size for the vaccination histogram?
    - 1
5. The common graph for categorical data to represent counts for each ctegroy is a:
    - Bar Plot
6. The common graph for numerical data to represent frequency for each value(or bin is a):
    - Histogram

---

## RC: Center and Spread
![BMI sample of Americans](https://prod-edxapp.edx-cdn.org/assets/courseware/v1/cd0a9aa1dc6a45a4a638f02b7c22d8a2/asset-v1:UTAustinX+UT.7.11x+2T2017+type@asset+block/WEEK_2__Video_5.png "BMI Sample of Americans")

|   x    |  f   | 
|--------|------|
|[16, 18)| (a)  | 
|[18, 20)|  33  |
|[20, 22)|  36  |
|[22, 24)|  (b) |
|[24, 26)|  13  |
|[26, 28)|  5   |

1. Identify the missing values in this portion of the frequency table that was used to generate the BMI histogram
    a. The value of (a) is: 10
    b. The value of (b) is: 25
2. The shape of this distribution can best be described as: 
    - right skewed
3. A BMI is considered obese. Which of the following is the best description of the BMI sample?
    - The majority of individuals are not obese, but there are some extreme values in the tail of the distribution
4. When you are comparing two sets of data, and one is strongly skewed and the other is symmetric, which measure of center should you choose for the comparison?
    - Median
5. Which of the following is an accurate interpretation of the median of distribution?
    - Half the distribution has a lower score than the median, and half has a higher score than the median

### Solve by hand if you can
- Twelve coworkers log their hours worked overtime in the past month:
    - {10, 2, 6, 12, 14, 15, 24, 15, 25, 3, 12}
1. What is the mean of the sample?
    - sum is 153, n is  12, so mean is: 12.75
2. What is the standard deviation of the sample?
    - recall it's  √(∑(xᵢ - σ)²/N) (Typing math symbols is a pain...)
    - **NOTE**: apparently I should divide by N-1 since this is a sample and not population
        - sum of difference²: 558.25
        - Variance: 50.75
        - Standard deviation: 7.12
3. What is the 5 number summary for the sample?
    - Let's reorder least to greatest first
    - 2, 3, 6, 10, 12, 12, 14, 15, 15, 15, 24, 25 (apparently divide by 2 if even number)
        - min = 2
        - Q1 = (6+10)/2 = 8
        - Q2 = (12+14)/2 = 13
        - Q3 = (15+15)/2 = 15
        - Max = 25
4. mean number of overtime hours was? (round to 1 decimal)
    - 13
5. The median number of overtime hours was:
    - 13
6. The range was:
    - 25-2 = 23
7. The IQR was:
    - Q3 - Q1 = 15-8 = 7
8. What is the shape of this distribution of scores?
    - approximately normal

___
## Using Z-Scores
- z-score = (x-x̄)/SD
    - **note for self**: I can make x̄ but putting x and '\bar' together
- Symmetrical distribution -> measure of center=Mean -> Measure of spread=SD
    - 68% fall bellow 1st SD, 95% between 2nd SD,99.7% for 3rd
    - this is by negative and positive of the SD
1. A full‐term baby in the US weighs, on average, 7.5 pounds.  Birth weights are normally distributed, with a standard deviation of 1.1 pounds.  Sketch this distribution and use your sketch to help you answer the following questions.
    a. 68% of all full-term babies weigh: between 6.4 and 81.1 pounds
    b. 95% of all full-term babies weigh: between 5.3 and 9.7 pounds 
    c. 99.7% of all full-term babies weigh: between 4.2 and 10.8 pounds
2. A distribution has a σ = 4.  Find the z-score for a score that is:
    a. 4 points above the mean: z = 1
    b. 12 points above the mean: z = 3
    c. 2 points below the mean : z = -0.5
    d. 8 points below the mean: z = -2 
3. With a height of 75 in., Lyndon Johnson was the tallest president in the 20th century.  Presidents of the past century have heights with a mean of 71.5 in. and a standard deviation of 2.1 in.
    - With a height of 85 in., Shaquille O’Neal was the tallest player on the Miami Heat basketball team.  Basketball players for the Miami Heat during 2004 to 2008 had heights with a mean of 80.0 in. and a standard deviation of 3.3 in.
    a. What is the z-score for Lyndon Johnson? (round to 2 dec)
        - (75-71.5)/2.1 = 1.67
    b. What is the z-score fro Shaquille O'Neal?
        - (85-80)/3.3 = 1.52
    c. Who is relatively taller among their respective groups: Lyndon Johnson or Shaquille O'Neil?
        - Lyndon Johnson
4. Which of the following is NOT a characteristic of a Normal Distribution?
    - X Half the data values are positive, and half the data values are negative.
    - The center value of the distribution is the mean, median and mode.
    - The distribution is bell‐shaped and unimodal.
    - The scores are symmetrical around the mean.
