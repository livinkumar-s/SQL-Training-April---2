use student;

INSERT INTO studentdetails (name, age, id) VALUES
("Dhanush", 45, 5);

SELECT * FROM studentdetails where name="Dhanush";

SELECT * FROM studentdetails;

UPDATE studentdetails SET age=43 where id=5;
DELETE FROM studentdetails WHERE id=3;
DELETE FROM studentdetails;
TRUNCATE TABLE studentdetails;

SET SQL_SAFE_UPDATES=1;