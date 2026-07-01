USE BankingDB;

SELECT
     TransactionID,
     CustomerID,
     TransactionType,
     Amount
FROM Transactions_2
WHERE Amount > (  
     SELECT AVG(Amount)
     FROM Transactions_2
);

SELECT
    t.TransactionID,
    t.CustomerID,
    (
        SELECT CONCAT(c.FirstName, ' ', c.LastName)
        FROM Customers_2 c
        WHERE c.CustomerID = t.CustomerID
    ) AS CustomerName,
    (
        SELECT c.BranchName
        FROM Customers_2 c
        WHERE c.CustomerID = t.CustomerID
    ) AS BranchName,
    t.TransactionType,
    t.Amount
FROM Transactions_2 t
ORDER BY BranchName, t.CustomerID;

Alter table customers_2
add column BranchName varchar(100);

Select * from Customers_2;

INSERT INTO Customers_2
VALUES (109,'Sfoorti', 'Kumbhar', 'sfoortik02@gmail.com', '1234567894','2025-05-01','1999-06-05','Dadar');

INSERT INTO Transactions_2
(TransactionID, accountID,CustomerID, transactiondate, Amount, transactionType)
VALUES
(311, 201, 109, '2025-06-01', 5000.00,'Deposit'),
(312, 202, 109,'2025-06-02', 11000.00,'withdrawal');

