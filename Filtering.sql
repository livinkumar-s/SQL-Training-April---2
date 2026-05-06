USE student;

INSERT INTO studentdetails (name, age, id) VALUES
("Ram Charan", 40, 6),
("Vikram", 50, 7),
("Suriya", 38, 8),
("Karthi", 42, 9),
("Sivakarthikeyan", 35, 10),
("Vijay Sethupathi", 45, 11),
("Samantha", 30, 12),
("Nayanthara", 32, 13),
("Trisha", 34, 14),
("Anushka Shetty", 36, 15),
("Kajal Aggarwal", 33, 16),
("Tamannaah Bhatia", 31, 17),
("Shruti Haasan", 29, 18),
("Hansika Motwani", 28, 19),
("Samantha Akkineni", 30, 20);

SELECT * from studentdetails where name="Vijay";
SELECT * from studentdetails where age between 40 and 50;

SELECT * from studentdetails WHERE age IN (34,54,42,34,56,67);
SELECT * from studentdetails WHERE age NOT IN (34,54,42,34,56,67);

SELECT * from studentdetails WHERE age>35 AND id>10;
SELECT * from studentdetails WHERE age>35 OR id>10;
SELECT * from studentdetails WHERE NOT id>10;
SELECT * from studentdetails WHERE name LIKE "s%";
SELECT * from studentdetails WHERE name LIKE "%a";
SELECT * from studentdetails WHERE name LIKE "a%a";

select * from studentdetails order by age asc limit 1;
select * from studentdetails limit 10 offset 20;


