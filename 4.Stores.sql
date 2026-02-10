CREATE TABLE dbo.STORES (
    stor_id       CHAR(4) NOT NULL,
    stor_name     VARCHAR(40),
    stor_address  VARCHAR(40),
    city          VARCHAR(20),
    state         CHAR(2),
    zip           CHAR(5),
    CONSTRAINT PK_STORES PRIMARY KEY (stor_id)
);
SELECT * FROM dbo.STORES;
