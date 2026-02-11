-- Row Count Validation:
-- Business Question: How many total records exist in the orders table to confirm successful data loading?

SELECT COUNT(*)
FROM orders;


-- Missing Value Check:
-- Business Question: Are there any orders with missing order_id, user_id, or total_amount values?

SELECT *
FROM orders
WHERE order_id IS NULL 
   OR user_id IS NULL 
   OR total_amount IS NULL;


-- Duplicate Check:
-- Business Question: Are there any duplicate order_id values in the orders table?

SELECT order_id, COUNT(order_id)
FROM orders
GROUP BY order_id
HAVING COUNT(order_id) > 1;


-- Invalid Quantity Check:
-- Business Question: Are there any order items with zero or negative quantity values?

SELECT *
FROM order_items
WHERE quantity <= 0;


-- Invalid Price Check:
-- Business Question: Are there any order items with zero or negative price or total values?

SELECT *
FROM order_items
WHERE item_price <= 0 
   OR item_total <= 0;


-- Referential Integrity Check:
-- Business Question: Are there any order_items records that do not have a matching order in the orders table?

SELECT order_items.order_id 
FROM order_items
LEFT JOIN orders 
    ON order_items.order_id = orders.order_id
WHERE orders.order_id IS NULL;
