-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2023 a las 22:26:33
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_inmobiliaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id` int(11) NOT NULL,
  `id_pais` int(11) NOT NULL,
  `nombre_ciudad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id`, `id_pais`, `nombre_ciudad`) VALUES
(1, 1, 'Callao'),
(2, 1, 'San Isidro'),
(3, 1, 'Ate'),
(4, 1, 'Lima'),
(5, 1, 'Comas'),
(6, 1, 'Ayacucho'),
(7, 1, 'Ancón'),
(8, 1, 'Barranco'),
(9, 1, 'Breña'),
(10, 1, 'Carabayllo'),
(11, 1, 'Cercado de Lima'),
(12, 1, 'Chaclacayo'),
(13, 1, 'Chorrillos'),
(14, 1, 'Cieneguilla'),
(15, 1, 'El agustino'),
(16, 1, 'Independencia'),
(17, 1, 'Jesús maría'),
(18, 1, 'La molina'),
(19, 1, 'La victoria'),
(20, 1, 'Lince'),
(21, 1, 'Los olivos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL,
  `propiedad1` int(11) DEFAULT NULL,
  `propiedad2` int(11) DEFAULT NULL,
  `propiedad3` int(11) DEFAULT NULL,
  `propiedad4` int(11) DEFAULT NULL,
  `propiedad5` int(11) DEFAULT NULL,
  `propiedad6` int(11) DEFAULT NULL,
  `oficina_central` varchar(400) DEFAULT NULL,
  `telefono1` varchar(100) DEFAULT NULL,
  `telefono2` varchar(100) DEFAULT NULL,
  `email_contacto` varchar(100) DEFAULT NULL,
  `horarios` varchar(200) DEFAULT NULL,
  `mapa` varchar(300) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `tipo_visualizacion_propiedades` varchar(1) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email_administrador` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `propiedad1`, `propiedad2`, `propiedad3`, `propiedad4`, `propiedad5`, `propiedad6`, `oficina_central`, `telefono1`, `telefono2`, `email_contacto`, `horarios`, `mapa`, `facebook`, `twitter`, `tipo_visualizacion_propiedades`, `user`, `password`, `email_administrador`) VALUES
(1, 0, 0, 0, 0, 0, 0, 'Direccion : Calle Pedro Silva Gil N° 128 – 2da. Etapa, Urb. Santa Luzmila Comas, distrito de Comas – Lima.', '989 969 317', '989 969 317', 'datacaballero@gmail.com', 'De 12h a 12h', 'mapa', '', '', 'f', 'admin', '1234', 'datacaballero@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id` int(11) NOT NULL,
  `id_propiedad` int(11) NOT NULL,
  `nombre_foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id`, `id_propiedad`, `nombre_foto`) VALUES
