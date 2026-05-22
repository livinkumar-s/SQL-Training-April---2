USE student;

-- SELECT * from studentdetails;

CREATE TABLE studentdata (
id int primary key auto_increment,
name varchar(50) not null,
email varchar(100) not null unique,
phone char(10) not null unique,
marks int not null
);

INSERT INTO studentdata (name, email, phone, marks) VALUES
('Alice', 'alice@example.com', '1234567890', 85),
('Bob', 'bob@example.com', '0987654321', 90),
('Charlie', 'charlie@example.com', '1111111111', 75),
('David', 'david@example.com', '2222222222', 80),
('Eve', 'eve@example.com', '3333333333', 88),
('Frank', 'frank@example.com', '4444444444', 92),
('Grace', 'grace@example.com', '5555555555', 85);

	create view teacherView as SELECT name, marks from studentdata;

	select * from teacherview;
    
create table attendance (
id int primary key auto_increment,
percentage float not null,
studentId int not null,
foreign key (studentId) references studentdata(id)
);

insert into attendance (percentage, studentId) values
(90.5, 1),
(85.0, 2),
(92.0, 3),
(88.5, 4),
(91.0, 5),
(89.5, 6),
(87.0, 7);
    


INSERT INTO studentdata (name, email, phone, marks) VALUES
('Heidi', 'heidi@example.com', '6666666666', 95);


select * from studentdata;
select * from attendance;

create view studentStatus as select s.name as studentName,
s.email as emailId, IF(s.marks>75,"pass","fail") as status
 from studentdata s inner join attendance a on a.studentId=s.id;
 
select * from studentstatus;

select @@autocommit;

set autocommit=0;

update attendance set percentage=89 where id=7;
commit;
rollback;
