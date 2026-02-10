SELECT title,ytd_sales
FROM dbo.TITLES 
WHERE pub_id='0736'
ORDER BY ytd_sales ASC;