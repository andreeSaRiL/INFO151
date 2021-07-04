SELECT Title, MediaID
FROM Item
WHERE (Title LIKE '%.NET%' OR '%iOS%') AND (MediaID = 3 OR MediaID = 4)
ORDER BY Title ASC;