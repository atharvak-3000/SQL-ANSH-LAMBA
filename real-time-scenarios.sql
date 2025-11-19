-- REAL TIME 

-- 1) FINDING THE NTH VALUE
SELECT * FROM dim_product;

SELECT * 
FROM
(
SELECT 
	*,
    DENSE_RANK() OVER(PARTITION BY category ORDER BY unit_price DESC) AS RNK
FROM
	dim_product
) AS SUBQUERY
WHERE RNK = 1;

-- 2) REMOVING DUPLICATES
SELECT * FROM customers;
SELECT 
	subquery.*
FROM
(
SELECT
	*,
    ROW_NUMBER() OVER(partition by id order by id) AS DEDUP
FROM
	customers
) AS subquery
WHERE
	DEDUP = 1;
    
-- 3) LAG AND LEAD
CREATE TABLE weather
(
	ID INT,
    TEMP float
);
INSERT INTO weather
VALUES
(1,10),
(2,12),
(3,9),
(4,12),
(5,20),
(6,15),
(7,12);

SELECT * FROM weather;

-- TEMP PREVIOUS DAY
SELECT
	*,
    LAG(temp,1) OVER(ORDER BY ID ASC) PRE_TEMP,
    LEAD(temp,1) OVER(ORDER BY ID ASC) AS NEXT_TEMP
FROM 
	weather;
    