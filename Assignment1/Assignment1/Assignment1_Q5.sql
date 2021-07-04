SELECT Author, Title AS "Book Title"
FROM Item
WHERE ("Book Title" != '%-%' AND "Book Title" NOT LIKE '% %')
ORDER BY "Book Title" DESC;