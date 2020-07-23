#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'cupiditate', '1970-02-10 20:51:03', '1997-08-04 00:50:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'vel', '1928-02-29 19:38:16', '1940-04-06 21:12:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'sint', '1960-09-11 12:10:42', '1955-05-05 06:27:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'dignissimos', '1944-12-18 05:02:51', '2019-05-13 16:58:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'officia', '1980-08-15 05:12:35', '1931-03-06 06:07:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'qui', '1923-04-06 22:57:03', '1987-02-24 07:46:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'voluptatem', '1976-08-18 12:18:42', '2012-01-27 06:22:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'voluptas', '2019-09-12 07:41:39', '1996-07-18 17:18:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'maxime', '1946-11-29 13:40:35', '1954-07-13 23:40:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'fuga', '1967-01-21 15:18:42', '2010-09-08 20:00:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'provident', '1994-04-25 13:48:55', '1972-03-30 17:11:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'at', '1996-05-05 09:22:04', '1976-01-03 13:51:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'repudiandae', '1932-09-07 00:11:42', '2006-08-14 23:04:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'voluptatum', '1998-05-28 21:01:58', '1965-09-28 12:42:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'aut', '2018-06-26 10:32:04', '1949-02-22 00:33:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'molestiae', '1944-06-28 09:24:10', '1930-05-20 21:13:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'delectus', '2006-07-20 17:22:48', '1942-07-03 05:44:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'omnis', '1959-06-18 10:54:33', '1959-09-14 07:35:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'facere', '1972-11-15 04:57:58', '1983-11-23 05:03:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'nostrum', '1956-11-22 02:40:07', '1977-10-09 05:57:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'fugit', '1954-11-22 21:48:02', '1943-06-14 14:09:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'rem', '1959-07-03 07:16:30', '1962-10-07 08:37:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'et', '1983-10-17 02:37:10', '1938-05-12 00:13:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'laudantium', '1979-12-21 11:51:24', '1944-12-02 01:43:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'asperiores', '2010-08-24 22:46:12', '2005-02-27 22:41:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'natus', '1938-08-22 15:13:43', '1930-03-14 12:45:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'exercitationem', '1929-05-27 03:14:35', '1978-01-14 19:01:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'ipsam', '1931-10-09 14:05:29', '1930-02-26 15:02:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'non', '1983-08-14 13:29:43', '1976-07-12 08:25:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'suscipit', '1974-09-17 17:19:30', '2007-04-17 05:41:07');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 10, '1955-08-29 07:05:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 32, '1936-02-22 22:17:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 33, '2020-07-11 08:58:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 70, '1949-09-08 06:37:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 80, '1942-12-01 01:02:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 8, '1927-01-06 14:44:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 13, '1989-12-31 03:34:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 22, '1961-05-28 15:20:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 25, '1938-10-02 07:29:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 27, '1944-08-27 01:40:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 51, '2013-08-01 04:45:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 81, '1979-08-10 16:01:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 90, '1956-10-12 04:23:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 16, '1920-08-29 22:08:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 73, '1997-04-25 18:45:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 79, '1985-05-02 14:35:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 86, '1952-08-13 10:32:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 95, '2005-10-14 14:02:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 14, '1986-05-14 14:58:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 26, '2000-06-06 16:39:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 45, '1923-09-22 01:06:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 36, '2003-06-02 01:21:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 39, '1992-04-17 22:11:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 43, '1990-09-24 09:53:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 45, '2007-10-20 03:19:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 59, '1976-09-18 02:00:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 73, '2013-11-14 12:33:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 4, '1932-11-09 01:03:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 34, '2014-03-02 11:23:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 37, '2020-05-15 04:25:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 55, '1956-04-10 02:32:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 86, '2000-08-07 03:10:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 3, '2009-01-13 10:43:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 8, '2005-09-10 01:42:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 31, '1942-12-24 02:13:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 35, '1982-12-05 19:45:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 43, '1979-02-15 13:25:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 45, '1976-10-19 01:57:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 47, '1970-03-28 15:35:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 73, '1992-01-02 06:59:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 80, '1928-10-28 08:41:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 88, '1957-07-19 18:08:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 2, '1996-09-06 08:15:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 4, '2007-10-16 10:45:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 36, '1956-07-21 19:50:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 29, '2007-07-02 15:01:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 43, '1993-01-08 20:49:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 49, '1958-09-15 06:06:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 54, '1944-12-11 22:05:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 2, '1930-01-16 22:46:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 3, '1963-05-06 01:29:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '1962-02-28 14:38:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 41, '1982-08-05 23:10:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 71, '2011-10-06 08:19:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 1, '2003-02-23 11:35:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 2, '1932-09-19 05:26:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 28, '1973-02-03 22:38:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 46, '1940-04-08 09:07:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 64, '1997-05-01 02:34:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 87, '1963-09-25 04:48:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 92, '1984-10-03 12:15:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 99, '1992-08-26 23:53:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 6, '2013-12-27 12:36:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 9, '1933-10-01 09:13:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 13, '1936-05-30 18:02:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 44, '2007-11-01 06:50:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 65, '1925-11-09 04:01:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 89, '1965-07-26 16:41:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 96, '1939-04-26 11:36:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 14, '1925-02-12 07:15:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 21, '1955-08-19 07:28:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 40, '1943-07-14 08:49:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 49, '1989-10-22 04:58:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 74, '1933-07-14 06:41:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 80, '2003-06-29 05:07:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 97, '1937-09-04 00:45:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 6, '1980-08-26 00:06:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 25, '2020-01-23 07:02:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 51, '2009-01-04 21:49:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 73, '1986-02-18 12:35:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 74, '1965-02-10 18:07:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 87, '1953-05-06 17:07:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 95, '1951-01-18 18:49:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '1989-11-08 03:38:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 18, '2006-06-25 04:18:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 24, '1970-12-09 15:52:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 29, '1967-12-25 22:59:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 69, '1986-05-14 11:25:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 75, '1961-08-14 17:42:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 82, '1937-01-12 11:34:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 20, '1941-03-20 05:06:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 24, '1999-12-25 16:08:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 42, '2004-03-25 18:12:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 46, '2007-11-17 16:32:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 85, '1957-08-10 18:40:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 8, '1953-10-10 04:28:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 17, '1935-09-24 10:40:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 27, '1966-07-21 21:15:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 28, '1923-10-30 21:03:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 57, '2002-06-06 04:29:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 70, '2013-08-13 21:07:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 80, '1926-08-21 19:53:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 9, '1970-05-28 23:02:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 30, '2017-02-21 20:44:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 40, '1937-06-11 07:13:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 60, '1945-03-13 08:55:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 97, '1922-05-01 23:30:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 99, '1981-09-29 14:28:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 1, '1939-08-26 19:59:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 24, '2009-03-11 19:23:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 40, '1975-08-08 00:20:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 57, '1924-11-18 05:35:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 59, '1986-04-05 10:03:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 87, '2005-07-20 09:36:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 90, '1962-04-05 18:04:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 9, '2013-06-09 22:18:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 24, '2001-04-18 05:02:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 25, '1961-08-17 10:15:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 62, '1970-04-18 23:50:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 66, '1930-07-16 14:02:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 68, '1948-07-03 10:23:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 82, '1923-12-07 09:36:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 5, '1977-11-14 00:27:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 36, '1981-12-29 22:24:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 40, '1936-11-08 03:17:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 49, '2020-06-16 11:21:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 70, '2012-01-24 01:37:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 74, '1934-08-19 04:17:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 77, '1951-02-12 18:20:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 80, '2019-04-30 16:05:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 14, '2005-01-07 15:38:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 26, '1991-11-13 11:45:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 36, '1943-11-22 10:09:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 50, '1930-08-03 16:15:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 62, '1934-06-29 01:26:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 63, '2015-08-28 16:20:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 82, '1988-11-20 02:25:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 87, '1923-10-30 06:00:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 90, '2013-08-22 07:25:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 97, '1929-06-01 11:56:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 1, '1955-04-01 04:00:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 28, '1972-11-20 01:50:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 43, '1935-05-17 18:40:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 45, '1939-02-19 01:19:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 78, '1923-02-27 06:10:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 90, '1928-04-21 19:51:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 92, '2015-07-24 19:25:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 16, '2011-09-29 05:03:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 17, '1973-04-26 22:07:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 19, '1957-11-12 21:17:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 33, '1983-09-14 19:24:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 23, '1938-08-09 06:44:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 31, '1941-10-03 16:38:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 40, '2018-09-26 16:19:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 43, '1925-04-01 20:36:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 65, '1931-10-05 01:43:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 69, '1964-07-14 12:48:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 92, '1974-11-29 13:47:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 3, '1964-08-16 16:35:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 7, '1988-09-15 06:05:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 12, '1972-07-25 05:21:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 23, '2002-06-19 23:35:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 36, '1932-04-15 10:12:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 40, '1953-01-16 17:17:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 49, '1944-06-10 08:17:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 54, '1921-11-03 09:27:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 79, '1976-03-22 15:13:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 85, '2008-04-20 07:11:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 88, '2017-04-14 19:56:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 29, '1998-09-05 21:02:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 49, '1931-06-25 08:58:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 75, '1934-06-22 12:21:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 85, '1959-06-05 12:28:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 86, '1946-05-15 18:18:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 1, '1996-05-10 11:25:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 17, '1936-11-24 20:48:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 44, '1945-08-25 15:37:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 52, '1965-04-26 21:46:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 54, '1944-02-11 01:31:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 60, '1922-03-04 16:00:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 76, '1965-01-16 09:33:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 99, '1998-12-16 15:05:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 29, '2005-08-12 12:54:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 67, '1994-06-11 22:21:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 68, '1970-11-19 04:31:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 84, '1999-05-25 01:38:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 91, '1989-02-13 11:02:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 24, '1953-05-28 11:14:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 47, '2000-03-06 17:00:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 85, '1930-08-26 18:37:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 92, '1926-11-29 01:31:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 99, '1929-12-08 15:11:12');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 3, '1942-11-03 18:56:59', '2012-02-22 14:13:05', '2007-09-27 09:31:55', '1981-10-31 17:51:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 11, 5, '2007-11-29 03:44:17', '2004-10-07 11:27:38', '1959-09-29 22:27:09', '1968-06-18 23:52:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 20, 5, '1994-04-09 13:08:05', '1979-11-11 07:32:45', '1989-04-02 05:45:11', '1964-01-10 07:18:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 90, 8, '1920-10-29 11:15:35', '1954-09-10 05:11:27', '1983-07-22 18:16:41', '1932-05-31 06:33:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 61, 4, '2013-12-08 09:11:28', '1921-10-25 21:06:45', '1945-01-14 05:41:25', '1947-09-09 09:41:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 22, 3, '1925-10-27 06:03:14', '1987-01-16 13:23:06', '2003-06-15 00:07:36', '2011-06-05 12:25:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 51, 2, '1990-07-11 09:11:06', '1977-10-19 19:35:56', '1993-04-02 08:17:38', '1988-06-18 07:37:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 68, 8, '1966-01-04 11:47:48', '1992-09-01 23:23:50', '1978-04-07 10:51:56', '2005-09-08 04:25:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 79, 4, '1961-11-26 20:30:39', '1971-04-09 10:48:50', '2011-05-21 04:26:33', '1996-08-07 07:25:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 94, 5, '1926-05-14 13:47:18', '2007-04-05 11:15:41', '1961-12-30 14:03:46', '1983-03-24 03:56:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 66, 10, '1988-09-04 19:19:54', '1967-02-09 23:42:14', '1974-09-02 02:13:35', '2005-04-05 17:50:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 93, 8, '1931-12-07 19:31:26', '1964-10-30 04:50:37', '1969-06-28 13:52:12', '1997-02-01 18:15:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 95, 9, '1993-05-16 01:39:46', '1994-07-21 18:01:52', '1933-12-11 14:56:17', '2014-11-30 18:48:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 59, 5, '1955-07-30 11:13:41', '1948-07-27 13:44:29', '1990-01-07 18:29:53', '1984-09-19 04:57:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 78, 4, '1944-10-03 11:27:40', '2006-12-28 05:09:44', '1948-02-02 21:43:28', '1957-12-24 02:41:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 35, 1, '1972-11-05 04:06:40', '1964-04-25 23:07:42', '1945-03-08 18:07:25', '2009-04-04 12:17:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 96, 8, '1983-05-27 00:01:45', '1931-02-12 15:41:52', '1970-12-25 07:23:47', '1980-07-17 18:25:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 54, 10, '1924-06-01 11:32:46', '2019-02-24 21:46:31', '1981-09-01 07:37:26', '1934-03-15 06:26:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 4, 6, '1925-10-31 15:37:55', '1928-02-17 03:10:20', '1972-09-25 21:10:55', '2007-07-23 23:55:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 7, 9, '1989-11-23 09:54:13', '1997-10-04 20:31:27', '1992-08-11 21:43:12', '1980-01-24 13:50:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 24, 6, '1946-12-16 14:58:21', '1994-01-08 21:00:49', '1982-01-21 13:50:54', '1927-12-29 12:47:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 44, 6, '2014-06-24 15:52:24', '1946-03-31 07:30:19', '1945-05-10 18:18:30', '2001-11-26 20:14:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 76, 10, '1929-09-08 04:35:18', '2009-11-30 02:33:24', '1932-02-11 06:02:36', '1993-10-24 16:28:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 41, 8, '1963-05-31 19:12:57', '1975-07-05 06:38:23', '1960-10-03 00:18:53', '1937-09-09 13:26:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 88, 10, '2020-04-28 03:30:12', '2007-12-23 10:57:29', '1955-05-14 09:30:10', '1993-12-25 23:02:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 70, 1, '2001-05-22 11:36:20', '1949-05-05 19:46:59', '1930-04-26 02:52:46', '2010-08-26 21:00:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 82, 6, '1987-08-20 05:46:05', '1976-02-25 08:42:33', '2010-12-10 09:55:13', '1958-11-09 05:37:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 19, 4, '1984-12-28 19:42:33', '2019-08-08 07:19:28', '1983-11-24 01:06:55', '1997-10-27 10:14:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 78, 4, '1951-08-31 03:41:18', '1922-11-12 01:48:41', '1927-09-05 17:02:01', '1978-05-08 13:33:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 51, 9, '1932-03-07 22:33:35', '1962-09-24 13:08:38', '1969-09-13 09:42:51', '1990-12-30 03:54:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 22, 9, '1924-08-09 08:58:25', '1962-11-12 21:14:55', '1953-08-06 01:44:57', '1962-07-28 21:08:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 23, 10, '1991-03-30 00:14:03', '1982-06-25 03:31:56', '1958-02-22 04:29:22', '2010-06-02 23:49:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 31, 2, '1986-09-12 05:02:35', '1922-02-17 16:07:17', '1968-09-05 01:28:19', '1941-03-09 15:35:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 38, 9, '1952-01-07 05:37:22', '1993-01-05 14:32:41', '1997-12-29 20:58:18', '1937-08-03 07:21:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 11, 10, '1964-02-08 09:43:01', '1978-04-02 20:01:42', '1922-01-31 09:49:55', '1954-12-26 07:51:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 19, 2, '1958-12-22 07:56:35', '1987-04-28 20:15:11', '1936-12-11 05:30:09', '1960-11-29 08:48:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 21, 8, '1921-10-01 20:32:52', '1998-08-20 00:46:11', '2011-11-30 05:53:38', '1932-01-12 23:32:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 65, 4, '1978-12-25 08:18:26', '1987-11-10 19:35:56', '1992-09-06 21:49:11', '1992-02-17 10:57:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 1, 8, '2009-10-25 02:09:52', '2011-05-10 03:42:11', '1944-12-20 23:55:42', '1936-06-13 17:05:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 8, '1934-02-13 08:35:31', '1954-12-15 18:36:23', '1926-02-04 07:32:46', '1967-10-28 07:43:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 82, 10, '1986-08-15 05:45:24', '1970-12-06 10:20:07', '1953-02-22 09:05:04', '1925-01-12 10:24:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 26, 6, '1985-04-11 16:44:40', '1947-12-30 08:12:33', '1959-06-03 10:21:15', '1937-01-01 05:08:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 20, 8, '1963-06-16 10:28:59', '1948-03-04 07:45:04', '1928-10-17 01:05:37', '1963-03-03 09:08:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 39, 7, '1987-10-30 22:06:35', '1942-11-19 01:57:23', '1987-08-28 23:38:36', '1981-05-13 08:29:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 20, 1, '1973-05-11 14:42:24', '1995-08-05 03:50:18', '2012-12-28 15:08:11', '1974-06-25 04:51:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 37, 6, '1978-10-01 23:11:56', '1979-05-05 02:44:09', '1958-12-13 05:17:31', '1950-10-22 16:26:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 93, 9, '1953-02-27 16:38:12', '1924-09-25 18:30:04', '1951-03-01 17:40:43', '1999-02-13 19:32:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 16, 2, '1955-02-14 23:29:23', '1924-10-30 14:20:15', '1979-11-21 08:21:24', '2009-11-07 02:14:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 75, 10, '1976-07-21 17:50:23', '1951-04-27 07:25:45', '2002-12-24 00:43:12', '1947-09-30 03:25:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 96, 9, '1926-01-22 01:21:43', '2012-03-13 07:34:20', '1980-08-04 21:33:44', '1958-05-20 14:38:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 17, 5, '2013-05-20 07:56:32', '2004-06-06 12:45:07', '1988-11-28 04:42:15', '1950-05-02 23:29:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 50, 6, '1970-08-20 02:52:59', '1981-05-27 06:05:09', '2011-07-03 16:19:00', '1982-09-10 01:33:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 68, 5, '1935-04-23 19:34:56', '1958-12-07 04:04:11', '1993-11-19 18:58:02', '2002-12-16 19:31:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 32, 2, '2010-09-05 19:35:55', '1974-02-16 09:21:55', '1932-01-15 02:53:58', '2005-03-19 01:46:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 93, 6, '2017-10-28 15:12:08', '1934-05-12 10:03:39', '1928-12-05 08:46:09', '2016-07-20 09:52:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 11, 7, '1932-01-18 19:06:36', '1976-08-20 16:19:03', '1971-12-10 04:02:45', '1964-05-10 22:19:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 24, 2, '1982-08-31 14:57:28', '2015-04-25 11:11:45', '1968-01-08 18:09:49', '1940-09-04 08:19:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 54, 9, '1965-03-31 13:00:19', '1955-03-14 05:13:57', '1951-10-13 11:48:45', '1983-03-09 23:19:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 88, 1, '1986-03-23 03:40:13', '1954-04-16 13:08:17', '1957-05-19 15:34:51', '1981-07-27 10:49:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 63, 3, '2016-05-07 04:37:33', '1968-03-27 00:02:54', '1927-08-09 11:35:36', '1937-07-10 09:50:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 65, 5, '2012-10-11 20:17:12', '1935-11-11 17:04:43', '2001-08-30 02:03:14', '1946-10-09 03:13:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 13, 2, '2017-10-05 10:08:43', '1995-08-27 22:36:56', '1981-12-28 01:29:26', '1963-04-07 06:38:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 64, 6, '2018-11-14 09:36:35', '1923-10-15 04:18:04', '1963-07-04 02:00:19', '1976-05-03 12:22:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 8, 8, '1961-12-07 23:21:34', '1994-07-14 20:29:13', '1957-07-21 07:51:52', '2000-11-13 11:25:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 69, 6, '1946-10-12 16:05:34', '1978-01-15 12:41:07', '1967-07-09 16:17:53', '1954-12-09 20:33:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 80, 1, '1955-02-05 17:11:29', '1968-10-14 07:54:36', '1947-01-17 03:54:05', '1999-01-02 05:45:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 95, 10, '1956-11-10 01:53:14', '1931-01-08 05:56:39', '1949-01-02 07:06:09', '1940-08-11 02:46:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 66, 2, '1957-07-02 19:44:06', '2014-01-05 02:14:00', '1945-05-23 13:45:12', '1936-06-20 17:10:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 69, 3, '1932-04-28 14:15:11', '1955-03-22 06:47:44', '1921-07-20 04:31:30', '2017-08-21 02:02:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 64, 6, '1998-10-31 08:36:48', '1936-07-27 23:53:18', '1952-05-26 00:17:10', '1923-08-04 15:01:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 18, 4, '1978-07-01 15:56:41', '1952-08-31 10:18:15', '1968-05-01 05:55:26', '1975-04-30 12:58:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 33, 6, '2017-11-10 10:15:07', '1941-11-09 17:07:28', '1971-04-23 04:07:57', '1925-10-19 07:03:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 3, 10, '1930-07-25 02:37:03', '2007-02-05 23:56:33', '1945-06-29 08:05:18', '1966-10-29 11:01:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 13, 10, '1995-09-18 16:31:32', '2004-11-01 03:25:20', '1988-11-10 23:09:14', '2012-06-01 21:45:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 15, 5, '1920-08-19 12:24:17', '1937-02-22 20:03:47', '1925-12-07 09:58:01', '1932-09-09 14:31:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 55, 9, '1984-03-11 03:55:45', '1922-09-12 18:58:55', '1939-05-20 04:15:43', '2002-12-29 04:58:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 47, 2, '1979-10-25 15:34:31', '2019-09-09 04:41:39', '2006-04-07 04:54:59', '1934-06-01 22:57:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 27, 5, '1931-12-01 01:09:12', '1952-12-22 18:04:50', '2003-11-19 09:28:13', '1980-06-18 03:43:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 35, 6, '1923-09-13 17:28:01', '1926-12-28 17:15:13', '1950-09-26 05:46:38', '1981-05-23 16:24:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 40, 2, '2014-10-25 13:11:26', '1941-01-12 08:46:53', '1964-06-05 15:38:16', '2008-02-29 21:45:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 92, 3, '1982-05-27 02:21:23', '1966-08-24 18:10:35', '1978-07-02 21:58:12', '1959-09-15 09:58:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 93, 7, '1967-08-27 10:06:47', '2009-01-04 04:08:05', '1989-03-12 20:23:50', '1935-04-16 05:44:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 18, 5, '1940-05-18 04:37:33', '2004-06-01 08:30:53', '1968-03-19 09:59:42', '1970-09-07 15:36:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 85, 3, '1979-06-01 23:25:05', '1996-04-14 05:45:09', '1963-06-07 09:20:36', '1990-04-30 16:08:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 2, 9, '1935-05-06 11:47:51', '1988-08-07 17:49:36', '1971-06-15 14:53:59', '1996-10-24 22:12:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 6, 8, '1990-12-18 08:19:08', '1957-05-13 02:49:32', '1935-09-15 16:06:49', '1995-01-07 12:15:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 11, 1, '1973-12-22 06:33:03', '2014-10-29 10:13:02', '1987-02-12 13:39:13', '1944-04-25 17:32:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 32, 3, '1988-04-27 12:56:53', '1931-12-18 02:14:16', '1998-04-28 04:27:56', '1996-05-10 08:53:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 60, 5, '1981-09-10 08:14:42', '1961-03-26 13:37:24', '1960-04-21 19:00:08', '1976-01-16 07:49:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 26, 2, '1961-02-17 09:00:36', '1938-03-20 16:03:59', '1963-03-01 07:54:43', '1937-09-29 05:49:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 32, 10, '1945-10-14 17:34:59', '1981-10-30 07:28:35', '1979-01-30 22:21:04', '2019-03-07 07:42:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 13, 6, '1982-01-02 23:19:36', '2010-02-01 10:06:17', '1988-09-16 16:42:26', '2015-01-07 15:14:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 25, 8, '1998-07-14 18:14:21', '1934-03-19 12:17:25', '1969-03-19 16:46:02', '2008-04-26 17:13:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 7, 4, '2012-11-17 17:19:30', '1964-05-12 11:55:23', '1986-03-25 07:40:52', '1974-09-09 02:06:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 16, 1, '1964-04-03 00:43:34', '1921-02-13 11:16:08', '1920-08-06 17:53:23', '2007-12-09 17:37:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 20, 3, '1933-05-15 16:53:06', '2000-10-15 17:30:05', '1928-04-21 13:09:27', '1982-08-03 09:49:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 14, 4, '2010-12-18 18:28:09', '2002-12-01 20:55:34', '1951-04-03 02:29:25', '2011-01-07 20:15:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 64, 2, '1978-05-30 17:44:48', '2016-08-22 03:57:37', '1937-10-18 20:33:10', '2004-07-10 07:16:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 30, 7, '1979-09-06 03:16:20', '1975-10-25 15:36:20', '1994-06-15 17:06:12', '1987-02-14 17:22:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 99, 3, '2018-08-09 05:12:34', '1993-07-22 19:31:25', '1966-09-02 14:21:10', '1978-04-05 12:54:12');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'tempore', '1975-05-02 05:57:46', '1962-10-04 11:57:13');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'ut', '2014-06-05 14:40:58', '1936-10-27 01:45:49');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'illum', '1930-10-20 06:44:52', '1946-05-04 12:29:44');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'at', '1988-09-18 14:23:27', '1995-03-06 00:41:51');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'accusamus', '1977-06-14 07:38:14', '1983-08-11 08:25:33');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'sunt', '1931-12-12 23:42:41', '1991-06-21 07:56:29');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'dolorem', '1988-09-16 09:13:49', '1922-09-27 22:55:22');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'quisquam', '1941-06-26 14:12:21', '1921-08-31 18:55:38');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'quibusdam', '1965-01-13 17:07:17', '2015-02-12 01:24:01');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'animi', '1964-11-11 05:11:56', '1939-03-11 14:34:20');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'fugit', '1973-04-18 11:58:00', '1958-01-11 23:05:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'quaerat', '1989-04-30 12:08:42', '2007-09-17 22:57:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'aut', '1991-06-23 20:40:01', '1976-09-30 15:01:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'velit', '1992-03-16 12:15:10', '1958-09-11 07:04:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'repellendus', '1982-01-23 10:58:10', '1965-12-19 18:48:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'dolore', '1926-12-20 14:08:18', '2017-06-21 20:34:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'nihil', '2011-05-04 20:32:32', '2009-11-22 11:50:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'dolorem', '1972-09-25 19:55:30', '1982-10-27 20:16:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'ducimus', '2020-01-11 22:43:23', '1936-04-05 22:05:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'impedit', '1932-08-16 01:10:42', '1959-01-21 13:18:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'voluptates', '2019-04-30 10:20:24', '1997-06-01 17:16:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'temporibus', '1929-08-04 04:42:45', '1979-04-07 13:16:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'quia', '2011-08-11 15:42:24', '1975-08-27 18:35:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'tempore', '1968-04-27 13:46:38', '1976-06-21 22:28:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'magni', '1951-07-21 08:15:15', '1947-08-16 20:17:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'quisquam', '1940-07-08 05:27:30', '1995-06-28 20:02:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'mollitia', '2004-02-17 21:29:37', '2001-10-02 02:42:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'provident', '1969-10-25 11:23:12', '1949-09-13 08:46:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'est', '2010-10-19 10:52:20', '1996-01-27 17:55:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'ullam', '1963-12-29 22:45:09', '1988-10-23 01:26:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'qui', '1922-10-04 21:53:31', '1959-03-07 20:06:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'deserunt', '1956-03-01 13:17:22', '1955-05-17 02:26:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'vel', '1963-11-04 00:29:39', '1940-08-05 16:39:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'quis', '1926-07-07 03:00:52', '2007-05-01 11:45:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'sint', '1978-01-03 08:00:05', '2004-04-04 15:59:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'doloremque', '1934-02-26 17:21:00', '2014-05-27 10:07:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'quidem', '1927-01-31 03:45:02', '1938-10-09 21:58:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'ut', '1966-11-18 06:31:27', '1924-09-13 19:18:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'nam', '2004-05-27 22:44:40', '2008-04-20 00:34:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'reiciendis', '1940-01-13 15:35:48', '2005-09-21 03:29:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'cupiditate', '1977-09-05 22:15:08', '2005-08-03 11:02:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'expedita', '1936-12-22 15:22:47', '1940-06-13 01:53:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'quo', '1988-01-17 13:01:18', '2013-05-03 09:29:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'sit', '2003-01-02 21:34:24', '2019-09-21 23:20:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'consequatur', '1968-03-21 19:29:48', '1939-01-19 09:03:29');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 62, 25, 'Molestias natus tempora architecto voluptatem sunt est aspernatur sint. Quam nulla pariatur harum quisquam iusto et.', 1, 0, '1932-01-29 19:13:16', '1955-12-13 03:16:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 51, 20, 'Aspernatur pariatur quis voluptatem aut nisi pariatur veniam et. Perspiciatis consequatur recusandae vero sunt ipsam. Sit adipisci et architecto veniam.', 0, 0, '1983-06-23 02:13:40', '1925-12-18 09:34:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 98, 55, 'Tempore beatae ratione eum sit veniam. Explicabo quibusdam maxime dolor natus. Ipsam et dignissimos voluptatem distinctio voluptas. Unde cumque suscipit illum quo aut odio.', 0, 0, '1978-07-25 01:06:58', '2011-09-23 23:51:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 10, 82, 'Sed optio velit eum sint suscipit. Vitae dolore molestiae commodi. Ipsam pariatur qui debitis ad nam recusandae.', 1, 1, '1962-08-19 00:17:26', '1933-10-21 15:40:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 38, 45, 'Voluptatum nisi aut aut reiciendis deleniti nemo. Ad quae et facere minima sed soluta laboriosam. Qui sed aut et sed.', 0, 1, '2013-07-30 21:48:05', '2018-02-10 12:10:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 100, 25, 'Facere at nobis sit aut sint. Alias distinctio eveniet iste ut. Numquam quo fugit consequatur fugiat molestiae.', 1, 1, '1984-05-09 18:02:34', '2005-02-19 02:27:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 61, 57, 'Quia nemo aut perspiciatis. Ipsa delectus quasi et fugit modi. Suscipit nemo accusamus sit inventore aut.', 1, 1, '1938-11-08 02:44:12', '1942-04-11 11:49:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 23, 46, 'In architecto quasi laboriosam eum cumque. Dolores rem laboriosam ut ea. Et illum non ipsam accusantium dolore occaecati occaecati sint.', 1, 0, '1925-02-13 21:15:02', '1961-10-10 05:14:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 38, 27, 'Sunt vel nihil repellat sed et in. At et nesciunt hic id molestias libero deleniti illum. Sunt est quia quidem explicabo et quia. Qui veniam voluptas laborum perferendis vitae ipsam reiciendis. Natus sed minus commodi aut voluptatem saepe libero impedit.', 0, 1, '1938-02-05 13:39:33', '1929-09-26 18:21:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 9, 80, 'Sit recusandae qui sed id. Voluptatem recusandae consequatur aut distinctio vero consequatur repellat.', 1, 0, '1973-09-02 18:50:21', '1944-10-10 23:19:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 5, 15, 'Eum repellendus blanditiis eum explicabo debitis. Quam libero veniam explicabo deserunt. Ut necessitatibus facilis beatae iure excepturi aperiam voluptatem.', 1, 0, '1939-04-14 01:00:04', '1991-12-14 05:10:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 22, 16, 'Ea dicta sequi culpa sunt omnis blanditiis suscipit. Qui sint tenetur autem reprehenderit rerum velit vero. Totam error autem incidunt perferendis est consequuntur.', 0, 1, '1976-08-08 19:37:33', '2000-02-10 02:06:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 2, 75, 'Quam modi laudantium nobis quia non repellendus hic. Sed eligendi error consequuntur ipsam qui sed. Doloremque ipsum non ad neque unde possimus nulla cumque.', 1, 0, '1921-11-29 14:49:25', '1955-11-18 22:23:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 7, 97, 'Mollitia distinctio corporis nam aliquid expedita sit. Ut laudantium sit eligendi nihil. Ut aliquam explicabo error est molestias.', 0, 1, '1927-10-01 13:20:58', '2001-12-18 15:51:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 33, 50, 'Ab veritatis omnis consectetur eius non. Hic earum quod accusantium reprehenderit fugiat modi. Cupiditate voluptas facere cupiditate aut accusamus rerum esse.', 1, 0, '1920-09-03 06:18:06', '1926-09-01 20:40:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 26, 43, 'Vel ullam itaque voluptate debitis. Nobis quidem autem impedit ullam non corporis.', 0, 0, '2001-02-28 01:13:17', '1940-05-26 17:04:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 81, 62, 'Porro deleniti possimus et maiores omnis magni. Eaque et eos quod accusamus quibusdam a similique in. Voluptas reprehenderit quas quia sint.', 0, 1, '1928-06-25 06:04:51', '1955-08-13 12:52:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 33, 36, 'Esse perferendis accusantium iusto similique ipsum neque. Accusamus neque dolor unde tempora id. Explicabo esse et sed autem. Reprehenderit assumenda sequi id placeat. Provident nostrum unde laborum autem.', 1, 0, '1971-01-11 16:04:49', '1924-09-29 10:55:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 46, 79, 'Magnam minima minus maxime voluptatum. Aut corrupti debitis et reiciendis et similique. Et voluptatem ipsa a non sint at vero consequuntur.', 0, 0, '2003-06-16 12:53:32', '1921-11-01 22:26:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 73, 20, 'Velit in ut dolor ipsa voluptates voluptatem. Consequatur odit et est sit vel. Eos voluptas voluptatem odit maxime natus.', 0, 1, '2007-04-30 08:01:08', '1948-06-06 04:57:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 34, 63, 'Autem est aliquam qui autem assumenda placeat. Pariatur nemo in rerum non. Sed expedita incidunt sint a.', 1, 0, '1942-04-23 22:38:35', '1955-11-25 00:20:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 26, 53, 'Vel ut architecto est quibusdam. Ipsam sapiente dicta sed deserunt. Tenetur eaque ex dignissimos in velit quia. Eos quis ipsam odit non corrupti totam. Dolor voluptas adipisci omnis ut quam.', 1, 1, '2019-10-15 03:40:55', '1952-04-03 15:06:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 35, 37, 'Qui qui est ut et ratione velit aliquid. Cum ut vero omnis minima quam. Voluptate labore quia reprehenderit soluta ducimus.', 1, 0, '1962-04-08 05:25:45', '1980-05-31 23:33:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 66, 94, 'Incidunt saepe doloremque quo atque. Praesentium exercitationem eum voluptatem voluptatem. Ducimus doloremque occaecati dicta.', 1, 1, '1979-12-10 04:01:56', '1943-09-30 21:20:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 97, 76, 'Nobis est nam reiciendis esse saepe. Non voluptates ut quibusdam et perspiciatis nulla praesentium. Excepturi veritatis animi ipsum est aut iure.', 1, 0, '1962-12-01 09:47:18', '1994-03-16 19:27:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 18, 77, 'Consequatur placeat blanditiis veniam tempora impedit. Consequatur occaecati consequatur laudantium tenetur asperiores consequatur. Tenetur sed pariatur occaecati ipsam.', 1, 1, '1975-07-30 07:10:11', '1934-07-01 16:12:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 21, 81, 'Adipisci inventore rerum consequatur nihil. Molestiae facere illo et dolores. Tempore qui nihil est voluptas sunt ipsam.', 0, 1, '1976-10-15 08:18:43', '1975-10-25 13:46:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 62, 50, 'Quis omnis omnis delectus impedit animi. Minus est totam doloribus laborum.', 1, 1, '1922-05-07 19:23:57', '1987-08-07 05:07:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 42, 34, 'Autem exercitationem dolores eos asperiores eos fugit ut officia. Et cupiditate earum nihil pariatur dignissimos. Aut tenetur ullam dolorem ut. Sed reiciendis vero ratione totam consequuntur laudantium rerum.', 1, 1, '1928-02-08 05:39:50', '1939-06-22 02:36:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 43, 78, 'Et sint sunt ut quia non tenetur impedit. Quia cumque est debitis dolores. Ex autem inventore rerum. Non optio vero nulla ut veniam.', 0, 0, '1944-05-24 21:12:47', '1993-06-12 14:27:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 34, 88, 'Debitis laborum reprehenderit ullam illum dolore. Sed velit qui optio itaque eligendi. Id et excepturi cupiditate dolores.', 1, 0, '1993-07-24 21:57:29', '1969-05-18 03:40:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 31, 30, 'Fuga in numquam doloremque aut dolor similique modi iste. Soluta et minima maxime nesciunt cum mollitia aspernatur et. Aut similique alias officia numquam qui corporis illo. Odit et quisquam qui vel rerum nihil illo.', 0, 0, '1979-02-07 03:04:10', '2019-06-08 14:47:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 26, 16, 'Nobis et amet ea ratione. In ex ut corporis inventore non ex in. Sit aut et a cumque quis. Necessitatibus at ea mollitia alias et aut.', 1, 0, '1931-11-18 11:29:26', '1949-01-08 23:15:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 64, 20, 'Ut delectus unde et nihil. Ullam dolor fugit culpa facilis suscipit quidem. Dolorem cum doloremque dolores mollitia enim exercitationem quaerat.', 0, 1, '1998-12-09 00:50:40', '1934-06-08 19:24:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 6, 14, 'Dolorem sint quasi delectus vel unde. Modi ut mollitia aperiam maxime quasi. Et natus sit officia est. Expedita quas voluptas et laborum expedita eaque. Et ducimus maiores ipsum ab provident.', 1, 1, '1958-05-15 01:30:34', '1994-09-07 03:35:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 57, 52, 'Aut maxime est saepe quasi optio nihil et. Fuga nihil ut deleniti tenetur. Qui accusamus eaque provident esse.', 1, 0, '1923-05-19 22:22:48', '2013-07-13 11:14:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 14, 79, 'Sit perferendis voluptatibus porro ut aliquid voluptas ea. Placeat et consequatur ea qui sunt. Enim ut odio vel modi omnis totam fuga.', 1, 0, '1958-12-15 18:26:38', '2005-06-01 01:41:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 19, 44, 'Delectus aspernatur numquam consequatur reiciendis impedit est molestiae nemo. Enim sequi ut eligendi enim itaque tenetur. Deserunt facere veritatis nihil consequuntur omnis. Et nihil magnam saepe voluptas at corrupti dignissimos hic.', 0, 0, '1945-07-16 10:04:33', '1947-06-20 05:20:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 56, 43, 'Sapiente rerum atque a illum suscipit omnis. Incidunt aliquid temporibus porro. Dignissimos aut laborum velit est sed qui accusantium. Harum qui temporibus suscipit nesciunt.', 1, 1, '2018-12-03 11:38:22', '2019-02-07 18:14:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 38, 73, 'Voluptas dolor recusandae ullam necessitatibus. Consequatur quo est rerum voluptatum consequuntur ut. Beatae repudiandae iure a quae officiis autem ipsam quis. Porro eum optio impedit et.', 0, 0, '1993-04-17 16:30:38', '1925-01-21 16:03:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 56, 48, 'Quis laboriosam architecto temporibus quo. Autem officiis reiciendis ad dolorum. Ut doloribus voluptatem non aperiam. Minima dicta debitis natus fuga.', 0, 1, '2009-06-24 03:23:08', '1966-10-16 05:01:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 53, 59, 'Nulla qui est eligendi nulla natus perferendis. Nobis maxime quia quia cupiditate voluptatibus. A nesciunt quaerat nulla non veritatis nihil sit.', 1, 1, '1922-11-11 03:28:55', '2001-03-31 06:58:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 14, 52, 'Eius voluptatum odit officia assumenda beatae mollitia animi. Odit maiores officiis magni repellendus molestias vitae ratione. Aliquam consequatur maxime dolorem iusto aut enim.', 0, 0, '1992-03-22 04:33:21', '2003-03-08 18:39:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 95, 17, 'Aut aut eum architecto neque quaerat eos. Consequatur quia veniam unde voluptates perspiciatis ea quam.', 0, 1, '1968-12-04 21:12:17', '1937-11-09 16:36:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 25, 48, 'Est fugit voluptas qui temporibus. Ut cumque explicabo porro in soluta eum possimus voluptatem. Ipsam animi quaerat dolor non maxime perferendis.', 1, 0, '1993-06-22 16:34:40', '1927-11-08 15:47:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 40, 97, 'Quo velit voluptate exercitationem dolore quia quae eum. Sit accusantium cupiditate harum placeat veniam. Sint sed blanditiis enim est. Commodi harum enim cum sunt.', 0, 0, '1969-07-22 18:11:15', '1989-03-20 13:32:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 75, 54, 'Excepturi modi id tempore consequuntur dolor. Molestiae voluptatem vitae sapiente et quia neque laboriosam. Nostrum earum rem commodi est. Molestias ea minus ab quos.', 0, 0, '1958-08-28 14:47:27', '1948-01-02 03:55:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 1, 57, 'Earum dignissimos laudantium commodi reprehenderit. Adipisci nihil voluptas aut totam tempora qui exercitationem. Sint praesentium non eum sunt sint enim. Quam rerum amet facilis eaque. Eum accusamus officiis libero rem voluptatem ullam qui sit.', 1, 0, '2005-04-22 08:22:28', '1951-04-07 14:58:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 25, 17, 'Illum est deserunt et veritatis. Dolores vel voluptate laboriosam voluptatem placeat voluptatem. Velit doloremque ut ex sunt et commodi. Officia sequi ut qui ex ut.', 1, 0, '1982-01-14 18:23:02', '1967-05-04 13:30:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 74, 41, 'Non omnis totam eos adipisci commodi. Velit rerum quia eveniet sapiente nisi dolor. Veritatis et nihil saepe. Numquam eius tempora adipisci dolor nulla dolores maiores.', 1, 1, '1955-05-17 16:48:21', '1934-02-04 03:36:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 33, 46, 'Officiis eum suscipit ab esse. Ut quam consequuntur doloremque aut eveniet possimus doloribus quae.', 0, 1, '1922-09-01 18:15:09', '2002-02-05 22:57:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 36, 27, 'Et rerum quam sapiente. Dolor et fugiat debitis qui. Velit sit ullam fugit.', 0, 1, '1962-07-21 02:29:40', '1977-05-07 07:33:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 43, 64, 'Alias non praesentium tenetur minus tempora sit. Ut et mollitia nobis. Non reprehenderit mollitia tenetur sint sunt est quod enim.', 1, 1, '2001-08-18 21:33:26', '1972-02-26 13:14:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 27, 75, 'Consectetur minima sapiente est ut dolorum quod ipsa. Quod voluptas dolor alias quo maiores eos. Vel amet vero culpa unde molestiae.', 0, 0, '2003-02-14 13:01:44', '1938-04-17 01:09:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 27, 38, 'Iure et inventore ex dolor. Ducimus magni distinctio modi illum at magni consectetur. Aspernatur veritatis doloribus minima explicabo qui. Officiis ut rerum aliquid fugit dolorum vel laboriosam.', 1, 1, '1976-04-05 09:23:56', '1939-06-30 09:40:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 67, 13, 'Veritatis fuga enim quia eum tenetur corrupti. Necessitatibus libero sint dolorem sint. Minima reiciendis aperiam ipsum reprehenderit et aut. Voluptatem rerum fugit qui animi magni eos laboriosam.', 1, 0, '1937-03-23 01:36:01', '2006-06-24 02:49:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 19, 53, 'Maiores aliquid ut cumque similique. Dignissimos quo voluptatem quas eveniet. Libero nisi aliquam molestias quisquam ea voluptas. Atque aut natus et voluptatem repellat voluptatem ea.', 1, 0, '1970-01-01 03:57:36', '1930-08-13 21:23:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 65, 38, 'Dolorem temporibus consequatur omnis. Accusamus doloribus non unde quia. Maiores quia esse similique et ut tenetur. Voluptas illo non et quia nam.', 0, 1, '1960-11-06 20:26:14', '1984-12-13 18:29:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 8, 61, 'Quis laboriosam placeat at assumenda dolorem fuga doloremque. Excepturi ipsam voluptas id vero incidunt aspernatur. Maiores blanditiis facere et. Ut dolore aut a quia nulla harum. Eveniet est amet accusantium natus est.', 1, 0, '1964-08-01 03:07:00', '1991-02-18 18:54:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 66, 44, 'Aut non molestiae neque tempore quia quo. Veritatis modi suscipit a. Aut totam quod voluptas qui.', 0, 0, '1965-10-14 04:41:50', '1951-08-06 05:42:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 37, 15, 'Doloribus voluptatibus laborum officia fuga. Magni ipsa debitis iure adipisci possimus sit. Qui corrupti fuga rerum qui ducimus aliquid sed error.', 1, 0, '1929-04-07 21:18:03', '1933-10-15 03:26:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 91, 17, 'In iste eveniet atque molestias occaecati. Saepe eius occaecati sequi perferendis eos. Blanditiis itaque est est repellat rerum atque. Est vero in explicabo rem animi.', 0, 1, '1982-08-12 19:38:12', '1991-04-03 08:37:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 10, 86, 'Nobis sint corrupti voluptatem amet in. Possimus deleniti et nihil non cum. Quia dignissimos suscipit natus nisi tenetur et. Voluptatem ipsam fugit nihil vel architecto eius blanditiis.', 0, 1, '1925-09-13 17:44:00', '1933-03-26 21:59:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 99, 60, 'Accusantium voluptatibus voluptates aspernatur voluptatem est ea. Ratione voluptas aut sapiente est pariatur non. Id asperiores voluptatem voluptatem modi suscipit ea. Placeat corrupti consequatur quae ut et.', 0, 0, '1954-08-11 11:09:58', '1931-12-10 10:48:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 71, 30, 'Asperiores facere et velit illo qui omnis reprehenderit. Eum libero assumenda consequatur et. Dolores et officia voluptas ut ipsam.', 0, 1, '2006-04-28 00:20:55', '2019-05-07 02:20:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 46, 89, 'Numquam sequi quia est omnis. Praesentium rem debitis hic atque. Rerum vero qui rem similique est molestiae nulla.', 1, 1, '2007-11-06 04:53:18', '1948-11-10 04:22:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 86, 86, 'Est est error accusamus possimus. Natus sed eaque eum commodi nobis non et. Aut eius vitae dicta aut natus temporibus iure. Ex tempora ad eum harum sunt voluptatem in ullam.', 0, 1, '1950-11-24 01:08:55', '1985-10-23 22:43:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 14, 21, 'Quia sunt est suscipit impedit omnis aut. Provident vel qui harum ut assumenda. Neque vel blanditiis non consequuntur modi.', 1, 0, '1989-04-28 09:38:19', '2018-10-27 10:03:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 73, 39, 'Fuga quaerat nobis quaerat ea deleniti sunt. Maxime velit natus voluptatibus harum dolores et ad. Mollitia deserunt ipsa et laboriosam ea laborum vitae.', 0, 0, '1967-05-13 08:41:19', '1962-10-17 06:37:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 13, 17, 'Est et sunt quia tenetur veniam unde tempore. Illum sit et animi quisquam porro et. Sunt saepe culpa perferendis accusantium dolorum commodi ut id. Eos voluptas et unde sit et veniam est.', 0, 0, '1967-06-28 04:17:23', '1999-05-04 12:51:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 69, 12, 'Mollitia provident nostrum voluptatem aspernatur. Cupiditate excepturi praesentium alias qui distinctio voluptate. Recusandae eos omnis sint rem est consectetur.', 1, 1, '1945-03-31 03:37:21', '1954-09-10 01:53:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 43, 7, 'Dignissimos quia nemo in officiis unde consequatur. Quidem porro adipisci dolorum et ratione voluptatem eveniet nulla. Omnis ea molestias rerum ut. Eaque fugit repudiandae eos ut sunt aperiam.', 0, 0, '1929-08-07 17:25:59', '1934-01-14 14:33:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 29, 95, 'Hic hic architecto pariatur velit omnis id. Corporis enim recusandae quia omnis sed reprehenderit. Dicta earum odit totam consequatur aperiam doloribus. Rerum eveniet incidunt delectus.', 0, 0, '1952-06-25 14:23:34', '1980-02-01 07:19:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 89, 21, 'Accusamus dolores ex laudantium deserunt sequi. Veritatis praesentium voluptatem sunt asperiores. Quo ex velit enim dolore. Enim ut earum sunt sit voluptatum reiciendis qui.', 0, 1, '1963-11-22 04:04:43', '1983-05-24 01:56:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 36, 25, 'Ex omnis beatae odit officia velit voluptas dolore. Non delectus debitis vel nihil atque. Voluptas laborum ut nisi beatae eum ut est.', 0, 0, '1951-12-25 12:54:59', '1995-04-13 12:02:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 57, 84, 'Voluptas qui placeat repellendus et quae. Qui qui repellendus eaque similique consequatur debitis ut. Laborum autem temporibus aspernatur inventore.', 0, 0, '1993-07-14 14:17:35', '2006-06-21 14:10:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 90, 26, 'Deserunt in doloribus asperiores sit. Ipsa ex dignissimos ipsa. Possimus corrupti laborum ducimus facere mollitia et tempore.', 1, 0, '1988-04-26 02:10:26', '1926-09-28 14:01:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 73, 57, 'Cum aut nemo quo aliquid consectetur accusantium sed. Nam ab perferendis iure omnis. Maiores voluptates enim nesciunt temporibus quod porro. Perferendis nobis molestiae sunt consectetur vero nesciunt totam.', 1, 0, '1995-05-12 18:11:03', '2010-04-18 21:55:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 76, 29, 'Similique unde omnis officia quisquam necessitatibus nihil expedita ut. Deleniti consectetur amet fugit. Et rerum accusamus aliquid et ut optio.', 0, 0, '1998-06-29 21:27:44', '1948-10-17 00:48:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 16, 70, 'Laborum voluptas dolores illo fuga. Explicabo qui at voluptatem illum. Aut ipsum aut minus iusto harum quo ipsum. Sit aut rem natus ut.', 0, 0, '1979-10-22 15:34:07', '2008-11-29 04:42:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (81, 39, 92, 'Possimus qui non ipsum id. Qui molestias aut debitis ut quis id. Impedit doloremque quia consequuntur et dignissimos voluptatum et. Doloremque autem tempora vero consequatur eos in molestias.', 1, 0, '1981-06-26 08:06:23', '1966-08-03 13:36:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (82, 6, 17, 'Quo est aut nulla a sit occaecati debitis praesentium. Earum aut voluptatum amet ad atque enim numquam. Non odit omnis vitae et. Incidunt ipsum quaerat earum quis enim itaque nihil.', 0, 0, '1983-07-07 10:10:11', '1947-05-24 07:39:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (83, 39, 67, 'Minima deleniti laboriosam quae ut velit. Iste aut libero facilis ipsam. Et provident quaerat voluptatem consectetur fuga impedit. Aspernatur nulla beatae est magni voluptate sed aliquid suscipit.', 0, 1, '1928-04-10 01:00:13', '1985-01-24 07:44:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (84, 8, 88, 'Vel sint minima dolore sunt neque eum. Facilis et quisquam necessitatibus consequatur sed eos culpa. Nam non ea voluptas vel excepturi quia. Minima perspiciatis adipisci pariatur voluptatum vel consectetur numquam.', 0, 1, '2003-03-12 04:43:55', '1952-06-30 14:57:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (85, 47, 8, 'Voluptate blanditiis id quod dicta et. Necessitatibus saepe totam culpa dignissimos eveniet. Aut quidem aut reiciendis saepe mollitia recusandae autem.', 1, 1, '1972-08-03 02:52:35', '2008-01-30 23:51:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (86, 34, 53, 'Ipsam dolorem corporis alias. Voluptas atque ratione quo sed aperiam quibusdam. Non aut aut ab occaecati ducimus. Debitis dolore possimus vero laborum.', 0, 0, '1978-08-05 19:50:00', '1927-10-16 03:40:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (87, 40, 83, 'Ut voluptate modi eaque. Necessitatibus voluptas culpa repellendus ipsa sed. Voluptates eum possimus alias. Consequatur quae tempore sed et porro sed odio.', 0, 0, '1971-03-01 20:06:57', '1992-06-25 23:12:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (88, 41, 50, 'Sint sed modi cupiditate laudantium. Perspiciatis eius aut eius facere.', 1, 1, '1994-04-09 00:43:41', '1999-12-25 18:40:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (89, 43, 46, 'Labore asperiores aperiam temporibus similique. Vel fuga est aut nulla. Earum in assumenda qui sit aut ut.', 0, 0, '1999-09-22 11:58:27', '1964-03-14 00:08:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (90, 75, 25, 'Amet et qui velit animi. Odio quia eos minima libero modi alias voluptate. Ullam illo perspiciatis deserunt ut et facilis totam vero.', 1, 0, '1959-10-11 08:16:12', '1921-12-18 18:38:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (91, 32, 59, 'Consectetur tempore doloremque optio ad. Dicta libero quibusdam autem nisi corporis iste. Error nihil facere sint nesciunt officia facere. Qui aut sapiente totam nostrum harum fuga.', 1, 0, '1942-09-17 14:28:05', '2015-11-13 10:10:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (92, 74, 4, 'Vel possimus harum voluptatem similique provident id et. Aut quam et corrupti quis veritatis sint. Rerum possimus commodi est quia. Maxime inventore dolorum et a occaecati odio.', 1, 1, '1958-05-23 02:34:45', '1982-02-08 16:42:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (93, 36, 81, 'Optio blanditiis voluptatibus aut quas quibusdam incidunt doloremque ducimus. Illum ut vel rerum expedita. Sit hic adipisci rerum rerum. Non eum omnis repellat tenetur. Laudantium autem asperiores perferendis earum incidunt et est odio.', 1, 0, '2020-07-07 04:14:47', '1952-02-11 08:13:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (94, 54, 56, 'Sed omnis distinctio culpa et est enim ducimus. Aut nobis quaerat sint molestiae vero eligendi. Beatae vel harum illo et.', 1, 1, '1988-01-14 22:23:39', '2005-04-12 15:47:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (95, 55, 32, 'Voluptatem et quod aut aut aut. Consequatur voluptatem aliquam dolorem officia. Aspernatur veniam eligendi voluptatum.', 1, 1, '1970-02-11 23:43:59', '1978-12-19 18:03:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (96, 38, 49, 'Atque debitis ea sed sunt molestiae est aut. Sit quia veniam eos similique ipsam ex. Sunt ut aut sint saepe repudiandae suscipit. Veniam voluptas recusandae quod fugit.', 1, 0, '1954-08-15 15:59:13', '1927-04-09 04:48:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (97, 57, 66, 'Voluptatem dolorem possimus sequi enim. Ipsam sit sint quo dolorum quo qui nostrum. In ut quia excepturi deserunt et itaque sed.', 1, 1, '2019-09-18 01:24:05', '1959-08-12 17:44:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (98, 63, 69, 'Rem qui consequatur ab omnis laudantium placeat. Ut qui voluptatibus quae. Aperiam sed perferendis illo nemo voluptate numquam id beatae.', 1, 1, '1995-01-10 08:27:44', '1949-09-13 14:46:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (99, 67, 97, 'Quia recusandae deleniti aut est. Sed vel ut in ratione quisquam earum non eos. Ducimus aut illum sit ut. Dolor praesentium expedita fugit ipsum quo tempora molestiae ea.', 1, 1, '1977-01-06 23:52:46', '1952-09-27 11:43:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (100, 3, 26, 'Delectus ipsum suscipit debitis molestiae est et est. Illo velit consequatur expedita occaecati quis. Labore eaque quia cupiditate distinctio aut provident.', 1, 1, '1949-11-30 09:24:28', '1978-11-28 18:47:01');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, '\'', '1992-08-11', 1376, 'Tatumfurt', 'Heard Island and McDonald Islands', '1921-06-04 02:02:04', '1950-05-26 21:56:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, '\'', '1925-08-13', 0, 'Champlinstad', 'Haiti', '1997-03-26 18:06:01', '1997-09-06 11:05:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, '\'', '1973-02-24', 31, 'South Kamilleview', 'Saint Vincent and the Grenadines', '1990-11-06 03:55:48', '1949-02-14 15:56:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, '\'', '1944-10-25', 61, 'South Deanna', 'British Indian Ocean Territory (Chagos Archipelago)', '1952-09-16 21:38:39', '1948-12-23 03:41:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, '\'', '1973-11-02', 74, 'Zboncakland', 'Uruguay', '1972-03-03 08:39:11', '1974-07-13 10:13:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, '\'', '1981-05-10', 0, 'Littlemouth', 'Dominican Republic', '1945-02-24 07:05:24', '1924-02-25 15:53:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, '\'', '2000-01-13', 99, 'North Carolyn', 'Mongolia', '1938-07-30 21:17:32', '1929-05-25 06:39:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, '\'', '1954-11-12', 0, 'Walkertown', 'Saint Barthelemy', '2001-02-08 10:42:52', '1932-02-24 05:21:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, '\'', '1934-12-14', 3, 'Leximouth', 'Egypt', '1991-04-25 07:42:32', '1938-12-20 18:27:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, '\'', '1926-09-05', 3, 'Quinnfurt', 'Lithuania', '1929-04-25 07:53:46', '1993-03-19 19:00:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, '\'', '2004-03-26', 2318, 'Annehaven', 'Turkmenistan', '1964-09-24 16:25:14', '1988-02-18 18:08:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, '\'', '2017-05-21', 4836, 'North Demetrisview', 'Greece', '1931-10-12 21:37:40', '1990-12-20 10:39:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, '\'', '1973-12-29', 2, 'Goodwinland', 'Namibia', '1984-12-23 15:19:21', '1961-03-10 03:42:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, '\'', '2020-05-05', 0, 'East Cathrinemouth', 'Tonga', '1937-07-27 01:33:03', '2014-08-18 08:21:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, '\'', '1964-01-14', 98, 'West Caryton', 'India', '1987-12-26 14:31:06', '1991-12-09 07:38:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, '\'', '1953-05-01', 0, 'Lupeberg', 'Canada', '1959-06-14 11:14:16', '1990-04-28 18:08:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, '\'', '1993-12-02', 76, 'Hartmannfort', 'Slovakia (Slovak Republic)', '1941-01-29 22:02:18', '1970-11-02 04:47:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, '\'', '1939-10-17', 97, 'Hansenbury', 'Belgium', '1970-09-28 07:11:59', '1933-04-24 14:25:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, '\'', '1927-09-25', 7447, 'Beaulahport', 'Philippines', '1927-02-24 02:47:58', '1953-11-20 07:19:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, '\'', '2007-12-18', 936, 'Elnoraborough', 'Tajikistan', '1939-03-01 07:51:10', '1937-04-30 11:57:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, '\'', '1978-01-24', 20, 'Casperport', 'Dominican Republic', '1931-06-04 19:50:10', '2010-12-04 09:53:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, '\'', '1926-10-06', 0, 'New Harmonport', 'United States Virgin Islands', '1941-12-03 02:29:22', '1933-05-30 12:58:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, '\'', '1984-12-26', 235, 'South Euniceberg', 'Nauru', '1952-08-08 03:21:43', '2018-11-02 02:24:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, '\'', '2008-08-02', 5195, 'East Lavernport', 'Djibouti', '1970-04-12 17:15:12', '1945-03-07 08:21:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, '\'', '2005-02-15', 0, 'Effertzton', 'United States Minor Outlying Islands', '1999-06-03 23:40:34', '1941-12-19 04:18:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, '\'', '2005-02-14', 6811, 'South Taryn', 'Venezuela', '1920-12-26 22:38:48', '1963-04-10 06:55:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, '\'', '1947-06-05', 6, 'Baumbachberg', 'Lithuania', '1931-07-13 22:56:49', '2020-06-22 19:40:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, '\'', '1989-07-25', 8415, 'Lake Lisandro', 'New Zealand', '1990-06-11 17:25:08', '1979-01-01 07:14:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, '\'', '1968-07-02', 50, 'Kohlerberg', 'Tonga', '2012-11-03 14:17:59', '1948-12-26 10:43:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, '\'', '1998-06-04', 5770, 'New Emelie', 'Belarus', '1954-11-08 01:41:16', '2015-04-30 23:26:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, '\'', '1968-02-11', 7, 'Hillsville', 'Reunion', '2002-04-04 10:37:05', '1946-08-16 20:35:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, '\'', '1948-09-08', 0, 'Vernermouth', 'Czech Republic', '1977-09-21 01:51:21', '1940-06-03 03:30:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, '\'', '1934-11-15', 9367, 'East Arnulfoville', 'Anguilla', '1935-10-20 07:15:44', '1990-08-06 19:04:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, '\'', '1951-11-07', 2, 'Shanybury', 'Trinidad and Tobago', '2020-05-11 04:37:41', '1954-10-17 20:33:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, '\'', '1978-07-15', 217, 'Quitzonstad', 'Swaziland', '1997-03-03 02:47:35', '1928-02-13 23:08:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, '\'', '1956-06-21', 0, 'Rubyfurt', 'Uruguay', '2013-11-11 18:57:35', '1958-09-04 14:07:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, '\'', '2020-04-14', 5, 'Bradtketon', 'Iran', '1957-05-22 09:04:41', '1924-03-02 12:14:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, '\'', '1944-02-01', 9, 'Lake Jessikaside', 'Russian Federation', '1930-07-25 13:56:58', '2002-05-13 11:03:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, '\'', '1922-05-19', 0, 'South Anibal', 'Guyana', '1999-05-29 15:30:00', '1950-06-27 14:56:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, '\'', '2012-05-19', 1, 'North Cordiestad', 'Yemen', '1934-09-17 16:42:30', '1934-01-29 07:37:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, '\'', '1927-12-29', 6, 'East Yasmin', 'Netherlands', '1954-10-16 19:55:57', '1995-11-16 09:57:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, '\'', '1977-10-06', 0, 'Wittington', 'Syrian Arab Republic', '1987-12-12 14:27:37', '1959-02-02 00:23:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, '\'', '2018-02-03', 0, 'Gottliebburgh', 'Anguilla', '1991-04-27 18:04:48', '1996-05-23 07:56:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, '\'', '1967-02-11', 0, 'North Nikkoland', 'Morocco', '1948-10-31 01:47:44', '1977-05-27 20:15:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, '\'', '1953-06-10', 7871, 'Dietrichmouth', 'Norway', '1942-09-06 18:24:37', '1976-01-29 21:17:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, '\'', '1997-07-03', 96, 'East Makenziechester', 'Bulgaria', '1939-09-22 11:46:56', '2009-03-28 14:24:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, '\'', '1976-07-07', 5, 'Dickenston', 'American Samoa', '1976-12-12 04:39:15', '1999-12-03 18:40:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, '\'', '1922-01-29', 0, 'West Clement', 'Portugal', '1971-07-12 05:51:53', '2016-07-18 22:16:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, '\'', '1999-05-15', 0, 'Port Marian', 'Philippines', '2009-03-29 20:01:02', '1932-01-02 14:12:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, '\'', '1962-07-15', 0, 'Jakubowskiview', 'Martinique', '1996-09-14 15:06:05', '1947-05-06 00:24:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, '\'', '1962-02-03', 0, 'Connborough', 'United States Virgin Islands', '1921-05-07 14:12:56', '2003-12-08 09:04:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, '\'', '1956-08-15', 0, 'Liaberg', 'Tokelau', '1949-11-30 20:15:30', '1979-12-21 14:46:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, '\'', '1992-07-15', 6, 'Bogisichfurt', 'United States of America', '1987-10-24 18:57:04', '2000-07-07 07:08:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, '\'', '1974-11-16', 80, 'Tressaberg', 'French Polynesia', '1941-06-22 20:54:26', '1979-02-14 03:00:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, '\'', '1990-08-01', 0, 'Jacobsonburgh', 'Cyprus', '2008-12-26 22:32:26', '1940-07-14 07:28:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, '\'', '1985-07-16', 0, 'New Wilson', 'Cocos (Keeling) Islands', '1939-07-11 23:45:51', '1968-07-16 02:05:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, '\'', '1985-01-18', 6459, 'Konopelskishire', 'Singapore', '1974-05-05 20:50:44', '1937-05-14 16:39:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, '\'', '1998-08-18', 0, 'Jalynfurt', 'Slovenia', '1959-10-19 20:27:31', '2014-11-19 00:13:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, '\'', '1996-06-30', 92, 'East Silas', 'Honduras', '1943-02-04 22:40:53', '1981-10-16 18:41:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, '\'', '1930-08-19', 4294967295, 'West Guido', 'Guatemala', '1946-03-25 16:57:32', '2011-07-05 08:15:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, '\'', '1958-01-27', 56, 'Port Javierbury', 'Cayman Islands', '1989-07-05 01:11:07', '1938-09-19 18:24:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, '\'', '1970-05-10', 4378, 'Floyville', 'Vietnam', '1927-02-18 07:24:18', '1936-04-08 11:36:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, '\'', '1963-07-28', 6, 'Lake Jaeden', 'Tuvalu', '1968-06-26 00:57:16', '1952-07-07 10:12:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, '\'', '2005-10-19', 0, 'New Mathilde', 'Isle of Man', '1921-06-11 13:42:15', '1944-09-05 21:05:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, '\'', '1955-11-20', 0, 'Aryannaside', 'Guinea-Bissau', '1954-12-19 03:47:05', '1933-07-16 08:50:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, '\'', '1932-04-24', 0, 'Tillmanburgh', 'Guam', '1954-06-14 08:32:26', '2001-09-28 08:22:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, '\'', '1967-06-02', 8237, 'Toybury', 'Barbados', '2005-06-04 21:01:26', '2006-03-15 11:27:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, '\'', '1979-05-16', 8, 'West Mallie', 'Tunisia', '1989-04-23 21:42:28', '1934-01-04 06:03:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, '\'', '1938-06-07', 0, 'Sadiehaven', 'Bangladesh', '2003-01-17 18:54:05', '1959-06-25 23:42:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, '\'', '1968-07-14', 0, 'Kosshaven', 'Equatorial Guinea', '2011-04-24 07:42:56', '1971-10-21 22:46:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, '\'', '2005-11-25', 7, 'East Ted', 'Faroe Islands', '1966-08-12 17:43:21', '1975-06-14 23:33:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, '\'', '2013-08-24', 66, 'Nikolasland', 'Philippines', '1960-05-13 11:28:14', '1977-02-16 02:09:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, '\'', '1928-10-15', 0, 'South Wilbertmouth', 'Moldova', '1935-06-28 21:31:23', '1929-11-26 16:54:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, '\'', '1933-06-14', 0, 'Bayerville', 'Kenya', '1927-08-03 19:45:10', '1949-09-19 23:58:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, '\'', '1946-04-02', 56, 'Hyattland', 'Marshall Islands', '1927-03-11 00:21:46', '1969-03-01 06:41:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, '\'', '1993-02-12', 90, 'Carolyneton', 'Montserrat', '1938-06-18 02:09:17', '1985-12-17 15:53:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, '\'', '1979-08-19', 0, 'Cecileview', 'Nepal', '1944-04-16 13:28:08', '1969-07-07 07:03:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, '\'', '1942-08-22', 7528, 'Josephmouth', 'Marshall Islands', '1942-06-05 14:06:21', '1959-07-09 04:58:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, '\'', '1942-08-23', 4450, 'Morissettetown', 'Montenegro', '1955-11-23 06:32:59', '2004-10-20 06:16:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, '\'', '1945-11-14', 5, 'Port Elsa', 'Bahamas', '2013-06-15 21:05:38', '1968-07-21 00:53:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, '\'', '1999-11-04', 0, 'Port Leolashire', 'United Kingdom', '1978-05-30 05:36:59', '1975-05-04 13:51:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, '\'', '2005-06-01', 0, 'Port Violet', 'Sierra Leone', '1979-05-31 21:02:44', '1949-07-05 20:35:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, '\'', '1957-12-29', 0, 'West Hillarymouth', 'Bhutan', '1984-07-09 23:14:57', '1926-11-03 22:14:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, '\'', '1923-09-22', 9832, 'Gonzalobury', 'United States of America', '1947-05-05 03:31:41', '2002-06-12 04:28:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, '\'', '2009-05-23', 220000000, 'Lake Henri', 'Djibouti', '1966-08-22 19:11:03', '1932-04-04 14:18:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, '\'', '1995-05-19', 0, 'West Deborah', 'Taiwan', '2004-07-08 17:41:55', '1999-01-28 22:14:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, '\'', '1939-07-30', 2337, 'Port Ansleyside', 'Moldova', '1990-11-23 05:25:19', '1978-11-26 06:38:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, '\'', '1955-03-16', 4761, 'Beermouth', 'Cape Verde', '2010-05-23 11:04:50', '1948-02-03 13:21:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, '\'', '2013-08-01', 0, 'Graysonmouth', 'Monaco', '1934-08-25 03:32:05', '1962-12-12 04:42:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, '\'', '1922-07-07', 8, 'New Kristinfurt', 'Turkey', '1966-02-23 23:06:55', '1946-07-08 12:04:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, '\'', '1930-01-17', 4312, 'Gulgowskiberg', 'Guam', '1959-12-18 10:13:41', '1976-04-19 05:49:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, '\'', '1962-06-15', 4294967295, 'Shanieview', 'New Zealand', '2008-04-11 18:51:47', '1999-08-29 04:13:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, '\'', '2004-06-15', 4, 'North Kaydenland', 'Congo', '1959-06-21 08:00:37', '1951-08-14 05:04:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, '\'', '1994-11-15', 0, 'Brisaport', 'Guyana', '1930-04-20 16:56:53', '2001-09-21 07:09:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, '\'', '1944-12-09', 61, 'Myraton', 'Korea', '2000-10-21 11:29:11', '1950-04-03 23:04:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, '\'', '1997-01-21', 174, 'North Nyasia', 'Togo', '2007-02-19 14:08:50', '1974-06-15 15:32:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, '\'', '1996-11-12', 8900, 'McKenzieport', 'Kuwait', '2013-05-21 04:56:47', '2001-11-01 03:26:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, '\'', '1973-07-06', 0, 'Hettingerton', 'Kazakhstan', '1954-07-01 08:28:26', '2002-08-11 03:47:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, '\'', '1999-05-19', 4124, 'West Antoinette', 'Ghana', '1950-12-20 01:16:14', '2016-04-20 02:26:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, '\'', '2007-04-13', 0, 'South Allenebury', 'Cote d\'Ivoire', '1929-06-12 02:29:00', '1950-03-17 16:28:15');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Reanna', 'Mante', 'karlee28@example.org', '720-734-0018', '1974-04-03 22:11:10', '2009-06-18 22:12:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Annamae', 'White', 'thiel.tia@example.com', '080-355-2123', '1959-02-02 07:55:35', '1951-08-08 05:45:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Aida', 'Jakubowski', 'herzog.ismael@example.com', '771.192.3861', '1977-01-06 01:21:55', '1934-11-08 11:03:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Brandt', 'Kiehn', 'ledner.denis@example.com', '(954)147-0979', '1940-09-02 11:44:40', '2018-04-21 09:45:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Alejandra', 'Simonis', 'maia93@example.org', '906-024-8850x99487', '2004-02-11 01:18:33', '1962-04-02 21:03:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Titus', 'Okuneva', 'audra68@example.net', '1-702-189-0145x82051', '1968-03-25 02:45:13', '2005-10-03 01:25:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Blanca', 'Johnston', 'kacie58@example.net', '607-544-6703x4597', '1992-11-29 13:22:36', '1933-12-24 18:31:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Javier', 'Heller', 'lindgren.reyes@example.com', '(373)698-2534', '1980-07-25 18:55:53', '1929-07-25 19:37:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Phyllis', 'Howell', 'tbrown@example.net', '00681023345', '1983-01-08 04:13:39', '1954-11-30 00:17:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Madelynn', 'Kassulke', 'kuphal.christine@example.net', '933.071.4977x4830', '2015-06-18 20:12:07', '1928-09-01 01:41:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'June', 'Lynch', 'alueilwitz@example.org', '1-413-552-2661', '1931-12-01 22:20:15', '1965-11-24 10:52:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Price', 'Connelly', 'shyann.murray@example.com', '06741129426', '1929-02-16 13:39:57', '1951-01-19 01:47:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Claude', 'King', 'magnolia97@example.net', '1-188-972-2392x432', '1967-11-02 18:06:18', '2010-07-03 23:29:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Evangeline', 'Windler', 'runolfsdottir.bill@example.org', '655.158.8344x46989', '1925-11-07 20:52:12', '1955-12-27 06:07:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Hazel', 'Olson', 'qcorwin@example.net', '176.968.4491x9470', '1956-02-06 05:11:54', '2015-12-28 14:18:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Jamal', 'Feeney', 'ivon@example.com', '1-362-296-6155x75886', '1947-05-30 19:22:42', '1979-04-11 07:40:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Bernard', 'Bernhard', 'glemke@example.net', '378-892-4801', '2010-11-05 08:38:26', '1985-02-17 16:34:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Kendrick', 'Murray', 'hickle.arvilla@example.org', '1-529-048-4542', '1931-08-12 22:32:29', '1920-10-16 01:01:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Jamie', 'Schamberger', 'mbuckridge@example.net', '1-483-990-4501', '2000-01-14 22:44:35', '1999-09-20 02:13:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Joanny', 'Tromp', 'luther.kris@example.net', '391-494-5277', '1978-02-01 00:14:23', '1955-06-05 16:27:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Ari', 'Streich', 'rice.brandon@example.com', '1-658-886-4715x86413', '1926-11-28 09:09:19', '1997-12-04 20:12:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Rosalind', 'Schmitt', 'alanis.gottlieb@example.net', '06666279532', '1964-05-11 20:26:19', '1991-05-19 19:53:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Albin', 'Orn', 'lance17@example.com', '860.408.4733x11209', '1953-06-21 19:45:48', '2007-04-25 14:46:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Rosanna', 'Waters', 'devon25@example.com', '06559365335', '2018-07-24 12:24:20', '1988-06-05 18:14:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Emerald', 'Effertz', 'pascale71@example.net', '971.441.4510x6351', '1932-03-19 08:35:12', '2018-05-05 10:28:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Jazlyn', 'Huels', 'uheaney@example.org', '1-391-296-3757', '1970-04-04 00:57:18', '2005-04-06 10:46:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Eladio', 'Balistreri', 'ramon54@example.net', '561-907-1532', '1969-12-09 06:51:51', '2004-02-29 07:20:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Kendra', 'Hessel', 'kling.austen@example.org', '+96(5)6381516105', '1933-06-03 20:08:03', '1926-10-25 01:51:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Justina', 'Purdy', 'elliott.kemmer@example.org', '707-680-0121', '1985-11-18 22:15:19', '1993-03-02 10:16:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Archibald', 'Parisian', 'maryse.armstrong@example.com', '117-243-7720x19983', '2007-04-17 12:09:57', '2000-07-22 02:07:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Kenneth', 'Osinski', 'lilyan.marvin@example.net', '662.391.3247x281', '1951-03-11 05:16:40', '1929-12-17 01:33:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Janiya', 'Muller', 'marquardt.milford@example.org', '06449037144', '2003-07-21 11:38:18', '1965-11-26 14:17:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Tess', 'Baumbach', 'fermin05@example.org', '1-914-849-9006', '1966-12-25 06:25:19', '2004-06-02 08:17:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Hassan', 'Rippin', 'morris34@example.net', '(262)153-6368', '1999-06-27 17:04:50', '1955-05-04 03:43:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Linnie', 'Ullrich', 'stanton.nolan@example.org', '012.534.4460x256', '1977-07-20 16:38:02', '1946-08-22 16:25:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Dedrick', 'Cremin', 'orie58@example.net', '473.982.0292', '2008-05-08 02:53:47', '1956-04-29 22:33:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Alison', 'Welch', 'vmarvin@example.net', '009-776-9880x14193', '1934-08-30 14:07:10', '1961-11-13 06:24:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Jarrett', 'O\'Kon', 'theron.wilkinson@example.com', '(756)523-0518x85148', '2012-06-10 09:14:30', '2011-09-14 07:30:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Modesta', 'Kovacek', 'madison.kuphal@example.net', '844.154.5035x05562', '1971-06-17 14:53:05', '1936-04-27 02:16:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Erica', 'Purdy', 'jshields@example.org', '00246038305', '1946-12-25 06:11:15', '1972-09-08 13:59:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Evangeline', 'Goodwin', 'hermina87@example.net', '(907)667-8465', '2003-06-04 17:16:07', '1935-06-13 09:03:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Furman', 'Stoltenberg', 'barrows.victoria@example.net', '430.297.8368x33086', '2002-11-28 17:45:39', '1991-08-03 14:48:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Violet', 'Kohler', 'camylle25@example.com', '1-051-834-6124', '1987-09-06 16:33:06', '1997-12-01 15:57:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'King', 'Stehr', 'martina45@example.com', '1-277-563-3563', '1994-05-15 08:19:57', '2012-04-30 06:43:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Kennedi', 'Pagac', 'pstrosin@example.com', '+48(0)2740994506', '1922-04-07 20:21:58', '1984-03-31 15:05:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Dannie', 'Balistreri', 'santina53@example.org', '1-175-921-9051x541', '2007-12-09 07:48:23', '1985-12-04 17:17:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Abbie', 'Stark', 'thea.gottlieb@example.org', '904-891-3434', '2001-07-26 22:53:50', '1923-06-16 11:41:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Adonis', 'O\'Keefe', 'vhartmann@example.org', '968-170-7804', '1993-05-27 02:40:00', '1983-02-02 05:03:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Gabriella', 'Lindgren', 'carmelo.o\'hara@example.com', '1-136-454-6185x699', '1968-06-03 02:41:44', '1972-04-04 20:43:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Colton', 'Farrell', 'qnolan@example.com', '1-406-758-2745', '2014-06-02 08:47:54', '2004-04-26 03:08:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Vesta', 'Bednar', 'alexie75@example.net', '876.994.7026', '1958-03-17 03:35:45', '1924-11-03 20:27:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Reese', 'Russel', 'batz.keira@example.net', '832.598.2312x390', '1930-09-19 17:17:39', '1980-01-09 00:28:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Jennifer', 'Dooley', 'olangworth@example.org', '1-836-043-5186', '1988-10-18 18:29:34', '1966-03-28 07:32:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Diego', 'Hoeger', 'cwaelchi@example.com', '(229)483-2818', '2005-04-14 08:55:36', '2000-04-27 17:33:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Iva', 'Gibson', 'afahey@example.org', '1-329-103-4592x38063', '1973-08-13 04:39:47', '1947-02-22 08:41:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Ruthie', 'Johnston', 'leif12@example.net', '382.867.0841x370', '2012-06-29 04:33:34', '1988-03-17 04:41:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Lester', 'Stark', 'greta97@example.com', '(150)002-8010', '1974-07-09 03:00:51', '1943-08-14 06:22:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Penelope', 'Kuhlman', 'vschroeder@example.org', '546.654.5769x219', '2001-03-03 15:51:14', '1930-04-14 16:33:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Mary', 'Block', 'cassin.ophelia@example.org', '039-038-6488', '1959-03-18 09:28:26', '1964-03-21 06:59:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Ena', 'Stark', 'friesen.micheal@example.org', '290.677.2722', '1953-04-05 15:33:12', '1963-03-21 19:30:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Tito', 'Gottlieb', 'eframi@example.org', '1-377-054-1895x54962', '1941-05-10 02:34:29', '1953-08-26 03:52:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Libby', 'Boehm', 'shawna.pagac@example.org', '+56(9)1562183990', '2007-06-11 03:55:31', '1935-11-27 22:07:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Zachary', 'Frami', 'gnolan@example.com', '419.712.0097', '1975-07-09 07:36:31', '1929-08-17 09:05:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Wyatt', 'Jast', 'shanon.windler@example.net', '(768)700-4716x388', '1983-03-23 15:13:50', '1924-10-21 13:23:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Willow', 'Howe', 'nicola47@example.org', '(174)501-7437x41867', '1925-01-31 05:00:11', '2010-12-22 12:54:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Camilla', 'Beier', 'oo\'conner@example.net', '1-147-026-2157x100', '1925-05-21 20:19:47', '1931-07-13 07:49:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Thalia', 'Pouros', 'gharvey@example.com', '057-173-0555', '1945-10-03 17:52:43', '1990-04-27 08:37:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Margie', 'King', 'eshanahan@example.com', '(438)106-7855x64497', '1980-09-21 00:01:03', '1958-03-07 06:23:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Conner', 'O\'Conner', 'fmohr@example.net', '1-442-960-8235', '1957-07-20 19:36:57', '1927-11-28 00:43:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Providenci', 'Bechtelar', 'boyer.murl@example.com', '777.880.3913', '1960-12-27 09:34:03', '1939-07-08 23:59:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Jace', 'Metz', 'galtenwerth@example.net', '(253)590-4460x9314', '1920-11-16 03:14:20', '1975-10-06 01:58:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Rosalinda', 'Langworth', 'rreilly@example.net', '+01(4)0538106907', '1929-03-10 22:57:55', '1955-10-10 16:58:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Terrell', 'Johnston', 'botsford.enid@example.com', '(443)261-2699x1526', '2017-10-29 14:15:13', '2015-09-20 20:04:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Tracy', 'Hagenes', 'libbie.konopelski@example.org', '+67(9)5604694128', '2011-09-03 08:12:49', '1947-07-24 13:35:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Caleigh', 'Kuhlman', 'ruthie.hills@example.org', '1-540-894-2815x30316', '2001-11-07 13:37:48', '1982-12-28 09:03:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Winston', 'Weber', 'yboyer@example.net', '333.633.6736', '1934-04-30 01:56:10', '1958-09-14 12:11:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Jenifer', 'Strosin', 'kuhic.mallie@example.org', '232-563-7645x765', '1931-06-22 09:42:17', '1957-11-24 23:36:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Lulu', 'Steuber', 'derek76@example.org', '780.623.6665x5682', '2002-09-28 10:54:18', '1925-09-22 18:06:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Richmond', 'Monahan', 'keeling.alexys@example.com', '05626418883', '1948-06-13 02:43:17', '1921-01-19 22:28:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Alvina', 'Mann', 'dooley.kali@example.net', '878.966.4081x3400', '1984-09-17 16:15:50', '1976-12-26 02:21:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Mariano', 'Tromp', 'yprohaska@example.org', '1-239-172-9754x256', '2007-02-16 17:29:24', '1925-10-24 05:35:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Vernice', 'Boyer', 'homenick.kaitlin@example.org', '101.277.9846x4345', '1990-03-01 15:49:20', '1949-12-27 21:26:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Francis', 'Glover', 'rosetta73@example.com', '012-931-2618x226', '1989-11-25 09:19:18', '1948-12-27 09:43:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Arvilla', 'Keeling', 'cristian.baumbach@example.com', '00678340910', '1964-06-06 03:00:30', '2011-11-03 13:26:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Terrance', 'Hills', 'lfriesen@example.com', '985-490-3219', '1990-01-13 18:42:02', '2006-06-19 16:46:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Meredith', 'Bruen', 'xander67@example.org', '+30(8)0794713234', '2007-06-20 01:29:36', '1948-12-24 08:18:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Trinity', 'Casper', 'hilpert.maxwell@example.org', '891.041.7779', '2017-04-28 02:36:27', '1995-04-24 14:38:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Marcia', 'Yundt', 'turcotte.khalid@example.net', '1-228-543-2933x11055', '1989-07-25 09:11:38', '1942-12-01 18:07:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Leatha', 'Borer', 'ustehr@example.com', '1-581-790-4422x51551', '1968-12-13 09:32:33', '2011-04-23 15:40:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Kole', 'Carter', 'kdonnelly@example.net', '(771)169-6128x89461', '1961-04-11 02:54:20', '1949-01-12 01:59:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Sophie', 'Altenwerth', 'qfranecki@example.net', '125.008.3335x169', '1981-01-29 18:55:04', '1939-02-10 01:22:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Amanda', 'Brekke', 'xklein@example.com', '1-698-406-9157x101', '1965-05-10 05:06:34', '2000-09-15 03:18:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Madelynn', 'Koelpin', 'estelle90@example.org', '1-688-823-3197x10016', '1964-09-29 05:55:00', '1943-04-27 01:02:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Melyna', 'Reichel', 'cwintheiser@example.org', '729-302-2556', '1941-02-20 10:40:26', '2018-09-29 00:26:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Kane', 'Daugherty', 'gblock@example.net', '106.137.0596x65536', '1999-12-17 17:25:06', '1992-07-23 22:18:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Georgette', 'Hayes', 'destiney72@example.org', '371.788.0478', '1965-12-26 18:19:42', '1947-11-07 17:25:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Beryl', 'Tillman', 'shirley49@example.net', '1-986-362-8426x06085', '2017-09-23 19:57:15', '2012-04-11 13:23:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Malika', 'Johnston', 'name.stokes@example.net', '729-893-0050x445', '1952-08-25 17:35:49', '1947-09-14 22:27:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Noel', 'O\'Kon', 'hudson.laura@example.org', '(201)173-1419x5013', '1993-01-02 12:40:11', '1945-09-22 00:38:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Soledad', 'Price', 'zharris@example.net', '574.627.2001x52206', '1952-01-11 22:57:56', '1971-10-26 01:27:32');


