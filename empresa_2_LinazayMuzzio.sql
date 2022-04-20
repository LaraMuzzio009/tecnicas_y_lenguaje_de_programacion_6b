-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2022 a las 19:37:50
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
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE `conductores` (
  `CodC` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Localidad` varchar(30) NOT NULL,
  `Categ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conductores`
--

INSERT INTO `conductores` (`CodC`, `Nombre`, `Localidad`, `Categ`) VALUES
('C01', 'Jose Sanchez', 'Arganda', 18),
('C02', 'Manuel Diaz', 'Arganda', 15),
('C03', 'Juan Perez', 'Rivas', 20),
('C04', 'Luis Ortiz', 'Arganda', 18),
('C05', 'Javier Martin', 'Loeches', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquinas`
--

CREATE TABLE `maquinas` (
  `CodM` varchar(10) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `PrecioHora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `maquinas`
--

INSERT INTO `maquinas` (`CodM`, `Nombre`, `PrecioHora`) VALUES
('M01', 'Excavadora', 15000),
('M02', 'Hormigonera', 10000),
('M03', 'Volquete', 11000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `CodP` varchar(30) NOT NULL,
  `Descrip` varchar(30) NOT NULL,
  `Localidad` varchar(30) NOT NULL,
  `Cliente` varchar(30) NOT NULL,
  `Telefono` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`CodP`, `Descrip`, `Localidad`, `Cliente`, `Telefono`) VALUES
('P01', 'Garage', 'Arganda', 'Felipe Sol', 600111111),
('P03', 'Garage', 'Arganda', 'Rosa Lopez', 666999666),
('P02', 'Solado', 'Rivas', 'Jose Perez', 9122222222),
('P04', 'Techado', 'Loeches', 'Jose Perez', 9133333333);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos`
--

CREATE TABLE `trabajos` (
  `CodC` varchar(10) NOT NULL,
  `CodP` varchar(10) NOT NULL,
  `CodM` varchar(10) NOT NULL,
  `Fecha` date NOT NULL,
  `Tiempo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajos`
--

INSERT INTO `trabajos` (`CodC`, `CodP`, `CodM`, `Fecha`, `Tiempo`) VALUES
('C02', 'M03', 'P01', '2002-09-10', 100),
('C03', 'M01', 'P02', '2002-09-10', 200),
('C05', 'M03', 'P02', '2002-09-10', 150),
('C04', 'M03', 'P02', '2002-09-10', 90),
('C01', 'M02', 'P02', '2002-09-12', 120),
('C02', 'M03', 'P03', '2002-09-13', 30),
('C03', 'M01', 'P04', '2002-09-15', 300),
('C02', 'M03', 'P02', '2002-09-15', 0),
('C01', 'M03', 'P04', '2002-09-15', 180),
('C05', 'M03', 'P04', '2002-09-15', 90),
('C01', 'M02', 'P04', '2002-09-17', 0),
('C02', 'M03', 'P01', '2002-09-18', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`CodC`),
  ADD KEY `CodC` (`CodC`);

--
-- Indices de la tabla `maquinas`
--
ALTER TABLE `maquinas`
  ADD PRIMARY KEY (`Nombre`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`Telefono`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
