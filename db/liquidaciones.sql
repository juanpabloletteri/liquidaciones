
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-05-2017 a las 17:38:43
-- Versión del servidor: 10.0.28-MariaDB
-- Versión de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `u290379021_estac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eliminadas`
--

CREATE TABLE IF NOT EXISTS `eliminadas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ingreso` date NOT NULL,
  `monto` int(11) NOT NULL,
  `operador` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Volcado de datos para la tabla `eliminadas`
--

INSERT INTO `eliminadas` (`id`, `empresa`, `ingreso`, `monto`, `operador`, `numero`) VALUES
(1, 'Cablevision', '2016-12-21', 0, 'cecilia', '0'),
(2, 'Cablevision', '2016-12-21', 52, 'cecilia', '0'),
(3, 'EdesurAlta', '2017-01-02', 0, 'cecilia', ''),
(4, 'Telefonica', '2017-01-02', 0, 'cecilia', '39117/16'),
(5, 'Inarteco', '2016-12-06', 44995, 'dnoriega', '0'),
(6, 'Inarteco', '2016-12-06', 50590, 'dnoriega', '0'),
(7, 'Inarteco', '2016-12-06', 44633, 'dnoriega', '0'),
(8, 'Telefonica', '2016-11-30', 4677, 'cecilia', '0'),
(9, 'Cosugas', '2016-10-19', 59662, 'dnoriega', '0'),
(10, 'Cosugas', '2016-10-19', 66816, 'dnoriega', '0'),
(11, 'Cosugas', '2016-10-19', 108962, 'dnoriega', '0'),
(12, 'Cosugas', '2016-12-12', 50056, 'dnoriega', '0'),
(13, 'EdesurMantenimiento', '2016-11-04', 92436, 'cecilia', '0'),
(14, 'Cablevision', '2016-12-21', 51853, 'cecilia', '0'),
(15, 'Telecom', '2016-11-09', 18894, 'dnoriega', '0'),
(16, 'Telmex', '2016-08-31', 2027, 'dnoriega', '0'),
(17, 'CosugasAysa', '2017-01-23', 0, 'smaffione', 'Enero 2 ML'),
(18, 'CosugasAysa', '2017-01-23', 0, 'smaffione', 'Enero 2 M2'),
(19, 'CosugasAysa', '2017-01-23', 7350, 'smaffione', '1234-ML'),
(20, 'CosugasAysa', '2017-01-23', 41704, 'smaffione', '1234-M2'),
(21, 'CosugasAysa', '2017-01-23', 29200, 'smaffione', 'Enero 2 M2'),
(22, 'CosugasAysa', '2017-01-23', 125897, 'smaffione', 'Enero 2 PPP'),
(23, 'CosugasAysa', '2017-01-23', 0, 'juan pablo', 'Enero 2 JJJ'),
(24, 'CosugasAysa', '2017-01-23', 125897, 'juan pablo', 'Enero 2 JJJ'),
(25, 'CosugasAysa', '2017-01-10', 132, 'juan pablo', 'prueba'),
(26, 'CosugasAysa', '2017-01-10', 132, 'juan pablo', 'prueba'),
(27, 'CosugasAysa', '2017-01-23', 7350, 'smaffione', 'Enero 1 ML'),
(28, 'CosugasAysa', '2017-01-23', 41704, 'smaffione', 'Enero 1 M2'),
(29, 'CosugasAysa', '2017-01-23', 6196, 'smaffione', 'Enero 2 ML'),
(30, 'CosugasAysa', '2017-01-23', 29200, 'smaffione', 'Enero 2 M2'),
(31, 'CosugasAysa', '2017-01-23', 6512, 'smaffione', 'Enero 3 ML'),
(32, 'CosugasAysa', '2017-01-23', 48039, 'smaffione', 'Enero 3 M2'),
(33, 'CosugasAysa', '2017-02-09', 89710, 'smaffione', 'Febrero 1 M2'),
(34, 'Telefonica', '2017-01-02', 6299, 'cecilia', '39117/16'),
(35, 'CosugasAysa', '2017-03-02', 91221, 'smaffione', 'Febrero s3 m2'),
(36, 'CosugasAysa', '2017-03-22', 10178, 'smaffione', 'Marzo S ML'),
(37, 'EmaServicios', '2017-04-05', 66244, 'dnoriega', '38398/17'),
(38, 'EdesurMantenimiento', '2017-04-10', 147224, 'cecilia', '35974/16'),
(39, 'EdesurMantenimiento', '2017-04-10', 147224, 'cecilia', '35974/16'),
(40, 'Telefonica', '2017-05-03', 23521, 'cecilia', '42909/17'),
(41, 'Telefonica', '2017-05-03', 0, 'cecilia', '42907/17'),
(42, 'Telefonica', '2017-05-03', 0, 'cecilia', '42912/17'),
(43, 'Telefonica', '2017-05-03', 0, 'cecilia', '42914/17'),
(44, 'Telefonica', '2017-05-03', 0, 'cecilia', '42911/17'),
(45, 'Telefonica', '2017-05-03', 51, 'cecilia', '42908/17'),
(46, 'Telefonica', '2017-05-03', 51, 'cecilia', '42908'),
(47, 'Telefonica', '2017-05-03', 0, 'cecilia', '42907'),
(48, 'Telefonica', '2017-05-03', 2910, 'cecilia', '42911/17'),
(49, 'EdesurMantenimiento', '2017-05-02', 133, 'cecilia', '42005/17'),
(50, 'EdesurMantenimiento', '2017-04-24', 145656, 'cecilia', '42005/17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE IF NOT EXISTS `empresas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(50) NOT NULL,
  `grupo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `monto` double NOT NULL,
  `operador` varchar(50) NOT NULL,
  `numero` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=173 ;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `empresa`, `grupo`, `fecha`, `monto`, `operador`, `numero`) VALUES
(68, 'Telmex', 3, '2017-01-02', 20756, 'dnoriega', '30129-15'),
(166, 'Telefonica', 3, '2017-05-03', 16292.5, 'cecilia', '42912/17'),
(147, 'OtrosGas', 2, '2017-04-20', 5509, 'dnoriega', '41378/17'),
(172, 'EdesurMantenimiento', 1, '2017-05-22', 59478, 'cecilia', '42128/17'),
(104, 'YPF', 2, '2017-02-02', 8467.5, 'dnoriega', '40587-17'),
(100, 'AySA', 4, '0000-00-00', 13922.5, 'smaffione', 'Semana 4 ML'),
(146, 'OtrosGas', 2, '2017-04-20', 4956, 'dnoriega', '41377/17'),
(162, 'Telefonica', 3, '2017-05-03', 17793.5, 'cecilia', '42907/17'),
(151, 'Telefonica', 3, '2017-05-03', 32487.5, 'cecilia', '42910/17'),
(119, 'EdesurMediaBaja', 1, '2017-03-14', 26897, 'cecilia', '40626/17'),
(171, 'EdesurMantenimiento', 1, '2017-05-15', 147457.8, 'cecilia', '42166/17'),
(69, 'Telmex', 3, '2017-01-02', 14436, 'dnoriega', '10725-14'),
(167, 'EdesurMantenimiento', 1, '2017-05-09', 142052.4, 'cecilia', '42116/17'),
(76, 'Telefonica', 3, '2017-01-20', 3139, 'cecilia', '40354/17'),
(120, 'Telefonica', 3, '2017-03-14', 2665, 'cecilia', '41423/17'),
(136, 'Cosugas', 2, '2017-02-14', 86486.2, 'dnoriega', '40248/17'),
(164, 'Telefonica', 3, '2017-05-03', 29110.25, 'cecilia', '42911/17'),
(165, 'Telefonica', 3, '2017-05-03', 12500.5, 'cecilia', '42914/17'),
(161, 'Telefonica', 3, '2017-05-03', 50539, 'cecilia', '42908'),
(170, 'AySA', 4, '2017-05-12', 227235.55, 'smaffione', 'Abril M2'),
(152, 'Telefonica', 3, '2017-05-03', 23521, 'cecilia', '42909/17'),
(168, 'EdesurMantenimiento', 1, '2017-05-02', 132642, 'cecilia', '42005/17'),
(149, 'Inarteco', 2, '2017-04-27', 50114.2, 'dnoriega', '38878/16'),
(148, 'EdesurMantenimiento', 1, '2017-05-02', 146524.2, 'cecilia', '45045'),
(140, 'EmaServicios', 2, '2017-04-05', 66244.49, 'dnoriega', '38398/16'),
(138, 'Cosugas', 2, '2017-04-05', 82497.99, 'dnoriega', '42261/17'),
(139, 'Cosugas', 2, '2017-04-05', 76343.88, 'dnoriega', '41262/17'),
(169, 'AySA', 4, '2017-05-12', 33694.62, 'smaffione', 'Abril ML'),
(143, 'EdesurMantenimiento', 1, '2017-04-10', 147224.4, 'cecilia', '35974/16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `histlogin`
--

CREATE TABLE IF NOT EXISTS `histlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL,
  `ingreso` datetime NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=165 ;

--
-- Volcado de datos para la tabla `histlogin`
--

INSERT INTO `histlogin` (`id`, `usuario`, `ingreso`, `pass`) VALUES
(1, 'juan pablo', '2017-01-05 18:27:57', '31192'),
(2, 'juan pablo', '2017-01-09 14:34:00', '31192'),
(3, 'juan pablo', '2017-01-09 16:59:41', '31192'),
(4, 'dnoriega', '2017-01-09 17:03:25', 'Dsn3344409'),
(5, 'juan pablo', '2017-01-09 17:13:16', '31192'),
(6, 'juan pablo', '2017-01-09 21:58:36', '31192'),
(7, 'cecilia', '2017-01-13 15:25:42', '123'),
(8, 'juan pablo', '2017-01-15 04:35:07', '31192'),
(9, 'juan pablo', '2017-01-15 23:37:57', '31192'),
(10, 'juan pablo', '2017-01-16 12:26:19', '31192'),
(11, 'juan pablo', '2017-01-16 14:09:56', '31192'),
(12, 'juan pablo', '2017-01-16 14:44:56', '31192'),
(13, 'juan pablo', '2017-01-16 14:46:20', '31192'),
(14, 'juan pablo', '2017-01-20 18:51:06', '31192'),
(15, 'smaffione', '2017-01-23 14:51:17', 'leon52195'),
(16, 'cecilia', '2017-01-23 15:08:55', '123'),
(17, 'juan pablo', '2017-01-23 15:16:34', '31192'),
(18, 'smaffione', '2017-01-23 16:37:31', 'leon52195'),
(19, 'juan pablo', '2017-01-25 17:30:27', '31192'),
(20, 'juan pablo', '2017-01-27 12:55:28', '31192'),
(21, 'smaffione', '2017-01-27 15:08:44', 'leon52195'),
(22, 'juan pablo', '2017-01-27 15:32:53', '31192'),
(23, 'juan pablo', '2017-01-27 17:56:41', '31192'),
(24, 'juan pablo', '2017-01-27 18:31:29', '31192'),
(25, 'juan pablo', '2017-01-27 23:42:20', '31192'),
(26, 'juan pablo', '2017-01-28 00:20:42', '31192'),
(27, 'juan pablo', '2017-01-28 00:24:15', '31192'),
(28, 'juan pablo', '2017-01-28 00:32:34', '31192'),
(29, 'juan pablo', '2017-01-28 00:55:06', '31192'),
(30, 'juan pablo', '2017-01-28 21:31:14', '31192'),
(31, 'juan pablo', '2017-01-30 13:05:18', '31192'),
(32, 'juan pablo', '2017-01-30 15:39:26', '31192'),
(33, 'juan pablo', '2017-01-30 16:54:10', '31192'),
(34, 'juan pablo', '2017-01-30 18:23:07', '31192'),
(35, 'dnoriega', '2017-01-31 13:44:47', 'Dsn3344409'),
(36, 'juan pablo', '2017-02-01 15:54:09', '31192'),
(37, 'smaffione', '2017-02-01 16:33:37', 'leon52195'),
(38, 'dnoriega', '2017-02-01 17:54:44', 'Dsn3344409'),
(39, 'juan pablo', '2017-02-02 13:28:46', '31192'),
(40, 'juan pablo', '2017-02-02 16:16:08', '31192'),
(41, 'dnoriega', '2017-02-06 12:23:22', 'Dsn3344409'),
(42, 'dnoriega', '2017-02-06 14:46:32', 'Dsn3344409'),
(43, 'juan pablo', '2017-02-07 01:22:27', '31192'),
(44, 'dnoriega', '2017-02-07 14:01:29', 'Dsn3344409'),
(45, 'juan pablo', '2017-02-08 12:56:00', '31192'),
(46, 'smaffione', '2017-02-09 13:21:54', 'leon52195'),
(47, 'juan pablo', '2017-02-09 17:46:16', '31192'),
(48, 'dnoriega', '2017-02-09 17:57:39', 'Dsn3344409'),
(49, 'juan pablo', '2017-02-09 17:59:47', '31192'),
(50, 'juan pablo', '2017-02-09 18:10:17', '31192'),
(51, 'smaffione', '2017-02-13 12:26:54', 'leon52195'),
(52, 'cecilia', '2017-02-13 12:58:19', '123'),
(53, 'cecilia', '2017-02-13 13:10:52', '123'),
(54, 'cecilia', '2017-02-13 13:39:55', '123'),
(55, 'cecilia', '2017-02-13 13:40:52', '123'),
(56, 'cecilia', '2017-02-13 13:42:56', '123'),
(57, 'cecilia', '2017-02-14 14:23:55', '123'),
(58, 'smaffione', '2017-02-23 13:39:02', 'leon52195'),
(59, 'juan pablo', '2017-03-01 18:39:54', '31192'),
(60, 'smaffione', '2017-03-02 13:00:35', 'leon52195'),
(61, 'juan pablo', '2017-03-03 01:14:59', '31192'),
(62, 'cecilia', '2017-03-08 13:13:33', '123'),
(63, 'cecilia', '2017-03-14 15:07:53', '123'),
(64, 'smaffione', '2017-03-15 12:46:41', 'leon52195'),
(65, 'juan pablo', '2017-03-19 21:36:47', '31192'),
(66, 'smaffione', '2017-03-20 13:26:02', 'leon52195'),
(67, 'smaffione', '2017-03-22 11:46:40', 'leon52195'),
(68, 'smaffione', '2017-03-22 15:44:25', 'leon52195'),
(69, 'juan pablo', '2017-03-26 02:03:53', '31192'),
(70, 'juan pablo', '2017-03-26 23:21:19', '31192'),
(71, 'dnoriega', '2017-03-27 16:20:28', 'Dsn3344409'),
(72, 'cecilia', '2017-03-27 16:49:39', '123'),
(73, 'juan pablo', '2017-03-28 18:51:41', '31192'),
(74, 'juan pablo', '2017-03-28 22:53:47', '31192'),
(75, 'cecilia', '2017-03-29 15:56:07', '123'),
(76, 'cecilia', '2017-03-29 17:28:22', '123'),
(77, 'cecilia', '2017-03-31 16:49:35', '123'),
(78, 'smaffione', '2017-04-03 14:06:33', 'leon52195'),
(79, 'dnoriega', '2017-04-05 12:49:57', 'Dsn3344409'),
(80, 'dnoriega', '2017-04-05 13:34:07', 'Dsn3344409'),
(81, 'juan pablo', '2017-04-06 22:04:34', '31192'),
(82, 'juan pablo', '2017-04-06 23:24:20', '31192'),
(83, 'juan pablo', '2017-04-07 05:30:54', '31192'),
(84, 'juan pablo', '2017-04-07 05:31:51', '31192'),
(85, 'juan pablo', '2017-04-07 05:33:42', '31192'),
(86, 'juan pablo', '2017-04-07 05:35:06', '31192'),
(87, 'juan pablo', '2017-04-07 05:46:37', '31192'),
(88, 'juan pablo', '2017-04-07 23:35:17', '31192'),
(89, 'juan pablo', '2017-04-08 13:05:38', '31192'),
(90, 'smaffione', '2017-04-10 13:29:35', 'leon52195'),
(91, 'cecilia', '2017-04-10 13:33:02', '123'),
(92, 'juan pablo', '2017-04-10 17:48:51', '31192'),
(93, 'juan pablo', '2017-04-10 23:43:49', '31192'),
(94, 'juan pablo', '2017-04-11 18:40:25', '31192'),
(95, 'juan pablo', '2017-04-12 17:59:38', '31192'),
(96, 'cecilia', '2017-04-18 13:21:03', '123'),
(97, 'cecilia', '2017-04-18 13:21:52', '123'),
(98, 'cecilia', '2017-04-18 15:17:57', '123'),
(99, 'dnoriega', '2017-04-20 17:24:59', 'Dsn3344409'),
(100, 'juan pablo', '2017-04-21 01:48:37', '31192'),
(101, 'cecilia', '2017-04-21 13:29:46', '123'),
(102, 'cecilia', '2017-04-21 13:47:16', '123'),
(103, 'juan pablo', '2017-04-21 14:23:42', '31192'),
(104, 'cecilia', '2017-04-21 15:07:26', '123'),
(105, 'juan pablo', '2017-04-21 21:40:05', '31192'),
(106, 'juan pablo', '2017-04-23 22:40:02', '31192'),
(107, 'juan pablo', '2017-04-24 03:05:26', '31192'),
(108, 'cecilia', '2017-04-24 16:38:07', '123'),
(109, 'smaffionwe', '2017-04-25 12:43:08', 'leon52195'),
(110, '', '2017-04-25 12:43:10', ''),
(111, 'smaffione', '2017-04-25 12:43:22', 'Leon52195'),
(112, 'dnoriega', '2017-04-26 12:30:04', 'Dsn3344409'),
(113, 'juan pablo', '2017-04-26 13:42:05', '31192'),
(114, 'juan pablo', '2017-04-26 13:42:05', '31192'),
(115, 'juan pablo', '2017-04-28 18:05:43', '31192'),
(116, 'juan pablo', '2017-04-29 20:32:05', '31192'),
(117, 'juan pablo', '2017-05-01 03:57:33', '31192'),
(118, 'cecilia', '2017-05-02 12:46:39', '123'),
(119, 'dnoriega', '2017-05-02 15:24:59', 'Dsn3344409'),
(120, 'cecilia', '2017-05-02 16:27:17', '123'),
(121, 'cecilia', '2017-05-02 16:28:26', '123'),
(122, 'cecilia', '2017-05-03 12:20:13', '123'),
(123, 'cecilia', '2017-05-03 14:39:11', '123'),
(124, 'cecilia', '2017-05-03 15:53:22', '123'),
(125, 'smaffione', '2017-05-03 16:34:52', 'leon52195'),
(126, 'cecilia', '2017-05-08 18:12:22', '123'),
(127, 'cecilia', '2017-05-09 12:11:24', '123'),
(128, 'cecilia', '2017-05-09 16:17:30', '123'),
(129, 'juan pablo', '2017-05-10 00:20:08', '31192'),
(130, 'juan pablo', '2017-05-10 18:47:44', '31192'),
(131, 'cecilia', '2017-05-11 12:34:05', '123'),
(132, 'dnoriega', '2017-05-11 12:34:19', 'Dsn3344409'),
(133, 'smaffione', '2017-05-12 13:38:01', 'leon52195'),
(134, 'juan pablo', '2017-05-12 18:38:01', '31192'),
(135, 'juan pablo', '2017-05-12 19:08:07', '31192'),
(136, 'juan pablo', '2017-05-12 19:11:58', '31192'),
(137, 'juan pablo', '2017-05-12 19:16:01', '31192'),
(138, 'juan pablo', '2017-05-12 19:16:58', '31192'),
(139, 'juan pablo', '2017-05-12 20:51:22', '31192'),
(140, 'juan pablo', '2017-05-12 21:15:29', '31192'),
(141, 'juan pablo', '2017-05-12 21:27:38', '31192'),
(142, 'juan pablo', '2017-05-12 23:00:19', '31192'),
(143, 'juan pablo', '2017-05-13 02:03:43', '31192'),
(144, 'juan pablo', '2017-05-13 02:07:42', '31192'),
(145, 'juan pablo', '2017-05-13 04:05:58', '31192'),
(146, 'juan pablo', '2017-05-15 03:16:13', '31192'),
(147, 'juan pablo', '2017-05-15 03:16:57', '31192'),
(148, 'juan pablo', '2017-05-15 14:21:13', '31192'),
(149, 'cecilia', '2017-05-15 15:14:05', '123'),
(150, 'cecilia', '2017-05-15 15:14:24', '123'),
(151, 'cecilia', '2017-05-15 15:14:43', '123'),
(152, 'juan pablo', '2017-05-16 14:35:43', '31192'),
(153, 'dnoriega', '2017-05-17 15:50:18', 'Dsn3344409'),
(154, 'juan pablo', '2017-05-19 13:42:35', '31192'),
(155, 'cecilia', '2017-05-19 14:18:13', '123'),
(156, 'cecilia', '2017-05-22 12:44:31', '123'),
(157, 'cecilia', '2017-05-22 12:44:56', '123'),
(158, 'cecilia', '2017-05-22 12:44:57', '123'),
(159, 'cecilia', '2017-05-22 12:45:22', '123'),
(160, 'juan pablo', '2017-05-22 18:03:30', '31192'),
(161, 'juan pablo', '2017-05-22 18:43:10', '31192'),
(162, 'juan pablo', '2017-05-24 23:23:39', '31192'),
(163, 'juan pablo', '2017-05-26 01:14:38', '31192'),
(164, 'juan pablo', '2017-05-26 17:27:17', '31192');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `histloginfail`
--

CREATE TABLE IF NOT EXISTS `histloginfail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE IF NOT EXISTS `historial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(50) NOT NULL,
  `ingreso` date NOT NULL,
  `monto` double NOT NULL,
  `operador` varchar(50) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `diasimpagos` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id`, `empresa`, `ingreso`, `monto`, `operador`, `numero`, `diasimpagos`) VALUES
(1, 'Cablevision', '2016-10-11', 31290, 'cecilia', '0', 0),
(2, 'Cablevision', '2016-10-11', 31290, 'cecilia', '0', 0),
(3, 'Cablevision', '2016-10-11', 16603, 'cecilia', '0', 0),
(4, 'Cablevision', '2016-10-11', 34165, 'cecilia', '0', 0),
(12, 'Cablevision', '2016-12-05', 28, 'cecilia', '0', 0),
(13, 'EdesurAlta', '2016-10-20', 32789, 'cecilia', '0', 0),
(14, 'EdesurAlta', '2016-09-05', 71639, 'cecilia', '0', 0),
(16, 'EdesurMediaBaja', '2016-12-14', 338802, 'dnoriega', '0', 0),
(17, 'OtrosGas', '2016-12-19', 3852, 'dnoriega', '39684/16', 0),
(18, 'Cablevision', '2016-12-05', 28353, 'dnoriega', '0', 0),
(19, 'Cablevision', '2016-12-13', 13666, 'dnoriega', '0', 0),
(20, 'EmaServicios', '2016-12-01', 26240, 'dnoriega', '0', 0),
(21, 'Cosugas', '2016-10-19', 58830, 'dnoriega', '0', 0),
(22, 'Cosugas', '2016-10-19', 78727, 'dnoriega', '0', 0),
(23, 'Cosugas', '2016-10-19', 85440, 'dnoriega', '0', 0),
(24, 'Cosugas', '2016-10-19', 95042, 'dnoriega', '0', 0),
(25, 'Cosugas', '2016-10-19', 85924, 'dnoriega', '0', 0),
(26, 'Cosugas', '2016-10-19', 83601, 'dnoriega', '0', 0),
(27, 'Telefonica', '2016-10-14', 2209, 'cecilia', '0', 0),
(29, 'EdesurMantenimiento', '2016-10-19', 73149, 'cecilia', '0', 0),
(30, 'Cablevision', '2017-01-03', 69736, 'cecilia', '39543/16', 20),
(31, 'Cablevision', '2017-01-02', 53936, 'cecilia', '40071-16', 20),
(32, 'Inarteco', '2017-01-02', 60748, 'juan pablo', '37096-16', 24),
(33, 'Inarteco', '2017-01-02', 68302, 'juan pablo', '38935-16', 24),
(34, 'Inarteco', '2017-01-02', 60260, 'juan pablo', '38917-16', 24),
(35, 'Cosugas', '2017-01-02', 71209, 'juan pablo', '38669-16', 25),
(36, 'Cosugas', '2017-01-02', 80917, 'juan pablo', '37986-16', 25),
(37, 'Cosugas', '2017-01-02', 89085, 'juan pablo', '37876-16', 25),
(38, 'Cosugas', '2017-01-02', 109635, 'juan pablo', '38665-16', 25),
(39, 'Cosugas', '2017-01-02', 118724, 'juan pablo', '38592-16', 25),
(43, 'Telmex', '2017-01-02', 42086, 'juan pablo', '57914-12', 29),
(42, 'Telmex', '2017-01-02', 15423.5, 'juan pablo', '57169-12', 29),
(44, 'EdesurAlta', '2017-01-02', 70951.5, 'juan pablo', '38453/16', 29),
(45, 'Cablevision', '2017-02-07', 207986, 'dnoriega', '40375/17', 26),
(46, 'Metrotel', '2017-02-09', 23126, 'juan pablo', '40668-17', 9),
(47, 'AySA', '2017-02-28', 13922.5, 'smaffione', 'Semana 4 ML', 30),
(48, 'AySA', '2017-02-28', 66233.28125, 'smaffione', 'Semana 3 M2', 37),
(49, 'AySA', '2017-02-28', 6946.7998046875, 'smaffione', 'Semana 3 ML', 37),
(50, 'AySA', '2017-02-28', 47257.44921875, 'smaffione', 'Semana 2 M2', 37),
(51, 'AySA', '2017-02-28', 7302.2998046875, 'smaffione', 'Semana 2 ML', 37),
(52, 'AySA', '2017-02-28', 7823.7001953125, 'smaffione', 'Semana 1 ML', 37),
(53, 'AySA', '2017-02-28', 68497.0390625, 'smaffione', 'Semana 1 M2', 37),
(54, 'AySA', '2017-02-28', 86554.11, 'smaffione', 'Semana 4 M2', 30),
(55, 'AySA', '2017-03-22', 89709.65, 'smaffione', 'Febrero 1 M2', 41),
(56, 'AySA', '2017-03-22', 10944.2, 'smaffione', 'Febrero 1 ML', 41),
(57, 'AySA', '2017-03-22', 121140.52, 'smaffione', 'Febrero 2 M2', 37),
(58, 'AySA', '2017-03-22', 9925.1, 'smaffione', 'Febrero 2 ML', 37),
(59, 'AySA', '2017-03-22', 75976.04, 'smaffione', 'Febrero S3 M2', 20),
(60, 'AySA', '2017-03-22', 6567.6, 'smaffione', 'Febrero S3 ML', 20),
(61, 'AySA', '2017-03-22', 40782.5, 'smaffione', 'Febrero S4 ML', 20),
(62, 'AySA', '2017-03-22', 91221.09, 'smaffione', 'Febrero S4 M2', 20),
(63, 'Cablevision', '2017-03-27', 207986, 'cecilia', '40411/17', 64),
(64, 'Cablevision', '2017-03-27', 42086, 'cecilia', '41300', 25),
(65, 'EdesurMantenimiento', '2017-03-27', 124800, 'cecilia', '38484/16', 84),
(66, 'EdesurAlta', '2017-04-18', 70951.5, 'cecilia', '38453/16', 107),
(67, 'Cablevision', '2017-04-21', 34186, 'cecilia', '41301', 50),
(68, 'Cablevision', '2017-04-21', 14436, 'cecilia', '42027/17', 25),
(69, 'Cablevision', '2017-04-21', 22336, 'cecilia', '42030', 25),
(70, 'Telefonica', '2017-04-21', 4087, 'cecilia', '40813/17', 71),
(71, 'Telefonica', '2017-04-21', 2981, 'cecilia', '40402/17', 89),
(72, 'AySA', '2017-04-28', 22438.7, 'juan pablo', 'Marzo 4 ML', 26),
(73, 'AySA', '2017-04-28', 58077.07, 'juan pablo', 'Marzo 3 M2', 26),
(74, 'AySA', '2017-04-28', 6196.3, 'juan pablo', 'Marzo 3 ML ', 26),
(75, 'AySA', '2017-04-28', 34829.09, 'juan pablo', 'Marzo 4 M2', 26),
(76, 'AySA', '2017-04-28', 49849.24, 'juan pablo', 'Marzo S2 M2', 38),
(77, 'AySA', '2017-04-28', 10177.9, 'juan pablo', 'Marzo S2 ML', 38),
(78, 'AySA', '2017-04-28', 13274.7, 'juan pablo', 'Marzo S1 ML', 38),
(79, 'AySA', '2017-04-28', 100501.89, 'juan pablo', 'Marzo S1 M2', 38),
(80, 'EdesurMantenimiento', '2017-05-03', 142986, 'cecilia', '36007', 34),
(81, 'EdesurMantenimiento', '2017-05-11', 147457.8, 'cecilia', '41950/17', 24),
(82, 'Cosugas', '2017-05-17', 82957.3, 'dnoriega', '40313/17', 93),
(83, 'EdesurAlta', '2017-05-19', 70410, 'cecilia', '40698/17', 52),
(84, 'EdesurAlta', '2017-05-19', 26028, 'cecilia', '40145/17', 52);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `pass`, `admin`) VALUES
(0, 'juan pablo', '31192', 1),
(1, 'dnoriega', 'Dsn3344409', 0),
(2, 'smaffione', 'Leon52195', 0),
(3, 'cecilia', '123', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
