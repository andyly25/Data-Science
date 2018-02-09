#Notes for Tableau data mining
- I didn't like having a captions in the worksheets so I have to compromise with this

## Starting out
1. go to [Part 1. Visualization Section 2](https://www.superdatascience.com/training/)
    - download churn modeling which is an Excel Sheet
2. Now open Tableau and Connect with that Excel Sheet
3. Let's test out Geography and when you drag into rows, you just see a simple table
    - we can change by going into dimensions->Geography->Geographic Roles -> Country/Region
    - Now you see the geography of those countries we're working with
4. Add colors to country by dragging `Number of Records` over Color
    - We can see numbers of customers by country by dragging over to Label

## Let's try running an A-B test in Tableau
- We need the dependent variable we are testing: Exited
    - Found in Measures and is looked as a number
    - we want it to be a category so `drag over to Dimensions`
- Let's try to run an A-B test with gender
    1. Gender to Columns
    2. Number of Records to Color and Label
    3. If we want to see percentage of each, go to drop down of SUM(Number...)
        - add table calculation and change calculation type to: `percent of total`
        - instead of `Table across` we want `Table (Down)`
    4. Let's format the label of Sum
        - right click sum and go to Format and then in Default: Numbers
            - set to Percentage with 0 decimal places
    5. With Command + hold, move our SUM to replace the one within Rows
        - Now it is consistent in size and our axis now represents the percentage
- Our conclusion from this chart is that women are more likely to leave the bank than males
    - quick and simple approach, though can go in deeper to investigate
- Now let's just change font size around
- The 0 and 1 is a bit hard for others to understand so let's change it
    - Right click Exited, and go into `aliases`
    - I changed 0 to be stayed and 1 to be exited
    - You can drag Exited onto labels to add it under the %
- if you don't like the ordering of the marks on graph, you can drag and reorder
    - We moved Exited to be above SUM
- Adding a *reference line*
    - if you drag gender off Columns, you'll get the general overview
        - we'll see 20% overall left, so we'll add reference line for that
    1. right click the vertical axis and `add a reference line`
    2. We're doing Line for Entire Table
    3. For Line we choose `Contant` from drop down menu then typing in 0.20
- Now let's duplicate the gender sheet and make `Country`
    - if you drag `Geography` over `Gender` it replaces gender and keeps all settings for Geography
    - now that we have 3 categories, this isn't an A-B testing anymore (maybe a-b-c or categorical, etc)
    - we duplicated again and dragged Has Cr Card into Dimensions and replaced Geography
        - data is pretty much equal, so not good investment of time to pursue
- Last digit of customer ID we:
    - grab Customer Id and create a calculated field `Right(STR(Customer Id),1)`


## RECAP
1. connect Tableau to Excel file
2. how to visualize an Ad-Hoc A-B test
    - ad-hoc: it is used to describe something that has been formed or used for a special and immediate purpose, without previous planning.
3. How to create Aliases
4. How to add reference line to your chart
5. How to use Ad-Hoc A-B tests to find anomalies
6. How to validate your data/approach
    - using a column or variable that you know have no influence on result.

**NOTE**: since my pace seems to be a little slow, I might have to speed up and take less notes...

