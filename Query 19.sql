SELECT p.pub_name,AVG(t.price) AS avg_price
FROM dbo.TITLES t 
JOIN dbo.PUBLISHERS p 
ON t.pub_id=p.pub_id
GROUP BY p.pub_name;