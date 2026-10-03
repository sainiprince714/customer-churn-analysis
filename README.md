# Customer Churn Analysis

## 📌 Project Overview

Customer churn is an important business problem for subscription-based companies, as retaining existing customers is often critical for maintaining revenue and long-term customer value.

This project analyzes customer data to identify churn patterns, customer segments, revenue trends, and factors associated with customer attrition.

The project follows an end-to-end **Data Analytics workflow**, starting from raw/unclean Excel data and progressing through **Python data cleaning, feature engineering, SQL analysis, and an interactive Power BI dashboard**.

---

## 🎯 Project Objectives

- Analyze customer churn and retention patterns
- Clean and validate raw customer data
- Identify customer segments with higher churn
- Analyze churn across contract and subscription types
- Analyze revenue and monthly charges
- Understand the relationship between tenure and churn
- Identify high-value customers
- Analyze churn across states and service categories
- Build an interactive Power BI dashboard for business reporting

---

## 🛠️ Tools & Technologies

- **Python**
  - Pandas
  - NumPy
- **Microsoft Excel**
- **SQL Server**
- **SQL**
- **Power BI**
- **Jupyter Notebook**

---

## 🔄 Project Workflow

```text
Raw Excel Dataset
       ↓
Data Exploration
       ↓
Data Cleaning using Python
       ↓
Data Validation
       ↓
Feature Engineering
       ↓
Clean CSV Dataset
       ↓
SQL Server
       ↓
SQL Analysis
       ↓
Power BI Dashboard
       ↓
Business Insights
```

---

## 📂 Project Structure

```text
Customer-Churn-Analysis/
│
├── Churn_Analysis_EDA.ipynb
├── Churn_Unclean_Project.xlsx
├── Clean_Churn_Data.csv
├── SQLQuery1.sql
├── Churn_Dashboard.pbix
├── Churn Dataset Cleaning.pdf
├── Complete Project Flow.docx
└── README.md
```

---

## 🧹 Data Cleaning & Preparation

The raw customer dataset contained inconsistent values, duplicate records, missing values, invalid numerical values, and formatting issues.

The data was cleaned using **Python and Pandas**.

### Key cleaning steps

- Inspected dataset structure using `info()`, `describe()`, and shape analysis
- Checked and removed duplicate records
- Converted values such as `NULL`, `N/A`, and blank strings to missing values
- Removed unnecessary leading/trailing spaces
- Standardized categorical values using proper case formatting
- Standardized the `Churn` field
- Converted numerical columns to appropriate data types
- Removed invalid age values
- Removed negative monthly and total charges
- Converted interaction dates into datetime format
- Handled missing values using appropriate replacement techniques
- Performed final data-quality checks

---

## ⚙️ Feature Engineering

Additional analytical features were created to support deeper analysis.

### Customer Value

```python
Customer_Value = Monthly_Charges × Tenure_Months
```

This provides an estimated customer value based on monthly charges and tenure.

### Monthly Revenue

```python
Monthly_Revenue = Monthly_Charges
```

### Tenure Group

Customers were categorized into different tenure groups:

- 0–12 months
- 13–24 months
- 25–48 months
- 49–72 months

### Senior Customer Flag

Customers were categorized based on age:

```text
Age >= 60 → Senior
Age < 60  → Adult
```

### Churn Flag

The categorical churn value was converted into a numerical flag:

```text
Yes → 1
No  → 0
```

This allows churn to be easily used in SQL and Power BI calculations.

---

## 🗄️ SQL Analysis

The cleaned dataset was loaded into **Microsoft SQL Server** for analytical querying.

The SQL analysis includes:

- Total customer count
- Total churned customers
- Churn rate
- Average monthly charges
- Average customer tenure
- Churn by contract type
- Customer distribution by internet service
- Churn by state
- Revenue by state
- Average charges by contract type
- Churn among senior customers
- Top high-value customers
- Customers without technical support
- Payment method analysis

Example:

```sql
SELECT
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS Churn_Rate
FROM dbo.customer_churn;
```

---

## 📊 Power BI Dashboard

An interactive Power BI dashboard was developed to provide a visual overview of customer churn and business performance.

### Key Performance Indicators

The dashboard includes:

- Total Customers
- Churn Customers
- Retained Customers
- Churn Rate
- Total Revenue
- Average Monthly Charges
- Average Tenure

### Dashboard Analysis

The dashboard provides analysis of:

- Churn by Contract Type
- Churn by Subscription Type
- Churn by State
- Monthly Charges vs. Churn
- Revenue by State
- Internet Service Distribution
- Payment Method Distribution
- Senior Citizen vs. Churn
- Tenure Group vs. Churn
- Customer Value by Subscription Type

### Interactive Filters

Users can filter the dashboard by:

- State
- City
- Contract Type
- Subscription Type
- Internet Service
- Payment Method
- Senior Citizen
- Churn
- Tenure Group
- Last Interaction Date

---

## 📈 Key Dashboard Metrics

The dashboard currently reports:

| KPI | Value |
|---|---:|
| Total Customers | 445 |
| Churn Customers | 105 |
| Retained Customers | 340 |
| Churn Rate | 23.60% |
| Total Revenue | 22.16M |
| Average Monthly Charges | 1.36K |
| Average Tenure | 35.95 months |

> Note: These figures correspond to the dataset/version used to generate the Power BI dashboard. The cleaned CSV included in the repository may contain a different record count if the files represent different cleaning iterations.

---

## 💡 Business Questions Answered

This project addresses questions such as:

1. How many customers have churned?
2. What is the overall churn rate?
3. Which contract types have more churn?
4. Which subscription types have higher customer churn?
5. Which states have the highest number of churned customers?
6. How does customer tenure relate to churn?
7. How do monthly charges differ across customer segments?
8. Which states generate the highest revenue?
9. Are senior customers more likely to churn?
10. Which customers have the highest estimated customer value?
11. How does technical support availability relate to customers?
12. How are customers distributed across payment and internet service methods?

---

## 🚀 Key Skills Demonstrated

This project demonstrates practical experience in:

- Data Cleaning
- Data Preprocessing
- Exploratory Data Analysis (EDA)
- Data Validation
- Feature Engineering
- SQL Querying
- Aggregations and Grouping
- Business KPI Analysis
- Customer Segmentation
- Revenue Analysis
- Power BI Dashboard Development
- Data Visualization
- End-to-End Analytics Workflow

---

## 📌 Project Outcome

The project transforms raw customer data into a structured analytical dataset and uses **Python, SQL Server, and Power BI** to identify customer churn patterns and business metrics.

The final dashboard provides an interactive view of customer behavior, churn, revenue, tenure, service usage, and customer value, helping stakeholders explore potential areas for customer retention and business improvement.

---

## 👨‍💻 Author

**Prince Saini**

Data Analyst | SQL | Python | Power BI | Excel

GitHub: `Add your GitHub profile link here`
LinkedIn: `Add your LinkedIn profile link here`
