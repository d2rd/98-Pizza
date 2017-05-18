-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'customerProfile'
--
-- ---

DROP TABLE IF EXISTS `customerProfile`;

CREATE TABLE `customerProfile` (
  `idCustomerProfile` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `customerProfile` VARCHAR NULL DEFAULT NULL,
  `idCustomer_customer` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idCustomerProfile`)
);

-- ---
-- Table 'order'
--
-- ---

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `idOrder` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `pizzaCode` INTEGER NULL DEFAULT NULL,
  `productName` VARCHAR NULL DEFAULT NULL,
  `idRecipe` VARCHAR NULL DEFAULT NULL,
  `idDelivery_deliveryAddress` INTEGER NULL DEFAULT NULL,
  `idCustomerPizzaPreference_customerPizzaPreference` INTEGER NULL DEFAULT NULL,
  `idStateTax_stateSalesTax` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idOrder`)
);

-- ---
-- Table 'user'
--
-- ---

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `idUserName` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `username` VARCHAR NULL DEFAULT NULL,
  `password` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`idUserName`)
);

-- ---
-- Table 'customerPizzaPreference'
--
-- ---

DROP TABLE IF EXISTS `customerPizzaPreference`;

CREATE TABLE `customerPizzaPreference` (
  `idCustomerPizzaPreference` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `idCustomer_customer` INTEGER NULL DEFAULT NULL,
  `idPizzaProduct_pizzaProduct` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idCustomerPizzaPreference`)
);

-- ---
-- Table 'deliveryAddress'
--
-- ---

DROP TABLE IF EXISTS `deliveryAddress`;

CREATE TABLE `deliveryAddress` (
  `idDelivery` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `deliveryStreet1` VARCHAR NULL DEFAULT NULL,
  `deliveryStreet2` VARCHAR NULL DEFAULT NULL,
  `deliveryCity` VARCHAR NULL DEFAULT NULL,
  `deliveryState` VARCHAR NULL DEFAULT NULL,
  `deliveryZip` INTEGER NULL DEFAULT NULL,
  `idCustomer_customer` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idDelivery`)
);

-- ---
-- Table 'priceList'
--
-- ---

DROP TABLE IF EXISTS `priceList`;

CREATE TABLE `priceList` (
  `idpriceList` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `pieSize` INTEGER NULL DEFAULT NULL,
  `pizzaCost` DECIMAL NULL DEFAULT NULL,
  `pizzaMarkup` DECIMAL NULL DEFAULT NULL,
  `discount` DECIMAL NULL DEFAULT NULL,
  `pizzaPrice` DECIMAL NULL DEFAULT NULL,
  `discountHappyHour` DECIMAL NULL DEFAULT NULL,
  `otherCost` DECIMAL NULL DEFAULT NULL,
  `otherPrice` DECIMAL NULL DEFAULT NULL,
  `otherMarkup` DECIMAL NULL DEFAULT NULL,
  PRIMARY KEY (`idpriceList`)
);

-- ---
-- Table 'ingredient'
--
-- ---

DROP TABLE IF EXISTS `ingredient`;

CREATE TABLE `ingredient` (
  `idIngredient` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `ingredientName` VARCHAR NULL DEFAULT NULL,
  `costPerOz` DECIMAL NULL DEFAULT NULL,
  `ozInSmall` DECIMAL NULL DEFAULT NULL,
  `ozInMedium` DECIMAL NULL DEFAULT NULL,
  `ozInLarge` DECIMAL NULL DEFAULT NULL,
  `ozInExtraLarge` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idIngredient`)
);

-- ---
-- Table 'orderExtraIngredientList'
--
-- ---

DROP TABLE IF EXISTS `orderExtraIngredientList`;

CREATE TABLE `orderExtraIngredientList` (
  `idAddOn` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `idOrder_order` INTEGER NULL DEFAULT NULL,
  `idRecipe_recipe` INTEGER NULL DEFAULT NULL,
  `idpriceList_priceList` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idAddOn`)
);

