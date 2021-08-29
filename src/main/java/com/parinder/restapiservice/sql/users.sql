# Dump of table author
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` date NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `updated_at` date NOT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO users (id, created_at, created_by, email_address, first_name, last_name, updated_at, updated_by)
VALUES
(1, current_timestamp(), 'Parinder', 'user.one@test.com', 'User', 'qqq', current_timestamp(), 'Parinder'),
(2, current_timestamp(), 'Peter', 'user.two@test.com', 'User', 'ddd', current_timestamp(), 'Parinder'),
(3, current_timestamp(), 'Patrick', 'user.three@test.com', 'User', 'fff', current_timestamp(), 'Parinder'),
(4, current_timestamp(), 'David', 'user.four@test.com', 'User', 'rrr', current_timestamp(), 'Parinder'),
(5, current_timestamp(), 'Json', 'user.five@test.com', 'User', 'www', current_timestamp(), 'Parinder'),
(6, current_timestamp(), 'Sharp', 'user.six@test.com', 'User', 'eee', current_timestamp(), 'Parinder'),
(7, current_timestamp(), 'Dem', 'user.seven@test.com', 'User', 'ttt', current_timestamp(), 'Parinder'),
(8, current_timestamp(), 'Denny', 'user.eight@test.com', 'User', 'uuu', current_timestamp(), 'Parinder'),
(9, current_timestamp(), 'Dome', 'user.nine@test.com', 'User', 'iii', current_timestamp(), 'Parinder'),
(10, current_timestamp(), 'Jazz', 'user.ten@test.com', 'User', 'kkk', current_timestamp(), 'Parinder'),
(11, current_timestamp(), 'Rocky', 'user.eleven@test.com', 'User', 'lll', current_timestamp(), 'Parinder'),
(12, current_timestamp(), 'Richard', 'user.twelve@test.com', 'User', 'jjj', current_timestamp(), 'Parinder'),
(13, current_timestamp(), 'James', 'user.thriteen@test.com', 'User', 'mmm', current_timestamp(), 'Parinder'),
(14, current_timestamp(), 'Branden', 'user.fourteen@test.com', 'User', 'bbb', current_timestamp(), 'Parinder'),
(15, current_timestamp(), 'Brown', 'user.fifteen@test.com', 'User', 'bbb', current_timestamp(), 'Parinder'),
(16, current_timestamp(), 'Adam', 'user.sixteen@test.com', 'User', 'fff', current_timestamp(), 'Parinder'),
(17, current_timestamp(), 'Paul', 'user.seventeen@test.com', 'User', 'ccc', current_timestamp(), 'Parinder'),
(18, current_timestamp(), 'Pauly', 'user.eighteen@test.com', 'User', 'ttt', current_timestamp(), 'Parinder'),
(19, current_timestamp(), 'Singh', 'user.nineteen@test.com', 'User', 'ddd', current_timestamp(), 'Parinder'),
(20, current_timestamp(), 'Lilly', 'user.twenty@test.com', 'User', 'uuu', current_timestamp(), 'Parinder');


/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;