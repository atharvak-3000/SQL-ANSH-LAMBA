-- SELECT
SELECT * FROM dim_customer;

-- LIMIT
SELECT 
	customer_id,
    email 
FROM 
	dim_customer
LIMIT 5;

-- WHERE CLAUSE - condition
SELECT
	*
FROM
	dim_customer
WHERE
	(gender='F') AND (country = "France") AND (join_date>'2022-01-01');
-- silent errors
SELECT
	*
FROM
	dim_customer
WHERE
	(gender='F') AND ((country = "France") OR (join_date>'2022-01-01'));
    
-- LIKE 
-- 1
SELECT 
	*
FROM
	dim_customer
WHERE
	first_name LIKE 'T%';

-- 2
SELECT 
	*
FROM
	dim_customer
WHERE
	first_name LIKE 'T%y';
-- 3
SELECT 
	*
FROM
	dim_customer
WHERE
	first_name LIKE 'T__f%y';

-- Sorting (ORDER BY)
SELECT 
	*
FROM
	dim_product
ORDER BY
	unit_price DESC;
    
-- ALIAS
SELECT
	product_key,
    product_id,
    product_name AS 'pname',
    category
FROM
	dim_product;
    
-- GROUPING
SELECT * FROM dim_product;

-- average price per category
SELECT
	category,
    AVG(unit_price) AS avg_price,
    sum(unit_price) AS total_price
FROM
	dim_product
GROUP BY
	category;

-- 2
-- fetch only those categories whose avg price is greater than 4000
-- we use where caluse with the columns which are only available in the table
-- here avg price is a calculated column
-- we use HAVING instead
SELECT
	category,
    AVG(unit_price) AS avg_price,
    sum(unit_price) AS total_price
FROM
	dim_product
GROUP BY
	category
HAVING 
	avg_price>500;

  