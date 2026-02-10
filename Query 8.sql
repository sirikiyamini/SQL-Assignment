SELECT title_id,COUNT(au_id) AS author_count
FROM dbo.TITLEAUTHOR
GROUP BY title_id;
