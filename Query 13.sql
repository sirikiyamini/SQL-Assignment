SELECT state 
FROM dbo.AUTHORS
WHERE au_fname LIKE 's%'
GROUP BY state 
HAVING COUNT(au_id)>2;