-- ---
-- Table 'creditCard'
--
-- ---

DROP TABLE IF EXISTS `creditCard`;

CREATE TABLE `creditCard` (
  `idCreditCard` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `cardNumber` INTEGER NULL DEFAULT NULL,
  `cvvNumber` INTEGER NULL DEFAULT NULL,
  `nameOnCard` VARCHAR NULL DEFAULT NULL,
  `billStreet` VARCHAR NULL DEFAULT NULL,
  `billCity` VARCHAR NULL DEFAULT NULL,
  `billZip` INTEGER NULL DEFAULT NULL,
  `cardCompany` VARCHAR NULL DEFAULT NULL,
  `cardIssuer` VARCHAR NULL DEFAULT NULL,
  `idCustomer_customer` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idCreditCard`)
);

-- ---
-- Table 'customer'
--
-- ---

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `idCustomer` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `customerName` INTEGER NULL DEFAULT NULL,
  `IdCreditCard1` INTEGER NULL DEFAULT NULL,
  `IdCreditCard2` INTEGER NULL DEFAULT NULL,
  `IdCreditCard3` INTEGER NULL DEFAULT NULL,
  `IdCheckingAcct` INTEGER NULL DEFAULT NULL,
  `idUserName_user` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idCustomer`)
);

-- ---
-- Table 'pizzaProduct'
--
-- ---

DROP TABLE IF EXISTS `pizzaProduct`;

CREATE TABLE `pizzaProduct` (
  `idPizzaProduct` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `pizzaName` VARCHAR NULL DEFAULT NULL,
  `idRecipe` INTEGER NULL DEFAULT NULL,
  `idIngredient_ingredient` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idPizzaProduct`)
);

-- ---
-- Table 'pieType'
--
-- ---

DROP TABLE IF EXISTS `pieType`;

CREATE TABLE `pieType` (
  `idPieType` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `pieType` VARCHAR NULL DEFAULT NULL,
  `idpriceList_pizzaPriceList` INTEGER NULL DEFAULT NULL,
  `idRecipe_recipe` INTEGER NULL DEFAULT NULL,
  `pieTypeDescription` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`idPieType`)
);

-- ---
-- Table 'productSupplier'
--
-- ---

DROP TABLE IF EXISTS `productSupplier`;

CREATE TABLE `productSupplier` (
  `idProductSupplier` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `supplierName` VARCHAR NULL DEFAULT NULL,
  `idContact` VARCHAR NULL DEFAULT NULL,
  `productSKU` INTEGER NULL DEFAULT NULL,
  `idOtherProduct_otherProduct` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idProductSupplier`)
);

-- ---
-- Table 'stateSalesTax'
--
-- ---

DROP TABLE IF EXISTS `stateSalesTax`;

CREATE TABLE `stateSalesTax` (
  `idStateTax` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `stateName` VARCHAR NULL DEFAULT NULL,
  `stateAbbreviation` VARCHAR NULL DEFAULT NULL,
  `taxRate` DECIMAL NULL DEFAULT NULL,
  PRIMARY KEY (`idStateTax`)
);

-- ---
-- Table 'paymentType'
--
-- ---

DROP TABLE IF EXISTS `paymentType`;

CREATE TABLE `paymentType` (
  `idPaymentType` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `paymentType` VARCHAR NULL DEFAULT NULL,
  `idCreditCard_creditCard` INTEGER NULL DEFAULT NULL,
  `idCheckingAcct_checkingAcct` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idPaymentType`)
);

-- ---
-- Table 'checkingAcct'
--
-- ---

DROP TABLE IF EXISTS `checkingAcct`;

CREATE TABLE `checkingAcct` (
  `idCheckingAcct` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `bankNumber` INTEGER NULL DEFAULT NULL,
  `acctNumber` INTEGER NULL DEFAULT NULL,
  `acctHolderName` VARCHAR NULL DEFAULT NULL,
  `acctStreet` INTEGER NULL DEFAULT NULL,
  `acctCity` INTEGER NULL DEFAULT NULL,
  `acctState` INTEGER NULL DEFAULT NULL,
  `acctZip` INTEGER NULL DEFAULT NULL,
  `idCustomer_customer` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idCheckingAcct`)
);

