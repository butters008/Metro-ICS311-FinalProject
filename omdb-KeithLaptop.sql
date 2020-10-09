-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2020 at 11:02 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `crew`
--

CREATE TABLE `crew` (
  `people_id` int(11) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `stage_name` varchar(40) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `picture` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crew`
--

INSERT INTO `crew` (`people_id`, `gender`, `stage_name`, `first_name`, `last_name`, `picture`) VALUES
(1, 'F', 'Nicoletta Braschi', 'Nicoletta', 'Braschi ', 'nicoletta.jpeg'),
(2, 'M', 'Roberto Benigni', 'Roberto', 'Benigni', NULL),
(3, 'M', 'Giorgio Cantarini', 'Giorgio', 'Cantarini', NULL),
(4, 'F', 'Marisa Paredes', 'Marisa', 'Paredes', NULL),
(5, 'M', NULL, 'Jacques', 'Offenbach', NULL),
(6, 'M', NULL, 'Nicola', 'Piovani', NULL),
(7, 'F', NULL, 'J', 'K', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `metadata`
--

CREATE TABLE `metadata` (
  `movie_id` int(11) NOT NULL,
  `language` varchar(60) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `plot` varchar(300) DEFAULT NULL,
  `genre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metadata`
--

INSERT INTO `metadata` (`movie_id`, `language`, `country`, `plot`, `genre`) VALUES
(1, 'English', 'Italy', 'When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.', 'drama'),
(2, 'English', 'USA', 'With his debts mounting and angry collectors closing in, a fast-talking New York City jeweler risks everything in hope of staying afloat and alive.', 'thriller'),
(3, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL),
(10, 'English', 'United States', 'A young farm boy, a old mystical hermit, and a duo of smugglers are caught up in a epic science fantasy adventure to save a princess and a galaxy from the evil empire.', 'Sci Fantasy');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `movie_name_native` varchar(255) NOT NULL,
  `movie_year` varchar(255) NOT NULL,
  `movie_name_english` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_name_native`, `movie_year`, `movie_name_english`) VALUES
