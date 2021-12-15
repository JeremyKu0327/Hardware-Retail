--Check Cost Price and Sell Price
SELECT a.Date, a.Item_id, a."Description", a.[ Unit_cost_price ], a.[ Unit_sell_price ], a.Magin_profit_loss, b.Item_ID, b.Item_Desc, b.Selling_price
FROM JIS_Hardware.dbo.Item_Trans_Listing a
JOIN JIS_Hardware.dbo.Item_List b
ON a.Item_id = b.Item_ID
WHERE a.Doc_cancelled_stat LIKE 'Unchecked'
AND a.[ Unit_cost_price ] = b.Cost_price
AND a.[ Unit_sell_price ] <> b.Selling_price
AND b.Selling_price IS NOT NULL
AND a.Magin_profit_loss < 0
ORDER BY a.Date DESC;