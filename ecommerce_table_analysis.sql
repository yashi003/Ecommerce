select * from customer;
select * from order_items;
select * from orders;
select * from products;

select sum(amount) as total_revenue from payments;

-- revenue by product
select p.product_name , sum(oi.quantity * p.price) as revenue
from order_items oi
join products p on oi.product_id = p.product_id
join orders o on oi.order_id = o.order_id
where o.order_status = "Delivered"
group by p.product_name
order by revenue desc;


-- Top Customers by Spend
SELECT c.name,
       SUM(p.amount) AS total_spent
FROM customer c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- Best Selling Products
SELECT p.product_name,
       SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- Cancelled Orders Count
select count(*) as cancelled
from orders 
where order_status = "Cancelled";

USE yashishop;
SHOW TABLES;

-- percentage of orders are delivered
SELECT
    ROUND(
        100.0 * SUM(
            CASE WHEN order_status = 'Delivered'
                 THEN 1 ELSE 0 END
        ) / COUNT(*), 2
    ) AS delivered_percentage
FROM orders;

-- One dashboard summary query (query to retrieve key business KPIs in a single result row)
SELECT
    (SELECT COUNT(*) FROM customer) AS total_customers,

    (SELECT COUNT(*) FROM products) AS total_products,

    (SELECT COUNT(*) FROM orders) AS total_orders,

    (SELECT COUNT(*)
     FROM orders
     WHERE order_status = 'Delivered') AS delivered_orders,

    (SELECT COUNT(*)
     FROM orders
     WHERE order_status = 'Cancelled') AS cancelled_orders,

    (SELECT COUNT(*)
     FROM orders
     WHERE order_status = 'Pending') AS pending_orders,

    (SELECT COALESCE(SUM(amount), 0)
     FROM payments) AS recorded_payments,

    (SELECT COALESCE(SUM(oi.quantity * p.price), 0)
     FROM order_items oi
     JOIN products p ON oi.product_id = p.product_id
     JOIN orders o ON oi.order_id = o.order_id
     WHERE o.order_status = 'Delivered') AS delivered_sales_value;