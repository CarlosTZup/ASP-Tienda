-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-08-2020 a las 03:02:22
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--
CREATE DATABASE IF NOT EXISTS `proyecto` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `proyecto`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditcard`
--

CREATE TABLE `creditcard` (
  `ID` int(11) NOT NULL,
  `Tipo_tarjeta` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `creditcard`
--

INSERT INTO `creditcard` (`ID`, `Tipo_tarjeta`) VALUES
(1, 'MasterCard'),
(2, 'Visa'),
(3, 'Other');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gender`
--

CREATE TABLE `gender` (
  `id_gender` int(11) NOT NULL,
  `Genero` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `gender`
--

INSERT INTO `gender` (`id_gender`, `Genero`) VALUES
(1, 'Masculine'),
(2, 'Feminine'),
(3, 'Other');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paymethod`
--

CREATE TABLE `paymethod` (
  `ID` int(10) NOT NULL,
  `User_type` int(16) NOT NULL,
  `Number_card` varchar(250) NOT NULL,
  `Mes` text NOT NULL,
  `Año` int(4) NOT NULL,
  `Security_code` int(4) NOT NULL,
  `Name` text NOT NULL,
  `LastName` text NOT NULL,
  `Dinero` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paymethod`
--

INSERT INTO `paymethod` (`ID`, `User_type`, `Number_card`, `Mes`, `Año`, `Security_code`, `Name`, `LastName`, `Dinero`) VALUES
(1, 3, 'QvAlbl5u17k1X74EQY6y1p0E9GuoG8tCrCCna8fGNhE=', 'May', 2025, 8965, 'Lionel', 'Morales', '75.26'),
(2, 2, '79xJBz4HfXi6kh7NcyUdR1SXYDhLWZXJFZEFUR+hgIE=', 'March', 2023, 7458, 'Rodrigo', 'Murdock', '4.59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `ID` int(10) NOT NULL,
  `Marca` text NOT NULL,
  `Producto` text NOT NULL,
  `Precio` varchar(50) NOT NULL,
  `Cantidad` varchar(50) NOT NULL,
  `Address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`ID`, `Marca`, `Producto`, `Precio`, `Cantidad`, `Address`) VALUES
(1, 'Laca Laca', 'Burrito', '6.50', '60000', 'Calle Carretas'),
(3, 'Pizza Hut', 'Pizza', '11.50', '80000', 'Calle World Street'),
(4, 'Bimbo', 'Pan', '2.69', '123456', 'Avenie'),
(5, 'xd', 'papas', '42.69', '00005', 'casa del xd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rest_info`
--

CREATE TABLE `rest_info` (
  `id_restrole` int(11) NOT NULL,
  `rest_name` varchar(50) NOT NULL,
  `rest_address` text NOT NULL,
  `rest_email` varchar(50) NOT NULL,
  `rest_cellphone` int(8) NOT NULL,
  `rest_owner_name` varchar(50) NOT NULL,
  `rest_password` varchar(50) NOT NULL,
  `type_rest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rest_info`
--

INSERT INTO `rest_info` (`id_restrole`, `rest_name`, `rest_address`, `rest_email`, `rest_cellphone`, `rest_owner_name`, `rest_password`, `type_rest`) VALUES
(1, 'Antojitos', 'Calle Carretas', '', 78945612, 'Joao Cancelo', 'Z6XGwtxh6cGO5cr30JMI/Q==', 0),
(2, 'lol', 'su casa', '', 74771130, 'mario', '+IUf+NJucMqOJtV20nSD2Q==', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rest_type`
--

CREATE TABLE `rest_type` (
  `id_restype` int(11) NOT NULL,
  `rest_type` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_info`
--

CREATE TABLE `user_info` (
  `User_ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `User_Pass` varchar(50) NOT NULL,
  `User_Gender` int(11) NOT NULL,
  `Address` text NOT NULL,
  `Cellphone` int(8) NOT NULL,
  `User_Birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `creditcard`
--
ALTER TABLE `creditcard`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id_gender`);

--
-- Indices de la tabla `paymethod`
--
ALTER TABLE `paymethod`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `rest_info`
--
ALTER TABLE `rest_info`
  ADD PRIMARY KEY (`id_restrole`),
  ADD KEY `type_rest` (`type_rest`);

--
-- Indices de la tabla `rest_type`
--
ALTER TABLE `rest_type`
  ADD PRIMARY KEY (`id_restype`) USING BTREE;

--
-- Indices de la tabla `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `user_gender` (`User_Gender`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `creditcard`
--
ALTER TABLE `creditcard`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `paymethod`
--
ALTER TABLE `paymethod`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rest_info`
--
ALTER TABLE `rest_info`
  MODIFY `id_restrole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rest_type`
--
ALTER TABLE `rest_type`
  MODIFY `id_restype` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_info`
--
ALTER TABLE `user_info`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `rest_type`
--
ALTER TABLE `rest_type`
  ADD CONSTRAINT `rest_type_ibfk_1` FOREIGN KEY (`id_restype`) REFERENCES `rest_info` (`type_rest`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `user_info`
--
ALTER TABLE `user_info`
  ADD CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`User_Gender`) REFERENCES `gender` (`id_gender`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
