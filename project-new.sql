-- MySQL Script generated by MySQL Workbench
-- Tue Apr 19 10:12:24 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Customers` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `Customer_Id` INT NOT NULL,
  `Customer_Name` VARCHAR(45) NOT NULL,
  `Customer_Address` VARCHAR(100) NOT NULL,
  `Customer_Email` VARCHAR(45) NOT NULL,
  `Customer_Phone` VARCHAR(45) NOT NULL,
  `Pincode` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Customer_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Category` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Category` (
  `Category_Id` INT NOT NULL,
  `Category_Name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Category_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Products`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Products` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Products` (
  `Product_Id` INT NOT NULL,
  `Product_Name` VARCHAR(45) NOT NULL,
  `Product_Image` VARCHAR(500) NOT NULL,
  `Product_Price` FLOAT NOT NULL,
  `Discount_Percantage` FLOAT NOT NULL,
  `Availablity` VARCHAR(45) NOT NULL,
  `ProductStore` VARCHAR(100) NOT NULL,
  `Category_Category_Id` INT NOT NULL,
  PRIMARY KEY (`Product_Id`),
  INDEX `fk_Products_Category1_idx` (`Category_Category_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Products_Category1`
    FOREIGN KEY (`Category_Category_Id`)
    REFERENCES `mydb`.`Category` (`Category_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Brand`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Brand` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Brand` (
  `Brand_Id` INT NOT NULL,
  `Brand_Name` VARCHAR(45) NULL,
  `Products_Product_Id` INT NOT NULL,
  PRIMARY KEY (`Brand_Id`),
  INDEX `fk_Brand_Products1_idx` (`Products_Product_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Brand_Products1`
    FOREIGN KEY (`Products_Product_Id`)
    REFERENCES `mydb`.`Products` (`Product_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Color`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Color` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Color` (
  `Color_Id` INT NOT NULL,
  `Color_Name` VARCHAR(45) NOT NULL,
  `Brand_Brand_Id` INT NOT NULL,
  PRIMARY KEY (`Color_Id`),
  INDEX `fk_Color_Brand1_idx` (`Brand_Brand_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Color_Brand1`
    FOREIGN KEY (`Brand_Brand_Id`)
    REFERENCES `mydb`.`Brand` (`Brand_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Age`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Age` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Age` (
  `Age_Id` INT NOT NULL,
  `Age` VARCHAR(45) NOT NULL,
  `Category_Category_Id` INT NOT NULL,
  PRIMARY KEY (`Age_Id`),
  INDEX `fk_Age_Category1_idx` (`Category_Category_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Age_Category1`
    FOREIGN KEY (`Category_Category_Id`)
    REFERENCES `mydb`.`Category` (`Category_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Gender`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Gender` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Gender` (
  `Gender_Id` INT NOT NULL,
  `Gender_Name` VARCHAR(45) NOT NULL,
  `Age_Age_Id` INT NOT NULL,
  PRIMARY KEY (`Gender_Id`),
  INDEX `fk_Gender_Age1_idx` (`Age_Age_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Gender_Age1`
    FOREIGN KEY (`Age_Age_Id`)
    REFERENCES `mydb`.`Age` (`Age_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Orders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Orders` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Orders` (
  `Order_Id` INT NOT NULL,
  `Order_number` VARCHAR(45) NOT NULL,
  `Order_Method` VARCHAR(45) NOT NULL,
  `Order_Quantity` INT NOT NULL,
  `Order_Created` DATE NOT NULL,
  `Customers_Customer_Id` INT NOT NULL,
  PRIMARY KEY (`Order_Id`),
  INDEX `fk_Order_Customers1_idx` (`Customers_Customer_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Order_Customers1`
    FOREIGN KEY (`Customers_Customer_Id`)
    REFERENCES `mydb`.`Customers` (`Customer_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`OrderStatus`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`OrderStatus` ;

CREATE TABLE IF NOT EXISTS `mydb`.`OrderStatus` (
  `Status_Id` INT NOT NULL,
  `Status_Name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Status_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`OrderDetails`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`OrderDetails` ;

CREATE TABLE IF NOT EXISTS `mydb`.`OrderDetails` (
  `OrderDetail_Id` INT NOT NULL,
  `Order_ProductName` VARCHAR(45) NOT NULL,
  `Order_ProductAmount` FLOAT NOT NULL,
  `Order_ProductQuantity` INT NOT NULL,
  `Order_Delivered` DATE NOT NULL,
  `Order_Date` DATE NOT NULL,
  `Order_Order_Id` INT NOT NULL,
  `OrderStatus_Status_Id` INT NOT NULL,
  PRIMARY KEY (`OrderDetail_Id`),
  INDEX `fk_OrderDetails_Order1_idx` (`Order_Order_Id` ASC) VISIBLE,
  INDEX `fk_OrderDetails_OrderStatus1_idx` (`OrderStatus_Status_Id` ASC) VISIBLE,
  CONSTRAINT `fk_OrderDetails_Order1`
    FOREIGN KEY (`Order_Order_Id`)
    REFERENCES `mydb`.`Orders` (`Order_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_OrderDetails_OrderStatus1`
    FOREIGN KEY (`OrderStatus_Status_Id`)
    REFERENCES `mydb`.`OrderStatus` (`Status_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`OrderDetails_has_Products`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`OrderDetails_has_Products` ;

CREATE TABLE IF NOT EXISTS `mydb`.`OrderDetails_has_Products` (
  `OrderDetails_OrderDetail_Id` INT NOT NULL,
  `Products_Product_Id` INT NOT NULL,
  PRIMARY KEY (`OrderDetails_OrderDetail_Id`, `Products_Product_Id`),
  INDEX `fk_OrderDetails_has_Products_Products1_idx` (`Products_Product_Id` ASC) VISIBLE,
  INDEX `fk_OrderDetails_has_Products_OrderDetails1_idx` (`OrderDetails_OrderDetail_Id` ASC) VISIBLE,
  CONSTRAINT `fk_OrderDetails_has_Products_OrderDetails1`
    FOREIGN KEY (`OrderDetails_OrderDetail_Id`)
    REFERENCES `mydb`.`OrderDetails` (`OrderDetail_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_OrderDetails_has_Products_Products1`
    FOREIGN KEY (`Products_Product_Id`)
    REFERENCES `mydb`.`Products` (`Product_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
