-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2016 at 06:44 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wespeak`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `ClassId` int(11) NOT NULL AUTO_INCREMENT,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  `TeacherId` int(11) NOT NULL,
  PRIMARY KEY (`ClassId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `courseware`
--

CREATE TABLE IF NOT EXISTS `courseware` (
  `CoursewareId` int(11) NOT NULL AUTO_INCREMENT,
  `CoursewareImagePath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CoursewareName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Description` text COLLATE utf8_unicode_ci NOT NULL,
  `Active` int(11) NOT NULL,
  `CoursewarePath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ContributorId` int(11) NOT NULL,
  `Author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NumOfView` int(11) NOT NULL,
  PRIMARY KEY (`CoursewareId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `evaluations`
--

CREATE TABLE IF NOT EXISTS `evaluations` (
  `EvaluationId` int(11) NOT NULL AUTO_INCREMENT,
  `EvaluationTypeId` int(11) NOT NULL,
  `AssessorId` int(11) NOT NULL,
  `StudentId` int(11) NOT NULL,
  `Content` text COLLATE utf8_unicode_ci NOT NULL,
  `CreatedDate` datetime NOT NULL,
  PRIMARY KEY (`EvaluationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `evaluationtypes`
--

CREATE TABLE IF NOT EXISTS `evaluationtypes` (
  `EvaluationTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `EvaluationTypeName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`EvaluationTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE IF NOT EXISTS `levels` (
  `LevelId` int(11) NOT NULL AUTO_INCREMENT,
  `LevelName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TopicId` int(11) NOT NULL,
  `Points` int(11) NOT NULL,
  PRIMARY KEY (`LevelId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`LevelId`, `LevelName`, `TopicId`, `Points`) VALUES
(1, 'First date', 2, 70),
(2, 'Word stress', 2, 50),
(3, 'Early gets the girl', 2, 50),
(4, 'Sentence stress', 2, 86),
(5, 'Journey for two', 2, 50),
(6, 'You''re not alone', 2, 60),
(7, 'Welcome to the Euro 2016', 1, 60),
(8, 'Welcome to the Euro 2016 (2)', 1, 50),
(9, 'Intruduction to Euro 2016', 1, 70),
(10, 'Soccer 101', 1, 80),
(11, 'Road to the final', 1, 50),
(12, 'Knockout phase', 1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `PostId` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Content` text COLLATE utf8_unicode_ci NOT NULL,
  `Active` int(11) NOT NULL,
  `AuthorId` int(11) NOT NULL,
  `LastModifiedUserId` int(11) NOT NULL,
  `Modified` datetime NOT NULL,
  `BriefDescription` text COLLATE utf8_unicode_ci NOT NULL,
  `PostImagePath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`PostId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `TopicId` int(11) NOT NULL AUTO_INCREMENT,
  `TopicName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Points` int(11) NOT NULL,
  `NumOfLevel` int(11) NOT NULL,
  PRIMARY KEY (`TopicId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`TopicId`, `TopicName`, `Points`, `NumOfLevel`) VALUES
(1, 'Euro Cup 2016', 360, 6),
(2, 'Love', 370, 6);

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE IF NOT EXISTS `usergroups` (
  `UserGroupId` int(11) NOT NULL AUTO_INCREMENT,
  `UserGroupName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`UserGroupId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `usergroups`
--

INSERT INTO `usergroups` (`UserGroupId`, `UserGroupName`) VALUES
(1, 'ADMIN'),
(2, 'SUBADMIN'),
(3, 'STUDENT'),
(4, 'TEACHER');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Gender` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DateOfBirth` datetime DEFAULT NULL,
  `Phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AvatarPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserGroupId` int(11) NOT NULL,
  `Active` int(11) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `FullName`, `Username`, `Password`, `Gender`, `DateOfBirth`, `Phone`, `Email`, `Address`, `AvatarPath`, `UserGroupId`, `Active`, `CreatedDate`) VALUES
(1, 'Nguyễn Viết Danh', 'admin', '12345', 'Nam', '1994-09-02 00:00:00', '0123456789', 'danhnvuit@gmail.com', NULL, NULL, 1, 1, '2016-12-11 00:00:00'),
(2, 'Đỗ Hoàng Phương', 'subadmin', '12345', 'Nam', NULL, NULL, NULL, NULL, NULL, 2, 1, '2016-12-11 00:00:00'),
(3, 'Phan Văn Tiến', 'student', '12345', 'Nam', NULL, NULL, NULL, NULL, NULL, 3, 1, '2016-12-11 00:00:00'),
(4, 'Nguyễn Thị Thơ', 'teacher', '12345', '', NULL, NULL, NULL, NULL, NULL, 4, 1, '2016-12-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `userscoredetails`
--

CREATE TABLE IF NOT EXISTS `userscoredetails` (
  `UserScoreDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `LevelId` int(11) NOT NULL,
  `Scores` int(11) NOT NULL,
  `UserScoreId` int(11) NOT NULL,
  PRIMARY KEY (`UserScoreDetailId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `userscoredetails`
--

INSERT INTO `userscoredetails` (`UserScoreDetailId`, `LevelId`, `Scores`, `UserScoreId`) VALUES
(1, 1, 0, 1),
(2, 2, 1, 1),
(3, 3, 2, 1),
(4, 4, 3, 1),
(5, 5, 4, 1),
(6, 6, 5, 1),
(7, 7, 0, 1),
(8, 8, 0, 1),
(9, 9, 0, 1),
(10, 10, 0, 1),
(11, 11, 0, 1),
(12, 12, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userscores`
--

CREATE TABLE IF NOT EXISTS `userscores` (
  `UserScoreId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `Scores` int(11) NOT NULL,
  PRIMARY KEY (`UserScoreId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `userscores`
--

INSERT INTO `userscores` (`UserScoreId`, `UserId`, `Scores`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
