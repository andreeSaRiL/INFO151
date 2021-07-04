SELECT ItemID, Title, PubYear
FROM Item
WHERE (PubYear % 2 != 0 AND PubYear != 2013)
ORDER BY PubYear ASC;