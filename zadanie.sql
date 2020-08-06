--1

SELECT 
	u.id AS user_id, u.name,
	o.id AS order_id
FROM 
	users AS u
RIGHT JOIN
	orders AS o 
ON
	u.id = o.user_id;
    
    
--2

SELECT 
	p.id, p.name, p.price,
	c.id AS cat_id,
	c.name AS catalog
FROM
	products AS p
JOIN
	catalogs AS c
ON 
	p.catalog_id = c.id;
    
    
--3

SELECT
	id AS flight_id,
	(SELECT name FROM cities WHERE label = `from`) AS `from`,
	(SELECT name FROM cities WHERE label = `to`) AS `to`
FROM
	flights
ORDER BY
	flight_id;
    