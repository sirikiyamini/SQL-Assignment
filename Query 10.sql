SELECT title 
FROM dbo.TITLES
WHERE ytd_sales>=10000 AND ytd_sales<=20000
ORDER BY price;