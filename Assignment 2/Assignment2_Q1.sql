SELECT DISTINCT Author, ItemID AS "Total Items Published"
FROM Item
WHERE (Author != '%NULL%')
ORDER BY "Total Items Published" DESC; 