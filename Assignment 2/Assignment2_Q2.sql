SELECT co.MediaCode, au.MediaID AS "Total Number of Authors"
FROM ITEM au JOIN Media co ON au.MediaID = co.MediaID
WHERE (au.Author != '%NULL%')