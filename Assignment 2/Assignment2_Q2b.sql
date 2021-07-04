SELECT cust.FirstName || ' ' || cust.LastName AS "Full Name", it.Title, date(loa.DueDate) AS "Due Date", inv.Condition
FROM Customer cust JOIN Item it JOIN Loan loa JOIN InventoryItem inv ON cust.CustomerID = loa.CustomerID AND loa.InventoryItemID = inv.InventoryItemID AND inv.ItemID = it.ItemID
WHERE loa.CheckedIn IS NULL
ORDER BY "Full Name" ASC;