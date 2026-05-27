DELIMITER $$

CREATE PROCEDURE selectVal()
BEGIN  
DECLARE x INT;
set x= 10;
  SELECT x;
END $$

DELIMITER ;

CALL selectVal();

SET @a=10;
select @a;

SELECT * from cricketer;

SELECT centuries INTO @vkcent FROM cricketer where id=1;
select @vkcent;
select * from cricketer where centuries=@vkcent;

use student;

DELIMITER $$
CREATE PROCEDURE cricketerWithRange(IN noOfRow INT)
BEGIN  
SELECT * FROM cricketer limit noOfRow;
END $$

DELIMITER ;


DELIMITER $$
CREATE PROCEDURE getNoOfCenturies(OUT totalCent INT)
BEGIN  
set totalCent=1000;
END $$

DELIMITER ;

CALL getNoOfCenturies(@res);
select @res;


DELIMITER $$
CREATE PROCEDURE getNoOfCenturiesByaPlayer(INOUT val INT)
BEGIN  
select centuries into val from cricketer where id=val;
END $$

DELIMITER ;


SET @ans=3;
call getNoOfCenturiesByaPlayer(@ans);
select @ans;

select * from cricketer;


select name, if(mark>80,"pass","fail") from studentMarks;

select name, if(mark>80,"pass","fail") from studentMarks;

SELECT name,
CASE
WHEN mark>90 THEN "O"
WHEN mark>80 THEN "A"
WHEN mark>70 THEN "B"
WHEN mark>60 THEN "C"
ELSE "FAIL"
END AS grade
FROM studentmarks;

DELIMITER $$
CREATE PROCEDURE getProducts(IN Givenprice INT)
BEGIN  

IF Givenprice>1000 THEN
SELECT * from Product WHERE price>Givenprice;
ELSE 
SELECT * from product;
END IF;

END $$

DELIMITER ;

call getProducts(1001);

select * from product;
