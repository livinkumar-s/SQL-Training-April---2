use student;
select * from studentdetails;
insert into studentdetails (id, name, age) value (23,"Shruti Haasan",22);

CREATE TABLE cricketer (
id int primary key auto_increment,
name varchar(50) unique not null,
email varchar(50) unique not null,
isActive boolean default 1,
centuries int check(centuries>10)
);

select * from cricketer;


insert into cricketer (name, email, centuries) values 
("Raina", "r@gmailcom", 25),
("Klassan", "HK@gmailcom", 25),
("Jadeja", "jad@gmailcom", 15);


insert into cricketer (name, email, isActive, centuries) values 
("Viv Richards", "viv@example.com",0, 20);

CREATE TABLE CricketerTeam (
id int primary key auto_increment,
team varchar(20) not null,
playerId int not null,
foreign key (playerId) references cricketer(id)
);


INSERT INTO CricketerTeam (team, playerId) VALUES 
("India",9);