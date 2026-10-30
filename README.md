# Telecom Customer Churn Analysis

An end-to-end data analytics project exploring customer churn patterns in the telecommunications industry using **Python, MySQL and Power BI**.

## Project Overview

Customer churn is a major challenge for telecom companies because losing existing customers can affect revenue and long-term business growth.

This project analyses the IBM Telco Customer Churn dataset containing 7,043 customer records to understand churn behaviour, identify customer segments with higher churn and generate actionable business insights.

## Project Objectives

- Clean and preprocess customer data using Python.
- Perform exploratory data analysis (EDA) to understand customer behaviour.
- Analyse churn patterns using MySQL queries.
- Identify customer segments associated with higher churn.
- Develop an interactive Power BI dashboard to communicate key findings.

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning, preprocessing and EDA |
| Pandas & NumPy | Data manipulation and transformation |
| Matplotlib & Seaborn | Data visualization |
| MySQL | Business analysis and SQL queries |
| Power BI | Interactive dashboard and reporting |
| DAX | KPI calculations and measures |

## Project Workflow

### 1. Python – Data Cleaning & Exploratory Data Analysis

- Inspected dataset structure, data types and data quality.
- Handled missing values and duplicate records.
- Converted `TotalCharges` into numeric format.
- Created additional analytical features:
  - ChurnFlag
  - TenureBucket
  - AddonCount
  - ServiceCount
  - ChargeBand
- Performed exploratory analysis and visualizations.
- Exported the cleaned dataset for further analysis.

### 2. MySQL – Business Analysis

Created SQL queries to analyse:

- Overall customer churn and retention.
- Churn across different contract types.
- Payment method and churn behaviour.
- Customer tenure segments.
- Average monthly and total charges.
- Internet service and churn patterns.
- Gender and senior citizen segmentation.
- Online security subscriptions.
- Data quality and missing values.

### 3. Power BI – Interactive Dashboard

Developed an interactive dashboard featuring:

**Key Performance Indicators**

| KPI | Result |
|---|---:|
| Total Customers | 7,043 |
| Churned Customers | 1,869 |
| Retained Customers | 5,174 |
| Churn Rate | 26.54% |
| Retention Rate | 73.46% |

**Dashboard Visualizations**

- Customer churn distribution.
- Churned customers by contract type.
- Churned customers by payment method.
- Churned customers by tenure group.
- Churned customers by internet service.
- Average monthly charges: churned vs retained.

Interactive filters allow users to explore customer segments by tenure group, gender, internet service and payment method.

## Key Business Insights

1. **Contract Type:** Month-to-month customers account for 1,655 of the 1,869 churned customers, approximately 88.55% of total churned customers.
2. **Payment Method:** Electronic check customers contribute the highest number of churned customers (1,071).
3. **Internet Service:** Fiber optic customers account for the highest number of churned customers (1,297) among internet service categories.
4. **Customer Tenure:** The 0–12 month tenure segment has the highest churned customer count (1,037).
5. **Monthly Charges:** Churned customers have average monthly charges of approximately 74, compared with 61 for retained customers.

*Note: These are observed customer counts and averages, not proof of causation.*

## Repository Structure

```text
Telecom-Customer-Churn-Analysis/
│
├── Python/
│   └── Telco Customer Churn.ipynb
│
├── SQL/
│   └── Telecom Customer Churn.sql
│
├── PowerBI/
│   └── Telecom Customer Churn Dashboard.pbix
│
├── Dashboard-Screenshots/
│   └── telecom_churn_dashboard.png
│
├── README.md
└── .gitignore
```

## How to Explore the Project

**Python Notebook**
1. Open the notebook in Jupyter Notebook or Google Colab.
2. Install the required Python libraries.
3. Place the dataset in the configured data directory.
4. Run the notebook cells sequentially.

**SQL Analysis**
1. Import the cleaned dataset into MySQL.
2. Create the `telecom_churn` database and `telco_customers` table.
3. Execute the SQL queries in the SQL folder.

**Power BI Dashboard**
1. Open the `.pbix` file using Power BI Desktop.
2. Refresh the data source if necessary.
3. Explore the dashboard using the interactive slicers.

## Future Scope

- Develop an interactive web application using Streamlit.
- Apply machine learning algorithms for customer churn prediction.
- Identify high-risk customers using predictive modelling.
- Develop targeted customer retention recommendations.

## Dataset

IBM Telco Customer Churn dataset.

Dataset reference: [Telco Customer Churn – Kaggle](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)

## Author

Created as a hands-on data analytics portfolio project using Python, MySQL and Power BI.
