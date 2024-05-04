SELECT 
    p.Product_Category,
    round(AVG(p.Product_Cost),2) AS Average_Product_Cost
FROM 
    Products p
JOIN 
    Inventory i ON p.Product_ID = i.Product_ID
GROUP BY 
    p.Product_Category;