# SQL
- Structured Query Language
    - allow users to query, manipulate, and transform data from a rel. db
- **Relational Databases**
    - a collectin of related (2-D) tables
        - each table similar to Excel spreadsheet
            - with fixed num of named col (attributes or properties of table)
            - any number of rows of data

## **SELECT** queries 101
- enables us to retrieve data from SQL Databases
    - refered to as **queries** 
    - query is a statement which declares what data we are looking for
        - where to find in db, and optionally how to transform
- think of a table as an entity (e.g Cats),
    - rows as specific instance of type (e.g. Siamese, persian ...)
    - columns represent common properties shared by all instances of entity (color, weight, tail length)
- basic query we can make that selects from a couple col (properites) of table with all the rows (instances)

```SQL
SELECT column, another_column, ...
From mytable;
```
- this will give a copy of our table but with the columns we requested
- if you use an `*` for SELECT, it will retrieve all the columns

## EXERCISE
- tried out https://jakebathman.github.io/Markdown-Table-Generator/ to make tables
- Here is the movies table we'll work with

**Id**|**Title**|**Director**|**Year**|**Length_minutes**
:-----:|:-----:|:-----:|:-----:|:-----:
1|Toy Story|John Lasseter|1995|81
2|A Bug's Life|John Lasseter|1998|95
3|Toy Story 2|John Lasseter|1999|93
4|Monsters, Inc.|Pete Docter|2001|92
5|Finding Nemo|Andrew Stanton|2003|107
6|The Incredibles|Brad Bird|2004|116
7|Cars|John Lasseter|2006|117
8|Ratatouille|Brad Bird|2007|115
9|WALL-E|Andrew Stanton|2008|104
10|Up|Pete Docter|2009|101

1. Find the title of each film
    - `SELECT Title FROM movies;`
2. Find the director of each film
    - `SELECT Director FROM movies;`
3. Find the title and director of each film
    - `SELECT Title, Director From movies;`
4. Find the title and year of each film 
    - `SELECT Title, Year from movies;`
5. Find all the information about each film
    - `SELECT * FROM movies;`

___

## Queries with Constraints pt.1 
- Now to select specific col of data from table, but will be hard if a lot of rows of data
- we filter out certain results using the **WHERE** clause in the query
    - applied to each row of data by checking specific column values to determine if should be included

```