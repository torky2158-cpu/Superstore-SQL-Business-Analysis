-- Check That no spaces before or after Customer_name
Update super.Customer
SET Customer_Name = TRIM(Customer_Name),
    Segment = TRIM(Segment),
    Country = TRIM(Country);



-- check the nulls in Customer
select * from super.Customer
where Segment is null or Customer_name is null or Country is null




-- check that No Dplicate
select customer_id , COUNT(*)
from super.Customer
Group by Customer_id
Having COUNT(*) >1