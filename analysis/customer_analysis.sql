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


-- Classify customers as one-time or repeat buyers based on number of completed orders to measure customer retention and loyalty
SELECT
    customer_type,
    COUNT(*) AS customer_count
FROM (
    SELECT
        user_id,
        CASE 
            WHEN COUNT(order_id) = 1 THEN 'one_time'
            ELSE 'repeat'
        END AS customer_type
    FROM orders
    WHERE order_status = 'completed'
    GROUP BY user_id
) sub
GROUP BY customer_type;

