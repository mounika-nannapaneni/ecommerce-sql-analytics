# Dataset Overview

This folder contains the raw data used for the E-commerce SQL Analytics project.  
CSV files are **not uploaded** to keep the repository clean, but the structure and columns are documented here.

There are 6 CSV files:

| File Name         | Columns                                         | Data Types                  | Description |
|------------------|-------------------------------------------------|----------------------------|------------|
| events.csv        | event_id, user_id, product_id, event_type, event_timestamp | text, text, text, text, timestamp | User interactions like clicks, views, purchases |
| order_items.csv   | order_item_id, order_id, product_id, user_id, quantity, item_price, item_total | int, text, text, text, int, float, float | Details of products in each order |
| orders.csv        | order_id, user_id, order_date, order_status, total_amount | text, text, date, text, float | Summary of all orders |
| products.csv      | product_id, product_name, category, brand, price, rating | text, text, text, text, float, float | Product catalog information |
| reviews.csv       | review_id, order_id, product_id, user_id, rating, review_text, review_date | text, text, text, text, float, text, date | Customer reviews |
| users.csv         | user_id, name, email, gender, city, signup_date | text, text, text, text, text, date | User information |

