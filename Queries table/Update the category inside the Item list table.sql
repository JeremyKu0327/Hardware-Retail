
--Update the category inside the Item list table
UPDATE b
SET "Category" = ISNULL(a."Category", b."Category")
FROM dbo.Category a
JOIN dbo.Item_list b
ON SUBSTRING(b."Item_ID", 1, 3) = a.Category
WHERE b."Item_ID" IS NOT NULL;