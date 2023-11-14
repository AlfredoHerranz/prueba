-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2021 a las 21:59:44
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DROP DATABASE IF EXISTS empresa;
CREATE DATABASE empresa;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bocetos`
--

CREATE TABLE `bocetos` (
  `marca` varchar(15) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `fabricado` int(1) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bocetos`
--

INSERT INTO `bocetos` (`marca`, `descripcion`, `fabricado`, `email`) VALUES
('Cronometrus', 'Lapicero de color azul y blanco decorado con corazoncitos verdes.', 1, 'galope2021@yahoo.es'),
('jorgeus', 'lAPICERO DE ORO CON COLORES DE ROJO, AMARILLO Y AZUL COMO EL ARCO IRIS.', 1, 'emodelos2009@gmail.com'),
('ORTEGUS', 'LAs barbars de tu vecino quemas pon las tuyas a remojar.', 1, 'viento2021@hotmail.com'),
('SHUMARCKER', 'jk', 1, 'sfc@HOTMAIL.COM'),
('SMIRRUS', 'Lapicero de color roo y vede de abril en trece años y triunfanmos en .', 1, 'pancho2021@yahoo.es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `cod_depto` char(2) NOT NULL,
  `descripcion` varchar(25) DEFAULT NULL,
  `sede` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`cod_depto`, `descripcion`, `sede`) VALUES
('01', 'SERVICIOS CENTRALES', 'Madrid'),
('02', 'SUCURSALES ESPECIALES', 'Sevilla'),
('03', 'SERVICIOS DE APOYO', 'Roma');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `cod_producto` char(2) NOT NULL,
  `descripcion` varchar(20) DEFAULT NULL,
  `color` varchar(12) DEFAULT NULL,
  `longitud` float DEFAULT NULL,
  `pvp` float DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  `puntos` float(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`cod_producto`, `descripcion`, `color`, `longitud`, `pvp`, `ciudad`, `puntos`) VALUES
