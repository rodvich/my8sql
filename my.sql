--«Операторы, фильтрация, сортировка и ограничение»

--1

UPDATE products
    SET created_at = NULL where id = 3;

UPDATE products
    SET created_at = NULL where id = 1;

UPDATE products
    SET created_at = NOW() where created_at is NULL;

UPDATE products
    SET created_at = NOW() where id = 3;
    
--2

ALTER TABLE products 
    CHANGE COLUMN `created_at` `created_at` VARCHAR(256) NULL,
    CHANGE COLUMN `updated_at` `updated_at` VARCHAR(256) NULL;

describe products;
SELECT created_at from products;

ALTER TABLE products 
    CHANGE COLUMN `created_at` `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    CHANGE COLUMN `updated_at` `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

describe products;
SELECT created_at from products;

--3

create table storehouses_products (
	id SERIAL PRIMARY KEY,
    storehouse_id INT unsigned,
    product_id INT unsigned,
    `value` INT unsigned COMMENT 'Запас товарный позиции на складке',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

INSERT INTO
    storehouses_products (storehouse_id, product_id, value)
VALUES
    (1, 1, 15),
    (1, 3, 0),
    (1, 5, 10),
    (1, 7, 5),
    (1, 8, 0);

SELECT 
    value
FROM
    storehouses_products ORDER BY IF(value > 0, 0, 1), value;
    
--4

SELECT
    name, birthday_at, 
    CASE 
        WHEN DATE_FORMAT(birthday_at, '%m') = 05 THEN 'may'
        WHEN DATE_FORMAT(birthday_at, '%m') = 08 THEN 'august'
    END AS mounth
FROM
    users WHERE DATE_FORMAT(birthday_at, '%m') = 05 OR DATE_FORMAT(birthday_at, '%m') = 08;

SELECT
    name, birthday_at, DATE_FORMAT(birthday_at, '%m') as mounth_of_birth
FROM
    users;

SELECT name FROM users WHERE DATE_FORMAT(birthday_at, '%m') IN ('may', 'august');

--5

SELECT * FROM catalogs WHERE id IN (3, 1, 2);

SELECT 
    *
FROM
    catalogs WHERE id IN (3, 1, 2) 
ORDER BY CASE
    WHEN id = 3 THEN 0
    WHEN id = 1 THEN 1
    WHEN id = 2 THEN 2
END;


--Практическое задание теме «Агрегация данных»

--1

SELECT ROUND(AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())), 0) AS AVG_Age FROM users;

--2

SELECT
    DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday_at, 6, 10))) AS week_day_of_birthday_in_this_Year,
    COUNT(*) AS amount_of_birthday
FROM
    users
GROUP BY 
    week_day_of_birthday_in_this_Year
ORDER BY
	amount_of_birthday DESC;
    
SELECT
	DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))), '%W') AS day,
	COUNT(*) AS total
FROM
	users
GROUP BY
	day
ORDER BY
	total DESC;
    
--3

CREATE TABLE integers(
    value SERIAL PRIMARY KEY
);

INSERT INTO integers VALUES
    (NULL),
    (NULL),
    (NULL),
    (NULL),
    (NULL),
    (NULL);
    
SELECT ROUND(exp(SUM(log(value))), 0) AS factorial FROM integers;