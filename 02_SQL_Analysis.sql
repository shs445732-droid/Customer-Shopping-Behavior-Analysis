SELECT COUNT(*) AS Total_Records
FROM Customer_Shopping_Data;
USE Customer_Shopping;

-- 1. Total number of records
SELECT COUNT(*) AS Total_Records
FROM Customer_Shopping_Data;

-- 2. Check for duplicate Customer IDs
SELECT `Customer ID`, COUNT(*) AS Record_Count
FROM Customer_Shopping_Data
GROUP BY `Customer ID`
HAVING COUNT(*) > 1;

-- 3. Check missing Review Ratings
SELECT COUNT(*) AS Missing_Review_Rating
FROM Customer_Shopping_Data
WHERE `Review Rating` IS NULL;

-- 4. Check Age range
SELECT 
    MIN(`Age`) AS Minimum_Age,
    MAX(`Age`) AS Maximum_Age
FROM Customer_Shopping_Data;

-- 5. Check Purchase Amount range
SELECT 
    MIN(`Purchase Amount (USD)`) AS Minimum_Purchase,
    MAX(`Purchase Amount (USD)`) AS Maximum_Purchase
FROM Customer_Shopping_Data;

-- 6. Check Review Rating range
SELECT 
    MIN(`Review Rating`) AS Minimum_Rating,
    MAX(`Review Rating`) AS Maximum_Rating
FROM Customer_Shopping_Data;


SELECT 
    SUM(`Purchase Amount (USD)`) AS Total_Sales
FROM Customer_Shopping_Data;
SELECT 
    AVG(`Purchase Amount (USD)`) AS Average_Purchase_Amount
FROM Customer_Shopping_Data;
SELECT 
    `Gender`,
    COUNT(*) AS Number_of_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Sales,
    AVG(`Purchase Amount (USD)`) AS Average_Purchase
FROM Customer_Shopping_Data
GROUP BY `Gender`;
SELECT 
    `Category`,
    COUNT(*) AS Number_of_Purchases,
    SUM(`Purchase Amount (USD)`) AS Total_Sales,
    AVG(`Purchase Amount (USD)`) AS Average_Purchase
FROM Customer_Shopping_Data
GROUP BY `Category`
ORDER BY Total_Sales DESC;
SELECT 
    `Season`,
    COUNT(*) AS Number_of_Purchases,
    SUM(`Purchase Amount (USD)`) AS Total_Sales,
    AVG(`Purchase Amount (USD)`) AS Average_Purchase
FROM Customer_Shopping_Data
GROUP BY `Season`
ORDER BY Total_Sales DESC;
SELECT 
    `Location`,
    COUNT(*) AS Number_of_Purchases,
    SUM(`Purchase Amount (USD)`) AS Total_Sales
FROM Customer_Shopping_Data
GROUP BY `Location`
ORDER BY Total_Sales DESC;
SELECT 
    `Item Purchased`,
    COUNT(*) AS Number_of_Purchases,
    SUM(`Purchase Amount (USD)`) AS Total_Sales
FROM Customer_Shopping_Data
GROUP BY `Item Purchased`
ORDER BY Number_of_Purchases DESC
LIMIT 10;
SELECT 
    `Payment Method`,
    COUNT(*) AS Number_of_Purchases,
    SUM(`Purchase Amount (USD)`) AS Total_Sales
FROM Customer_Shopping_Data
GROUP BY `Payment Method`
ORDER BY Number_of_Purchases DESC;
SELECT 
    `Subscription Status`,
    COUNT(*) AS Number_of_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Sales,
    AVG(`Purchase Amount (USD)`) AS Average_Purchase
FROM Customer_Shopping_Data
GROUP BY `Subscription Status`;
SELECT 
    `Discount Applied`,
    COUNT(*) AS Number_of_Purchases,
    SUM(`Purchase Amount (USD)`) AS Total_Sales,
    AVG(`Purchase Amount (USD)`) AS Average_Purchase
FROM Customer_Shopping_Data
GROUP BY `Discount Applied`;
SELECT 
    `Promo Code Used`,
    COUNT(*) AS Number_of_Purchases,
    SUM(`Purchase Amount (USD)`) AS Total_Sales,
    AVG(`Purchase Amount (USD)`) AS Average_Purchase
FROM Customer_Shopping_Data
GROUP BY `Promo Code Used`;
SELECT 
    `Frequency of Purchases`,
    COUNT(*) AS Number_of_Customers,
    AVG(`Purchase Amount (USD)`) AS Average_Purchase
FROM Customer_Shopping_Data
GROUP BY `Frequency of Purchases`
ORDER BY Average_Purchase DESC;
SELECT 
    ROUND(AVG(`Review Rating`), 2) AS Average_Rating
FROM Customer_Shopping_Data;
SELECT
    MIN(`Previous Purchases`) AS Minimum_Previous_Purchases,
    MAX(`Previous Purchases`) AS Maximum_Previous_Purchases,
    AVG(`Previous Purchases`) AS Average_Previous_Purchases
FROM Customer_Shopping_Data;
