-- Calculate average order value (AOV) by dividing total completed order revenue by total number of completed orders
SELECT 
    SUM(total_amount) / COUNT(order_id) AS average_order_value
FROM orders
WHERE order_status = 'completed';
