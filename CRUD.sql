use student;

INSERT INTO studentdetails (name, age, id) VALUES
("Dhanush", 45, 5),
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

SELECT * FROM studentdetails where name="Dhanush";

SELECT * FROM studentdetails;

UPDATE studentdetails SET age=43 where id=5;
DELETE FROM studentdetails WHERE id=3;
DELETE FROM studentdetails;
TRUNCATE TABLE studentdetails;

SET SQL_SAFE_UPDATES=1;