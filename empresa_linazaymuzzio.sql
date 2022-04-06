-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-04-2022 a las 19:48:50
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa_linazaymuzzio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `T#` varchar(30) NOT NULL,
  `Tnombre` varchar(30) NOT NULL,
  `Ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`T#`, `Tnombre`, `Ciudad`) VALUES
('T1', 'Clasificadora', 'Madrid'),
('T2', 'Perforadora', 'Malaga'),
('T3', 'Lectora', 'Caceres'),
('T4', 'Consola', 'Caceres'),
('T5', 'Mezcladora', 'Sevilla'),
('T6', 'Terminal', 'Barcelona');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentes`
--

CREATE TABLE `componentes` (
  `C#` varchar(30) NOT NULL,
  `Cnombre` varchar(30) NOT NULL,
  `Color` varchar(30) NOT NULL,
  `Peso` int(30) NOT NULL,
  `Ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `componentes`
--

INSERT INTO `componentes` (`C#`, `Cnombre`, `Color`, `Peso`, `Ciudad`) VALUES
('C1', 'X3A', 'Rojo', 12, 'Sevilla'),
('C3', 'C4B', 'Azul', 17, 'Malaga'),
('C4', 'C4B', 'Rojo', 14, 'Sevilla'),
('C5', 'VT8', 'Azul', 12, 'Madrid'),
('C6', 'C30', 'Rojo', 19, 'Sevilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `P#` varchar(30) NOT NULL,
  `C#` varchar(30) NOT NULL,
  `T#` varchar(30) NOT NULL,
  `Cantidad` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`P#`, `C#`, `T#`, `Cantidad`) VALUES
('P1', 'C1', 'T1', 200),
('P2', 'C3', 'T1', 400),
('P2', 'C3', 'T2', 200),
('P2', 'C3', 'T3', 200),
('P2', 'C3', 'T4', 500),
('P2', 'C3', 'T5', 600),
('P2', 'C3', 'T6', 400),
('P2', 'C3', 'T7', 800),
('P2', 'C5', 'T2', 100),
('P3', 'C3', 'T1', 200),
('P3', 'C4', 'T2', 500),
('P4', 'C6', 'T3', 300),
('P4', 'C6', 'T7', 300),
('P5', 'C2', 'T2', 200),
('P5', 'C2', 'T4', 100),
('P5', 'C5', 'T4', 500),
('P5', 'C5', 'T7', 100),
('P5', 'C6', 'T2', 200),
('P5', 'C1', 'T4', 100),
('P5', 'C3', 'T4', 200),
('P5', 'C4', 'T4', 800),
('P5', 'C5', 'T5', 400),
('P5', 'C6', 'T4', 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provedores`
--

CREATE TABLE `provedores` (
  `P#` varchar(30) NOT NULL,
  `Pnombre` varchar(30) NOT NULL,
  `Categoria` int(30) NOT NULL,
  `Ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provedores`
--

INSERT INTO `provedores` (`P#`, `Pnombre`, `Categoria`, `Ciudad`) VALUES
('P1', 'Carlos', 20, 'Sevilla'),
('P2', 'Juan', 10, 'Madrid'),
('P3', 'Jose', 30, 'Sevilla'),
('P4', 'Inma', 20, 'Sevilla');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`T#`);

--
-- Indices de la tabla `componentes`
--
ALTER TABLE `componentes`
  ADD PRIMARY KEY (`C#`);

--
-- Indices de la tabla `provedores`
--
ALTER TABLE `provedores`
  ADD PRIMARY KEY (`P#`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
