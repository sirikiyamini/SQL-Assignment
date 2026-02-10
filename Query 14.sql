SELECT 
    title,
    REPLACE(REPLACE(title, ' ', '.'), '-', '*') AS modified_title
FROM dbo.TITLES;
