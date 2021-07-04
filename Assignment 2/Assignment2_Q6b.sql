SELECT strftime('%Y', loan1.CheckedOut) AS "Year", strftime('%m', loan2.CheckedOut) AS "Month", COUNT(loan1.LoanID) AS "Number of Loans", SUM(loan1.OverdueFee) AS "Monthly Overdue Fee"
FROM Loan loan1 JOIN Loan loan2 ON loan1.LoanID = loan2.LoanID
WHERE loan1.OverdueFee IS NOT NULL
GROUP BY "Year", "Month"
ORDER BY "Year" ASC, "Month" ASC;