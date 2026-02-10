USE pubs;
GO

CREATE TABLE dbo.DISCOUNTS (
    discounttype VARCHAR(40),
    stor_id      CHAR(4),
    lowqty       SMALLINT,
    highqty      SMALLINT,
    discount     DECIMAL(4,2),
    CONSTRAINT FK_DISCOUNTS_STORES
        FOREIGN KEY (stor_id) REFERENCES dbo.STORES(stor_id)
);
SELECT * FROM dbo.DISCOUNTS;
