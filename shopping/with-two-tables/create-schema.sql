DROP TABLE IF EXISTS receipts;
DROP TABLE IF EXISTS stores;

CREATE TABLE stores (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL
);

CREATE TABLE receipts (
  id serial PRIMARY KEY,
  store_id integer references stores(id),
  item varchar(50) NOT NULL,
  number_of_items integer DEFAULT 1,
  price money NOT NULL,
  buy_date date DEFAULT current_date
);
