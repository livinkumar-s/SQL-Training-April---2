use student;

select * from cricketer;
select * from cricketerteam;

SELECT * FROM cricketer INNER JOIN 
cricketerteam ON cricketer.id = cricketerteam.playerId;

SELECT c.id as playerId, name, email, team, t.id as countryId 
FROM cricketer c INNER JOIN 
cricketerteam t ON c.id = t.playerId;



SELECT * 
FROM cricketer c LEFT JOIN 
cricketerteam t ON c.id = t.playerId
union
SELECT * 
FROM cricketer c RIGHT JOIN 
cricketerteam t ON c.id = t.playerId;

SELECT * from cricketer CROSS JOIN cricketerteam;