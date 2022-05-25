-- MySQL Script generated by MySQL Workbench
-- Sun May 22 15:20:27 2022
-- Lauricio
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema produtos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema produtos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `produtos` DEFAULT CHARACTER SET utf8 ;
USE `produtos` ;

-- -----------------------------------------------------
-- Table `produtos`.`tipos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produtos`.`tipos` (
  `i_tipos_tipos` INT NOT NULL,
  `s_desc_tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`i_tipos_tipos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `produtos`.`pordutos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `produtos`.`pordutos` (
  `i_id_produtos` INT NOT NULL,
  `s_nome_produtos` VARCHAR(45) NOT NULL,
  `i_tipo_produtos` INT NULL,
  PRIMARY KEY (`i_id_produtos`),
  INDEX `fk_pordutos_tipos_idx` (`i_tipo_produtos` ASC) VISIBLE,
  CONSTRAINT `fk_pordutos_tipos`
    FOREIGN KEY (`i_tipo_produtos`)
    REFERENCES `produtos`.`tipos` (`i_tipos_tipos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
