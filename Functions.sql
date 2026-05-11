use student;

SELECT name as studentName, age as studentAge FROM studentdetails;
SELECT 1 as result;

select ROUND(10.434487562652) as result;
select CEIL(10.0000001) as result;
select FLOOR(10.99999999) as result;
select MOD(8,6) as result;
select abs(9) as result;


select concat("Hello", " ", "World","...!") as result;
select LENGTH(concat("Hello", " ", "World","...!")) as result;
select UPPER(concat("Hello", " ", "World","...!")) as result;
select LOWER("HELLO") as result;
SELECT replace("hello hello hello guys...!","hello","hi") as result;
SELECT substring("I would love to code", 9,12) as result;


SELECT curdate() as today;
SELECT curtime() as time;
SELECT now() as now;
SELECT datediff("2026-05-28",curdate()) as now;

SELECT MOD(age,2) as ageRem FROM studentdetails;
SELECT * FROM studentdetails;

SELECT 
CONCAT('His name is ', upper(name), '. He is ', age, ' years old...!') AS details
FROM studentdetails;
 
