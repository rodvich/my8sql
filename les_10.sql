--1

 use vk;
 SHOW TABLES;
 DESC communities;
 CREATE INDEX communities_name_idx ON communities(name);
 DESC communities_users;
 DESC media;
 CREATE INDEX media_filename_idx ON media(filename);
 DESC messages;
 CREATE INDEX messages_from_user_id_to_user_id_idx ON messages(from_user_id, to_user_id);
 DESC posts;
 DESC profiles;
 CREATE INDEX profiles_birthday_idx ON profiles(birthday);
 DESC users;
 CREATE INDEX messages_full_name_idx ON users(first_name, last_name);
 CREATE INDEX messages_last_name_idx ON users(last_name);
 CREATE UNIQUE INDEX users_email_uq ON users(email);

--2
 
 SELECT DISTINCT media_types.name,
   AVG(media.size) OVER(PARTITION BY media.media_type_id) AS average,
   MIN(media.size) OVER(PARTITION BY media.media_type_id) AS min,
   MAX(media.size) OVER(PARTITION BY media.media_type_id) AS max,
   SUM(media.size) OVER(PARTITION BY media.media_type_id) AS total_by_type,
   SUM(media.size) OVER() AS total,
   SUM(media.size) OVER(PARTITION BY media.media_type_id) / SUM(media.size) OVER() * 100 AS "%%"
     FROM media
       JOIN media_types
         ON media.media_type_id = media_types.id;

 SELECT * FROM communities LIMIT 20;
 SELECT * FROM communities_users WHERE community_id = 1;
 DESC profiles;

 SELECT DISTINCT communities.name AS group_name,
 	COUNT(communities_users.user_id) OVER(PARTITION BY communities.id) AS users_in_groups,
     COUNT(communities_users.user_id) OVER() / (SELECT COUNT(*) FROM communities) AS avg_users_in_groups,
     FIRST_VALUE(users.id) OVER(PARTITION BY communities.id ORDER BY profiles.birthday DESC) AS youngest,
     FIRST_VALUE(users.id) OVER(PARTITION BY communities.id ORDER BY profiles.birthday) AS oldest,
     COUNT(users.id) OVER() AS users_total,
     COUNT(communities_users.user_id) OVER(PARTITION BY communities.id) / COUNT(users.id) OVER() *100 AS '%%'
 	FROM communities_users
 		JOIN communities
 			ON communities.id = communities_users.community_id
 		JOIN profiles
 			ON communities_users.user_id = profiles.user_id
 		JOIN users
 			ON communities_users.user_id = users.id;
