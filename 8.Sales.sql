USE pubs;
GO

CREATE TABLE dbo.SALES (
    stor_id   CHAR(4) NOT NULL,
    ord_num   VARCHAR(20) NOT NULL,
    ord_date  DATETIME,
    qty       SMALLINT,
    payterms  VARCHAR(12),
    title_id  VARCHAR(6) NOT NULL,
    CONSTRAINT PK_SALES 
        PRIMARY KEY (stor_id, ord_num, title_id),
    CONSTRAINT FK_SALES_STORES
        FOREIGN KEY (stor_id) REFERENCES dbo.STORES(stor_id),
    CONSTRAINT FK_SALES_TITLES
        FOREIGN KEY (title_id) REFERENCES dbo.TITLES(title_id)
);
SELECT * FROM dbo.SALES;
