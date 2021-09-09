-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 09-09-2021 a las 15:31:55
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
(1, 1, '2021-09-06', 'ACC6596875AE1DB963A'),
(2, 1, '2021-09-06', '4A799E906CB5F8490ED');

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
(1, 1, '2021-09-06', '169E56791BB49.jpg', 'ACC6596875AE1DB963A', 1),
(2, 1, '2021-09-06', '188B22893844E.jpg', 'ACC6596875AE1DB963A', 1),
(3, 1, '2021-09-06', '1EA0AE15E960D.jpg', 'ACC6596875AE1DB963A', 1),
(4, 1, '2021-09-06', '142D198FEE690.jpg', '4A799E906CB5F8490ED', 1),
(5, 1, '2021-09-06', '1306CD4BF3C87.jpg', '4A799E906CB5F8490ED', 1),
(6, 1, '2021-09-06', '107B165C8291B.jpg', '4A799E906CB5F8490ED', 1);

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
(1, 1, '2021-09-06 16:10:09', 'Jordan tenis Air Jordan 1 High de jordan x Dior.', 'Un diseño atractivo y retro, unido a una comodidad premium.\r\n\r\nAsí son las nuevas zapatillas Nike Air Jordan 1 Retro High para el público masculino.\r\n\r\nEs una reedición que hace referencia a la versión original del Air Jordan 1.\r\nEl Air Jordan 1 es una de las zapatillas más vendidas de Nike.', '3500', 0x31, 1, 7, NULL, 'Air Jordan'),
(2, 1, '2021-09-06 16:40:40', 'Cortinas', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Repellat at sint iure accusamus, corrupti nam esse temporibus doloribus distinctio! Quos veritatis quis cum, quaerat aliquam aliquid alias autem amet iusto.', '1500', 0x31, 4, 5, NULL, '');

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
(1, 'Miguel', 'Miguel Ángel', 'González', 'axtra2766@gmail.com', 'A71AC9F2AC33', '2001-06-29', 'Hombre', '40232750303', '8493513051', 'Santo Domingo Oeste', '$2y$10$e85hezXtnk9hbjvOM14blOYcS04dIkLCCPewwOFmRnM76Ba59Eu.u');

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
  MODIFY `id_alb` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_coment` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id__fot` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_pub` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
