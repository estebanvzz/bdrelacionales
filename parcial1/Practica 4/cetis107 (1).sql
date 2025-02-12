-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2025 a las 00:39:21
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `no_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `no_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Ramon Esteban', 'Valenzuela Zavala', '23325061070716', '2008-09-06', 1, 'ramon.valenzuela23@cetis107.edu.mx', '6672298375'),
(2, 'Luis Mario', 'Carrillo Vega', '23325061070678', '2008-09-10', 1, 'luis.carrillo23@cetis107.edu.mx', '6971130887'),
(3, 'Emiliano', 'Ojeda Quintero', '23325061070702', '2008-04-28', 1, 'emiliano.ojeda23@cetis107.edu.mx', '6671016955'),
(4, 'Ever Yuriel', 'Torres Landeros', '23325061070614', '2008-04-04', 1, 'yuriel.torres23@cetis107.edu.mx', '6672594359'),
(5, 'Juan Alberto', 'Trejo Alvarado', '23325061070715', '2008-08-22', 1, 'juan.trejo23@cetis107.edu.mx', '6671597532'),
(6, 'Lizeth', 'Salcido Ramirez', '23325061070721', '2008-03-13', 2, 'lizeth.salcido@cetis107.edu.mx', '6671987119'),
(7, 'Angel Gibran', 'Loaiza Garcia', '233250061070694', '2008-08-26', 1, 'angel.loaiza23@cetis107.edu.mx', '6671451436'),
(8, 'Isaac', 'Salomon Rendon', '2332506107610', '2008-06-08', 1, 'isaac.salomon23@cetis107.edu.mx', '6677910586'),
(9, 'Mateo', 'Ibarra Gastelum', '23325061070484', '2008-06-23', 1, 'mateo.ibarra23@cetis107.edu.mx', '6672587456'),
(10, 'Oscar Ivan', 'Torres Burgos', '23325061070510', '2008-08-22', 1, 'oscar.torres23@cetis107.edu.mx', '6679872584'),
(11, 'Sergio Braulio', 'Martines Felix', '23325061070438', '2008-02-06', 1, 'sergio.martines', '6671593576'),
(12, 'Jorge Luis', 'Arreola Soto', '23325061070466', '2008-02-06', 1, 'jose.arreola23@cetis107.edu.mx', '6673579514');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `Descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `Descripcion`) VALUES
(1, 'Programacion', 'Programación es relevante porque: contribuye a la formación de personas capaces de\r\nintegrarse a un mercado laboral dinámico y de alta demanda, que esta a la vanguardia en el uso de la tecnología y que contribuye a la\r\ntransformación digital de los sectores productivos en el país.'),
(2, 'Contabilidad', 'contabilidad es relevante porque: en la actualidad todo ente económico\r\nrequiere los servicios de un especialista, que lleve a cabo el registro sistemático de las operaciones económicas de entidades comerciales,\r\nindustriales y de servicios, en un sistema manual y electrónico a través de software es'),
(3, 'ofimatica', 'Es relevante porque ofrece las competencias profesionales que permiten al estudiante realizar actividades dirigidas a informacion de manera digital'),
(4, 'Electronica', 'Contribuye en la capacitacion y superacion profesional de los estudiantes para tener mejores expectativas de vida'),
(5, 'Construccion', 'Es relevantes porque las inversiones del sector publico en vivienda e infraestructura son cada vez mayores.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Genero` tinyint(1) NOT NULL,
  `Fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `nombre`, `Correo`, `Genero`, `Fecha_nacimiento`) VALUES
(1, 'Luis Carlos', 'luis.carlos23@cetis107.edu.mx', 1, '1988-09-05'),
(2, 'Pedro', 'pero23@cetis107.edu.mx', 1, '0000-00-00'),
(3, 'Maria Teresa', 'maria.teresa23@cetis107.edu.mx', 2, '1990-08-05'),
(4, 'Liliana', 'liliana23@cetis107.edu.mx', 2, '0000-00-00'),
(5, 'Ivan Fernando', 'ivan.fernando23@cetis107.edu.mx', 1, '1985-11-11'),
(6, 'Jorge Ibarra', 'jorge.ibarra23@cetis107.edu.mx', 1, '1969-12-12'),
(7, 'Enoc Hernandez', 'enoc.hernandez23@cetis107.edu.mx', 1, '1986-12-12'),
(8, 'Maria De Jesus', 'maria.jesus23@cetis107.edu.mx', 2, '1984-11-12'),
(9, 'Francisco Rochin', 'francisco.rochin23@cetis107.edu.mx', 1, '1980-06-04'),
(10, 'Flordayn Mendoza', 'flordayn.mendoza23@cetis107.edu.mx', 2, '1977-04-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(1, 'Ciencias sociales', 4),
(2, 'Matematicas', 4),
(3, 'ingles', 4),
(4, 'historia', 4),
(5, 'Recursos socioemocionales', 4),
(6, 'base de datos no relacionales', 4),
(7, 'Base de datos relacionales', 4),
(8, 'Reacciones quimicas', 4),
(9, 'Tutorias', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
