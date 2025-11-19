-- VIEWS

CREATE VIEW DEDUP_VIEW AS
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
    
    
SELECT * FROM DEDUP_VIEW;