('01', 'EDDING', 'ROJO', 12, 1500, 'BERLIN', 9.05),
('02', 'STAEDLER', 'AZUL', 8, 30000, 'ESTOCOLMO', 8.75),
('03', 'ALPINO', 'BLANCO', 29, 2000, 'MADRID', 6.89),
('04', 'CARIOCA', 'NEGRO', 10, 6000, 'MADRID', 7.25),
('05', 'GUTEMBERG', 'ROJO', 11, 70, 'BERLIN', 9.85),
('06', 'TORTELLINI', 'ROJO', 2, 100, 'ROMA', 5.25),
('07', 'ADIOR', 'ROJO', 10, 45000, 'PARIS', 9.99),
('08', 'ALLURE', 'AZUL', 8, 2500, 'PARIS', 8.00),
('09', 'PENCIL', 'AZUL', 6, 70, 'LONDRES', 4.00),
('10', 'CRAYON', 'NEGRO', 9, 5000, 'PARIS', 4.50),
('11', 'CHENCHU', 'AMARILLO', 70, 1500, 'TOKIO', 5.01),
('12', 'CHINLU', 'GRIS', 8, 60, 'HONG_KONG', 3.00),
('13', 'KITIMORO', 'GRIS', 6, 30, 'TOKIO', 7.00),
('14', 'CIBELES', 'AZUL', 15, 3000, 'MADRID', 2.35),
('15', 'EDDING', 'AZUL', 15, 3000, 'MADRID', 9.99),
('16', 'CARIOCA', 'AZUL', 15, 3000, 'MADRID', 3.45),
('17', 'ALPINO', 'AZUL', 15, 3000, 'MADRID', 8.10),
('18', 'INOXCROM', 'AZUL', 15, 3000, 'MADRID', 7.15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiendas`
--

CREATE TABLE `tiendas` (
  `cod_tienda` char(2) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tiendas`
--

INSERT INTO `tiendas` (`cod_tienda`, `nombre`, `ciudad`) VALUES
('T1', 'EL CORTE INGLES', 'MADRID'),
('T2', 'MONTSERRAT', 'BARCELONA'),
('T3', 'PUERTA DEL SOL', 'MADRID'),
('T4', 'CARLA DE ALBA', 'SEVILLA'),
('T5', 'PASARELA CIBELES', 'MADRID'),
('T6', 'BAZAR EXPO', 'SEVILLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `login` varchar(5) NOT NULL,
  `password` varchar(80) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`login`, `password`, `email`) VALUES
('A-001', '$2y$10$cDfJpeKY5BJGCMR1LRUuT.MmbvoweztFW9ouBDobBqmU1pQY6fRAW', 'molinillo2021@gmail.com'),
('A-002', '$2y$10$MOP9G2ao8x8jJqCJXpEOCOASG2U3MRDS6CKuHz1jzPRWI3ylwJFP2', 'emodelos2009@gmail.com'),
('A-003', '$2y$10$49SSLA6DT3Sssq2QcOZe.eEsS7y7Pu8vFJjhFKyYdn2q9ghH5wyx.', 'quijote2021@hotmail.com'),
('A-004', '$2y$10$xQRX9id9luSfR52YwbvWkeZU5cdonLJEfdEUyOh0P6MKDrMHkx3H.', 'pancho2021@yahoo.es'),
('A-005', '$2y$10$abnZgXVcLc9zqwptnII3huhNnnskl/r9ypSJYdTXpJbCz5PMLqT4W', 'viento2021@hotmail.com'),
('A-006', '$2y$10$enC8WKv2KZ2B7XtR/eu1C.7qy7LBwsUSeNGAqe7dsq8yqrqhTzifq', 'galope2021@yahoo.es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `cod_vendedor` varchar(5) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `cat` varchar(10) DEFAULT NULL,
  `salario` float DEFAULT NULL,
  `cod_depto` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`cod_vendedor`, `nombre`, `cat`, `salario`, `cod_depto`) VALUES
('A-001', 'JAVIER SANCHEZ', 'DIRECTOR', 250000, '01'),
('A-002', 'ELENA GUTIERREZ', 'SECRETARIA', 100000, '01'),
('A-003', 'ANGEL HERNANDEZ', 'GERENTE', 175000, '02'),
('A-004', 'ROSA ANGUIANO', 'COMERCIAL', 150000, '02'),
('A-005', 'MARIA BERNAL', 'SECRETARIA', 90000, '03'),
('A-006', 'MIGUEL SANTAMARIA', 'COMERCIAL', 150000, '03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `cod_vendedor` varchar(5) NOT NULL,
  `cod_producto` char(2) NOT NULL,
  `cod_tienda` char(2) NOT NULL,
  `cantidad` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`cod_vendedor`, `cod_producto`, `cod_tienda`, `cantidad`) VALUES
('A-002', '05', 'T2', 1),
('A-002', '05', 'T3', 2),
('A-002', '05', 'T4', 1),
('A-002', '14', 'T2', 1),
('A-002', '15', 'T2', 1),
('A-002', '15', 'T3', 1),
('A-002', '16', 'T2', 1),
('A-003', '01', 'T1', 2),
('A-003', '02', 'T3', 10),
('A-003', '14', 'T2', 1),
('A-003', '16', 'T2', 1),
('A-004', '02', 'T3', 3),
('A-004', '05', 'T1', 4),
('A-005', '01', 'T2', 9),
('A-005', '01', 'T3', 1),
('A-005', '15', 'T2', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bocetos`
--
ALTER TABLE `bocetos`
  ADD PRIMARY KEY (`marca`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`cod_depto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`cod_producto`);

--
-- Indices de la tabla `tiendas`
--
ALTER TABLE `tiendas`
  ADD PRIMARY KEY (`cod_tienda`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`login`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`cod_vendedor`),
  ADD KEY `cod_depto` (`cod_depto`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`cod_vendedor`,`cod_producto`,`cod_tienda`),
  ADD KEY `cod_producto` (`cod_producto`),
  ADD KEY `cod_tienda` (`cod_tienda`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD CONSTRAINT `vendedores_ibfk_1` FOREIGN KEY (`cod_depto`) REFERENCES `departamentos` (`cod_depto`),
  ADD CONSTRAINT `vendedores_ibfk_2` FOREIGN KEY (`cod_vendedor`) REFERENCES `usuarios` (`login`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cod_vendedor`) REFERENCES `vendedores` (`cod_vendedor`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`cod_producto`) REFERENCES `productos` (`cod_producto`),
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`cod_tienda`) REFERENCES `tiendas` (`cod_tienda`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
