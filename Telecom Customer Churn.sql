USE telecom_churn;

-- 1. Calculate total customers, churned customers,
-- retained customers and overall churn rate

SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn LIKE '%Yes%' THEN 1 ELSE 0 END) AS churned_customers,
    SUM(CASE WHEN Churn LIKE '%No%' THEN 1 ELSE 0 END) AS retained_customers,
    ROUND(
        SUM(CASE WHEN Churn LIKE '%Yes%' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn.telco_customers;


-- 2. Identify which contract type has the highest churn rate

SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn LIKE '%Yes%' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn LIKE '%Yes%' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn.telco_customers
GROUP BY Contract
ORDER BY churn_rate DESC;

-- 3. Analyse churn behaviour across different payment methods

SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn LIKE '%Yes%' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn LIKE '%Yes%' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn.telco_customers
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;

-- 4. Segment customers by tenure to identify
-- which customer lifecycle stage has higher churn

SELECT
    CASE
        WHEN tenure <= 12 THEN '0-12 Months'
        WHEN tenure <= 24 THEN '13-24 Months'
        WHEN tenure <= 48 THEN '25-48 Months'
        ELSE '49-72 Months'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn LIKE '%Yes%' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn LIKE '%Yes%' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn.telco_customers
GROUP BY tenure_group
ORDER BY MIN(tenure);

-- 5. Compare average monthly and total charges
-- between churned and retained customers

SELECT
    Churn,
    COUNT(*) AS total_customers,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges,
    ROUND(AVG(TotalCharges), 2) AS avg_total_charges
FROM telecom_churn.telco_customers
GROUP BY Churn;

-- 6. Analyse whether internet service type
-- is associated with higher customer churn

SELECT
    InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn LIKE '%Yes%' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn LIKE '%Yes%' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn.telco_customers
GROUP BY InternetService
ORDER BY churn_rate DESC;

-- 7. Compare customer churn across gender groups

SELECT
    gender,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn LIKE '%Yes%' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn LIKE '%Yes%' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn.telco_customers
GROUP BY gender;

-- 8. Compare churn among senior citizens and non-senior citizens

SELECT
    SeniorCitizen,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn LIKE '%Yes%' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn LIKE '%Yes%' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn.telco_customers
GROUP BY SeniorCitizen;

-- 9. Examine the relationship between online security
-- subscription and customer churn

SELECT
    OnlineSecurity,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn LIKE '%Yes%' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn LIKE '%Yes%' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn.telco_customers
GROUP BY OnlineSecurity
ORDER BY churn_rate DESC;

-- 10. Check total records, unique customers
-- and missing values in important numeric columns

SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT customerID) AS unique_customers,
    SUM(MonthlyCharges IS NULL) AS missing_monthly_charges,
    SUM(TotalCharges IS NULL) AS missing_total_charges,
    SUM(tenure IS NULL) AS missing_tenure
FROM telecom_churn.telco_customers;