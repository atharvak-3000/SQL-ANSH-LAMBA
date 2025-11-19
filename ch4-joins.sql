-- JOINS
-- CREATE TABLE orders
-- (
-- 	o_id INT,
--     cust_id INT,
--     price INT
-- );

-- INSERT INTO orders
-- VALUES
-- (1,101,1000),
-- (2,201,1100),
-- (3,501,1200);

-- CREATE TABLE customers
-- (
-- 	id INT,
--     name VARCHAR(10),
--     email VARCHAR(20)
-- );

-- INSERT INTO customers
-- VALUES
-- (101,'love','email1'),
-- (201,'ansh','email2'),
-- (301,'lamba','email3');


-- JOINS start here
-- INNER JOIN(by default if we just mention join)
SELECT
	*
FROM
	orders o
INNER JOIN
	customers c
    ON
	o.cust_id = c.id;

-- LEFT JOIN
SELECT 
	*
FROM
	orders o
LEFT JOIN
	customers c
    ON
    o.cust_id = c.id;
    
-- RIGHT JOIN
SELECT 
	*
FROM
	orders o
RIGHT JOIN
	customers c
    ON
    o.cust_id = c.id;

-- FULL JOIN(not supported here but may be in other servers)

-- SELECT 
-- 	*
-- FROM
-- 	orders o
-- FULL JOIN
-- 	customers c
--     ON
--     o.cust_id = c.id;

-- instead we can use union here of left and right join
-- LEFT JOIN
SELECT 
	*
FROM
	orders o
LEFT JOIN
	customers c
    ON
    o.cust_id = c.id
UNION
-- RIGHT JOIN
SELECT 
	*
FROM
	orders o
RIGHT JOIN
	customers c
    ON
    o.cust_id = c.id;