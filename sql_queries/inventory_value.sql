-- Calculation of the inventory value in individual toy stores
SELECT 
    i.Store_ID
    ,s.Store_Name
    ,round(SUM(p.Product_Cost * i.Stock_On_Hand), 2 ) AS Total_Inventory_Value
FROM 
    Inventory i
JOIN 
    Products p ON i.Product_ID = p.Product_ID
JOIN 
    Stores s ON i.Store_ID = s.Store_ID
GROUP BY 
    i.Store_ID, s.Store_Name;
   

  -- Calculation of how long the inventory will last
   SELECT 
    (SUM(p.Product_Cost * i.Stock_On_Hand)) / (AVG(p.Product_Price)) AS Days_of_Inventory
FROM 
    Inventory i
JOIN 
    Products p ON i.Product_ID = p.Product_ID
JOIN 
    Sales s ON i.Product_ID = s.Product_ID;
    
  
 -- Calculation of the total inventory value  
   SELECT 
    SUM(p.Product_Cost * i.Stock_On_Hand) AS Total_Inventory_Value
FROM 
    Inventory i
JOIN 
    Products p ON i.Product_ID = p.Product_ID;
    
   
   
   
  -- Calculation of the average daily sales cost
   SELECT 
    AVG(Product_Price) AS Average_Daily_Sales_Cost
FROM 
    products
