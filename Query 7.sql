SELECT au_id, COUNT(title_id) AS no_of_books
FROM dbo.TITLEAUTHOR
GROUP BY au_id;
