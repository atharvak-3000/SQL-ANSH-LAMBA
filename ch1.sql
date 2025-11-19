-- DDL Commands - to define structure
-- 1.Create
CREATE database sales;
USE sales;
CREATE TABLE stores
(
	store_id INT,
    store_name VARCHAR(200)
);

-- INSERT not a ddl
INSERT INTO stores 
VALUES 
(1,"VISHAl mega mart"),
(2,"abc");

-- Adding some contraints
CREATE TABLE stores_new
(
	store_id INT UNIQUE,
    store_name VARCHAR(200) NOT NULL
);


-- 2.alter - used to modify table structure not data
ALTER TABLE stores_new
ADD COLUMN store_city varchar(200);
-- drop rename 
ALTER TABLE stores_new
RENAME COLUMN store_city TO  store_location;
-- 3.drop - drops complete table the structure as well
DROP TABLE stores_new;
-- 4.truncate - just empties the table preserving the structure
TRUNCATE TABLE stores;


