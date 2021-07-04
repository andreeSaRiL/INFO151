SELECT FirstName, LastName
FROM Customer
WHERE (LastName NOT LIKE '%a%') AND (FirstName NOT LIKE '%e%')
ORDER BY LastName ASC;