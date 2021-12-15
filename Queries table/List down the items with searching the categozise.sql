--List down the items with searching the categozise
SELECT Item_ID, Item_Desc, Cost_price, Selling_price
FROM dbo.Item_List
WHERE SUBSTRING(Item_ID, 1, 3) LIKE 'RAG%'
ORDER BY Item_ID;
