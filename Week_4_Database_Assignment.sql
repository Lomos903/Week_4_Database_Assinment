
-- WEEK 4 DATABASE ASSIGNMENT
-- ADVANCED SQL QUERIES AND AGGREGATIONS

-- Select the sales database
USE sales;

-- QUESTION 1:
-- Total payment amount for each payment date
SELECT paymentDate, SUM(amount) AS totalAmount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- QUESTION 2:
-- Average credit limit of each customer
SELECT customerName, country,
       AVG(creditLimit) AS averageCreditLimit
FROM customers
GROUP BY customerName, country;

-- QUESTION 3:
-- Total price of products ordered
SELECT productCode,
       quantityOrdered,
       SUM(quantityOrdered * priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- QUESTION 4:
-- Highest payment amount for each check number
SELECT checkNumber,
       MAX(amount) AS highestAmount
FROM payments
GROUP BY checkNumber;
