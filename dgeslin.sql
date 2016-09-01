-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2016 at 10:51 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dgeslin`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `ID` int(11) NOT NULL,
  `CREATION_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EDITION_TIMESTAMP` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TITLE` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(350) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BODY` text COLLATE utf8_unicode_ci,
  `CREATION_USER` int(11) NOT NULL,
  `EDITION_USER` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `ID` int(11) NOT NULL,
  `ARTICLE_ID` int(11) NOT NULL,
  `TEXT` text COLLATE utf8_unicode_ci NOT NULL,
  `CREATION_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATION_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `ID` int(11) NOT NULL,
  `TEXT` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `CREATION_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATION_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag_lists`
--

CREATE TABLE `tag_lists` (
  `ID` int(11) NOT NULL,
  `ARTICLE_ID` int(11) NOT NULL,
  `TAG_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `FIRST_NAME` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CREATION_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `USERNAME`, `PASSWORD`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `CREATION_TIMESTAMP`) VALUES
(1, 'dgeslin', '=(', 'Daniel', 'Geslin', 'danielisaacgeslin@gmail.com', '2016-08-31 15:14:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `CREATION_USER` (`CREATION_USER`),
  ADD KEY `EDITION_USER` (`EDITION_USER`),
  ADD KEY `CREATION_USER_2` (`CREATION_USER`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `ID_2` (`ID`),
  ADD KEY `CREATION_USER` (`CREATION_USER`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TEXT` (`TEXT`),
  ADD KEY `CREATION_USER` (`CREATION_USER`);

--
-- Indexes for table `tag_lists`
--
ALTER TABLE `tag_lists`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TAG_ID` (`TAG_ID`),
  ADD KEY `ARTICLE_ID` (`ARTICLE_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tag_lists`
--
ALTER TABLE `tag_lists`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
