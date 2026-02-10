SELECT a.city,COUNT(t.title_id)
FROM dbo.AUTHORS a 
JOIN dbo.TITLEAUTHOR t 
ON a.au_id=t.au_id 
GROUP BY(a.city);