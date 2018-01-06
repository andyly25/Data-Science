# Python for Data Science and Machine Learning Bootcamp
Some Data Science Libraries I'll learn to use
- NumPy
- SciKit-Learn
- SciPy
- Matplotlib
- Pandas
- Plotly
- Seaborn
- PySpark
- and more!

## Goals:
- Use Python for Data Science and Machine Learning
- Use Spark for Big Data Analysis
- Implement Machine Learning Algorithms
- Learn to use NumPy for Numerical Data
- Learn to use Pandas for Data Analysis
- Learn to use Matplotlib for Python Plotting
- Learn to use Seaborn for statistical plots
- Use Plotly for interactive dynamic visualizations
- Use SciKit-Learn for Machine Learning Tasks
- K-Means Clustering
- Logistic Regression
- Linear Regression
- Random Forest and Decision Trees
- Natural Language Processing and Spam Filters
- Neural Networks
- Support Vector Machines

## Setting up:
- Seems to be using Jupyter Notebook from Anaconda, so quick Google for that

## virtual env
- http://conda.pydata.org/docs/using/envs.html
    - conda create --name fluffy numpy
    - this will create new environment named /envs/fluffy containing program NumPy
        - env will use same version python since you did not specify
        - to activate env use:  `activate fluffy`
        - deactivate by:        `deactivate`
        - within this env there is no pandas but it has numpy which you can use as
            - `import numpy as np`
            - if you want pandas you have to do `conda install pandas` in the env
    - if you want to use a different version of Python
        - `conda create --name mypython3version python=3.5 numpy`
    - `conda info --envs` will list out all your environments