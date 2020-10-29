USE classicmodels;
SELECT lastName FROM employees;
SELECT lastName, firstName, jobTitle FROM employees;
SELECT * FROM employees;
SELECT lastName, firstName, jobTitle, officeCode FROM employees WHERE jobTitle="Sales Rep";
SELECT lastName, firstName, jobTitle, officeCode FROM employees WHERE jobTitle="Sales Rep" AND officeCode=1; 
SELECT lastName, firstName, jobTitle, officeCode FROM employees WHERE jobTitle="Sales Rep" OR officeCode=1; 
SELECT lastName, firstName, officeCode FROM employees WHERE officeCode = 1 OR officeCode = 2 OR officeCode = 3;
SELECT lastName, firstName, jobTitle, officeCode FROM employees WHERE jobTitle != "Sales Rep";
SELECT lastName, firstName, jobTitle, officeCode FROM employees WHERE officeCode > 5;
SELECT lastName, firstName, jobTitle, officeCode FROM employees WHERE officeCode <= 4;
SELECT customerName, country, state FROM customers WHERE country = "USA" AND state = "CA";
SELECT customerName, country, state, creditLimit FROM customers WHERE country = "USA" AND state = "CA" AND creditLimit > 100000;
SELECT customerName, country FROM customers WHERE country = "USA" OR country = "France";
SELECT customerName, country, creditLimit FROM customers  WHERE (country = "USA" OR country = "France" ) AND creditLimit > 100000;
SELECT officeCode,city,phone,country FROM offices WHERE country = "USA" OR country = "France"; 
SELECT officeCode,city,phone,country FROM offices WHERE country != "USA" OR country != "France"; 
SELECT orderNumber, customerNumber, status, shippedDate FROM orders where orderNumber IN (10165,10287,10310);
SELECT contactLastName,contactFirstName FROM customers ORDER BY contactLastName ASC;
SELECT contactLastName,contactFirstName FROM customers ORDER BY contactLastName DESC;
SELECT contactLastName,contactFirstName FROM customers ORDER BY contactFirstName ASC;
SELECT customerNumber,contactFirstName, creditLimit FROM customers ORDER BY creditLimit DESC LIMIT 5;
SELECT customerNumber, contactFirstName, creditLimit FROM customers ORDER BY creditlimit LIMIT 5;


