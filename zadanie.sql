USE vk;

--1

SELECT
  COUNT(likes.id) AS likes,
  gender
  FROM likes JOIN profiles ON likes.user_id = profiles.user_id
  GROUP BY gender;
  

--2

SELECT 
  COUNT(target_types.id) AS users_likes,
  profiles.birthday AS age,
  profiles.user_id
  FROM profiles 
    LEFT JOIN likes
      ON profiles.user_id = likes.target_id
    LEFT JOIN target_types
      ON likes.target_type_id = target_types.id
        AND target_types.name = 'users'
  GROUP BY profiles.user_id
  ORDER BY age DESC
  LIMIT 10;
  

--3

SELECT 
  COUNT(DISTINCT(likes.id)) + COUNT(DISTINCT(posts.id)) AS users_activity,
  profiles.user_id 
  FROM profiles
    LEFT JOIN likes ON likes.user_id = profiles.user_id
    LEFT JOIN posts ON posts.user_id = profiles.user_id AND posts.is_public = TRUE
  GROUP BY profiles.user_id 
  ORDER BY users_activity
  LIMIT 10;