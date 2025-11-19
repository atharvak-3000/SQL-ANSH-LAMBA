-- WINDOW FUNCTIONS

SELECT * FROM dim_product;

SELECT
	AVG(unit_price)
FROM
	dim_product;

-- 1)    
SELECT
	*,
    SUM(unit_price) OVER (ORDER BY launch_date)
FROM
	dim_product;
    
-- 2) FRAMES
-- BY DEFAULT
SELECT
	*,
    SUM(unit_price) OVER (ORDER BY launch_date ROWS BETWEEN UNBOUNDED preceding AND current row)
FROM
	dim_product;

-- MODIFYING IT
SELECT
	*,
    SUM(unit_price)
    OVER (ORDER BY launch_date ROWS between UNBOUNDED preceding AND unbounded following) AS TOTAL
FROM
	dim_product;

-- RANKING
SELECT
	 unit_price,
     row_number() OVER(ORDER BY unit_price) AS 'ROW_NUMBER',
     RANK() OVER(ORDER BY unit_price) AS 'RANK',
     DENSE_RANK() OVER(ORDER BY unit_price) AS 'DENSE RANK'
FROM
	dim_product;
     
