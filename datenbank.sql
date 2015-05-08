-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 26. Dez 2014 um 01:35
-- Server Version: 5.6.20
-- PHP-Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `leviathalis`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `buildOrders`
--

CREATE TABLE IF NOT EXISTS `buildOrders` (
`id` int(10) unsigned NOT NULL,
  `villageId` int(11) NOT NULL,
  `building` text CHARACTER SET utf8 NOT NULL,
  `time` int(11) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `creationDate` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `creationDate`) VALUES
(90, 'marcel', 'asda@asd.de', '$2y$10$uT781VjAbONUIkbTQVtJCeiOubMtxFvTj51OCDFSTTIT/8exFhP4S', '2014-11-29 20:34:07');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `villages`
--

CREATE TABLE IF NOT EXISTS `villages` (
`id` int(10) unsigned NOT NULL,
  `user` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `points` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `holz` int(11) NOT NULL,
  `stein` int(11) NOT NULL,
  `eisen` int(11) NOT NULL,
  `main` int(11) NOT NULL DEFAULT '1',
  `barracks` int(11) NOT NULL,
  `smith` int(11) NOT NULL,
  `church` int(11) NOT NULL,
  `res1` int(11) NOT NULL,
  `res2` int(11) NOT NULL,
  `res3` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `farm` int(11) NOT NULL,
  `wall` int(11) NOT NULL,
  `phalanx` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=155 ;

--
-- Daten für Tabelle `villages`
--

INSERT INTO `villages` (`id`, `user`, `name`, `points`, `x`, `y`, `holz`, `stein`, `eisen`, `main`, `barracks`, `smith`, `church`, `res1`, `res2`, `res3`, `store`, `farm`, `wall`, `phalanx`) VALUES
(12, 90, 'marcels Dorf', 0, 0, 0, 115912643, 56334081, 33552191, 156, 52, 0, 0, 10, 6, 4, 0, 0, 0, 124223),
(14, 90, 'sir lanzelord', 0, -2, -2, 93139956, 0, 0, 145, 40, 0, 0, 78, 0, 0, 0, 0, 0, 0),
(15, 90, 'barbara', 0, 1, -2, 54784252, 0, 0, 145, 40, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(16, 0, 's Dorf', 0, 0, 0, 0, 0, 0, 145, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(67, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(68, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(69, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(70, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(72, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(73, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(74, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(75, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(76, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(77, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(78, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(81, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(83, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(84, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(85, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(86, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(87, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(89, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(91, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(92, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(93, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(94, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(95, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(99, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(100, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(101, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(102, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(103, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(104, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(105, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(106, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(107, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(108, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(109, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(110, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(111, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(112, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(114, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(115, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(116, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(117, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(118, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(119, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(120, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(121, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(122, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(124, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(125, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(126, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(127, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(128, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(129, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(130, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(131, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(132, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(133, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(134, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(135, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(136, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(137, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(138, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(139, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(140, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(141, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(142, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(143, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(144, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(145, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(146, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(147, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(148, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(149, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(150, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(151, 0, '', 0, 0, 0, 0, 0, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(152, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(153, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(154, 0, '', 0, 0, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buildOrders`
--
ALTER TABLE `buildOrders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `villages`
--
ALTER TABLE `villages`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buildOrders`
--
ALTER TABLE `buildOrders`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `villages`
--
ALTER TABLE `villages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=155;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
