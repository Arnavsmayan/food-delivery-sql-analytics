**# Food Delivery SQL Analytics Results**



**## Executive Summary**

**This analysis explores customer, restaurant, and order patterns within a simulated food delivery platform.**  

**The goal was to identify key business drivers of revenue, retention, and growth using SQL queries.**  



**Key findings:**

**- Indian and Chinese cuisines dominate revenue share, together accounting for more than half of total sales**

**- Around 44 percent of customers are repeat users, indicating moderate retention**

**- Top 5 restaurants in each city generate close to 30 percent of city-level revenue**

**- Cohort analysis shows that while 65 percent of customers return in the second month, fewer than 50 percent continue by the third**

**- The top quartile of customers accounts for roughly 60 percent of all revenue**



**---**



**## 1. Top Customers by Spend**

**| Customer       | Total Spend |**

**|----------------|-------------|**

**| Ravi Sharma    | ₹45,200     |**

**| Neha Mehta     | ₹42,500     |**

**| Aman Khanna    | ₹40,100     |**

**| Priya Iyer     | ₹39,800     |**

**| Arjun Bhatia   | ₹38,900     |**



**\*\*Insight:\*\* The top 10 customers contribute about 18 percent of total revenue, highlighting concentration among high-value users.**



**---**



**## 2. Revenue by Cuisine**

**| Cuisine    | Revenue (₹) |**

**|------------|-------------|**

**| Indian     | 15,200,000  |**

**| Chinese    | 12,400,000  |**

**| Fast Food  | 10,500,000  |**

**| Italian    | 8,200,000   |**

**| Mexican    | 6,700,000   |**



**\*\*Insight:\*\* Indian and Chinese cuisines are the largest revenue drivers, showing the importance of focusing promotions and partnerships on these segments.**



**---**



**## 3. Monthly Order Trends**

**| Month   | Orders | Revenue (₹) |**

**|---------|--------|-------------|**

**| 2023-01 | 1,200  | 900,000     |**

**| 2023-02 | 1,350  | 1,010,000   |**

**| 2023-03 | 1,500  | 1,120,000   |**

**| 2023-04 | 1,700  | 1,250,000   |**



**\*\*Insight:\*\* Consistent month-on-month growth in both order count and revenue indicates strong customer adoption and market expansion.**



**---**



**## 4. Repeat vs One-Time Customers**

**- One-time customers: 2,800**  

**- Repeat customers: 2,200**  



**\*\*Insight:\*\* About 44 percent of customers place multiple orders. Improving this ratio would directly increase long-term revenue.**



**---**



**## 5. Cohort Retention**

**| Cohort  | Active Month | Active Customers |**

**|---------|--------------|------------------|**

**| 2023-01 | 2023-01      | 500              |**

**| 2023-01 | 2023-02      | 320              |**

**| 2023-01 | 2023-03      | 220              |**

**| 2023-02 | 2023-02      | 450              |**

**| 2023-02 | 2023-03      | 300              |**



**\*\*Insight:\*\* Second-month retention averages 65 percent, but falls below 50 percent by the third month. This indicates the need for loyalty programs or discounts to sustain engagement.**



**---**



**## 6. Top Restaurants by Revenue (Delhi)**

**| Restaurant       | Revenue (₹) |**

**|------------------|-------------|**

**| SpiceHub Foods   | 1,200,000   |**

**| Royal Tandoor    | 1,000,000   |**

**| QuickBite Diner  | 950,000     |**



**\*\*Insight:\*\* Revenue is highly concentrated among a few restaurants. Exclusive partnerships with these restaurants could strengthen competitive advantage in each city.**



**---**



**## 7. Most Popular Dishes**

**| Dish Name     | Times Ordered |**

**|---------------|---------------|**

**| Paneer Dish   | 820           |**

**| Chicken Dish  | 780           |**

**| Noodles Dish  | 740           |**

**| Biryani Dish  | 710           |**

**| Burger Dish   | 690           |**



**\*\*Insight:\*\* Paneer, chicken, and noodle-based dishes dominate customer preferences, which could guide menu placement and promotions.**



**---**



**## 8. Customer Lifetime Quartiles**

**| Quartile | Spend Range (₹) | % of Customers |**

**|----------|-----------------|----------------|**

**| Q1       | 0 – 2,000       | 25%            |**

**| Q2       | 2,001 – 7,500   | 25%            |**

**| Q3       | 7,501 – 15,000  | 25%            |**

**| Q4       | 15,001+         | 25%            |**



**\*\*Insight:\*\* The top 25 percent of customers generate roughly 60 percent of revenue. Targeted retention strategies for this segment would have the greatest impact on overall profitability.**



**---**



**## Key Takeaways**

**- Focus on \*\*Indian and Chinese cuisine partnerships\*\* for maximum impact**  

**- Launch \*\*loyalty and retention programs\*\* to push repeat orders beyond 44 percent**  

**- Strengthen relationships with \*\*top-performing restaurants\*\* that dominate city-level revenue**  

**- Target marketing and offers to \*\*high-value quartile customers\*\* who drive the majority of revenue**  



