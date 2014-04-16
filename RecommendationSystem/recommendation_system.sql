-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2014 at 01:08 AM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `recommendation_system`
--
CREATE DATABASE IF NOT EXISTS `recommendation_system` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `recommendation_system`;

-- --------------------------------------------------------

--
-- Table structure for table `datamodel_table`
--

CREATE TABLE IF NOT EXISTS `datamodel_table` (
  `schema_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `table_name` varchar(45) DEFAULT NULL,
  `table_name1` varchar(45) DEFAULT NULL,
  `table_name2` varchar(45) DEFAULT NULL,
  `table_name3` varchar(45) DEFAULT NULL,
  `table_name4` varchar(45) DEFAULT NULL,
  `table_name5` varchar(45) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `customization_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`schema_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `template_id_idx` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gui_table`
--

CREATE TABLE IF NOT EXISTS `gui_table` (
  `gui_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `gui_name` varchar(45) DEFAULT NULL,
  `gui_attribute1` varchar(45) DEFAULT NULL,
  `gui_attribute2` varchar(45) DEFAULT NULL,
  `gui_attribute3` varchar(45) DEFAULT NULL,
  `gui_attribute4` varchar(45) DEFAULT NULL,
  `gui_attribute5` varchar(45) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`gui_id`),
  KEY `user_id_gui_idx` (`user_id`),
  KEY `template_id_gui_idx` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `services_table`
--

CREATE TABLE IF NOT EXISTS `services_table` (
  `template_component_relationship_Id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `service_name` int(11) DEFAULT NULL,
  `service_inputdatatype` varchar(45) DEFAULT NULL,
  `service_outputdatatype` varchar(45) DEFAULT NULL,
  `service_description` varchar(45) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `customization_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`template_component_relationship_Id`,`service_id`),
  KEY `user_id_serv_idx` (`user_id`),
  KEY `template_id_serv_idx` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templates_table`
--

CREATE TABLE IF NOT EXISTS `templates_table` (
  `template_id` int(11) NOT NULL,
  `template_name` varchar(45) DEFAULT NULL,
  `template_description` varchar(45) DEFAULT NULL,
  `used_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE IF NOT EXISTS `user_table` (
  `user_id` int(11) NOT NULL,
  `org_name` varchar(45) DEFAULT NULL,
  `user_email` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `org_logo` varchar(45) DEFAULT NULL,
  `subscription_start_date` varchar(45) DEFAULT NULL,
  `subscription_end_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `org_name`, `user_email`, `user_name`, `password`, `org_logo`, `subscription_start_date`, `subscription_end_date`) VALUES
(121, 'University of Arizona', 'admin@uofa', 'admin@uofa', 'admin121', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_templates_subscription`
--

CREATE TABLE IF NOT EXISTS `user_templates_subscription` (
  `user_templates_subscription_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_templates_subscription_id`),
  KEY `user_id_temp_sub_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `workflow_table`
--

CREATE TABLE IF NOT EXISTS `workflow_table` (
  `workflow_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `workflow_name` varchar(45) DEFAULT NULL,
  `step_1` varchar(45) DEFAULT NULL,
  `step_2` varchar(45) DEFAULT NULL,
  `step_3` varchar(45) DEFAULT NULL,
  `step_4` varchar(45) DEFAULT NULL,
  `step_5` varchar(45) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `customization_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`workflow_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `template_id_wf_idx` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `datamodel_table`
--
ALTER TABLE `datamodel_table`
  ADD CONSTRAINT `template_id` FOREIGN KEY (`template_id`) REFERENCES `templates_table` (`template_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `gui_table`
--
ALTER TABLE `gui_table`
  ADD CONSTRAINT `template_id_gui` FOREIGN KEY (`template_id`) REFERENCES `templates_table` (`template_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id_gui` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `services_table`
--
ALTER TABLE `services_table`
  ADD CONSTRAINT `template_id_serv` FOREIGN KEY (`template_id`) REFERENCES `templates_table` (`template_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id_serv` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_templates_subscription`
--
ALTER TABLE `user_templates_subscription`
  ADD CONSTRAINT `template_id_temp_sub` FOREIGN KEY (`user_templates_subscription_id`) REFERENCES `templates_table` (`template_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id_temp_sub` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `workflow_table`
--
ALTER TABLE `workflow_table`
  ADD CONSTRAINT `template_id_wf` FOREIGN KEY (`template_id`) REFERENCES `templates_table` (`template_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id_wf` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
