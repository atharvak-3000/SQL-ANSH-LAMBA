-- CONDITONALS

SELECT * FROM dim_product;
-- 1)
SELECT
	*,
    CASE
    WHEN unit_price<=100 THEN 'affordable'
    WHEN unit_price<=200 THEN 'normal'
    ELSE 'expensive'
    END AS price_category
FROM 
	dim_product;

-- 2)
SELECT
	*,
    CASE
    WHEN unit_price<=100 AND category = 'Clothing'  THEN 'affordable'
    WHEN unit_price<=200 AND category = 'Clothing' THEN 'normal'
    WHEN unit_price >200 AND category = 'Clothing' THEN 'expensive'
    ELSE CONCAT('not for this',category)
    END AS price_category
FROM 
	dim_product;

-- 3)
SELECT
	*,
    CASE
    WHEN launch_date < '2021-01-01' THEN 'expired'
    WHEN '2021-01-01' < launch_date AND launch_date < '2023-01-01' THEN 'about to expire'
    ELSE 'Fresh'
    END AS Expiry
FROM 
	dim_product;

-- 4)➡️ Return all products whose 
-- launch_date makes them 'about to expire'
-- AND whose unit_price is below 400
SELECT
	*,
    CASE
    WHEN CAST(launch_date as DATE)<'2023-01-01' AND unit_price<400 THEN 'give discount'
    ELSE 'no discount'
    END AS discount
FROM
	dim_product;