# Well getting a little tired of Jupyter Notebook so let's do some Sublime!

import matplotlib.pyplot as plt

#note instead of %matplotlib inline that you need to use in Jupyter you use
plt.show() # at end of plotting commands

import numpy as np
x = np.linspace(0,5,11)
y = x**2


#get rid of triple ' to uncomment the code to test
# annoying how all the plots kept showing up before the latest

# Functional method
plt.plot(x,y)
plt.xlabel('X Label')
plt.ylabel('Y Label')
plt.title('Plot1')
# NOTE: "Matplotlib is building the font cache using fc-list. This may take a moment." may appear
plt.show()

#Let's try making multiple graphs in one
plt.subplot(1,2,1)
plt.plot(x,y, 'r')
plt.subplot(1,2,2)
plt.title('plot2')
plt.plot(y,x,'b')
plt.show()


# Now let's do Object Oriented method
fig = plt.figure()
# Left, Bottom, Width, Height
axes = fig.add_axes([0.1,0.1,0.8,0.8])
axes.plot(x,y)
axes.set_xlabel('X Label')
axes.set_ylabel('Y Label')
axes.set_title('Plot 3')

plt.show()



# we create an empty figure
fig = plt.figure()

# we then add axes to the figure
axes1 = fig.add_axes([0.1,0.1,0.8,0.8])
# from what I noticed these numbers starts from bottom left going up and right
axes2 = fig.add_axes([0.2,0.5,0.4,0.3])

axes1.plot(x,y)
axes1.set_title('plot 4 large')
axes2.plot(y,x)
axes2.set_title('plot4 small')

plt.show()