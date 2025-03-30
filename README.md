# SQL Churn Analysis – Streaming Service

## 🔍 Objective
Analyze customer churn behavior for a fictional video streaming platform using SQL queries. The goal is to identify churn patterns, segment users, and provide actionable recommendations to improve retention.

## 💪 Tools & Technologies
- PostgreSQL / SQLite / MySQL
- SQL (Joins, Window Functions, CTEs, Aggregates)
- Visualizations (optional: Tableau, Power BI, or Python)

## 📊 Dataset Overview
This project uses a simulated dataset for 500 users over a period of 12 months.

**Files:**
- `user_profiles.csv` – Demographic data
- `subscriptions.csv` – Subscription history with status
- `usage_logs.csv` – Daily viewing habits
- `cancellations.csv` – Cancelation dates and reasons

## ⚖️ Key Metrics Analyzed
- Churn rate by subscription plan
- Average watch time for churned vs retained users
- Most common cancellation reasons
- Cohort analysis by signup month

## 📈 Sample Insights
- “Basic” plan had ~30% churn rate; "Premium" was under 15%
- Churned users averaged 1.8 hours/week vs. 3.6 hours for retained users
- Most cited cancel reason: "Content Library"
- 70% of users who churn did so within the first 90 days

## 📁 Project Structure
```bash
/SQL_Churn_Analysis/
├── user_profiles.csv
├── subscriptions.csv
├── usage_logs.csv
├── cancellations.csv
├── SQL_queries.sql
├── README.md
```

## ⚙️ How to Use
1. Load the CSVs into a relational database
2. Use `SQL_queries.sql` to explore the data and reproduce the analysis
3. (Optional) Visualize trends using Tableau, Power BI, or Python (Plotly/Seaborn)

## 🔗 Connect
Feel free to connect or ask questions on [LinkedIn](https://www.linkedin.com/in/the-madonald) or [GitHub](https://github.com/themacdonald).

---

> "Churn isn’t just a number—it’s a signal. Decode it."

