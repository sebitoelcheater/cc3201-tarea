SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

USE `cc320125_db` ;

-- -----------------------------------------------------
-- Table `cc320125_db`.`user`
-- -----------------------------------------------------
CREATE TABLE `user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `mail` VARCHAR(60) NULL COMMENT 'Es único. Podría ser llave primaria, pero preferí crear un nuevo campo id, y que ese fuera primar y key.',
  `password` VARCHAR(50) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `mail_UNIQUE` (`mail` ASC));


-- -----------------------------------------------------
-- Table `cc320125_db`.`source`
-- -----------------------------------------------------
CREATE TABLE `source` (
  `id` INT NOT NULL COMMENT 'Lo único que identifica a un source es su id. La combinación del resto de las columnas no tiene restricción.',
  `id_user` INT NOT NULL,
  `id_source` INT NOT NULL COMMENT 'null si es padre o si es un recurso. INT si es comentario hijo.',
  `title` VARCHAR(45) NULL COMMENT 'null si es un recurso.',
  `comment` VARCHAR(10000) NULL COMMENT 'corresponde a la descripción si es un recurso.',
  `type` VARCHAR(1) NULL COMMENT 'c si es comentario, r si es recurso',
  `created_at` DATETIME NULL COMMENT '  ',
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `user_commenter_idx` (`id_user` ASC),
  INDEX `source_father_idx` (`id_source` ASC),
  CONSTRAINT `user_commenter`
    FOREIGN KEY (`id_user`)
    REFERENCES `cc320125_db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `source_father`
    FOREIGN KEY (`id_source`)
    REFERENCES `cc320125_db`.`source` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `cc320125_db`.`following`
-- -----------------------------------------------------
CREATE TABLE `following` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_follower` INT NOT NULL,
  `id_followed` INT NOT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id_follower`, `id_followed`)  COMMENT ' /* comment truncated */ /*Sólo el seguido y el seguidor identifican a una relación de seguimiento.*/',
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `followed_idx` (`id_followed` ASC),
  CONSTRAINT `follower`
    FOREIGN KEY (`id_follower`)
    REFERENCES `cc320125_db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `followed`
    FOREIGN KEY (`id_followed`)
    REFERENCES `cc320125_db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `cc320125_db`.`friendship`
-- -----------------------------------------------------
CREATE TABLE `friendship` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_requester` INT NOT NULL,
  `id_requested` INT NOT NULL,
  `status` VARCHAR(1) NULL COMMENT 'r: rechazado. a: aceptado. p: pendiente.',
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id_requester`, `id_requested`)  COMMENT ' /* comment truncated */ /*Sólo el requester y el requested identifican a una solicitud de amistad.*/',
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `requester_idx` (`id_requested` ASC),
  CONSTRAINT `requested`
    FOREIGN KEY (`id_requester`)
    REFERENCES `cc320125_db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `requester`
    FOREIGN KEY (`id_requested`)
    REFERENCES `cc320125_db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `cc320125_db`.`liking`
-- -----------------------------------------------------
CREATE TABLE `liking` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_user` INT NOT NULL,
  `id_source` INT NOT NULL,
  `type` TINYINT(1) NULL COMMENT '0: no me gusta. 1: si me gusta.',
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id_user`, `id_source`)  COMMENT ' /* comment truncated */ /*id_source y id_user deben ser primarias, ya que un usuario puede tener un solo juicio de valor sobre cada source*/',
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `source_idx` (`id_source` ASC),
  CONSTRAINT `user_liker`
    FOREIGN KEY (`id_user`)
    REFERENCES `cc320125_db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `source_liked`
    FOREIGN KEY (`id_source`)
    REFERENCES `cc320125_db`.`source` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `cc320125_db`.`tag`
-- -----------------------------------------------------
CREATE TABLE `tag` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_user` INT NOT NULL,
  `id_source` INT NOT NULL,
  `tag` VARCHAR(100) NOT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id_source`, `tag`)  COMMENT ' /* comment truncated */ /*La idea de hacer a id_source y tag primar y keys es que no hayan múltiples tags para un mismo source, sino que haya un solo tag y quienes estén a favor de él le pongan like.*/',
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `user_idx` (`id_user` ASC),
  CONSTRAINT `user_tagger`
    FOREIGN KEY (`id_user`)
    REFERENCES `cc320125_db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `source_tagged`
    FOREIGN KEY (`id_source`)
    REFERENCES `cc320125_db`.`source` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `cc320125_db`.`tag_liking`
-- -----------------------------------------------------
CREATE TABLE `tag_liking` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_tag` INT NOT NULL,
  `id_user` INT NOT NULL,
  `type` TINYINT(1) NULL COMMENT '0: no me gusta. 1: si me gusta.',
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id_tag`, `id_user`)  COMMENT ' /* comment truncated */ /*id_tag y id_user deben ser primarias, ya que un usuario puede tener un solo juicio de valor sobre cada tag*/',
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `user_idx` (`id_user` ASC),
  CONSTRAINT `tag_liked`
    FOREIGN KEY (`id_tag`)
    REFERENCES `cc320125_db`.`tag` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `user_tag_liker`
    FOREIGN KEY (`id_user`)
    REFERENCES `cc320125_db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
