# The Relational Model
- db = set of named  *relations* or (*tables*)
    - using an example, we have a student and college table
    - every relational db has a predefined set of col or attribute each having a name
        - each student has an: ID, name, GPA, photo
        - each college has a: name, state, enrollment
    - now the data are stored in tuples (rows) in the tables and has value for each attrib
    - each attrib. has a *type* or *domain*
- **Schema** strucureal description of relations in db
    - includes name of relation and the attrib. of relation and types of those attrib.
- **instance**: actual contents at given point in time
    - set up a schema and the instances of the data change over time
    - have to be careful when running queries over Null values
        - example: if we wanted students GPA >3.5 and another GPA <= 3.5 those with Null aren't included
- **Key**: attribute whose value is unique in each tuple
    - in Student the ID is the key. For college, probably the name and state is key.
    - if you run db to get specific tuple out of db you do so by its key
        - dbms for efficiency build special index struc. or store in unique way for fast access
- create relations pretty simple
    - `Create Table Student(ID, name, GPA, photo)`
    - `Create Table College(name string, state char(2), enrollment integer)`

___
# Querying Relational Databases
- steps in using a rel. db
    1. Design schema; create using DDL (data definition language)
    2. "Bulk load" initial data
        - so common for db to init. be loaded from data coming from outside source
    3. Repeat: execute queries and modifications
- supports Ad-hoc queries in high level language
    - can pose queries didn't think of in advance
        - language can be used to pose query as you think what you want to ask
        - examples:
            - all students GPA > 3.7 applying to UCLA and UCSD
            - all bioengineering departments in CA with < 400 applicants
            - college with highest avg accept rate over last 3 years
- Queries return relations ("compositional", "closed")
    - lets say we run a query over 3 relations and we get back another relation
        - when we get back same type of object we query, that's known as **closure** of language
        - if we run another query, could be pose over answer of 1st query
            - can combine answer with existing relations in db
            - known as **compositonality**: run query over results of prev queries.
## Query Languages:
- **Relational Algebra**: formal
- **SQL**: actual/implemented language 
    - foundations in relational algebra
- IDs of students with GPA>3.7 applying to Stanford
    - relational Algebra: π<sub>ID</sub> σ<sub>GPA</sub> ^ CName = "Stanford"(Student ∞ Apply)
    - here's one in SQL
    ```sql
    Select Student.ID
    From Student, Apply
    Where Student.ID=Apply.ID
    And GPA>3.7 and college='Stanford'
    ```
