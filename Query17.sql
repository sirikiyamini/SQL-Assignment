SELECT 
    MONTH(pubdate) AS publish_month,
    COUNT(title_id) AS no_of_books
FROM dbo.TITLES
GROUP BY MONTH(pubdate)
ORDER BY publish_month;
