USE BankingDB;
INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth)
VALUES
(101, 'Rahul', 'Sharma', 'rahul.sharma@gmail.com', '9876642015', '2025-04-15', '1998-07-12'),
(102, 'Priya', 'Patil', 'priya@gmail.com', '9988776655', '2025-05-03', '2000-09-20'),
(103, 'Amit', 'Joshi', 'amit@gmail.com', '9123456780', '2025-06-01', '1995-03-15'),
(104, 'Sneha', 'Kulkarni', 'sneha@gmail.com', '9345678912', '2025-06-02', '1999-11-25'),
(105, 'Rohit', 'Verma', 'rohit@gmail.com', '9345678912', '2025-06-03', '1997-08-10');

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(201, 101, 'Savings', 25000.00),
(202, 102, 'Current', 40000.00),
(203, 103, 'Salary', 30000.00),
(204, 104, 'Savings', 15000.00),
(205, 105, 'Current', 55000.00);

INSERT INTO Transactions
(TransactionID, AccountID, TransactionDate, Amount, TransactionType)
VALUES
(301, 201, '2025-05-01', 5000.00, 'Deposit'),
(302, 201, '2025-05-02', 2000.00, 'Withdrawal'),
(303, 202, '2025-05-03', 8000.00, 'Deposit'),
(304, 202, '2025-05-04', 3000.00, 'Transfer'),
(305, 201, '2025-05-05', 7000.00, 'Deposit');

UPDATE Customers
SET Phone = '9999999999'
WHERE CustomerID = 101;

UPDATE Customers
SET Phone = '9999999999'
WHERE CustomerID = 101;

UPDATE Customers
SET Phone = '9999999999'
WHERE CustomerID = 101;

SELECT * FROM Customers
WHERE CustomerID = 102;

DELETE FROM Transactions
WHERE TransactionID = 302;


SELECT * FROM Transactions;
DESC transactions

SELECT * FROM Customers;

SELECT FirstName, LastName, Email, Phone
FROM Customers;

SELECT *
FROM Accounts
WHERE AccountType = 'Savings';

SELECT *
FROM Accounts
WHERE Balance > 25000;

SELECT *
FROM Transactions
WHERE Amount BETWEEN 5000 AND 20000;

SELECT *
FROM Customers
WHERE CustomerID IN (101,102,103);

SELECT *
FROM Customers
WHERE FirstName LIKE 'R%';

SELECT *
FROM Customers
ORDER BY FirstName ASC;

SELECT *
FROM Accounts
ORDER BY Balance DESC;

SELECT DISTINCT AccountType
FROM Accounts;

SELECT *
FROM Accounts
ORDER BY Balance DESC
LIMIT 3;

SELECT *
FROM Transactions
LIMIT 5 OFFSET 2;

SELECT *
FROM Customers
WHERE Phone IS NULL;

SELECT *
FROM Customers
WHERE Email IS NOT NULL;

SELECT AccountID,
       Balance,
       CASE
           WHEN Balance >= 50000 THEN 'Premium Account'
           WHEN Balance >= 25000 THEN 'Standard Account'
           ELSE 'Basic Account'
       END AS AccountCategory
FROM Accounts;

SELECT AccountID,
       Balance,
       RANK() OVER (ORDER BY Balance DESC) AS BalanceRank
FROM Accounts;

SELECT TransactionID,
       Amount,
       SUM(Amount) OVER (ORDER BY TransactionDate) AS RunningTotal
FROM Transactions;

SELECT TransactionID,
       Amount,
       AVG(Amount) OVER () AS AverageTransaction
FROM Transactions;



