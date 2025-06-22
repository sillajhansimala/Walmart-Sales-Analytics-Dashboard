# 🛒 Walmart Sales Analysis Project

This project analyzes Walmart e-Commerce sales data to understand customer purchase behavior, revenue trends, and demographic patterns using SQL and Tableau.


## 📦 Dataset Source

- **Original Source**: [Kaggle - e-Commerce (Walmart) Sales Dataset](https://www.kaggle.com/datasets/devarajv88/walmart-sales-dataset/data)
- **Dataset Type**: Customer demographics and purchase transactions
- **Note**: The license is unspecified on Kaggle, marked as "Other". This dataset is used here strictly for **educational purposes** and includes a **lightly cleaned version**: `walmart_sales_clean.csv`.


## 📁 Files in this Repo

| File Name               | Description |
|------------------------|-------------|
| `walmart_sales_clean.csv`  | Lightly cleaned dataset used for analysis |
| `walmart_analysis.sql` | SQL queries to analyze revenue, customer segments, etc. |
| `Walmart_Sales_Analytics_Dashboard.twb` | Tableau workbook showing dashboards and visualizations |
| `Images`            | Screenshots of charts & Dashboard |
| `README.md`            | Project description |


## 🧮 SQL Analysis Highlights

SQL queries were executed in Microsoft SQL Server:

```sql
-- Total Sales
SELECT SUM(CAST(Purchase AS BIGINT)) AS Total_Sales FROM walmartSales1;

-- Sales by Gender
SELECT Gender, SUM(CAST(Purchase AS BIGINT)) AS Sales FROM walmartSales1 GROUP BY Gender;

-- Top Age Groups by Revenue
SELECT TOP 5 Age, SUM(CAST(Purchase AS BIGINT)) AS Total_Spent FROM walmartSales1 GROUP BY Age ORDER BY Total_Spent DESC;

-- More queries included in walmart_analysis.sql

## 📊 Tableau Visualizations

## 📊 Dashboard Highlights
- Total sales overview and gender-based revenue distribution
- Top 5 age groups by purchase amount
- Top-selling product categories
- Revenue by city category and marital status
- Customer behavior by city stay duration
- Heatmap and treemap for advanced insight

> _(You can open the `.twbx` file using Tableau Desktop or Tableau Public.)_(https://public.tableau.com/app/profile/jhansimala.silla/viz/Walmart_Sales_Dashboard_17506140426410/WalmartSalesDashboard?publish=yes)

## 🔍 Key Insights

- Men tend to spend more than women overall  
- Age group 26–35 contributes the highest to revenue  
- Product categories and city types show strong sales variation  
- Customers staying in cities longer tend to spend more  

## 💡 Potential Use Cases

- Personalized marketing strategies  
- Optimized inventory and supply chain planning  
- Targeted customer loyalty programs  
- City-wise product recommendations  

## 📌 Disclaimer

This project is for **educational and portfolio purposes only**.  
The dataset was obtained from **Kaggle** under an unspecified license (**Other**).  
All rights and content belong to their respective owners.
