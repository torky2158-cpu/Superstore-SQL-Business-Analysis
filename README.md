Superstore Business Analysis
Project Overview
This project analyzes the Superstore retail dataset to evaluate business performance across three core dimensions:

📦 Customer & Regional Performance
💰 Product Profitability & Strategic Classification
🚚 Orders & Shipping Operations

The original dataset was downloaded from Kaggle in CSV format and restructured into a normalized relational database using SQL Server. The analysis was later extended into an interactive Power BI dashboard to provide executive-level business insights.

Data Source

Source: Kaggle – Superstore Dataset
Original Format: CSV
Database Environment: SQL Server
Visualization Tool: Power BI
SQL Tool: SSMS


Database Design
The original dataset was divided into four normalized tables: super.customer, super.products, super.orders, and super.order_items. Primary and foreign keys were defined to preserve relational integrity and eliminate redundancy.

Data Cleaning
Key cleaning steps included removing extra spaces (TRIM), validating categorical consistency, reviewing duplicates, checking null values, and verifying table relationships.

⚠️ Challenge Encountered: Map Location Ambiguity
During Power BI development, city-level mapping produced incorrect geographic placements globally rather than within the United States.
Solution: A calculated column Full Location (City + ", " + State) was created to provide precise geographic context. ✅

Executive Business Insights 📊
Overall Performance

Total Sales: $2M
Total Profit: $286.8K
Profit Margin: 12.49%
Orders: 5K | Customers: 793
Coverage across 49 States / 522 Cities

The business shows strong revenue generation with moderate but stable profitability.
Growth & Seasonality

Orders grew ~74% between 2014–2017
Peak Month: November 2017 (~$118K)
Q4 consistently represents the highest sales and operational pressure

📌 Revenue growth is strong, but performance is seasonally concentrated.
Product & Profit Structure

Technology is the main profit engine (17.4% margin)
Office Supplies maintains stable profitability (17.04%)
Furniture drives high sales but very low margin (2.54%)

📌 Profitability is highly dependent on Technology, while Furniture requires pricing optimization.
Customer & Segment Insights

Consumer Segment: 50.56% of total revenue (~$1.16M)
Top Customer: Sean Miller (~$25K)

📌 Revenue concentration increases exposure risk if demand shifts.
Regional Performance 🗺️

West leads in revenue and profit
Central underperforms and requires strategic review

📌 Regional imbalance highlights expansion and optimization opportunities.
Operations & Shipping 🚚

Majority of deliveries completed within 3–4 days
Maximum delay observed: 7 days
Standard Class carries the highest shipment volume

📌 Shipping performance is stable, but Q4 requires operational scaling.
Strategic Conclusion 🎯
The company demonstrates strong growth and operational stability. However, profitability concentration in Technology, weak Furniture margins, seasonal dependency, and regional imbalance present clear optimization opportunities.

Project Workflow
CSV → Database Design → Data Cleaning → SQL Analysis → Power BI Dashboard → Business Insights 🎯

Dashboard Pages
🏠 Home | 📊 Overview | 📦 Products Package | 👥 Customers | 🗺️ Regions
