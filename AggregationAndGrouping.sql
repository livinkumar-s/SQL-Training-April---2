use student;

select name, mod(centuries,2) from cricketer;
select * from cricketer;

create table product (
proId int primary key auto_increment,
name varchar(30) not null unique,
price float not null,
category varchar(10)
);

insert into product (name, price, category) values
('Laptop', 999.99, 'Gadget'),
('Smartphone', 499.99, 'Gadget'),
('Table', 199.99, 'Furniture'),
('Chair', 89.99, 'Furniture'),
('Headphones', 199.99, 'Gadget'),
("Bread", 2.99, "Grocery"),
("Milk", 1.99, "Grocery"),
("Eggs", 3.49, "Grocery"),
("Sofa", 899.99, "Furniture"),
("Camera", 299.99, "Gadget"),
("Bookshelf", 149.99, "Furniture"),
("Smartwatch", 199.99, "Gadget"),
("Dining Table", 499.99, "Furniture"),
("Blender", 89.99, "Gadget"),
("Coffee Maker", 79.99, "Gadget");

select * from product;
select count(name) from product;
select sum(price) from product where category="Gadget";
select max(price) from product;
select min(price) from product;
select avg(price) from product;

select name, avg(price) from product;

select category, count(*) from product GROUP BY category;
select category, avg(price) from product GROUP BY category;

select category, avg(price) from product
WHERE price>5
GROUP BY category;
