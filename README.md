# YashiShop – E-Commerce Sales and Customer Data Analysis Using SQL

## 📌 Project Overview

YashiShop is an e-commerce data analysis project developed using MySQL to analyze customer behavior, product performance, sales revenue, order status, and payment transactions. The project uses SQL queries to extract meaningful business insights and support data-driven decision-making.

## 🎯 Objectives

- Analyze total revenue and delivered sales value.
- Identify top customers based on spending.
- Find the best-selling products.
- Analyze cancelled, pending, and delivered orders.
- Calculate the percentage of delivered orders.
- Generate key performance indicators (KPIs) for business reporting.

## 🛠️ Technologies Used

- **Database:** MySQL
- **Language:** SQL
- **Tool:** MySQL Workbench
- **Concepts:** Joins, Aggregate Functions, Subqueries, GROUP BY, ORDER BY, CASE WHEN, and ROUND()

## 🗄️ Database Structure

The project uses a database named `yashishop` with five tables:

| Table | Description |
|---|---|
| `customer` | Stores customer details such as name, email, city, and signup date. |
| `products` | Contains product names, categories, prices, and stock quantities. |
| `orders` | Stores customer orders, order dates, and order statuses. |
| `order_items` | Contains products purchased and their quantities for each order. |
| `payments` | Stores payment methods, amounts, and payment dates. |

## 📊 Key Analysis Performed

### 1. Total Revenue
Calculates the total amount recorded in the payments table.

### 2. Revenue by Product
Calculates product sales value using quantity multiplied by product price for delivered orders.

### 3. Top Customers by Spending
Identifies customers with the highest recorded payment amounts.

### 4. Best-Selling Products
Ranks products according to the total quantity sold.

### 5. Cancelled Orders Analysis
Counts orders that have been cancelled.

### 6. Delivered Orders Percentage
Calculates the percentage of orders successfully delivered using conditional logic and aggregate functions.

### 7. Business KPI Dashboard
Combines important metrics into a single result, including:
- Total customers
- Total products
- Total orders
- Delivered orders
- Cancelled orders
- Pending orders
- Recorded payments
- Delivered sales value

## 🚀 How to Run the Project

1. Install MySQL Server and MySQL Workbench.
2. Open MySQL Workbench and connect to your MySQL server.
3. Create the database using:

   ```sql
   CREATE DATABASE yashishop;
   USE yashishop;
   ```

4. Execute the table creation queries.
5. Insert the customer, product, order, order-item, and payment sample data.
6. Run the SQL analysis queries.
7. Review the results to understand business performance.

**Note:** Execute the table creation and data insertion scripts before running the analysis queries.

## 💡 Key Insights

The project helps identify popular products, high-spending customers, payment preferences, inventory levels, and order fulfilment performance. These insights can help businesses improve inventory planning, understand customer purchasing patterns, and make informed decisions.

## 🔮 Future Improvements

- Create interactive dashboards using Power BI or Tableau.
- Analyze monthly and yearly sales trends.
- Add customer segmentation and repeat-purchase analysis.
- Track inventory changes and product restocking requirements.
- Improve data quality checks between orders, sales, and payments.

Project: E-Commerce Sales and Customer Data Analysis Using SQL

## 📄 License

This project is intended for educational and portfolio purposes.
