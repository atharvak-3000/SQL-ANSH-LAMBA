-- SUBQUERIES

SELECT * FROM dim_product;
SELECT AVG(unit_price) FROM dim_product;
-- 1)
SELECT
	*
FROM
	dim_product
WHERE
	unit_price > (SELECT AVG(unit_price) FROM dim_product);

-- 2)
SELECT
	*
FROM
(
	SELECT
	*
FROM
	dim_product
WHERE
	unit_price > (SELECT AVG(unit_price) FROM dim_product)
) AS subquery_table 
WHERE
	product_name = 'Figure Method';