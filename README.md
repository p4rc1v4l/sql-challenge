# SQL Homework

## SQL Part.

The first part of the homework requires us to create an ERD, and two files one with the databse schema and the second with the requeste queries.
Inlcuded are these files under the EmployeeSQL folder.

## Pandas Part.

The second part is a jupyter notebook that connects to the created database in Postgresql and using Pandas it creates a dataframe and analyses the data by creating to plots to visualize the salary ranges and how they relate to employee titles.

In order to connect to the database a INI file (**database.ini**) is use to enter the connection data. This file wont be uploaded to github.

The file has the following configuration:

[postgresql]
```
host = hot_name
database = database_name
user = database_name
password = database_password
```
