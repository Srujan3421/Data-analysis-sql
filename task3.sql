select * from pizza_sales
select SUM(total_price) as total_revenue from pizza_sales

select AVG(total_price) as avg_revenue from pizza_sales

select pizza_size , pizza_name from pizza_sales where pizza_size='M' and pizza_name='The Italian Supreme Pizza'

SELECT DATEPART(HOUR, order_time) as order_hours, COUNT(DISTINCT order_id) as total_orders
from pizza_sales
group by DATEPART(HOUR, order_time)
order by DATEPART(HOUR, order_time)

SELECT DATENAME(DW, order_date) AS order_day, COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales
GROUP BY DATENAME(DW, order_date)

SELECT 
  pizza_category, 
  CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
  CAST(SUM(total_price) * 100 / (
      SELECT SUM(total_price) 
      FROM pizza_sales
  ) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_category

CREATE VIEW vw_PizzaCategoryRevenue AS
SELECT 
    pizza_category, 
    CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_revenue,
    CAST(SUM(total_price) * 100.0 / (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS pct
FROM pizza_sales
GROUP BY pizza_category;

SELECT * FROM vw_PizzaCategoryRevenue;

CREATE NONCLUSTERED INDEX idx_category_date
ON pizza_sales (pizza_category, order_date);

