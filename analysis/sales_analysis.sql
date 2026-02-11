-- Top Selling Products:
-- Business Question: Which products generate the highest total quantity sold and revenue?

SELECT 
    products.product_name,
    SUM(order_items.quantity) AS total_quantity_sold,
    SUM(order_items.item_total) AS total_revenue
FROM order_items
INNER JOIN products
    ON order_items.product_id = products.product_id
GROUP BY products.product_name
ORDER BY total_revenue DESC;


-- Category Performance:
-- Business Question: How does revenue and quantity sold vary across product categories?

SELECT 
    products.category,
    SUM(order_items.item_total) AS total_revenue,
    SUM(order_items.quantity) AS total_quantity_sold
FROM order_items
INNER JOIN products
    ON products.product_id = order_items.product_id
GROUP BY products.category
ORDER BY total_revenue DESC;
