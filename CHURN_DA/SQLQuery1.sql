

-- Total Customers
select count(*) AS Total_Customers 
from dbo.customer_churn;


-- Total Churned Customers
select count(*) AS Churn_Customers
from dbo.customer_churn
where Churn = 'Yes';


-- Churn Percentage
select ROUND( 
	    SUM (CASE when churn = 'Yes' THEN 1 
			 ELSE 0 END) * 100 /
			  COUNT(*), 2 ) AS Churn_Rate
from dbo.customer_churn;


-- Avg Monthly Charges
Select AVG(Monthly_Charges) AS AvgMonCharges
from dbo.customer_churn;

-- Avg Tenure
Select AVG(Tenure_Months) AS AvgTenure
from dbo.customer_churn;


-- Churn by Contract Type
select Contract_Type, COUNT(*) AS Customers
from dbo.customer_churn
group by Contract_Type
order by  COUNT(*) DESC;


-- Churn by Internet Service
select Internet_Service, COUNT(*) AS Customers
from dbo.customer_churn
group by Internet_Service
order by  COUNT(*) DESC;


-- Churn by State
select State, COUNT(*) AS Customers
from dbo.customer_churn
where Churn = 'Yes'
group by State
order by COUNT(*) DESC;


-- Payment Method Wise Monthly Charges
select Payment_Method, ROUND(SUM(Monthly_Charges),0) AS Monthly_Charge
from dbo.customer_churn
group by Payment_Method
order by  SUM(Monthly_Charges) DESC;


-- Highest Revenue States
select State,
SUM(Total_Charges) AS State_Revenue
from dbo.customer_churn
group by State
order by State_Revenue DESC;


-- Average Charges by Contract
select Contract_Type,
AVG(Monthly_Charges) AS Avg_Charges
from dbo.customer_churn
group by Contract_Type
order by Avg_Charges;


-- Churn by Senior Citizen
select Senior_Citizen,
COUNT(*) AS Churn_Count
from dbo.customer_churn
where Churn = 'Yes'
group by Senior_Citizen
order by Churn_Count DESC;


-- Top 10 High Value Customers
select TOP 10 Customer_Name,
Customer_Value
from dbo.customer_churn
order by Customer_Value DESC;


-- Customers without Tech Support
select * from dbo.customer_churn
where Tech_Support = 'No';