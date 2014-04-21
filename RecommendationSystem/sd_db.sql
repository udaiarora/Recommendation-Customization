/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : sd_db

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2014-04-21 13:55:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for data_model_table
-- ----------------------------
DROP TABLE IF EXISTS `data_model_table`;
CREATE TABLE `data_model_table` (
  `Schema_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Template_Id` int(11) NOT NULL,
  `Table_Id` int(11) DEFAULT NULL,
  `Table_Name` varchar(255) DEFAULT NULL,
  `Table_Column1` varchar(255) DEFAULT NULL,
  `Table_Column2` varchar(255) DEFAULT NULL,
  `Table_Column3` varchar(255) DEFAULT NULL,
  `Table_Column4` varchar(255) DEFAULT NULL,
  `Table_Column5` varchar(255) DEFAULT NULL,
  `Customization_Type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Schema_Id`),
  KEY `User_Id_d` (`User_Id`),
  KEY `Template_Id_d` (`Template_Id`),
  CONSTRAINT `User_Id_d` FOREIGN KEY (`User_Id`) REFERENCES `user_table` (`User_Id`),
  CONSTRAINT `Template_Id_d` FOREIGN KEY (`Template_Id`) REFERENCES `template_table` (`Template_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data_model_table
-- ----------------------------

-- ----------------------------
-- Table structure for gui_table
-- ----------------------------
DROP TABLE IF EXISTS `gui_table`;
CREATE TABLE `gui_table` (
  `GUI_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Template_Id` int(11) NOT NULL,
  `GUI_Name` varchar(255) DEFAULT NULL,
  `GUI_Attribute1` varchar(255) DEFAULT NULL,
  `GUI_Attribute2` varchar(255) DEFAULT NULL,
  `GUI_Attribute3` varchar(255) DEFAULT NULL,
  `GUI_Attribute4` varchar(255) DEFAULT NULL,
  `GUI_Attribute5` varchar(255) DEFAULT NULL,
  `Customization_Type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GUI_Id`),
  KEY `User_Id_g` (`User_Id`),
  KEY `Template_Id_g` (`Template_Id`),
  CONSTRAINT `User_Id_g` FOREIGN KEY (`User_Id`) REFERENCES `user_table` (`User_Id`),
  CONSTRAINT `Template_Id_g` FOREIGN KEY (`Template_Id`) REFERENCES `template_table` (`Template_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gui_table
-- ----------------------------

-- ----------------------------
-- Table structure for service_table
-- ----------------------------
DROP TABLE IF EXISTS `service_table`;
CREATE TABLE `service_table` (
  `Service_Id` int(15) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Template_Id` int(11) NOT NULL,
  `Service_Name` varchar(255) DEFAULT NULL,
  `Service_Inputdatatype` varchar(255) DEFAULT NULL,
  `Service_Outputdatatype` varchar(255) DEFAULT NULL,
  `Service_Description` varchar(255) DEFAULT NULL,
  `Customization_Type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Service_Id`),
  KEY `Template_Id_s` (`Template_Id`),
  KEY `User_Id_s` (`User_Id`),
  CONSTRAINT `User_Id_s` FOREIGN KEY (`User_Id`) REFERENCES `user_table` (`User_Id`),
  CONSTRAINT `Template_Id_s` FOREIGN KEY (`Template_Id`) REFERENCES `template_table` (`Template_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service_table
-- ----------------------------

-- ----------------------------
-- Table structure for template_table
-- ----------------------------
DROP TABLE IF EXISTS `template_table`;
CREATE TABLE `template_table` (
  `Template_Id` int(11) NOT NULL,
  `Template_Name` varchar(255) DEFAULT NULL,
  `Template_Description` varchar(255) DEFAULT NULL,
  `Used_Count` int(11) DEFAULT NULL,
  PRIMARY KEY (`Template_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of template_table
-- ----------------------------

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table` (
  `User_Id` int(11) NOT NULL,
  `Org_Name` varchar(255) DEFAULT NULL,
  `User_Email_ID` int(11) DEFAULT NULL,
  `User_Name` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Org_Logo` varchar(255) DEFAULT NULL,
  `Subcription_Start_Date` datetime DEFAULT NULL,
  `Subcription_End_Date` datetime DEFAULT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_table
-- ----------------------------

-- ----------------------------
-- Table structure for user_template_subscription_table
-- ----------------------------
DROP TABLE IF EXISTS `user_template_subscription_table`;
CREATE TABLE `user_template_subscription_table` (
  `User_Template_Subscription_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Template_Id` int(11) NOT NULL,
  PRIMARY KEY (`User_Template_Subscription_Id`),
  KEY `User_Id_u` (`User_Id`),
  KEY `Template_Id_u` (`Template_Id`),
  CONSTRAINT `Template_Id_u` FOREIGN KEY (`Template_Id`) REFERENCES `template_table` (`Template_Id`),
  CONSTRAINT `User_Id_u` FOREIGN KEY (`User_Id`) REFERENCES `user_table` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_template_subscription_table
-- ----------------------------

-- ----------------------------
-- Table structure for workflow_table
-- ----------------------------
DROP TABLE IF EXISTS `workflow_table`;
CREATE TABLE `workflow_table` (
  `Workflow_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Template_Id` int(11) NOT NULL,
  `Workflow_Name` varchar(255) DEFAULT NULL,
  `Step_1` varchar(255) DEFAULT NULL,
  `Step_2` varchar(255) DEFAULT NULL,
  `Step_3` varchar(255) DEFAULT NULL,
  `Step_4` varchar(255) DEFAULT NULL,
  `Step_5` varchar(255) DEFAULT NULL,
  `Customization_Type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Workflow_Id`),
  KEY `User_Id_w` (`User_Id`),
  KEY `Template_Id_w` (`Template_Id`),
  CONSTRAINT `User_Id_w` FOREIGN KEY (`User_Id`) REFERENCES `user_table` (`User_Id`),
  CONSTRAINT `Template_Id_w` FOREIGN KEY (`Template_Id`) REFERENCES `template_table` (`Template_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workflow_table
-- ----------------------------
