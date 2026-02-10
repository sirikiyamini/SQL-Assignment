SELECT p.city,MAX(t.price) AS max_price
FROM dbo.PUBLISHERS p 
JOIN dbo.TITLES t 
ON p.pub_id=t.pub_id
GROUP BY(p.city);