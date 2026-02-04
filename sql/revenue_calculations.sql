-- ============================================
-- Revenue Analysis Queries
-- Customer Churn Analytics Project
-- Tool: PostgreSQL via pgAdmin
-- ============================================

-- Monthly Revenue
-- Total monthly recurring revenue from all customers
SELECT SUM("MonthlyCharges"::numeric) AS monthly_revenue
FROM customers;
-- Result: ₹456,116.60


-- Annual Revenue
-- Projected annual revenue based on current customer base
SELECT SUM("MonthlyCharges"::numeric) * 12 AS annual_revenue
FROM customers;
-- Result: ₹5,473,399.20


-- Annual Revenue Retention
-- Estimated annual revenue after accounting for churn
-- Retention rate = 100% - 26.54% (churn rate) = 73.46%
SELECT SUM("MonthlyCharges"::numeric) * 12 * 0.7346
    AS estimated_annual_revenue_retention
FROM customers;
-- Result: ₹4,020,759.052320