(1, 'La vita è bella', '1997', 'Life is beautiful'),
(2, 'Uncut Gems', '2019', 'Uncut Gems'),
(3, 'cinema', '1908', 'movie_name_english3'),
(4, 'movie_name_native4', '1931', 'movie_name_english4'),
(5, 'movie_name_native5', '1911', 'movie_name_english5'),
(6, 'movie_name_native6', '1968', 'movie_name_english6'),
(7, 'movie_name_native7', '1918', 'movie_name_english7'),
(8, 'movie_name_native8', '1932', 'movie_name_english8'),
(9, 'movie_name_native9', '1965', 'movie_name_english9'),
(10, 'Star Wars Episode IV: A New Hope', '1977', 'Star Wars Episode IV: A New Hope'),
(11, 'movie_name_native11', '1940', 'movie_name_english11'),
(12, 'movie_name_native12', '2003', 'movie_name_english12'),
(13, 'movie_name_native13', '2002', 'movie_name_english13'),
(14, 'movie_name_native14', '2004', 'movie_name_english14'),
(15, 'movie_name_native15', '1918', 'movie_name_english15'),
(16, 'movie_name_native16', '1988', 'movie_name_english16'),
(17, 'movie_name_native17', '1953', 'movie_name_english17'),
(18, 'movie_name_native18', '2012', 'movie_name_english18'),
(19, 'movie_name_native19', '2002', 'movie_name_english19'),
(20, 'movie_name_native20', '1958', 'movie_name_english20'),
(21, 'movie_name_native21', '1924', 'movie_name_english21'),
(22, 'movie_name_native22', '1912', 'movie_name_english22'),
(23, 'movie_name_native23', '2009', 'movie_name_english23'),
(24, 'movie_name_native24', '1916', 'movie_name_english24'),
(25, 'movie_name_native25', '1961', 'movie_name_english25'),
(26, 'movie_name_native26', '1993', 'movie_name_english26'),
(27, 'movie_name_native27', '2005', 'movie_name_english27'),
(28, 'movie_name_native28', '1921', 'movie_name_english28'),
(29, 'movie_name_native29', '1939', 'movie_name_english29'),
(30, 'movie_name_native30', '1938', 'movie_name_english30'),
(31, 'movie_name_native31', '1967', 'movie_name_english31'),
(32, 'movie_name_native32', '1923', 'movie_name_english32'),
(33, 'movie_name_native33', '1918', 'movie_name_english33'),
(34, 'movie_name_native34', '2018', 'movie_name_english34'),
(35, 'movie_name_native35', '1933', 'movie_name_english35'),
(36, 'movie_name_native36', '1999', 'movie_name_english36'),
(37, 'movie_name_native37', '1970', 'movie_name_english37'),
(38, 'movie_name_native38', '1949', 'movie_name_english38'),
(39, 'movie_name_native39', '2004', 'movie_name_english39'),
(40, 'movie_name_native40', '1902', 'movie_name_english40'),
(41, 'movie_name_native41', '1956', 'movie_name_english41'),
(42, 'movie_name_native42', '1973', 'movie_name_english42'),
(43, 'movie_name_native43', '1966', 'movie_name_english43'),
(44, 'movie_name_native44', '1936', 'movie_name_english44'),
(45, 'movie_name_native45', '1931', 'movie_name_english45'),
(46, 'movie_name_native46', '2011', 'movie_name_english46'),
(47, 'movie_name_native47', '1985', 'movie_name_english47'),
(48, 'movie_name_native48', '2015', 'movie_name_english48'),
(49, 'movie_name_native49', '1982', 'movie_name_english49'),
(50, 'movie_name_native50', '1984', 'movie_name_english50'),
(51, 'movie_name_native51', '1914', 'movie_name_english51'),
(52, 'movie_name_native52', '1935', 'movie_name_english52'),
(53, 'movie_name_native53', '1954', 'movie_name_english53'),
(54, 'movie_name_native54', '1932', 'movie_name_english54'),
(55, 'movie_name_native55', '1994', 'movie_name_english55'),
(56, 'movie_name_native56', '2011', 'movie_name_english56'),
(57, 'movie_name_native57', '1952', 'movie_name_english57'),
(58, 'movie_name_native58', '2012', 'movie_name_english58'),
(59, 'movie_name_native59', '2013', 'movie_name_english59'),
(60, 'movie_name_native60', '1956', 'movie_name_english60'),
(61, 'movie_name_native61', '1908', 'movie_name_english61'),
(62, 'movie_name_native62', '1939', 'movie_name_english62'),
(63, 'movie_name_native63', '1915', 'movie_name_english63'),
(64, 'movie_name_native64', '1996', 'movie_name_english64'),
(65, 'movie_name_native65', '1935', 'movie_name_english65'),
(66, 'movie_name_native66', '1913', 'movie_name_english66'),
(67, 'movie_name_native67', '1943', 'movie_name_english67'),
(68, 'movie_name_native68', '1921', 'movie_name_english68'),
(69, 'movie_name_native69', '1924', 'movie_name_english69'),
(70, 'movie_name_native70', '1929', 'movie_name_english70'),
(71, 'movie_name_native71', '1989', 'movie_name_english71'),
(72, 'movie_name_native72', '1947', 'movie_name_english72'),
(73, 'movie_name_native73', '1923', 'movie_name_english73'),
(74, 'movie_name_native74', '1906', 'movie_name_english74'),
(75, 'movie_name_native75', '1926', 'movie_name_english75'),
(76, 'movie_name_native76', '1982', 'movie_name_english76'),
(77, 'movie_name_native77', '2007', 'movie_name_english77'),
(78, 'movie_name_native78', '1902', 'movie_name_english78'),
(79, 'movie_name_native79', '1924', 'movie_name_english79'),
(80, 'movie_name_native80', '1912', 'movie_name_english80'),
(81, 'movie_name_native81', '1995', 'movie_name_english81'),
(82, 'movie_name_native82', '1991', 'movie_name_english82'),
(83, 'movie_name_native83', '1959', 'movie_name_english83'),
(84, 'movie_name_native84', '1907', 'movie_name_english84'),
(85, 'movie_name_native85', '1945', 'movie_name_english85'),
(86, 'movie_name_native86', '1954', 'movie_name_english86'),
(87, 'movie_name_native87', '1955', 'movie_name_english87'),
(88, 'movie_name_native88', '1903', 'movie_name_english88'),
(89, 'movie_name_native89', '1985', 'movie_name_english89'),
(90, 'movie_name_native90', '1984', 'movie_name_english90'),
(91, 'movie_name_native91', '1933', 'movie_name_english91'),
(92, 'movie_name_native92', '1963', 'movie_name_english92'),
(93, 'movie_name_native93', '1982', 'movie_name_english93'),
(94, 'movie_name_native94', '1993', 'movie_name_english94'),
(95, 'movie_name_native95', '1956', 'movie_name_english95'),
(96, 'movie_name_native96', '1916', 'movie_name_english96'),
(97, 'movie_name_native97', '1916', 'movie_name_english97'),
(98, 'movie_name_native98', '1944', 'movie_name_english98'),
(99, 'movie_name_native99', '1985', 'movie_name_english99'),
(100, 'movie_name_native100', '1915', 'movie_name_english100'),
(101, 'movie_name_native101', '1908', 'movie_name_english101'),
(102, 'movie_name_native102', '1998', 'movie_name_english102'),
(103, 'movie_name_native103', '1909', 'movie_name_english103'),
(104, 'movie_name_native104', '1934', 'movie_name_english104'),
(105, 'movie_name_native105', '1986', 'movie_name_english105'),
(106, 'movie_name_native106', '1904', 'movie_name_english106'),
(107, 'movie_name_native107', '1922', 'movie_name_english107'),
(108, 'movie_name_native108', '1968', 'movie_name_english108'),
(109, 'movie_name_native109', '2006', 'movie_name_english109'),
(110, 'movie_name_native110', '1904', 'movie_name_english110'),
(111, 'movie_name_native111', '1984', 'movie_name_english111'),
(112, 'movie_name_native112', '1931', 'movie_name_english112'),
(113, 'movie_name_native113', '1938', 'movie_name_english113'),
(114, 'movie_name_native114', '1944', 'movie_name_english114'),
(115, 'movie_name_native115', '1965', 'movie_name_english115'),
(116, 'movie_name_native116', '1975', 'movie_name_english116'),
(117, 'movie_name_native117', '1908', 'movie_name_english117'),
(118, 'movie_name_native118', '1919', 'movie_name_english118'),
(119, 'movie_name_native119', '2000', 'movie_name_english119'),
(120, 'movie_name_native120', '1916', 'movie_name_english120'),
(121, 'movie_name_native121', '1934', 'movie_name_english121'),
(122, 'movie_name_native122', '1937', 'movie_name_english122'),
(123, 'movie_name_native123', '1937', 'movie_name_english123'),
(124, 'movie_name_native124', '1936', 'movie_name_english124'),
(125, 'movie_name_native125', '1932', 'movie_name_english125'),
(126, 'movie_name_native126', '1937', 'movie_name_english126'),
(127, 'movie_name_native127', '1920', 'movie_name_english127'),
(128, 'movie_name_native128', '1921', 'movie_name_english128'),
(129, 'movie_name_native129', '1906', 'movie_name_english129'),
(130, 'movie_name_native130', '1994', 'movie_name_english130'),
(131, 'movie_name_native131', '2007', 'movie_name_english131'),
(132, 'movie_name_native132', '1987', 'movie_name_english132'),
(133, 'movie_name_native133', '1938', 'movie_name_english133'),
(134, 'movie_name_native134', '1905', 'movie_name_english134'),
(135, 'movie_name_native135', '1990', 'movie_name_english135'),
(136, 'movie_name_native136', '2003', 'movie_name_english136'),
(137, 'movie_name_native137', '1907', 'movie_name_english137'),
(138, 'movie_name_native138', '2020', 'movie_name_english138'),
(139, 'movie_name_native139', '2004', 'movie_name_english139'),
(140, 'movie_name_native140', '1931', 'movie_name_english140'),
(141, 'movie_name_native141', '1900', 'movie_name_english141'),
(142, 'movie_name_native142', '1977', 'movie_name_english142'),
(143, 'movie_name_native143', '1961', 'movie_name_english143'),
(144, 'movie_name_native144', '1996', 'movie_name_english144'),
(145, 'movie_name_native145', '1918', 'movie_name_english145'),
(146, 'movie_name_native146', '1917', 'movie_name_english146'),
(147, 'movie_name_native147', '1988', 'movie_name_english147'),
(148, 'movie_name_native148', '1987', 'movie_name_english148'),
(149, 'movie_name_native149', '1913', 'movie_name_english149'),
(150, 'movie_name_native150', '2014', 'movie_name_english150'),
(151, 'movie_name_native151', '1912', 'movie_name_english151'),
(152, 'movie_name_native152', '2002', 'movie_name_english152'),
(153, 'movie_name_native153', '1907', 'movie_name_english153'),
(154, 'movie_name_native154', '2011', 'movie_name_english154'),
(155, 'movie_name_native155', '2008', 'movie_name_english155'),
(156, 'movie_name_native156', '2015', 'movie_name_english156'),
(157, 'movie_name_native157', '1989', 'movie_name_english157'),
(158, 'movie_name_native158', '2018', 'movie_name_english158'),
(159, 'movie_name_native159', '1989', 'movie_name_english159'),
(160, 'movie_name_native160', '1925', 'movie_name_english160'),
(161, 'movie_name_native161', '1958', 'movie_name_english161'),
(162, 'movie_name_native162', '1960', 'movie_name_english162'),
(163, 'movie_name_native163', '1902', 'movie_name_english163'),
(164, 'movie_name_native164', '1974', 'movie_name_english164'),
(165, 'movie_name_native165', '2005', 'movie_name_english165'),
(166, 'movie_name_native166', '1931', 'movie_name_english166'),
(167, 'movie_name_native167', '2018', 'movie_name_english167'),
(168, 'movie_name_native168', '1933', 'movie_name_english168'),
(169, 'movie_name_native169', '1936', 'movie_name_english169'),
(170, 'movie_name_native170', '1985', 'movie_name_english170'),
(171, 'movie_name_native171', '1902', 'movie_name_english171'),
(172, 'movie_name_native172', '1946', 'movie_name_english172'),
(173, 'movie_name_native173', '1969', 'movie_name_english173'),
(174, 'movie_name_native174', '1954', 'movie_name_english174'),
(175, 'movie_name_native175', '1988', 'movie_name_english175'),
(176, 'movie_name_native176', '1994', 'movie_name_english176'),
(177, 'movie_name_native177', '1953', 'movie_name_english177'),
(178, 'movie_name_native178', '1937', 'movie_name_english178'),
(179, 'movie_name_native179', '1993', 'movie_name_english179'),
(180, 'movie_name_native180', '1989', 'movie_name_english180'),
(181, 'movie_name_native181', '2009', 'movie_name_english181'),
(182, 'movie_name_native182', '2008', 'movie_name_english182'),
(183, 'movie_name_native183', '1986', 'movie_name_english183'),
(184, 'movie_name_native184', '1951', 'movie_name_english184'),
(185, 'movie_name_native185', '1965', 'movie_name_english185'),
(186, 'movie_name_native186', '1921', 'movie_name_english186'),
(187, 'movie_name_native187', '1943', 'movie_name_english187'),
(188, 'movie_name_native188', '2013', 'movie_name_english188'),
(189, 'movie_name_native189', '1939', 'movie_name_english189'),
(190, 'movie_name_native190', '1969', 'movie_name_english190'),
(191, 'movie_name_native191', '1912', 'movie_name_english191'),
(192, 'movie_name_native192', '1931', 'movie_name_english192'),
(193, 'movie_name_native193', '1976', 'movie_name_english193'),
(194, 'movie_name_native194', '2012', 'movie_name_english194'),
(195, 'movie_name_native195', '1954', 'movie_name_english195'),
(196, 'movie_name_native196', '1948', 'movie_name_english196'),
(197, 'movie_name_native197', '1962', 'movie_name_english197'),
(198, 'movie_name_native198', '1925', 'movie_name_english198'),
(199, 'movie_name_native199', '1998', 'movie_name_english199'),
(200, 'movie_name_native200', '1942', 'movie_name_english200'),
(201, 'movie_name_native201', '1960', 'movie_name_english201'),
(202, 'movie_name_native202', '1988', 'movie_name_english202'),
(203, 'movie_name_native203', '1948', 'movie_name_english203'),
(204, 'movie_name_native204', '1989', 'movie_name_english204'),
(205, 'movie_name_native205', '1938', 'movie_name_english205'),
(206, 'movie_name_native206', '1942', 'movie_name_english206'),
(207, 'movie_name_native207', '1985', 'movie_name_english207'),
(208, 'movie_name_native208', '1915', 'movie_name_english208'),
(209, 'movie_name_native209', '1934', 'movie_name_english209'),
(210, 'movie_name_native210', '1904', 'movie_name_english210'),
(211, 'movie_name_native211', '1929', 'movie_name_english211'),
(212, 'movie_name_native212', '1936', 'movie_name_english212'),
(213, 'movie_name_native213', '1976', 'movie_name_english213'),
(214, 'movie_name_native214', '1903', 'movie_name_english214'),
(215, 'movie_name_native215', '1975', 'movie_name_english215'),
(216, 'movie_name_native216', '1913', 'movie_name_english216'),
(217, 'movie_name_native217', '1929', 'movie_name_english217'),
(218, 'movie_name_native218', '2014', 'movie_name_english218'),
(219, 'movie_name_native219', '2019', 'movie_name_english219'),
(220, 'movie_name_native220', '1971', 'movie_name_english220'),
(221, 'movie_name_native221', '1911', 'movie_name_english221'),
(222, 'movie_name_native222', '1986', 'movie_name_english222'),
(223, 'movie_name_native223', '1971', 'movie_name_english223'),
(224, 'movie_name_native224', '1946', 'movie_name_english224'),
(225, 'movie_name_native225', '1941', 'movie_name_english225'),
(226, 'movie_name_native226', '1977', 'movie_name_english226'),
(227, 'movie_name_native227', '1975', 'movie_name_english227'),
(228, 'movie_name_native228', '1924', 'movie_name_english228'),
(229, 'movie_name_native229', '2001', 'movie_name_english229'),
(230, 'movie_name_native230', '1915', 'movie_name_english230'),
(231, 'movie_name_native231', '1901', 'movie_name_english231'),
(232, 'movie_name_native232', '1921', 'movie_name_english232'),
(233, 'movie_name_native233', '1958', 'movie_name_english233'),
(234, 'movie_name_native234', '1950', 'movie_name_english234'),
(235, 'movie_name_native235', '1925', 'movie_name_english235'),
(236, 'movie_name_native236', '1943', 'movie_name_english236'),
(237, 'movie_name_native237', '1958', 'movie_name_english237'),
(238, 'movie_name_native238', '1934', 'movie_name_english238'),
(239, 'movie_name_native239', '1978', 'movie_name_english239'),
(240, 'movie_name_native240', '1990', 'movie_name_english240'),
(241, 'movie_name_native241', '1967', 'movie_name_english241'),
(242, 'movie_name_native242', '1978', 'movie_name_english242'),
(243, 'movie_name_native243', '1909', 'movie_name_english243'),
(244, 'movie_name_native244', '1948', 'movie_name_english244'),
(245, 'movie_name_native245', '1926', 'movie_name_english245'),
(246, 'movie_name_native246', '1998', 'movie_name_english246'),
(247, 'movie_name_native247', '1974', 'movie_name_english247'),
(248, 'movie_name_native248', '1973', 'movie_name_english248'),
(249, 'movie_name_native249', '1959', 'movie_name_english249'),
(250, 'movie_name_native250', '1998', 'movie_name_english250'),
(251, 'movie_name_native251', '1952', 'movie_name_english251'),
(252, 'movie_name_native252', '1962', 'movie_name_english252'),
(253, 'movie_name_native253', '1923', 'movie_name_english253'),
(254, 'movie_name_native254', '1918', 'movie_name_english254'),
(255, 'movie_name_native255', '1946', 'movie_name_english255'),
(256, 'movie_name_native256', '2012', 'movie_name_english256'),
(257, 'movie_name_native257', '1904', 'movie_name_english257'),
(258, 'movie_name_native258', '2007', 'movie_name_english258'),
(259, 'movie_name_native259', '1915', 'movie_name_english259'),
(260, 'movie_name_native260', '1923', 'movie_name_english260'),
(261, 'movie_name_native261', '1964', 'movie_name_english261'),
(262, 'movie_name_native262', '2002', 'movie_name_english262'),
(263, 'movie_name_native263', '1948', 'movie_name_english263'),
(264, 'movie_name_native264', '1994', 'movie_name_english264'),
(265, 'movie_name_native265', '2020', 'movie_name_english265'),
(266, 'movie_name_native266', '1984', 'movie_name_english266'),
(267, 'movie_name_native267', '1967', 'movie_name_english267'),
(268, 'movie_name_native268', '1907', 'movie_name_english268'),
(269, 'movie_name_native269', '1987', 'movie_name_english269'),
(270, 'movie_name_native270', '1970', 'movie_name_english270'),
(271, 'movie_name_native271', '1910', 'movie_name_english271'),
(272, 'movie_name_native272', '2013', 'movie_name_english272'),
(273, 'movie_name_native273', '1954', 'movie_name_english273'),
(274, 'movie_name_native274', '1969', 'movie_name_english274'),
(275, 'movie_name_native275', '2007', 'movie_name_english275'),
(276, 'movie_name_native276', '1910', 'movie_name_english276'),
(277, 'movie_name_native277', '1910', 'movie_name_english277'),
(278, 'movie_name_native278', '1948', 'movie_name_english278'),
(279, 'movie_name_native279', '1947', 'movie_name_english279'),
(280, 'movie_name_native280', '1979', 'movie_name_english280'),
(281, 'movie_name_native281', '1912', 'movie_name_english281'),
(282, 'movie_name_native282', '1918', 'movie_name_english282'),
(283, 'movie_name_native283', '1925', 'movie_name_english283'),
(284, 'movie_name_native284', '1920', 'movie_name_english284'),
(285, 'movie_name_native285', '1916', 'movie_name_english285'),
(286, 'movie_name_native286', '1954', 'movie_name_english286'),
(287, 'movie_name_native287', '1931', 'movie_name_english287'),
(288, 'movie_name_native288', '1910', 'movie_name_english288'),
(289, 'movie_name_native289', '1907', 'movie_name_english289'),
(290, 'movie_name_native290', '1936', 'movie_name_english290'),
(291, 'movie_name_native291', '2012', 'movie_name_english291'),
(292, 'movie_name_native292', '1964', 'movie_name_english292'),
(293, 'movie_name_native293', '1921', 'movie_name_english293'),
(294, 'movie_name_native294', '1955', 'movie_name_english294'),
(295, 'movie_name_native295', '1908', 'movie_name_english295'),
(296, 'movie_name_native296', '1927', 'movie_name_english296'),
(297, 'movie_name_native297', '1980', 'movie_name_english297'),
(298, 'movie_name_native298', '1941', 'movie_name_english298'),
(299, 'movie_name_native299', '2000', 'movie_name_english299'),
(300, 'movie_name_native300', '2008', 'movie_name_english300'),
(301, 'movie_name_native301', '1959', 'movie_name_english301'),
(302, 'movie_name_native302', '1904', 'movie_name_english302'),
(303, 'movie_name_native303', '1949', 'movie_name_english303'),
(304, 'movie_name_native304', '1922', 'movie_name_english304'),
(305, 'movie_name_native305', '1915', 'movie_name_english305'),
(306, 'movie_name_native306', '2014', 'movie_name_english306'),
(307, 'movie_name_native307', '1953', 'movie_name_english307'),
(308, 'movie_name_native308', '1953', 'movie_name_english308'),
(309, 'movie_name_native309', '1919', 'movie_name_english309'),
(310, 'movie_name_native310', '1920', 'movie_name_english310'),
(311, 'movie_name_native311', '1957', 'movie_name_english311'),
(312, 'movie_name_native312', '1990', 'movie_name_english312'),
(313, 'movie_name_native313', '2020', 'movie_name_english313'),
(314, 'movie_name_native314', '1969', 'movie_name_english314'),
(315, 'movie_name_native315', '1955', 'movie_name_english315'),
(316, 'movie_name_native316', '1979', 'movie_name_english316'),
(317, 'movie_name_native317', '1940', 'movie_name_english317'),
(318, 'movie_name_native318', '1982', 'movie_name_english318'),
(319, 'movie_name_native319', '1920', 'movie_name_english319'),
(320, 'movie_name_native320', '1946', 'movie_name_english320'),
(321, 'movie_name_native321', '1982', 'movie_name_english321'),
(322, 'movie_name_native322', '1942', 'movie_name_english322'),
(323, 'movie_name_native323', '2010', 'movie_name_english323'),
(324, 'movie_name_native324', '1944', 'movie_name_english324'),
(325, 'movie_name_native325', '1932', 'movie_name_english325'),
(326, 'movie_name_native326', '1951', 'movie_name_english326'),
(327, 'movie_name_native327', '1978', 'movie_name_english327'),
(328, 'movie_name_native328', '1951', 'movie_name_english328'),
(329, 'movie_name_native329', '1991', 'movie_name_english329'),
(330, 'movie_name_native330', '1964', 'movie_name_english330'),
(331, 'movie_name_native331', '1975', 'movie_name_english331'),
(332, 'movie_name_native332', '1959', 'movie_name_english332'),
(333, 'movie_name_native333', '1940', 'movie_name_english333'),
(334, 'movie_name_native334', '2001', 'movie_name_english334'),
(335, 'movie_name_native335', '1985', 'movie_name_english335'),
(336, 'movie_name_native336', '1923', 'movie_name_english336'),
(337, 'movie_name_native337', '1983', 'movie_name_english337'),
(338, 'movie_name_native338', '2010', 'movie_name_english338'),
(339, 'movie_name_native339', '1981', 'movie_name_english339'),
(340, 'movie_name_native340', '1904', 'movie_name_english340'),
(341, 'movie_name_native341', '1939', 'movie_name_english341'),
(342, 'movie_name_native342', '2014', 'movie_name_english342'),
(343, 'movie_name_native343', '1913', 'movie_name_english343'),
(344, 'movie_name_native344', '1963', 'movie_name_english344'),
(345, 'movie_name_native345', '1901', 'movie_name_english345'),
(346, 'movie_name_native346', '1981', 'movie_name_english346'),
(347, 'movie_name_native347', '1941', 'movie_name_english347'),
(348, 'movie_name_native348', '1915', 'movie_name_english348'),
(349, 'movie_name_native349', '1963', 'movie_name_english349'),
(350, 'movie_name_native350', '1907', 'movie_name_english350'),
(351, 'movie_name_native351', '1920', 'movie_name_english351'),
(352, 'movie_name_native352', '1919', 'movie_name_english352'),
(353, 'movie_name_native353', '1922', 'movie_name_english353'),
(354, 'movie_name_native354', '1915', 'movie_name_english354'),
(355, 'movie_name_native355', '1951', 'movie_name_english355'),
(356, 'movie_name_native356', '1915', 'movie_name_english356'),
(357, 'movie_name_native357', '1975', 'movie_name_english357'),
(358, 'movie_name_native358', '1962', 'movie_name_english358'),
(359, 'movie_name_native359', '1925', 'movie_name_english359'),
(360, 'movie_name_native360', '1925', 'movie_name_english360'),
(361, 'movie_name_native361', '1989', 'movie_name_english361'),
(362, 'movie_name_native362', '1966', 'movie_name_english362'),
(363, 'movie_name_native363', '1999', 'movie_name_english363'),
(364, 'movie_name_native364', '1967', 'movie_name_english364'),
(365, 'movie_name_native365', '2014', 'movie_name_english365'),
(366, 'movie_name_native366', '1994', 'movie_name_english366'),
(367, 'movie_name_native367', '1937', 'movie_name_english367'),
(368, 'movie_name_native368', '1921', 'movie_name_english368'),
(369, 'movie_name_native369', '1952', 'movie_name_english369'),
(370, 'movie_name_native370', '2004', 'movie_name_english370'),
(371, 'movie_name_native371', '1994', 'movie_name_english371'),
(372, 'movie_name_native372', '1907', 'movie_name_english372'),
(373, 'movie_name_native373', '1962', 'movie_name_english373'),
(374, 'movie_name_native374', '1914', 'movie_name_english374'),
(375, 'movie_name_native375', '1939', 'movie_name_english375'),
(376, 'movie_name_native376', '1933', 'movie_name_english376'),
(377, 'movie_name_native377', '1917', 'movie_name_english377'),
(378, 'movie_name_native378', '1919', 'movie_name_english378'),
(379, 'movie_name_native379', '2010', 'movie_name_english379'),
(380, 'movie_name_native380', '1960', 'movie_name_english380'),
(381, 'movie_name_native381', '1982', 'movie_name_english381'),
(382, 'movie_name_native382', '1921', 'movie_name_english382'),
(383, 'movie_name_native383', '1976', 'movie_name_english383'),
(384, 'movie_name_native384', '2018', 'movie_name_english384'),
(385, 'movie_name_native385', '1928', 'movie_name_english385'),
(386, 'movie_name_native386', '1904', 'movie_name_english386'),
(387, 'movie_name_native387', '1940', 'movie_name_english387'),
(388, 'movie_name_native388', '1913', 'movie_name_english388'),
(389, 'movie_name_native389', '2014', 'movie_name_english389'),
(390, 'movie_name_native390', '2003', 'movie_name_english390'),
(391, 'movie_name_native391', '1960', 'movie_name_english391'),
(392, 'movie_name_native392', '1958', 'movie_name_english392'),
(393, 'movie_name_native393', '1992', 'movie_name_english393'),
(394, 'movie_name_native394', '1936', 'movie_name_english394'),
(395, 'movie_name_native395', '1941', 'movie_name_english395'),
(396, 'movie_name_native396', '2019', 'movie_name_english396'),
(397, 'movie_name_native397', '1945', 'movie_name_english397'),
(398, 'movie_name_native398', '1966', 'movie_name_english398'),
(399, 'movie_name_native399', '2020', 'movie_name_english399'),
(400, 'movie_name_native400', '1903', 'movie_name_english400'),
(401, 'movie_name_native401', '1988', 'movie_name_english401'),
(402, 'movie_name_native402', '1929', 'movie_name_english402'),
(403, 'movie_name_native403', '1970', 'movie_name_english403'),
(404, 'movie_name_native404', '1923', 'movie_name_english404'),
(405, 'movie_name_native405', '1924', 'movie_name_english405'),
(406, 'movie_name_native406', '1996', 'movie_name_english406'),
(407, 'movie_name_native407', '1958', 'movie_name_english407'),
(408, 'movie_name_native408', '1959', 'movie_name_english408'),
(409, 'movie_name_native409', '1953', 'movie_name_english409'),
(410, 'movie_name_native410', '1907', 'movie_name_english410'),
(411, 'movie_name_native411', '1982', 'movie_name_english411'),
(412, 'movie_name_native412', '1988', 'movie_name_english412'),
(413, 'movie_name_native413', '1936', 'movie_name_english413'),
(414, 'movie_name_native414', '1917', 'movie_name_english414'),
(415, 'movie_name_native415', '1950', 'movie_name_english415'),
(416, 'movie_name_native416', '1987', 'movie_name_english416'),
(417, 'movie_name_native417', '1954', 'movie_name_english417'),
(418, 'movie_name_native418', '1938', 'movie_name_english418'),
(419, 'movie_name_native419', '1980', 'movie_name_english419'),
(420, 'movie_name_native420', '1997', 'movie_name_english420'),
(421, 'movie_name_native421', '1916', 'movie_name_english421'),
(422, 'movie_name_native422', '1909', 'movie_name_english422'),
(423, 'movie_name_native423', '1989', 'movie_name_english423'),
(424, 'movie_name_native424', '1942', 'movie_name_english424'),
(425, 'movie_name_native425', '1938', 'movie_name_english425'),
(426, 'movie_name_native426', '2008', 'movie_name_english426'),
(427, 'movie_name_native427', '1936', 'movie_name_english427'),
(428, 'movie_name_native428', '1940', 'movie_name_english428'),
(429, 'movie_name_native429', '1905', 'movie_name_english429'),
(430, 'movie_name_native430', '1933', 'movie_name_english430'),
(431, 'movie_name_native431', '1941', 'movie_name_english431'),
(432, 'movie_name_native432', '1922', 'movie_name_english432'),
(433, 'movie_name_native433', '1995', 'movie_name_english433'),
(434, 'movie_name_native434', '1979', 'movie_name_english434'),
(435, 'movie_name_native435', '1975', 'movie_name_english435'),
(436, 'movie_name_native436', '1997', 'movie_name_english436'),
(437, 'movie_name_native437', '1978', 'movie_name_english437'),
(438, 'movie_name_native438', '1957', 'movie_name_english438'),
(439, 'movie_name_native439', '1913', 'movie_name_english439'),
(440, 'movie_name_native440', '1941', 'movie_name_english440'),
(441, 'movie_name_native441', '1988', 'movie_name_english441'),
(442, 'movie_name_native442', '2015', 'movie_name_english442'),
(443, 'movie_name_native443', '1902', 'movie_name_english443'),
(444, 'movie_name_native444', '1991', 'movie_name_english444'),
(445, 'movie_name_native445', '1941', 'movie_name_english445'),
(446, 'movie_name_native446', '1948', 'movie_name_english446'),
(447, 'movie_name_native447', '1942', 'movie_name_english447'),
(448, 'movie_name_native448', '2014', 'movie_name_english448'),
(449, 'movie_name_native449', '2016', 'movie_name_english449'),
(450, 'movie_name_native450', '1939', 'movie_name_english450'),
(451, 'movie_name_native451', '1969', 'movie_name_english451'),
(452, 'movie_name_native452', '1969', 'movie_name_english452'),
(453, 'movie_name_native453', '1942', 'movie_name_english453'),
(454, 'movie_name_native454', '1988', 'movie_name_english454'),
(455, 'movie_name_native455', '2019', 'movie_name_english455'),
(456, 'movie_name_native456', '1968', 'movie_name_english456'),
(457, 'movie_name_native457', '1992', 'movie_name_english457'),
(458, 'movie_name_native458', '1906', 'movie_name_english458'),
(459, 'movie_name_native459', '1958', 'movie_name_english459'),
(460, 'movie_name_native460', '2009', 'movie_name_english460'),
(461, 'movie_name_native461', '1946', 'movie_name_english461'),
(462, 'movie_name_native462', '1982', 'movie_name_english462'),
(463, 'movie_name_native463', '2001', 'movie_name_english463'),
(464, 'movie_name_native464', '1956', 'movie_name_english464'),
(465, 'movie_name_native465', '1951', 'movie_name_english465'),
(466, 'movie_name_native466', '1946', 'movie_name_english466'),
(467, 'movie_name_native467', '1919', 'movie_name_english467'),
(468, 'movie_name_native468', '1983', 'movie_name_english468'),
(469, 'movie_name_native469', '2012', 'movie_name_english469'),
(470, 'movie_name_native470', '1911', 'movie_name_english470'),
(471, 'movie_name_native471', '1938', 'movie_name_english471'),
(472, 'movie_name_native472', '2006', 'movie_name_english472'),
(473, 'movie_name_native473', '1963', 'movie_name_english473'),
(474, 'movie_name_native474', '1927', 'movie_name_english474'),
(475, 'movie_name_native475', '1920', 'movie_name_english475'),
(476, 'movie_name_native476', '1993', 'movie_name_english476'),
(477, 'movie_name_native477', '1998', 'movie_name_english477'),
(478, 'movie_name_native478', '1900', 'movie_name_english478'),
(479, 'movie_name_native479', '1911', 'movie_name_english479'),
(480, 'movie_name_native480', '1958', 'movie_name_english480'),
(481, 'movie_name_native481', '1998', 'movie_name_english481'),
(482, 'movie_name_native482', '1991', 'movie_name_english482'),
(483, 'movie_name_native483', '2003', 'movie_name_english483'),
(484, 'movie_name_native484', '1937', 'movie_name_english484'),
(485, 'movie_name_native485', '1945', 'movie_name_english485'),
(486, 'movie_name_native486', '1957', 'movie_name_english486'),
(487, 'movie_name_native487', '2020', 'movie_name_english487'),
(488, 'movie_name_native488', '1923', 'movie_name_english488'),
(489, 'movie_name_native489', '1931', 'movie_name_english489'),
(490, 'movie_name_native490', '1991', 'movie_name_english490'),
(491, 'movie_name_native491', '2007', 'movie_name_english491'),
(492, 'movie_name_native492', '1974', 'movie_name_english492'),
(493, 'movie_name_native493', '1924', 'movie_name_english493'),
(494, 'movie_name_native494', '1940', 'movie_name_english494'),
(495, 'movie_name_native495', '1983', 'movie_name_english495'),
(496, 'movie_name_native496', '1983', 'movie_name_english496'),
(497, 'movie_name_native497', '2014', 'movie_name_english497'),
(498, 'movie_name_native498', '1986', 'movie_name_english498'),
(499, 'movie_name_native499', '1960', 'movie_name_english499'),
(500, 'movie_name_native500', '1986', 'movie_name_english500'),
(501, 'movie_name_native501', '1910', 'movie_name_english501'),
(502, 'movie_name_native502', '1939', 'movie_name_english502'),
(503, 'movie_name_native503', '1907', 'movie_name_english503'),
(504, 'movie_name_native504', '1997', 'movie_name_english504'),
(505, 'movie_name_native505', '1980', 'movie_name_english505'),
(506, 'movie_name_native506', '1966', 'movie_name_english506'),
(507, 'movie_name_native507', '1964', 'movie_name_english507'),
(508, 'movie_name_native508', '1981', 'movie_name_english508'),
(509, 'movie_name_native509', '1962', 'movie_name_english509'),
(510, 'movie_name_native510', '1995', 'movie_name_english510'),
(511, 'movie_name_native511', '1955', 'movie_name_english511'),
(512, 'movie_name_native512', '1917', 'movie_name_english512'),
(513, 'movie_name_native513', '1991', 'movie_name_english513'),
(514, 'movie_name_native514', '1933', 'movie_name_english514'),
(515, 'movie_name_native515', '1965', 'movie_name_english515'),
(516, 'movie_name_native516', '1906', 'movie_name_english516'),
(517, 'movie_name_native517', '2003', 'movie_name_english517'),
(518, 'movie_name_native518', '1962', 'movie_name_english518'),
(519, 'movie_name_native519', '1997', 'movie_name_english519'),
(520, 'movie_name_native520', '1912', 'movie_name_english520'),
(521, 'movie_name_native521', '1908', 'movie_name_english521'),
(522, 'movie_name_native522', '1904', 'movie_name_english522'),
(523, 'movie_name_native523', '1967', 'movie_name_english523'),
(524, 'movie_name_native524', '1917', 'movie_name_english524'),
(525, 'movie_name_native525', '1935', 'movie_name_english525'),
(526, 'movie_name_native526', '1939', 'movie_name_english526'),
(527, 'movie_name_native527', '1958', 'movie_name_english527'),
(528, 'movie_name_native528', '1959', 'movie_name_english528'),
(529, 'movie_name_native529', '1993', 'movie_name_english529'),
(530, 'movie_name_native530', '2019', 'movie_name_english530'),
(531, 'movie_name_native531', '1946', 'movie_name_english531'),
(532, 'movie_name_native532', '1943', 'movie_name_english532'),
(533, 'movie_name_native533', '1988', 'movie_name_english533'),
(534, 'movie_name_native534', '1900', 'movie_name_english534'),
(535, 'movie_name_native535', '1987', 'movie_name_english535'),
(536, 'movie_name_native536', '1975', 'movie_name_english536'),
(537, 'movie_name_native537', '2001', 'movie_name_english537'),
(538, 'movie_name_native538', '2006', 'movie_name_english538'),
(539, 'movie_name_native539', '1996', 'movie_name_english539'),
(540, 'movie_name_native540', '1997', 'movie_name_english540'),
(541, 'movie_name_native541', '1970', 'movie_name_english541'),
(542, 'movie_name_native542', '1934', 'movie_name_english542'),
(543, 'movie_name_native543', '1927', 'movie_name_english543'),
(544, 'movie_name_native544', '1966', 'movie_name_english544'),
(545, 'movie_name_native545', '1917', 'movie_name_english545'),
(546, 'movie_name_native546', '1915', 'movie_name_english546'),
(547, 'movie_name_native547', '1911', 'movie_name_english547'),
(548, 'movie_name_native548', '2016', 'movie_name_english548'),
(549, 'movie_name_native549', '1958', 'movie_name_english549'),
(550, 'movie_name_native550', '1944', 'movie_name_english550'),
(551, 'movie_name_native551', '2012', 'movie_name_english551'),
(552, 'movie_name_native552', '1931', 'movie_name_english552'),
(553, 'movie_name_native553', '1921', 'movie_name_english553'),
(554, 'movie_name_native554', '1908', 'movie_name_english554'),
(555, 'movie_name_native555', '1907', 'movie_name_english555'),
(556, 'movie_name_native556', '1971', 'movie_name_english556'),
(557, 'movie_name_native557', '1957', 'movie_name_english557'),
(558, 'movie_name_native558', '1930', 'movie_name_english558'),
(559, 'movie_name_native559', '1926', 'movie_name_english559'),
(560, 'movie_name_native560', '1979', 'movie_name_english560'),
(561, 'movie_name_native561', '1983', 'movie_name_english561'),
(562, 'movie_name_native562', '1975', 'movie_name_english562'),
(563, 'movie_name_native563', '1986', 'movie_name_english563'),
(564, 'movie_name_native564', '1982', 'movie_name_english564'),
(565, 'movie_name_native565', '2013', 'movie_name_english565'),
(566, 'movie_name_native566', '1974', 'movie_name_english566'),
(567, 'movie_name_native567', '1947', 'movie_name_english567'),
(568, 'movie_name_native568', '1936', 'movie_name_english568'),
(569, 'movie_name_native569', '1922', 'movie_name_english569'),
(570, 'movie_name_native570', '1917', 'movie_name_english570'),
(571, 'movie_name_native571', '1919', 'movie_name_english571'),
(572, 'movie_name_native572', '2014', 'movie_name_english572'),
(573, 'movie_name_native573', '1904', 'movie_name_english573'),
(574, 'movie_name_native574', '1975', 'movie_name_english574'),
(575, 'movie_name_native575', '1991', 'movie_name_english575'),
(576, 'movie_name_native576', '1919', 'movie_name_english576'),
(577, 'movie_name_native577', '1904', 'movie_name_english577'),
(578, 'movie_name_native578', '1955', 'movie_name_english578'),
(579, 'movie_name_native579', '2015', 'movie_name_english579'),
(580, 'movie_name_native580', '1919', 'movie_name_english580'),
(581, 'movie_name_native581', '1967', 'movie_name_english581'),
(582, 'movie_name_native582', '1936', 'movie_name_english582'),
(583, 'movie_name_native583', '2004', 'movie_name_english583'),
(584, 'movie_name_native584', '1973', 'movie_name_english584'),
(585, 'movie_name_native585', '1934', 'movie_name_english585'),
(586, 'movie_name_native586', '1949', 'movie_name_english586'),
(587, 'movie_name_native587', '1966', 'movie_name_english587'),
(588, 'movie_name_native588', '1933', 'movie_name_english588'),
(589, 'movie_name_native589', '1933', 'movie_name_english589'),
(590, 'movie_name_native590', '1952', 'movie_name_english590'),
(591, 'movie_name_native591', '1996', 'movie_name_english591'),
(592, 'movie_name_native592', '2000', 'movie_name_english592'),
(593, 'movie_name_native593', '1905', 'movie_name_english593'),
(594, 'movie_name_native594', '1969', 'movie_name_english594'),
(595, 'movie_name_native595', '1939', 'movie_name_english595'),
(596, 'movie_name_native596', '1988', 'movie_name_english596'),
(597, 'movie_name_native597', '1920', 'movie_name_english597'),
(598, 'movie_name_native598', '2013', 'movie_name_english598'),
(599, 'movie_name_native599', '1966', 'movie_name_english599'),
(600, 'movie_name_native600', '1950', 'movie_name_english600'),
(601, 'movie_name_native601', '1982', 'movie_name_english601'),
(602, 'movie_name_native602', '1941', 'movie_name_english602'),
(603, 'movie_name_native603', '1920', 'movie_name_english603'),
(604, 'movie_name_native604', '1918', 'movie_name_english604'),
(605, 'movie_name_native605', '2012', 'movie_name_english605'),
(606, 'movie_name_native606', '2020', 'movie_name_english606'),
(607, 'movie_name_native607', '1993', 'movie_name_english607'),
(608, 'movie_name_native608', '1907', 'movie_name_english608'),
(609, 'movie_name_native609', '1993', 'movie_name_english609'),
(610, 'movie_name_native610', '1913', 'movie_name_english610'),
(611, 'movie_name_native611', '1971', 'movie_name_english611'),
(612, 'movie_name_native612', '1940', 'movie_name_english612'),
(613, 'movie_name_native613', '1962', 'movie_name_english613'),
(614, 'movie_name_native614', '1965', 'movie_name_english614'),
(615, 'movie_name_native615', '1907', 'movie_name_english615'),
(616, 'movie_name_native616', '1967', 'movie_name_english616'),
(617, 'movie_name_native617', '1903', 'movie_name_english617'),
(618, 'movie_name_native618', '1990', 'movie_name_english618'),
(619, 'movie_name_native619', '2018', 'movie_name_english619'),
(620, 'movie_name_native620', '2006', 'movie_name_english620'),
(621, 'movie_name_native621', '1942', 'movie_name_english621'),
(622, 'movie_name_native622', '1956', 'movie_name_english622'),
(623, 'movie_name_native623', '1947', 'movie_name_english623'),
(624, 'movie_name_native624', '1968', 'movie_name_english624'),
(625, 'movie_name_native625', '1986', 'movie_name_english625'),
(626, 'movie_name_native626', '1918', 'movie_name_english626'),
(627, 'movie_name_native627', '1947', 'movie_name_english627'),
(628, 'movie_name_native628', '2010', 'movie_name_english628'),
(629, 'movie_name_native629', '1994', 'movie_name_english629'),
(630, 'movie_name_native630', '1996', 'movie_name_english630'),
(631, 'movie_name_native631', '1901', 'movie_name_english631'),
(632, 'movie_name_native632', '1975', 'movie_name_english632'),
(633, 'movie_name_native633', '1905', 'movie_name_english633'),
(634, 'movie_name_native634', '2010', 'movie_name_english634'),
(635, 'movie_name_native635', '2014', 'movie_name_english635'),
(636, 'movie_name_native636', '2019', 'movie_name_english636'),
(637, 'movie_name_native637', '1981', 'movie_name_english637'),
(638, 'movie_name_native638', '1954', 'movie_name_english638'),
(639, 'movie_name_native639', '1910', 'movie_name_english639'),
(640, 'movie_name_native640', '1940', 'movie_name_english640'),
(641, 'movie_name_native641', '1991', 'movie_name_english641'),
(642, 'movie_name_native642', '1917', 'movie_name_english642'),
(643, 'movie_name_native643', '1934', 'movie_name_english643'),
(644, 'movie_name_native644', '1940', 'movie_name_english644'),
(645, 'movie_name_native645', '1900', 'movie_name_english645'),
(646, 'movie_name_native646', '1921', 'movie_name_english646'),
(647, 'movie_name_native647', '1922', 'movie_name_english647'),
(648, 'movie_name_native648', '1919', 'movie_name_english648'),
(649, 'movie_name_native649', '1911', 'movie_name_english649'),
(650, 'movie_name_native650', '1956', 'movie_name_english650'),
(651, 'movie_name_native651', '2001', 'movie_name_english651'),
(652, 'movie_name_native652', '2007', 'movie_name_english652'),
(653, 'movie_name_native653', '1985', 'movie_name_english653'),
(654, 'movie_name_native654', '1905', 'movie_name_english654'),
(655, 'movie_name_native655', '2012', 'movie_name_english655'),
(656, 'movie_name_native656', '1967', 'movie_name_english656'),
(657, 'movie_name_native657', '1928', 'movie_name_english657'),
(658, 'movie_name_native658', '1941', 'movie_name_english658'),
(659, 'movie_name_native659', '1937', 'movie_name_english659'),
(660, 'movie_name_native660', '1934', 'movie_name_english660'),
(661, 'movie_name_native661', '1938', 'movie_name_english661'),
(662, 'movie_name_native662', '1977', 'movie_name_english662'),
(663, 'movie_name_native663', '1934', 'movie_name_english663'),
(664, 'movie_name_native664', '1998', 'movie_name_english664'),
(665, 'movie_name_native665', '1955', 'movie_name_english665'),
(666, 'movie_name_native666', '1974', 'movie_name_english666'),
(667, 'movie_name_native667', '1910', 'movie_name_english667'),
(668, 'movie_name_native668', '1997', 'movie_name_english668'),
(669, 'movie_name_native669', '1942', 'movie_name_english669'),
(670, 'movie_name_native670', '1983', 'movie_name_english670'),
(671, 'movie_name_native671', '1925', 'movie_name_english671'),
(672, 'movie_name_native672', '1938', 'movie_name_english672'),
(673, 'movie_name_native673', '1974', 'movie_name_english673'),
(674, 'movie_name_native674', '1982', 'movie_name_english674'),
(675, 'movie_name_native675', '1999', 'movie_name_english675'),
(676, 'movie_name_native676', '1973', 'movie_name_english676'),
(677, 'movie_name_native677', '1934', 'movie_name_english677'),
(678, 'movie_name_native678', '1990', 'movie_name_english678'),
(679, 'movie_name_native679', '1952', 'movie_name_english679'),
(680, 'movie_name_native680', '1947', 'movie_name_english680'),
(681, 'movie_name_native681', '1903', 'movie_name_english681'),
(682, 'movie_name_native682', '1946', 'movie_name_english682'),
(683, 'movie_name_native683', '1917', 'movie_name_english683'),
(684, 'movie_name_native684', '1918', 'movie_name_english684'),
(685, 'movie_name_native685', '1940', 'movie_name_english685'),
(686, 'movie_name_native686', '1963', 'movie_name_english686'),
(687, 'movie_name_native687', '2015', 'movie_name_english687'),
(688, 'movie_name_native688', '1964', 'movie_name_english688'),
(689, 'movie_name_native689', '1939', 'movie_name_english689'),
(690, 'movie_name_native690', '1965', 'movie_name_english690'),
(691, 'movie_name_native691', '1949', 'movie_name_english691'),
(692, 'movie_name_native692', '2018', 'movie_name_english692'),
(693, 'movie_name_native693', '1977', 'movie_name_english693'),
(694, 'movie_name_native694', '2007', 'movie_name_english694'),
(695, 'movie_name_native695', '2000', 'movie_name_english695'),
(696, 'movie_name_native696', '2013', 'movie_name_english696'),
(697, 'movie_name_native697', '1940', 'movie_name_english697'),
(698, 'movie_name_native698', '1922', 'movie_name_english698'),
(699, 'movie_name_native699', '1967', 'movie_name_english699'),
(700, 'movie_name_native700', '1947', 'movie_name_english700'),
(701, 'movie_name_native701', '1987', 'movie_name_english701'),
(702, 'movie_name_native702', '1933', 'movie_name_english702'),
(703, 'movie_name_native703', '2015', 'movie_name_english703'),
(704, 'movie_name_native704', '2004', 'movie_name_english704'),
(705, 'movie_name_native705', '1902', 'movie_name_english705'),
(706, 'movie_name_native706', '1928', 'movie_name_english706'),
(707, 'movie_name_native707', '2010', 'movie_name_english707'),
(708, 'movie_name_native708', '1966', 'movie_name_english708'),
(709, 'movie_name_native709', '1906', 'movie_name_english709'),
(710, 'movie_name_native710', '2000', 'movie_name_english710'),
(711, 'movie_name_native711', '1945', 'movie_name_english711'),
(712, 'movie_name_native712', '2009', 'movie_name_english712'),
(713, 'movie_name_native713', '1909', 'movie_name_english713'),
(714, 'movie_name_native714', '1910', 'movie_name_english714'),
(715, 'movie_name_native715', '2018', 'movie_name_english715'),
(716, 'movie_name_native716', '1922', 'movie_name_english716'),
(717, 'movie_name_native717', '1963', 'movie_name_english717'),
(718, 'movie_name_native718', '1912', 'movie_name_english718'),
(719, 'movie_name_native719', '1961', 'movie_name_english719'),
(720, 'movie_name_native720', '1985', 'movie_name_english720'),
(721, 'movie_name_native721', '1913', 'movie_name_english721'),
(722, 'movie_name_native722', '2015', 'movie_name_english722'),
(723, 'movie_name_native723', '2002', 'movie_name_english723'),
(724, 'movie_name_native724', '2001', 'movie_name_english724'),
(725, 'movie_name_native725', '1907', 'movie_name_english725'),
(726, 'movie_name_native726', '2012', 'movie_name_english726'),
(727, 'movie_name_native727', '1917', 'movie_name_english727'),
(728, 'movie_name_native728', '1923', 'movie_name_english728'),
(729, 'movie_name_native729', '1922', 'movie_name_english729'),
(730, 'movie_name_native730', '1939', 'movie_name_english730'),
(731, 'movie_name_native731', '1927', 'movie_name_english731'),
(732, 'movie_name_native732', '2012', 'movie_name_english732'),
(733, 'movie_name_native733', '1908', 'movie_name_english733'),
(734, 'movie_name_native734', '1927', 'movie_name_english734'),
(735, 'movie_name_native735', '1903', 'movie_name_english735'),
(736, 'movie_name_native736', '1952', 'movie_name_english736'),
(737, 'movie_name_native737', '1975', 'movie_name_english737'),
(738, 'movie_name_native738', '1930', 'movie_name_english738'),
(739, 'movie_name_native739', '2016', 'movie_name_english739'),
(740, 'movie_name_native740', '1958', 'movie_name_english740'),
(741, 'movie_name_native741', '1917', 'movie_name_english741'),
(742, 'movie_name_native742', '1924', 'movie_name_english742'),
(743, 'movie_name_native743', '1953', 'movie_name_english743'),
(744, 'movie_name_native744', '1992', 'movie_name_english744'),
(745, 'movie_name_native745', '1933', 'movie_name_english745'),
(746, 'movie_name_native746', '1972', 'movie_name_english746'),
(747, 'movie_name_native747', '1952', 'movie_name_english747'),
(748, 'movie_name_native748', '1945', 'movie_name_english748'),
(749, 'movie_name_native749', '1903', 'movie_name_english749'),
(750, 'movie_name_native750', '1902', 'movie_name_english750'),
(751, 'movie_name_native751', '1932', 'movie_name_english751'),
(752, 'movie_name_native752', '1971', 'movie_name_english752'),
(753, 'movie_name_native753', '1939', 'movie_name_english753'),
(754, 'movie_name_native754', '1993', 'movie_name_english754'),
(755, 'movie_name_native755', '1988', 'movie_name_english755'),
(756, 'movie_name_native756', '2011', 'movie_name_english756'),
(757, 'movie_name_native757', '1924', 'movie_name_english757'),
(758, 'movie_name_native758', '1946', 'movie_name_english758'),
(759, 'movie_name_native759', '1992', 'movie_name_english759'),
(760, 'movie_name_native760', '1903', 'movie_name_english760'),
(761, 'movie_name_native761', '1963', 'movie_name_english761'),
(762, 'movie_name_native762', '1947', 'movie_name_english762'),
(763, 'movie_name_native763', '1959', 'movie_name_english763'),
(764, 'movie_name_native764', '2018', 'movie_name_english764'),
(765, 'movie_name_native765', '1944', 'movie_name_english765'),
(766, 'movie_name_native766', '1991', 'movie_name_english766'),
(767, 'movie_name_native767', '2013', 'movie_name_english767'),
(768, 'movie_name_native768', '2010', 'movie_name_english768'),
(769, 'movie_name_native769', '1986', 'movie_name_english769'),
(770, 'movie_name_native770', '1987', 'movie_name_english770'),
(771, 'movie_name_native771', '1979', 'movie_name_english771'),
(772, 'movie_name_native772', '1922', 'movie_name_english772'),
(773, 'movie_name_native773', '1940', 'movie_name_english773'),
(774, 'movie_name_native774', '1979', 'movie_name_english774'),
(775, 'movie_name_native775', '1917', 'movie_name_english775'),
(776, 'movie_name_native776', '1911', 'movie_name_english776'),
(777, 'movie_name_native777', '2018', 'movie_name_english777'),
(778, 'movie_name_native778', '1952', 'movie_name_english778'),
(779, 'movie_name_native779', '2019', 'movie_name_english779'),
(780, 'movie_name_native780', '1974', 'movie_name_english780'),
(781, 'movie_name_native781', '1940', 'movie_name_english781'),
(782, 'movie_name_native782', '2016', 'movie_name_english782'),
(783, 'movie_name_native783', '1943', 'movie_name_english783'),
(784, 'movie_name_native784', '1950', 'movie_name_english784'),
(785, 'movie_name_native785', '1918', 'movie_name_english785'),
(786, 'movie_name_native786', '1913', 'movie_name_english786'),
(787, 'movie_name_native787', '1922', 'movie_name_english787'),
(788, 'movie_name_native788', '2005', 'movie_name_english788'),
(789, 'movie_name_native789', '1913', 'movie_name_english789'),
(790, 'movie_name_native790', '1964', 'movie_name_english790'),
(791, 'movie_name_native791', '1956', 'movie_name_english791'),
(792, 'movie_name_native792', '2008', 'movie_name_english792'),
(793, 'movie_name_native793', '1959', 'movie_name_english793'),
(794, 'movie_name_native794', '1966', 'movie_name_english794'),
(795, 'movie_name_native795', '2004', 'movie_name_english795'),
(796, 'movie_name_native796', '1935', 'movie_name_english796'),
(797, 'movie_name_native797', '1941', 'movie_name_english797'),
(798, 'movie_name_native798', '1937', 'movie_name_english798'),
(799, 'movie_name_native799', '1920', 'movie_name_english799'),
(800, 'movie_name_native800', '1954', 'movie_name_english800'),
(801, 'movie_name_native801', '2004', 'movie_name_english801'),
(802, 'movie_name_native802', '1956', 'movie_name_english802'),
(803, 'movie_name_native803', '1948', 'movie_name_english803'),
(804, 'movie_name_native804', '1979', 'movie_name_english804'),
(805, 'movie_name_native805', '2003', 'movie_name_english805'),
(806, 'movie_name_native806', '1933', 'movie_name_english806'),
(807, 'movie_name_native807', '1986', 'movie_name_english807'),
(808, 'movie_name_native808', '1916', 'movie_name_english808'),
(809, 'movie_name_native809', '1904', 'movie_name_english809'),
(810, 'movie_name_native810', '1981', 'movie_name_english810');
INSERT INTO `movies` (`movie_id`, `movie_name_native`, `movie_year`, `movie_name_english`) VALUES
(811, 'movie_name_native811', '1933', 'movie_name_english811'),
(812, 'movie_name_native812', '1979', 'movie_name_english812'),
(813, 'movie_name_native813', '1915', 'movie_name_english813'),
(814, 'movie_name_native814', '1904', 'movie_name_english814'),
(815, 'movie_name_native815', '1970', 'movie_name_english815'),
(816, 'movie_name_native816', '1947', 'movie_name_english816'),
(817, 'movie_name_native817', '2019', 'movie_name_english817'),
(818, 'movie_name_native818', '2002', 'movie_name_english818'),
(819, 'movie_name_native819', '1924', 'movie_name_english819'),
(820, 'movie_name_native820', '1981', 'movie_name_english820'),
(821, 'movie_name_native821', '1902', 'movie_name_english821'),
(822, 'movie_name_native822', '1932', 'movie_name_english822'),
(823, 'movie_name_native823', '1957', 'movie_name_english823'),
(824, 'movie_name_native824', '2005', 'movie_name_english824'),
(825, 'movie_name_native825', '2004', 'movie_name_english825'),
(826, 'movie_name_native826', '2010', 'movie_name_english826'),
(827, 'movie_name_native827', '1957', 'movie_name_english827'),
(828, 'movie_name_native828', '1950', 'movie_name_english828'),
(829, 'movie_name_native829', '1946', 'movie_name_english829'),
(830, 'movie_name_native830', '1927', 'movie_name_english830'),
(831, 'movie_name_native831', '1991', 'movie_name_english831'),
(832, 'movie_name_native832', '1914', 'movie_name_english832'),
(833, 'movie_name_native833', '2011', 'movie_name_english833'),
(834, 'movie_name_native834', '2005', 'movie_name_english834'),
(835, 'movie_name_native835', '1984', 'movie_name_english835'),
(836, 'movie_name_native836', '1910', 'movie_name_english836'),
(837, 'movie_name_native837', '1913', 'movie_name_english837'),
(838, 'movie_name_native838', '1912', 'movie_name_english838'),
(839, 'movie_name_native839', '1900', 'movie_name_english839'),
(840, 'movie_name_native840', '1915', 'movie_name_english840'),
(841, 'movie_name_native841', '1975', 'movie_name_english841'),
(842, 'movie_name_native842', '1938', 'movie_name_english842'),
(843, 'movie_name_native843', '1913', 'movie_name_english843'),
(844, 'movie_name_native844', '1955', 'movie_name_english844'),
(845, 'movie_name_native845', '1976', 'movie_name_english845'),
(846, 'movie_name_native846', '1954', 'movie_name_english846'),
(847, 'movie_name_native847', '1975', 'movie_name_english847'),
(848, 'movie_name_native848', '1965', 'movie_name_english848'),
(849, 'movie_name_native849', '1942', 'movie_name_english849'),
(850, 'movie_name_native850', '1932', 'movie_name_english850'),
(851, 'movie_name_native851', '1937', 'movie_name_english851'),
(852, 'movie_name_native852', '1945', 'movie_name_english852'),
(853, 'movie_name_native853', '1918', 'movie_name_english853'),
(854, 'movie_name_native854', '1913', 'movie_name_english854'),
(855, 'movie_name_native855', '2014', 'movie_name_english855'),
(856, 'movie_name_native856', '2010', 'movie_name_english856'),
(857, 'movie_name_native857', '1954', 'movie_name_english857'),
(858, 'movie_name_native858', '1969', 'movie_name_english858'),
(859, 'movie_name_native859', '1941', 'movie_name_english859'),
(860, 'movie_name_native860', '1903', 'movie_name_english860'),
(861, 'movie_name_native861', '1974', 'movie_name_english861'),
(862, 'movie_name_native862', '1919', 'movie_name_english862'),
(863, 'movie_name_native863', '1995', 'movie_name_english863'),
(864, 'movie_name_native864', '2018', 'movie_name_english864'),
(865, 'movie_name_native865', '1934', 'movie_name_english865'),
(866, 'movie_name_native866', '1931', 'movie_name_english866'),
(867, 'movie_name_native867', '1927', 'movie_name_english867'),
(868, 'movie_name_native868', '1920', 'movie_name_english868'),
(869, 'movie_name_native869', '1985', 'movie_name_english869'),
(870, 'movie_name_native870', '1972', 'movie_name_english870'),
(871, 'movie_name_native871', '1947', 'movie_name_english871'),
(872, 'movie_name_native872', '1933', 'movie_name_english872'),
(873, 'movie_name_native873', '1986', 'movie_name_english873'),
(874, 'movie_name_native874', '2014', 'movie_name_english874'),
(875, 'movie_name_native875', '2017', 'movie_name_english875'),
(876, 'movie_name_native876', '1972', 'movie_name_english876'),
(877, 'movie_name_native877', '1989', 'movie_name_english877'),
(878, 'movie_name_native878', '1908', 'movie_name_english878'),
(879, 'movie_name_native879', '2020', 'movie_name_english879'),
(880, 'movie_name_native880', '1948', 'movie_name_english880'),
(881, 'movie_name_native881', '1929', 'movie_name_english881'),
(882, 'movie_name_native882', '1903', 'movie_name_english882'),
(883, 'movie_name_native883', '2015', 'movie_name_english883'),
(884, 'movie_name_native884', '2009', 'movie_name_english884'),
(885, 'movie_name_native885', '1977', 'movie_name_english885'),
(886, 'movie_name_native886', '1971', 'movie_name_english886'),
(887, 'movie_name_native887', '1963', 'movie_name_english887'),
(888, 'movie_name_native888', '1943', 'movie_name_english888'),
(889, 'movie_name_native889', '1986', 'movie_name_english889'),
(890, 'movie_name_native890', '1930', 'movie_name_english890'),
(891, 'movie_name_native891', '1980', 'movie_name_english891'),
(892, 'movie_name_native892', '1964', 'movie_name_english892'),
(893, 'movie_name_native893', '1942', 'movie_name_english893'),
(894, 'movie_name_native894', '2012', 'movie_name_english894'),
(895, 'movie_name_native895', '1914', 'movie_name_english895'),
(896, 'movie_name_native896', '1939', 'movie_name_english896'),
(897, 'movie_name_native897', '1961', 'movie_name_english897'),
(898, 'movie_name_native898', '1997', 'movie_name_english898'),
(899, 'movie_name_native899', '1982', 'movie_name_english899'),
(900, 'movie_name_native900', '1974', 'movie_name_english900'),
(901, 'movie_name_native901', '1944', 'movie_name_english901'),
(902, 'movie_name_native902', '1953', 'movie_name_english902'),
(903, 'movie_name_native903', '1906', 'movie_name_english903'),
(904, 'movie_name_native904', '1954', 'movie_name_english904'),
(905, 'movie_name_native905', '1924', 'movie_name_english905'),
(906, 'movie_name_native906', '1930', 'movie_name_english906'),
(907, 'movie_name_native907', '1930', 'movie_name_english907'),
(908, 'movie_name_native908', '1944', 'movie_name_english908'),
(909, 'movie_name_native909', '1959', 'movie_name_english909'),
(910, 'movie_name_native910', '1928', 'movie_name_english910'),
(911, 'movie_name_native911', '1926', 'movie_name_english911'),
(912, 'movie_name_native912', '2014', 'movie_name_english912'),
(913, 'movie_name_native913', '1926', 'movie_name_english913'),
(914, 'movie_name_native914', '1964', 'movie_name_english914'),
(915, 'movie_name_native915', '1965', 'movie_name_english915'),
(916, 'movie_name_native916', '2011', 'movie_name_english916'),
(917, 'movie_name_native917', '1965', 'movie_name_english917'),
(918, 'movie_name_native918', '2019', 'movie_name_english918'),
(919, 'movie_name_native919', '2020', 'movie_name_english919'),
(920, 'movie_name_native920', '1926', 'movie_name_english920'),
(921, 'movie_name_native921', '1935', 'movie_name_english921'),
(922, 'movie_name_native922', '1956', 'movie_name_english922'),
(923, 'movie_name_native923', '1900', 'movie_name_english923'),
(924, 'movie_name_native924', '1928', 'movie_name_english924'),
(925, 'movie_name_native925', '1998', 'movie_name_english925'),
(926, 'movie_name_native926', '1957', 'movie_name_english926'),
(927, 'movie_name_native927', '2018', 'movie_name_english927'),
(928, 'movie_name_native928', '1961', 'movie_name_english928'),
(929, 'movie_name_native929', '1935', 'movie_name_english929'),
(930, 'movie_name_native930', '2012', 'movie_name_english930'),
(931, 'movie_name_native931', '1978', 'movie_name_english931'),
(932, 'movie_name_native932', '1991', 'movie_name_english932'),
(933, 'movie_name_native933', '1968', 'movie_name_english933'),
(934, 'movie_name_native934', '1996', 'movie_name_english934'),
(935, 'movie_name_native935', '1968', 'movie_name_english935'),
(936, 'movie_name_native936', '1982', 'movie_name_english936'),
(937, 'movie_name_native937', '1913', 'movie_name_english937'),
(938, 'movie_name_native938', '2001', 'movie_name_english938'),
(939, 'movie_name_native939', '2002', 'movie_name_english939'),
(940, 'movie_name_native940', '1918', 'movie_name_english940'),
(941, 'movie_name_native941', '1921', 'movie_name_english941'),
(942, 'movie_name_native942', '2019', 'movie_name_english942'),
(943, 'movie_name_native943', '1965', 'movie_name_english943'),
(944, 'movie_name_native944', '2001', 'movie_name_english944'),
(945, 'movie_name_native945', '1984', 'movie_name_english945'),
(946, 'movie_name_native946', '1929', 'movie_name_english946'),
(947, 'movie_name_native947', '2008', 'movie_name_english947'),
(948, 'movie_name_native948', '1931', 'movie_name_english948'),
(949, 'movie_name_native949', '1916', 'movie_name_english949'),
(950, 'movie_name_native950', '1934', 'movie_name_english950'),
(951, 'movie_name_native951', '1953', 'movie_name_english951'),
(952, 'movie_name_native952', '1996', 'movie_name_english952'),
(953, 'movie_name_native953', '2002', 'movie_name_english953'),
(954, 'movie_name_native954', '1922', 'movie_name_english954'),
(955, 'movie_name_native955', '1966', 'movie_name_english955'),
(956, 'movie_name_native956', '1946', 'movie_name_english956'),
(957, 'movie_name_native957', '1983', 'movie_name_english957'),
(958, 'movie_name_native958', '2012', 'movie_name_english958'),
(959, 'movie_name_native959', '1980', 'movie_name_english959'),
(960, 'movie_name_native960', '1917', 'movie_name_english960'),
(961, 'movie_name_native961', '1931', 'movie_name_english961'),
(962, 'movie_name_native962', '1929', 'movie_name_english962'),
(963, 'movie_name_native963', '1912', 'movie_name_english963'),
(964, 'movie_name_native964', '1949', 'movie_name_english964'),
(965, 'movie_name_native965', '1996', 'movie_name_english965'),
(966, 'movie_name_native966', '1917', 'movie_name_english966'),
(967, 'movie_name_native967', '1912', 'movie_name_english967'),
(968, 'movie_name_native968', '1982', 'movie_name_english968'),
(969, 'movie_name_native969', '1989', 'movie_name_english969'),
(970, 'movie_name_native970', '1945', 'movie_name_english970'),
(971, 'movie_name_native971', '2007', 'movie_name_english971'),
(972, 'movie_name_native972', '1913', 'movie_name_english972'),
(973, 'movie_name_native973', '1968', 'movie_name_english973'),
(974, 'movie_name_native974', '2016', 'movie_name_english974'),
(975, 'movie_name_native975', '1988', 'movie_name_english975'),
(976, 'movie_name_native976', '1972', 'movie_name_english976'),
(977, 'movie_name_native977', '2019', 'movie_name_english977'),
(978, 'movie_name_native978', '2011', 'movie_name_english978'),
(979, 'movie_name_native979', '1958', 'movie_name_english979'),
(980, 'movie_name_native980', '1908', 'movie_name_english980'),
(981, 'movie_name_native981', '1986', 'movie_name_english981'),
(982, 'movie_name_native982', '2002', 'movie_name_english982'),
(983, 'movie_name_native983', '2016', 'movie_name_english983'),
(984, 'movie_name_native984', '1935', 'movie_name_english984'),
(985, 'movie_name_native985', '1913', 'movie_name_english985'),
(986, 'movie_name_native986', '1989', 'movie_name_english986'),
(987, 'movie_name_native987', '1985', 'movie_name_english987'),
(988, 'movie_name_native988', '2010', 'movie_name_english988'),
(989, 'movie_name_native989', '1934', 'movie_name_english989'),
(990, 'movie_name_native990', '1983', 'movie_name_english990'),
(991, 'movie_name_native991', '1922', 'movie_name_english991'),
(992, 'movie_name_native992', '1945', 'movie_name_english992'),
(993, 'movie_name_native993', '1918', 'movie_name_english993'),
(994, 'movie_name_native994', '1975', 'movie_name_english994'),
(995, 'movie_name_native995', '2015', 'movie_name_english995'),
(996, 'movie_name_native996', '1928', 'movie_name_english996'),
(997, 'movie_name_native997', '1905', 'movie_name_english997'),
(998, 'movie_name_native998', '1946', 'movie_name_english998'),
(999, 'movie_name_native999', '2011', 'movie_name_english999'),
(1000, 'movie_name_native1000', '1952', 'movie_name_english1000'),
(1001, 'movie_name_native1001', '1950', 'movie_name_english1001');

