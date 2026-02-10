SELECT LEFT(title,CHARINDEX(' ',title)-1) AS titles
FROM dbo.TITLES;