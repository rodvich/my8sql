--1.1

DROP DATABASE IF EXISTS sample;
CREATE DATABASE sample;
use sample;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(45) NOT NULL,
	birthday_at DATE DEFAULT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

SELECT * FROM users;

START TRANSACTION;
INSERT INTO sample.users SELECT * FROM shop_online.users WHERE id = 1;
COMMIT;

SELECT * FROM users;

--1.2

use shop_online;
CREATE OR REPLACE VIEW prods_desc(prod_id, prod_name, cat_name) AS
SELECT p.id AS prod_id, p.name, cat.name
FROM products AS p
LEFT JOIN catalogs AS cat 
ON p.catalog_id = cat.id;

SELECT * FROM prods_desc;

--1.3

use shop_online;
DROP TABLE IF EXISTS datetbl;
CREATE TABLE datetbl (
	created_at DATE
);

INSERT INTO datetbl VALUES
	('2018-08-01'),
	('2018-08-04'),
	('2018-08-16'),
	('2018-08-17');

SELECT * FROM datetbl ORDER BY created_at;

SELECT 
	time_period.selected_date AS day,
	(SELECT EXISTS(SELECT * FROM datetbl WHERE created_at = day)) AS has_already
FROM
	(SELECT v.* FROM 
		(SELECT ADDDATE('1970-01-01',t4.i*10000 + t3.i*1000 + t2.i*100 + t1.i*10 + t0.i) selected_date FROM
			(SELECT 0 i UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t0,
		    (SELECT 0 i UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t1,
		    (SELECT 0 i UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t2,
		    (SELECT 0 i UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t3,
		    (SELECT 0 i UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t4) v
	WHERE selected_date BETWEEN '2018-08-01' AND '2018-08-31') AS time_period;
    
--1.4

use shop_online;
DROP TABLE IF EXISTS datetbl;
CREATE TABLE datetbl (
	created_at DATE
);

INSERT INTO datetbl VALUES
	('2018-08-01'),
	('2018-08-02'),
	('2018-08-04'),
	('2018-08-12'),
	('2018-08-14'),
	('2018-08-17'),
	('2018-08-23'),
	('2018-08-27'),
	('2018-08-29'),
	('2018-08-31');

SELECT * FROM datetbl ORDER BY created_at DESC;

SELECT created_at AS below_5 FROM datetbl
WHERE created_at NOT IN (
	SELECT *
	FROM (
		SELECT *
		FROM datetbl
		ORDER BY created_at DESC
		LIMIT 5
	) AS foo
) ORDER BY created_at DESC;

DELETE FROM datetbl
WHERE created_at NOT IN (
	SELECT *
	FROM (
		SELECT *
		FROM datetbl
		ORDER BY created_at DESC
		LIMIT 5
	) AS foo
) ORDER BY created_at DESC;

SELECT * FROM datetbl ORDER BY created_at DESC;



--2.1

USE shop;

CREATE USER shop_read IDENTIFIED WITH sha256_password BY 'pass2';
CREATE USER shop IDENTIFIED WITH sha256_password BY 'pass';

GRANT SELECT ON shop.* TO shop_read;
GRANT ALL ON shop.* TO shop;

UPDATE mysql.user SET Host = 'localhost' WHERE `User` = 'shop';
UPDATE mysql.user SET Host = 'localhost' WHERE `User` = 'shop_read';
SELECT Host, User FROM mysql.user;

--2.2

USE shop;

DROP TABLE IF EXISTS accounts2;
CREATE TABLE IF NOT EXISTS accounts2 (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  pass VARCHAR(255) NOT NULL
);

INSERT INTO accounts2 (name, pass)
VALUES ('Migel', '12345qwerty'), ('Ernesto', 'Erny1'), ('Juan', 'ytrewq543');

SELECT * FROM accounts2;

CREATE OR REPLACE VIEW username AS
  SELECT id, name FROM accounts2;

SELECT * FROM username;

CREATE USER user_read IDENTIFIED WITH sha256_password BY 'pass3';

GRANT SELECT ON shop.username TO user_read;

UPDATE mysql.user SET Host = 'localhost' WHERE `User` = 'user_read';
SELECT Host, User FROM mysql.user;


--3.1

DROP FUNCTION IF EXISTS hello();
CREATE FUNCTION hello ()
RETURNS TEXT DETERMINISTIC
BEGIN
	SET @now_hour = HOUR(NOW());
	IF (@now_hour >= 6) && (@now_hour < 12) THEN
	  RETURN 'Доброе утро!';
	ELSEIF (@now_hour >= 12) && (@now_hour < 18) THEN
	  RETURN 'Добрый день!';
	ELSEIF (@now_hour >= 18) && (@now_hour < 0) THEN
	  RETURN 'Добрый вечер!';
	ELSEIF (@now_hour >= 0) && (@now_hour < 6) THEN
	  RETURN 'Доброй ночи!';	 
	END IF;
END//

--3.2

USE shop;

DROP TABLE IF EXISTS accounts2;
CREATE TABLE IF NOT EXISTS accounts2 (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  pass VARCHAR(255) NOT NULL
);

INSERT INTO accounts2 (name, pass)
VALUES ('Migel', '12345qwerty'), ('Ernesto', 'Erny1'), ('Juan', 'ytrewq543');

SELECT * FROM accounts2;

CREATE OR REPLACE VIEW username AS
  SELECT id, name FROM accounts2;

SELECT * FROM username;

CREATE USER user_read IDENTIFIED WITH sha256_password BY 'pass3';

GRANT SELECT ON shop.username TO user_read;

UPDATE mysql.user SET Host = 'localhost' WHERE `User` = 'user_read';
SELECT Host, User FROM mysql.user;