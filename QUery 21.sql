SELECT a.au_fname, t.title
FROM dbo.AUTHORS a
LEFT JOIN dbo.TITLEAUTHOR ta
    ON a.au_id = ta.au_id
LEFT JOIN dbo.TITLES t
    ON ta.title_id = t.title_id;
