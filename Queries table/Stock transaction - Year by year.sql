SELECT a.[Item Code], a.[Item Description], a.[Qty 2019] AS '2019', b.[Qty 2020] AS '2020', c.[Qty 2021] AS '2021', (c.[Qty 2021]-b.[Qty 2020]) AS 'Diff 2020-2021'
FROM dbo.Inventory_2019 a
JOIN dbo.Inventory_2020 b
ON a.[Item Code] = b.[Item Code]
JOIN dbo.Inventory_2021 c
ON c.[Item Code] = b.[Item Code]
WHERE c.[Qty 2021] > 0
AND (c.[Qty 2021]-b.[Qty 2020]) > 0
ORDER BY a.[Item Code];