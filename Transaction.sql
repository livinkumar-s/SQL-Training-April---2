use student;
SELECT @@autocommit;
select * from product;

UPDATE product set price=1000.99 where proId=1;

CREATE TABLE bankAccount (
    accountId INT PRIMARY KEY auto_increment,
    name VARCHAR(50),   
    balance DECIMAL(10, 2)
);

Insert into bankAccount(name, balance) values('Alice', 5000.00),
('Bob', 3000.00),
('Charlie', 7000.00),
('David', 2000.00),
('Eve', 6000.00),
('Frank', 4000.00),
('Grace', 8000.00),
('Heidi', 9000.00),
('Ivan', 1000.00),
('Judy', 11000.00);

SELECT * FROM bankaccount;

START transaction;
update bankAccount set balance=balance-500 where accountId=1;
update bankAccount set balance=balance+500 where accountId=2;
savepoint firstTransfer;
update bankAccount set balance=balance-1000 where accountId=3;
update bankAccount set balance=balance+1000 where accountId=4;
savepoint secondTransfer;
ROLLBACK;
rollback to firstTransfer;
COMMIT;
