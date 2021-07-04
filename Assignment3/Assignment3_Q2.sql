SELECT count(DISTINCT(C.CustomerID)) AS "Total Number of Students",
			(SELECT AVG(L.OverdueFee) 
			FROM Customer C JOIN Loan L
			ON C.CustomerID = L.CustomerID
			WHERE C.FirstName = 'Soing' AND C.LastName = 'Kim') AS "Kim Average Overdue Fee"
FROM Customer C JOIN Loan L
ON C.CustomerID = L.CustomerID
WHERE L.OverdueFee < 2 * "Kim Average Overdue Fee"