(1, 1, 'f6089edc6f69db9e36db32d3ad7756764d1a15e3.jpg'),
(2, 1, '52c94170668a82ccea01a0e27945a597ed5ab590.jpg'),
(3, 1, 'db40ef8cba91c3aa5da9d6b8d7cd218f19992951.jpg'),
(5, 2, 'db40ef8cba91c3aa5da9d6b8d7cd218f19992951.jpg'),
(6, 3, 'bec9af3263a88825ea96300088d3ef862415f80a.jpg'),
(8, 5, '2e9bab678b19645918ecaf5ca2f9de75fba5e5a7.jpg'),
(9, 5, '72e6764917a151eb48cf7c01b56bf4e882d75542.jpg'),
(10, 5, '7beb45c71fe273bfde11f2ee355df0eb2401703e.jpg'),
(11, 5, '203da5fb2420bb2586a8a7b7c765d8f7c8d06ee4.jpg'),
(12, 5, 'f813fe9f224b1d6c56ae4c2e8db8175a6e6c0bd1.jpg'),
(13, 5, 'b2b82eba0e6fc03df7873eab084d454bd9c0f57a.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `nombre_pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `nombre_pais`) VALUES
(1, 'Perú'),
(2, 'Chile'),
(3, 'Ecuador'),
(4, 'Argentina'),
(5, 'Colombia'),
(6, 'Brasil'),
(7, 'Venezuela'),
(8, 'Alemania');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedades`
--

CREATE TABLE `propiedades` (
  `id` int(11) NOT NULL,
  `fecha_alta` date NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `tipo` int(11) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `ubicacion` varchar(200) NOT NULL,
  `habitaciones` varchar(2) NOT NULL,
  `banios` varchar(2) NOT NULL,
  `pisos` varchar(1) NOT NULL,
  `garage` varchar(2) NOT NULL,
  `dimensiones` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `moneda` varchar(5) NOT NULL,
  `url_foto_principal` varchar(200) NOT NULL,
  `pais` int(11) NOT NULL,
  `ciudad` int(11) NOT NULL,
  `propietario` varchar(100) NOT NULL,
  `telefono_propietario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `propiedades`
--

INSERT INTO `propiedades` (`id`, `fecha_alta`, `titulo`, `descripcion`, `tipo`, `estado`, `ubicacion`, `habitaciones`, `banios`, `pisos`, `garage`, `dimensiones`, `precio`, `moneda`, `url_foto_principal`, `pais`, `ciudad`, `propietario`, `telefono_propietario`) VALUES
(1, '2023-11-28', 'PACHACUTEC', 'Casas, campos, departamentos.\r\nAl mejor precio.', 1, 'venta', 'Mz ll lote 7 comite 64 gambetta baja zzZZZ', '4', '2', '1', 'Si', '300x 200 metros', 500, 'S/.', 'fotos/1/Purple Illustration City Desktop Wallpaper (1920 x 1080 px) (800 x 600 px) (2).png', 1, 1, 'Luis', '920208056'),
(2, '2023-11-29', 'CASA EN COMAS', 'Casa en Comas con hermosa vista al parque y zona tranquila.', 1, 'Venta', 'Mz ll lote 7 comite 64 gambetta baja', '4', '1', '', 'No', '3000x 2000 metros', 50000, 'S/.', 'fotos/2/Purple Illustration City Desktop Wallpaper (1920 x 1080 px).png', 1, 1, 'Edwin Silva Cardenas', '920208056'),
(3, '2023-11-29', 'CASA EN COMAS', 'CASA EN COMAS', 4, 'Venta', 'Mz ll lote 7 comite 64 gambetta baja', '2', '1', '2', 'No', '3000x 2000 metros', 30000, '$', 'fotos/3/882699.jpg', 1, 6, 'Luis', '920208056'),
(5, '2023-12-04', 'Casa en Los Olivos Urb. Villa Los Ángeles', 'La propiedad cuenta con dos pisos de ingreso independiente.\r\nPrimer piso: 4 cuartos, 3 baños, 2 lavanderías, cocina, sala.\r\nSegundo piso: 3 cuartos, 2 baños, lavandería, cocina, sala.\r\nSe encuentra en excelente zona urbana y segura, cerca de vías principales, parques, centros comerciales, colegios, etc.\r\nAgenda tu visita, aprovecha está excelente oportunidad.', 2, 'venta', 'Calle Antonio Raimondi al 200, Villa Los Angeles', '4', '2', '2', 'No', '3000x 2000 metros', 200000, 'S/.', 'fotos/5/Screenshot_1.png', 1, 21, 'Juan José Carrera', '954 875 326');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id` int(11) NOT NULL,
  `nombre_tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `nombre_tipo`) VALUES
(1, 'Departamento'),
(2, 'Casa'),
(3, 'Ático'),
(4, 'Terreno'),
(5, 'Estudio'),
(6, 'Casa de Campo'),
(7, 'Casa Familiar'),
(8, 'Edificio'),
(9, 'Condominio'),
(10, 'Mansión'),
(11, 'Casa Adosada');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
