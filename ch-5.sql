-- DML COMMANDS - used to manipulating database

-- INSERT (done)

-- UPDATE COMMAND
UPDATE customers
SET name = 'sam'
WHERE id = 101;

select * from customers;

-- DELETE
DELETE FROM customers
WHERE id = 101;
