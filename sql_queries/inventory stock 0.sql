SELECT 
    p.Product_ID,
    p.Product_Name,
    p.Product_Category,
    i.Store_ID,
    s.Store_Name,
    s.Store_City,
    i.Stock_On_Hand
FROM 
    Products p
JOIN 
    Inventory i ON p.Product_ID = i.Product_ID
JOIN 
    Stores s ON i.Store_ID = s.Store_ID
WHERE 
    i.Stock_On_Hand = 0;