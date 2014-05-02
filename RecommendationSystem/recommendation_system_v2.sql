-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2014 at 02:46 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `recommendation_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `datamodel_table`
--

CREATE TABLE IF NOT EXISTS `datamodel_table` (
  `schema_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '-1',
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
(12, -1, 124, 'Applicant evaluation', NULL, NULL, NULL, NULL, NULL, 12, NULL),
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
(44, -1, 444, 'Book Return', NULL, NULL, NULL, NULL, NULL, 40, NULL),
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
  `gui_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '-1',
  `gui_name` varchar(45) DEFAULT NULL,
  `gui_attribute1` varchar(45) DEFAULT 'Organization Logo',
  `gui_attr_value1` varchar(45) DEFAULT 'ASU',
  `gui_attribute2` varchar(45) DEFAULT 'Font Family',
  `gui_attri_value2` varchar(45) DEFAULT 'Verdana',
  `gui_attribute3` varchar(45) DEFAULT 'Font size',
  `gui_attr_value3` varchar(50) NOT NULL DEFAULT '10',
  `template_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`gui_id`),
  KEY `user_id_gui_idx` (`user_id`),
  KEY `template_id_gui_idx` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gui_table`
--

INSERT INTO `gui_table` (`gui_id`, `user_id`, `gui_name`, `gui_attribute1`, `gui_attr_value1`, `gui_attribute2`, `gui_attri_value2`, `gui_attribute3`, `gui_attr_value3`, `template_id`) VALUES
(11, -1, 'Course Registration Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 1),
(22, -1, 'Course Withdrawal Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 2),
(33, -1, 'Course Schedule Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 3),
(44, -1, 'Plan of Study Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 4),
(55, -1, 'Thesis Dissertation Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 5),
(66, -1, 'Grading Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 6),
(77, -1, 'To Dos Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 7),
(88, -1, 'Holds Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 8),
(99, -1, 'Tutoring Services Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 9),
(1010, -1, 'Application Fee Processing Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 10),
(1111, -1, 'Application Support Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 11),
(1212, -1, 'Applicant evaluation Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 12),
(1313, -1, 'Admission Result Notification Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 13),
(1414, -1, 'Status Enquiry Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 14),
(1515, -1, 'Tuition Payment Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 15),
(1616, -1, 'Scholarship Application ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 16),
(1717, -1, 'Grant funds ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 17),
(1818, -1, 'Funding Requests', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 18),
(1919, -1, 'Misc Fees (Lab Fees, Library fees etc) ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 19),
(2020, -1, 'Payment Gateway ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 20),
(2121, -1, 'Student Loan ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 21),
(2222, -1, 'Tax Services ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 22),
(2323, -1, 'On Campus Housing', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 23),
(2424, -1, 'Off- Campus Housing', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 24),
(2525, -1, 'On campus dining ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 25),
(2626, -1, 'Off Campus Student Services ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 26),
(2727, -1, 'Health Services ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 27),
(2828, -1, 'Recreation Services ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 28),
(2929, -1, 'Student Clubs ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 29),
(3030, -1, 'Parking ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 30),
(3131, -1, 'Bike Co-Op ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 31),
(3232, -1, 'Cab Services ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 32),
(3333, -1, 'Metro Services ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 30),
(3434, -1, 'Campus Shuttle ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 34),
(3535, -1, 'Stadium ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 35),
(3636, -1, 'Gym ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 36),
(3737, -1, 'Auditorium', 'Organization Logo ', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 37),
(3838, -1, 'Classroom Services ', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 38),
(3939, -1, 'Labs', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 39),
(4040, -1, 'Book Search Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 40),
(4141, -1, 'Journals Collaboration Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 41),
(4242, -1, 'Library Room Services Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 42),
(4343, -1, 'Book Reservation Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 43),
(4444, -1, 'Book Return Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 40),
(4545, -1, 'Email Services Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 45),
(4646, -1, 'Cloud Services Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 46),
(4747, -1, 'Technology Support Services Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 47),
(4848, -1, 'On-Campus Employment Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 48),
(4949, -1, 'Off-Campus Employment Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 49),
(5050, -1, 'Payroll Services Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 50),
(5151, -1, 'Career Events Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 51),
(5252, -1, 'Internships Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 52),
(5353, -1, 'International Students Career Support Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 53),
(5454, -1, 'Timesheets Screen', 'Organization Logo', 'ASU', 'Font Family', 'Verdana', 'Font size', '10', 54);

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

--
-- Dumping data for table `services_table`
--

INSERT INTO `services_table` (`template_component_relationship_Id`, `service_id`, `user_id`, `service_name`, `service_inputdatatype`, `service_outputdatatype`, `service_description`, `template_id`, `customization_type`) VALUES
(1, 13, -1, 13, 'String', 'boolean', 'Course Registration', 1, NULL),
(2, 23, -1, 23, 'String', 'boolean', 'Course Withdrawal', 2, NULL),
(3, 33, -1, 33, 'String', 'String', 'Course Schedule', 3, NULL),
(4, 43, -1, 43, 'String', 'String', 'Plan of Study', 4, NULL),
(5, 53, -1, 53, 'String', 'String', 'Thesis Dissertation', 5, NULL),
(6, 63, -1, 63, 'Integer', 'Integer', 'Grading', 6, NULL),
(7, 73, -1, 73, 'String', 'String', 'To Dos', 7, NULL),
(8, 83, -1, 83, 'String', 'String', 'Holds', 8, NULL),
(9, 93, -1, 93, 'String', 'String', 'Tutoring Services', 9, NULL),
(10, 103, -1, 103, 'Float', 'Float', 'Application Fee Processing', 10, NULL),
(11, 113, -1, 113, 'String', 'String', 'Application Support', 11, NULL),
(12, 123, -1, 123, 'String', 'String', 'Applicant evaluation', 12, NULL),
(13, 133, -1, 133, 'String', 'String', 'Admission Result Notification', 13, NULL),
(14, 143, -1, 143, 'String', 'String', 'Status Enquiry', 14, NULL),
(15, 153, -1, 153, 'Float', 'Float', 'Tuition Payment', 15, NULL),
(16, 163, -1, 163, 'String', 'String', 'Scholarship Application', 16, NULL),
(17, 173, -1, 173, 'Float', 'Float', 'Grant funds', 17, NULL),
(18, 183, -1, 183, 'String', 'String', 'Funding Requests', 18, NULL),
(19, 193, -1, 193, 'Float', 'Float', 'Misc Fees (Lab Fees, Library fees etc)', 19, NULL),
(20, 203, -1, 203, 'String', 'String', 'Payment Gateway', 20, NULL),
(21, 213, -1, 213, 'Float', 'Float', 'Student Loan', 21, NULL),
(22, 223, -1, 223, 'String', 'String', 'Tax Services', 22, NULL),
(23, 233, -1, 233, 'String', 'String', 'On Campus Housing', 23, NULL),
(24, 243, -1, 243, 'String', 'String', 'Off- Campus Housing', 24, NULL),
(25, 253, -1, 253, 'String', 'String', 'On campus dining', 25, NULL),
(26, 263, -1, 263, 'String', 'String', 'Off Campus Student Services', 26, NULL),
(27, 273, -1, 273, 'String', 'String', 'Health Services', 27, NULL),
(28, 283, -1, 283, 'String', 'String', 'Recreation Services', 28, NULL),
(29, 293, -1, 293, 'String', 'String', 'Student Clubs', 29, NULL),
(30, 303, -1, 303, 'String', 'String', 'Parking', 30, NULL),
(31, 313, -1, 313, 'String', 'String', 'Bike Co-Op', 31, NULL),
(32, 323, -1, 323, 'String', 'String', 'Cab Services', 32, NULL),
(33, 333, -1, 333, 'String', 'String', 'Metro Services', 30, NULL),
(34, 343, -1, 343, 'String', 'String', 'Campus Shuttle', 34, NULL),
(35, 353, -1, 353, 'String', 'String', 'Stadium', 35, NULL),
(36, 363, -1, 363, 'String', 'String', 'Gym', 36, NULL),
(37, 373, -1, 373, 'String', 'String', 'Auditorium', 37, NULL),
(38, 383, -1, 383, 'String', 'String', 'Classroom Services', 38, NULL),
(39, 393, -1, 393, 'String', 'String', 'Labs', 39, NULL),
(40, 403, -1, 403, 'String', 'String', 'Book Search', 40, NULL),
(41, 413, -1, 413, 'String', 'String', 'Journals Collaboration', 41, NULL),
(42, 423, -1, 423, 'String', 'String', 'Library Room Services', 42, NULL),
(43, 433, -1, 433, 'String', 'String', 'Book Reservation', 43, NULL),
(44, 443, -1, 443, 'String', 'String', 'Book Return', 44, NULL),
(45, 453, -1, 453, 'String', 'String', 'Email Services', 45, NULL),
(46, 463, -1, 463, 'String', 'String', 'Cloud Services', 46, NULL),
(47, 473, -1, 473, 'String', 'String', 'Technology Support Services', 47, NULL),
(48, 483, -1, 483, 'String', 'String', 'On-Campus Employment', 48, NULL),
(49, 493, -1, 493, 'String', 'String', 'Off-Campus Employment', 49, NULL),
(50, 503, -1, 503, 'Float', 'Float', 'Payroll Services', 50, NULL),
(51, 513, -1, 513, 'String', 'String', 'Career Events', 51, NULL),
(52, 523, -1, 523, 'String', 'String', 'Internships', 52, NULL),
(53, 533, -1, 533, 'String', 'String', 'International Students Career Support', 53, NULL),
(54, 543, -1, 543, 'String', 'String', 'Timesheets', 54, NULL);

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

--
-- Dumping data for table `templates_table`
--

INSERT INTO `templates_table` (`template_id`, `template_name`, `template_description`, `used_count`) VALUES
(1, 'Course Registration', 't1', 1),
(2, 'Course Withdrawal', 't2', 1),
(3, 'Course Schedule', 't3', 1),
(4, 'Plan of Study', 't4', 1),
(5, 'Thesis Dissertation', 't5', 1),
(6, 'Grading', 't6', 1),
(7, 'To Dos', 't7', 1),
(8, 'Holds', 't8', 1),
(9, 'Tutoring Services', 't9', 1),
(10, 'Application Fee Processing', 't10', 1),
(11, 'Application Support', 't11', 1),
(12, 'Applicant evaluation', 't12', 1),
(13, 'Admission Result Notification', 't13', 1),
(14, 'Status Enquiry', 't14', 1),
(15, 'Tuition Payment', 't15', 1),
(16, 'Scholarship Application', 't16', 1),
(17, 'Grant funds', 't17', 1),
(18, 'Funding Requests', 't18', 1),
(19, 'Misc Fees (Lab Fees, Library fees etc)', 't19', 1),
(20, 'Payment Gateway', 't20', 1),
(21, 'Student Loan', 't21', 1),
(22, 'Tax Services', 't22', 1),
(23, 'On Campus Housing', 't23', 1),
(24, 'Off- Campus Housing', 't24', 1),
(25, 'On campus dining', 't25', 1),
(26, 'Off Campus Student Services', 't26', 1),
(27, 'Health Services', 't27', 1),
(28, 'Recreation Services', 't28', 1),
(29, 'Student Clubs', 't29', 1),
(30, 'Parking', 't30', 1),
(31, 'Bike Co-Op', 't31', 1),
(32, 'Cab Services', 't32', 1),
(33, 'Metro Services', 't33', 1),
(34, 'Campus Shuttle', 't34', 1),
(35, 'Stadium', 't35', 1),
(36, 'Gym', 't36', 1),
(37, 'Auditorium', 't37', 1),
(38, 'Classroom Services', 't38', 1),
(39, 'Labs', 't39', 1),
(40, 'Book Search', 't40', 1),
(41, 'Journals Collaboration', 't41', 1),
(42, 'Library Room Services', 't42', 1),
(43, 'Book Reservation', 't43', 1),
(44, 'Book Return', 't44', 1),
(45, 'Email Services', 't45', 1),
(46, 'Cloud Services', 't46', 1),
(47, 'Technology Support Services', 't47', 1),
(48, 'On-Campus Employment', 't48', 1),
(49, 'Off-Campus Employment', 't49', 1),
(50, 'Payroll Services', 't50', 1),
(51, 'Career Events', 't51', 1),
(52, 'Internships', 't52', 1),
(53, 'International Students Career Support', 't53', 1),
(54, 'Timesheets', 't54', 1);

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
(-1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
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
  `user_id` int(11) DEFAULT '-1',
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
(112, -1, 'Application Support', NULL, NULL, NULL, NULL, NULL, 11, NULL),
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
(442, -1, 'Book Return', NULL, NULL, NULL, NULL, NULL, 40, NULL),
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
