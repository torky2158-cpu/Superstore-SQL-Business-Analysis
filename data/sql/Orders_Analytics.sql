



-- Num_Orders_each_years
select
Datename(Year , order_Date) Years  ,
Count(Order_ID) Total_Orders
from super.Orders
Group by Datename(year ,Order_Date)
Order by Years 



-- Select Average shipping time

select * ,  RANK() OVER (ORDER BY Diff_Days DESC) AS Shipping_Rank
FROM (
Select 
Order_ID , 
AVG(DATEDIFF(DAY , Order_Date , Ship_date)) Diff_Days 
from super.Orders
Group By Order_ID
)t
Order By Diff_Days Desc


-- Slowest five orders
Select Top 5 
Order_ID , 
(DATEDIFF(DAY , Order_Date , Ship_date)) Diff_Days 
from super.Orders
Order By Diff_Days Desc



-- Five fastest orders
Select Top 5
Order_ID , 
(DATEDIFF(DAY , Order_Date , Ship_date)) Diff_Days 
from super.Orders
Order By Diff_Days ASC




-- Average shipping time per Ship Mode
Select 
Ship_mode ,
AVG(DATEDIFF(DAY , Order_Date , Ship_date)) Diff_Days  ,
Count(*) Total_Orders
from super.Orders
Group By Ship_mode
Order by Total_Orders ASC




-- Shipping Performance Stability by Ship Mode
Select 
    Ship_mode,
    MIN(DATEDIFF(DAY, Order_Date, Ship_date)) Min_Days,
    MAX(DATEDIFF(DAY, Order_Date, Ship_date)) Max_Days,
    AVG(DATEDIFF(DAY, Order_Date, Ship_date)) Avg_Days
from super.Orders
Group by Ship_mode;





-- Orders Over Time Analysis (Monthly Workload Pressure)
Select * , 
Case
    when Total_Orders >= AVG_Total_Orders * 1.2 then 'Very Compressed'
    when Total_Orders >= AVG_Total_Orders then 'Compressed'
    else 'Normal'
END AS [Orders Over Time]
from (
    Select 
        YEAR(Order_Date) Year_Date ,
        MONTH(Order_Date) Month_Date ,
        Count(*) Total_Orders ,
		Avg(Count(*) ) over() AVG_Total_Orders
    from super.Orders
    Group by YEAR(Order_Date) , MONTH(Order_Date)
) x
Order By Year_Date , Month_Date;








