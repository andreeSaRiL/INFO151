UPDATE Loan
SET DueDate = datetime(DueDate, "+7 days", "+7 hours", "+7 minutes")
WHERE LoanID IN ( 
					SELECT LoanID
					FROM Customer C JOIN Loan L JOIN InventoryItem II JOIN Item I JOIN Media M 
					ON C.CustomerID = L.CustomerID AND L.InventoryItemID = II.InventoryItemID 
					AND II.ItemID = I.ItemID AND I.MediaID = M.MediaID
					WHERE C.Major = "INFO" AND CheckedIn IS NULL AND MediaCode = "FD")