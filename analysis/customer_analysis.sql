-- Top 5 Customers by Revenue:
-- Business Question: Who are the top 5 customers generating the highest total revenue from completed orders?
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


-- Customer Classification:
-- Business Question: How many customers are one-time buyers versus repeat buyers based on completed orders?
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

