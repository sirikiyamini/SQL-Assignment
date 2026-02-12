CREATE VIEW dbo.vw_title_details
AS
SELECT 
    t.title,
    p.pub_name AS publisher,
    YEAR(t.pubdate) AS publish_year,
    ISNULL(t.price, 0) AS price,
    ISNULL(t.type, 'Unknown') AS type
FROM dbo.TITLES t
JOIN dbo.PUBLISHERS p
    ON t.pub_id = p.pub_id;
