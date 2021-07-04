SELECT Title, PubYear AS "YearPublished",  ReplacementCost AS "ReplacementCost(OLD)", 
(ReplacementCost * 1.10) AS "ReplacementCost(NEW)", round("ReplacementCost(OLD)",1) AND round("ReplacementCost(NEW)",1)
FROM Item
WHERE ("YearPublished" BETWEEN 2013 AND 2015) 
ORDER BY "YearPublished" DESC;