select * from super.Products


-- Category analysis
Select 
p.Category ,
sum(OI.quantity) Total_unit_Sold ,
sum(OI.sales) Total_Revenue ,
sum(OI.profit) Total_Profit ,
Cast(Sum(Oi.profit) *1.0 / sum(OI.sales) AS decimal(10,3) ) Profit_Margin ,
Cast(sum(OI.profit) * 100.0 / NULLIF(SUM(OI.sales),0) As decimal(10,3))   Percentage_Profit
from super.Products P
Join Super.order_items  OI
ON P.product_id = OI.product_id
Group by P.Category
order by Total_unit_Sold







-- SUB_Category analysis
Select 
p.Category ,
P.Sub_Category,
sum(OI.quantity) Total_unit_Sold ,
sum(OI.sales) Total_Revenue ,
sum(OI.profit) Total_Profit ,
Cast(Sum(Oi.profit) *1.0 / Nullif(sum(OI.sales) , 0) AS decimal(10,3) ) Profit_Margin ,
Cast(sum(OI.profit) * 100.0 / NULLIF(SUM(OI.sales),0) As decimal(10,3))   Percentage_Profit
from super.Products P
Join Super.order_items  OI
ON P.product_id = OI.product_id
Group by P.Category , P.Sub_Category
order by P.Category




-- Top_10_Products
Select Top 3 
P.Product_name ,
sum(oI.sales) Total_Revenue

from super.Products P
Join Super.order_items OI
ON OI.product_id = P.product_id
Group BY Product_name
Order BY Total_Revenue Desc




-- Bottom_10_Products
Select Top 3 
P.Product_name ,
sum(oI.sales) Total_Revenue

from super.Products P
Join Super.order_items OI
ON OI.product_id = P.product_id
Group BY Product_name
Order BY Total_Revenue ASC





-- Profit Contribution

With CTE_Data AS 
(
SELECT 
    P.Product_Name,
    SUM(OI.Quantity) AS Total_Units_Sold,
    SUM(OI.Sales) AS Total_Revenue,
    SUM(OI.Profit) AS Total_Profit,
    CAST(SUM(OI.Profit)*1.0 / NULLIF(SUM(OI.Sales),0) AS decimal(10,3)) AS Profit_Margin ,
	AVG(Sum(OI.Quantity)) over() AVG_UNits_Sold ,
	AVG(CAST(SUM(OI.Profit)*1.0 / NULLIF(SUM(OI.Sales),0) AS decimal(10,3))) Over() Avg_Profit_Margin
FROM super.Products P
JOIN super.order_items OI
    ON P.product_id = OI.product_id
GROUP BY P.Product_Name
)

Select * , 
Case 
	when Total_Units_Sold >= AVG_UNits_Sold 
	And Profit_Margin >= Avg_Profit_Margin
	Then 'Star' 

	when Total_Units_Sold >= AVG_UNits_Sold 
	and Profit_Margin < Avg_Profit_Margin 
	Then 'Need Optimization'

    WHEN Total_Units_Sold < Avg_Units_Sold 
    AND Profit_Margin >= Avg_Profit_Margin 
    THEN 'Premium'

    ELSE 'Risk'
End As Product_Category 

From CTE_Data
Order by Product_Category , Total_Units_Sold DESC










