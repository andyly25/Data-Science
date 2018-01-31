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