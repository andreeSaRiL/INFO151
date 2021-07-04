DELETE FROM Loan 
WHERE EXISTS (SELECT *
						FROM InventoryItem I 
						WHERE I.Status = 'Lost' AND Loan.CheckedIn IS NULL
						)
