# Credit Card Financial Dashboard

An interactive Power BI dashboard analyzing transaction and customer data from a SQL database to track revenue, interest, and customer trends on a week-by-week basis over a full year.

## 🎯 Objective

To analyze credit card transaction and customer data and build an interactive dashboard that helps identify:
- Week-by-week revenue, transaction, and customer trends
- Overall year-to-date (YTD) performance across revenue, interest, and transactions
- Customer segmentation by gender, card type, and location
- Credit risk indicators such as activation and delinquency rates

## 🛠️ Tools & Technologies

- **SQL** — Source database for transaction and customer data
- **Power BI** — Data modeling and dashboard visualization
- **DAX** — Custom measures for week-over-week growth and YTD calculations

## 🔍 Key Insights

**Week-over-Week (WoW) — Week 53 (Dec 31):**
- Revenue increased by **28.8%** week-over-week, the highest growth period in the dataset

**Year-to-Date (YTD) Overview:**
- Overall revenue: **57M**
- Total interest: **8M**
- Total transaction amount: **46M**
- Male customers contributed **31M** in revenue vs. **26M** from female customers
- Blue & Silver credit cards account for **93%** of overall transactions
- TX, NY & CA states are responsible for **73%** of total transactions and revenue
- Overall account activation rate (30-day): **57.46%**
- Overall delinquency rate: **6.06%**
- Average customer satisfaction score: **3.18 out of 5**

## 📌 Dashboard Features

- Interactive dashboard connected to a SQL database
- Week-by-week trend tracking for revenue, interest, transactions, and customer count
- Customer segmentation by gender, card category, and state
- WoW and YTD DAX measures for performance tracking
- Filters/slicers to explore trends by week, card type, and region

## 📊 Sample DAX Measures

- Revenue WoW % change
- YTD Revenue, Interest, and Transaction Amount
- Revenue contribution by gender
- Transaction share by card category
