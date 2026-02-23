SELECT * FROM superstore LIMIT 10;
SELECT SUM(Sales) AS Total_Revenue FROM superstore;

SELECT City, SUM(Sales) AS Total_Sales FROM superstore GROUP BY City ORDER BY Total_Sales DESC LIMIT 5;

SELECT `Customer Name`, SUM(Sales) AS Total_Spent FROM superstore GROUP BY `Customer Name` ORDER BY Total_Spent DESC LIMIT 5;

SELECT * FROM superstore WHERE Profit < 0;

SELECT `Product Name`, SUM(Profit) AS Total_Profit FROM superstore GROUP BY `Product Name` HAVING Total_Profit < 0 ORDER BY Total_Profit;

SELECT Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit FROM superstore GROUP BY Category;

SELECT Region, SUM(Profit) AS Total_Profit FROM superstore GROUP BY Region ORDER BY Total_Profit DESC;

SELECT DATE_FORMAT(`Order Date`, '%Y-%m') AS Month,  SUM(Sales) AS Monthly_Sales FROM superstore GROUP BY Month ORDER BY Month;

SELECT Discount, AVG(Profit) AS Avg_Profit FROM superstore GROUP BY Discount ORDER BY Discount;

SELECT `Sub-Category`, SUM(Profit) AS Total_Profit FROM superstore GROUP BY `Sub-Category` ORDER BY Total_Profit DESC;
