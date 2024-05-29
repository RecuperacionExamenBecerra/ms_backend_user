-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2024 a las 15:41:26
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_BuscarUsuario` (IN `_USUARIO` VARCHAR(100))   BEGIN

SELECT USUARIO, CLAVE, NOMBRE, ID FROM USUARIOS WHERE USUARIO = _USUARIO LIMIT 1;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CrearUsuario` (IN `_NOMBRE` VARCHAR(100), IN `_USUARIO` VARCHAR(100), IN `_CLAVE` VARCHAR(500))  NO SQL BEGIN

INSERT INTO USUARIOS (NOMBRE, USUARIO, CLAVE)
VALUES (_NOMBRE, _USUARIO, _CLAVE);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_EliminarUsuario` (IN `_ID` INT)  NO SQL BEGIN

DELETE FROM USUARIOS WHERE ID = _ID;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ListarUsuario` ()  NO SQL BEGIN

SELECT NOMBRE,USUARIO,CLAVE
FROM USUARIOS;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ModificarUsuario` (IN `_ID` INT, IN `_NOMBRE` VARCHAR(100), IN `_USUARIO` VARCHAR(100), IN `_CLAVE` VARCHAR(500))  NO SQL BEGIN

UPDATE USUARIOS SET NOMBRE = _NOMBRE,
USUARIO = _USUARIO,
CLAVE = _CLAVE WHERE ID = _ID;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_MostrarUsuario` (IN `_ID` INT)  NO SQL BEGIN

SELECT NOMBRE,USUARIO,CLAVE
FROM USUARIOS WHERE ID = _ID;
	
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_proveedor` int(11) NOT NULL,
  `usuario` varchar(250) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `clave` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_proveedor`, `usuario`, `nombre`, `clave`) VALUES
(1, '1', 'pepito', '1'),
(2, '2', 'jose', '$2b$04$hhMUTW5SIgQVgA98sTfl9.yQYoS6sAPEOXI5jqAUypKjQiDITIGSO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
