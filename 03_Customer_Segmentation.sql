ALTER TABLE Customer_Shopping_Data
ADD COLUMN `Customer Segment` VARCHAR(20);
UPDATE Customer_Shopping_Data
SET `Customer Segment` =
    CASE
        WHEN `Previous Purchases` BETWEEN 1 AND 10
            THEN 'New Customer'
        WHEN `Previous Purchases` BETWEEN 11 AND 30
            THEN 'Regular Customer'
        WHEN `Previous Purchases` BETWEEN 31 AND 50
            THEN 'Loyal Customer'
    END;
    SELECT
    `Customer Segment`,
    COUNT(*) AS Number_of_Customers,
    SUM(`Purchase Amount (USD)`) AS Total_Sales,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS Average_Purchase
FROM Customer_Shopping_Data
GROUP BY `Customer Segment`
ORDER BY Total_Sales DESC;
