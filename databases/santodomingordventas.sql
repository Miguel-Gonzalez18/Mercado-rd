-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 10-09-2021 a las 15:55:25
-- Versión del servidor: 8.0.26-0ubuntu0.20.04.2
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `santodomingordventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albumes`
--

CREATE TABLE `albumes` (
  `id_alb` int NOT NULL,
  `usuario` int NOT NULL,
  `fecha` date NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `albumes`
--

INSERT INTO `albumes` (`id_alb`, `usuario`, `fecha`, `nombre`) VALUES
(1, 1, '2021-09-10', '36357783E2596BC248A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_coment` int NOT NULL,
  `usuario` int NOT NULL,
  `fecha` datetime NOT NULL,
  `contenido` text CHARACTER SET latin1 COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id__fot` int NOT NULL,
  `usuario` int NOT NULL,
  `fecha` date NOT NULL,
  `ruta` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `album` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci,
  `producto` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id__fot`, `usuario`, `fecha`, `ruta`, `album`, `producto`) VALUES
(1, 1, '2021-09-10', '3AA48555AD834.jpg', '36357783E2596BC248A', 3),
(2, 1, '2021-09-10', '35CC16DF28E8D.jpg', '36357783E2596BC248A', 3),
(3, 1, '2021-09-10', '3036EAEA85D8B.jpg', '36357783E2596BC248A', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_pub` int NOT NULL,
  `usuario` int NOT NULL,
  `fecha` datetime NOT NULL,
  `titulo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `contenido` text CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `estado` binary(1) NOT NULL,
  `imagen` int DEFAULT NULL,
  `categoria` int NOT NULL,
  `comentarios` int DEFAULT NULL,
  `marca` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_pub`, `usuario`, `fecha`, `titulo`, `contenido`, `precio`, `estado`, `imagen`, `categoria`, `comentarios`, `marca`) VALUES
(1, 1, '2021-09-10 15:34:29', 'Tenis Jordan 4 Size 9 usado en exelentes condiciones', 'Nuevos en caja.\r\nSize de Damas y Caballeros.\r\nEnvios disponible.\r\nTrabajamos con todas las marcas y modelos.\r\nSi no visualizas el color o modelo que quieres contactanos.', '3800', 0x31, 1, 7, NULL, 'Jordán');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL,
  `username` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `mail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fotoperfil` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci,
  `fecha_nac` date DEFAULT NULL,
  `genero` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci,
  `cedula` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `telefono` text COLLATE utf8mb4_spanish2_ci,
  `direccion` text COLLATE utf8mb4_spanish2_ci,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `username`, `nombre`, `apellido`, `mail`, `fotoperfil`, `fecha_nac`, `genero`, `cedula`, `telefono`, `direccion`, `password`) VALUES
(1, 'Miguel', 'Miguel Ángel', 'González', 'axtra2766@gmail.com', '61F4888C6B41', '2001-06-29', 'Hombre', '40232750303', '8493513051', 'Santo Domingo Oeste', '$2y$10$8ax7J2mT3hyj7z/C0D7RBuyunVtTIsaltMqfGEGv2Tdw6meAKxqje');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albumes`
--
ALTER TABLE `albumes`
  ADD PRIMARY KEY (`id_alb`),
  ADD KEY `id_alb` (`id_alb`),
  ADD KEY `id_alb_2` (`id_alb`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_coment`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id__fot`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_pub`),
  ADD KEY `imagen` (`imagen`),
  ADD KEY `comentarios` (`comentarios`),
  ADD KEY `usuario` (`usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albumes`
--
ALTER TABLE `albumes`
  MODIFY `id_alb` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_coment` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id__fot` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_pub` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`comentarios`) REFERENCES `comentarios` (`id_coment`),
  ADD CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productos_ibfk_4` FOREIGN KEY (`imagen`) REFERENCES `fotos` (`id__fot`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
