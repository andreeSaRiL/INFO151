SELECT COUNT(loan1.InventoryItemID) AS "Total Number of Non-Checked in Items"
FROM Loan loan1 JOIN InventoryItem item1 ON loan1.InventoryItemID = item1.InventoryItemID
WHERE loan1.CheckedIn IS NULL