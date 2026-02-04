# SQL Revenue Analysis

Used **PostgreSQL** via **pgAdmin** to calculate revenue metrics and quantify churn impact.

## Queries Performed

### Monthly Revenue
Total monthly recurring revenue from all customers
```sql
SELECT SUM("MonthlyCharges"::numeric) AS monthly_revenue
FROM customers;
```
**Result**: ₹456,116.60

### Annual Revenue
Projected annual revenue
```sql
SELECT SUM("MonthlyCharges"::numeric) * 12 AS annual_revenue
FROM customers;
```
**Result**: ₹5,473,399.20

### Annual Revenue Retention
Estimated revenue after accounting for 26.54% churn rate
```sql
SELECT SUM("MonthlyCharges"::numeric) * 12 * 0.7346
    AS estimated_annual_revenue_retention
FROM customers;
```
**Result**: ₹4,020,759.052320
(Retention rate: 73.46% = 100% - 26.54% churn)

---

## Setup
- Database: PostgreSQL
- Tool: pgAdmin 4
- Table: `customers` (imported from cleaned CSV)