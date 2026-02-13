SELECT 
    t.title,
    p.pub_name,
    a.au_fname AS author_name
FROM dbo.TITLES t
JOIN dbo.PUBLISHERS p
    ON t.pub_id = p.pub_id
JOIN dbo.TITLEAUTHOR ta
    ON t.title_id = ta.title_id
JOIN dbo.AUTHORS a
    ON ta.au_id = a.au_id
WHERE ta.au_ord = 1;
