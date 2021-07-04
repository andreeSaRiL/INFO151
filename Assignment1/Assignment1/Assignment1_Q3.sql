SELECT Author, Title, MediaID
FROM Item
WHERE (Title != '%.NET%') AND (MediaID != 1 OR MediaID != 2 OR MediaID != 6)
ORDER BY Author ASC;