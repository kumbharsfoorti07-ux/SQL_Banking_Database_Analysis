USE BankingDB;

CREATE VIEW Suspicious_Transactions AS
SELECT
    TransactionID,
    CustomerID,
    TransactionType,
    Amount
FROM Transactions_2
WHERE Amount > 25000;

SELECT * From Transactions_2;

SELECT * FROM Suspicious_Transactions;

INSERT INTO Transactions_2
(TransactionID, accountID,CustomerID, transactiondate, Amount, transactionType)
VALUES
(313, 201, 101, '2025-06-01', 66000.00,'Deposit'),
(314, 202, 102,'2025-06-02', 61000.00,'withdrawal');

CREATE OR REPLACE VIEW Suspicious_Transactions AS
SELECT
t.TransactionID,
CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
c.BranchName,
t.TransactionType,
t.Amount
FROM Transactions_2 t
INNER JOIN Customers_2 c
ON t.CustomerID = c.CustomerID
Where t.Amount > 25000;

select * from suspicious_Transactions;

SELECT
TransactionID,
CustomerName,
BranchName,
TransactionType,
Amount
FROM Suspicious_Transactions
Order by Amount DESC;
