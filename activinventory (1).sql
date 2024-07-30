-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2023 a las 19:24:32
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
-- Base de datos: `activinventory`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actas`
--

CREATE TABLE `actas` (
  `ENTREGADO_POR` text NOT NULL,
  `CEDULA_E` int(10) NOT NULL,
  `UNIDAD_DE_NEGOCIO_E` text NOT NULL,
  `RECIBIDO_POR` text NOT NULL,
  `CEDULA_R` int(10) NOT NULL,
  `UNIDAD_DE_NEGOCIO_R` varchar(10) NOT NULL,
  `TIPO_DE_EQUIPO` varchar(10) NOT NULL,
  `MARCA_A` text NOT NULL,
  `MODELO_A` varchar(20) NOT NULL,
  `SERIE_A` varchar(20) NOT NULL,
  `N_ETIQUETA_ACT` int(10) NOT NULL,
  `ACCESORIOS_OTROS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asig_partes`
--

CREATE TABLE `asig_partes` (
  `TIPO_DE_ARTICULO` varchar(10) NOT NULL,
  `MARCA` text NOT NULL,
  `MODELO` varchar(20) NOT NULL,
  `SERIAL` varchar(20) NOT NULL,
  `ID_ETI_PAR` int(10) NOT NULL,
  `EAN` varchar(20) NOT NULL,
  `DISPONIBILIDAD` int(10) NOT NULL,
  `USUARIO` text NOT NULL,
  `CEDULA` int(10) NOT NULL,
  `SEDE` varchar(10) NOT NULL,
  `TIPO_DE_CASO` text NOT NULL,
  `FECHA_ASIG` date NOT NULL,
  `SERVICE_DESK_PART` varchar(10) NOT NULL,
  `FECHA_DE_RECEP` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envio`
--

CREATE TABLE `envio` (
  `DESTINO` int(10) NOT NULL,
  `CIUDAD` varchar(10) NOT NULL,
  `DIRECCION` varchar(20) NOT NULL,
  `REMITENTE` text NOT NULL,
  `GUIA` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kardex`
--

CREATE TABLE `kardex` (
  `ID_ETIQUETA` int(10) NOT NULL,
  `ESTANTE_SECCION` varchar(10) NOT NULL,
  `TIPO_DE_ART` varchar(20) NOT NULL,
  `MARCA` text NOT NULL,
  `MODELO` varchar(20) NOT NULL,
  `SERIAL` varchar(30) NOT NULL,
  `ACCESORIOS` text NOT NULL,
  `FECHA_MOVIMIENTO` date NOT NULL,
  `USUARIO` text NOT NULL,
  `MOVIMIENTO` varchar(10) NOT NULL,
  `ESTADO` varchar(10) NOT NULL,
  `CANT` text NOT NULL,
  `COMENTARIO` varchar(20) NOT NULL,
  `STOCK` int(20) NOT NULL,
  `ENTREGAS` int(20) NOT NULL,
  `MOVIMIENTOS` int(20) NOT NULL,
  `VALIDACION` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_activo`
--

CREATE TABLE `solicitud_activo` (
  `N_CONSECUTIVO` int(10) NOT NULL,
  `SERVICE_DESK` varchar(10) NOT NULL,
  `PEOPLE_SOFT` varchar(10) NOT NULL,
  `F_SOLICITUD` date NOT NULL,
  `REQUERIMIENTO` varchar(10) NOT NULL,
  `USUARIO_FINAL` text NOT NULL,
  `CEDULA` int(10) NOT NULL,
  `UN` int(5) NOT NULL,
  `EQUIPO_ASIGNADO` varchar(10) NOT NULL,
  `ID_ETIQUETA_SOL_FK` int(10) NOT NULL,
  `FECHA_DE_ENVIO` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_kardex`
--

CREATE TABLE `usuarios_kardex` (
  `USUARIO_ALM` text NOT NULL,
  `ROL` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `envio`
--
ALTER TABLE `envio`
  ADD PRIMARY KEY (`GUIA`);

--
-- Indices de la tabla `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`ID_ETIQUETA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
