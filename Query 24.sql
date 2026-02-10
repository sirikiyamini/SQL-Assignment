/*SELECT t.title_id
FROM dbo.TITLEAUTHOR t 
JOIN dbo.AUTHORS a 
ON t.au_id=a.au_id 
WHERE a.city='Menlo Park';*/
SELECT DISTINCT ti.title
FROM dbo.TITLEAUTHOR ta
JOIN dbo.AUTHORS a
    ON ta.au_id = a.au_id
JOIN dbo.TITLES ti
    ON ta.title_id = ti.title_id
WHERE a.city = 'Menlo Park';
