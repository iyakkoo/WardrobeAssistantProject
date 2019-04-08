-- Wyczyszczenie bazy
DROP TABLE IF EXISTS clothes_list;
DROP TABLE IF EXISTS clothes_category;
DROP TABLE IF EXISTS clothes_category_group;
DROP TABLE IF EXISTS status;


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

CREATE SCHEMA `clothes_list` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci ;

USE `clothes_list`

-- Tabela z listą ubrań
CREATE TABLE `clothes_list`.`clothes_list`. (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

-- Tabela z kategoriami ubrań
CREATE TABLE clothes_list.`clothes_category` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `id category group` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_85woe63nu9klkk9fa73vf0jd0` (`name`)
);
-- Tabela z grupami kategorii ubran
CREATE TABLE `clothes_list`.`clothes_category_group` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

-- Tabela ze statusem
CREATE TABLE `clothes_list`.`status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `in` boolean DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5snij5p1dj99c9kbmcuvsjjav` (`name`)
);

CREATE TABLE `clothes_list`.`clothes_relation` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_clothes_list` INT UNSIGNED NOT NULL,
  `id_clothes_category` INT UNSIGNED NOT NULL,
  `id_status` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`));

-- Tabela z przypisaniem umiejętności do źródeł
--CREATE TABLE `knowledge_sources_skills` (
  --`source_id` bigint NOT NULL,
  --`skill_id` bigint NOT NULL,
  --PRIMARY KEY (`source_id`,`skill_id`),
  --CONSTRAINT `FKeei7p9n9614j8chm4n9ydxukg` FOREIGN KEY (`source_id`) REFERENCES `knowledge_sources` (`id`),
  --CONSTRAINT `FKrkihyc1feqqekl9evawv8kg0q` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`)
--);

-- Tabela z przypisaniem źródeł wiedzy do użytkownika
--CREATE TABLE `users_known_sources` (
  --`user_id` bigint NOT NULL,
  --`source_id` bigint NOT NULL,
  --PRIMARY KEY (`user_id`,`source_id`),
  --CONSTRAINT `FK9740l3kh8nu2fg4wmqvotf9u` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  --CONSTRAINT `FKc59alvkbjppgpy6i2d78yxj0u` FOREIGN KEY (`source_id`) REFERENCES `knowledge_sources` (`id`)
--);