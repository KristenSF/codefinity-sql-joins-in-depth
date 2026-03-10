-- list all customers and amounts of their orders 
SELECT c.customer_ID, c.name, o.amount 
FROM customers as c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id;