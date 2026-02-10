SELECT state,COUNT(au_id) AS no_of_authors
FROM dbo.AUTHORS
GROUP BY state
ORDER BY state;
