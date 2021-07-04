SELECT DISTINCT CustomerID, InventoryItemID, OverdueFee
FROM Loan
WHERE OverdueFee IS NULL
ORDER BY CustomerID ASC;