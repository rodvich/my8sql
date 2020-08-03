-- 1

-- Фото связей приложена в пулл рекветсе


-- 2

DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;

SELECT * FROM likes LIMIT 10;

CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  views_counter INT UNSIGNED DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


-- Дополнительный файл с заполнеными посатми приложен в пулл реквесте

-- 3

SELECT
	likes_mens.mens,
	likes_womens.womens,
	CONCAT('The most likes were given by ', if (likes_mens.mens > likes_womens.womens,'men','women'))
from 
	(select COUNT(*) as mens from likes where user_id in (select user_id from profiles where gender = 'M')) likes_mens,
	(select COUNT(*) as womens from likes where user_id in (select user_id from profiles where gender = 'F')) as likes_womens;


-- 4



SELECT
	(SELECT CONCAT(first_name, ' ', last_name) 
     FROM users 
     WHERE id = user_id) AS name,
	TIMESTAMPDIFF(YEAR, birthday, NOW()) AS age,
	(select count(id) 
	 from likes 
	 where target_type_id = 2 and target_id = p2.user_id) as likes
FROM 
	profiles p2
order by 
	birthday desc
limit 10;



SELECT user_id AS name FROM profiles p2 order by birthday desc limit 10;


SELECT RAND();

select count(id) 
	 from likes
	 where target_type_id = 2 and target_id = 88;
	
	
	
	
-- 5 

SELECT
	name,
	likes,
	posts,
	messages,
	likes*0.5 + posts + messages*0.7
FROM
	(select 
		(select concat(first_name, ' ', last_name)
			from users
			where id = u.id)
			as name, 
		(select count(*)
			from likes
			where user_id = u.id and created_at between date_sub(now(), interval 1 week) and now())
			as likes, 
		(select count(*)
			from posts
			where user_id = u.id 
			and (created_at between date_sub(now(), interval 1 week) and now()
				or updated_at between date_sub(now(), interval 1 week) and now())
-- 		    and is_public = 0 -- на усмотрение
			)as posts,
		(select count(*)
			from messages m2
			where from_user_id = u.id and created_at between date_sub(now(), interval 1 week) and now())
			as messages
	from
		users u) as activity
ORDER BY
	likes*0.5 + posts + messages*0.7
LIMIT 10;
