#Inserta informacion en la tabla brand
INSERT INTO guitars.brand (name_company, website_address, origin) 
VALUES ('gibson','https://www.gibson.com/','United States'),
('fender','https://www.fender.com/es/start','United States'),
('yamaha','https://usa.yamaha.com/products/musical_instruments/guitars_basses/index.html','Japan'),
('martin','https://www.martinguitar.com/','United States'),
('jackson','https://www.jacksonguitars.com/','United States'),
('ibanez','https://www.ibanez.com/na/','Japan');

INSERT INTO guitars.category (name_category) 
VALUES ('classic'),('Acoustic'),('electroacoustic'),('electric');

INSERT INTO guitars.genre (name_genre)
VALUES ('blues'),('jazz'),('rock'),('flamenco'),('gospel'),('soul'),('metal'),
('punk'),('country'),('disco'),('house'),('techno'),('pop'),('ska'),('reggae');

INSERT INTO guitars.customer (first_name, last_name, email, address, city,  cellphone, age)
VALUES ('yaritza','malaver','yarimala@gmail.com','carrera 3 # 12-36','tocancipa','45689','26'),
('brandon','salcedo','bransal@outlook.es','calle 4 # 11-32','sopo','93541','19'),
('karen','penuela','kape@hotmail.com','Transv 8 # 12-62','tocancipa','97315','35'),
('sergio','casallas','sercas@gmail.com','calle 16 # 3-22','gachancipa','94561','40'),
('leonardo','chitiva','leochi@gmail.com','Calle 10 # 9-78','zipaquira','55973','56'),
('caterine','fonseca','catefon@hotmail.com','Carrera 9 # 7-34','sesquile','98426','60'),
('cristian','ospina','crisosp@hotmail.com','Carrera 56A # 51-81','tocancipa','11294','22'),
('carolina','garcia','carogar@gmail.com','Calle 12 # 4-19','tocancipa','22498','31'),
('diego','ramirez','dierami@outlook.es','Carrera 54 # 68-80','sopo','38428','24'),
('natalia','gomez','natago@outlook.es','Calle 19 # 8-34','sopo','88624','29'),
('oscar','hernandez','oschern@gmail.com','Calle 59 # 27-35','gachancipa','66378','18'),
('jenny','sarmiento','jensar@gmail.com','Carrera 20 # 25-53','sesquile','95723','36'),
('fabio','rojas','fabro@outlook.es','Carrera 10A # 20-40','sopo','15786','21'),
('mariana','romero','marirome@outlook.es','Calle 111 # 100-11','sopo','82461','33'),
('andres','caicedo','andrecai@hotmail.com','Carrera 8 # 20-59','zipaquira','77624','23'),
('paula','lara','paulara@hotmail.com','Calle 48b sur # 21-13','zipaquira','55432','26'),
('ramiro','villegas','ramivi@gmail.com','Calle 20 # 22-27','sesquile','46468','25'),
('juliana','bastidas','julibas@gmail.com','Carrera 20 # 37-54','gachancipa','12128','34'),
('alejandro','magno','alejmag@outlook.es','Calle 15 # 9-56','gachancipa','33453','25'),
('laura','tovar','lautov@outlook.es','Calle 109a # 17-10','sopo','68426','30'),
('sebastian','arismendi','sebasaris@hotmail.com','Calle 28 # 8-69','zipaquira','44214','25'),
('liliana','sandoval','lilisand@gmail.com','Calle 69 # 4-64','zipaquira','98324','21');

INSERT INTO guitars.model (name_model, launch_year, number_copies, id_fk_brand)
VALUES ('les paul',1952,10000,7),('firebird',1963,6500,7),('sg',1963,8000,7),
('es-335',1958,15000,7),('flying v',1958,12000,7),('explorer',1975,9000,7),('moderne',1958,5500,7),
('telecaster',1950,2500,8),('stratocaster',1954,5000,8),('mustang',1964,4500,8),('jaguar',1962,3000,8),
('clase c',1971,12000,9),('clase f',1982,10000,9),('clase xf',1984,7000,9),('pacifica',1972,5200,9),('revstar',1992,4000,9),
('serie om',1920,15000,10),('serie d',1932,10000,10),('serie j',1941,11000,10),('serie x',1960,7000,10),
('kelly',1953,1500,11),('king v',1955,6800,11),('dr',1962,7000,11),('warrior',1967,10000,11),
('rgkp6',1980,11000,12),('as93zw',1986,13500,12),('jem jr',1996,8000,12),('s6521q prestige',1975,9500,12);

