-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2024 a las 19:18:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bodega`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id_detalle` int(11) NOT NULL,
  `cantidad_productos` int(11) NOT NULL,
  `costo_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL,
  `ano_creacion` varchar(255) NOT NULL,
  `nit` varchar(25) NOT NULL,
  `nombre_marca` varchar(25) NOT NULL,
  `sede_principal` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `fechayhora` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `cantidad_bodega` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `fotografia` varchar(255) NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `precio_unitario` int(11) NOT NULL,
  `referencia` varchar(25) NOT NULL,
  `talla` varchar(10) NOT NULL,
  `id_detalle` int(11) DEFAULT NULL,
  `id_marca` int(11) DEFAULT NULL,
  `id_tipo_prenda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `cantidad_bodega`, `descripcion`, `fotografia`, `nombre_producto`, `precio_unitario`, `referencia`, `talla`, `id_detalle`, `id_marca`, `id_tipo_prenda`) VALUES
(1, 100, 'muy bueno', 'gs://gestion-app-f9a16.appspot.com/zapatos_jisus.webp', 'arroz con leche', 50000, 'yhjkuk', 'M', NULL, NULL, NULL),
(2, 100, 'muy bueno', 'gs://gestion-app-f9a16.appspot.com/blusa_verde_Lima_mujer_americanino.jpg', 'arroz con leche', 50000, 'yhjkuk', 'M', NULL, NULL, NULL),
(3, 100, 'muy bueno', 'gs://gestion-app-f9a16.appspot.com/camisa_negra_americanino.jpg', 'arroz con leche', 50000, 'yhjkuk', 'M', NULL, NULL, NULL),
(4, 100, 'muy bueno', 'gs://gestion-app-f9a16.appspot.com/camisa_roja_mujer_americanino.jpg', 'arroz con leche', 50000, 'yhjkuk', 'M', NULL, NULL, NULL),
(5, 100, 'muy bueno', 'gs://gestion-app-f9a16.appspot.com/camisa_verde_lima_mujer_americanino.jpg', 'arroz con leche', 50000, 'yhjkuk', 'M', NULL, NULL, NULL),
(6, 100, 'muy bueno', 'gs://gestion-app-f9a16.appspot.com/camisa_verde_lima_mujer_americanino.jpg', 'arroz con leche', 50000, 'yhjkuk', 'M', NULL, NULL, NULL),
(7, 100, 'muy bueno', 'gs://gestion-app-f9a16.appspot.com/camiseta_blanca_americanino.webp', 'arroz con leche', 50000, 'yhjkuk', 'M', NULL, NULL, NULL),
(8, 100, 'muy bueno', 'gs://gestion-app-f9a16.appspot.com/camiseta_blanca_mujer_americanino.jpg', 'arroz con leche', 50000, 'yhjkuk', 'M', NULL, NULL, NULL),
(9, 100, 'muy bueno', 'gs://gestion-app-f9a16.appspot.com/camiseta_gris_americanino.webp', 'arroz con leche', 50000, 'yhjkuk', 'M', NULL, NULL, NULL),
(10, 100, 'muy bueno', 'gs://gestion-app-f9a16.appspot.com/camiseta_naranja_americanino.webp', 'arroz con leche', 50000, 'yhjkuk', 'M', NULL, NULL, NULL),
(11, 100, 'muy bueno', 'gs://gestion-app-f9a16.appspot.com/camiseta_negra_americanino.webp', 'arroz con leche', 50000, 'yhjkuk', 'M', NULL, NULL, NULL),
(12, 100, 'muy bueno', 'gs://gestion-app-f9a16.appspot.com/camiseta_verde-militar_americanino.webp', 'arroz con leche', 50000, 'yhjkuk', 'M', NULL, NULL, NULL),
(13, 100, 'muy bueno', 'gs://gestion-app-f9a16.appspot.com/camiseta_verde-militar_americanino.webp', 'arroz con leche', 50000, 'yhjkuk', 'M', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_prenda`
--

CREATE TABLE `tipo_prenda` (
  `id_tipo_prenda` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `codigo_postal` varchar(30) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `departamento` varchar(20) NOT NULL,
  `direccion` varchar(20) NOT NULL,
  `medio_pago` varchar(10) NOT NULL,
  `municipio` varchar(20) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `sexo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id_detalle`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `FK3twklc5q92cp6c7i9wjy9o36q` (`id_detalle`),
  ADD KEY `FKc1mrc7r89nch4xtol227kdwce` (`id_marca`),
  ADD KEY `FK19rjdrn8fq6kxhrwms1di5h7e` (`id_tipo_prenda`);

--
-- Indices de la tabla `tipo_prenda`
--
ALTER TABLE `tipo_prenda`
  ADD PRIMARY KEY (`id_tipo_prenda`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tipo_prenda`
--
ALTER TABLE `tipo_prenda`
  MODIFY `id_tipo_prenda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK19rjdrn8fq6kxhrwms1di5h7e` FOREIGN KEY (`id_tipo_prenda`) REFERENCES `tipo_prenda` (`id_tipo_prenda`),
  ADD CONSTRAINT `FK3twklc5q92cp6c7i9wjy9o36q` FOREIGN KEY (`id_detalle`) REFERENCES `detalle` (`id_detalle`),
  ADD CONSTRAINT `FKc1mrc7r89nch4xtol227kdwce` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
