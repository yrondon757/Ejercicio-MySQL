-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2024 a las 17:00:05
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
-- Base de datos: `tienda_videojuegos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `tipo`, `fecha_creacion`, `fecha_actualizacion`) VALUES
(1, 'Consola', 'Multimedia', '2024-12-05 18:04:10', '2024-12-05 18:04:10'),
(2, 'Videojuego', 'Multimedia', '2024-12-05 18:04:10', '2024-12-05 18:04:10'),
(3, 'Accesorio', 'Multimedia', '2024-12-05 18:04:10', '2024-12-05 18:04:10'),
(4, 'FIgura de Accion', 'Juguete', '2024-12-05 18:04:10', '2024-12-05 18:04:10'),
(5, 'Funkopop', 'Juguete', '2024-12-05 18:04:10', '2024-12-05 18:04:10'),
(6, 'Smart TV', 'Electronico', '2024-12-05 18:04:10', '2024-12-05 18:04:10'),
(7, 'Home Theater', 'Electronico', '2024-12-05 18:04:10', '2024-12-05 18:04:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre_producto` varchar(50) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre_producto`, `usuario_id`, `precio`, `stock`, `id_categoria`, `fecha_creacion`, `fecha_actualizacion`) VALUES
(1, 'Playstation 5', 21, 800.99, 10, 1, '2024-12-05 18:47:33', '2024-12-05 18:47:33'),
(2, 'Playstation 4', 27, 500.99, 15, 1, '2024-12-05 18:47:33', '2024-12-05 18:47:33'),
(3, 'Xbox Series S', 32, 750.99, 10, 1, '2024-12-05 18:47:33', '2024-12-05 18:47:33'),
(4, 'Xbox One', 24, 450.99, 20, 1, '2024-12-05 18:47:33', '2024-12-05 18:47:33'),
(5, 'Nintendo Switch', 21, 320.99, 20, 1, '2024-12-05 18:47:33', '2024-12-05 18:47:33'),
(6, 'Control PS5', 21, 135.891, 30, 3, '2024-12-05 18:47:33', '2024-12-06 15:53:58'),
(7, 'Control Xbox S', 24, 120.99, 30, 3, '2024-12-05 18:47:33', '2024-12-05 18:47:33'),
(8, 'Figura de Spiderman', 30, 220.99, 5, 4, '2024-12-05 18:47:33', '2024-12-05 18:47:33'),
(9, 'Figura de Deadpool', 30, 250.99, 5, 4, '2024-12-05 18:47:33', '2024-12-05 18:47:33'),
(10, 'Funko Goku', 22, 30.99, 0, 5, '2024-12-05 18:47:33', '2024-12-05 18:47:33'),
(11, 'Funko Naruto', 22, 30.99, 0, 5, '2024-12-05 18:47:33', '2024-12-05 18:47:33'),
(12, 'TV Samsung 55', 24, 330.99, 0, 6, '2024-12-05 18:47:33', '2024-12-05 18:47:33'),
(13, 'TV LG 42', 24, 270.99, 8, 6, '2024-12-05 18:47:33', '2024-12-05 18:47:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contrasena` varchar(20) DEFAULT NULL,
  `rol` char(20) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `edad`, `email`, `contrasena`, `rol`, `fecha_creacion`, `fecha_actualizacion`) VALUES
(21, 'Jin', 'Kazama', 25, 'jinkazama@hotmail.com', 'tekken1al8', 'cliente', '2024-12-05 17:31:53', '2024-12-05 17:31:53'),
(22, 'Shen', 'Long', 30, 'shenlong@gmail.com', 'bloodyroar2', 'cliente', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(23, 'Sasuke', 'Uchiha', 21, 'sharingan@hotmail.com', 'rinnegan01', 'cliente', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(24, 'Gado', 'Lion', 45, 'thelion@gmail.com', 'bloodyroar4ever', 'cliente', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(25, 'Ezio', 'Auditore', 19, 'credo4s3s1n0@gmail.com', 'assassins23', 'cliente', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(26, 'Bayek', 'De Siwa', 29, 'egipto400@hotmail.com', 'origins17', 'cliente', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(27, 'Thor', 'Odinson', 30, 'diosdeltrueno@gmail.com', 'trueno3000', 'cliente', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(28, 'Leon', 'Kennedy', 27, 'residentevil4@hotmail.com', 'virusT2005', 'cliente', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(29, 'Mario', 'Bros', 40, 'supermariobros@gmail.com', 'luigi10', 'cliente', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(30, 'David', 'Armstrong', 26, 'flashpoint@yahoo.com', 'operation26', 'cliente', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(31, 'Peter', 'Parker', 17, 'spidey626@yahoo.com', 'newyork90', 'cliente', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(32, 'Lionel', 'Messi', 36, 'nopuedotengofutbol@gmail.com', 'barca4ever', 'cliente', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(33, 'John', 'Price', 40, 'callofduty@tienda.com', 'tienda2929', 'empleado', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(34, 'John', 'MacTavish', 29, 'modernwarfare@tienda.com', 'videojuego4ever', 'empleado', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(35, 'Steve', 'Rogers', 26, 'captainamerica@tienda.com', 'firstavenger1945', 'empleado', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(36, 'Auron', 'Play', 34, 'auronelplayas@gmail.com', 'auroncito1', 'empleado', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(37, 'Ibai', 'Llanos', 25, 'veladadelano@hotmail.com', 'kingsleague01', 'empleado', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(38, 'Emily', 'Armstrong', 27, 'linkinpark@tienda.com', 'newsinger69', 'supervisor', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(39, 'Mike', 'Shinoda', 34, 'linkinpark01@tienda.com', 'b3stb4nd3v3r', 'supervisor', '2024-12-05 17:33:46', '2024-12-05 17:33:46'),
(40, 'Goku', 'Son', 30, 'dragonball@gmail.com', 'esferasdr4g0nzgt', 'administrador', '2024-12-05 17:33:46', '2024-12-05 19:33:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_total` float DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `producto_id`, `usuario_id`, `cantidad`, `precio_total`, `fecha_creacion`, `fecha_actualizacion`) VALUES
(1, 1, 21, 1, 800.99, '2024-12-05 19:16:32', '2024-12-05 19:16:32'),
(2, 6, 21, 2, 301.98, '2024-12-05 19:16:32', '2024-12-05 19:16:32'),
(3, 5, 21, 1, 320, '2024-12-05 19:16:32', '2024-12-05 19:16:32'),
(4, 12, 24, 1, 330, '2024-12-05 19:16:32', '2024-12-06 13:13:42'),
(5, 3, 32, 1, 750, '2024-12-05 19:16:32', '2024-12-05 19:16:32'),
(6, 7, 32, 2, 241.98, '2024-12-05 19:16:32', '2024-12-05 19:16:32'),
(7, 10, 22, 1, 30.99, '2024-12-05 19:16:32', '2024-12-06 13:13:42'),
(8, 11, 22, 1, 30.99, '2024-12-05 19:16:32', '2024-12-06 13:13:42'),
(9, 13, 24, 2, 571.98, '2024-12-05 19:16:32', '2024-12-05 19:16:32'),
(10, 6, 30, 1, 150.99, '2024-12-05 19:16:32', '2024-12-05 19:16:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_id` (`producto_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
