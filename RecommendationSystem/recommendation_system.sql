-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2014 at 03:38 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

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

--
-- Dumping data for table `datamodel_table`
--

INSERT INTO `datamodel_table` (`schema_id`, `user_id`, `table_id`, `table_name`, `table_name1`, `table_name2`, `table_name3`, `table_name4`, `table_name5`, `template_id`, `customization_type`) VALUES
(1, -1, 14, 'Course Registration', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(2, -1, 24, 'Course Withdrawal', NULL, NULL, NULL, NULL, NULL, 2, NULL),
(3, -1, 34, 'Course Schedule', NULL, NULL, NULL, NULL, NULL, 3, NULL),
(4, -1, 44, 'Plan of Study', NULL, NULL, NULL, NULL, NULL, 4, NULL),
(5, -1, 54, 'Thesis Dissertation', NULL, NULL, NULL, NULL, NULL, 5, NULL),
(6, -1, 64, 'Grading', NULL, NULL, NULL, NULL, NULL, 6, NULL),
(7, -1, 74, 'To Dos', NULL, NULL, NULL, NULL, NULL, 7, NULL),
(8, -1, 84, 'Holds', NULL, NULL, NULL, NULL, NULL, 8, NULL),
(9, -1, 94, 'Tutoring Services', NULL, NULL, NULL, NULL, NULL, 9, NULL),
(10, -1, 104, 'Application Fee Processing', NULL, NULL, NULL, NULL, NULL, 10, NULL),
(11, -1, 114, 'Application Support', NULL, NULL, NULL, NULL, NULL, 10, NULL),
(12, -1, 124, 'User Login', NULL, NULL, NULL, NULL, NULL, 12, NULL),
(13, -1, 134, 'Admission Result Notification', NULL, NULL, NULL, NULL, NULL, 13, NULL),
(14, -1, 144, 'Status Enquiry', NULL, NULL, NULL, NULL, NULL, 14, NULL),
(15, -1, 154, 'Tuition Payment', NULL, NULL, NULL, NULL, NULL, 15, NULL),
(16, -1, 164, 'Scholarship Application', NULL, NULL, NULL, NULL, NULL, 16, NULL),
(17, -1, 174, 'Grant funds', NULL, NULL, NULL, NULL, NULL, 17, NULL),
(18, -1, 184, 'Funding Requests', NULL, NULL, NULL, NULL, NULL, 18, NULL),
(19, -1, 194, 'Misc Fees (Lab Fees, Library fees etc)', NULL, NULL, NULL, NULL, NULL, 19, NULL),
(20, -1, 204, 'Payment Gateway', NULL, NULL, NULL, NULL, NULL, 20, NULL),
(21, -1, 214, 'Student Loan', NULL, NULL, NULL, NULL, NULL, 21, NULL),
(22, -1, 224, 'Tax Services', NULL, NULL, NULL, NULL, NULL, 20, NULL),
(23, -1, 234, 'On Campus Housing', NULL, NULL, NULL, NULL, NULL, 23, NULL),
(24, -1, 244, 'Off- Campus Housing', NULL, NULL, NULL, NULL, NULL, 24, NULL),
(25, -1, 254, 'On campus dining', NULL, NULL, NULL, NULL, NULL, 25, NULL),
(26, -1, 264, 'Off Campus Student Services', NULL, NULL, NULL, NULL, NULL, 26, NULL),
(27, -1, 274, 'Health Services', NULL, NULL, NULL, NULL, NULL, 27, NULL),
(28, -1, 284, 'Recreation Services', NULL, NULL, NULL, NULL, NULL, 28, NULL),
(29, -1, 294, 'Student Clubs', NULL, NULL, NULL, NULL, NULL, 29, NULL),
(30, -1, 304, 'Parking', NULL, NULL, NULL, NULL, NULL, 30, NULL),
(31, -1, 314, 'Bike Co-Op', NULL, NULL, NULL, NULL, NULL, 31, NULL),
(32, -1, 324, 'Cab Services', NULL, NULL, NULL, NULL, NULL, 32, NULL),
(33, -1, 334, 'Metro Services', NULL, NULL, NULL, NULL, NULL, 30, NULL),
(34, -1, 344, 'Campus Shuttle', NULL, NULL, NULL, NULL, NULL, 34, NULL),
(35, -1, 354, 'Stadium', NULL, NULL, NULL, NULL, NULL, 35, NULL),
(36, -1, 364, 'Gym', NULL, NULL, NULL, NULL, NULL, 36, NULL),
(37, -1, 374, 'Auditorium', NULL, NULL, NULL, NULL, NULL, 37, NULL),
(38, -1, 384, 'Classroom Services', NULL, NULL, NULL, NULL, NULL, 38, NULL),
(39, -1, 394, 'Labs', NULL, NULL, NULL, NULL, NULL, 39, NULL),
(40, -1, 404, 'Book Search', NULL, NULL, NULL, NULL, NULL, 40, NULL),
(41, -1, 414, 'Journals Collaboration', NULL, NULL, NULL, NULL, NULL, 41, NULL),
(42, -1, 424, 'Library Room Services', NULL, NULL, NULL, NULL, NULL, 42, NULL),
(43, -1, 434, 'Book Reservation', NULL, NULL, NULL, NULL, NULL, 43, NULL),
(44, -1, 444, 'Book Return', NULL, NULL, NULL, NULL, NULL, 44, NULL),
(45, -1, 454, 'Email Services', NULL, NULL, NULL, NULL, NULL, 45, NULL),
(46, -1, 464, 'Cloud Services', NULL, NULL, NULL, NULL, NULL, 46, NULL),
(47, -1, 474, 'Technology Support Services', NULL, NULL, NULL, NULL, NULL, 47, NULL),
(48, -1, 484, 'On-Campus Employment', NULL, NULL, NULL, NULL, NULL, 48, NULL),
(49, -1, 494, 'Off-Campus Employment', NULL, NULL, NULL, NULL, NULL, 49, NULL),
(50, -1, 504, 'Payroll Services', NULL, NULL, NULL, NULL, NULL, 50, NULL),
(51, -1, 514, 'Career Events', NULL, NULL, NULL, NULL, NULL, 51, NULL),
(52, -1, 524, 'Internships', NULL, NULL, NULL, NULL, NULL, 52, NULL),
(53, -1, 534, 'International Students Career Support', NULL, NULL, NULL, NULL, NULL, 53, NULL),
(54, -1, 544, 'Timesheets', NULL, NULL, NULL, NULL, NULL, 54, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gui_table`
--

CREATE TABLE IF NOT EXISTS `gui_table` (
  `gui_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `gui_name` varchar(45) DEFAULT NULL,
  `gui_attribute1` varchar(45) DEFAULT NULL,
  `gui_attr_value1` varchar(45) DEFAULT NULL,
  `gui_attribute2` varchar(45) DEFAULT NULL,
  `gui_attr_value2` varchar(45) DEFAULT NULL,
  `gui_attribute3` varchar(45) DEFAULT NULL,
  `gui_attr_value3` varchar(45) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `URL` varchar(75) NOT NULL,
  PRIMARY KEY (`gui_id`),
  KEY `user_id_gui_idx` (`user_id`),
  KEY `template_id_gui_idx` (`template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=417 ;

--
-- Dumping data for table `gui_table`
--

INSERT INTO `gui_table` (`gui_id`, `user_id`, `gui_name`, `gui_attribute1`, `gui_attr_value1`, `gui_attribute2`, `gui_attr_value2`, `gui_attribute3`, `gui_attr_value3`, `template_id`, `URL`) VALUES
(1, -1, 'Course Registration Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 1, ''),
(2, -1, 'Course Withdrawal Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 2, ''),
(3, -1, 'Course Schedule Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 3, ''),
(4, -1, 'Plan of Study Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 4, ''),
(5, -1, 'Thesis Dissertation Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 5, ''),
(6, -1, 'Grading Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 6, ''),
(7, -1, 'To Dos Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 7, ''),
(8, -1, 'Holds Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 8, ''),
(9, -1, 'Tutoring Services Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 9, ''),
(10, -1, 'Application Fee Processing Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 10, ''),
(12, -1, 'Applicant evaluation Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 12, ''),
(13, -1, 'Admission Result Notification Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 13, ''),
(14, -1, 'Status Enquiry Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 14, ''),
(15, -1, 'Tuition Payment Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 15, ''),
(16, -1, 'Scholarship Application ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 16, ''),
(17, -1, 'Grant funds ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 17, ''),
(18, -1, 'Funding Requests', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 18, ''),
(19, -1, 'Misc Fees (Lab Fees, Library fees etc) ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 19, ''),
(20, -1, 'Payment Gateway ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 20, ''),
(21, -1, 'Student Loan ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 21, ''),
(22, -1, 'Tax Services ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 22, ''),
(23, -1, 'On Campus Housing', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 23, ''),
(24, -1, 'Off- Campus Housing', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 24, ''),
(25, -1, 'On campus dining ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 25, ''),
(26, -1, 'Off Campus Student Services ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 26, ''),
(27, -1, 'Health Services ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 27, ''),
(28, -1, 'Recreation Services ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 28, ''),
(29, -1, 'Student Clubs ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 29, ''),
(30, -1, 'Parking ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 30, ''),
(31, -1, 'Bike Co-Op ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 31, ''),
(32, -1, 'Cab Services ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 32, ''),
(33, -1, 'Metro Services ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 30, ''),
(34, -1, 'Campus Shuttle ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 34, ''),
(35, -1, 'Stadium ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 35, ''),
(36, -1, 'Gym ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 36, ''),
(37, -1, 'Auditorium', 'Organization Logo ', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 37, ''),
(38, -1, 'Classroom Services ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 38, ''),
(39, -1, 'Labs', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 39, ''),
(111, -1, 'Login Screen', 'Title', '&lt;Title&gt;', 'Font-Family', 'verdana, arial', NULL, NULL, 11, '/templates/gui/Login'),
(401, -1, 'Book Search Screen', 'Organization Logo', '&lt;Title&gt;', 'Font Family', 'Verdana', 'Label', 'New Field Label', 40, '/templates/gui/BookSearch'),
(402, -1, 'Book Return', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 44, '/templates/gui/BookSearch'),
(415, 121, 'Book Search Screen', 'Organization Logo', 'Noble Library Book Search', 'Font Family', 'Arial', 'Label', 'ISBN # ', 40, '/templates/gui/BookSearch'),
(416, 121, 'Login Screen', 'Title', 'ASURITE Login', 'Font-Family', 'Arial', NULL, NULL, 11, '/templates/gui/Login');

-- --------------------------------------------------------

--
-- Table structure for table `services_table`
--

CREATE TABLE IF NOT EXISTS `services_table` (
  `template_component_relationship_Id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `service_name` varchar(25) DEFAULT NULL,
  `service_inputdatatype1` varchar(25) DEFAULT NULL,
  `service_inputdatatype2` varchar(25) DEFAULT NULL,
  `service_inputdatatype3` varchar(25) DEFAULT NULL,
  `service_outputdatatype` varchar(45) DEFAULT NULL,
  `service_description` varchar(45) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `customization_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`template_component_relationship_Id`,`service_id`),
  KEY `user_id_serv_idx` (`user_id`),
  KEY `template_id_serv_idx` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services_table`
--

INSERT INTO `services_table` (`template_component_relationship_Id`, `service_id`, `user_id`, `service_name`, `service_inputdatatype1`, `service_inputdatatype2`, `service_inputdatatype3`, `service_outputdatatype`, `service_description`, `template_id`, `customization_type`) VALUES
(1, 13, -1, '13', 'String', NULL, NULL, 'boolean', 'Course Registration', 1, NULL),
(2, 23, -1, '23', 'String', NULL, NULL, 'boolean', 'Course Withdrawal', 2, NULL),
(3, 33, -1, '33', 'String', NULL, NULL, 'String', 'Course Schedule', 3, NULL),
(4, 43, -1, '43', 'String', NULL, NULL, 'String', 'Plan of Study', 4, NULL),
(5, 53, -1, '53', 'String', NULL, NULL, 'String', 'Thesis Dissertation', 5, NULL),
(6, 63, -1, '63', 'Integer', NULL, NULL, 'Integer', 'Grading', 6, NULL),
(7, 73, -1, '73', 'String', NULL, NULL, 'String', 'To Dos', 7, NULL),
(8, 83, -1, '83', 'String', NULL, NULL, 'String', 'Holds', 8, NULL),
(9, 93, -1, '93', 'String', NULL, NULL, 'String', 'Tutoring Services', 9, NULL),
(10, 103, -1, '103', 'Float', NULL, NULL, 'Float', 'Application Fee Processing', 10, NULL),
(11, 113, -1, NULL, 'Int', 'Float', 'Double', 'Boolean', 'validateUserService', 11, NULL),
(12, 123, -1, '123', 'String', NULL, NULL, 'String', 'Applicant evaluation', 12, NULL),
(13, 133, -1, '133', 'String', NULL, NULL, 'String', 'Admission Result Notification', 13, NULL),
(14, 143, -1, '143', 'String', NULL, NULL, 'String', 'Status Enquiry', 14, NULL),
(15, 153, -1, '153', 'Float', NULL, NULL, 'Float', 'Tuition Payment', 15, NULL),
(16, 163, -1, '163', 'String', NULL, NULL, 'String', 'Scholarship Application', 16, NULL),
(17, 173, -1, '173', 'Float', NULL, NULL, 'Float', 'Grant funds', 17, NULL),
(18, 183, -1, '183', 'String', NULL, NULL, 'String', 'Funding Requests', 18, NULL),
(19, 193, -1, '193', 'Float', NULL, NULL, 'Float', 'Misc Fees (Lab Fees, Library fees etc)', 19, NULL),
(20, 203, -1, '203', 'String', NULL, NULL, 'String', 'Payment Gateway', 20, NULL),
(21, 213, -1, '213', 'Float', NULL, NULL, 'Float', 'Student Loan', 21, NULL),
(22, 223, -1, '223', 'String', NULL, NULL, 'String', 'Tax Services', 22, NULL),
(23, 233, -1, '233', 'String', NULL, NULL, 'String', 'On Campus Housing', 23, NULL),
(24, 243, -1, '243', 'String', NULL, NULL, 'String', 'Off- Campus Housing', 24, NULL),
(25, 253, -1, '253', 'String', NULL, NULL, 'String', 'On campus dining', 25, NULL),
(26, 263, -1, '263', 'String', NULL, NULL, 'String', 'Off Campus Student Services', 26, NULL),
(27, 273, -1, '273', 'String', NULL, NULL, 'String', 'Health Services', 27, NULL),
(28, 283, -1, '283', 'String', NULL, NULL, 'String', 'Recreation Services', 28, NULL),
(29, 293, -1, '293', 'String', NULL, NULL, 'String', 'Student Clubs', 29, NULL),
(30, 303, -1, '303', 'String', NULL, NULL, 'String', 'Parking', 30, NULL),
(31, 313, -1, '313', 'String', NULL, NULL, 'String', 'Bike Co-Op', 31, NULL),
(32, 323, -1, '323', 'String', NULL, NULL, 'String', 'Cab Services', 32, NULL),
(33, 333, -1, '333', 'String', NULL, NULL, 'String', 'Metro Services', 30, NULL),
(34, 343, -1, '343', 'String', NULL, NULL, 'String', 'Campus Shuttle', 34, NULL),
(35, 353, -1, '353', 'String', NULL, NULL, 'String', 'Stadium', 35, NULL),
(36, 363, -1, '363', 'String', NULL, NULL, 'String', 'Gym', 36, NULL),
(37, 373, -1, '373', 'String', NULL, NULL, 'String', 'Auditorium', 37, NULL),
(38, 383, -1, '383', 'String', NULL, NULL, 'String', 'Classroom Services', 38, NULL),
(39, 393, -1, '393', 'String', NULL, NULL, 'String', 'Labs', 39, NULL),
(40, 403, -1, '403', 'String', NULL, NULL, 'String', 'Book Search', 40, NULL),
(41, 413, -1, '413', 'String', NULL, NULL, 'String', 'Journals Collaboration', 41, NULL),
(42, 423, -1, '423', 'String', NULL, NULL, 'String', 'Library Room Services', 42, NULL),
(43, 433, -1, '433', 'String', NULL, NULL, 'String', 'Book Reservation', 43, NULL),
(44, 443, -1, '443', 'String', NULL, NULL, 'String', 'Book Return', 44, NULL),
(45, 453, -1, '453', 'String', NULL, NULL, 'String', 'Email Services', 45, NULL),
(46, 463, -1, '463', 'String', NULL, NULL, 'String', 'Cloud Services', 46, NULL),
(47, 473, -1, '473', 'String', NULL, NULL, 'String', 'Technology Support Services', 47, NULL),
(48, 483, -1, '483', 'String', NULL, NULL, 'String', 'On-Campus Employment', 48, NULL),
(49, 493, -1, '493', 'String', NULL, NULL, 'String', 'Off-Campus Employment', 49, NULL),
(50, 503, -1, '503', 'Float', NULL, NULL, 'Float', 'Payroll Services', 50, NULL),
(51, 513, -1, '513', 'String', NULL, NULL, 'String', 'Career Events', 51, NULL),
(52, 523, -1, '523', 'String', NULL, NULL, 'String', 'Internships', 52, NULL),
(53, 533, -1, '533', 'String', NULL, NULL, 'String', 'International Students Career Support', 53, NULL),
(54, 543, -1, '543', 'String', NULL, NULL, 'String', 'Timesheets', 54, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `templates_table`
--

CREATE TABLE IF NOT EXISTS `templates_table` (
  `template_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `template_name` varchar(45) DEFAULT NULL,
  `template_description` varchar(45) DEFAULT NULL,
  `used_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`template_id`),
  KEY `user_id_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `templates_table`
--

INSERT INTO `templates_table` (`template_id`, `user_id`, `template_name`, `template_description`, `used_count`) VALUES
(1, 121, 'Course Registration', 't1', 1),
(2, 121, 'Course Withdrawal', 't2', 1),
(3, 121, 'Course Schedule', 't3', 1),
(4, NULL, 'Plan of Study', 't4', 1),
(5, NULL, 'Thesis Dissertation', 't5', 1),
(6, NULL, 'Grading', 't6', 1),
(7, NULL, 'To do', 'Tasks', 1),
(8, NULL, 'Holds', 't8', 1),
(9, NULL, 'Tutoring Services', 't9', 1),
(10, NULL, 'Application Fee Processing', 't10', 1),
(11, 121, 'Login', 'User Login Template', 10),
(12, NULL, 'Applicant evaluation', 't12', 1),
(13, NULL, 'Admission Result Notification', 't13', 1),
(14, NULL, 'Status Enquiry', 't14', 1),
(15, NULL, 'Tuition Payment', 't15', 1),
(16, NULL, 'Scholarship Application', 't16', 1),
(17, NULL, 'Grant funds', 't17', 1),
(18, NULL, 'Funding Requests', 't18', 1),
(19, NULL, 'Misc Fees (Lab Fees, Library fees etc)', 't19', 1),
(20, NULL, 'Payment Gateway', 't20', 1),
(21, NULL, 'Student Loan', 't21', 1),
(22, NULL, 'Tax Services', 't22', 1),
(23, NULL, 'On Campus Housing', 't23', 1),
(24, NULL, 'Off- Campus Housing', 't24', 1),
(25, NULL, 'On campus dining', 't25', 1),
(26, NULL, 'Off Campus Student Services', 't26', 1),
(27, NULL, 'Health Services', 't27', 1),
(28, NULL, 'Recreation Services', 't28', 1),
(29, NULL, 'Student Clubs', 't29', 1),
(30, NULL, 'Parking', 't30', 1),
(31, NULL, 'Bike Co-Op', 't31', 1),
(32, NULL, 'Cab Services', 't32', 1),
(33, NULL, 'Metro Services', 't33', 1),
(34, NULL, 'Campus Shuttle', 't34', 1),
(35, NULL, 'Stadium', 't35', 1),
(36, NULL, 'Gym', 't36', 1),
(37, NULL, 'Auditorium', 't37', 1),
(38, NULL, 'Classroom Services', 't38', 1),
(39, NULL, 'Labs', 't39', 1),
(40, NULL, 'Book Search', 't40', 1),
(41, NULL, 'Journals Collaboration', 't41', 1),
(42, NULL, 'Library Room Services', 't42', 1),
(43, NULL, 'Book Reservation', 't43', 1),
(44, NULL, 'Book Return', 't44', 1),
(45, NULL, 'Email Services', 't45', 1),
(46, NULL, 'Cloud Services', 't46', 1),
(47, NULL, 'Technology Support Services', 't47', 1),
(48, NULL, 'On-Campus Employment', 't48', 1),
(49, NULL, 'Off-Campus Employment', 't49', 1),
(50, NULL, 'Payroll Services', 't50', 1),
(51, NULL, 'Career Events', 't51', 1),
(52, NULL, 'Internships', 't52', 1),
(53, NULL, 'International Students Career Support', 't53', 1),
(54, NULL, 'Timesheets', 't54', 1),
(55, NULL, 'Application Support', 't11', 1);

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
(-1, 'dummy', 'dummy@org.com', 'dummy', 'dummy', 'dummy', NULL, NULL),
(2, 'asu', 'asu2@edu', 'a2', '123', 'l2', '1/1/2014', '6/1/2014'),
(3, 'asu', 'asu3@edu', 'a3', '123', 'l3', '1/1/2014', '6/1/2014'),
(4, 'asu4', 'asu4@edu', 'a4', '123', 'l4', '1/1/2014', '6/1/2014'),
(5, 'asu5', 'asu5@edu', 'a5', '123', 'l5', '1/1/2014', '6/1/2014'),
(6, 'asu6', 'asu6@edu', 'a6', '123', 'l6', '1/1/2014', '1/6/2014'),
(7, 'asu7', 'asu7@edu', 'a7', '123', 'l7', '1/1/2014', '1/6/2014'),
(8, 'asu8', 'asu8@edu', 'a8', '123', 'l8', '1/1/2014', '6/1/2014'),
(9, 'asu9', 'asu9@edu', 'a9', '123', 'l9', '1/1/2014', '6/1/2014'),
(10, 'asu10', 'asu10@edu', 'a10', '123', 'l10', '1/1/2014', '6/1/2014'),
(11, 'asu11', 'asu11@edu', 'a11', '123', 'l11', '1/1/2014', '6/1/2014'),
(12, 'asu12', 'asu12@edu', 'a12', '123', 'l12', '1/1/2014', '6/1/2014'),
(13, 'asu13', 'asu13@edu', 'a13', '123', 'l13', '1/1/2014', '6/1/2014'),
(14, 'asu14', 'asu14@edu', 'a14', '123', 'l14', '1/1/2014', '6/1/2014'),
(15, 'asu15', 'asu15@edu', 'a15', '123', 'l15', '1/1/2014', '6/1/2014'),
(16, 'asu16', 'asu16@edu', 'a16', '123', 'l16', '1/1/2014', '6/1/2014'),
(17, 'asu17', 'asu17@edu', 'a17', '123', 'l17', '1/1/2014', '6/1/2014'),
(18, 'asu18', 'asu18@edu', 'a18', '123', 'l18', '1/1/2014', '6/1/2014'),
(19, 'asu19', 'asu19@edu', 'a19', '123', 'l19', '1/1/2014', '6/1/2014'),
(20, 'asu20', 'asu20@edu', 'a20', '123', 'l20', '1/1/2014', '6/1/2014'),
(21, 'asu21', 'asu21@edu', 'a21', '123', 'l21', '1/1/2014', '6/1/2014'),
(22, 'asu22', 'asu22@edu', 'a22', '123', 'l22', '1/1/2014', '6/1/2014'),
(23, 'asu23', 'asu23@edu', 'a23', '123', 'l23', '1/1/2014', '6/1/2014'),
(24, 'asu24', 'asu24@edu', 'a24', '123', 'l24', '1/1/2014', '6/1/2014'),
(25, 'asu25', 'asu25@edu', 'a25', '123', 'l25', '1/1/2014', '6/1/2014'),
(26, 'asu26', 'asu26@edu', 'a26', '123', 'l26', '1/1/2014', '6/1/2014'),
(27, 'asu27', 'asu27@edu', 'a27', '123', 'l27', '1/1/2014', '6/1/2014'),
(121, 'Arizona State University', 'admin@asu', 'asu', 'admin', 'Arizona State University', '05/05/2014', '05/05/2016');

-- --------------------------------------------------------

--
-- Table structure for table `user_template_subscription_table`
--

CREATE TABLE IF NOT EXISTS `user_template_subscription_table` (
  `user_template_subscription_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  PRIMARY KEY (`user_template_subscription_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `template_id_idx` (`template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_template_subscription_table`
--

INSERT INTO `user_template_subscription_table` (`user_template_subscription_id`, `user_id`, `template_id`) VALUES
(3, 121, 11),
(4, 121, 40),
(5, 121, 44);

-- --------------------------------------------------------

--
-- Table structure for table `workflow_table`
--

CREATE TABLE IF NOT EXISTS `workflow_table` (
  `workflow_id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=543 ;

--
-- Dumping data for table `workflow_table`
--

INSERT INTO `workflow_table` (`workflow_id`, `user_id`, `workflow_name`, `step_1`, `step_2`, `step_3`, `step_4`, `step_5`, `template_id`, `customization_type`) VALUES
(12, -1, 'Course Registration', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(22, -1, 'Course Withdrawal', NULL, NULL, NULL, NULL, NULL, 2, NULL),
(32, -1, 'Course Schedule', NULL, NULL, NULL, NULL, NULL, 3, NULL),
(42, -1, 'Plan of Study', NULL, NULL, NULL, NULL, NULL, 4, NULL),
(52, -1, 'Thesis Dissertation', NULL, NULL, NULL, NULL, NULL, 5, NULL),
(62, -1, 'Grading', NULL, NULL, NULL, NULL, NULL, 6, NULL),
(72, -1, 'To Dos', NULL, NULL, NULL, NULL, NULL, 7, NULL),
(82, -1, 'Holds', NULL, NULL, NULL, NULL, NULL, 8, NULL),
(92, -1, 'Tutoring Services', NULL, NULL, NULL, NULL, NULL, 9, NULL),
(102, -1, 'Application Fee Processing', NULL, NULL, NULL, NULL, NULL, 10, NULL),
(112, -1, 'Authroization', 'Enter Password', 'Validate', 'Check User Role', 'Success', 'Welcome', 11, NULL),
(122, -1, 'Applicant evaluation', NULL, NULL, NULL, NULL, NULL, 12, NULL),
(132, -1, 'Admission Result Notification', NULL, NULL, NULL, NULL, NULL, 13, NULL),
(142, -1, 'Status Enquiry', NULL, NULL, NULL, NULL, NULL, 14, NULL),
(152, -1, 'Tuition Payment', NULL, NULL, NULL, NULL, NULL, 15, NULL),
(162, -1, 'Scholarship Application', NULL, NULL, NULL, NULL, NULL, 16, NULL),
(172, -1, 'Grant funds', NULL, NULL, NULL, NULL, NULL, 17, NULL),
(182, -1, 'Funding Requests', NULL, NULL, NULL, NULL, NULL, 18, NULL),
(192, -1, 'Misc Fees (Lab Fees, Library fees etc)', NULL, NULL, NULL, NULL, NULL, 19, NULL),
(202, -1, 'Payment Gateway', NULL, NULL, NULL, NULL, NULL, 20, NULL),
(212, -1, 'Student Loan', NULL, NULL, NULL, NULL, NULL, 21, NULL),
(222, -1, 'Tax Services', NULL, NULL, NULL, NULL, NULL, 22, NULL),
(232, -1, 'On Campus Housing', NULL, NULL, NULL, NULL, NULL, 23, NULL),
(242, -1, 'Off- Campus Housing', NULL, NULL, NULL, NULL, NULL, 24, NULL),
(252, -1, 'On campus dining', NULL, NULL, NULL, NULL, NULL, 25, NULL),
(262, -1, 'Off Campus Student Services', NULL, NULL, NULL, NULL, NULL, 26, NULL),
(272, -1, 'Health Services', NULL, NULL, NULL, NULL, NULL, 27, NULL),
(282, -1, 'Recreation Services', NULL, NULL, NULL, NULL, NULL, 28, NULL),
(292, -1, 'Student Clubs', NULL, NULL, NULL, NULL, NULL, 29, NULL),
(302, -1, 'Parking', NULL, NULL, NULL, NULL, NULL, 30, NULL),
(312, -1, 'Bike Co-Op', NULL, NULL, NULL, NULL, NULL, 31, NULL),
(322, -1, 'Cab Services', NULL, NULL, NULL, NULL, NULL, 32, NULL),
(332, -1, 'Metro Services', NULL, NULL, NULL, NULL, NULL, 33, NULL),
(342, -1, 'Campus Shuttle', NULL, NULL, NULL, NULL, NULL, 34, NULL),
(352, -1, 'Stadium', NULL, NULL, NULL, NULL, NULL, 35, NULL),
(362, -1, 'Gym', NULL, NULL, NULL, NULL, NULL, 36, NULL),
(372, -1, 'Auditorium', NULL, NULL, NULL, NULL, NULL, 37, NULL),
(382, -1, 'Classroom Services', NULL, NULL, NULL, NULL, NULL, 38, NULL),
(392, -1, 'Labs', NULL, NULL, NULL, NULL, NULL, 39, NULL),
(402, -1, 'Book Search', NULL, NULL, NULL, NULL, NULL, 40, NULL),
(412, -1, 'Journals Collaboration', NULL, NULL, NULL, NULL, NULL, 41, NULL),
(422, -1, 'Library Room Services', NULL, NULL, NULL, NULL, NULL, 42, NULL),
(432, -1, 'Book Reservation', NULL, NULL, NULL, NULL, NULL, 43, NULL),
(442, -1, 'Book Return', NULL, NULL, NULL, NULL, NULL, 44, NULL),
(452, -1, 'Email Services', NULL, NULL, NULL, NULL, NULL, 45, NULL),
(462, -1, 'Cloud Services', NULL, NULL, NULL, NULL, NULL, 46, NULL),
(472, -1, 'Technology Support Services', NULL, NULL, NULL, NULL, NULL, 47, NULL),
(482, -1, 'On-Campus Employment', NULL, NULL, NULL, NULL, NULL, 48, NULL),
(492, -1, 'Off-Campus Employment', NULL, NULL, NULL, NULL, NULL, 49, NULL),
(502, -1, 'Payroll Services', NULL, NULL, NULL, NULL, NULL, 50, NULL),
(512, -1, 'Career Events', NULL, NULL, NULL, NULL, NULL, 51, NULL),
(522, -1, 'Internships', NULL, NULL, NULL, NULL, NULL, 52, NULL),
(532, -1, 'International Students Career Support', NULL, NULL, NULL, NULL, NULL, 53, NULL),
(542, -1, 'Timesheets', NULL, NULL, NULL, NULL, NULL, 54, NULL);

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
-- Constraints for table `templates_table`
--
ALTER TABLE `templates_table`
  ADD CONSTRAINT `user_id_idx` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`);

--
-- Constraints for table `user_template_subscription_table`
--
ALTER TABLE `user_template_subscription_table`
  ADD CONSTRAINT `user_template_subscription_table_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`),
  ADD CONSTRAINT `user_template_subscription_table_ibfk_2` FOREIGN KEY (`template_id`) REFERENCES `templates_table` (`template_id`);

--
-- Constraints for table `workflow_table`
--
ALTER TABLE `workflow_table`
  ADD CONSTRAINT `template_id_wf` FOREIGN KEY (`template_id`) REFERENCES `templates_table` (`template_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id_wf` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
