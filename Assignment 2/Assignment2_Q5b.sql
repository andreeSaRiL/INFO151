SELECT DISTINCT cust.FirstName || ' ' || cust.LastName "Full Name", cust.CustomerID
FROM Customer cust JOIN Loan loa JOIN InventoryItem inv ON cust.CustomerID = loa.CustomerID AND loa.InventoryItemID = inv.InventoryItemID
WHERE inv.InventoryItemID IN ('3', '5')
GROUP BY cust.CustomerID
HAVING COUNT (cust.CustomerID) = 2;