-- Task: Basic SQL SELECT (Veda Technology - Data Analytics Track)
-- Dataset: Chinook | Works on PostgreSQL and MySQL
-- Author: Sneha Dubey

-- Q1: Select specific columns
-- View name, country and email of all customers (SELECT with chosen columns).
SELECT customerid, firstname, lastname, country, email
FROM customer;

-- Q2: Unique values with DISTINCT + ORDER BY
-- List every country where customers live, sorted A to Z.
SELECT DISTINCT country
FROM customer
ORDER BY country;

-- Q3: Simple WHERE filter
-- Find all customers who live in Brazil.
SELECT customerid, firstname, lastname, city, email
FROM customer
WHERE country = 'Brazil';

-- Q4: WHERE with IN + multi-column ORDER BY
-- Customers from Canada, France or Germany, sorted by country and then last name.
SELECT firstname, lastname, city, country
FROM customer
WHERE country IN ('Canada', 'France', 'Germany')
ORDER BY country, lastname;

-- Q5: IS NOT NULL
-- Customers who have a company name recorded, sorted by company.
SELECT firstname, lastname, company, country
FROM customer
WHERE company IS NOT NULL
ORDER BY company;

-- Q6: Pattern search with LIKE
-- Tracks whose name contains the word 'love' (case-insensitive using LOWER).
SELECT trackid, name, composer, unitprice
FROM track
WHERE LOWER(name) LIKE '%love%'
ORDER BY trackid;

-- Q7: WHERE + ORDER BY DESC + LIMIT
-- Top 10 longest tracks (longer than 5 minutes), duration shown in minutes.
SELECT name, ROUND(milliseconds / 60000.0, 2) AS minutes
FROM track
WHERE milliseconds > 300000
ORDER BY milliseconds DESC
LIMIT 10;

-- Q8: BETWEEN + ORDER BY
-- Invoices with total between 10 and 15, highest total first.
SELECT invoiceid, customerid, invoicedate, billingcountry, total
FROM invoice
WHERE total BETWEEN 10 AND 15
ORDER BY total DESC, invoiceid;

-- Q9: Multiple conditions with AND (date range)
-- USA invoices billed during the year 2010, latest first.
SELECT invoiceid, customerid, invoicedate, billingcity, total
FROM invoice
WHERE billingcountry = 'USA'
  AND invoicedate >= '2010-01-01'
  AND invoicedate <  '2011-01-01'
ORDER BY invoicedate DESC;

-- Q10: WHERE + LIKE + ORDER BY on dates
-- Sales-related employees ordered by hire date (oldest first).
SELECT employeeid, firstname, lastname, title, hiredate
FROM employee
WHERE title LIKE 'Sales%'
ORDER BY hiredate;

