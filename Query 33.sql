SELECT title
FROM dbo.TITLES
WHERE pub_id IN (
    SELECT pub_id
    FROM dbo.TITLES
    WHERE YEAR(pubdate) = 2021
);
