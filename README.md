# E-commerce SQL Analytics Project

## Project Overview
This project analyzes a multi-table e-commerce dataset using PostgreSQL to uncover key insights into revenue performance, customer behavior, and product trends.

The analysis simulates real-world business analytics workflows including data validation, revenue analysis, customer segmentation, and product performance evaluation.

Key findings from the analysis reveal revenue concentration among top customers, strong contribution from repeat buyers, and category-level sales variation that can inform strategic decision-making.

---

## Project Objectives
- Analyze overall revenue performance and growth trends
- Identify high-value customers and purchasing behavior patterns
- Evaluate product and category-level sales performance
- Measure revenue concentration across customer segments
- Perform structured data validation to ensure data integrity
- Simulate real-world business analytics using SQL
  
---

## Tools & Technologies
- PostgreSQL
- pgAdmin
- SQL
- Kaggle E-commerce Dataset
- GitHub

---

## Dataset Overview
The dataset consists of six interconnected tables representing a modern e-commerce platform:

- **users** – customer demographics and signup details  
- **products** – product catalog and pricing  
- **orders** – order-level transactions  
- **order_items** – product-level order details  
- **reviews** – customer ratings and feedback  
- **events** – user interaction events (views, cart, wishlist)

All tables are connected using primary and foreign key relationships to maintain referential integrity.

> For detailed column-level documentation, refer to dataset/README.md

---

## Business Questions & Analytical Scope

- This project answers key strategic business questions across revenue, customers, and product performance.

> For the complete list of documented business questions, refer to: 

## Key Insights
- Total revenue from completed orders:
- Monthly revenue shows consistent growth with seasonal spikes in Q4
- Top 10% of customers generate approximately XX% of total revenue
- Repeat customers contribute XX% of total revenue
- Average Order Value (AOV): $X
- Top-performing category: Category_Name
- Revenue is concentrated among a small segment of high-value customers

---

## Advanced Analysis Implemented
- Revenue concentration (Pareto analysis – Top 10% customers)
- Customer classification (one-time vs repeat buyers)
- Monthly revenue and order trend analysis
- Data quality validation checks

---
## Project Structure

ecommerce-sql-analytics/
│
├── dataset/
├── schema/
├── analysis/
│   ├── data_validation.sql
│   ├── revenue_analysis.sql
│   ├── order_analysis.sql
│   ├── customer_analysis.sql
│   └── sales_analysis.sql
│
└── README.md

---

## Project Status
This project is currently **in progress**.  
Additional advanced customer and behavioral analytics will be added.
