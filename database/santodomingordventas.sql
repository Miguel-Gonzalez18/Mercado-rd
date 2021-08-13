-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-08-2021 a las 16:16:33
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
(1, 1, '2021-08-11', '92439FFD6A2CE5B3FDA'),
(2, 1, '2021-08-11', '155629BB3343EC9E190'),
(3, 1, '2021-08-11', '79430A82E36B22F48C7'),
(4, 1, '2021-08-11', '979D2E87EA54080B26E'),
(5, 1, '2021-08-11', '4F06F2D073CDA66A85F'),
(6, 1, '2021-08-11', 'D6898C29CEDE0FB6628'),
(7, 1, '2021-08-11', '18B58CC69EF22D61F1A'),
(8, 1, '2021-08-11', 'FBD95D267823AD7A914'),
(9, 1, '2021-08-11', '89D6BED4F384C014EF6'),
(10, 1, '2021-08-11', '06A83200238FAF6DB0D'),
(11, 1, '2021-08-11', '2497F657207D8EBD0CB'),
(12, 1, '2021-08-11', '77427937D84D9209B7E'),
(13, 1, '2021-08-11', '3B3A007B1FF76BDE8BC'),
(14, 1, '2021-08-11', 'B118F233E6414D2FA8E'),
(15, 1, '2021-08-12', '322211E5458FAB369EB'),
(16, 1, '2021-08-12', '62E2D00A0F64161A7A6'),
(17, 1, '2021-08-12', '28EDC4CF6A30B876527'),
(18, 1, '2021-08-12', '6764FEB4EF9D30EC3E7'),
(19, 1, '2021-08-12', '101F543E908470BC0E1'),
(20, 1, '2021-08-12', 'EAF0AF4747137BACE7E'),
(21, 1, '2021-08-12', '6396CC0F2A534C5C66D'),
(22, 1, '2021-08-12', '6A9F3B3E049BD736392'),
(23, 1, '2021-08-12', '106D07F7BB32876DBE7'),
(24, 1, '2021-08-12', 'BE13BC5CF85E91F416C'),
(25, 1, '2021-08-12', '6FA54FE48689BBE48E6'),
(26, 1, '2021-08-12', '1DB7F28C488B51A0541'),
(27, 1, '2021-08-12', 'C4DDA8517AFE6D3E43B'),
(28, 1, '2021-08-12', '79264E17708630B2398'),
(29, 1, '2021-08-12', '793261BBB8E1E8AEB34'),
(30, 1, '2021-08-12', '548A25E73C11D577553'),
(31, 1, '2021-08-12', '53EDF3533A9CCEE5F15'),
(32, 1, '2021-08-12', 'D021C87D90500640602'),
(33, 1, '2021-08-12', 'F916DC669BC6F58918A'),
(34, 1, '2021-08-12', 'CA8FDC0DCDC9C186FEC'),
(35, 1, '2021-08-12', 'C41CAEC423B43102C70'),
(36, 1, '2021-08-12', '5A90BA03704B0B4064C'),
(37, 1, '2021-08-12', 'FD9B1A69310ECE0A9AE'),
(38, 1, '2021-08-12', 'F38EEF475488E129006'),
(39, 1, '2021-08-12', '63D757B2692F1B3B7B7'),
(40, 1, '2021-08-12', 'C63BD58A486D390919F');

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
(1, 1, '2021-08-12', '100BC2901FAD5.jpg', 'C63BD58A486D390919F', 1),
(2, 1, '2021-08-12', '16FF5FE4F6127.jpg', 'C63BD58A486D390919F', 1),
(3, 1, '2021-08-12', '15E305FF17BA6.jpg', 'C63BD58A486D390919F', 1);

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
  `telefono` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `direccion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `username`, `nombre`, `apellido`, `mail`, `fotoperfil`, `fecha_nac`, `genero`, `cedula`, `telefono`, `direccion`, `password`) VALUES
(1, 'miguel', 'Miguel Angel', 'Gonalez', 'axtra2766@gmail.com', NULL, '2001-06-29', 'M', '40232750303', '8295862766', 'Santo Domingo Oeste', '$2y$10$ADKfebXXCFqVw77CrgHZuO/V80cges9XRzV/4uma6R2M8NOi0pn3W');

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
  ADD KEY `comentarios` (`comentarios`);

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
  MODIFY `id_alb` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`imagen`) REFERENCES `fotos` (`id__fot`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`comentarios`) REFERENCES `comentarios` (`id_coment`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
