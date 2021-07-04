SELECT cust.Gender AS "Gender", AVG(cust.CustomerID) AS "Number of Customers", COUNT(loa.OverdueFee) "Number of Times Overdue", SUM(loa.OverdueFee) "Total Overdue Fee", ROUND(AVG(med.OverdueFee),2) AS "Overdue Fee Per Customer"
FROM Customer cust JOIN Loan loa JOIN Media med JOIN InventoryItem inv JOIN Item it ON cust.CustomerID = loa.CustomerID AND loa.InventoryItemID = inv.InventoryItemID AND inv.ItemID = it.ItemID AND it.MediaID = med.MediaID
GROUP BY cust.Gender
