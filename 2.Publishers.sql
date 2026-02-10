CREATE TABLE dbo.PUBLISHERS (
    pub_id    CHAR(4) NOT NULL,
    pub_name  VARCHAR(40),
    city      VARCHAR(20),
    state     CHAR(2),
    country   VARCHAR(30),
    CONSTRAINT PK_PUBLISHERS PRIMARY KEY (pub_id)
);
SELECT * FROM dbo.PUBLISHERS;

