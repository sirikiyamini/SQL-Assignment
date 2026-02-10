SELECT title
FROM dbo.TITLES
WHERE ytd_sales > 5000
AND royalty < 20;
