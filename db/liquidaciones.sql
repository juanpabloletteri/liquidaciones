
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 28-01-2017 a las 00:16:17
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

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
(32, 'CosugasAysa', '2017-01-23', 48039, 'smaffione', 'Enero 3 M2');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `empresa`, `grupo`, `fecha`, `monto`, `operador`, `numero`) VALUES
(68, 'Telmex', 3, '2017-01-02', 20756, 'dnoriega', '30129-15'),
(62, 'EdesurMantenimiento', 1, '2017-01-03', 124800, 'cecilia', '38484/16'),
(74, 'Cablevision', 3, '2017-01-23', 207986, 'cecilia', '40411/17'),
(66, 'Telmex', 3, '2017-01-02', 15423.5, 'dnoriega', '57169-12'),
(67, 'Telmex', 3, '2017-01-02', 42086, 'dnoriega', '57914-12'),
(50, 'EdesurAlta', 1, '2017-01-02', 70951.5, 'cecilia', '38453/16'),
(61, 'Telefonica', 3, '2017-01-02', 6299, 'cecilia', '39117/16'),
(93, 'CosugasAysa', 4, '2017-01-25', 68497.0390625, 'smaffione', 'Semana 1 M2'),
(75, 'Telefonica', 3, '2017-01-23', 2981, 'cecilia', '40402/17'),
(69, 'Telmex', 3, '2017-01-02', 14436, 'dnoriega', '10725-14'),
(70, 'Cablevision', 3, '2017-01-13', 207986, 'juan pablo', '40375/17'),
(92, 'CosugasAysa', 4, '2017-01-25', 7823.7001953125, 'smaffione', 'Semana 1 ML'),
(76, 'Telefonica', 3, '2017-01-20', 3139, 'cecilia', '40354/17'),
(94, 'CosugasAysa', 4, '2017-01-25', 7302.2998046875, 'smaffione', 'Semana 2 ML'),
(95, 'CosugasAysa', 4, '2017-01-25', 47257.44921875, 'smaffione', 'Semana 2 M2'),
(96, 'CosugasAysa', 4, '2017-01-25', 6946.7998046875, 'smaffione', 'Semana 3 ML'),
(97, 'CosugasAysa', 4, '2017-01-25', 66233.28125, 'smaffione', 'Semana 3 M2');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

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
(25, 'juan pablo', '2017-01-27 23:42:20', '31192');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

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
(30, 'Cablevision', '2017-01-03', 69736, 'cecilia', '39543/16', 0),
(31, 'Cablevision', '2017-01-02', 53936, 'cecilia', '40071-16', 0),
(32, 'Inarteco', '2017-01-02', 60748, 'juan pablo', '37096-16', 0),
(33, 'Inarteco', '2017-01-02', 68302, 'juan pablo', '38935-16', 0),
(34, 'Inarteco', '2017-01-02', 60260, 'juan pablo', '38917-16', 0),
(35, 'Cosugas', '2017-01-02', 71209, 'juan pablo', '38669-16', 0),
(36, 'Cosugas', '2017-01-02', 80917, 'juan pablo', '37986-16', 0),
(37, 'Cosugas', '2017-01-02', 89085, 'juan pablo', '37876-16', 0),
(38, 'Cosugas', '2017-01-02', 109635, 'juan pablo', '38665-16', 0),
(39, 'Cosugas', '2017-01-02', 118724, 'juan pablo', '38592-16', 0);

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