-- --------------------------------------------------------

--
-- Table structure for table `movie_anagrams`
--

CREATE TABLE `movie_anagrams` (
  `movie_id` int(6) NOT NULL COMMENT 'movie_anagrams is a WEAK entity. movie_id is both PK and FK',
  `anagram` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'anagram of native name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_anagrams`
--

INSERT INTO `movie_anagrams` (`movie_id`, `anagram`) VALUES
(3, 'iceman');

-- --------------------------------------------------------

--
-- Table structure for table `movie_keywords`
--

CREATE TABLE `movie_keywords` (
  `movie_id` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_keywords`
--

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(1, 'war'),
(10, 'Adventure');

-- --------------------------------------------------------

--
-- Table structure for table `movie_media`
--

CREATE TABLE `movie_media` (
  `movie_id` int(11) NOT NULL,
  `movie_media_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_media`
--

INSERT INTO `movie_media` (`movie_id`, `movie_media_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `movie_numbers`
--

CREATE TABLE `movie_numbers` (
  `movie_id` int(6) NOT NULL COMMENT 'This is both PK and FK; movie_numbers is a WEAK entity',
  `running_time` int(3) DEFAULT NULL COMMENT 'Running Time in Minutes',
  `length` int(2) DEFAULT NULL COMMENT 'length (depends on the native_name)',
  `strength` int(2) DEFAULT NULL COMMENT 'strengh (depends on the native_name)',
  `weight` int(2) DEFAULT NULL COMMENT 'weight (depends on native name)',
  `budget` int(8) DEFAULT NULL COMMENT 'budget in local (native) currency',
  `box_office` int(8) DEFAULT NULL COMMENT 'box office numbers in local (native) currency'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_numbers`
--

INSERT INTO `movie_numbers` (`movie_id`, `running_time`, `length`, `strength`, `weight`, `budget`, `box_office`) VALUES
(3, 777, 6, 1, 1, 555, 22222);

-- --------------------------------------------------------

--
-- Table structure for table `movie_people`
--

CREATE TABLE `movie_people` (
  `movie_id` int(11) NOT NULL,
  `people_id` int(11) NOT NULL,
  `role` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_people`
--

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`) VALUES
(1, 1, 'Crew'),
(1, 5, 'crew2'),
(1, 6, 'crew3'),
(10, 10, 'Director'),
(1, 2, 'Lead Actor'),
(1, 3, 'Lead Actress');

-- --------------------------------------------------------

--
-- Table structure for table `movie_quotes`
--

CREATE TABLE `movie_quotes` (
  `movie_id` int(11) NOT NULL,
  `quote` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_quotes`
--

INSERT INTO `movie_quotes` (`movie_id`, `quote`) VALUES
(2, 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `movie_song`
--

CREATE TABLE `movie_song` (
  `song_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_song`
--

INSERT INTO `movie_song` (`song_id`, `movie_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `movie_trivia`
--

CREATE TABLE `movie_trivia` (
  `movie_id` int(11) NOT NULL,
  `trivia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_trivia`
--

INSERT INTO `movie_trivia` (`movie_id`, `trivia`) VALUES
(1, 'When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.'),
(10, 'Is this only a child\'s film?');

-- --------------------------------------------------------

--
-- Table structure for table `multimedia`
--

CREATE TABLE `multimedia` (
  `movie_media_id` int(11) NOT NULL,
  `movie_poster` varchar(255) DEFAULT NULL,
  `photo_stills` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `multimedia`
--

INSERT INTO `multimedia` (`movie_media_id`, `movie_poster`, `photo_stills`) VALUES
(1, 'poster1.jpg', 'still1.jpg'),
(2, 'poster2.jpg', 'still2.jpg'),
(4, NULL, NULL),
(10, 'poster10.jpg', 'still10.png');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `people_id` int(11) NOT NULL,
  `director` varchar(100) DEFAULT NULL,
  `producer` varchar(100) DEFAULT NULL,
  `music_director` varchar(30) DEFAULT NULL,
  `lead_actor` varchar(100) DEFAULT NULL,
  `lead_actress` varchar(100) DEFAULT NULL,
  `actors` varchar(100) DEFAULT NULL,
  `actresses` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`people_id`, `director`, `producer`, `music_director`, `lead_actor`, `lead_actress`, `actors`, `actresses`) VALUES
(1, 'Test', 'Test', 'Test', 'Test', 'Test', 'Test', 'Test'),
(2, 'test', 'test', 'test', 'test', 'test', 'test', 'test'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'George Lucas', 'George Lucas', 'John Williams', 'Mark Hamill, Harrison Ford', 'Carrie Fisher', 'Kenneth Williams', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `people_actors`
--

CREATE TABLE `people_actors` (
  `people_id` int(11) NOT NULL,
  `actor` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `people_actors`
--

INSERT INTO `people_actors` (`people_id`, `actor`) VALUES
(100, 'test'),
(10, 'test'),
(1, 'test'),
(2, 'test B'),
(3, 'test C'),
(4, 'test D'),
(1, 'Giorgio Cantarini'),
(1, 'Actor'),
(1, 'Random');

-- --------------------------------------------------------

--
-- Table structure for table `people_actresses`
--

CREATE TABLE `people_actresses` (
  `people_id` int(11) NOT NULL,
  `actress` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `people_actresses`
--

INSERT INTO `people_actresses` (`people_id`, `actress`) VALUES
(100, 'test'),
(10, 'test'),
(5, 'test E'),
(6, 'Test F'),
(1, 'Nicoletta Braschi'),
(1, 'Lydia Alfonsi ');

-- --------------------------------------------------------

--
-- Table structure for table `people_trivia`
--

CREATE TABLE `people_trivia` (
  `people_id` int(11) NOT NULL,
  `people_trivia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `people_trivia`
--

INSERT INTO `people_trivia` (`people_id`, `people_trivia`) VALUES
(1, '<People Trivia>');

-- --------------------------------------------------------

--
-- Table structure for table `screen_name`
--

CREATE TABLE `screen_name` (
  `movie_id` int(11) NOT NULL,
  `people_id` int(11) NOT NULL,
  `screen_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `screen_name`
--

INSERT INTO `screen_name` (`movie_id`, `people_id`, `screen_name`) VALUES
(1, 1, 'Dora Orefice'),
(1, 2, 'Roberto'),
(2, 1, 'Natalie'),
(1, 5, 'Lyricist'),
(5, 5, 'Lyricist'),
(10, 5, 'Lyricist');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `song_id` int(11) NOT NULL,
  `song_title` varchar(100) DEFAULT NULL,
  `lyrics` text DEFAULT NULL,
  `playback_singers` varchar(100) DEFAULT NULL,
  `lyricist` varchar(100) DEFAULT NULL,
  `audio_link` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `song_title`, `lyrics`, `playback_singers`, `lyricist`, `audio_link`, `video_link`) VALUES
(1, '\"Barcarolle\"', 'Belle nuit, ô nuit d\'amour,\r\nSouris à nos ivresses,\r\nNuit plus douce que le jour,\r\nÔ belle nuit d\'amour!\r\nLe temps fuit et sans retour\r\nEmporte nos tendresses,\r\nLoin de cet heureux séjour\r\nLe temps fuit sans retour.\r\nZéphyrs embrasés,\r\nVersez-nous vos caresses,\r\nZéphyrs embrasés,\r\nDonnez-nous vos baisers!\r\nVos baisers! vos baisers! Ah!\r\nBelle nuit, ô nuit d\'amour,\r\nSouris à nos ivresses,\r\nNuit plus douce que le jour,\r\nÔ belle nuit d\'amour!\r\nAh! Souris à nos ivresses!\r\nNuit d\'amour, ô nuit d\'amour!\r\nAh! ah! ah! ah! ah! ah! ah! ah! ah! ah!', 'Nicola Piovani', 'Jacques Offenbach', NULL, 'https://www.youtube.com/watch?v=atzR42nRuss'),
(2, 'Pray 4 Love', NULL, 'Trabis Scott', 'The Weeknd', NULL, 'https://www.youtube.com/watch?v=EivJ5hpQzms'),
(3, 'test', ';gjrlsajbv;jdfsbgbfgvlbzfslvkjnzsdfljgvnzfsljvnzfs;jbnfzdkjnbldfujbng;zufjsdnv;fsinv', 'kdjngwenfojew', 'test', NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Battle Theme', 'No words', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `song_people`
--

CREATE TABLE `song_people` (
  `song_id` int(11) NOT NULL,
  `people_id` int(11) NOT NULL,
  `role` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `song_people`
--

INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(1, 1, 'Lyricist'),
(1, 5, 'Lyricist'),
(1, 6, 'Musician'),
(5, 7, 'Musician'),
(10, 10, 'Composer');

-- --------------------------------------------------------

--
-- Table structure for table `song_trivia`
--

CREATE TABLE `song_trivia` (
  `song_id` int(11) NOT NULL,
  `song_trivia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `song_trivia`
--

INSERT INTO `song_trivia` (`song_id`, `song_trivia`) VALUES
(1, '<Song Trivia>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crew`
--
ALTER TABLE `crew`
  ADD PRIMARY KEY (`people_id`);

--
-- Indexes for table `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`,`movie_name_native`,`movie_year`) USING BTREE;

--
-- Indexes for table `movie_anagrams`
--
ALTER TABLE `movie_anagrams`
  ADD PRIMARY KEY (`movie_id`) USING BTREE;

--
-- Indexes for table `movie_keywords`
--
ALTER TABLE `movie_keywords`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_media`
--
ALTER TABLE `movie_media`
  ADD PRIMARY KEY (`movie_media_id`) USING BTREE,
  ADD KEY `fk_media` (`movie_id`);

--
-- Indexes for table `movie_numbers`
--
ALTER TABLE `movie_numbers`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_people`
--
ALTER TABLE `movie_people`
  ADD PRIMARY KEY (`role`) USING BTREE,
  ADD KEY `fk_movie` (`movie_id`),
  ADD KEY `fk_people_id` (`people_id`);

--
-- Indexes for table `movie_song`
--
ALTER TABLE `movie_song`
  ADD PRIMARY KEY (`song_id`,`movie_id`);

--
-- Indexes for table `movie_trivia`
--
ALTER TABLE `movie_trivia`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`movie_media_id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`people_id`) USING BTREE;

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`) USING BTREE;

--
-- Indexes for table `song_people`
--
ALTER TABLE `song_people`
  ADD PRIMARY KEY (`song_id`,`people_id`,`role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
