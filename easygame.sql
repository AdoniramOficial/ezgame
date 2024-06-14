-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 14-05-2024 a las 23:24:57
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `easygame`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `APaterno` varchar(50) NOT NULL,
  `AMaterno` varchar(50) NOT NULL,
  `dirreccion` varchar(60) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(60) DEFAULT NULL,
  `pais` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `APaterno`, `AMaterno`, `dirreccion`, `telefono`, `correo`, `pais`) VALUES
(1, 'david', 'rodriguez', 'rebolledo', 'USA, O.Connerville,782 Alejandra Union Apt.489', '5514879023', 'vikey123@gmail.com', 'M'),
(2, 'josue', 'aco', 'marinez', 'USA, O.Connerville,782 Alejandra Union Apt.489', '6512487936', 'josue23@hotmail.com', 'mexico'),
(3, 'angel', 'alvarez', 'villegas', 'Calle 80 F 140 b 45', '5514879023', 'angel876@gmail.com', 'mexico'),
(4, 'cesar', 'manzanarez', 'ortiz', 'Calle 50 C bis 66 15', '5621484610', 'cesarmanor@hotmail.com', 'USA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE IF NOT EXISTS `empleado` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `APaterno` varchar(50) NOT NULL,
  `AMaterno` varchar(50) NOT NULL,
  `curp` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dirreccion` varchar(60) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id`, `nombre`, `APaterno`, `AMaterno`, `curp`, `dirreccion`, `telefono`, `correo`) VALUES
(36, 'david', 'rodriguez', 'rebolledo', 'RORD020114H', 'USA, O.Connerville,782 Alejandra Union Apt.489', '6512487936', 'vikey123@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`, `reg_date`) VALUES
(1, 'easygame', '2024-05-05 11:15:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `costo` varchar(10) NOT NULL,
  `Empresa` varchar(30) NOT NULL,
  `clasificacion` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `costo`, `Empresa`, `clasificacion`) VALUES
(1, 'call of duty', '1200', 'activicion', 'suscripcion de paga'),
(2, 'supersmashbros', '800', 'nintendo', 'suscripcion de paga');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE IF NOT EXISTS `proveedor` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `APaterno` varchar(50) NOT NULL,
  `AMaterno` varchar(50) NOT NULL,
  `dirreccion` varchar(60) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(60) DEFAULT NULL,
  `empresa` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `nombre`, `APaterno`, `AMaterno`, `dirreccion`, `telefono`, `correo`, `empresa`) VALUES
(1, 'leonardo', 'rodriguez', 'suarez', 'Calle 50 C bis 66 15', '5648172033', 'leonardo@homail.com', 'ubisoft');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
