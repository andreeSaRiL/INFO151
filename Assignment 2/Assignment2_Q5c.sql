SELECT DISTINCT cust.FirstName || ' ' || cust.LastName AS "Full Name", cust.CustomerID
FROM Customer cust, Loan loa, InventoryItem inv
WHERE (cust.CustomerID = loa.CustomerID) AND (loa.InventoryItemID = inv.InventoryItemID) AND (inv.InventoryItemID IN ('3', '5'))
ORDER BY "Full Name";