with 
trends as 
	(
select 
	monthname(s_date)		as month 
	,count(Product_ID) 		as products 
from sales 
group by 1
order by 2 desc 
	),
products as 
	(
select 
	month 
	,products
	,sum(products)	over ()		as total_products
from trends
group by 1,2 
	)
select 
		month
		,products 
		,total_products
	 	,round((products / total_products) * 100 , 2 ) 		as percetenge
from products 