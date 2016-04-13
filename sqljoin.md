# # SQL Joins

## Learning Objectives.
- Define SQL joins.
- Explain what SQL joins and how to use them.
- Use the different type of joins to display records.
- Shopping datbase example


## Opening Framing (5 / 5)
An SQL JOIN clause is used to combine rows from two or more tables, based on a common field between them.

The most common type of join is: SQL INNER JOIN (simple join). An SQL INNER JOIN returns all rows from multiple tables where the join condition is met.

### Information Dive (5 / 10)
For the next 5 minutes, research SQL joins are

[SQL Joins](http://www.w3schools.com/sql/sql_join.asp)

![SQL joins diagram](Visual_SQL_JOINS_orig.jpg))

### T&T (5 / 15)
Now, turn & talk to your neighbor and discuss:

1. At a high level, what are ORM's and how might they be useful?
2. What is the importance of interfacing the server with the database?


![ERDs](./active-record.png)

#Different SQL JOINs
Before we continue with examples, we will list the types of the different SQL JOINs you can use:

-INNER JOIN: Returns all rows when there is at least one match in BOTH tables
-LEFT JOIN: Return all rows from the left table, and the matched rows from the right table
-RIGHT JOIN: Return all rows from the right table, and the matched rows from the left table
-FULL JOIN: Return all rows when there is a match in ONE of the tables

#SQL INNER JOIN Keyword
The INNER JOIN keyword selects all rows from both tables as long as there is a match between the columns in both tables.

#SQL INNER JOIN Syntax
`SELECT column_name(s)
`FROM table1
`INNER JOIN table2
`ON table1.column_name=table2.column_name;

![alt text](https://github.com/ATL-WDI-Curriculum/sql-joins/blob/master/img_innerjoin.gif "Inner JOIN")

#SQL LEFT JOIN Keyword
The LEFT JOIN keyword returns all rows from the left table (table1), with the matching rows in the right table (table2). The result is NULL in the right side when there is no match.
`SELECT column_name(s)
`FROM table1
`LEFT JOIN table2
`ON table1.column_name=table2.column_name;

![alt text](https://github.com/ATL-WDI-Curriculum/sql-joins/blob/master/img_leftjoin.gif "Left JOIN")
![alt text](https://github.com/ATL-WDI-Curriculum/newsqljoins/blob/master/sqlleft.png "example")
[sql join left](http://www.w3schools.com/sql/trysql.asp?filename=trysql_select_join_left)


#SQL RIGHT JOIN Keyword
The RIGHT JOIN keyword returns all rows from the right table (table2), with the matching rows in the left table (table1). The result is NULL in the left side when there is no match.

SQL RIGHT JOIN Syntax
`SELECT column_name(s)
`FROM table1
`RIGHT JOIN table2
`ON table1.column_name=table2.column_name;

![alt text](https://github.com/ATL-WDI-Curriculum/newsqljoins/blob/master/img_rightjoin.gif "example")
![alt text](https://github.com/ATL-WDI-Curriculum/newsqljoins/blob/master/sqljoinright.png "example")
[sql join left](http://www.w3schools.com/sql/trysql.asp?filename=trysql_select_join_left)

#SQL FULL OUTER JOIN Keyword
The FULL OUTER JOIN keyword returns all rows from the left table (table1) and from the right table (table2).
The FULL OUTER JOIN keyword combines the result of both LEFT and RIGHT joins.
The FULL OUTER JOIN keyword returns all the rows from the left table (Customers), and all the rows from the right table (Orders). If there are rows in "Customers" that do not have matches in "Orders", or if there are rows in "Orders" that do not have matches in "Customers", those rows will be listed as well.



SQL FULL OUTER JOIN Syntax
`SELECT column_name(s)
`FROM table1
`FULL OUTER JOIN table2
`ON table1.column_name=table2.column_name;

![alt text](http://www.w3schools.com/sql/img_fulljoin.gif "full outter")
![alt text](https://github.com/ATL-WDI-Curriculum/newsqljoins/blob/master/sqlfullouterjoin.png "full outter")
![alt text](https://github.com/ATL-WDI-Curriculum/newsqljoins/blob/master/sqljoinright.png "example")




