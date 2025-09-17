# Food Delivery SQL Analytics Case Study

## Project Overview  
This project simulates a food delivery platform dataset inspired by **Swiggy** and **Zomato**. It demonstrates advanced SQL analytics through business-style questions and actionable insights.  

**Dataset Scale:** 5K customers • 200 restaurants • 20K orders • Detailed menu items  
**Tech Stack:** MySQL with advanced joins, CTEs, and window functions  

---

## Key Highlights  
- **Schema Design:** Comprehensive relational database covering Customers, Restaurants, Menu, Orders, and Order Items  
- **Data Generation:** Synthetic but realistic data using Python and Faker  
- **Advanced Analytics:** Complex SQL queries for business intelligence  

### Analysis Areas:
- Top-spending customers and revenue contributors
- Revenue breakdown by cuisine and geographic location  
- Customer retention cohorts and churn analysis
- Monthly growth trends and seasonality patterns
- Popular dishes and menu optimization insights
- Restaurant performance rankings per city  
- Customer lifetime value quartile analysis

---

## Business Insights  

### Cuisine Performance
- **Indian cuisine** generated the highest revenue share across all markets
- **Chinese cuisine** emerged as the second most popular category

### Customer Behavior Analysis
- **44%** of users were repeat customers, contributing disproportionate revenue
- **65%** customer retention rate in month 2, declining to sub-50% by month 3
- **Top quartile** customers (25%) drove approximately **60%** of total revenue

### Restaurant Market Dynamics
- **Top 5 restaurants** in each city captured roughly **30%** of local market revenue
- Significant performance gaps between top-tier and mid-tier establishments

---

## Repository Structure

| File | Description |
|------|-------------|
| `schema.sql` | Complete database schema with relationships |
| `generate_data.py` | Python script for synthetic data creation |
| `analysis.sql` | Advanced SQL queries for business analytics |
| `results.md` | Detailed query outputs with business insights |

---

## Technical Implementation

### Database Design
- Normalized relational schema with proper foreign key constraints
- Optimized for analytical queries with appropriate indexing
- Scalable structure supporting additional business metrics

### Query Complexity
- **Common Table Expressions (CTEs)** for complex data transformations
- **Window functions** for ranking and running calculations
- **Advanced joins** across multiple dimension tables
- **Cohort analysis** using date-based grouping and lag functions

### Data Quality
- Realistic data distributions using statistical sampling
- Proper referential integrity across all tables
- Balanced geographic and demographic representation

---

## Getting Started

1. **Clone the repository**
   ```bash
   git clone [your-repo-url]
   cd food-delivery-sql-analytics
   ```

2. **Initialize database**
   ```sql
   source schema.sql
   ```

3. **Generate sample data**
   ```bash
   python generate_data.py
   ```

4. **Execute analytics**
   ```sql
   source analysis.sql
   ```

---

## Technologies Used
- **MySQL 8.0+** - Primary database engine
- **Python 3.8+** - Data generation and preprocessing
- **Faker Library** - Realistic synthetic data creation
- **SQL** - Advanced analytics and business intelligence

---

## Key Analytics Delivered
- Customer acquisition cost and lifetime value analysis
- Revenue trend analysis by multiple dimensions
- Restaurant performance benchmarking framework
- Cohort-based retention modeling
- Order pattern analysis and forecasting metrics

---

## Resume Summary
Built a comprehensive MySQL analytics project processing 20K synthetic food delivery orders. Implemented advanced SQL techniques including CTEs, window functions, and multi-table joins to deliver insights on cuisine performance, customer segmentation, retention cohorts, and restaurant rankings across geographic markets.

---

*This project demonstrates production-ready SQL analytics capabilities for food delivery business intelligence.*
