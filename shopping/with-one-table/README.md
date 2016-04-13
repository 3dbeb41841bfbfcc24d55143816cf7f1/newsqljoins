# Shopping Receipts Database Lab - Single Table Version

## Setup:

1. Create a database with name `shopping`:

```bash
createdb shopping
```

2. Create a table in the `shopping` database called `receipts` using the
   following DDL statement:

```sql
CREATE TABLE receipts (
  id serial PRIMARY KEY,
  store varchar(50) NOT NULL,
  item varchar(50) NOT NULL,
  number_of_items integer DEFAULT 1,
  price money NOT NULL,
  buy_date date DEFAULT current_date
);
```

3. Create some initial receipts data by executing the following DML statement:

```sql
INSERT INTO receipts (store, item, number_of_items, price, buy_date) VALUES
  ('Sears', 'PS4', 1, 400, 'January 2 2015'),
  ('Toys R Us', 'XBox One', 1, 500, 'January 3 2015'),
  ('Toys R Us', 'TMNT Collectors Set', 1, 25, 'January 3 2015'),
  ('Sears', 'Lego Set', 1, 40, 'January 2 2015'),
  ('Borders', 'Blood Meridian', 3, 12, 'January 5 2015'),
  ('Borders', 'Ham on Rye', 2, 12, 'January 5 2015'),
  ('Local Book Store', 'The Last Tycoon', 1, 14, 'January 2 2015'),
  ('Macy''s', 'Button Down Shirt', 3, 28.50, 'January 21 2015'),
  ('JC Penny', 'Nikes', 1, 100, 'January 23 2015'),
  ('JC Penny', 'tube socks', 3, 28, 'January 23 2015'),
  ('JC Penny', 'Reeboks', 1, 60, 'January 23 2015'),
  ('JC Penny', 'Umbrella, Red', 1, 10.50, 'January 23 2015'),
  ('JC Penny', 'Boxer Shorts', 3, 20.75, 'January 23 2015'),
  ('JC Penny', 'TMNT bedspread', 1, 20, 'January 23 2015'),
  ('Sears', 'Packers Jersey', 1, 50, 'January 24 2015'),
  ('Toys R Us', 'Life', 1, 25, 'January 24 2015'),
  ('Sears', 'laptop bag', 19, 40.50, 'January 24 2015');
```

#### SQL Queries

Now your task is to mine the receipts table for the data described in `exercises.sql`. Simply edit `exercises.sql` with the answers (the correct SQL queries). The first one has been done for you.
