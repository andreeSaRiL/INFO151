SELECT DISTINCT It1.Author AS "Total Number of Authors", COUNT(It2.InventoryItemID) AS "Total Items Published"
FROM ITEM It1 JOIN InventoryItem It2 ON It1.ItemID = It2.ItemID
WHERE (It1.Author != '%NULL%') 
GROUP BY It1.Author
