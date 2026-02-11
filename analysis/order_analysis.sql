-- Average Order Value (AOV):
-- Business Question: What is the average revenue generated per completed order?

SELECT 
    SUM(total_amount) / COUNT(order_id) AS average_order_value
FROM orders
WHERE order_status = 'completed';


-- Monthly Order Volume:
-- Business Question: How many orders are placed each month to analyze sales trends and seasonality?

SELECT 
    DATE_TRUNC('month', order_date) AS month,
    COUNT(order_id) AS total_orders
FROM orders
WHERE order_status = 'completed'
GROUP BY month
ORDER BY month;
