SELECT cust.FirstName || ' ' || cust.LastName "Full Name", inv.InventoryItemID
FROM Customer cust JOIN Loan loa JOIN InventoryItem inv ON cust.CustomerID = loa.CustomerID AND loa.InventoryItemID = inv.InventoryItemID
WHERE inv.InventoryItemID IN ('3', '5');