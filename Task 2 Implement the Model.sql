-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema globalsuperstore
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema globalsuperstore
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `globalsuperstore` DEFAULT CHARACTER SET utf8mb3 ;
USE `globalsuperstore` ;

-- -----------------------------------------------------
-- Table `globalsuperstore`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globalsuperstore`.`customer` (
  `CustomerID` INT NOT NULL,
  `CustomerName` VARCHAR(100) NULL DEFAULT NULL,
  `Contact` VARCHAR(45) NULL DEFAULT NULL,
  `Segment` VARCHAR(45) NULL DEFAULT NULL,
  `Market` VARCHAR(45) NULL DEFAULT NULL,
  `Region` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `globalsuperstore`.`location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globalsuperstore`.`location` (
  `LocationID` INT NOT NULL,
  `Country` VARCHAR(45) NULL DEFAULT NULL,
  `State` VARCHAR(45) NULL DEFAULT NULL,
  `City` VARCHAR(45) NULL DEFAULT NULL,
  `PostalCode` VARCHAR(45) NULL DEFAULT NULL,
  `DeliveryID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`LocationID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `globalsuperstore`.`delivery`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globalsuperstore`.`delivery` (
  `DeliveryID` INT NOT NULL AUTO_INCREMENT,
  `Shipdate` DATE NULL DEFAULT NULL,
  `ShipMode` VARCHAR(45) NULL DEFAULT NULL,
  `ShippingCost` DECIMAL(6,2) NULL DEFAULT NULL,
  `DeliveryStatus` VARCHAR(45) NULL DEFAULT NULL,
  `LocationID` INT NOT NULL,
  PRIMARY KEY (`DeliveryID`),
  INDEX `locationid_fk_idx` (`LocationID` ASC) VISIBLE,
  CONSTRAINT `locationid_fk`
    FOREIGN KEY (`LocationID`)
    REFERENCES `globalsuperstore`.`location` (`LocationID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `globalsuperstore`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globalsuperstore`.`products` (
  `ProductsID` INT NOT NULL,
  `ProductName` VARCHAR(300) NOT NULL,
  `Price` DECIMAL(10,2) NULL DEFAULT NULL,
  `AmountInStock` INT NULL DEFAULT NULL,
  `Category` VARCHAR(100) NULL DEFAULT NULL,
  `SubCategory` VARCHAR(100) NULL DEFAULT NULL,
  `Description` VARCHAR(300) NULL DEFAULT NULL,
  PRIMARY KEY (`ProductsID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `globalsuperstore`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `globalsuperstore`.`orders` (
  `OrderID` INT NOT NULL,
  `OrderDate` DATE NULL DEFAULT NULL,
  `OrderPriority` VARCHAR(100) NULL DEFAULT NULL,
  `Quantity` INT NULL DEFAULT NULL,
  `Discount` DECIMAL(5,2) NULL DEFAULT NULL,
  `Total Cost` DECIMAL(10,2) NULL DEFAULT NULL,
  `Profit` DECIMAL(13,2) NULL DEFAULT NULL,
  `ProductID` INT NULL DEFAULT NULL,
  `DeliveryID` INT NULL DEFAULT NULL,
  `CustomerID` INT NULL DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `customerid_fk_idx` (`CustomerID` ASC) VISIBLE,
  INDEX `productid_fl_idx` (`ProductID` ASC) VISIBLE,
  INDEX `deliveryid_fk_idx` (`DeliveryID` ASC) VISIBLE,
  CONSTRAINT `customerid_fk`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `globalsuperstore`.`customer` (`CustomerID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `deliveryid_fk`
    FOREIGN KEY (`DeliveryID`)
    REFERENCES `globalsuperstore`.`delivery` (`DeliveryID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `productid_fk`
    FOREIGN KEY (`ProductID`)
    REFERENCES `globalsuperstore`.`products` (`ProductsID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
