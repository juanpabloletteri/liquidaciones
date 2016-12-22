-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-12-2016 a las 03:46:46
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
-- Estructura de tabla para la tabla `eliminadas`
--

CREATE TABLE `eliminadas` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `empresa` varchar(50) NOT NULL,
  `ingreso` date NOT NULL,
  `monto` int(11) NOT NULL,
  `operador` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eliminadas`
--

INSERT INTO `eliminadas` (`id`, `numero`, `empresa`, `ingreso`, `monto`, `operador`) VALUES
(1, 0, 'EdesurAlta', '2016-11-27', 11111, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `empresa` varchar(50) NOT NULL,
  `grupo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `monto` float NOT NULL,
  `operador` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `numero`, `empresa`, `grupo`, `fecha`, `monto`, `operador`) VALUES
(5, 0, 'CosugasAysa', 4, '2016-11-28', 12, '1'),
(6, 0, 'Inarteco', 2, '2016-12-07', 333, '1'),
(7, 0, 'Cosugas', 2, '2016-12-07', 333, '1'),
(8, 0, 'OtrosGas', 2, '2016-12-07', 333, '1'),
(9, 0, 'EmaServicios', 2, '2016-12-07', 333, '1'),
(10, 12, 'EdesurMantenimiento', 1, '2017-12-14', 11, '1'),
(12, 212121, 'EdesurAlta', 1, '2016-12-05', 2121, 'juan pablo'),
(14, 123, 'Cosugas', 2, '2016-12-07', 321, 'juan pablo'),
(15, 123, 'Cosugas', 2, '2016-12-15', 321, 'juan pablo'),
(16, 123, 'Cosugas', 2, '2017-02-17', 321, 'juan pablo'),
(17, 123, 'Cablevision', 3, '2016-12-15', 312, 'juan pablo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `histlogin`
--

CREATE TABLE `histlogin` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `ingreso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `histlogin`
--

INSERT INTO `histlogin` (`id`, `usuario`, `pass`, `ingreso`) VALUES
(1, '1', '1', '2016-12-16'),
(2, '1', '1', '2016-12-16'),
(3, '1', '1', '2016-12-21'),
(4, '1', '1', '2016-12-22'),
(5, '1', '1', '2016-12-22'),
(6, '1', '1', '2016-12-22'),
(7, 'juan pablo', '1', '2016-12-22'),
(8, 'juan pablo', '1', '2016-12-22'),
(9, 'juan pablo', '1', '2016-12-22'),
(10, 'juan pablo', '1', '2016-12-22'),
(11, 'juan pablo', '1', '2016-12-22'),
(12, 'juan pablo', '1', '2016-12-22'),
(13, 'juan pablo', '1', '2016-12-22'),
(14, 'juan pablo', '1', '2016-12-22'),
(15, '1', '1', '2016-12-22'),
(16, '1', '1', '2016-12-22'),
(17, 'juan pablo', '1', '2016-12-22'),
(18, '1', '1', '2016-12-22'),
(19, '1', '1', '2016-12-22'),
(20, '1', '1', '2016-12-22'),
(21, 'cecilia', '1', '2016-12-22'),
(22, 'juan pablo', '1', '2016-12-22');

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
  `numero` int(11) NOT NULL,
  `empresa` varchar(50) NOT NULL,
  `ingreso` date NOT NULL,
  `monto` int(11) NOT NULL,
  `operador` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id`, `numero`, `empresa`, `ingreso`, `monto`, `operador`) VALUES
(1, 0, 'EdesurTelecomunicaciones', '2016-12-01', 422, '1'),
(2, 0, 'Cablevision', '2016-11-29', 234, '1'),
(3, 0, 'Telmex', '2016-11-01', 4452, '1'),
(4, 32, 'EdesurAlta', '0000-00-00', 1111110000, 'juan pablo'),
(5, 0, 'EdesurAlta', '2016-12-01', 1234, 'juan pablo'),
(6, 1010, 'EdesurAlta', '2017-12-21', 10101000, 'juan pablo'),
(7, 123, 'Cablevision', '2017-01-12', 312, 'juan pablo');

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
(0, 'juan pablo', 1, 1),
(0, 'cecilia', 1, 0),
(0, 'daniela', 1, 0),
(0, 'sabrina', 1, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `histlogin`
--
ALTER TABLE `histlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `histloginfail`
--
ALTER TABLE `histloginfail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
