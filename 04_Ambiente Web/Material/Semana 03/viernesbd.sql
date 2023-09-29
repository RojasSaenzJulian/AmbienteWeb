-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 03-06-2023 a las 04:32:59
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `viernesbd`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `RegistrarUsuario` (IN `pIdentificacion` VARCHAR(20), IN `pNombre` VARCHAR(100), IN `pCorreo` VARCHAR(50), IN `pContrasenna` VARCHAR(25))   BEGIN

INSERT INTO `viernesbd`.`usuarios`(`Identificacion`,`Nombre`,`Correo`,`Contrasenna`,`Estado`)
VALUES (pIdentificacion,pNombre,pCorreo,pContrasenna,1);

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Identificacion` varchar(20) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Contrasenna` varchar(25) NOT NULL,
  `Estado` bit(1) NOT NULL,
  `IdUsuario` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Identificacion`, `Nombre`, `Correo`, `Contrasenna`, `Estado`, `IdUsuario`) VALUES
('304590415', 'EDUARDO JOSE CALVO CASTILLO', 'ecalvo90415@ufide.ac.cr', '90415', b'1', 2),
('304590416', 'JEAN CARLO', 'jeancarlo@ufide.ac.cr', 'php', b'1', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IdUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `IdUsuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
