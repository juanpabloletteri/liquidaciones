-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2016 a las 16:22:44
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
(3, 'EdesurAlta', 1, '2016-11-06', 1233120, ''),
(4, 'EdesurAlta', 1, '2016-11-06', 1233120, ''),
(5, 'EdesurAlta', 1, '2016-11-06', 1233120, ''),
(6, 'EdesurTelecomunicaciones', 1, '2016-11-06', 1233120, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `histlogin`
--

CREATE TABLE `histlogin` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `ingreso` datetime NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `histlogin`
--

INSERT INTO `histlogin` (`id`, `usuario`, `ingreso`, `pass`) VALUES
(1, '1', '2016-12-02 14:47:30', '1');

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
  `monto` int(11) NOT NULL,
  `operador` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id`, `empresa`, `ingreso`, `monto`, `operador`) VALUES
(1, 'EdesurTelecomunicaciones', '2016-11-08', 1233, '1'),
(2, 'EdesurTelecomunicaciones', '2016-11-08', 23333, '1'),
(3, 'EdesurAlta', '2016-11-29', 123, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `pass`, `admin`) VALUES
(0, '1', '1', 1);

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
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `histlogin`
--
ALTER TABLE `histlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `histloginfail`
--
ALTER TABLE `histloginfail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
