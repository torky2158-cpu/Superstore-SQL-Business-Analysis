
-- Check Spaces
Select * from super.Products
where 
	Category is Null OR
	Sub_Category is null Or
	Product_name <> TRIM(Product_name)



-- Check Duplicate in Prooduct_id
Select * from(
Select 
	product_id ,
	COUNT(*) Dplicate_ID
from super.Products
Group by product_id) x
Where Dplicate_ID >1




-- Product name repetition check: no true duplicates found.
Select 
LOWER(Product_name) ,
COUNT(*)
from super.Products
Group by Lower(Product_name)
Having COUNT(*) >1

-- Repeated names correspond to distinct Product_IDs (different SKUs

Select 
LOWER(Product_name) ,
COUNT(Distinct product_id)
from super.Products
Group by Lower(Product_name)
Having COUNT(Distinct product_id) >1



-- Check Logic Between Category and sub_Category
SELECT Category, Sub_Category, COUNT(*)
FROM super.Products
GROUP BY Category, Sub_Category
ORDER BY Category;


-- Check Length of Product_Name
SELECT Product_name, LEN(Product_name) Len_Name
FROM super.Products
ORDER BY LEN(Product_name);


-- Check Category Name
SELECT DISTINCT Category 
FROM super.Products;


-- Check Sub_Category Name
SELECT DISTINCT Sub_Category 
FROM super.Products;

