# Food Delivery SQL Analytics

## Project Overview  
This project simulates a food delivery platform dataset inspired by Swiggy and Zomato. It demonstrates advanced SQL analytics through business-style questions and insights.  

The dataset contains 5k customers, 200 restaurants, 20k orders, and detailed menu items. Queries are written in MySQL using joins, CTEs, and window functions.  

---

## Key Highlights  
- Designed a relational schema covering Customers, Restaurants, Menu, Orders, and Order Items  
- Generated synthetic but realistic data with Python and Faker  
- Wrote advanced SQL queries for:  
  - Top-spending customers  
  - Revenue by cuisine and city  
  - Customer retention cohorts  
  - Monthly growth trends  
  - Popular dishes  
  - Restaurant rankings per city  
  - Customer lifetime quartiles  
- Documented results and insights in a structured report  

---

## Business Insights  
- Indian cuisine generated the highest revenue share, followed by Chinese  
- Repeat customers made up about 44 percent of the user base, contributing a significant portion of revenue  
- Top 5 restaurants in each city generated around 30 percent of that city’s revenue  
- Cohort analysis showed 65 percent retention into the second month, dropping below 50 percent by the third  
- The top 25 percent of customers drove roughly 60 percent of overall revenue  

---

## Repository Contents  
- `schema.sql` → Database schema  
- `generate_data.py` → Synthetic data generation  
- `analysis.sql` → SQL queries  
- `results.md` → Query outputs with insights  

---

## Resume Statement  
Built a MySQL analytics project with 20k synthetic food delivery orders. Applied CTEs and window functions to analyze cuisine trends, customer cohorts, repeat purchase behavior, and restaurant rankings across cities.  
