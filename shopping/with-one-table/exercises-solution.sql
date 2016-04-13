-- All the attributes from all the receipts
SELECT *
FROM
receipts;

-- The store and item names from all the receipts
SELECT store, item
FROM
receipts;

-- All the attributes from all purchases made at Toys R Us
SELECT *
FROM
receipts
WHERE store = 'Toys R Us';

-- The item name of all the purchases made at Borders.
SELECT item
FROM
receipts
WHERE store = 'Borders';

-- The names of all the stores that we shopped at (no duplicates)
SELECT DISTINCT store
FROM receipts
ORDER BY store;

-- The total number of items purchased
SELECT SUM(number_of_items)
FROM receipts;

-- The total number of items purchased at Sears
SELECT SUM(number_of_items)
FROM receipts
WHERE store = 'Sears';

-- The store name and the total number of items purchased for each store
SELECT store, SUM(number_of_items)
FROM receipts
GROUP BY store;

-- The total amount of money spent at Sears
-- Note: Price is the price of a single item, not the total
-- cost of, say, 2 or 3 shirts
SELECT SUM(number_of_items * price)
FROM receipts
WHERE store = 'Sears';

-- The average number of items purchased on a trip to JC Penny
SELECT ROUND(AVG(number_of_items), 3)
FROM receipts
WHERE store = 'JC Penny';

-- The average number of items purchased at each store
SELECT store, ROUND(AVG(number_of_items), 2)
FROM receipts
GROUP BY store;

-- The maximum amount spent on any item
SELECT item, number_of_items * price AS cost
FROM receipts
ORDER BY number_of_items * price
DESC LIMIT 1;
