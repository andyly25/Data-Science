# Seeing if i prefer jupyter notebook or typing out into a py file
# if you want to view example ran, then make a print statement for the array
# hmm... jupyter convenient to show results right away

my_list = [1,2,3]

import numpy as np

# can cast that list as an array
arr = np.array(my_list)
# we get back a 1-d array
# print("First array test: " + str(arr))

# This is a list of lists
my_mat = [[1,2,3], [4,5,6], [7,8,9]]

# This will give us a 2-d array
arr2 = np.array(my_mat)

# print("2nd array test: \n" + str(arr2))

# Similar to python range we can do
start = 0
stop = 10
stepSize = 2
arr3 = np.arange(start, stop, stepSize)

# print("Test 3: " + arr3)

# if we want an array of 1-D 0's
arr4 = np.zeros(3)

# if you want 2-d array of 0's pass in a tuple
arr5 = np.zeros((5,5))

# can also do np.ones zimilar to zeros
arr6 = np.ones((5,5))

# here linspace will take in a 3rd arg of # points you want (start, stop, 10 evenly spaced points)
arr7 = np.linspace(0, 5, 10)
# print("First array test: " + str(arr7))

# Here's how you make an identity matrix (useful in linear algebra prob)
arr8 = np.eye(4)
# print("First array test: " + str(arr8))


# array of random numbers
# most common and will create an array of given shape you pass in and populate
# with random samples from uniform dist. 0 to 1
arr9 = np.random.rand(5)
arr10 = np.random.rand(5,5) #for 2-d


# If we want to return a sample from standard normal distribution(SND) or gaussian dist
# we use randn instead. not from 0-1 but with SND center around 0
arr11 = np.random.randn(2)
arr12 = np.random.randn(4,4) # for 2d


# here's rand int that returns random ints from a low to a high and actual size you want
arr13 = np.random.randint(1,100, 10)


# let's try using a reshape method
arr14 = np.arange(25)
arr15 = np.random.randint(0,50,10)
# note this is 5x5 = 25 so you'll have error if it goes over # of elements
# this reshapes into a 5x5 2d matrix
arr16 = arr14.reshape(5,5)

# here's how to find max value
maxVal = arr15.max()
minVal = arr15.min()
# if you want to find index of max
maxIndex = arr15.argmax()
minIndex = arr15.argmin()


# if you want to know the shape
arrShape = arr14.shape
arrShape2 = arr16.shape
# print(arrShape2)


# If you want to know the data type of the array you use
arr14.dtype

# instead of always typing random.randint you can
from nump.random import randint
randomInt = randint(2,10)