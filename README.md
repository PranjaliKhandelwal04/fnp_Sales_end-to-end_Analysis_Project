E-Commerce Sales Analysis — Python | SQL | Power BI

This project presents an end-to-end analytics pipeline built using Python, SQL, and Power BI to analyze an e-commerce sales dataset and derive actionable business insights.
The analysis focuses on understanding sales performance across products, categories, customers, and cities.

📁 Dataset Overview:

The dataset fnp_cleaned.csv contains:

1,000 rows

27 columns

Includes:

Order details

Customer & product identifiers

Quantity & pricing

Categories

Total sales amount

Geographic details (cities)

This cleaned dataset was used across Python, SQL, and Power BI for unified analysis. 


🛠️ Tools & Technologies Used:
Python (Pandas)

Data cleaning

Data transformation

Feature engineering

Preliminary KPI extraction

SQL (MySQL):

Business KPI calculation

Revenue analysis

Top product/category identification

City-wise performance analysis

Power BI:

Dashboard creation

Interactive visual analytics

DAX-powered KPIs

Trend analysis

Google Colab:

Exploratory Data Analysis

Data Cleaning Pipeline

🧹 Data Preparation (Python)

Key cleaning steps performed: 

fnp_Report

Removed duplicates & irrelevant columns

Standardized column names

Converted Order_Date to datetime

Converted Quantity, UnitPrice, TotalAmount to numeric types

Filled missing values

Removed invalid entries (zero/negative price or quantity)

Engineered new fields:

TotalAmount = Quantity × UnitPrice

Year, Month, Month_Name, Weekday_Name

The cleaned dataset was exported for SQL and Power BI analysis.

📈 Key Insights (Python + SQL + Power BI):

Based on calculations performed in SQL and additional visual insights from Power BI: 

✔ Total Revenue Generated

Derived from SQL using SUM(TotalAmount).

✔ Total Orders & Customers

Total Orders: N

Total Customers: M

✔ Average Order Value (AOV)

Computed as:
TotalRevenue ÷ TotalOrders

✔ Top 10 Products by Revenue

Identified the highest revenue and highest-selling SKUs.

✔ Category-wise Sales

Highlighted the best-performing and weaker product categories.

✔ Top Cities by Revenue

Revealed high-demand geographic clusters.

✔ Power BI Visual Insights

Monthly sales trend (seasonality observed)

Category performance chart

Top 10 products visual

City-wise revenue map

Interactive slicers for Category, City, Payment Mode, Year

💡 Business Recommendations:

Derived from data-driven insights: 

1️⃣ Focus on High-Revenue Categories

Increase promotions and inventory

Create bundle offers for better upselling

2️⃣ Improve Low-Selling Categories

Introduce targeted discounts

Enhance product visibility

3️⃣ Strengthen Marketing in Top Cities

Dedicate more budget to high-performing regions

Run localized promotional campaigns

4️⃣ Encourage Repeat Purchases

Introduce loyalty rewards

Use personalized recommendations

5️⃣ Monitor and Enhance AOV

Upsell add-on products

Offer free delivery thresholds

🏁 Conclusion:

This project successfully demonstrates a complete analytics workflow using Python, SQL, and Power BI: 

Python handled data cleaning, preparation, and initial KPIs

SQL extracted core business metrics from the cleaned dataset

Power BI transformed the analysis into an interactive, insight-rich dashboard

This integrated pipeline provides strong insight into sales performance and helps guide strategic decision-making.
