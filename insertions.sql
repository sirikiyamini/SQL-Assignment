USE pubs;
GO

/* =========================
   JOBS
   ========================= */
INSERT INTO dbo.JOBS (job_id, job_desc, min_lvl, max_lvl) VALUES
(1, 'Editor', 10, 50),
(2, 'Sales Manager', 20, 60),
(3, 'Publisher', 30, 80);
GO


/* =========================
   PUBLISHERS
   ========================= */
INSERT INTO dbo.PUBLISHERS (pub_id, pub_name, city, state, country) VALUES
('0736', 'New Moon Books', 'Boston', 'MA', 'USA'),
('0877', 'Binnet & Hardley', 'Washington', 'DC', 'USA'),
('1389', 'Algodata Infosystems', 'Berkeley', 'CA', 'USA'),
('9999', 'Global Prints', 'London', NULL, 'UK');
GO


/* =========================
   AUTHORS
   ========================= */
INSERT INTO dbo.AUTHORS (au_id, au_fname, au_lname, phone, address, city, state, zip, contract) VALUES
('A001', 'Sarah', 'Stone', '1234567890', 'Street 1', 'Menlo Park', 'CA', '94025', 1),
('A002', 'Sam', 'Taylor', '1234567891', 'Street 2', 'Menlo Park', 'CA', '94025', 1),
('A003', 'John', 'Miller', '1234567892', 'Street 3', 'Boston', 'MA', '02101', 1),
('A004', 'Dean', 'Wilson', '1234567893', 'Street 4', 'Chicago', 'IL', '60007', 0),
('A005', 'Susan', 'Brown', '1234567894', 'Street 5', 'Dallas', 'TX', '75201', 1);
GO


/* =========================
   STORES
   ========================= */
INSERT INTO dbo.STORES (stor_id, stor_name, stor_address, city, state, zip) VALUES
('S001', 'Book World', 'Addr 1', 'Boston', 'MA', '02101'),
('S002', 'Readers Hub', 'Addr 2', 'Dallas', 'TX', '75201');
GO


/* =========================
   TITLES
   ========================= */
INSERT INTO dbo.TITLES
(title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate)
VALUES
('BU1111', 'Business Stats', 'business', '0736', 20.00, 5000, 15, 12000, NULL, '2010-05-10'),
('PS2222', 'Psychology Basics', 'psychology', '0736', 18.00, 4000, 12, 8000, NULL, '2015-07-12'),
('MC2222', 'Modern Cooking', NULL, '0877', 10.00, 3000, 10, 6000, NULL, '2021-03-15'),
('IT3333', 'Intro to IT', 'undecided', '1389', 4.50, 2000, 8, 15000, NULL, '2000-01-01'),
('FI4444', 'Finance Today', 'business', '9999', 25.00, 6000, 20, 20000, NULL, '1991-06-01');
GO


/* =========================
   TITLEAUTHOR
   ========================= */
INSERT INTO dbo.TITLEAUTHOR (au_id, title_id, au_ord, royaltyper) VALUES
('A001', 'BU1111', 1, 50),
('A002', 'BU1111', 2, 50),
('A001', 'PS2222', 1, 100),
('A003', 'MC2222', 1, 100),
('A005', 'IT3333', 1, 100),
('A003', 'FI4444', 1, 60),
('A002', 'FI4444', 2, 40);
GO


/* =========================
   ROYSCHED
   ========================= */
INSERT INTO dbo.ROYSCHED (title_id, lorange, hirange, royalty) VALUES
('BU1111', 0, 5000, 10),
('BU1111', 5001, 20000, 15),
('FI4444', 0, 10000, 20);
GO


/* =========================
   SALES
   ========================= */
INSERT INTO dbo.SALES (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES
('S001', 'ORD001', '2022-01-01', 7000, 'Net 30', 'BU1111'),
('S002', 'ORD002', '2023-01-01', 3000, 'Net 30', 'MC2222'),
('S001', 'ORD003', '2010-06-01', 15000, 'Net 60', 'IT3333');
GO


/* =========================
   DISCOUNTS
   ========================= */
INSERT INTO dbo.DISCOUNTS (discounttype, stor_id, lowqty, highqty, discount) VALUES
('Seasonal', 'S001', 1000, 5000, 0.10),
('Bulk', 'S002', 5000, 20000, 0.20);
GO


/* =========================
   PUB_INFO
   ========================= */
INSERT INTO dbo.PUB_INFO (pub_id, logo, pr_info) VALUES
('0736', NULL, 'Leading business publisher'),
('0877', NULL, 'Classic publishing house');
GO


/* =========================
   EMPLOYEE
   ========================= */
INSERT INTO dbo.EMPLOYEE
(emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date)
VALUES
('E001', 'Alan', 'J', 'Smith', 1, 30, '0736', '2012-01-01'),
('E002', 'Rita', 'K', 'Jones', 2, 40, '0877', '2015-03-15');
GO
