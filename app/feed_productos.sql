-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2022 a las 03:24:09
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `feed_productos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientesmovil`
--

CREATE TABLE `clientesmovil` (
  `id_clientesmovil` int(10) NOT NULL,
  `usuario` varchar(20) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `correo` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `contrasena` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `id_direccion` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `clientesmovil`
--

INSERT INTO `clientesmovil` (`id_clientesmovil`, `usuario`, `correo`, `contrasena`, `telefono`, `id_direccion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'carlos', 'carlos@gmail.com', '123456', '9931019366', 1, '2022-06-01 05:29:35', '2022-06-01 05:29:35', NULL);

-- --------------------------------------------------------


-- --------------------------------------------------------



--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `producto` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_c` float NOT NULL,
  `precio_v` float NOT NULL,
  `imagePath` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `producto`, `cantidad`, `precio_c`, `precio_v`, `imagePath`, `descripcion`, `estado`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Vestido Piñas', 4, 100, 200, 'https://res.cloudinary.com/siscoin/image/upload/v1660258708/Productos/Vestido_Pi%C3%B1as_rqiyqe.jpg', 'Vestido corto blanco con estampado de piñas', 1, '2022-08-12 17:10:32', '2022-08-12 17:10:32', NULL),
(2, 'Vestido Floreado', 4, 100, 150, 'https://res.cloudinary.com/siscoin/image/upload/v1660258708/Productos/Vestido_azul_fprhrv.jpg', 'Vestido corto azul con estampado de flores', 1, '2022-08-12 17:11:27', '2022-08-12 17:11:27', NULL),
(3, 'Calcetines', 13, 20, 30, 'https://res.cloudinary.com/siscoin/image/upload/v1660324402/Productos/Calcetines_cai64z.png', 'Calcetines Altos con estampado', 1, '2022-08-12 17:13:55', '2022-08-12 17:13:55', NULL),
(4, 'Sudadera Ajolote', 4, 400, 600, 'https://res.cloudinary.com/siscoin/image/upload/v1660324466/Productos/Sudadera_Ajolote_uxukcn.jpg', 'Sudadera con la imagen del nuevo billete de $50', 1, '2022-08-12 17:14:44', '2022-08-12 17:14:44', NULL),
(5, 'Suéter rojo de lana', 5, 200, 300, 'https://res.cloudinary.com/siscoin/image/upload/v1660258706/Productos/Sueter_Rojo_Lana_e7wjll.jpg', 'Suéter color rojo de lana con perlas fantasía', 1, '2022-08-12 17:15:39', '2022-08-12 17:15:39', NULL),
(6, 'Sudadera Rugrats', 7, 250, 350, 'https://res.cloudinary.com/siscoin/image/upload/v1660258706/Productos/Sudadera_de_Rugrats_gbm6vu.jpg', 'Sudadera color crema de la licencia Rugrats', 1, '2022-08-12 17:16:34', '2022-08-12 17:16:34', NULL),
(7, 'Vestido Fresas', 10, 350, 450, 'https://res.cloudinary.com/siscoin/image/upload/v1660324666/Productos/vestido_fresas_m2rjc0.jpg', 'vestido con estampado de fresas talla L', 1, '2022-08-12 17:18:14', '2022-08-12 17:18:14', NULL),
(10, 'Pantalón de vestir', 12, 12, 12, 'https://res.cloudinary.com/siscoin/image/upload/v1660258707/Productos/Pantalon_de_vestir_hombre_i9fkgh.webp', 'Pantalón de vestir para caballero color café', 1, '2022-08-12 04:37:09', '2022-08-12 04:37:09', NULL),
(12, 'Camisa de vestir', 12, 12, 12, 'https://res.cloudinary.com/siscoin/image/upload/v1660258687/Productos/Camisa_hombre_azul_df3zgi.jpg', 'Camisa de vestir para caballero color salmón', 1, '2022-08-12 04:48:02', '2022-08-12 04:48:02', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--


--
-- Indices de la tabla `clientesmovil`
--
ALTER TABLE `clientesmovil`
  ADD PRIMARY KEY (`id_clientesmovil`),
  ADD KEY `id_direccion` (`id_direccion`);



--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);



--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientesmovil`
--
ALTER TABLE `clientesmovil`
  MODIFY `id_clientesmovil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;







/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
