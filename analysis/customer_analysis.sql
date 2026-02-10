-- Identify the top 5 customers who generated the highest total revenue based on completed orders to help the business focus on high-value customers for retention and targeted marketing.

SELECT 
    users.user_id,
    users.name,
    SUM(orders.total_amount) AS total_revenue
FROM orders
INNER JOIN users
    ON users.user_id = orders.user_id
WHERE order_status = 'completed'
GROUP BY users.user_id, users.name
ORDER BY total_revenue DESC
LIMIT 5;


