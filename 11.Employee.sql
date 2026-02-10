USE pubs;
GO

CREATE TABLE dbo.EMPLOYEE (
    emp_id    CHAR(9) NOT NULL,
    fname     VARCHAR(20),
    minit     CHAR(1),
    lname     VARCHAR(30),
    job_id    SMALLINT,
    job_lvl   TINYINT,
    pub_id    CHAR(4),
    hire_date DATETIME,
    CONSTRAINT PK_EMPLOYEE PRIMARY KEY (emp_id),
    CONSTRAINT FK_EMPLOYEE_JOBS
        FOREIGN KEY (job_id) REFERENCES dbo.JOBS(job_id),
    CONSTRAINT FK_EMPLOYEE_PUBLISHERS
        FOREIGN KEY (pub_id) REFERENCES dbo.PUBLISHERS(pub_id)
);
SELECT * FROM dbo.EMPLOYEE;
