SELECT t.title
FROM dbo.TITLES t
JOIN dbo.PUBLISHERS p
    ON t.pub_id = p.pub_id
WHERE p.country <> 'USA';
