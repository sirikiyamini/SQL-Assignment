CREATE TABLE dbo.TITLES (
    title_id   VARCHAR(6) NOT NULL,
    title      VARCHAR(80),
    type       CHAR(12),
    pub_id     CHAR(4),
    price      MONEY,
    advance    MONEY,
    royalty    INT,
    ytd_sales  INT,
    notes      VARCHAR(200),
    pubdate    DATETIME,
    CONSTRAINT PK_TITLES PRIMARY KEY (title_id),
    CONSTRAINT FK_TITLES_PUBLISHERS
        FOREIGN KEY (pub_id) REFERENCES dbo.PUBLISHERS(pub_id)
);
SELECT * FROM dbo.TITLES;
