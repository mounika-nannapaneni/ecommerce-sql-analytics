
-- This query calculates the total revenue generated 
-- by summing the product of quantity and item price across all order items.

SELECT 
    SUM(quantity * item_price) AS total_revenue
FROM order_items;

-- Monthly Revenue Trend Analysis:
-- This query calculates total revenue generated each month by summing the total_amount of all completed orders, grouping them by month using DATE_TRUNC to analyze sales trends over time.

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(total_amount) AS monthly_revenue
FROM orders
WHERE order_status = 'completed'
GROUP BY month
ORDER BY month;
