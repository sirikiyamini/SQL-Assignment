CREATE VIEW dbo.vw_publisher_bookcount
AS
SELECT 
    p.pub_name,
    p.city,
    COUNT(t.title_id) AS no_of_books
FROM dbo.PUBLISHERS p
LEFT JOIN dbo.TITLES t
    ON p.pub_id = t.pub_id
GROUP BY p.pub_name, p.city;