-- ---
-- Table 'recipe'
--
-- ---

DROP TABLE IF EXISTS `recipe`;

CREATE TABLE `recipe` (
  `idRecipe` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `pizzaName` VARCHAR NULL DEFAULT NULL,
  `crustStandard` INTEGER NULL DEFAULT NULL,
  `cheeseType` INTEGER NULL DEFAULT NULL,
  `idPizzaProduct_pizzaProduct` INTEGER NULL DEFAULT NULL,
  `idIngredient_ingredient` INTEGER NULL DEFAULT NULL,
  `ingredient1` VARCHAR NULL DEFAULT NULL,
  `ingredient2` VARCHAR NULL DEFAULT NULL,
  `ingredient3` VARCHAR NULL DEFAULT NULL,
  `ingredient4` VARCHAR NULL DEFAULT NULL,
  `ingredient5` VARCHAR NULL DEFAULT NULL,
  `ingredient6` VARCHAR NULL DEFAULT NULL,
  `ingredient7` VARCHAR NULL DEFAULT NULL,
  `ingredient8` VARCHAR NULL DEFAULT NULL,
  `ingredient9` VARCHAR NULL DEFAULT NULL,
  `ingredient10` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`idRecipe`)
);

-- ---
-- Table 'contact'
--
-- ---

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `idContact` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `contactType` VARCHAR NULL DEFAULT NULL,
  `contactStreet1` VARCHAR NULL DEFAULT NULL,
  `contactStreet2` VARCHAR NULL DEFAULT NULL,
  `contactCity` VARCHAR NULL DEFAULT NULL,
  `contactState` VARCHAR NULL DEFAULT NULL,
  `contactZip` INTEGER NULL DEFAULT NULL,
  `contactPhone1` VARCHAR NULL DEFAULT NULL,
  `contactPhone2` VARCHAR NULL DEFAULT NULL,
  `contactEmail` VARCHAR NULL DEFAULT NULL,
  `idCustomer_customer` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idContact`)
);

-- ---
-- Table 'otherProduct'
--
-- ---

DROP TABLE IF EXISTS `otherProduct`;

CREATE TABLE `otherProduct` (
  `idOtherProduct` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `productType` VARCHAR NULL DEFAULT NULL,
  `productName` VARCHAR NULL DEFAULT NULL,
  `description` VARCHAR NULL DEFAULT NULL,
  `brand` VARCHAR NULL DEFAULT NULL,
  `unit` VARCHAR NULL DEFAULT NULL,
  `barCode` VARCHAR NULL DEFAULT NULL,
  `productSKU` VARCHAR NULL DEFAULT NULL,
  `manufacturerName` VARCHAR NULL DEFAULT NULL,
  `idOrder_order` INTEGER NULL DEFAULT NULL,
  `idContact_contact` INTEGER NULL DEFAULT NULL,
  `idpriceList_PriceList` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idOtherProduct`)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE `customerProfile` ADD FOREIGN KEY (idCustomer_customer) REFERENCES `customer` (`idCustomer`);
