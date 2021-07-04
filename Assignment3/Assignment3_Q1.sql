SELECT ID AS "MediaID", MAX(Cost) AS "Maximum Total Replacement Cost", MAX(Title) AS "Total Number of Loans"
FROM (
			SELECT I.MediaID AS "ID", COUNT(I.Title) AS "Title", SUM(I.ReplacementCost) AS "Cost"
			FROM Item I JOIN InventoryItem II JOIN Loan L
			ON I.ItemID = II.ItemID AND II.InventoryItemID = L.InventoryItemID
			WHERE L.CheckedIn IS NULL
			GROUP BY I.MediaID)