# Zepto-Sales-and-Product-Analysis
This Zepto Product and sales project show the product distribution and the sales trend of company. I use SQL for data exploration and data cleaning. and dashboard for proper visualization of data ,showing the product distribution and sales of the company.

# Zepto Sales and Product Analysis

A comprehensive data analysis project that explores Zepto's product inventory and sales metrics through SQL queries and interactive visualization dashboards.

## 📋 Project Overview

This project performs end-to-end data analysis on Zepto's product catalog, including data exploration, cleaning, and business-oriented analysis. The insights are visualized in an interactive Power BI dashboard for easy interpretation and decision-making.

### Key Features
- **Data Exploration & Cleaning**: Comprehensive SQL queries to understand data quality and structure
- **Business Intelligence Queries**: 8+ curated SQL queries answering critical business questions
- **Interactive Dashboard**: Power BI visualization of key metrics and insights
- **Revenue Analysis**: Category-wise revenue breakdown and pricing optimization
- **Inventory Insights**: Stock status, weight categorization, and value analysis

## 🔍 Analysis Components

### 1. Data Exploration
- **Record Count**: Total inventory items in database
- **Schema Validation**: Check column structure and data types
- **Null Value Analysis**: Identify missing or incomplete data
- **Data Quality Assessment**: Detect duplicate products and invalid records

### 2. Data Cleaning
Implemented data quality improvements:
- Removed products with zero MRP or selling price
- Standardized currency values (converted paise to rupees)
- Validated product records for consistency

### 3. Business Insights Queries

The project includes 8 key analytical queries:

| Query | Purpose |
|-------|---------|
| **Q1: Top 10 Best-Value Products** | Identify products with highest discount percentages |
| **Q2: High MRP Out-of-Stock Items** | Find premium products (₹300+) currently unavailable |
| **Q3: Category Revenue Analysis** | Calculate estimated revenue per product category |
| **Q4: Premium Low-Discount Products** | Find high-value items (₹500+) with minimal discounts |
| **Q5: Top Discount Categories** | Identify categories offering highest average discounts |
| **Q6: Price-Per-Gram Analysis** | Determine value for money for products above 100g |
| **Q7: Weight Categorization** | Classify products as Low, Medium, or Bulk |
| **Q8: Inventory Weight by Category** | Calculate total weight of stock per category |

## 📊 Dashboard Insights

The Power BI dashboard visualizes:
- **Revenue Metrics**: Total revenue by category and product performance
- **Stock Status**: In-stock vs. out-of-stock product distribution
- **Pricing Analysis**: MRP vs. discounted pricing relationships
- **Discount Trends**: Category-wise discount percentage comparisons
- **Inventory Value**: Total inventory weight and value distribution
- **Product Performance**: Top products by discount, revenue, and availability

## 🛠 Technologies Used

- **SQL**: Data exploration, cleaning, and analysis
- **Power BI**: Interactive dashboard and visualization
- **Database**: SQL database for data storage and querying

## 📈 Key Findings

The analysis reveals insights into:
- Which product categories generate the most revenue
- Premium products with stock availability issues
- Pricing opportunities for margin optimization
- Discount strategies across different product categories
- Inventory composition and value distribution

## 🚀 Getting Started

### Prerequisites
- SQL IDE or database client (MySQL, PostgreSQL, SQL Server, etc.)
- Power BI Desktop (for dashboard visualization)

### Steps to Use

1. **Run SQL Analysis**
   - Open `zepto_sql.sql` in your SQL IDE
   - Execute queries sequentially to explore and analyze the data
   - Review results for business insights

2. **View Dashboard**
   - Open `Zepto_Sales_And_Product_Analysis_Dashboard.pbix` in Power BI Desktop
   - Interact with visualizations to explore insights
   - Use filters to drill down into specific categories or product groups

## 💡 Insights & Recommendations

Based on the analysis, consider:
- **Inventory Management**: Address out-of-stock items in high-demand categories
- **Pricing Strategy**: Review discount percentages for premium products
- **Revenue Optimization**: Focus on high-revenue categories for growth
- **Weight Categorization**: Optimize pricing for bulk vs. small item offerings
- **Stock Planning**: Align inventory weight with category demand patterns

## 📄 License

This project is available for educational and analytical purposes.

## 👤 Author

Created as a comprehensive data analysis project demonstrating SQL proficiency and business intelligence visualization.

## 📧 Contact & Feedback

For questions, suggestions, or improvements, feel free to reach out or submit an issue.

---

Happy analyzing! 📊
