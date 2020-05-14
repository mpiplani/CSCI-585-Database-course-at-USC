CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
--Create Table
CREATE TABLE MAPS (name varchar, geom geometry);
INSERT INTO MAPS VALUES
	('LittleGalen','POINT(-118.287060 34.023144)'),
	('THC', 'POINT(-118.290058 34.020335)'),
	('Fertitta', 'POINT(-118.282495 34.018969)'),
	('ULSC', 'POINT(-118.284396 34.018901)'),
	('Lemonade', 'POINT(-118.286176 34.020766)'),
	('DOHNEY', 'POINT(-118.283723 34.020252)'),
	('VKC', 'POINT(-118.284022 34.021449)'),
	('LEAVEY', 'POINT(-118.282790 34.021888)'),
	('SEL', 'POINT(-118.288778 34.019825)'),
	('Hoose', 'POINT(-118.286595 34.018861)'),
	('SAL', 'POINT(-118.289474 34.019707)'),
	('THH', 'POINT(-118.284626 34.022409)'),
	('SGM', 'POINT(-118.289008 34.021643)'),
	('DRL', 'POINT(-118.291113 34.021646)'),
	('SSC', 'POINT(-118.289403 34.020101)');


SELECT name, ST_AsText(geom) FROM MAPS;

--Convex Hull
SELECT ST_AsText(ST_ConvexHull(ST_Collect(geom))) FROM MAPS;

--Nearest Neighbors of SAL
SELECT name, ST_Astext(geom) as location, ST_Distance(geom,'POINT(-118.289474 34.019707)') as distance 
FROM Maps
WHERE name<>'SAL' 
ORDER BY ST_Distance(geom,'POINT(-118.289474 34.019707)') 
limit 4;