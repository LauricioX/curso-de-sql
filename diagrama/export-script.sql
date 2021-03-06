-- MySQL Script generated by MySQL Workbench
-- Fri Apr 15 20:46:26 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema diagram
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema diagram
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `diagram` DEFAULT CHARACTER SET utf8 ;
USE `diagram` ;

-- -----------------------------------------------------
-- Table `diagram`.`tipocliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `diagram`.`tipocliente` (
  `i_tipocliente_tipocliente` INT NOT NULL,
  `s_dstipocliente_tipocliente` VARCHAR(100) NULL,
  PRIMARY KEY (`i_tipocliente_tipocliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `diagram`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `diagram`.`cliente` (
  `i_cliente_cliente` INT NOT NULL,
  `s_nome_cliente` VARCHAR(50) NOT NULL,
  `s_cpf_cliente` VARCHAR(11) NOT NULL,
  `d_nasc_cliente` DATE NULL,
  `i_tipo_cliente` INT NULL,
  PRIMARY KEY (`i_cliente_cliente`),
  INDEX `fk_cliente_tipocliente_idx` (`i_tipo_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_cliente_tipocliente`
    FOREIGN KEY (`i_tipo_cliente`)
    REFERENCES `diagram`.`tipocliente` (`i_tipocliente_tipocliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
