SELECT DISTINCT p.pub_name
FROM dbo.PUBLISHERS p
JOIN dbo.TITLES t
    ON p.pub_id = t.pub_id
JOIN dbo.TITLEAUTHOR ta
    ON t.title_id = ta.title_id
GROUP BY p.pub_name, ta.au_id
HAVING COUNT(ta.title_id) > 2;

