-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-03-2022 a las 18:43:41
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
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `DNI` int(11) NOT NULL,
  `teléfono` int(11) DEFAULT NULL,
  `Domicilio` varchar(50) NOT NULL,
  `Edad` int(11) DEFAULT NULL,
  `Fecha_nac` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellido`, `DNI`, `teléfono`, `Domicilio`, `Edad`, `Fecha_nac`) VALUES
(2, 'Mariana', 'Lopez', 29347122, 4850078, 'Santa Rosa 560', 28, '1997-04-14'),
(3, 'Camila', 'Linaza', 46372933, 152883098, 'Bv.Iliia 413', 16, '2005-04-08'),
(4, 'Lara', 'Muzzio', 46309949, 153549195, 'Independencia 209', 17, '2005-02-19'),
(5, 'Veronica', 'Olmos', 30233245, 156079843, 'Aconquija 2455', 38, '1983-07-16'),
(6, 'Norma', 'Aguirre', 20563409, 156454137, 'Independencia 209', 50, '1972-04-02'),
(7, 'Javier', 'Linaza', 28244332, 156018847, 'Bv.Illia 413', 41, '1980-09-21'),
(8, 'Alejandro', 'Muzzio', 20456921, 155946962, 'Independencia 209', 62, '1959-12-04'),
(9, 'Juliana', 'Montenegro', 59954633, 15362075, 'Aconquija 2455', 2, '2019-07-10'),
(10, 'Bibiana ', 'Aguirre', 20458791, 155733060, 'La Pampa 456', 62, '1959-12-03'),
(11, 'Gastón', 'Olmos', 35697802, 152825691, 'Roma 1273', 33, '1988-09-08'),
(12, 'Lourdes', 'Muzzio', 45304678, 152803766, 'Rio Negro 588', 19, '2003-12-15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
