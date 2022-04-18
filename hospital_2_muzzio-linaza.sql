-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2022 a las 15:01:34
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
-- Base de datos: `hospital`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `médicos`
--

CREATE TABLE `médicos` (
  `Código del doctor` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Especialidad` varchar(30) NOT NULL,
  `Direcciòn` varchar(50) NOT NULL,
  `Telefono` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `médicos`
--

INSERT INTO `médicos` (`Código del doctor`, `Nombre`, `Especialidad`, `Direcciòn`, `Telefono`) VALUES
(1, 'Dra.Sanz', 'Internista', 'Calle 4#23-12', 127),
(2, 'Dr.Perez', 'Traumatologo', 'Cra 3#7-98', 127),
(3, 'Dr.Fernandez', 'Internista', 'Calle 56#98-76', 127),
(4, 'Dr.Alonso', 'Cardiologo', 'Cra 25#45-19', 127),
(5, 'Dr.Garcia', 'Hepatologia', 'Cra 71 #7-93', 127),
(6, 'Dr.Nuñez', 'Neurologia', 'Calle 32#90-21', 127),
(8, 'Dra.Quiroga', 'Pediatria', 'Cra 78#3-45', 127),
(9, 'Dr.Latorre', 'Pediatria', 'Calle 74#24-56', 127),
(10, 'Dr.Lopez', 'Ginicologia', 'Cra 21#70-94', 127),
(11, 'Dra.Campo', 'Opstetra', 'Calle 20#49-51', 127);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `Código del paciente` int(11) NOT NULL,
  `Diagnóstico` varchar(30) NOT NULL,
  `Fecha de Visita` date NOT NULL,
  `Tratamiento` varchar(50) NOT NULL,
  `Código del doctor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `visitas`
--

INSERT INTO `visitas` (`Código del paciente`, `Diagnóstico`, `Fecha de Visita`, `Tratamiento`, `Código del doctor`) VALUES
(1, 'Apendicitis', '2008-12-16', 'Cirugía', 1),
(2, 'Artritis', '2009-01-07', 'Cirugía', 2),
(4, 'Diabetes', '2009-02-09', 'Dieta baja en azúcar', 4),
(5, 'Gripe', '2009-02-10', 'Acetaminofen', 5),
(6, 'Sarampion', '2009-02-11', 'Sinus', 6),
(7, 'Sinusitis', '2009-03-12', 'Acetaminofen', 7),
(8, 'Cirrosis', '2009-03-13', 'Clamoxil', 8),
(9, 'Amigdalitis', '2009-03-14', 'Clamoxil', 9),
(10, 'Anemia', '2009-04-15', 'Purgante', 10),
(11, 'Migraña', '2009-04-16', 'Acetaminofen', 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `médicos`
--
ALTER TABLE `médicos`
  ADD PRIMARY KEY (`Código del doctor`);

--
-- Indices de la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`Código del paciente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `médicos`
--
ALTER TABLE `médicos`
  MODIFY `Código del doctor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `visitas`
--
ALTER TABLE `visitas`
  MODIFY `Código del paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
