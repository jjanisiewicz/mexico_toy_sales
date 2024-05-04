with 
profit as
	(
select 
	st.Store_Name 
	,st.Store_Location
	,p.Product_Category
	,s.Units
	,round((p.Product_Price - p.Product_Cost) ,  2 )			as profit
	,count(p.Product_ID)										as prd
from products p
join sales s on s.Product_ID = p.Product_ID 
join stores st on st.Store_ID = s.Store_ID 
group by 1,2,3,4,5
	)
select
	Store_Name
	,Store_Location
	,Product_Category
	,sum(prd * (Units * profit)) 											as total_profit_per_category 
from profit 
group by 1,2,3
