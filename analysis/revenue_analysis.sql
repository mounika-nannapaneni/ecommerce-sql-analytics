
-- This query calculates the total revenue generated 
-- by summing the product of quantity and item price across all order items.

SELECT 
    SUM(quantity * item_price) AS total_revenue
FROM order_items;
