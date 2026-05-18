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



select 
concat("He is ", upper(cricketer.name), ". He plays for ", upper(cricketerteam.team),
"He has scored ",cricketer.centuries," For his team.") as peopleWithMoreThan15Centuries
from cricketer inner join cricketerteam 
on cricketer.id=cricketerteam.playerid
where cricketer.centuries>15;