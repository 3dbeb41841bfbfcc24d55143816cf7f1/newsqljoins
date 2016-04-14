# # SQL Joins

## Learning Objectives.
- Define SQL joins.
- Explain what SQL joins and how to use them.
- Use the different type of joins to display records.
- Shopping database example

## Opening Framing (5 / 5)
An SQL JOIN clause is used to combine rows from two or more tables, based on a common field between them.

The most common type of join is: SQL INNER JOIN (simple join). An SQL INNER JOIN returns all rows from multiple tables where the join condition is met.

### Information Dive (5 / 10)
For the next 5 minutes, research SQL joins are

[SQL Joins](http://www.w3schools.com/sql/sql_join.asp)

![SQL joins diagram](https://github.com/ATL-WDI-Curriculum/newsqljoins/blob/master/images/sql-joins.jpg)

### T&T (5 / 15)
Now, turn & talk to your neighbor and discuss:

1. At a high level, what are ORM's and how might they be useful?
2. What is the importance of interfacing the server with the database?

![ERDs](https://github.com/ATL-WDI-Curriculum/sql-joins/blob/master/images/active-record.png)

#Different SQL JOINs
Before we continue with examples, we will list the types of the different SQL JOINs you can use:

-INNER JOIN: Returns all rows when there is at least one match in BOTH tables
-LEFT JOIN: Return all rows from the left table, and the matched rows from the right table
-RIGHT JOIN: Return all rows from the right table, and the matched rows from the left table
-FULL JOIN: Return all rows when there is a match in ONE of the tables

#SQL INNER JOIN Keyword
The INNER JOIN keyword selects all rows from both tables as long as there is a match between the columns in both tables.

SQL INNER JOIN Syntax
`SELECT column_name(s)
`FROM table1
`INNER JOIN table2
`ON table1.column_name=table2.column_name;

![Inner JOIN](https://github.com/ATL-WDI-Curriculum/newsqljoins/blob/master/images/img_innerjoin.gif)

