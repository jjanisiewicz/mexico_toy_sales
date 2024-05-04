
with profit as 
	(
	select 
		 count(p.Product_ID)								as quantity_of_products 
		 ,st.Store_Name
		 ,p.Product_Name 
		,round((p.Product_Price  - p.Product_Cost), 2 ) 	as  profit 
		,s.Units
		from products p
	join sales s on p.Product_ID = s.Product_ID  
	join stores st on st.Store_ID = s.Store_ID	
	group by 2 ,3 ,4 ,5 
	order by quantity_of_products 
	),
sales as 
   (
	select  
			Store_Name
			,Product_Name
			,quantity_of_products * (profit * units)		as sales_profit
	from profit
	order by quantity_of_products desc 
	)   
	select 
		Store_Name		
		,sum(sales_profit)											as total_profit_per_stores
	from sales
	group by 1 
	order by 2 desc 
    

	






