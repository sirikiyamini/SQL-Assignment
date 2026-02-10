CREATE TABLE dbo.AUTHORS (
    au_id     VARCHAR(11) NOT NULL,
    au_fname  VARCHAR(20),
    au_lname  VARCHAR(40),
    phone     CHAR(12),
    address   VARCHAR(40),
    city      VARCHAR(20),
    state     CHAR(2),
    zip       CHAR(5),
    contract  BIT,
    CONSTRAINT PK_AUTHORS PRIMARY KEY (au_id)
);
SELECT * FROM dbo.AUTHORS;