INSERT INTO guitars.customer_genre (id_fk_customer, id_fk_genre)
VALUES (23,1),(23,5),(23,6),(23,13),(24,3),(25,3),(25,8),(25,14),(26,15),(26,9),(26,4),(26,2),(26,10),
(27,1),(27,15),(27,14),(28,5),(28,10),(28,7),(28,12),(28,8),(29,2),(29,9),(29,3),
(30,11),(30,15),(30,6),(30,12),(30,1),(31,10),(31,2),(32,1),(32,5),(33,10),(33,5),
(33,2),(33,12),(34,7),(34,3),(34,10),(34,11),(34,9),(34,4),(35,3),(35,10),(35,12),
(36,12),(36,8),(36,13),(36,9),(37,9),(37,13),(37,15),(37,8),(37,1),(38,15),(39,6),
(39,11),(39,4),(39,5),(39,3),(39,12),(39,7),(40,15),(40,2),(41,6),(41,14),(41,1),
(41,15),(41,12),(42,13),(42,8),(42,15),(42,6),(42,5),(42,7),(43,12),(43,2),(43,15),
(43,13),(43,4),(44,11),(44,13),(44,4),(44,15),(44,12),(44,14),(44,7),(44,3),(44,8);

INSERT INTO guitars.guitar (size, weight, color, material, price, date_sale, id_fk_brand, id_fk_customer, id_fk_model, id_fk_category)
VALUES 
(147,203,'negro','abeto',5265637,'2020-1-17',8,37,11,1),
(124,314,'azul','abeto',4649479,'2020-10-13',9,23,13,4),
(133,318,'rosado','abeto',7094911,'2020-5-11',12,36,28,3),
(128,244,'rosado','caoba',2403938,'2020-9-15',10,29,19,4),
(137,328,'azul','palo de rosa',5973778,'2019-10-14',10,24,18,2),
(131,140,'rojo','palo de rosa',5366272,'2021-2-2',9,36,13,4),
(145,342,'amarillo','caoba',3794537,'2020-5-6',9,28,14,4),
(127,248,'rojo','caoba',7534022,'2020-5-29',9,33,13,1),
(138,335,'azul','arce',2323837,'2019-12-19',9,33,14,3),
(128,174,'madera','abeto',2551273,'2020-5-20',11,41,21,2),
(134,216,'azul','ebano',2953576,'2020-3-13',11,31,24,3),
(147,169,'verde','caoba',3219205,'2021-5-10',7,42,3,3),
(140,297,'rosado','abeto',7948480,'2020-4-24',10,35,19,4),
(135,224,'amarillo','arce',4823476,'2019-6-24',9,40,15,2),
(129,288,'amarillo','ebano',1105103,'2020-12-28',7,40,1,3),
(146,347,'rojo','abeto',2606014,'2020-7-9',11,35,23,2),
(139,358,'amarillo','abeto',2082829,'2020-9-26',10,38,20,1),
(148,322,'rosado','abeto',6587828,'2019-12-24',10,26,18,1),
(144,219,'amarillo','arce',7470688,'2021-6-4',9,28,14,2),
(145,310,'azul','abeto',4165696,'2021-1-2',10,31,18,4),
(139,137,'negro','palo de rosa',1477549,'2019-8-16',8,24,8,1),
(127,264,'negro','abeto',6481300,'2021-3-30',7,28,4,2),
(120,188,'negro','ebano',3269079,'2020-3-8',7,23,1,4),
(140,379,'morado','arce',7224816,'2020-10-12',10,32,17,2),
(135,373,'negro','abeto',5432153,'2019-10-17',8,33,10,4),
(139,367,'rojo','ebano',1297821,'2021-4-17',11,38,23,2),
(134,303,'morado','palo de rosa',7630975,'2020-8-3',8,40,10,2),
(125,229,'negro','caoba',3032595,'2019-12-1',8,40,9,1),
(139,272,'verde','abeto',5097428,'2020-6-23',9,44,16,3),
(127,255,'amarillo','abeto',2331047,'2021-2-5',7,43,6,4),
(131,171,'rojo','arce',7662905,'2020-7-10',10,23,20,1),
(144,348,'rosado','ebano',2793192,'2019-10-2',8,29,9,4),
(134,211,'amarillo','palo de rosa',2927789,'2021-6-6',9,24,16,4),
(136,229,'amarillo','ebano',6952932,'2019-10-5',11,32,24,2),
(132,190,'rosado','abeto',7882692,'2020-6-10',12,26,25,3),
(128,226,'rosado','caoba',7982181,'2020-10-1',10,26,17,3),
(142,148,'verde','ebano',5434998,'2020-12-28',9,37,14,3),
(133,376,'madera','ebano',3332091,'2020-7-29',8,36,8,1),
(145,328,'rosado','arce',7928626,'2019-12-20',8,42,9,3);

