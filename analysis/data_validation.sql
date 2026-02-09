-- Row Count Validation:
-- This query counts total number of records in the orders table to verify data was loaded correctly.

SELECT COUNT(*)
FROM orders;

-- Missing Value Check:
-- This query identifies orders with missing order_id, user_id,or total_amount to ensure data completeness.

SELECT *
FROM orders
WHERE order_id IS NULL OR user_id IS NULL OR total_amount IS NULL;


-- Duplicate Check:
-- This query checks for duplicate order_id values by grouping orders and identifying any IDs that appear more than once.

SELECT order_id, COUNT(order_id)
FROM orders
GROUP BY order_id
HAVING COUNT(order_id) > 1;

-- Invalid Quantity Check:
-- This query returns order items where quantity is zero or negative, which indicates invalid sales because products cannot be sold in zero or negative amounts.

SELECT *
FROM order_items
WHERE quantity <= 0;


-- Invalid Price Check:
-- This query identifies order items with zero or negative price or total amount,which can lead to incorrect revenue calculations and indicate data quality issues.

SELECT * FROM order_items WHERE item_price <= 0 OR item_total <= 0;


-- Referential Integrity Check:
-- This query finds order items whose order_id does not exist in the orders table, indicating broken relationships or invalid transactional data.

SELECT order_items.order_id 
FROM order_items
LEFT JOIN orders ON order_items.order_id = orders.order_id
WHERE orders.order_id IS NULL;





