DELETE FROM dbo.TITLEAUTHOR
WHERE au_id IN (
    SELECT au_id
    FROM dbo.AUTHORS
    WHERE au_fname = 'Dean'
);
