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
(1, current_timestamp(), 'Parinder', 'user.one@test.com', 'User', 'One', current_timestamp(), 'Parinder'),
(2, current_timestamp(), 'Parinder', 'user.two@test.com', 'User', 'Two', current_timestamp(), 'Parinder');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;