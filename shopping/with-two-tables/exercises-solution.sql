-- All the attributes from all the receipts
SELECT *
FROM receipts, stores
WHERE receipts.store_id = stores.id;

-- The store and item names from all the receipts
SELECT stores.name, receipts.item
FROM receipts
INNER JOIN stores
ON receipts.store_id = stores.id;

-- All the attributes from all purchases made at Toys R Us
SELECT *
FROM receipts
INNER JOIN stores
ON receipts.store_id = stores.id
WHERE stores.name = 'Toys R Us';

-- The item name of all the purchases made at Borders.
SELECT item
FROM receipts
INNER JOIN stores
ON receipts.store_id = stores.id
WHERE stores.name = 'Borders';

-- The names of all the stores that we shopped at (no duplicates)
-- SELECT DISTINCT store FROM receipts;
SELECT name
FROM stores
ORDER BY name;

-- The total number of items purchased
SELECT SUM(number_of_items)
FROM receipts;

-- The total number of items purchased at Sears
SELECT SUM(number_of_items)
FROM receipts
INNER JOIN stores
ON receipts.store_id = stores.id
WHERE stores.name = 'Sears';

-- The store name and the total number of items purchased for each store
SELECT stores.name, SUM(number_of_items)
FROM receipts
INNER JOIN stores
ON receipts.store_id = stores.id
GROUP BY stores.name;

-- The total amount of money spent at Sears
-- Note: Price is the price of a single item, not the total
-- cost of, say, 2 or 3 shirts
SELECT SUM(number_of_items * price) AS Spent
FROM receipts
INNER JOIN stores
ON receipts.store_id = stores.id
WHERE stores.name = 'Sears';

-- The average number of items purchased on a trip to JC Penny
SELECT ROUND(AVG(number_of_items), 3)
FROM receipts INNER JOIN stores ON receipts.store_id = stores.id
WHERE stores.name = 'JC Penny';

-- The average number of items purchased at each store
SELECT stores.name, ROUND(AVG(number_of_items), 2)
FROM receipts INNER JOIN stores ON receipts.store_id = stores.id
GROUP BY stores.name;

-- The maximum amount spent on any item
SELECT item, number_of_items * price AS Spent
FROM receipts INNER JOIN stores ON receipts.store_id = stores.id
ORDER BY Spent
DESC LIMIT 1;

SELECT item, number_of_items * price AS Spent
FROM receipts
ORDER BY Spent
DESC LIMIT 1;
