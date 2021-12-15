-- Find the trend sales by categorize in 2021
SELECT year(a.Date) AS 'Year', SUBSTRING(a.Item_ID, 1, 3) AS 'Category of product', COUNT(SUBSTRING(a.Item_ID, 1, 3)) AS 'Quantity of sold', SUM(a.[ Total_price ] ) AS 'Sales (RM)', AVG(a.Magin_profit_loss) AS 'Margin Profit'
FROM dbo.Item_Trans_Listing a, dbo.Item_List b
WHERE SUBSTRING(a.Item_ID, 1, 3) = SUBSTRING(b.Item_ID, 1, 3)
GROUP BY SUBSTRING(a.Item_ID, 1, 3), year(a.Date)
ORDER BY year(a.Date), SUBSTRING(a.Item_ID, 1, 3)
