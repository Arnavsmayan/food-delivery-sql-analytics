USE food_delivery;

/* 1. Total customers, restaurants, orders */
SELECT COUNT(*) AS customers FROM Customers;
SELECT COUNT(*) AS restaurants FROM Restaurants;
SELECT COUNT(*) AS total_orders FROM Orders;

/* 2. Top 10 customers by spend */
WITH customer_spend AS (
  SELECT c.customer_id, c.name, SUM(o.total_amount) AS spend
  FROM Customers c
  JOIN Orders o ON c.customer_id = o.customer_id
  GROUP BY c.customer_id, c.name
)
SELECT * FROM customer_spend ORDER BY spend DESC LIMIT 10;

/* 3. Revenue by cuisine */
SELECT r.cuisine, SUM(o.total_amount) AS revenue
FROM Orders o
JOIN Restaurants r ON o.restaurant_id = r.restaurant_id
GROUP BY r.cuisine
ORDER BY revenue DESC;

/* 4. Monthly order trends */
WITH monthly AS (
  SELECT DATE_FORMAT(order_date, "%Y-%m") AS month, COUNT(*) AS orders, SUM(total_amount) AS revenue
  FROM Orders
  GROUP BY month
)
SELECT * FROM monthly ORDER BY month;

/* 5. Repeat vs one-time customers */
WITH order_counts AS (
  SELECT customer_id, COUNT(order_id) AS orders
  FROM Orders
  GROUP BY customer_id
)
SELECT SUM(CASE WHEN orders = 1 THEN 1 ELSE 0 END) AS one_time,
       SUM(CASE WHEN orders > 1 THEN 1 ELSE 0 END) AS repeaters
FROM order_counts;

/* 6. Cohort analysis by signup month */
WITH first_order AS (
  SELECT customer_id, MIN(order_date) AS first_order_date
  FROM Orders
  GROUP BY customer_id
),
cohorts AS (
  SELECT f.customer_id,
         DATE_FORMAT(f.first_order_date, "%Y-%m") AS cohort,
         DATE_FORMAT(o.order_date, "%Y-%m") AS active_month
  FROM first_order f
  JOIN Orders o ON f.customer_id = o.customer_id
)
SELECT cohort, active_month, COUNT(DISTINCT customer_id) AS active_customers
FROM cohorts
GROUP BY cohort, active_month
ORDER BY cohort, active_month;

/* 7. Top 5 restaurants by revenue per city */
WITH rest_rev AS (
  SELECT r.restaurant_id, r.name, r.city, SUM(o.total_amount) AS revenue
  FROM Orders o
  JOIN Restaurants r ON o.restaurant_id = r.restaurant_id
  GROUP BY r.restaurant_id, r.name, r.city
)
SELECT * FROM (
  SELECT *, RANK() OVER (PARTITION BY city ORDER BY revenue DESC) AS rank_in_city
  FROM rest_rev
) t
WHERE rank_in_city <= 5
ORDER BY city, rank_in_city;

/* 8. Average spend per customer per city */
SELECT c.city, ROUND(AVG(o.total_amount),2) AS avg_order_value
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.city
ORDER BY avg_order_value DESC;

/* 9. Most popular dishes (by count of orders) */
SELECT m.item_name, COUNT(*) AS times_ordered
FROM Order_Items oi
JOIN Menu m ON oi.menu_id = m.menu_id
GROUP BY m.item_name
ORDER BY times_ordered DESC
LIMIT 10;

/* 10. Customer lifetime revenue distribution using window function */
WITH cust_total AS (
  SELECT customer_id, SUM(total_amount) AS total_spent
  FROM Orders
  GROUP BY customer_id
)
SELECT customer_id, total_spent,
       NTILE(4) OVER (ORDER BY total_spent DESC) AS quartile
FROM cust_total
ORDER BY total_spent DESC;
