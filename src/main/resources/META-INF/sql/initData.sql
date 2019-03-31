-- Wyczyszczenie bazy
DROP TABLE IF EXISTS users_roles;
DROP TABLE IF EXISTS users_known_sources;
DROP TABLE IF EXISTS knowledge_sources_skills;
DROP TABLE IF EXISTS knowledge_sources;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS users;

-- Tabela z użytkownikami
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ow0gan20590jrb00upg3va2fn` (`login`)
);

-- Tabela z rolami użytkowników
CREATE TABLE `users_roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

-- Tabela z umiejętnościami
CREATE TABLE `skills` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_85woe63nu9klkk9fa73vf0jd0` (`name`)
);

-- Tabela ze źródłami wiedzy
CREATE TABLE `knowledge_sources` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` boolean DEFAULT NULL,
  `description` text,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5snij5p1dj99c9kbmcuvsjjav` (`name`)
);

-- Tabela z przypisaniem umiejętności do źródeł
CREATE TABLE `knowledge_sources_skills` (
  `source_id` bigint NOT NULL,
  `skill_id` bigint NOT NULL,
  PRIMARY KEY (`source_id`,`skill_id`),
  CONSTRAINT `FKeei7p9n9614j8chm4n9ydxukg` FOREIGN KEY (`source_id`) REFERENCES `knowledge_sources` (`id`),
  CONSTRAINT `FKrkihyc1feqqekl9evawv8kg0q` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`)
);

-- Tabela z przypisaniem źródeł wiedzy do użytkownika
CREATE TABLE `users_known_sources` (
  `user_id` bigint NOT NULL,
  `source_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`source_id`),
  CONSTRAINT `FK9740l3kh8nu2fg4wmqvotf9u` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKc59alvkbjppgpy6i2d78yxj0u` FOREIGN KEY (`source_id`) REFERENCES `knowledge_sources` (`id`)
);