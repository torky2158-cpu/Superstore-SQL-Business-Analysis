                          --customer_analytics.sql--

-- number of customers
SELECT COUNT(*) AS Total_Customers
FROM super.Customer;



-- Ranking the customer from Region
select 
RANK() over(Order by Sum(oi.sales) DESC ) [Ranking_Region]
 ,
C.Region ,
SUM(OI.sales) Total_Sales ,
sum(oi.profit) Total_profit  ,
CAST( SUM(oi.Profit) * 100.0 / Nullif(SUM(oi.Sales),0) AS DECIMAL(10,2)) AS Profit_Margin_Percentage ,

CAST(
    SUM(oi.sales)/ 
	NULLIF(COUNT(DISTINCT C.Customer_id),0) AS DECIMAL(10,2))  AS Avg_Revenue_per_Customer ,

Cast(
	SUM(oi.sales)/
	Nullif(COUNT(DISTINCT o.Order_ID) ,0) AS decimal(10,2))   AS Avg_Order_Value ,

Cast(
	SUM(oi.profit) /
	Nullif(COUNT(DISTINCT C.Customer_id),0) AS decimal(10,2))  AS Avg_Profit_per_Customer ,
COUNT(DISTINCT C.Customer_id) Number_customers_Region
from super.Customer C
Join Super.orders O
on o.customer_id = C.customer_id
join super.order_items oI
ON oI.order_id = O.Order_ID
Group by C.Region



-- Ranking Customer From Segment
select 
RANK() over(Order by Sum(oi.sales) DESC ) [Ranking_Segment] , 
C.Segment  ,
sum(oi.sales) Total_Sales,
sum(oi.profit) Total_profit  ,
CAST( SUM(oi.Profit) * 100.0 / Nullif(SUM(oi.Sales),0) AS DECIMAL(10,2)) AS Profit_Margin_Percentage  ,
COUNT(Distinct C.Customer_id)  Num_Customers ,
Count(distinct o.Order_ID) Num_Orders   
from super.Customer C
Join Super.orders O
on o.customer_id = C.customer_id
join super.order_items oI
ON oI.order_id = O.Order_ID
Group by C.Segment

