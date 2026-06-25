USE BankingDB;
 
Select SUM(Balance) as Total_Balance From Accounts
 
Select SUM(Balance) as Total_Balance From Accounts
Where AccountType = "Saving";

Select avg(Balance) as Average_Balance from Accounts;

Select max(Balance) as Highest_Balance from accounts;

Select min(Balance) as Lowest_Balance from Accounts;

Select Count(*) as Total_Customer from Customers;

Select AccountType,Sum(Balance) as Total_Balance from Accounts Group By AccountType;

Select AccountType, max(Balance) as Total_Balance from Accounts Group By AccountType;

Select AccountType , Balance from Accounts
where Balance >=25000;

Select AccountType , sum(balance) as Total_Balance from Accounts
group by AccountType
having SUM(BALANCE) > 25000;




