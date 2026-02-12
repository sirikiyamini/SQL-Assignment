UPDATE dbo.TITLES
SET price = (
    SELECT price
    FROM dbo.TITLES
    WHERE title_id = 'MC2222'
)
WHERE title_id = 'BU1111';
