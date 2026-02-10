USE pubs;
GO

CREATE TABLE dbo.ROYSCHED (
    title_id  VARCHAR(6) NOT NULL,
    lorange   INT,
    hirange   INT,
    royalty   INT,
    CONSTRAINT FK_ROYSCHED_TITLES
        FOREIGN KEY (title_id) REFERENCES dbo.TITLES(title_id)
);
SELECT * FROM dbo.ROYSCHED;
