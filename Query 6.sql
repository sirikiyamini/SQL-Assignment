SELECT 
 MAX(royalty)-MIN(royalty) as royalitydifference
FROM dbo.TITLES 
WHERE pub_id='0877';