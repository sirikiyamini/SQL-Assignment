SELECT DISTINCT p.pub_name
FROM dbo.PUBLISHERS p
JOIN dbo.TITLES t
    ON p.pub_id = t.pub_id
WHERE YEAR(t.pubdate) = 1991;