INSERT INTO guitars.guitar_genre (id_fk_guitar, id_fk_genre)
VALUES
(31,8),(18,14),(38,8),(34,15),(34,14),(12,2),(39,3),(12,6),
(1,15),(6,4),(10,4),(28,8),(2,1),(7,2),(34,13),(23,8),(38,11),
(9,7),(21,8),(30,12),(38,6),(22,10),(17,14),(33,12),(38,12),
(8,9),(40,4),(27,11),(9,6),(37,11),(35,11),(17,2),(38,4),
(11,9),(25,3),(5,8),(2,9),(19,11),(35,8),(5,4),(14,13),
(11,8),(24,2),(28,3),(17,6),(32,5),(33,3),(25,15),(27,11),
(19,10),(14,7),(16,3),(32,8),(33,6),(27,5),(9,6),(17,2),
(26,13),(29,13),(40,8),(19,5),(4,4),(33,1),(14,2),(34,6),
(40,10),(9,10),(11,6),(1,5),(30,15),(10,4),(16,1),(27,1),
(3,14),(21,14),(9,11),(31,9),(5,4),(36,11),(11,1),(19,5),
(33,7),(27,13),(27,3),(30,2),(2,6),(31,5),(8,5),(5,9),(37,1),
(22,14),(19,10),(21,3),(7,1),(35,13),(39,8),(1,11),(22,2),
(27,12),(20,10),(29,8),(30,14),(39,9),(27,13),(3,9),(30,13),
(15,9),(21,3),(36,3),(2,15),(16,10),(13,12),(3,2),(8,12),
(28,11),(32,5),(29,8),(24,6),(17,3),(31,5),(40,9),(3,2),(21,5),
(40,11),(3,6),(11,11),(20,2),(24,14),(24,15),(39,15),(37,7),
(22,5),(4,12),(37,15),(33,6),(36,11),(21,15),(6,13),(9,5),
(26,11),(21,10),(13,3),(35,10),(33,5),(1,9),(20,5),(13,13),
(26,6),(19,6),(12,5),(21,1),(23,11),(35,1),(8,8),(25,12),
(32,4),(2,2),(9,5),(23,9),(2,12);

#Modificar o agregar columnas a las tablas
ALTER TABLE guitars.customer ADD (city VARCHAR(50) NOT NULL, cellphone CHAR(5) NOT NULL);
ALTER TABLE guitars.customer ADD (age INT NOT NULL);
ALTER TABLE guitars.brand CHANGE COLUMN website_address website_address VARCHAR(100) NOT NULL;
ALTER TABLE guitars.genre DROP COLUMN name_subgenre;
ALTER TABLE guitars.model CHANGE COLUMN launch_date launch_year INT NOT NULL;
ALTER TABLE guitars.guitar CHANGE COLUMN date_manufacture date_sale DATE NOT NULL;

#Actualizar valores de las tablas
UPDATE guitars.guitar
SET date_sale='2020-01-17'
WHERE id_guitar=1;

#Realizar consultas para ver informacion de las tablas
SELECT * FROM guitars.guitar_genre;

#Borrar una tabla
#DROP TABLE guitars.string;