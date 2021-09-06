-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-09-2021 a las 16:34:37
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
-- Base de datos: `appsalon`
--
CREATE DATABASE IF NOT EXISTS `appsalon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `appsalon`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservaciones`
--

CREATE TABLE `reservaciones` (
  `id` int NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `hora` time DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `servicios` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `reservaciones`
--

INSERT INTO `reservaciones` (`id`, `nombre`, `apellido`, `hora`, `fecha`, `servicios`) VALUES
(1, 'Juan', 'De la torre', '10:30:00', '2021-06-28', 'Corte de Cabello Adulto, Corte de Barba'),
(2, 'Antonio', 'Hernandez', '14:00:00', '2021-07-30', 'Corte de Cabello Niño'),
(3, 'Pedro', 'Juarez', '20:00:00', '2021-06-25', 'Corte de Cabello Adulto'),
(4, 'Mireya', 'Perez', '19:00:00', '2021-06-25', 'Peinado Mujer'),
(5, 'Jose', 'Castillo', '14:00:00', '2021-07-30', 'Peinado Hombre'),
(6, 'Maria', 'Diaz', '14:30:00', '2021-06-25', 'Tinte'),
(7, 'Clara', 'Duran', '10:00:00', '2021-07-01', 'Uñas, Tinte, Corte de Cabello Mujer'),
(8, 'Miriam', 'Ibañez', '09:00:00', '2021-07-01', 'Tinte'),
(9, 'Samuel', 'Reyes', '10:00:00', '2021-07-02', 'Tratamiento Capilar'),
(10, 'Joaquin', 'Muñoz', '19:00:00', '2021-06-28', 'Tratamiento Capilar'),
(11, 'Julia', 'Lopez', '08:00:00', '2021-06-25', 'Tinte'),
(12, 'Carmen', 'Ruiz', '20:00:00', '2021-07-01', 'Uñas'),
(13, 'Isaac', 'Sala', '09:00:00', '2021-07-30', 'Corte de Cabello Adulto'),
(14, 'Ana', 'Preciado', '14:30:00', '2021-06-28', 'Corte de Cabello Mujer'),
(15, 'Sergio', 'Iglesias', '10:00:00', '2021-07-02', 'Corte de Cabello Adulto'),
(16, 'Aina', 'Acosta', '14:00:00', '2021-07-30', 'Uñas'),
(17, 'Carlos', 'Ortiz', '20:00:00', '2021-06-25', 'Corte de Cabello Niño'),
(18, 'Roberto', 'Serrano', '10:00:00', '2021-07-30', 'Corte de Cabello Niño'),
(19, 'Carlota', 'Perez', '14:00:00', '2021-07-01', 'Uñas'),
(20, 'Ana Maria', 'Igleias', '14:00:00', '2021-07-02', 'Uñas, Tinte'),
(21, 'Jaime', 'Jimenez', '14:00:00', '2021-07-01', 'Corte de Cabello Niño'),
(22, 'Roberto', 'Torres', '10:00:00', '2021-07-02', 'Corte de Cabello Adulto'),
(23, 'Juan', 'Cano', '09:00:00', '2021-07-02', 'Corte de Cabello Niño'),
(24, 'Santiago', 'Hernandez', '19:00:00', '2021-06-28', 'Corte de Cabello Niño'),
(25, 'Berta', 'Gomez', '09:00:00', '2021-07-01', 'Uñas'),
(26, 'Miriam', 'Dominguez', '19:00:00', '2021-06-28', 'Corte de Cabello Niño'),
(27, 'Antonio', 'Castro', '14:30:00', '2021-07-02', 'Corte de Cabello Adulti'),
(28, 'Hugo', 'Alonso', '09:00:00', '2021-06-28', 'Corte de Barba'),
(29, 'Victoria', 'Perez', '10:00:00', '2021-07-02', 'Uñas, Tinte'),
(30, 'Jimena', 'Leon', '10:30:00', '2021-07-30', 'Uñas, Corte de Cabello Mujer'),
(31, 'Raquel', 'Peña', '20:30:00', '2021-06-25', 'Corte de Cabello Mujer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `precio` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `nombre`, `precio`) VALUES
(1, 'Corte de Cabello Niño', '60.00'),
(2, 'Corte de Cabello Hombre', '80.00'),
(3, 'Corte de Barba', '60.00'),
(4, 'Peinado Mujer', '80.00'),
(5, 'Peinado Hombre', '60.00'),
(6, 'Tinte', '300.00'),
(7, 'Uñas', '400.00'),
(8, 'Lavado de Cabello', '50.00'),
(9, 'Tratamiento Capilar', '150.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Base de datos: `dbcyberware`
--
CREATE DATABASE IF NOT EXISTS `dbcyberware` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `dbcyberware`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `external_disk`
--

CREATE TABLE `external_disk` (
  `id` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `usuario_id` int NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `icono` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cpu` int NOT NULL,
  `ram` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hadware`
--

CREATE TABLE `hadware` (
  `id_hadware` int NOT NULL,
  `server` int NOT NULL,
  `cpu` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ram` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hdd` int NOT NULL,
  `ehd` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `usuario_id` int NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `h_cpu` int NOT NULL,
  `h_hdd` int NOT NULL,
  `h_ram` int NOT NULL,
  `h_ehd` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `hadware`
--

INSERT INTO `hadware` (`id_hadware`, `server`, `cpu`, `ram`, `hdd`, `ehd`, `status`, `usuario_id`, `fecha`, `h_cpu`, `h_hdd`, `h_ram`, `h_ehd`) VALUES
(1, 1, '500', '256', 100, 1024, 1, 1, '2021-08-04 01:48:56', 1, 1, 1, 1),
(2, 1, '500', '256', 100, 0, 1, 2, '2021-08-07 00:44:54', 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `h_cpu`
--

CREATE TABLE `h_cpu` (
  `id` int NOT NULL,
  `size` int NOT NULL,
  `precio` int NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `h_cpu`
--

INSERT INTO `h_cpu` (`id`, `size`, `precio`, `fecha`) VALUES
(1, 500, 0, '2020-08-02 23:13:55'),
(2, 1000, 100, '2020-08-02 23:13:55'),
(3, 1500, 150, '2020-08-02 23:13:55'),
(4, 2000, 300, '2020-08-02 23:13:55'),
(5, 2500, 600, '2020-08-02 23:13:55'),
(6, 3000, 1500, '2020-08-02 23:13:55'),
(7, 3500, 2000, '2020-08-02 23:13:55'),
(8, 4000, 5000, '2020-08-02 23:13:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `h_ehd`
--

CREATE TABLE `h_ehd` (
  `id` int NOT NULL,
  `size` int NOT NULL,
  `precio` int NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `h_ehd`
--

INSERT INTO `h_ehd` (`id`, `size`, `precio`, `fecha`) VALUES
(0, 0, 0, '2020-08-02 23:15:32'),
(1, 1024, 5000, '2020-08-02 23:15:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `h_hdd`
--

CREATE TABLE `h_hdd` (
  `id` int NOT NULL,
  `size` int NOT NULL,
  `precio` int NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `h_hdd`
--

INSERT INTO `h_hdd` (`id`, `size`, `precio`, `fecha`) VALUES
(1, 100, 0, '2020-08-02 23:17:58'),
(2, 500, 100, '2020-08-02 23:17:58'),
(3, 1024, 300, '2020-08-02 23:17:58'),
(4, 2048, 1000, '2020-08-02 23:17:58'),
(5, 5120, 3000, '2020-08-02 23:17:58'),
(6, 10240, 5000, '2020-08-02 23:17:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `h_ram`
--

CREATE TABLE `h_ram` (
  `id` int NOT NULL,
  `size` int NOT NULL,
  `precio` int NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `h_ram`
--

INSERT INTO `h_ram` (`id`, `size`, `precio`, `fecha`) VALUES
(1, 256, 0, '2020-08-02 23:18:59'),
(2, 512, 100, '2020-08-02 23:18:59'),
(3, 1024, 500, '2020-08-02 23:18:59'),
(4, 2048, 2000, '2020-08-02 23:18:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesos`
--

CREATE TABLE `procesos` (
  `id` int NOT NULL,
  `usuario_id` int NOT NULL,
  `proceso` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fecha_final` datetime NOT NULL,
  `tipo_proceso` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mensaje` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `activity` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `argumento` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `red`
--

CREATE TABLE `red` (
  `id` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `velocidad` int NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `precio` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `red`
--

INSERT INTO `red` (`id`, `nombre`, `velocidad`, `fecha`, `precio`) VALUES
(1, 'Red GPRS', 1, '2020-07-31 00:59:19', 0),
(2, 'Red 2G', 2, '2020-07-31 00:59:19', 50),
(3, 'Red 3.5G', 4, '2020-07-31 00:59:19', 100),
(4, 'Red HSPA', 10, '2020-07-31 00:59:19', 250),
(5, 'Red 4G', 25, '2020-07-31 00:59:19', 1000),
(6, 'Red LTE', 50, '2020-07-31 00:59:19', 2500),
(7, 'Red 5G', 100, '2020-07-31 00:59:19', 10000),
(8, 'Red Optimu', 250, '2020-07-31 00:59:19', 25000),
(9, 'Red Finity', 500, '2020-07-31 00:59:19', 50000),
(10, 'Red Spectru', 1000, '2020-07-31 00:59:19', 100000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `red_usada`
--

CREATE TABLE `red_usada` (
  `id` int NOT NULL,
  `usuario_id` int NOT NULL,
  `red` int NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `red_usada`
--

INSERT INTO `red_usada` (`id`, `usuario_id`, `red`, `fecha`) VALUES
(1, 1, 1, '2021-08-04 01:48:56'),
(2, 2, 1, '2021-08-07 00:44:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `software`
--

CREATE TABLE `software` (
  `id_software` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `ejecucion` tinyint(1) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `usuario_id` int NOT NULL,
  `icono` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cpu` int NOT NULL,
  `ram` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `software`
--

INSERT INTO `software` (`id_software`, `nombre`, `version`, `size`, `ejecucion`, `visible`, `usuario_id`, `icono`, `fecha`, `cpu`, `ram`) VALUES
(1, 'Cracker', '1.0', 5, 1, 1, 1, 'IM_Cracker', '2021-08-04 01:48:56', 50, 50),
(2, 'Password Hashing', '1.0', 5, 1, 1, 1, 'IM_Hashing', '2021-08-04 01:48:56', 50, 50),
(3, 'Cracker', '1.0', 5, 1, 1, 2, 'IM_Cracker', '2021-08-07 00:44:54', 50, 50),
(4, 'Password Hashing', '1.0', 5, 1, 1, 2, 'IM_Hashing', '2021-08-07 00:44:54', 50, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dinero` int NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_session` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `usuario`, `email`, `password`, `foto`, `ip`, `dinero`, `fecha_creacion`, `id_session`, `activo`) VALUES
(1, 'angel', 'ange@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', '227.189.26.183', 0, '2021-08-04 01:48:56', '6110833d74dc5', 0),
(2, 'miguel', 'miguel@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '167.33.170.54', 1000, '2021-08-07 00:44:54', '6119422d4d261', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `external_disk`
--
ALTER TABLE `external_disk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `hadware`
--
ALTER TABLE `hadware`
  ADD PRIMARY KEY (`id_hadware`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `h_cpu` (`h_cpu`,`h_hdd`,`h_ram`,`h_ehd`),
  ADD KEY `h_ehd` (`h_ehd`),
  ADD KEY `h_ram` (`h_ram`),
  ADD KEY `h_hdd` (`h_hdd`);

--
-- Indices de la tabla `h_cpu`
--
ALTER TABLE `h_cpu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `h_ehd`
--
ALTER TABLE `h_ehd`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `h_hdd`
--
ALTER TABLE `h_hdd`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `h_ram`
--
ALTER TABLE `h_ram`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `procesos`
--
ALTER TABLE `procesos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `red`
--
ALTER TABLE `red`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `red_usada`
--
ALTER TABLE `red_usada`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `red` (`red`);

--
-- Indices de la tabla `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`id_software`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `external_disk`
--
ALTER TABLE `external_disk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `hadware`
--
ALTER TABLE `hadware`
  MODIFY `id_hadware` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `h_cpu`
--
ALTER TABLE `h_cpu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `h_ehd`
--
ALTER TABLE `h_ehd`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `h_hdd`
--
ALTER TABLE `h_hdd`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `h_ram`
--
ALTER TABLE `h_ram`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `procesos`
--
ALTER TABLE `procesos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT de la tabla `red`
--
ALTER TABLE `red`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `red_usada`
--
ALTER TABLE `red_usada`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `software`
--
ALTER TABLE `software`
  MODIFY `id_software` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `external_disk`
--
ALTER TABLE `external_disk`
  ADD CONSTRAINT `external disk_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `hadware`
--
ALTER TABLE `hadware`
  ADD CONSTRAINT `hadware_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hadware_ibfk_2` FOREIGN KEY (`h_ehd`) REFERENCES `h_ehd` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hadware_ibfk_3` FOREIGN KEY (`h_ram`) REFERENCES `h_ram` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hadware_ibfk_4` FOREIGN KEY (`h_cpu`) REFERENCES `h_cpu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hadware_ibfk_5` FOREIGN KEY (`h_hdd`) REFERENCES `h_hdd` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `procesos`
--
ALTER TABLE `procesos`
  ADD CONSTRAINT `procesos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `red_usada`
--
ALTER TABLE `red_usada`
  ADD CONSTRAINT `red_usada_ibfk_1` FOREIGN KEY (`red`) REFERENCES `red` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `red_usada_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `software`
--
ALTER TABLE `software`
  ADD CONSTRAINT `software_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `db_tareas`
--
CREATE DATABASE IF NOT EXISTS `db_tareas` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `db_tareas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `id` int NOT NULL,
  `titulo` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `texto` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tarea`
--

INSERT INTO `tarea` (`id`, `titulo`, `texto`, `fecha`) VALUES
(10, 'Número de la Luz', '6635358', '2021-05-14 04:07:02'),
(11, 'ddhdf', 'djfjggh', '2021-08-02 19:06:20'),
(12, 'eryryruti', 'yfgggy', '2021-08-02 19:06:29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tarea`
--
ALTER TABLE `tarea`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"santodomingordventas\",\"table\":\"usuarios\"},{\"db\":\"santodomingordventas\",\"table\":\"productos\"},{\"db\":\"santodomingordventas\",\"table\":\"fotos\"},{\"db\":\"santodomingordventas\",\"table\":\"albumes\"},{\"db\":\"santodomingordventas\",\"table\":\"comentarios\"},{\"db\":\"appsalon\",\"table\":\"reservaciones\"},{\"db\":\"appsalon\",\"table\":\"servicios\"},{\"db\":\"dbcyberware\",\"table\":\"user\"},{\"db\":\"dbcyberware\",\"table\":\"procesos\"},{\"db\":\"dbcyberware\",\"table\":\"hadware\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`) VALUES
('root', 'santodomingordventas', 'fotos', '{\"sorted_col\":\"`fotos`.`id__fot` ASC\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `config_data`) VALUES
('root', '{\"lang\":\"es\",\"Console\\/Mode\":\"collapse\",\"FontSize\":\"94%\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `santodomingordventas`
--
CREATE DATABASE IF NOT EXISTS `santodomingordventas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `santodomingordventas`;

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
(1, 1, '2021-09-06', 'ACC6596875AE1DB963A');

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
(3, 1, '2021-09-06', '1EA0AE15E960D.jpg', 'ACC6596875AE1DB963A', 1);

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
(1, 1, '2021-09-06 16:10:09', 'Jordan tenis Air Jordan 1 High de jordan x Dior.', 'Un diseño atractivo y retro, unido a una comodidad premium.\r\nAsí son las nuevas zapatillas Nike Air Jordan 1 Retro High para el público masculino.\r\nEs una reedición que hace referencia a la versión original del Air Jordan 1.\r\nEl Air Jordan 1 es una de las zapatillas más vendidas de Nike.', '3500', 0x31, 1, 7, NULL, 'Air Jordan');

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
--
-- Base de datos: `tareas_php_ajax_db`
--
CREATE DATABASE IF NOT EXISTS `tareas_php_ajax_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `tareas_php_ajax_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivados`
--

CREATE TABLE `archivados` (
  `id` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `id` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`id`, `nombre`, `descripcion`, `fecha`) VALUES
(22, 'Nueva tarea', 'Esta es una nueva tarea', '2021-05-18 21:27:30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivados`
--
ALTER TABLE `archivados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivados`
--
ALTER TABLE `archivados`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
