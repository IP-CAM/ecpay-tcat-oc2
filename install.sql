
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- --------------------------------------------------------

DROP TABLE IF EXISTS `oc_tcat_logistics_info`;
CREATE TABLE IF NOT EXISTS `oc_tcat_logistics_info` (
  `order_id` INT(11) NOT NULL,
  `Distance` VARCHAR(2) NOT NULL DEFAULT '00',
  `MerchantTradeDate` datetime NOT NULL,
  `MerchantTradeNo` VARCHAR(20),
  `Postcode` varchar(10) NOT NULL,
  `Specification` VARCHAR(4) NOT NULL DEFAULT '0001',
  `ScheduledDeliveryTime` INT(1) NOT NULL DEFAULT 4,
  `Temperature` VARCHAR(4) NOT NULL DEFAULT '0003',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

DROP TABLE IF EXISTS `oc_tcat_logistics_result`;
CREATE TABLE IF NOT EXISTS `oc_tcat_logistics_result` (
  `order_id` INT(11) NOT NULL,
  `MerchantTradeNo` VARCHAR(20) NOT NULL,
  `AllPayLogisticsID` VARCHAR(20) NOT NULL,
  `BookingNote` VARCHAR(50) NOT NULL,
  `RtnMsg` VARCHAR(200) NOT NULL,
  `RtnCode` INT(4) NOT NULL,
  `UpdateStatusDate` datetime NOT NULL,
  PRIMARY KEY (`MerchantTradeNo`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
