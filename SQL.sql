create database shirts_db;
use shirts_db;
create table shirts (
shirt_id INT,
article VARCHAR(255),
color VARCHAR(255),
shirt_size CHAR,
last_worn INT);



INSERT INTO shirts (shirt_id, article, color, shirt_size, last_worn)
Values (1, "t-shirt", "white", 'S', 10);
INSERT INTO shirts (shirt_id, article, color, shirt_size, last_worn)
Values (2, "t-shirt", "green", 'S', 200);
INSERT INTO shirts (shirt_id, article, color, shirt_size, last_worn)
Values (3, "polo shirt", "black", 'M', 10);
INSERT INTO shirts (shirt_id, article, color, shirt_size, last_worn)
Values (4, "tank top", "blue", 'S', 50);
INSERT INTO shirts (shirt_id, article, color, shirt_size, last_worn)
Values (5, "t-shirt", "pink", 'S', 0);
INSERT INTO shirts (shirt_id, article, color, shirt_size, last_worn)
Values (6, "polo shirt", "red", 'M', 5);
INSERT INTO shirts (shirt_id, article, color, shirt_size, last_worn)
Values (7, "tank top", "white", 'S', 200);
INSERT INTO shirts (shirt_id, article, color, shirt_size, last_worn)
Values (8, "tank top", "blue", 'M', 15);

SELECT *
from shirts;

INSERT INTO shirts (shirt_id, article, color, shirt_size, last_worn) 
VALUES (9, "polo shirt", "purple", 'M', 50);

SELECT article, color
from shirts;

SELECT article, color, shirt_size, last_worn
from shirts
WHERE shirt_size = 'M';

update shirts 
SET shirt_size = 'L'
WHERE article = "polo shirt";

update shirts 
SET last_worn = 0
WHERE last_worn = 15;

alter table shirts 
modify column shirt_size VARCHAR(255);

update shirts 
SET color = 'off white', shirt_size = 'XS'
WHERE color = "white";

delete from shirts
where last_worn = 200;

delete from shirts
where article = "tank top";

delete from shirts;

DROP table shirts;