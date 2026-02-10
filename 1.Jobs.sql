CREATE TABLE dbo.JOBS (
    job_id   SMALLINT NOT NULL,
    job_desc VARCHAR(50),
    min_lvl  TINYINT,
    max_lvl  TINYINT,
    CONSTRAINT PK_JOBS PRIMARY KEY (job_id)
);
SELECT * FROM dbo.JOBS;
