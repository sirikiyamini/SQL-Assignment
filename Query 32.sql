SELECT title, pubdate
FROM dbo.TITLES
WHERE pubdate >= DATEADD(YEAR, -25, GETDATE());
