# intro to Databases:
- **DBMS**: Database Management System
    - efficient, reliable, convenient and safe multi user storage access to > amount persistent data
    - **MASSIVE**: handles data in massive scale 
        - e.g. db sys. handles from TB(s) of data every day
        - data handled is much larger than can fit in computing sys.
        - designed to handle data residing outside memory
    - **PERSISTENT**:  data in db outlives programs that executes data
        - so this means data will sit there, 
        - program starts up and uses the data, 
        - and after the program ends, data is still there 
    - **SAFE**: since runs critical applications (e.g. banking, telecommunication)
        - has to guarantee data managed stay in consistent state
            - won't be lost, overwritten when failures
    - **MULTI-USER**: A program can allow different users or apps to access data concurrently
        - concurrency control: idea where control way multiple users access db
    - **CONVENIENT**: make easy work with large amt. of data and do processing on it
        - **Physical Data independence**: way data laid on disk is indep. of way programs think about structure of the data
            - operations on data indep. from way data is laid out
            - e.g. prog. operate on db and underneath complete change in how data stored, but nothing will change with the program 
        - **high level query languages**: db are usually queried by languages
            - obey notion called **declarative**
                - in query describe what you want out of db but don't need to describe algor. to get data out
    - **EFFICIENT**: has to do thousands of queries or updates per second
        - so execute queries (complex or not) at that rate over gigantic amounts of data (TBs and more) provided by DBMS
    - **RELIABILITY**: We don't want all our money gone from the bank right? 
- May be programmed via "frameworks" (e.g. Django, Ruby on Rails)
    - helps you develop programs and calls to the db sys.
- may run in conjunc. with "middleware" (e.g. app servers, web servers)
    - helps interact with db sys. in certain ways that this course will not cover
- data intensive apps may not use DBMS
    - maybe be stored in files (e.g. Excel spreadsheets, Hadoop)

---

## 4 Key concepts
- Data Model
    - how the data is structured 
    - (e.g. common is relational dot data model)
        - data and db is thought of as a set of records
    - XML: captures data as hiearchical struct. 
    - graph data model: data in form of nodes and edges
- Schema vs data
    - can think Schema as Types and data as variables
    - scheme sets up struct. of a db (e.g. Students with IDs and GPAs)
- Data Definition Language (DDL)
    - used to set up a schema.
- Data manipulation or query language (DML)
    - once schema set up we can start querying and modifying data

___

## Key People
- DBMS implementor          : builds the system
- DB designer               : est. schema
- DB application developer  : programs that opearates on db
- DB admin                  : loads data, and keeps running smoothly
    - dbms has # tuning params associated and tuning right makes a difference
