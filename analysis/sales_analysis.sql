-- Top Selling Products Analysis
-- Calculates product-wise total quantity sold and total revenue to identify best performing products

SELECT 
    products.product_name,
    SUM(order_items.quantity) AS total_quantity_sold,
    SUM(order_items.item_total) AS total_revenue
FROM order_items
INNER JOIN products
    ON order_items.product_id = products.product_id
GROUP BY products.product_name
ORDER BY total_revenue DESC;
