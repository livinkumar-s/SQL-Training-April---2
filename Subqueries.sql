use student;

CREATE TABLE studentMarks (
studId int primary key auto_increment,
name varchar(30) not null,
mark int not null,
dept varchar(20)
);

Insert into studentMarks (name, mark, dept) values
('Alice', 85, 'Computer Science'),
('Bob', 90, 'Mathematics'),
('Charlie', 78, 'Physics'),
('David', 92, 'Computer Science'),
('Eve', 88, 'Mathematics'),
('Frank', 80, 'Physics'),
('Grace', 95, 'Computer Science'),
('Heidi', 82, 'Mathematics'),
('Ivan', 87, 'Physics'),
('Judy', 91, 'Computer Science'),
('Karl', 89, 'Mathematics'),
('Leo', 84, 'Physics'),
('Mallory', 93, 'Computer Science'),
('Nina', 86, 'Mathematics'),
('Oscar', 79, 'Physics'),
('Peggy', 94, 'Computer Science'),
('Quentin', 81, 'Mathematics'),
('Ruth', 83, 'Physics'),
('Sam', 90, 'Computer Science'),
('Trudy', 88, 'Mathematics'),
('Uma', 85, 'Physics'),
('Victor', 92, 'Computer Science'),
('Walter', 87, 'Mathematics'),
('Xavier', 80, 'Physics'),
('Yvonne', 89, 'Computer Science'),
('Zara', 91, 'Mathematics');


select * from studentmarks;
select avg(mark) from studentmarks;

select * from studentmarks where mark>(select avg(mark) from studentmarks);

SELECT mark from studentmarks where dept="Computer Science";

SELECT * from studentmarks where 
mark> ANY (SELECT mark from studentmarks where dept="Computer Science");

SELECT * from studentmarks where 
mark in (SELECT mark from studentmarks where dept="Computer Science") AND
dept <> "Computer Science";

select * from studentmarks s1 where 
mark> (select avg(mark) from studentmarks where dept=s1.dept);

select avg(mark) from studentmarks where dept="Physics";

select avg(price) from product;

select name, price, 
(select avg(price) from product where category=p.category) as avgPrice FROM product p;

