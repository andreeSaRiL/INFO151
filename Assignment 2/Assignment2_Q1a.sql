SELECT ID1.Author, COUNT(ID1.ItemID) AS "Total Items Published"
FROM Item ID1 JOIN InventoryItem ID2 ON ID1.ItemID = ID2.ItemID
WHERE (ID1.Author != '%NULL%') 
GROUP BY ID1.Author
ORDER BY "Total Items Published" DESC; 