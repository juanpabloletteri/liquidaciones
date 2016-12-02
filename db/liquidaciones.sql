-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2016 a las 05:32:57
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `liquidaciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `empresa` varchar(50) NOT NULL,
  `grupo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `monto` float NOT NULL,
  `operador` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `empresa`, `grupo`, `fecha`, `monto`, `operador`) VALUES
(3, 'Otros', 1, '2016-11-02', 13216, ''),
(9, 'EdesurMediaBaja', 1, '2016-11-30', 111, ''),
(10, 'EdesurAlta', 1, '2016-11-30', 1234, ''),
(11, 'EdesurMantenimiento', 1, '2016-11-30', 1234, ''),
(14, 'EdesurAlta', 1, '2016-11-28', 1000, ''),
(15, 'EdesurMantenimiento', 1, '2016-11-28', 1000, ''),
(16, 'EdesurMediaBaja', 1, '2016-11-28', 1000, ''),
(17, 'Cosugas', 2, '2016-11-30', 111, ''),
(18, 'EmaServicios', 2, '2016-11-30', 111, ''),
(19, 'Inarteco', 2, '2016-11-29', 111, ''),
(20, 'Cosugas', 2, '2016-11-29', 222, ''),
(22, 'CosugasAysa', 4, '2016-12-02', 1234, ''),
(25, 'EdesurMediaBaja', 1, '2016-12-06', 21, '1'),
(26, 'EdesurMediaBaja', 1, '0000-00-00', 4352230, 'juan pablo'),
(27, 'EdesurMediaBaja', 1, '2016-11-28', 4352230, 'juan pablo'),
(28, 'OtrosAySA', 4, '2016-11-03', 223, 'juan pablo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `histlogin`
--

CREATE TABLE `histlogin` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `ingreso` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `histlogin`
--

INSERT INTO `histlogin` (`id`, `usuario`, `pass`, `ingreso`) VALUES
(1, 'juan pablo', '', '2016-12-02 05:25:16'),
(2, 'juan pablo', '', '2016-12-02 05:25:32'),
(3, '234f2', '', '2016-12-02 05:28:01'),
(4, 'oooo', '', '2016-12-02 05:29:25'),
(5, '123', '321', '2016-12-02 05:30:22'),
(6, 'juan pablo', '1', '2016-12-02 05:30:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `histloginfail`
--

CREATE TABLE `histloginfail` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id` int(11) NOT NULL,
  `empresa` varchar(50) NOT NULL,
  `ingreso` date NOT NULL,
  `egreso` date NOT NULL,
  `tiempo` date NOT NULL,
  `monto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id`, `empresa`, `ingreso`, `egreso`, `tiempo`, `monto`) VALUES
(1, 'EdesurAlta', '2016-11-17', '0000-00-00', '0000-00-00', 213321),
(2, 'EdesurAlta', '2016-11-17', '0000-00-00', '0000-00-00', 213321),
(3, 'EdesurAlta', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(4, 'EdesurTelecomunicaciones', '2016-11-29', '0000-00-00', '0000-00-00', 111),
(5, 'EdesurMediaBaja', '2016-11-02', '0000-00-00', '0000-00-00', 13216),
(6, 'EdesurMantenimiento', '2016-11-30', '0000-00-00', '0000-00-00', 111),
(7, 'EdesurAlta', '2016-11-17', '0000-00-00', '0000-00-00', 984949000),
(8, 'EdesurAlta', '2016-10-31', '0000-00-00', '0000-00-00', 1234),
(9, 'EdesurAlta', '2016-10-31', '0000-00-00', '0000-00-00', 1234),
(10, 'EdesurMantenimiento', '2016-10-31', '0000-00-00', '0000-00-00', 1234),
(11, 'CosugasAysa', '2016-12-01', '0000-00-00', '0000-00-00', 1234),
(12, 'CosugasAysa', '2016-12-26', '0000-00-00', '0000-00-00', 1234),
(13, 'OtrosAySA', '2016-12-26', '0000-00-00', '0000-00-00', 1234);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `pass` int(11) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `pass`, `admin`) VALUES
(0, '1', 1, 1),
(0, 'juan pablo', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `histlogin`
--
ALTER TABLE `histlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `histloginfail`
--
ALTER TABLE `histloginfail`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `histlogin`
--
ALTER TABLE `histlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `histloginfail`
--
ALTER TABLE `histloginfail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
