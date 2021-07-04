SELECT co.MediaCode, COUNT(au.MediaID) AS "Total Number of Authors"
FROM ITEM au JOIN Media co ON au.MediaID = co.MediaID
WHERE (au.Author != '%NULL%') 
GROUP BY co.MediaCode, au.MediaID