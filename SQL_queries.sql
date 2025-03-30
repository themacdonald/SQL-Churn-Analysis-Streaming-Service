-- SQL Churn Analysis Project Queries

-- 1. Churn Rate by Plan Type
SELECT plan_type,
       COUNT(*) AS total_subs,
       SUM(CASE WHEN status = 'canceled' THEN 1 ELSE 0 END) AS churned,
       ROUND(100.0 * SUM(CASE WHEN status = 'canceled' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate_pct
FROM subscriptions
GROUP BY plan_type;

-- 2. Average Watch Time: Churned vs Retained
SELECT s.status,
       ROUND(AVG(u.hours_watched), 2) AS avg_watch_time
FROM subscriptions s
JOIN usage_logs u ON s.user_id = u.user_id
GROUP BY s.status;

-- 3. Top Cancellation Reasons
SELECT cancel_reason,
       COUNT(*) AS frequency
FROM cancellations
GROUP BY cancel_reason
ORDER BY frequency DESC;

-- 4. Cohort Analysis: Signup Month vs Retention
WITH user_cohorts AS (
    SELECT user_id,
           DATE_TRUNC('month', signup_date) AS cohort_month
    FROM user_profiles
),
churn_summary AS (
    SELECT uc.cohort_month,
           s.status,
           COUNT(DISTINCT s.user_id) AS users
    FROM user_cohorts uc
    JOIN subscriptions s ON uc.user_id = s.user_id
    GROUP BY uc.cohort_month, s.status
)
SELECT cohort_month,
       SUM(CASE WHEN status = 'active' THEN users ELSE 0 END) AS retained,
       SUM(CASE WHEN status = 'canceled' THEN users ELSE 0 END) AS churned
FROM churn_summary
GROUP BY cohort_month
ORDER BY cohort_month;
