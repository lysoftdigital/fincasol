-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-05-2024 a las 19:28:32
-- Versión del servidor: 5.7.23-23
-- Versión de PHP: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escaboga_dbinmobiliario`
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
(21, 1, 'Los olivos'),
(22, 1, 'Puente Piedra'),
(23, 1, 'San Martin De Porres');

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
(1, 0, 0, 0, 0, 0, 0, 'Direccion : Calle Pedro Silva Gil N° 128 – 2da. Etapa, Urb. Santa Luzmila Comas, distrito de Comas – Lima.', '989 969 317', '989 969 317', 'datacaballero@gmail.com', 'De 12h a 12h', 'mapa', '', '', 'f', 'admin', 'Cardenas2023$', 'datacaballero@gmail.com');

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
(8, 5, '2e9bab678b19645918ecaf5ca2f9de75fba5e5a7.jpg'),
(9, 5, '72e6764917a151eb48cf7c01b56bf4e882d75542.jpg'),
(10, 5, '7beb45c71fe273bfde11f2ee355df0eb2401703e.jpg'),
(11, 5, '203da5fb2420bb2586a8a7b7c765d8f7c8d06ee4.jpg'),
(12, 5, 'f813fe9f224b1d6c56ae4c2e8db8175a6e6c0bd1.jpg'),
(13, 5, 'b2b82eba0e6fc03df7873eab084d454bd9c0f57a.jpg'),
(20, 7, 'aa69b0f7350dce7470e8f9dbf881bf3e7cbcece0.jpg'),
(22, 7, '6314aa753076f3279d6c6d87673b9774fa558034.jpg'),
(23, 7, 'cb1495d1bcfea113d1ded52fd816791a750ea20a.jpg'),
(25, 8, 'd8155f4f6636172a42f7a78b0fb371ff86b0a307.jpg'),
(26, 8, 'dcc72642041b0e9120f3bb5f836df919342544c3.jpg'),
(27, 8, '5f2885e0772c93d48d35e18c251730ace56ca721.jpg'),
(28, 9, '1045977fa06b6ad14e2a2ab308b80c24341636ae.jpg'),
(29, 9, '600bba9b03dfea41ec4586422e11c7f71546ee3b.jpg'),
(30, 9, '5baae5c8ff7207ea201cc2773e854f2d1ab63461.jpg'),
(31, 9, '0082ce94cf67063af7f449ec9ce66afda2d2f19a.jpg');

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
(1, '2023-11-28', 'PACHACUTEC LIMA', 'Casas, campos, departamentos.\r\nAl mejor precio.', 1, 'venta', 'Mz ll lote 7 comite 64 gambetta baja zzZZZ', '4', '2', '1', 'Si', '300x 200 metros', 5000, 'S/.', 'fotos/1/Purple Illustration City Desktop Wallpaper (1920 x 1080 px) (800 x 600 px) (2).png', 1, 1, 'Luis', '920208056'),
(2, '2023-11-29', 'CASA EN COMAS', 'Casa en Comas con hermosa vista al parque y zona tranquila.', 1, 'Venta', 'Mz ll lote 7 comite 64 gambetta baja', '4', '1', '', 'No', '3000x 2000 metros', 50000, 'S/.', 'fotos/2/Purple Illustration City Desktop Wallpaper (1920 x 1080 px).png', 1, 1, 'Edwin Silva Cardenas', '920208056'),
(5, '2023-12-04', 'Casa en Los Olivos Urb. Villa Los Ángeles', 'La propiedad cuenta con dos pisos de ingreso independiente.\r\nPrimer piso: 4 cuartos, 3 baños, 2 lavanderías, cocina, sala.\r\nSegundo piso: 3 cuartos, 2 baños, lavandería, cocina, sala.\r\nSe encuentra en excelente zona urbana y segura, cerca de vías principales, parques, centros comerciales, colegios, etc.\r\nAgenda tu visita, aprovecha está excelente oportunidad.', 2, 'venta', 'Calle Antonio Raimondi al 200, Villa Los Angeles', '4', '2', '2', 'No', '3000x 2000 metros', 200000, 'S/.', 'fotos/5/Screenshot_1.png', 1, 21, 'Juan José Carrera', '954 875 326'),
(7, '2024-01-11', 'Country San Antonio', 'Proyecto Country cuenta con casas de campo en condominio privado ubicado a 45 minutos de Lima y a 20 minutos del Boulevard de Asia.\r\nExclusivas casas de 142 m2 con 4 dormitorios. Podrás disfrutar de áreas deportivas, áreas comunes y una amplia piscina temperada, además de contar con una sede de playa. ¡Vive en la mejor ubicación en el Sur! Km 72 de la Panamericana Sur.', 2, 'venta', 'KM 72 de la panamericana Sur, San Antonio, Cañete, Lima .', '10', '5', '2', 'Si', '120x200 m²', 200000, 'S/.', 'fotos/7/departamentos-jesus-maria-627c29ee10be1_b.jpg', 1, 4, 'JOEL', '999 999 999'),
(8, '2024-01-15', 'VENTA DE DOS LOTES JUNTOS  PROGRAMA DE VIVIENDA LOS CLAVELES DE HUACOY ', 'VENTA DE DOS LOTES JUNTOS \r\nPROGRAMA DE VIVIENDA LOS CLAVELES DE HUACOY \r\nDISTRITO DE CARABAYLLO – LIMA.\r\n* DISTRITO: CARABAYLLO\r\n* ÁREA DE CADA LOTE DE TERRENO: 120M2 EN TOTAL 240M2\r\n* ZONIFICACION: \r\n* ACCESOS: AV. TUPAC AMARU KM. 22 CARRETERA LIMA CANTA \r\n* FRENTE: 8 METROS LINEALES (CADA LOTE)\r\n* LATERAL DERECHO: 15 METROS LINEALES (CADA LOTE)\r\n* LATERA IZQUIERDO: 15 METROS LINEALES (CADA LOTE)\r\n* POSTERIOR: 8 METROS LINEALES (CADA LOTE)\r\nPARAMETROS: 4 PISOS\r\n* DOCUMENTOS EN REGLA\r\n*CON TODO LOS SERVICIOS GENERALES \r\nESTA UBICADO MUY CERCA: CERCA DE CENTRO CAMPESTRES, COLEGIOS, CANCHAS DEPORTIVAS, TIENDA VEGA Y DOS CUADRAS DE LA AV. UNIVERSITARIA\r\nPRECIO: 100 MIL DOLARES CADA LOTE \r\nCELULAR: 990-844-873\r\nCORREO: fincasol2024@gmail.com', 4, 'venta', 'CARABAYLLO – LIMA', '', '', '', 'No', '', 200000, '$', 'fotos/8/WhatsApp Image 2024-01-15 at 5.17.17 PM.jpeg', 1, 10, '', '990-844-873'),
(9, '2024-01-16', 'VENTA DE TERRENO ASENT. HUMANO CERRO CANDELA SMP -LIMA.', 'VENTA DE TERRENO ASENT. HUMANO CERRO CANDELA SMP -LIMA.\r\n•	DISTRITO: SAN MARTIN DE PORRES\r\n•	AREA DE LOTE: 200 M2\r\nMEDIDAS\r\n	FRENTE: 20 METROS LINEALES\r\n        DERECHO: 10 METROS LINEALES\r\n	FONDO: 20 METROS LINEALES\r\n•	INCRITOS EN REGISTROS PUBLICOS\r\n•	CELULAR: 990-8444-873\r\n•	CORREO:fincasol2024@gmail.com\r\n', 4, 'venta', 'SAN MARTIN DE PORRES - LIMA', '', '', '', 'No', '', 70000, '$', 'fotos/9/WhatsApp Image 2024-01-16 at 9.18.04 PM.jpeg', 1, 23, '', '990-844-873');

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
(11, 'Casa Adosada'),
(12, ''),
(13, 'DEPA');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