ALTER TABLE `order` ADD FOREIGN KEY (idDelivery_deliveryAddress) REFERENCES `deliveryAddress` (`idDelivery`);
ALTER TABLE `order` ADD FOREIGN KEY (idCustomerPizzaPreference_customerPizzaPreference) REFERENCES `customerPizzaPreference` (`idCustomerPizzaPreference`);
ALTER TABLE `order` ADD FOREIGN KEY (idStateTax_stateSalesTax) REFERENCES `stateSalesTax` (`idStateTax`);
ALTER TABLE `customerPizzaPreference` ADD FOREIGN KEY (idCustomer_customer) REFERENCES `customer` (`idCustomer`);
ALTER TABLE `customerPizzaPreference` ADD FOREIGN KEY (idPizzaProduct_pizzaProduct) REFERENCES `pizzaProduct` (`idPizzaProduct`);
ALTER TABLE `deliveryAddress` ADD FOREIGN KEY (idCustomer_customer) REFERENCES `customer` (`idCustomer`);
ALTER TABLE `orderExtraIngredientList` ADD FOREIGN KEY (idOrder_order) REFERENCES `order` (`idOrder`);
ALTER TABLE `orderExtraIngredientList` ADD FOREIGN KEY (idRecipe_recipe) REFERENCES `recipe` (`idRecipe`);
ALTER TABLE `orderExtraIngredientList` ADD FOREIGN KEY (idpriceList_priceList) REFERENCES `priceList` (`idpriceList`);
ALTER TABLE `creditCard` ADD FOREIGN KEY (idCustomer_customer) REFERENCES `customer` (`idCustomer`);
ALTER TABLE `customer` ADD FOREIGN KEY (idUserName_user) REFERENCES `user` (`idUserName`);
ALTER TABLE `pizzaProduct` ADD FOREIGN KEY (idIngredient_ingredient) REFERENCES `ingredient` (`idIngredient`);
ALTER TABLE `pieType` ADD FOREIGN KEY (idpriceList_pizzaPriceList) REFERENCES `priceList` (`idpriceList`);
ALTER TABLE `pieType` ADD FOREIGN KEY (idRecipe_recipe) REFERENCES `recipe` (`idRecipe`);
ALTER TABLE `productSupplier` ADD FOREIGN KEY (idOtherProduct_otherProduct) REFERENCES `otherProduct` (`idOtherProduct`);
ALTER TABLE `paymentType` ADD FOREIGN KEY (idCreditCard_creditCard) REFERENCES `creditCard` (`idCreditCard`);
ALTER TABLE `paymentType` ADD FOREIGN KEY (idCheckingAcct_checkingAcct) REFERENCES `checkingAcct` (`idCheckingAcct`);
ALTER TABLE `checkingAcct` ADD FOREIGN KEY (idCustomer_customer) REFERENCES `customer` (`idCustomer`);
ALTER TABLE `recipe` ADD FOREIGN KEY (idPizzaProduct_pizzaProduct) REFERENCES `pizzaProduct` (`idPizzaProduct`);
ALTER TABLE `recipe` ADD FOREIGN KEY (idIngredient_ingredient) REFERENCES `ingredient` (`idIngredient`);
ALTER TABLE `contact` ADD FOREIGN KEY (idCustomer_customer) REFERENCES `customer` (`idCustomer`);
ALTER TABLE `otherProduct` ADD FOREIGN KEY (idOrder_order) REFERENCES `order` (`idOrder`);
ALTER TABLE `otherProduct` ADD FOREIGN KEY (idContact_contact) REFERENCES `contact` (`idContact`);
ALTER TABLE `otherProduct` ADD FOREIGN KEY (idpriceList_PriceList) REFERENCES `priceList` (`idpriceList`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `customerProfile` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `order` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `user` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `customerPizzaPreference` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `deliveryAddress` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `priceList` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `ingredient` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `orderExtraIngredientList` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `creditCard` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `customer` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `pizzaProduct` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `pieType` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `productSupplier` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `stateSalesTax` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `paymentType` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `checkingAcct` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `recipe` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `contact` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `otherProduct` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `customerProfile` (`idCustomerProfile`,`customerProfile`,`idCustomer_customer`) VALUES
-- ('','','');
-- INSERT INTO `order` (`idOrder`,`pizzaCode`,`productName`,`idRecipe`,`idDelivery_deliveryAddress`,`idCustomerPizzaPreference_customerPizzaPreference`,`idStateTax_stateSalesTax`) VALUES
-- ('','','','','','','');
-- INSERT INTO `user` (`idUserName`,`username`,`password`) VALUES
-- ('','','');
-- INSERT INTO `customerPizzaPreference` (`idCustomerPizzaPreference`,`idCustomer_customer`,`idPizzaProduct_pizzaProduct`) VALUES
-- ('','','');
-- INSERT INTO `deliveryAddress` (`idDelivery`,`deliveryStreet1`,`deliveryStreet2`,`deliveryCity`,`deliveryState`,`deliveryZip`,`idCustomer_customer`) VALUES
-- ('','','','','','','');
-- INSERT INTO `priceList` (`idpriceList`,`pieSize`,`pizzaCost`,`pizzaMarkup`,`discount`,`pizzaPrice`,`discountHappyHour`,`otherCost`,`otherPrice`,`otherMarkup`) VALUES
-- ('','','','','','','','','','');
-- INSERT INTO `ingredient` (`idIngredient`,`ingredientName`,`costPerOz`,`ozInSmall`,`ozInMedium`,`ozInLarge`,`ozInExtraLarge`) VALUES
-- ('','','','','','','');
-- INSERT INTO `orderExtraIngredientList` (`idAddOn`,`idOrder_order`,`idRecipe_recipe`,`idpriceList_priceList`) VALUES
-- ('','','','');
-- INSERT INTO `creditCard` (`idCreditCard`,`cardNumber`,`cvvNumber`,`nameOnCard`,`billStreet`,`billCity`,`billZip`,`cardCompany`,`cardIssuer`,`idCustomer_customer`) VALUES
-- ('','','','','','','','','','');
-- INSERT INTO `customer` (`idCustomer`,`customerName`,`IdCreditCard1`,`IdCreditCard2`,`IdCreditCard3`,`IdCheckingAcct`,`idUserName_user`) VALUES
-- ('','','','','','','');
-- INSERT INTO `pizzaProduct` (`idPizzaProduct`,`pizzaName`,`idRecipe`,`idIngredient_ingredient`) VALUES
-- ('','','','');
-- INSERT INTO `pieType` (`idPieType`,`pieType`,`idpriceList_pizzaPriceList`,`idRecipe_recipe`,`pieTypeDescription`) VALUES
-- ('','','','','');
-- INSERT INTO `productSupplier` (`idProductSupplier`,`supplierName`,`idContact`,`productSKU`,`idOtherProduct_otherProduct`) VALUES
-- ('','','','','');
-- INSERT INTO `stateSalesTax` (`idStateTax`,`stateName`,`stateAbbreviation`,`taxRate`) VALUES
-- ('','','','');
-- INSERT INTO `paymentType` (`idPaymentType`,`paymentType`,`idCreditCard_creditCard`,`idCheckingAcct_checkingAcct`) VALUES
-- ('','','','');
-- INSERT INTO `checkingAcct` (`idCheckingAcct`,`bankNumber`,`acctNumber`,`acctHolderName`,`acctStreet`,`acctCity`,`acctState`,`acctZip`,`idCustomer_customer`) VALUES
-- ('','','','','','','','','');
-- INSERT INTO `recipe` (`idRecipe`,`pizzaName`,`crustStandard`,`cheeseType`,`idPizzaProduct_pizzaProduct`,`idIngredient_ingredient`,`ingredient1`,`ingredient2`,`ingredient3`,`ingredient4`,`ingredient5`,`ingredient6`,`ingredient7`,`ingredient8`,`ingredient9`,`ingredient10`) VALUES
-- ('','','','','','','','','','','','','','','','');
-- INSERT INTO `contact` (`idContact`,`contactType`,`contactStreet1`,`contactStreet2`,`contactCity`,`contactState`,`contactZip`,`contactPhone1`,`contactPhone2`,`contactEmail`,`idCustomer_customer`) VALUES
-- ('','','','','','','','','','','');
-- INSERT INTO `otherProduct` (`idOtherProduct`,`productType`,`productName`,`description`,`brand`,`unit`,`barCode`,`productSKU`,`manufacturerName`,`idOrder_order`,`idContact_contact`,`idpriceList_PriceList`) VALUES
-- ('','','','','','','','','','','','');
