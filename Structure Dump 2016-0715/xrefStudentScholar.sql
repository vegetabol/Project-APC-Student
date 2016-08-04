/*
Navicat MySQL Data Transfer

Source Server         : PROD SERVER FLAVIO DB
Source Server Version : 50541
Source Host           : 10.106.1.10:3306
Source Database       : AREG

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2016-07-15 15:17:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for xrefStudentScholar
-- ----------------------------
DROP TABLE IF EXISTS `xrefStudentScholar`;
CREATE TABLE `xrefStudentScholar` (
  `student_scholar_id` int(5) NOT NULL AUTO_INCREMENT,
  `student_id` char(11) NOT NULL,
  `term_id` int(5) NOT NULL,
  `scholarship_id` int(5) NOT NULL,
  `discount` decimal(3,2) DEFAULT '0.00',
  `CGPA_status` enum('On Probation','Good Standing') NOT NULL DEFAULT 'Good Standing',
  `is_deleted` enum('Y','N') NOT NULL DEFAULT 'N',
  `remarks` text,
  PRIMARY KEY (`student_scholar_id`),
  KEY `term_id` (`term_id`),
  KEY `student_id` (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=334675 DEFAULT CHARSET=latin1 COMMENT='Student Scholars CGPA per Term';
