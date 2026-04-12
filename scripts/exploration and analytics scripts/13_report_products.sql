/*
===============================================================================
Product Report
===============================================================================
Purpose:
    - This report consolidates key product metrics and behaviors.

Highlights:
    1. Gathers essential fields such as product name, category, subcategory, and cost.
    2. Segments products by revenue to identify High-Performers, Mid-Range, or Low-Performers.
    3. Aggregates product-level metrics:
       - total orders
       - total sales
       - total quantity sold
       - total customers (unique)
       - lifespan (in months)
    4. Calculates valuable KPIs:
       - recency (months since last sale)
       - average order revenue (AOR)
       - average monthly revenue
===============================================================================
*/

-- =============================================================================
-- Create Report: gold.report_products
-- =============================================================================
IF OBJECT_ID('gold.report_products', 'V') IS NOT NULL
    DROP VIEW gold.report_products;
GO

CREATE VIEW gold.report_products AS

WITH base_query AS (
/*---------------------------------------------------------------------------
1) Base Query: Retrieves core columns from tables
---------------------------------------------------------------------------*/
SELECT 
    f.order_number,
    f.customer_key,
    f.order_date,
    f.sales_amount,
    f.quantity,
    f.price,
    p.product_name,
    p.category,
    p.subcategory,
    p.cost,
    DATEDIFF(month, p.start_date, GETDATE()) AS lifespan
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
     ON f.product_key = p.product_key
WHERE order_date IS NOT NULL
)

, product_aggregation AS (
/*---------------------------------------------------------------------------
2) Product Aggregations: Summarizes key metrics at the product level
---------------------------------------------------------------------------*/
SELECT
    COUNT(order_number) AS total_orders,
    COUNT(DISTINCT customer_key) AS total_customers,
    lifespan,
    MAX(order_date) AS last_order_date,
    SUM(sales_amount) AS total_sales,
    SUM(quantity) AS total_quantity,
    price,
    product_name,
    category,
    subcategory,
    cost
FROM base_query
GROUP BY
    price,
    product_name,
    category,
    subcategory,
    cost,
    lifespan
)
SELECT
    product_name,
    category,
    subcategory,
    cost,
    price,
    lifespan,
    total_orders,
    total_customers,
    total_sales,
    total_quantity,
    CASE WHEN total_sales >= 100000 THEN 'High-Performer'
         WHEN total_sales >= 50000 THEN 'Mid-Range'
         ELSE 'Low-Performer' END AS performance_segment,
    DATEDIFF(month, last_order_date, GETDATE()) AS recency,
    CASE 
         WHEN total_sales = 0 THEN 0
         ELSE total_orders / total_sales 
    END AS average_order_revenue,
    CASE 
         WHEN lifespan = 0 THEN 0
         ELSE total_orders / lifespan
    END AS average_monthly_revenue
FROM product_aggregation;