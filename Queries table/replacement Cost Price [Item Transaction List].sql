--Check for NULL values in Cost Price [Item Transaction List] column
SELECT a."Item_id", a.[ Unit_cost_price ], b."Item_ID", b."Cost_price", ISNULL(a.[ Unit_cost_price ], b."Cost_price")
FROM Item_Trans_List a
JOIN Item_list b
ON a."Item_id" = b."Item_ID"
WHERE a.[ Unit_cost_price ] IS NULL AND a."Item_id" IS NOT NULL AND b."Cost_price" IS NOT NULL;

--Update table replacing null with value (Cost Price [Item Transaction List])
UPDATE a
SET a.[ Unit_cost_price ] = ISNULL(a.[ Unit_cost_price ], b."Cost_price")
FROM Item_Trans_List a
JOIN Item_list b
ON a."Item_id" = b."Item_ID"
WHERE a.[ Unit_cost_price ] IS NULL AND a."Item_id" IS NOT NULL AND b."Cost_price" IS NOT NULL;