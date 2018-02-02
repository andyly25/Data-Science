# Well getting a little tired of Jupyter Notebook so let's do some Sublime!

import matplotlib.pyplot as plt

#note instead of %matplotlib inline that you need to use in Jupyter you use
plt.show() # at end of plotting commands

import numpy as np
x = np.linspace(0,5,11)
y = x**2

''' 
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



#subplots allows us to specify how many rows and col we want
#basically calls fig.add_axes right away for you
#that axes object below is a list of matplotlib axes
fig,axes = plt.subplots(nrows=1, ncols=2)

# # with the axes object you can do
# for current_ax in axes:
#     current_ax.plot(x,y)

# we can also index it
axes[0].plot(x,y)
axes[0].set_title('1st plot')
axes[1].plot(y,x)
axes[1].set_title('2nd plot')

# axes.plot(x,y)

plt.tight_layout() # this fixes overlap
plt.show()




## Figure size and DPI
#figsize is width and height in inch
#DPI is dot per inch

# similar version below
# fig = plt.figure(figsize=(3,2), dpi=100)
# ax = fig.add_axes([0,0,1,1])
# ax.plot(x,y)

fig,axes = plt.subplots(nrows=2, ncols=1, figsize=(8,2))
axes[0].plot(x,y)
axes[1].plot(y,x)
plt.tight_layout()
## Here's how to save files, can also specify dpi here
fig.savefig('p04_1_pic.png', dpi=200)
plt.show()

'''

#Here's how we add in a legend
fig = plt.figure()
ax = fig.add_axes([0,0,1,1])
ax.plot(x,x**2, label='x squared')
ax.plot(x,x**3, label='x cubed')

# you need a label for legend to work
# and you can specify where to place it
# https://matplotlib.org/api/_as_gen/matplotlib.pyplot.legend.html
# we use 0 for 'Best', we can also use a tuple for our own location e.g. (0.1,0.1)
ax.legend(loc='0')
plt.show()