-- Calculate average order value (AOV) by dividing total completed order revenue by total number of completed orders
SELECT 
    SUM(total_amount) / COUNT(order_id) AS average_order_value
FROM orders
WHERE order_status = 'completed';


-- Calculate total number of orders per month to analyze monthly sales trends and seasonality
select date_trunc('month', order_date) As month, count(order_id) 
from orders 
group by month;
