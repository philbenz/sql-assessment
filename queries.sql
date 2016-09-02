\c groceries;
-- Write SQL queries that will create a table that stores your grocery list. There are a few ways to do it, so pick one and defend it.

--this is in the schema.sql file

-- Write the SQL queries that insert the data listed above.

INSERT INTO grocery_list (item, quantity, unit_of_measure)
VALUES
('milk', 2, 'gallons'),
('eggs', 1, 'dozen'),
('butter', 12, 'sticks'),
('flour', 1, 'pound'),
('sour cream', 1, 'dollop'),
('apples', 2, 'bushels'),
('sugar', 2, 'pounds'),
('oj', 3, 'gallons');

-- Write the SQL queries that find items on your list that have the same units (i.e., pounds, dollops, etc.). HINT - Consider what schema would make this easiest to do!

SELECT * FROM grocery_list WHERE unit_of_measure LIKE 'pound%';

SELECT * FROM grocery_list WHERE unit_of_measure LIKE 'gallon%';

-- Write the SQL queries to capitalize all of the items on your grocery list (i.e., Flour, Sugar, etc.)

SELECT initcap(item) AS Item, quantity, initcap(unit_of_measure) AS UOM from grocery_list;

-- You decide that you are watching your figure. Remove butter and sour cream from your list.

DELETE FROM grocery_list where item='butter' OR item='sour cream';
