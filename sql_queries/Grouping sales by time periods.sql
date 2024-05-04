 -- Grouping by day  

SELECT DATE(s_date ) AS Transaction_Date, SUM(Units) AS Total_Units_Sold
FROM Sales
GROUP BY DATE(s_date);

-- Grouping by month

SELECT EXTRACT(MONTH FROM s_date) AS Transaction_Month, SUM(Units) AS Total_Units_Sold
FROM Sales
GROUP BY EXTRACT(MONTH FROM s_date);


-- Grouping by year 

SELECT EXTRACT(year FROM s_date) AS Transaction_Month, SUM(Units) AS Total_Units_Sold
FROM Sales
GROUP BY EXTRACT(YEAR FROM s_date);