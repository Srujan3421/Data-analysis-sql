# Data-analysis-sql
 SELECT, WHERE, ORDER BY, GROUP BY
 Used SELECT statements to extract relevant columns from the pizza_sales dataset.
 Applied WHERE conditions to filter data by date ranges, pizza category, and size.
 Ordered results using ORDER BY to rank pizzas by revenue or quantity sold.
 Grouped data using GROUP BY to calculate metrics like total revenue by category or date.

Subqueries
Used subqueries in the SELECT clause to calculate:

Percentage revenue of each category (SUM(total_price) * 100 / (SELECT SUM(...)))

Identified top-selling pizza with subqueries inside WHERE or HAVING.

 Aggregate Functions (SUM, AVG, COUNT)
 Calculated:

SUM(total_price) for total revenue

AVG(unit_price) to understand average pizza cost

COUNT(order_id) to find total number of orders

 Views
Created reusable views like:

vw_PizzaCategoryRevenue: total and percentage revenue by pizza category

vw_DailySales: total sales by each day

vw_TopSellers: top 5 pizzas by quantity sold

Optimizing with Indexes
Created NONCLUSTERED INDEX on high-usage columns like:

pizza_category

order_date to improve performance for queries using GROUP BY or WHERE filters.
