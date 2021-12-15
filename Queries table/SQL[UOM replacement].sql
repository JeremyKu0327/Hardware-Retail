--Check for NULL values in UOM column
SELECT a."Item Code", a."Base UOM", b."Item_id", b."UOM", ISNULL(a."Base UOM", b."UOM")
FROM Item_list a
JOIN Item_Transaction_Listing b
ON b."Item_id" = a."Item Code"
WHERE b."UOM" IS NULL AND b."Item_id" IS NOT NULL;

--Update table replacing null with value (UOM)
UPDATE b
SET UOM = ISNULL(a."Base UOM", b."UOM")
FROM Item_list a
JOIN Item_Transaction_Listing b
ON b."Item_id" = a."Item Code"
WHERE b."UOM" IS NULL AND b."Item_id" IS NOT NULL;

169 changed