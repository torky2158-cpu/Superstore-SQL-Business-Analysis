Superstore Business Analysis
Project Overview

This project analyzes the Superstore retail dataset to evaluate business performance across three core dimensions:

Customer & Regional Performance

Product Profitability & Strategic Classification

Orders & Shipping Operations

The original dataset was downloaded from Kaggle in CSV format and restructured into a normalized relational database using SQL Server.

Data Source

Source: Kaggle – Superstore Dataset

Original Format: CSV

Environment: SQL Server

Tool: SQL Server Management Studio (SSMS)

The dataset was manually transformed from a flat CSV file into structured relational tables for analytical purposes.

Database Design

The original dataset was divided into four normalized tables:

super.customer

super.products

super.orders

super.order_items

Primary and foreign keys were defined to preserve relational integrity and eliminate redundancy.

Data Cleaning

Key cleaning steps included:

Removing extra spaces (TRIM)

Validating categorical consistency

Reviewing duplicates

Checking null values

Verifying table relationships

This ensured accurate and reliable analytical output.

1️⃣ Customer & Regional Performance Analysis
Segment Analysis

Customer segments were evaluated using:

Total Sales

Total Profit

Profit Margin

Average Revenue per Customer

Average Order Value

Key Findings

Consumer

Highest revenue contribution

Lowest margin (11.55%)
Acts as the primary revenue engine but operates under tighter margins.

Corporate

Balanced revenue and profitability

Margin: 13.08%
Represents a stable and scalable growth opportunity.

Home Office

Highest margin (14.03%)

Smaller revenue scale
Strong pricing efficiency despite lower volume.

Regional Performance

West Region
Primary revenue and profit driver with strong market penetration and solid margin performance.

South Region
Lower margin performance (7.22%) suggests pricing inefficiencies or higher cost pressure.

East Region
Highest profitability efficiency (13.24% margin) despite smaller scale.
Represents expansion opportunity.

Central Region
Negative margin (-6.66%) and extremely low customer base.
Requires structural strategic review.

2️⃣ Product Performance & Profitability Analysis
Category-Level Performance

Technology
Primary profit engine driven by Phones, Copiers, and Accessories.
Represents the strongest profitability contributor.

High-Margin Sub-Categories

Labels

Paper

Envelopes

Copiers

These segments provide strong profit per revenue dollar and scalable opportunity.

Loss-Making Segments

Tables

Bookcases

Supplies

These categories require pricing review, cost restructuring, or potential discontinuation.

Strategic Product Classification

Products were classified based on Volume vs Profit Margin:

Star → High Volume & High Margin

Need Optimization → High Volume & Low Margin

Premium → Low Volume & High Margin

Risk → Low Volume & Low Margin

Revenue concentration analysis revealed dependency on a limited number of high-value Technology products.

3️⃣ Orders & Shipping Operations Analysis
Order Growth

Orders increased by approximately 74% between 2014 and 2017, indicating strong business expansion.

Shipping Efficiency

Majority of deliveries occur within 3–4 days

Maximum observed delay: 7 days

Same-day shipping capability exists

Standard Class accounts for the majority of shipments and therefore carries the highest operational impact.

Seasonal Workload Pressure

Monthly classification revealed recurring Q4 pressure (September–December).

November 2017 recorded the highest monthly workload, indicating the need for operational scaling during peak seasons.

Overall Business Interpretation

The company demonstrates strong revenue growth and structured shipping operations.

Profitability is heavily dependent on Technology products, while Consumer drives overall revenue volume.

Operational risk exists in:

Loss-making product segments

Thin-margin regions

Seasonal workload concentration

Strategic optimization across pricing, product mix, and regional expansion can significantly enhance overall profitability.

Project Workflow

CSV → Database Design → Data Cleaning → SQL Analysis → Business Insights
