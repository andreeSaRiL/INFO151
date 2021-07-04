SELECT cust.CustomerID, cust.FirstName || ' ' || cust.LastName AS "Full Name", COUNT(loa.LoanID) AS "Number of Loans", cust.Major
FROM Customer cust JOIN Loan loa ON cust.CustomerID = loa.CustomerID
WHERE cust.Major NOT LIKE '%0'
GROUP BY cust.CustomerID
ORDER BY cust.CustomerID;