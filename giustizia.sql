﻿-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2016 a las 19:05:18
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `giustizia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_agenda`
--

CREATE TABLE IF NOT EXISTS `tbl_agenda` (
  `agen_LugarCita` varchar(45) NOT NULL,
  `agen_NumeroCita` int(11) NOT NULL,
  `agen_Expediente` varchar(35) NOT NULL,
  `agen_Departamento` int(11) NOT NULL,
  `agen_Municipio` int(11) NOT NULL,
  `agen_FechaCita` datetime NOT NULL,
  `agen_Observaciones` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_casificacionproceso`
--

CREATE TABLE IF NOT EXISTS `tbl_casificacionproceso` (
`clapro_Id` int(11) NOT NULL,
  `clapro_CasificacionProceso` varchar(60) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_casificacionproceso`
--

INSERT INTO `tbl_casificacionproceso` (`clapro_Id`, `clapro_CasificacionProceso`) VALUES
(1, 'Ordinario'),
(2, 'Ordinario Sumario'),
(3, 'Abreviado'),
(4, 'Verbal'),
(5, 'Verbal Sumario'),
(6, 'Deslinde y Amojonamiento'),
(7, 'Expropiación'),
(8, 'Divisorio Pequeñas Comunidades'),
(9, 'Divisorio Grandes Comunidades'),
(10, 'De Ejecución singular'),
(11, 'Con Acción Real o Prendaria'),
(12, 'Concurso de Acreedores'),
(13, 'Sucesiones'),
(14, 'Liquidación de Sociedades Conyugales'),
(15, 'Liquidación de Sociedades Civiles y Comerciales'),
(16, 'Proceso Penal en Curso (Ante Fiscalía)'),
(17, 'Proceso Penal en Curso (Juzgado Penal Municipal)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_consultas`
--

CREATE TABLE IF NOT EXISTS `tbl_consultas` (
  `Cons_Id` int(11) NOT NULL,
  `Cons_NoConsulta` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Cons_Fecha` date NOT NULL,
  `Cons_Atendido` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Cons_Cliente` int(11) NOT NULL,
  `Cons_DetalleConsulta` text COLLATE utf8_spanish_ci NOT NULL,
  `Cons_Cuantia` bigint(20) DEFAULT NULL,
  `Cons_Tramite` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Cons_TipoAccion` int(11) DEFAULT NULL,
  `Cons_Observacioes` text COLLATE utf8_spanish_ci,
  `Cons_AbogadoAsignado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_consultas`
--

INSERT INTO `tbl_consultas` (`Cons_Id`, `Cons_NoConsulta`, `Cons_Fecha`, `Cons_Atendido`, `Cons_Cliente`, `Cons_DetalleConsulta`, `Cons_Cuantia`, `Cons_Tramite`, `Cons_TipoAccion`, `Cons_Observacioes`, `Cons_AbogadoAsignado`) VALUES
(1, '800123456-1-2015', '2015-12-16', '', 1000123456, 'SI NO PUEDES MODIFICAR LA APLICACION NI EL PROCEDIMIENTO ALMACENADO, ¿QUE Sí PUEDES MODIFICAR? NO Sé EN QUé MODO PODEMOS AYUDARTE, PERO LO QUE DEBERíAS HACER ES HABLAR CON EL QUE Sí PUEDA HACER CAMBIOS EN LAS APLICACIONES, YA QUE SERá QUIEN PUEDA AYUDARTE.', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_departamentos`
--

CREATE TABLE IF NOT EXISTS `tbl_departamentos` (
  `depa_Id` int(11) NOT NULL,
  `depa_Codigo` varchar(2) DEFAULT NULL,
  `depa_Departamento` varchar(60) NOT NULL,
  `depa_Capital` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_departamentos`
--

INSERT INTO `tbl_departamentos` (`depa_Id`, `depa_Codigo`, `depa_Departamento`, `depa_Capital`) VALUES
(5, '05', 'ANTIOQUIA', 'MEDELLIN'),
(8, '08', 'ATLÁNTICO', 'BARRANQUILLA'),
(11, '11', 'BOGOTÁ D.C', 'BOGOTA'),
(13, '13', 'BOLÍVAR', 'CARTAGENA'),
(15, '15', 'BOYACÁ', 'TUNJA'),
(17, '17', 'CALDAS', 'MANIZALES'),
(18, '18', 'CAQUETÁ', 'FLORENCIA'),
(19, '19', 'CAUCA', 'POPAYAN'),
(20, '20', 'CESAR', 'VALLEDUPAR'),
(23, '23', 'CÓRDOBA', 'MONTERIA'),
(25, '25', 'CUNDINAMARCA', 'BOGOTÁ D.C'),
(27, '27', 'CHOCÓ', 'QUIBDO'),
(41, '41', 'HUILA', 'NEIVA'),
(44, '44', 'LA GUAJIRA', 'RIOHACHA'),
(47, '47', 'MAGDALENA', 'SANTA MARTA'),
(50, '50', 'META', 'VILLAVICENCIO'),
(52, '52', 'NARIÑO', 'PASTO'),
(54, '54', 'NTE DE SANTANDER', 'CUCUTA'),
(63, '63', 'QUINDIO', 'ARMENIA'),
(66, '66', 'RISARALDA', 'PEREIRA'),
(68, '68', 'SANTANDER', 'BUCARAMANGA'),
(70, '70', 'SUCRE', 'SINCELEJO'),
(73, '73', 'TOLIMA', 'IBAGUE'),
(76, '76', 'VALLE DEL CAUCA', 'CALI'),
(81, '81', 'ARAUCA', 'ARAUCA'),
(85, '85', 'CASANARE', 'YOPAL'),
(86, '86', 'PUTUMAYO', 'MOCOA'),
(88, '88', 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SANTA CATALINA', 'SAN ANDRES'),
(91, '91', 'AMAZONAS', 'LETICIA'),
(94, '94', 'GUAINÍA', 'INIRIDA'),
(95, '95', 'GUAVIARE', 'SAN JOSE DEL GUAVIARE'),
(97, '97', 'VAUPÉS', 'MITU'),
(99, '99', 'VICHADA', 'PUERTO CARREÑO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_especialidades`
--

CREATE TABLE IF NOT EXISTS `tbl_especialidades` (
`espe_Id` int(11) NOT NULL,
  `espe_Descripcion` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estados`
--

CREATE TABLE IF NOT EXISTS `tbl_estados` (
`Estado_Id` int(11) NOT NULL,
  `Estado_Estado` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_estados`
--

INSERT INTO `tbl_estados` (`Estado_Id`, `Estado_Estado`) VALUES
(1, 'ACTIVO'),
(2, 'INACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estratos`
--

CREATE TABLE IF NOT EXISTS `tbl_estratos` (
`estr_Id` int(11) NOT NULL,
  `estr_Estrato` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_estratos`
--

INSERT INTO `tbl_estratos` (`estr_Id`, `estr_Estrato`) VALUES
(1, 'UNO'),
(2, 'DOS'),
(3, 'TRES'),
(4, 'CUATRO'),
(5, 'CINCO'),
(6, 'SEIS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_expedientes`
--

CREATE TABLE IF NOT EXISTS `tbl_expedientes` (
  `exp_NumeroExpediente` varchar(35) NOT NULL,
  `exp_Id` int(11) NOT NULL,
  `exp_DocumentoConsultorio` int(11) NOT NULL,
  `exp_FechaExpediente` date NOT NULL,
  `exp_Consulta` varchar(25) NOT NULL,
  `exp_EstadoExpediente` varchar(10) NOT NULL,
  `exp_Especialidad` int(11) NOT NULL,
  `exp_Abogado` int(11) NOT NULL,
  `exp_TipoJuzgado` int(11) NOT NULL,
  `exp_Soportes` text NOT NULL,
  `exp_ObservacionExpedientes` longtext NOT NULL,
  `exp_ClasificacionProceso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_festivos`
--

CREATE TABLE IF NOT EXISTS `tbl_festivos` (
  `Fecha` date NOT NULL,
  `Dia` int(11) NOT NULL,
  `Mes` int(11) NOT NULL,
  `Anno` int(4) NOT NULL,
  `Celebracion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_festivos`
--

INSERT INTO `tbl_festivos` (`Fecha`, `Dia`, `Mes`, `Anno`, `Celebracion`) VALUES
('2015-01-12', 12, 1, 2015, 'Día de los Reyes Magos'),
('2015-03-23', 23, 3, 2015, 'Día de San José'),
('2015-03-29', 29, 3, 2015, 'Domingo de Ramos'),
('2015-04-02', 2, 4, 2015, 'Jueves Santo'),
('2015-04-03', 3, 4, 2015, 'Viernes Santo'),
('2015-04-05', 5, 4, 2015, 'Domingo de Resurrección'),
('2015-05-01', 1, 5, 2015, 'Día del Trabajo'),
('2015-05-18', 18, 5, 2015, 'Día de la Ascensión'),
('2015-06-08', 8, 6, 2015, 'Corpus Christi'),
('2015-06-15', 15, 6, 2015, 'Sagrado Corazón'),
('2015-06-29', 29, 6, 2015, 'San Pedro y San Pablo'),
('2015-07-20', 20, 7, 2015, 'Día de la Independencia'),
('2015-08-07', 7, 8, 2015, 'Batalla de Boyacá'),
('2015-08-17', 17, 8, 2015, 'La asunción de la Virgen'),
('2015-10-12', 12, 10, 2015, 'Día de la Raza'),
('2015-11-02', 2, 11, 2015, 'Todos los Santos'),
('2015-11-16', 16, 11, 2015, 'Independencia de Cartagena'),
('2015-12-08', 8, 12, 2015, 'Día de la Inmaculada Concepción'),
('2015-12-25', 25, 12, 2015, 'Día de Navidad'),
('2016-01-01', 1, 1, 2016, 'Año Nuevo'),
('2016-01-11', 11, 1, 2016, 'Día de los Reyes Magos'),
('2016-03-20', 20, 3, 2016, 'Domingo de Ramos'),
('2016-03-21', 21, 3, 2016, 'Día de San José'),
('2016-03-24', 24, 3, 2016, 'Jueves Santo'),
('2016-03-25', 25, 3, 2016, 'Viernes Santo'),
('2016-03-27', 27, 3, 2016, 'Domingo de Resurrección'),
('2016-05-01', 1, 5, 2016, 'Día del Trabajo'),
('2016-05-09', 9, 5, 2016, 'Día de la Ascensión'),
('2016-05-30', 30, 5, 2016, 'Corpus Christi'),
('2016-06-06', 6, 6, 2016, 'Sagrado Corazón'),
('2016-07-04', 4, 7, 2016, 'San Pedro y San Pablo'),
('2016-07-20', 20, 7, 2016, 'Día de la Independencia'),
('2016-08-07', 7, 8, 2016, 'Batalla de Boyacá'),
('2016-08-15', 15, 8, 2016, 'La asunción de la Virgen'),
('2016-10-17', 17, 10, 2016, 'Día de la Raza'),
('2016-11-07', 7, 11, 2016, 'Todos los Santos'),
('2016-11-14', 14, 11, 2016, 'Independencia de Cartagena'),
('2016-12-08', 8, 12, 2016, 'Día de la Inmaculada Concepción'),
('2016-12-25', 25, 12, 2016, 'Día de Navidad'),
('2017-01-01', 1, 1, 2017, 'Año Nuevo'),
('2017-01-09', 9, 1, 2017, 'Día de los Reyes Magos'),
('2017-03-20', 20, 3, 2017, 'Día de San José'),
('2017-04-09', 9, 4, 2017, 'Domingo de Ramos'),
('2017-04-13', 13, 4, 2017, 'Jueves Santo'),
('2017-04-14', 14, 4, 2017, 'Viernes Santo'),
('2017-04-16', 16, 4, 2017, 'Domingo de Resurrección'),
('2017-05-01', 1, 5, 2017, 'Día del Trabajo'),
('2017-05-29', 29, 5, 2017, 'Día de la Ascensión'),
('2017-06-19', 19, 6, 2017, 'Corpus Christi'),
('2017-06-26', 26, 6, 2017, 'Sagrado Corazón'),
('2017-07-03', 3, 7, 2017, 'San Pedro y San Pablo'),
('2017-07-20', 20, 7, 2017, 'Día de la Independencia'),
('2017-08-07', 7, 8, 2017, 'Batalla de Boyacá'),
('2017-08-21', 21, 8, 2017, 'La asunción de la Virgen'),
('2017-10-16', 16, 10, 2017, 'Día de la Raza'),
('2017-11-06', 6, 11, 2017, 'Todos los Santos'),
('2017-11-13', 13, 11, 2017, 'Independencia de Cartagena'),
('2017-12-08', 8, 12, 2017, 'Día de la Inmaculada Concepción'),
('2017-12-25', 25, 12, 2017, 'Día de Navidad'),
('2018-01-01', 1, 1, 2018, 'Año Nuevo'),
('2018-01-08', 8, 1, 2018, 'Día de los Reyes Magos'),
('2018-03-19', 19, 3, 2018, 'Día de San José'),
('2018-03-25', 25, 3, 2018, 'Domingo de Ramos'),
('2018-03-29', 29, 3, 2018, 'Jueves Santo'),
('2018-03-30', 30, 3, 2018, 'Viernes Santo'),
('2018-04-01', 1, 4, 2018, 'Domingo de Resurrección'),
('2018-05-01', 1, 5, 2018, 'Día del Trabajo'),
('2018-05-14', 14, 5, 2018, 'Día de la Ascensión'),
('2018-06-04', 4, 6, 2018, 'Corpus Christi'),
('2018-06-11', 11, 6, 2018, 'Sagrado Corazón'),
('2018-07-02', 2, 7, 2018, 'San Pedro y San Pablo'),
('2018-07-20', 20, 7, 2018, 'Día de la Independencia'),
('2018-08-07', 7, 8, 2018, 'Batalla de Boyacá'),
('2018-08-20', 20, 8, 2018, 'La asunción de la Virgen'),
('2018-10-15', 15, 10, 2018, 'Día de la Raza'),
('2018-11-05', 5, 11, 2018, 'Todos los Santos'),
('2018-11-12', 12, 11, 2018, 'Independencia de Cartagena'),
('2018-12-08', 8, 12, 2018, 'Día de la Inmaculada Concepción'),
('2018-12-25', 25, 12, 2018, 'Día de Navidad'),
('2019-01-01', 1, 1, 2019, 'Año Nuevo'),
('2019-01-07', 7, 1, 2019, 'Día de los Reyes Magos'),
('2019-03-25', 25, 3, 2019, 'Día de San José'),
('2019-04-14', 14, 4, 2019, 'Domingo de Ramos'),
('2019-04-18', 18, 4, 2019, 'Jueves Santo'),
('2019-04-19', 19, 4, 2019, 'Viernes Santo'),
('2019-04-21', 21, 4, 2019, 'Domingo de Resurrección'),
('2019-05-01', 1, 5, 2019, 'Día del Trabajo'),
('2019-06-03', 3, 6, 2019, 'Día de la Ascensión'),
('2019-06-24', 24, 6, 2019, 'Corpus Christi'),
('2019-07-01', 1, 7, 2019, 'Sagrado Corazón , San Pedro y San Pablo'),
('2019-07-20', 20, 7, 2019, 'Día de la Independencia'),
('2019-08-07', 7, 8, 2019, 'Batalla de Boyacá'),
('2019-08-19', 19, 8, 2019, 'La asunción de la Virgen'),
('2019-10-14', 14, 10, 2019, 'Día de la Raza'),
('2019-11-04', 4, 11, 2019, 'Todos los Santos'),
('2019-11-11', 11, 11, 2019, 'Independencia de Cartagena'),
('2019-12-08', 8, 12, 2019, 'Día de la Inmaculada Concepción'),
('2019-12-25', 25, 12, 2019, 'Día de Navidad'),
('2020-01-01', 1, 1, 2020, 'Año Nuevo'),
('2020-01-06', 6, 1, 2020, 'Día de los Reyes Magos'),
('2020-03-23', 23, 3, 2020, 'Día de San José'),
('2020-04-05', 5, 4, 2020, 'Domingo de Ramos'),
('2020-04-09', 9, 4, 2020, 'Jueves Santo'),
('2020-04-10', 10, 4, 2020, 'Viernes Santo'),
('2020-04-12', 12, 4, 2020, 'Domingo de Resurrección'),
('2020-05-01', 1, 5, 2020, 'Día del Trabajo'),
('2020-05-25', 25, 5, 2020, 'Día de la Ascensión'),
('2020-06-15', 15, 6, 2020, 'Corpus Christi'),
('2020-06-22', 22, 6, 2020, 'Sagrado Corazón'),
('2020-06-29', 29, 6, 2020, 'San Pedro y San Pablo'),
('2020-07-20', 20, 7, 2020, 'Día de la Independencia'),
('2020-08-07', 7, 8, 2020, 'Batalla de Boyacá'),
('2020-08-17', 17, 8, 2020, 'La asunción de la Virgen'),
('2020-10-12', 12, 10, 2020, 'Día de la Raza'),
('2020-11-02', 2, 11, 2020, 'Todos los Santos'),
('2020-11-16', 16, 11, 2020, 'Independencia de Cartagena'),
('2020-12-08', 8, 12, 2020, 'Día de la Inmaculada Concepción'),
('2020-12-25', 25, 12, 2020, 'Día de Navidad'),
('2021-01-01', 1, 1, 2021, 'Año Nuevo'),
('2021-07-20', 20, 7, 2021, 'Grito de Independencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_gestion`
--

CREATE TABLE IF NOT EXISTS `tbl_gestion` (
  `gest_Id` int(11) NOT NULL,
  `gest_Expediente` varchar(35) NOT NULL,
  `gest_TipoGestion` int(11) NOT NULL,
  `gest_FechaInicio` date NOT NULL,
  `gest_DiasDuracion` int(11) NOT NULL,
  `gest_FechaVen` date NOT NULL,
  `gest_Observacion` longtext NOT NULL,
  `gest_Terminado` tinyint(1) NOT NULL,
  `gest_FechaIngreso` date NOT NULL,
  `gest_FechaTerminacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_juzgados`
--

CREATE TABLE IF NOT EXISTS `tbl_juzgados` (
  `juz_Id` int(11) NOT NULL,
  `juz_TipoJuzgado` int(11) NOT NULL,
  `juz_Juzgado` varchar(80) NOT NULL,
  `juz_Departamento` int(11) NOT NULL,
  `juz_Municipio` int(11) NOT NULL,
  `juz_Circuito` varchar(200) NOT NULL,
  `juz_Distrito` varchar(200) NOT NULL,
  `juz_Direccion` varchar(100) NOT NULL,
  `juz_Telefono` varchar(80) NOT NULL,
  `juz_Contacto` varchar(80) NOT NULL,
  `juz_HorarioAtencion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_municipios`
--

CREATE TABLE IF NOT EXISTS `tbl_municipios` (
  `muni_Codigo` varchar(5) NOT NULL,
  `muni_Departamento` int(11) NOT NULL,
  `muni_Municipio` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_municipios`
--

INSERT INTO `tbl_municipios` (`muni_Codigo`, `muni_Departamento`, `muni_Municipio`) VALUES
('05001', 5, 'MEDELLIN'),
('05002', 5, 'ABEJORRAL'),
('05004', 5, 'ABRIAQUI'),
('05021', 5, 'ALEJANDRIA'),
('05030', 5, 'AMAGA'),
('05031', 5, 'AMALFI'),
('05034', 5, 'ANDES'),
('05036', 5, 'ANGELOPOLIS'),
('05038', 5, 'ANGOSTURA'),
('05040', 5, 'ANORI'),
('05042', 5, 'SANTAFE DE ANTIOQUIA'),
('05044', 5, 'ANZA'),
('05045', 5, 'APARTADO'),
('05051', 5, 'ARBOLETES'),
('05055', 5, 'ARGELIA (ANTIOQUIA)'),
('05059', 5, 'ARMENIA (ANTIOQUIA)'),
('05079', 5, 'BARBOSA (ANTIOQUIA)'),
('05086', 5, 'BELMIRA'),
('05088', 5, 'BELLO'),
('05091', 5, 'BETANIA'),
('05093', 5, 'BETULIA (ANTIOQUIA)'),
('05101', 5, 'CIUDAD BOLIVAR'),
('05107', 5, 'BRICEÑO (ANTIOQUIA)'),
('05113', 5, 'BURITICA'),
('05120', 5, 'CACERES'),
('05125', 5, 'CAICEDO'),
('05129', 5, 'CALDAS (ANTIOQUIA)'),
('05134', 5, 'CAMPAMENTO'),
('05138', 5, 'CAÑASGORDAS'),
('05142', 5, 'CARACOLI'),
('05145', 5, 'CARAMANTA'),
('05147', 5, 'CAREPA'),
('05148', 5, 'EL CARMEN DE VIBORAL'),
('05150', 5, 'CAROLINA'),
('05154', 5, 'CAUCASIA'),
('05172', 5, 'CHIGORODO'),
('05190', 5, 'CISNEROS'),
('05197', 5, 'COCORNA'),
('05206', 5, 'CONCEPCION (ANITOQUIA)'),
('05209', 5, 'CONCORDIA (ANTIOQUIA)'),
('05212', 5, 'COPACABANA'),
('05234', 5, 'DABEIBA'),
('05237', 5, 'DON MATIAS'),
('05240', 5, 'EBEJICO'),
('05250', 5, 'EL BAGRE'),
('05264', 5, 'ENTRERRIOS'),
('05266', 5, 'ENVIGADO'),
('05282', 5, 'FREDONIA'),
('05284', 5, 'FRONTINO'),
('05306', 5, 'GIRALDO'),
('05308', 5, 'GIRARDOTA'),
('05310', 5, 'GOMEZ PLATA'),
('05313', 5, 'GRANADA (ANTIOQUIA)'),
('05315', 5, 'GUADALUPE (ANTIOQUIA)'),
('05318', 5, 'GUARNE'),
('05321', 5, 'GUATAPE'),
('05347', 5, 'HELICONIA'),
('05353', 5, 'HISPANIA'),
('05360', 5, 'ITAGUI'),
('05361', 5, 'ITUANGO'),
('05364', 5, 'JARDIN'),
('05368', 5, 'JERICO (ANTIOQUIA)'),
('05376', 5, 'LA CEJA'),
('05380', 5, 'LA ESTRELLA'),
('05390', 5, 'LA PINTADA'),
('05400', 5, 'LA UNION (ANTIOQUIA)'),
('05411', 5, 'LIBORINA'),
('05425', 5, 'MACEO'),
('05440', 5, 'MARINILLA'),
('05467', 5, 'MONTEBELLO'),
('05475', 5, 'MURINDO'),
('05480', 5, 'MUTATA'),
('05483', 5, 'NARIÑO (ANTIOQUIA)'),
('05490', 5, 'NECOCLI'),
('05495', 5, 'NECHI'),
('05501', 5, 'OLAYA'),
('05541', 5, 'PEÑOL'),
('05543', 5, 'PEQUE'),
('05576', 5, 'PUEBLORRICO'),
('05579', 5, 'PUERTO BERRIO'),
('05585', 5, 'PUERTO NARE'),
('05591', 5, 'PUERTO TRIUNFO'),
('05604', 5, 'REMEDIOS'),
('05607', 5, 'RETIRO'),
('05615', 5, 'RIONEGRO (ANTIOQUIA)'),
('05628', 5, 'SABANALARGA (ANTIOQUIA)'),
('05631', 5, 'SABANETA'),
('05642', 5, 'SALGAR'),
('05647', 5, 'SAN ANDRES (ANTIOQUIA)'),
('05649', 5, 'SAN CARLOS (ANTIOQUIA)'),
('05652', 5, 'SAN FRANCISCO (ANTIOQUIA)'),
('05656', 5, 'SAN JERONIMO'),
('05658', 5, 'SAN JOSE DE LA MONTAÑA'),
('05659', 5, 'SAN JUAN DE URABA'),
('05660', 5, 'SAN LUIS (ANTIOQUIA)'),
('05664', 5, 'SAN PEDRO (ANTIOQUIA)'),
('05665', 5, 'SAN PEDRO DE URABA'),
('05667', 5, 'SAN RAFAEL'),
('05670', 5, 'SAN ROQUE'),
('05674', 5, 'SAN VICENTE'),
('05679', 5, 'SANTA BARBARA (ANTIOQUIA)'),
('05686', 5, 'SANTA ROSA DE OSOS'),
('05690', 5, 'SANTO DOMINGO'),
('05697', 5, 'EL SANTUARIO'),
('05736', 5, 'SEGOVIA'),
('05756', 5, 'SONSON'),
('05761', 5, 'SOPETRAN'),
('05789', 5, 'TAMESIS'),
('05790', 5, 'TARAZA'),
('05792', 5, 'TARSO'),
('05809', 5, 'TITIRIBI'),
('05819', 5, 'TOLEDO (ANTIOQUIA)'),
('05837', 5, 'TURBO'),
('05842', 5, 'URAMITA'),
('05847', 5, 'URRAO'),
('05854', 5, 'VALDIVIA'),
('05856', 5, 'VALPARAISO (ANTIOQUIA)'),
('05858', 5, 'VEGACHI'),
('05861', 5, 'VENECIA (ANTIOQUIA)'),
('05873', 5, 'VIGIA DEL FUERTE'),
('05885', 5, 'YALI'),
('05887', 5, 'YARUMAL'),
('05890', 5, 'YOLOMBO'),
('05893', 5, 'YONDO'),
('05895', 5, 'ZARAGOZA'),
('08001', 8, 'BARRANQUILLA'),
('08078', 8, 'BARANOA'),
('08137', 8, 'CAMPO DE LA CRUZ'),
('08141', 8, 'CANDELARIA (ATLANTICO)'),
('08296', 8, 'GALAPA'),
('08372', 8, 'JUAN DE ACOSTA'),
('08421', 8, 'LURUACO'),
('08433', 8, 'MALAMBO'),
('08436', 8, 'MANATI'),
('08520', 8, 'PALMAR DE VARELA'),
('08549', 8, 'PIOJO'),
('08558', 8, 'POLONUEVO'),
('08560', 8, 'PONEDERA'),
('08573', 8, 'PUERTO COLOMBIA (ATLANTICO)'),
('08606', 8, 'REPELON'),
('08634', 8, 'SABANAGRANDE'),
('08638', 8, 'SABANALARGA (ATLANTICO)'),
('08675', 8, 'SANTA LUCIA'),
('08685', 8, 'SANTO TOMAS'),
('08758', 8, 'SOLEDAD'),
('08770', 8, 'SUAN'),
('08832', 8, 'TUBARA'),
('08849', 8, 'USIACURI'),
('11001', 11, 'BOGOTA'),
('13001', 13, 'CARTAGENA'),
('13006', 13, 'ACHI'),
('13030', 13, 'ALTOS DEL ROSARIO'),
('13042', 13, 'ARENAL'),
('13052', 13, 'ARJONA'),
('13062', 13, 'ARROYOHONDO'),
('13074', 13, 'BARRANCO DE LOBA'),
('13140', 13, 'CALAMAR (BOLIVAR)'),
('13160', 13, 'CANTAGALLO'),
('13188', 13, 'CICUCO'),
('13212', 13, 'CORDOBA (BOLIVAR)'),
('13222', 13, 'CLEMENCIA'),
('13244', 13, 'EL CARMEN DE BOLIVAR'),
('13248', 13, 'EL GUAMO'),
('13268', 13, 'EL PEÑON (BOLIVAR)'),
('13300', 13, 'HATILLO DE LOBA'),
('13430', 13, 'MAGANGUE'),
('13433', 13, 'MAHATES'),
('13440', 13, 'MARGARITA'),
('13442', 13, 'MARIA LA BAJA'),
('13458', 13, 'MONTECRISTO'),
('13468', 13, 'MOMPOS'),
('13473', 13, 'MORALES (BOLIVAR)'),
('13549', 13, 'PINILLOS'),
('13580', 13, 'REGIDOR'),
('13600', 13, 'RIO VIEJO'),
('13620', 13, 'SAN CRISTOBAL'),
('13647', 13, 'SAN ESTANISLAO'),
('13650', 13, 'SAN FERNANDO'),
('13654', 13, 'SAN JACINTO'),
('13655', 13, 'SAN JACINTO DEL CAUCA'),
('13657', 13, 'SAN JUAN NEPOMUCENO'),
('13667', 13, 'SAN MARTIN DE LOBA'),
('13670', 13, 'SAN PABLO (BOLIVAR)'),
('13673', 13, 'SANTA CATALINA'),
('13683', 13, 'SANTA ROSA (BOLIVAR)'),
('13688', 13, 'SANTA ROSA DEL SUR'),
('13744', 13, 'SIMITI'),
('13760', 13, 'SOPLAVIENTO'),
('13780', 13, 'TALAIGUA NUEVO'),
('13810', 13, 'TIQUISIO'),
('13836', 13, 'TURBACO'),
('13838', 13, 'TURBANA'),
('13873', 13, 'VILLANUEVA (BOLIVAR)'),
('13894', 13, 'ZAMBRANO'),
('15001', 15, 'TUNJA'),
('15022', 15, 'ALMEIDA'),
('15047', 15, 'AQUITANIA'),
('15051', 15, 'ARCABUCO'),
('15087', 15, 'BELEN (BOYACA)'),
('15090', 15, 'BERBEO'),
('15092', 15, 'BETEITIVA'),
('15097', 15, 'BOAVITA'),
('15104', 15, 'BOYACA'),
('15106', 15, 'BRICEÑO (BOYACA)'),
('15109', 15, 'BUENAVISTA (BOYACA)'),
('15114', 15, 'BUSBANZA'),
('15131', 15, 'CALDAS (BOYACA)'),
('15135', 15, 'CAMPOHERMOSO'),
('15162', 15, 'CERINZA'),
('15172', 15, 'CHINAVITA'),
('15176', 15, 'CHIQUINQUIRA'),
('15180', 15, 'CHISCAS'),
('15183', 15, 'CHITA'),
('15185', 15, 'CHITARAQUE'),
('15187', 15, 'CHIVATA'),
('15189', 15, 'CIENEGA'),
('15204', 15, 'COMBITA'),
('15212', 15, 'COPER'),
('15215', 15, 'CORRALES'),
('15218', 15, 'COVARACHIA'),
('15223', 15, 'CUBARA'),
('15224', 15, 'CUCAITA'),
('15226', 15, 'CUITIVA'),
('15232', 15, 'CHIQUIZA'),
('15236', 15, 'CHIVOR'),
('15238', 15, 'DUITAMA'),
('15244', 15, 'EL COCUY'),
('15248', 15, 'EL ESPINO'),
('15272', 15, 'FIRAVITOBA'),
('15276', 15, 'FLORESTA'),
('15293', 15, 'GACHANTIVA'),
('15296', 15, 'GAMEZA'),
('15299', 15, 'GARAGOA'),
('15317', 15, 'GUACAMAYAS'),
('15322', 15, 'GUATEQUE'),
('15325', 15, 'GUAYATA'),
('15332', 15, 'GÜICAN'),
('15362', 15, 'IZA'),
('15367', 15, 'JENESANO'),
('15368', 15, 'JERICO (BOYACA)'),
('15377', 15, 'LABRANZAGRANDE'),
('15380', 15, 'LA CAPILLA'),
('15401', 15, 'LA VICTORIA (BOYACA)'),
('15403', 15, 'LA UVITA'),
('15407', 15, 'VILLA DE LEYVA'),
('15425', 15, 'MACANAL'),
('15442', 15, 'MARIPI'),
('15455', 15, 'MIRAFLORES (BOYACA)'),
('15464', 15, 'MONGUA'),
('15466', 15, 'MONGUI'),
('15469', 15, 'MONIQUIRA'),
('15476', 15, 'MOTAVITA'),
('15480', 15, 'MUZO'),
('15491', 15, 'NOBSA'),
('15494', 15, 'NUEVO COLON'),
('15500', 15, 'OICATA'),
('15507', 15, 'OTANCHE'),
('15511', 15, 'PACHAVITA'),
('15514', 15, 'PAEZ (BOYACA)'),
('15516', 15, 'PAIPA'),
('15518', 15, 'PAJARITO'),
('15522', 15, 'PANQUEBA'),
('15531', 15, 'PAUNA'),
('15533', 15, 'PAYA'),
('15537', 15, 'PAZ DE RIO'),
('15542', 15, 'PESCA'),
('15550', 15, 'PISBA'),
('15572', 15, 'PUERTO BOYACA'),
('15580', 15, 'QUIPAMA'),
('15599', 15, 'RAMIRIQUI'),
('15600', 15, 'RAQUIRA'),
('15621', 15, 'RONDON'),
('15632', 15, 'SABOYA'),
('15638', 15, 'SACHICA'),
('15646', 15, 'SAMACA'),
('15660', 15, 'SAN EDUARDO'),
('15664', 15, 'SAN JOSE DE PARE'),
('15667', 15, 'SAN LUIS DE GACENO'),
('15673', 15, 'SAN MATEO'),
('15676', 15, 'SAN MIGUEL DE SEMA'),
('15681', 15, 'SAN PABLO DE BORBUR'),
('15686', 15, 'SANTANA'),
('15690', 15, 'SANTA MARIA (BOYACA)'),
('15693', 15, 'SANTA ROSA DE VITERBO'),
('15696', 15, 'SANTA SOFIA'),
('15720', 15, 'SATIVANORTE'),
('15723', 15, 'SATIVASUR'),
('15740', 15, 'SIACHOQUE'),
('15753', 15, 'SOATA'),
('15755', 15, 'SOCOTA'),
('15757', 15, 'SOCHA'),
('15759', 15, 'SOGAMOSO'),
('15761', 15, 'SOMONDOCO'),
('15762', 15, 'SORA'),
('15763', 15, 'SOTAQUIRA'),
('15764', 15, 'SORACA'),
('15774', 15, 'SUSACON'),
('15776', 15, 'SUTAMARCHAN'),
('15778', 15, 'SUTATENZA'),
('15790', 15, 'TASCO'),
('15798', 15, 'TENZA'),
('15804', 15, 'TIBANA'),
('15806', 15, 'TIBASOSA'),
('15808', 15, 'TINJACA'),
('15810', 15, 'TIPACOQUE'),
('15814', 15, 'TOCA'),
('15816', 15, 'TOGÜI'),
('15820', 15, 'TOPAGA'),
('15822', 15, 'TOTA'),
('15832', 15, 'TUNUNGUA'),
('15835', 15, 'TURMEQUE'),
('15837', 15, 'TUTA'),
('15839', 15, 'TUTAZA'),
('15842', 15, 'UMBITA'),
('15861', 15, 'VENTAQUEMADA'),
('15879', 15, 'VIRACACHA'),
('15897', 15, 'ZETAQUIRA'),
('17001', 17, 'MANIZALES'),
('17013', 17, 'AGUADAS'),
('17042', 17, 'ANSERMA'),
('17050', 17, 'ARANZAZU'),
('17088', 17, 'BELALCAZAR'),
('17174', 17, 'CHINCHINA'),
('17272', 17, 'FILADELFIA'),
('17380', 17, 'LA DORADA'),
('17388', 17, 'LA MERCED'),
('17433', 17, 'MANZANARES'),
('17442', 17, 'MARMATO'),
('17444', 17, 'MARQUETALIA'),
('17446', 17, 'MARULANDA'),
('17486', 17, 'NEIRA'),
('17495', 17, 'NORCASIA'),
('17513', 17, 'PACORA'),
('17524', 17, 'PALESTINA (CALDAS)'),
('17541', 17, 'PENSILVANIA'),
('17614', 17, 'RIOSUCIO (CALDAS)'),
('17616', 17, 'RISARALDA'),
('17653', 17, 'SALAMINA (CALDAS)'),
('17662', 17, 'SAMANA'),
('17665', 17, 'SAN JOSE'),
('17777', 17, 'SUPIA'),
('17867', 17, 'VICTORIA'),
('17873', 17, 'VILLAMARIA'),
('17877', 17, 'VITERBO'),
('18001', 18, 'FLORENCIA (CAQUETA)'),
('18029', 18, 'ALBANIA (CAQUETA)'),
('18094', 18, 'BELEN DE LOS ANDAQUIES'),
('18150', 18, 'CARTAGENA DEL CHAIRA'),
('18205', 18, 'CURILLO'),
('18247', 18, 'EL DONCELLO'),
('18256', 18, 'EL PAUJIL'),
('18410', 18, 'LA MONTAÑITA'),
('18460', 18, 'MILAN'),
('18479', 18, 'MORELIA'),
('18592', 18, 'PUERTO RICO (CAQUETA)'),
('18610', 18, 'SAN JOSE DEL FRAGUA'),
('18753', 18, 'SAN VICENTE DEL CAGUAN'),
('18756', 18, 'SOLANO'),
('18785', 18, 'SOLITA'),
('18860', 18, 'VALPARAISO (CAQUETA)'),
('19001', 19, 'POPAYAN'),
('19022', 19, 'ALMAGUER'),
('19050', 19, 'ARGELIA (CAUCA)'),
('19075', 19, 'BALBOA (CAUCA)'),
('19100', 19, 'BOLIVAR (CAUCA)'),
('19110', 19, 'BUENOS AIRES'),
('19130', 19, 'CAJIBIO'),
('19137', 19, 'CALDONO'),
('19142', 19, 'CALOTO'),
('19212', 19, 'CORINTO'),
('19256', 19, 'EL TAMBO (CAUCA)'),
('19290', 19, 'FLORENCIA (CAUCA)'),
('19300', 19, 'GUACHENE'),
('19318', 19, 'GUAPI'),
('19355', 19, 'INZA'),
('19364', 19, 'JAMBALO'),
('19392', 19, 'LA SIERRA'),
('19397', 19, 'LA VEGA (CAUCA)'),
('19418', 19, 'LOPEZ'),
('19450', 19, 'MERCADERES'),
('19455', 19, 'MIRANDA'),
('19473', 19, 'MORALES (CAUCA)'),
('19513', 19, 'PADILLA'),
('19517', 19, 'PAEZ (CAUCA)'),
('19532', 19, 'PATIA'),
('19533', 19, 'PIAMONTE'),
('19548', 19, 'PIENDAMO'),
('19573', 19, 'PUERTO TEJADA'),
('19585', 19, 'PURACE'),
('19622', 19, 'ROSAS'),
('19693', 19, 'SAN SEBASTIAN'),
('19698', 19, 'SANTANDER DE QUILICHAO'),
('19701', 19, 'SANTA ROSA (CAUCA)'),
('19743', 19, 'SILVIA'),
('19760', 19, 'SOTARA'),
('19780', 19, 'SUAREZ (CAUCA)'),
('19785', 19, 'SUCRE (CAUCA)'),
('19807', 19, 'TIMBIO'),
('19809', 19, 'TIMBIQUI'),
('19821', 19, 'TORIBIO'),
('19824', 19, 'TOTORO'),
('19845', 19, 'VILLA RICA'),
('20001', 20, 'VALLEDUPAR'),
('20011', 20, 'AGUACHICA'),
('20013', 20, 'AGUSTIN CODAZZI'),
('20032', 20, 'ASTREA'),
('20045', 20, 'BECERRIL'),
('20060', 20, 'BOSCONIA'),
('20175', 20, 'CHIMICHAGUA'),
('20178', 20, 'CHIRIGUANA'),
('20228', 20, 'CURUMANI'),
('20238', 20, 'EL COPEY'),
('20250', 20, 'EL PASO'),
('20295', 20, 'GAMARRA'),
('20310', 20, 'GONZALEZ'),
('20383', 20, 'LA GLORIA'),
('20400', 20, 'LA JAGUA DE IBIRICO'),
('20443', 20, 'MANAURE (CESAR)'),
('20517', 20, 'PAILITAS'),
('20550', 20, 'PELAYA'),
('20570', 20, 'PUEBLO BELLO'),
('20614', 20, 'RIO DE ORO'),
('20621', 20, 'LA PAZ (CESAR)'),
('20710', 20, 'SAN ALBERTO'),
('20750', 20, 'SAN DIEGO'),
('20770', 20, 'SAN MARTIN (CESAR)'),
('20787', 20, 'TAMALAMEQUE'),
('23001', 23, 'MONTERIA'),
('23068', 23, 'AYAPEL'),
('23079', 23, 'BUENAVISTA (CORDOBA)'),
('23090', 23, 'CANALETE'),
('23162', 23, 'CERETE'),
('23168', 23, 'CHIMA (CORDOBA)'),
('23182', 23, 'CHINU'),
('23189', 23, 'CIENAGA DE ORO'),
('23300', 23, 'COTORRA'),
('23350', 23, 'LA APARTADA'),
('23417', 23, 'LORICA'),
('23419', 23, 'LOS CORDOBAS'),
('23464', 23, 'MOMIL'),
('23466', 23, 'MONTELIBANO'),
('23500', 23, 'MOÑITOS'),
('23555', 23, 'PLANETA RICA'),
('23570', 23, 'PUEBLO NUEVO'),
('23574', 23, 'PUERTO ESCONDIDO'),
('23580', 23, 'PUERTO LIBERTADOR'),
('23586', 23, 'PURISIMA'),
('23660', 23, 'SAHAGUN'),
('23670', 23, 'SAN ANDRES SOTAVENTO'),
('23672', 23, 'SAN ANTERO'),
('23675', 23, 'SAN BERNARDO DEL VIENTO'),
('23678', 23, 'SAN CARLOS (CORDOBA)'),
('23686', 23, 'SAN PELAYO'),
('23807', 23, 'TIERRALTA'),
('23855', 23, 'VALENCIA'),
('25001', 25, 'AGUA DE DIOS'),
('25019', 25, 'ALBAN (CUND)'),
('25035', 25, 'ANAPOIMA'),
('25040', 25, 'ANOLAIMA'),
('25053', 25, 'ARBELAEZ'),
('25086', 25, 'BELTRAN'),
('25095', 25, 'BITUIMA'),
('25099', 25, 'BOJACA'),
('25120', 25, 'CABRERA (CUND)'),
('25123', 25, 'CACHIPAY'),
('25126', 25, 'CAJICA'),
('25148', 25, 'CAPARRAPI'),
('25151', 25, 'CAQUEZA'),
('25154', 25, 'CARMEN DE CARUPA'),
('25168', 25, 'CHAGUANI'),
('25175', 25, 'CHIA'),
('25178', 25, 'CHIPAQUE'),
('25181', 25, 'CHOACHI'),
('25183', 25, 'CHOCONTA'),
('25200', 25, 'COGUA'),
('25214', 25, 'COTA'),
('25224', 25, 'CUCUNUBA'),
('25245', 25, 'EL COLEGIO'),
('25258', 25, 'EL PEÑON (CUND)'),
('25260', 25, 'EL ROSAL'),
('25269', 25, 'FACATATIVA'),
('25279', 25, 'FOMEQUE'),
('25281', 25, 'FOSCA'),
('25286', 25, 'FUNZA'),
('25288', 25, 'FUQUENE'),
('25290', 25, 'FUSAGASUGA'),
('25293', 25, 'GACHALA'),
('25295', 25, 'GACHANCIPA'),
('25297', 25, 'GACHETA'),
('25299', 25, 'GAMA'),
('25307', 25, 'GIRARDOT'),
('25312', 25, 'GRANADA (CUND)'),
('25317', 25, 'GUACHETA'),
('25320', 25, 'GUADUAS'),
('25322', 25, 'GUASCA'),
('25324', 25, 'GUATAQUI'),
('25326', 25, 'GUATAVITA'),
('25328', 25, 'GUAYABAL DE SIQUIMA'),
('25335', 25, 'GUAYABETAL'),
('25339', 25, 'GUTIERREZ'),
('25368', 25, 'JERUSALEN'),
('25372', 25, 'JUNIN'),
('25377', 25, 'LA CALERA'),
('25386', 25, 'LA MESA'),
('25394', 25, 'LA PALMA'),
('25398', 25, 'LA PEÑA'),
('25402', 25, 'LA VEGA (CUND)'),
('25407', 25, 'LENGUAZAQUE'),
('25426', 25, 'MACHETA'),
('25430', 25, 'MADRID'),
('25436', 25, 'MANTA'),
('25438', 25, 'MEDINA'),
('25473', 25, 'MOSQUERA (CUND)'),
('25483', 25, 'NARIÑO (CUND)'),
('25486', 25, 'NEMOCON'),
('25488', 25, 'NILO'),
('25489', 25, 'NIMAIMA'),
('25491', 25, 'NOCAIMA'),
('25506', 25, 'VENECIA (CUND)'),
('25513', 25, 'PACHO'),
('25518', 25, 'PAIME'),
('25524', 25, 'PANDI'),
('25530', 25, 'PARATEBUENO'),
('25535', 25, 'PASCA'),
('25572', 25, 'PUERTO SALGAR'),
('25580', 25, 'PULI'),
('25592', 25, 'QUEBRADANEGRA'),
('25594', 25, 'QUETAME'),
('25596', 25, 'QUIPILE'),
('25599', 25, 'APULO'),
('25612', 25, 'RICAURTE (CUND)'),
('25645', 25, 'SAN ANTONIO DEL TEQUENDAMA'),
('25649', 25, 'SAN BERNARDO (CUND)'),
('25653', 25, 'SAN CAYETANO (CUND)'),
('25658', 25, 'SAN FRANCISCO (CUND)'),
('25662', 25, 'SAN JUAN DE RIO SECO'),
('25718', 25, 'SASAIMA'),
('25736', 25, 'SESQUILE'),
('25740', 25, 'SIBATE'),
('25743', 25, 'SILVANIA'),
('25745', 25, 'SIMIJACA'),
('25754', 25, 'SOACHA'),
('25758', 25, 'SOPO'),
('25769', 25, 'SUBACHOQUE'),
('25772', 25, 'SUESCA'),
('25777', 25, 'SUPATA'),
('25779', 25, 'SUSA'),
('25781', 25, 'SUTATAUSA'),
('25785', 25, 'TABIO'),
('25793', 25, 'TAUSA'),
('25797', 25, 'TENA'),
('25799', 25, 'TENJO'),
('25805', 25, 'TIBACUY'),
('25807', 25, 'TIBIRITA'),
('25815', 25, 'TOCAIMA'),
('25817', 25, 'TOCANCIPA'),
('25823', 25, 'TOPAIPI'),
('25839', 25, 'UBALA'),
('25841', 25, 'UBAQUE'),
('25843', 25, 'VILLA DE SAN DIEGO DE UBATE'),
('25845', 25, 'UNE'),
('25851', 25, 'UTICA'),
('25862', 25, 'VERGARA'),
('25867', 25, 'VIANI'),
('25871', 25, 'VILLAGOMEZ'),
('25873', 25, 'VILLAPINZON'),
('25875', 25, 'VILLETA'),
('25878', 25, 'VIOTA'),
('25885', 25, 'YACOPI'),
('25898', 25, 'ZIPACON'),
('25899', 25, 'ZIPAQUIRA'),
('27001', 27, 'QUIBDO'),
('27006', 27, 'ACANDI'),
('27025', 27, 'ALTO BAUDO'),
('27050', 27, 'ATRATO'),
('27073', 27, 'BAGADO'),
('27075', 27, 'BAHIA SOLANO'),
('27077', 27, 'BAJO BAUDO'),
('27086', 27, 'BELEN DE BAJIRA'),
('27099', 27, 'BOJAYA'),
('27135', 27, 'EL CANTON DEL SAN PABLO'),
('27150', 27, 'CARMEN DEL DARIEN'),
('27160', 27, 'CERTEGUI'),
('27205', 27, 'CONDOTO'),
('27245', 27, 'EL CARMEN DE ATRATO'),
('27250', 27, 'EL LITORAL DEL SAN JUAN'),
('27361', 27, 'ISTMINA'),
('27372', 27, 'JURADO'),
('27413', 27, 'LLORO'),
('27425', 27, 'MEDIO ATRATO'),
('27430', 27, 'MEDIO BAUDO'),
('27450', 27, 'MEDIO SAN JUAN'),
('27491', 27, 'NOVITA'),
('27495', 27, 'NUQUI'),
('27580', 27, 'RIO IRO'),
('27600', 27, 'RIO QUITO'),
('27615', 27, 'RIOSUCIO (CHOCO)'),
('27660', 27, 'SAN JOSE DEL PALMAR'),
('27745', 27, 'SIPI'),
('27787', 27, 'TADO'),
('27800', 27, 'UNGUIA'),
('27810', 27, 'UNION PANAMERICANA'),
('41001', 41, 'NEIVA'),
('41006', 41, 'ACEVEDO'),
('41013', 41, 'AGRADO'),
('41016', 41, 'AIPE'),
('41020', 41, 'ALGECIRAS'),
('41026', 41, 'ALTAMIRA'),
('41078', 41, 'BARAYA'),
('41132', 41, 'CAMPOALEGRE'),
('41206', 41, 'COLOMBIA'),
('41244', 41, 'ELIAS'),
('41298', 41, 'GARZON'),
('41306', 41, 'GIGANTE'),
('41319', 41, 'GUADALUPE (HUILA)'),
('41349', 41, 'HOBO'),
('41357', 41, 'IQUIRA'),
('41359', 41, 'ISNOS'),
('41378', 41, 'LA ARGENTINA'),
('41396', 41, 'LA PLATA'),
('41483', 41, 'NATAGA'),
('41503', 41, 'OPORAPA'),
('41518', 41, 'PAICOL'),
('41524', 41, 'PALERMO'),
('41530', 41, 'PALESTINA (HUILA)'),
('41548', 41, 'PITAL'),
('41551', 41, 'PITALITO'),
('41615', 41, 'RIVERA'),
('41660', 41, 'SALADOBLANCO'),
('41668', 41, 'SAN AGUSTIN'),
('41676', 41, 'SANTA MARIA (HUILA)'),
('41770', 41, 'SUAZA'),
('41791', 41, 'TARQUI'),
('41797', 41, 'TESALIA'),
('41799', 41, 'TELLO'),
('41801', 41, 'TERUEL'),
('41807', 41, 'TIMANA'),
('41872', 41, 'VILLAVIEJA'),
('41885', 41, 'YAGUARA'),
('44001', 44, 'RIOHACHA'),
('44035', 44, 'ALBANIA (LA GUAJIRA)'),
('44078', 44, 'BARRANCAS'),
('44090', 44, 'DIBULLA'),
('44098', 44, 'DISTRACCION'),
('44110', 44, 'EL MOLINO'),
('44279', 44, 'FONSECA'),
('44378', 44, 'HATONUEVO'),
('44420', 44, 'LA JAGUA DEL PILAR'),
('44430', 44, 'MAICAO'),
('44560', 44, 'MANAURE (LA GUAJIRA)'),
('44650', 44, 'SAN JUAN DEL CESAR'),
('44847', 44, 'URIBIA'),
('44855', 44, 'URUMITA'),
('44874', 44, 'VILLANUEVA (LA GUAJIRA)'),
('47001', 47, 'SANTA MARTA'),
('47030', 47, 'ALGARROBO'),
('47053', 47, 'ARACATACA'),
('47058', 47, 'ARIGUANI'),
('47161', 47, 'CERRO SAN ANTONIO'),
('47170', 47, 'CHIBOLO'),
('47189', 47, 'CIENAGA'),
('47205', 47, 'CONCORDIA (MAGDALENA)'),
('47245', 47, 'EL BANCO'),
('47258', 47, 'EL PIÑON'),
('47268', 47, 'EL RETEN'),
('47288', 47, 'FUNDACION'),
('47318', 47, 'GUAMAL (MAGDALENA)'),
('47460', 47, 'NUEVA GRANADA'),
('47541', 47, 'PEDRAZA'),
('47545', 47, 'PIJIÑO DEL CARMEN'),
('47551', 47, 'PIVIJAY'),
('47555', 47, 'PLATO'),
('47570', 47, 'PUEBLOVIEJO'),
('47605', 47, 'REMOLINO'),
('47660', 47, 'SABANAS DE SAN ANGEL'),
('47675', 47, 'SALAMINA (MAGDALENA)'),
('47692', 47, 'SAN SEBASTIAN DE BUENAVISTA'),
('47703', 47, 'SAN ZENON'),
('47707', 47, 'SANTA ANA'),
('47720', 47, 'SANTA BARBARA DE PINTO'),
('47745', 47, 'SITIONUEVO'),
('47798', 47, 'TENERIFE'),
('47960', 47, 'ZAPAYAN'),
('47980', 47, 'ZONA BANANERA'),
('50001', 50, 'VILLAVICENCIO'),
('50006', 50, 'ACACIAS'),
('50110', 50, 'BARRANCA DE UPIA'),
('50124', 50, 'CABUYARO'),
('50150', 50, 'CASTILLA LA NUEVA'),
('50223', 50, 'CUBARRAL'),
('50226', 50, 'CUMARAL'),
('50245', 50, 'EL CALVARIO'),
('50251', 50, 'EL CASTILLO'),
('50270', 50, 'EL DORADO'),
('50287', 50, 'FUENTE DE ORO'),
('50313', 50, 'GRANADA (META)'),
('50318', 50, 'GUAMAL (META)'),
('50325', 50, 'MAPIRIPAN'),
('50330', 50, 'MESETAS'),
('50350', 50, 'LA MACARENA'),
('50370', 50, 'URIBE'),
('50400', 50, 'LEJANIAS'),
('50450', 50, 'PUERTO CONCORDIA'),
('50568', 50, 'PUERTO GAITAN'),
('50573', 50, 'PUERTO LOPEZ'),
('50577', 50, 'PUERTO LLERAS'),
('50590', 50, 'PUERTO RICO (META)'),
('50606', 50, 'RESTREPO (META)'),
('50680', 50, 'SAN CARLOS DE GUAROA'),
('50683', 50, 'SAN JUAN DE ARAMA'),
('50686', 50, 'SAN JUANITO'),
('50689', 50, 'SAN MARTIN (META)'),
('50711', 50, 'VISTAHERMOSA'),
('52001', 52, 'PASTO'),
('52019', 52, 'ALBAN (NARIÑO)'),
('52022', 52, 'ALDANA'),
('52036', 52, 'ANCUYA'),
('52051', 52, 'ARBOLEDA'),
('52079', 52, 'BARBACOAS'),
('52083', 52, 'BELEN (NARIÑO)'),
('52110', 52, 'BUESACO'),
('52203', 52, 'COLON (NARIÑO)'),
('52207', 52, 'CONSACA'),
('52210', 52, 'CONTADERO'),
('52215', 52, 'CORDOBA (NARIÑO)'),
('52224', 52, 'CUASPUD'),
('52227', 52, 'CUMBAL'),
('52233', 52, 'CUMBITARA'),
('52240', 52, 'CHACHAGÜI'),
('52250', 52, 'EL CHARCO'),
('52254', 52, 'EL PEÑOL'),
('52256', 52, 'EL ROSARIO'),
('52258', 52, 'EL TABLON DE GOMEZ'),
('52260', 52, 'EL TAMBO (NARIÑO)'),
('52287', 52, 'FUNES'),
('52317', 52, 'GUACHUCAL'),
('52320', 52, 'GUAITARILLA'),
('52323', 52, 'GUALMATAN'),
('52352', 52, 'ILES'),
('52354', 52, 'IMUES'),
('52356', 52, 'IPIALES'),
('52378', 52, 'LA CRUZ'),
('52381', 52, 'LA FLORIDA'),
('52385', 52, 'LA LLANADA'),
('52390', 52, 'LA TOLA'),
('52399', 52, 'LA UNION (NARIÑO)'),
('52405', 52, 'LEIVA'),
('52411', 52, 'LINARES'),
('52418', 52, 'LOS ANDES'),
('52427', 52, 'MAGÜI'),
('52435', 52, 'MALLAMA'),
('52473', 52, 'MOSQUERA (NARIÑO)'),
('52480', 52, 'NARIÑO (NARIÑO)'),
('52490', 52, 'OLAYA HERRERA'),
('52506', 52, 'OSPINA'),
('52520', 52, 'FRANCISCO PIZARRO'),
('52540', 52, 'POLICARPA'),
('52560', 52, 'POTOSI'),
('52565', 52, 'PROVIDENCIA (NARIÑO)'),
('52573', 52, 'PUERRES'),
('52585', 52, 'PUPIALES'),
('52612', 52, 'RICAURTE (NARIÑO)'),
('52621', 52, 'ROBERTO PAYAN'),
('52678', 52, 'SAMANIEGO'),
('52683', 52, 'SANDONA'),
('52685', 52, 'SAN BERNARDO (NARIÑO)'),
('52687', 52, 'SAN LORENZO'),
('52693', 52, 'SAN PABLO (NARIÑO)'),
('52694', 52, 'SAN PEDRO DE CARTAGO'),
('52696', 52, 'SANTA BARBARA (NARIÑO)'),
('52699', 52, 'SANTACRUZ'),
('52720', 52, 'SAPUYES'),
('52786', 52, 'TAMINANGO'),
('52788', 52, 'TANGUA'),
('52835', 52, 'TUMACO'),
('52838', 52, 'TUQUERRES'),
('52885', 52, 'YACUANQUER'),
('54001', 54, 'SAN JOSE DE CUCUTA'),
('54003', 54, 'ABREGO'),
('54051', 54, 'ARBOLEDAS'),
('54099', 54, 'BOCHALEMA'),
('54109', 54, 'BUCARASICA'),
('54125', 54, 'CACOTA'),
('54128', 54, 'CACHIRA'),
('54172', 54, 'CHINACOTA'),
('54174', 54, 'CHITAGA'),
('54206', 54, 'CONVENCION'),
('54223', 54, 'CUCUTILLA'),
('54239', 54, 'DURANIA'),
('54245', 54, 'EL CARMEN'),
('54250', 54, 'EL TARRA'),
('54261', 54, 'EL ZULIA'),
('54313', 54, 'GRAMALOTE'),
('54344', 54, 'HACARI'),
('54347', 54, 'HERRAN'),
('54377', 54, 'LABATECA'),
('54385', 54, 'LA ESPERANZA'),
('54398', 54, 'LA PLAYA'),
('54405', 54, 'LOS PATIOS'),
('54418', 54, 'LOURDES'),
('54480', 54, 'MUTISCUA'),
('54498', 54, 'OCAÑA'),
('54518', 54, 'PAMPLONA'),
('54520', 54, 'PAMPLONITA'),
('54553', 54, 'PUERTO SANTANDER (NTE SANTANDER)'),
('54599', 54, 'RAGONVALIA'),
('54660', 54, 'SALAZAR'),
('54670', 54, 'SAN CALIXTO'),
('54673', 54, 'SAN CAYETANO (NTE SANTANDER)'),
('54680', 54, 'SANTIAGO (NTE SANTANDER)'),
('54720', 54, 'SARDINATA'),
('54743', 54, 'SILOS'),
('54800', 54, 'TEORAMA'),
('54810', 54, 'TIBU'),
('54820', 54, 'TOLEDO (NTE SANTANDER)'),
('54871', 54, 'VILLA CARO'),
('54874', 54, 'VILLA DEL ROSARIO'),
('63001', 63, 'ARMENIA (QUINDIO)'),
('63111', 63, 'BUENAVISTA (QUINDIO)'),
('63130', 63, 'CALARCA'),
('63190', 63, 'CIRCASIA'),
('63212', 63, 'CORDOBA (QUINDIO)'),
('63272', 63, 'FILANDIA'),
('63302', 63, 'GENOVA'),
('63401', 63, 'LA TEBAIDA'),
('63470', 63, 'MONTENEGRO'),
('63548', 63, 'PIJAO'),
('63594', 63, 'QUIMBAYA'),
('63690', 63, 'SALENTO'),
('66001', 66, 'PEREIRA'),
('66045', 66, 'APIA'),
('66075', 66, 'BALBOA (RISARALDA)'),
('66088', 66, 'BELEN DE UMBRIA'),
('66170', 66, 'DOSQUEBRADAS'),
('66318', 66, 'GUATICA'),
('66383', 66, 'LA CELIA'),
('66400', 66, 'LA VIRGINIA'),
('66440', 66, 'MARSELLA'),
('66456', 66, 'MISTRATO'),
('66572', 66, 'PUEBLO RICO'),
('66594', 66, 'QUINCHIA'),
('66682', 66, 'SANTA ROSA DE CABAL'),
('66687', 66, 'SANTUARIO'),
('68001', 68, 'BUCARAMANGA'),
('68013', 68, 'AGUADA'),
('68020', 68, 'ALBANIA (SANTANDER)'),
('68051', 68, 'ARATOCA'),
('68077', 68, 'BARBOSA (SANTANDER)'),
('68079', 68, 'BARICHARA'),
('68081', 68, 'BARRANCABERMEJA'),
('68092', 68, 'BETULIA (SANTANDER)'),
('68101', 68, 'BOLIVAR (SANTANDER)'),
('68121', 68, 'CABRERA (SANTANDER)'),
('68132', 68, 'CALIFORNIA'),
('68147', 68, 'CAPITANEJO'),
('68152', 68, 'CARCASI'),
('68160', 68, 'CEPITA'),
('68162', 68, 'CERRITO'),
('68167', 68, 'CHARALA'),
('68169', 68, 'CHARTA'),
('68176', 68, 'CHIMA (SANTANDER)'),
('68179', 68, 'CHIPATA'),
('68190', 68, 'CIMITARRA'),
('68207', 68, 'CONCEPCION (SANTANDER)'),
('68209', 68, 'CONFINES'),
('68211', 68, 'CONTRATACION'),
('68217', 68, 'COROMORO'),
('68229', 68, 'CURITI'),
('68235', 68, 'EL CARMEN DE CHUCURI'),
('68245', 68, 'EL GUACAMAYO'),
('68250', 68, 'EL PEÑON (SANTANDER)'),
('68255', 68, 'EL PLAYON'),
('68264', 68, 'ENCINO'),
('68266', 68, 'ENCISO'),
('68271', 68, 'FLORIAN'),
('68276', 68, 'FLORIDABLANCA'),
('68296', 68, 'GALAN'),
('68298', 68, 'GAMBITA'),
('68307', 68, 'GIRON'),
('68318', 68, 'GUACA'),
('68320', 68, 'GUADALUPE (SANTANDER)'),
('68322', 68, 'GUAPOTA'),
('68324', 68, 'GUAVATA'),
('68327', 68, 'GÜEPSA'),
('68344', 68, 'HATO'),
('68368', 68, 'JESUS MARIA'),
('68370', 68, 'JORDAN'),
('68377', 68, 'LA BELLEZA'),
('68385', 68, 'LANDAZURI'),
('68397', 68, 'LA PAZ (SANTANDER)'),
('68406', 68, 'LEBRIJA'),
('68418', 68, 'LOS SANTOS'),
('68425', 68, 'MACARAVITA'),
('68432', 68, 'MALAGA'),
('68444', 68, 'MATANZA'),
('68464', 68, 'MOGOTES'),
('68468', 68, 'MOLAGAVITA'),
('68498', 68, 'OCAMONTE'),
('68500', 68, 'OIBA'),
('68502', 68, 'ONZAGA'),
('68522', 68, 'PALMAR'),
('68524', 68, 'PALMAS DEL SOCORRO'),
('68533', 68, 'PARAMO'),
('68547', 68, 'PIEDECUESTA'),
('68549', 68, 'PINCHOTE'),
('68572', 68, 'PUENTE NACIONAL'),
('68573', 68, 'PUERTO PARRA'),
('68575', 68, 'PUERTO WILCHES'),
('68615', 68, 'RIONEGRO (SANTANDER)'),
('68655', 68, 'SABANA DE TORRES'),
('68669', 68, 'SAN ANDRES (SANTANDER)'),
('68673', 68, 'SAN BENITO'),
('68679', 68, 'SAN GIL'),
('68682', 68, 'SAN JOAQUIN'),
('68684', 68, 'SAN JOSE DE MIRANDA'),
('68686', 68, 'SAN MIGUEL (SANTANDER)'),
('68689', 68, 'SAN VICENTE DE CHUCURI'),
('68705', 68, 'SANTA BARBARA (SANTANDER)'),
('68720', 68, 'SANTA HELENA DEL OPON'),
('68745', 68, 'SIMACOTA'),
('68755', 68, 'SOCORRO'),
('68770', 68, 'SUAITA'),
('68773', 68, 'SUCRE (SANTANDER)'),
('68780', 68, 'SURATA'),
('68820', 68, 'TONA'),
('68855', 68, 'VALLE DE SAN JOSE'),
('68861', 68, 'VELEZ'),
('68867', 68, 'VETAS'),
('68872', 68, 'VILLANUEVA (SANTANDER)'),
('68895', 68, 'ZAPATOCA'),
('70001', 70, 'SINCELEJO'),
('70110', 70, 'BUENAVISTA (SUCRE)'),
('70124', 70, 'CAIMITO'),
('70204', 70, 'COLOSO'),
('70215', 70, 'COROZAL'),
('70221', 70, 'COVEÑAS'),
('70230', 70, 'CHALAN'),
('70233', 70, 'EL ROBLE'),
('70235', 70, 'GALERAS'),
('70265', 70, 'GUARANDA'),
('70400', 70, 'LA UNION (SUCRE)'),
('70418', 70, 'LOS PALMITOS'),
('70429', 70, 'MAJAGUAL'),
('70473', 70, 'MORROA'),
('70508', 70, 'OVEJAS'),
('70523', 70, 'PALMITO'),
('70670', 70, 'SAMPUES'),
('70678', 70, 'SAN BENITO ABAD'),
('70702', 70, 'SAN JUAN DE BETULIA'),
('70708', 70, 'SAN MARCOS'),
('70713', 70, 'SAN ONOFRE'),
('70717', 70, 'SAN PEDRO (SUCRE)'),
('70742', 70, 'SINCE'),
('70771', 70, 'SUCRE (SUCRE)'),
('70820', 70, 'SANTIAGO DE TOLU'),
('70823', 70, 'TOLUVIEJO'),
('73001', 73, 'IBAGUE'),
('73024', 73, 'ALPUJARRA'),
('73026', 73, 'ALVARADO'),
('73030', 73, 'AMBALEMA'),
('73043', 73, 'ANZOATEGUI'),
('73055', 73, 'ARMERO GUAYABAL'),
('73067', 73, 'ATACO'),
('73124', 73, 'CAJAMARCA'),
('73148', 73, 'CARMEN DE APICALA'),
('73152', 73, 'CASABIANCA'),
('73168', 73, 'CHAPARRAL'),
('73200', 73, 'COELLO'),
('73217', 73, 'COYAIMA'),
('73226', 73, 'CUNDAY'),
('73236', 73, 'DOLORES'),
('73268', 73, 'ESPINAL'),
('73270', 73, 'FALAN'),
('73275', 73, 'FLANDES'),
('73283', 73, 'FRESNO'),
('73319', 73, 'GUAMO'),
('73347', 73, 'HERVEO'),
('73349', 73, 'HONDA'),
('73352', 73, 'ICONONZO'),
('73408', 73, 'LERIDA'),
('73411', 73, 'LIBANO'),
('73443', 73, 'MARIQUITA'),
('73449', 73, 'MELGAR'),
('73461', 73, 'MURILLO'),
('73483', 73, 'NATAGAIMA'),
('73504', 73, 'ORTEGA'),
('73520', 73, 'PALOCABILDO'),
('73547', 73, 'PIEDRAS'),
('73555', 73, 'PLANADAS'),
('73563', 73, 'PRADO'),
('73585', 73, 'PURIFICACION'),
('73616', 73, 'RIOBLANCO'),
('73622', 73, 'RONCESVALLES'),
('73624', 73, 'ROVIRA'),
('73671', 73, 'SALDAÑA'),
('73675', 73, 'SAN ANTONIO'),
('73678', 73, 'SAN LUIS (TOLIMA)'),
('73686', 73, 'SANTA ISABEL'),
('73770', 73, 'SUAREZ (TOLIMA)'),
('73854', 73, 'VALLE DE SAN JUAN'),
('73861', 73, 'VENADILLO'),
('73870', 73, 'VILLAHERMOSA'),
('73873', 73, 'VILLARRICA'),
('76001', 76, 'SANTIAGO DE CALI'),
('76020', 76, 'ALCALA'),
('76036', 76, 'ANDALUCIA'),
('76041', 76, 'ANSERMANUEVO'),
('76054', 76, 'ARGELIA (VALLE)'),
('76100', 76, 'BOLIVAR (VALLE)'),
('76109', 76, 'BUENAVENTURA'),
('76111', 76, 'GUADALAJARA DE BUGA'),
('76113', 76, 'BUGALAGRANDE'),
('76122', 76, 'CAICEDONIA'),
('76126', 76, 'CALIMA'),
('76130', 76, 'CANDELARIA (VALLE)'),
('76147', 76, 'CARTAGO'),
('76233', 76, 'DAGUA'),
('76243', 76, 'EL AGUILA'),
('76246', 76, 'EL CAIRO'),
('76248', 76, 'EL CERRITO'),
('76250', 76, 'EL DOVIO'),
('76275', 76, 'FLORIDA'),
('76306', 76, 'GINEBRA'),
('76318', 76, 'GUACARI'),
('76364', 76, 'JAMUNDI'),
('76377', 76, 'LA CUMBRE'),
('76400', 76, 'LA UNION (VALLE)'),
('76403', 76, 'LA VICTORIA (VALLE)'),
('76497', 76, 'OBANDO'),
('76520', 76, 'PALMIRA'),
('76563', 76, 'PRADERA'),
('76606', 76, 'RESTREPO (VALLE)'),
('76616', 76, 'RIOFRIO'),
('76622', 76, 'ROLDANILLO'),
('76670', 76, 'SAN PEDRO (VALLE)'),
('76736', 76, 'SEVILLA'),
('76823', 76, 'TORO'),
('76828', 76, 'TRUJILLO'),
('76834', 76, 'TULUA'),
('76845', 76, 'ULLOA'),
('76863', 76, 'VERSALLES'),
('76869', 76, 'VIJES'),
('76890', 76, 'YOTOCO'),
('76892', 76, 'YUMBO'),
('76895', 76, 'ZARZAL'),
('81001', 81, 'ARAUCA'),
('81065', 81, 'ARAUQUITA'),
('81220', 81, 'CRAVO NORTE'),
('81300', 81, 'FORTUL'),
('81591', 81, 'PUERTO RONDON'),
('81736', 81, 'SARAVENA'),
('81794', 81, 'TAME'),
('85001', 85, 'YOPAL'),
('85010', 85, 'AGUAZUL'),
('85015', 85, 'CHAMEZA'),
('85125', 85, 'HATO COROZAL'),
('85136', 85, 'LA SALINA'),
('85139', 85, 'MANI'),
('85162', 85, 'MONTERREY'),
('85225', 85, 'NUNCHIA'),
('85230', 85, 'OROCUE'),
('85250', 85, 'PAZ DE ARIPORO'),
('85263', 85, 'PORE'),
('85279', 85, 'RECETOR'),
('85300', 85, 'SABANALARGA (CASANARE)'),
('85315', 85, 'SACAMA'),
('85325', 85, 'SAN LUIS DE PALENQUE'),
('85400', 85, 'TAMARA'),
('85410', 85, 'TAURAMENA'),
('85430', 85, 'TRINIDAD'),
('85440', 85, 'VILLANUEVA (CASANARE)'),
('86001', 86, 'MOCOA'),
('86219', 86, 'COLON (PUTUMAYO)'),
('86320', 86, 'ORITO'),
('86568', 86, 'PUERTO ASIS'),
('86569', 86, 'PUERTO CAICEDO'),
('86571', 86, 'PUERTO GUZMAN'),
('86573', 86, 'LEGUIZAMO'),
('86749', 86, 'SIBUNDOY'),
('86755', 86, 'SAN FRANCISCO (PUTUMAYO)'),
('86757', 86, 'SAN MIGUEL (PUTUMAYO)'),
('86760', 86, 'SANTIAGO (PUTUMAYO)'),
('86865', 86, 'VALLE DEL GUAMUEZ'),
('86885', 86, 'VILLAGARZON'),
('88001', 88, 'SAN ANDRES (SAN ANDRES)'),
('88564', 88, 'PROVIDENCIA (SAN ANDRES)'),
('91001', 91, 'LETICIA'),
('91263', 91, 'EL ENCANTO'),
('91405', 91, 'LA CHORRERA'),
('91407', 91, 'LA PEDRERA'),
('91430', 91, 'LA VICTORIA (AMAZONAS)'),
('91460', 91, 'MIRITI - PARANA'),
('91530', 91, 'PUERTO ALEGRIA'),
('91536', 91, 'PUERTO ARICA'),
('91540', 91, 'PUERTO NARIÑO'),
('91669', 91, 'PUERTO SANTANDER (AMAZONAS)'),
('91798', 91, 'TARAPACA'),
('94001', 94, 'INIRIDA'),
('94343', 94, 'BARRANCO MINAS'),
('94663', 94, 'MAPIRIPANA'),
('94883', 94, 'SAN FELIPE'),
('94884', 94, 'PUERTO COLOMBIA (GUAINIA)'),
('94885', 94, 'LA GUADALUPE'),
('94886', 94, 'CACAHUAL'),
('94887', 94, 'PANA PANA'),
('94888', 94, 'MORICHAL'),
('95001', 95, 'SAN JOSE DEL GUAVIARE'),
('95015', 95, 'CALAMAR (GUAVIARE)'),
('95025', 95, 'EL RETORNO'),
('95200', 95, 'MIRAFLORES (GUAVIARE)'),
('97001', 97, 'MITU'),
('97161', 97, 'CARURU'),
('97511', 97, 'PACOA'),
('97666', 97, 'TARAIRA'),
('97777', 97, 'PAPUNAUA'),
('97889', 97, 'YAVARATE'),
('99001', 99, 'PUERTO CARREÑO'),
('99524', 99, 'LA PRIMAVERA'),
('99624', 99, 'SANTA ROSALIA'),
('99773', 99, 'CUMARIBO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tareas`
--

CREATE TABLE IF NOT EXISTS `tbl_tareas` (
  `Id` int(11) NOT NULL,
  `Taera` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_tareas`
--

INSERT INTO `tbl_tareas` (`Id`, `Taera`) VALUES
(1, 'CONCEPTO'),
(2, 'PODER'),
(3, 'DEMANDA'),
(4, 'CONTESTACION DEMANDA'),
(5, 'RECURSO'),
(6, 'INCIDENTE'),
(7, 'NOTIFICACION'),
(8, 'ALEGATOS'),
(9, 'DERECHO DE PETICION'),
(10, 'DENUNCIA'),
(11, 'INTERROGATORIO'),
(12, 'SOLICITUD'),
(13, 'APORTAR DOCUMENTO'),
(14, 'DESISTIMIENTO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipoaccion`
--

CREATE TABLE IF NOT EXISTS `tbl_tipoaccion` (
  `TipAcc_Id` int(11) NOT NULL,
  `TipAcc_TipoAccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_tipoaccion`
--

INSERT INTO `tbl_tipoaccion` (`TipAcc_Id`, `TipAcc_TipoAccion`) VALUES
(1, 'ACCION DE CUMPLIMIENTO'),
(2, 'ACCION DE GRUPO'),
(3, 'ACCION DE TUTELA'),
(4, 'ACCION POPULAR'),
(5, 'ACUERDO DE PAGO'),
(6, 'ACUERDO OBLIGACIONES CON HIJOS MENORES DE EDAD'),
(7, 'ADOPCION'),
(8, 'ALLANAMIENTO A LA DEMANDA'),
(9, 'AMPARO AL DOMICILIO DEL PROPIETARIO'),
(10, 'AMPLIACION DE HIPOTECA'),
(11, 'APERTURA Y PUBLICACION DE TESTAMENTO CERRADO'),
(12, 'AUMENTO O DISMINUCION DE CUOTA ALIMENTARIA'),
(13, 'AUTORIZACION REFORMA ESTATUTARIA'),
(14, 'AVISO PAGO PRESTACIONES SOCIALES FALLECIMIENTO DEL TRABAJADOR'),
(15, 'CANCELACION DE PATRIMONIO DE FAMILIA'),
(16, 'CANCELACION Y REPOSICION DE TITULO VALOR'),
(17, 'CAPITULACIONES MATRIMONIALES'),
(18, 'CERTIFICACION SOBRE LEGALIDAD PROCESO DE CESION'),
(19, 'CESION O VENTA DE DERECHOS LITIGIOSOS'),
(20, 'CESION O VENTA DERECHOS HEREDITARIOS'),
(21, 'COMPRAVENTA CON PACTO DE RETROVENTA'),
(22, 'COMPRAVENTA DE INMUEBLE'),
(23, 'COMPRAVENTA DE VEHICULO AUTOMOTOR'),
(24, 'COMPRAVENTA DE VEHICULO AUTOMOTOR CON RESERVA DE DOMINIO'),
(25, 'CONSTITUCION DE EMPRESA UNIPERSONAL'),
(26, 'CONSTITUCION DE HIPOTECA PARA GARANTIZAR SALDO'),
(27, 'CONSTITUCION DE PARTE CIVIL PROCESO PENAL'),
(28, 'CONSTITUCION DE SOCIEDAD COLECTIVA'),
(29, 'CONSTITUCION DE UNA SAS'),
(30, 'CONTESTACION ACCION DE TUTELA'),
(31, 'CONTRATO DE ARRENDAMIENTO DE BIEN MUEBLE'),
(32, 'CONTRATO DE ARRENDAMIENTO DE LOCAL COMERCIAL'),
(33, 'CONTRATO DE COMODATO'),
(34, 'CONTRATO DE SUMINISTRO'),
(35, 'CONTRATO PRESTACION DE SERVICIOS PROFESIONALES INDEPENDIENTES'),
(36, 'CORRECION DE ERRORES REGISTRO CIVIL '),
(37, 'DECLARACION DE MUERTE POR DESAPARECIMIENTO'),
(38, 'DECLARACION DE UNION MARITAL DE HECHO'),
(39, 'DECLARACION EXTRAJUICIO'),
(40, 'DENUNCIA PENAL GENERAL'),
(41, 'DERECHO DE PETICION DE INFORMACION Y COPIAS'),
(42, 'DERECHO DE PETICION DE INTER?S GENERAL'),
(43, 'DERECHO DE PETICION EN INTER?S PARTICULAR'),
(44, 'DESISTIMIENTO ACCION DE TUTELA'),
(45, 'DESISTIMIENTO DE DERECHO DE PETICION'),
(46, 'DESISTIMIENTO QUERELLA'),
(47, 'DILIGENCIA DE INVENTARIO Y AVALUOS DE BIENES SUCESORALES'),
(48, 'DISOLUCION DESOCIEDAD CONYUGAL SIN BIENES COMUNES'),
(49, 'DIVISION MATERIAL'),
(50, 'EJECUTIVO CON TITULO HIPOTECARIO'),
(51, 'EJECUTIVO DE ALIMENTOS '),
(52, 'EJECUTIVO LABORAL'),
(53, 'EJECUTIVO SINGULAR'),
(54, 'ELECTORAL'),
(55, 'ESTIPULACIONES PROBATORIAS'),
(56, 'EXCEPCIONES PREVIAS PROCESO EJECUTIVO REPOSICION CONTRA MANDAMIENTO DE PAGO'),
(57, 'EXEPCIONES DE M?RITO PROCESO EJECUTIVO DE CHEQUE'),
(58, 'FIANZA ABIERTA'),
(59, 'FIJACION DE CUOTA ALIMENTARIA'),
(60, 'FIJACION DE NUEVO VALOR ARRENDAMIENTO'),
(61, 'FILIACION EXTRAMATRIMONIAL'),
(62, 'FILIACION NATURAL'),
(63, 'HABEAS CORPUS'),
(64, 'IMPOSICION DE SERVIDUMBRE'),
(65, 'IMPUGNACION DE DESICIONES SOCIALES'),
(66, 'IMPUGNACION DE PATERNIDAD'),
(67, 'INCIDENTE DE NULIDAD DEL REMATE'),
(68, 'INCIDENTE EN PROCESO CIVIL'),
(69, 'INTERDICCION JUDICIAL X DISCAPACIDAD MENTAL ABSOLUTA'),
(70, 'INTERROGATORIO DE PARTE COMO PRUEBA ANTICIPADA'),
(71, 'LANZAMIENTO POR OCUPACION DE HECHO DE PREDIOS URBANOS'),
(72, 'LEGITIMACION DE HIJO EXTRAMATRIMONIAL'),
(73, 'LEVANTAMIENTO DE FUERO SINDICAL'),
(74, 'LEVANTAMIENTO DE MEDIDAS CAUTELARES POR UN TERCERO'),
(75, 'LIQUIDACION DE SOCIEDAD PATRIMONIAL UNION MARITAL DE HECHO'),
(76, 'NULIDAD'),
(77, 'NULIDAD DE MATRIMONIO CIVIL'),
(78, 'NULIDAD Y RESTABLECIMIENTO DEL DERECHO'),
(79, 'ORDINARIA CIVIL'),
(80, 'ORDINARIO LABORAL'),
(81, 'PAGO POR CONSIGNACION'),
(82, 'PRIVACION DE ADMINISTRACION DE LOS BIENES DEL HIJO'),
(83, 'PRIVACION DE LA PATRIA POTESTAD'),
(84, 'PROCESO DE PERTENENCIA'),
(85, 'PROMESA DE COMPRAVENTA DE INMUEBLE'),
(86, 'QUEJA CONTRA ENTIDAD ASEGURADORA'),
(87, 'QUEJA CONTRA ENTIDAD FINANCIERA'),
(88, 'QUEJA POR DENEGACION DE AUTO APELABLE'),
(89, 'QUERELLA DE RECUPERACION DEL ESPACIO PUBLICO'),
(90, 'QUERELLA POR PERTURBACION A LA POSESION O MERA TENENCIA'),
(91, 'RECONOCIMIENTO DE HIJO EXTRAMATRIMONIAL'),
(92, 'RECURSO DE APELACION '),
(93, 'RECURSO DE RECONSIDERACION'),
(94, 'RECURSO DE REPOSICION'),
(95, 'RECURSO DE REPOSICION SUBSIDIO APELACION'),
(96, 'REFORMA ESTATUTOS'),
(97, 'REINTEGRO'),
(98, 'RELACION DE INVENTARIOS Y AVALUO DE BIENES'),
(99, 'RENDICION PROVOCADA DE CUENTAS'),
(100, 'REQUERIMIENTO ORDINARIO'),
(101, 'RESPONSABILIDAD EN CONTRATOS DE TRANSPORTE'),
(102, 'RESPUESTA A REQUERIMIENTO ESPECIAL'),
(103, 'RESPUESTA A REQUERIMIENTO ORDINARIO'),
(104, 'RESTITUCION DE INMUEBLE ARRENDADO'),
(105, 'RESTITUCION DE INMUEBLE ARRENDADO'),
(106, 'REVOCATORIA DIRECTA'),
(107, 'REVOCATORIA TRIBUTARIA'),
(108, 'SEPARACION DE BIENES'),
(109, 'SEPARACION DE CUERPOS'),
(110, 'TERMINACION DEL PROCESO EJECUTIVO POR PAGO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipodocumento`
--

CREATE TABLE IF NOT EXISTS `tbl_tipodocumento` (
  `Id` int(11) NOT NULL,
  `Descripcion` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_tipodocumento`
--

INSERT INTO `tbl_tipodocumento` (`Id`, `Descripcion`) VALUES
(1, 'CEDULA DE CIUDADANIA'),
(2, 'NIT'),
(3, 'TARJETA DE IDENTIDAD'),
(4, 'REGISTRO CIVIL'),
(5, 'CEDULA DE EXTRANJERIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipojuzgado`
--

CREATE TABLE IF NOT EXISTS `tbl_tipojuzgado` (
  `tipjuz_Id` int(11) NOT NULL,
  `tipjuz_TipoJuzgado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipousuario`
--

CREATE TABLE IF NOT EXISTS `tbl_tipousuario` (
`tipu_Id` int(11) NOT NULL,
  `tipu_TipoUsuario` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_tipousuario`
--

INSERT INTO `tbl_tipousuario` (`tipu_Id`, `tipu_TipoUsuario`) VALUES
(1, 'OFICINA'),
(2, 'CONSULTOR'),
(3, 'CLIENTE'),
(4, 'ABOGADO'),
(5, 'SECRETARIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE IF NOT EXISTS `tbl_usuarios` (
  `usu_TipoDoc` int(11) NOT NULL,
  `usu_Documento` bigint(11) NOT NULL COMMENT 'Documento del Usuario',
  `usu_Nombres` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usu_Apellidos` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `usu_Email` varchar(90) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usu_FechaNacimiento` date DEFAULT NULL,
  `usu_tipusu` int(11) NOT NULL,
  `usu_Consultorio` int(11) NOT NULL,
  `usu_Clave` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usu_Celular` varchar(20) DEFAULT NULL,
  `usu_Genero` varchar(1) DEFAULT NULL,
  `usu_Direccion` varchar(150) DEFAULT NULL,
  `usu_Departamento` int(11) NOT NULL,
  `usu_Municipio` varchar(5) NOT NULL,
  `usu_Telefono` varchar(15) DEFAULT NULL,
  `usu_Estrato` int(1) DEFAULT NULL,
  `usu_Estado` int(11) NOT NULL,
  `usu_Logo` varchar(250) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`usu_TipoDoc`, `usu_Documento`, `usu_Nombres`, `usu_Apellidos`, `usu_Email`, `usu_FechaNacimiento`, `usu_tipusu`, `usu_Consultorio`, `usu_Clave`, `usu_Celular`, `usu_Genero`, `usu_Direccion`, `usu_Departamento`, `usu_Municipio`, `usu_Telefono`, `usu_Estrato`, `usu_Estado`, `usu_Logo`) VALUES
(1, 41545701, 'MAIRELA', 'TOVAR HERNANDEZ', 'JORDUNAT@HOTMAIL.COM', NULL, 2, 800123456, '2f14b2b28611b84a2ece92daead11181', '3103047709', 'F', NULL, 11, '11001', '3610095', NULL, 1, '0'),
(1, 80062885, 'JAIRO JULIAN', 'ORDUÑA TOVAR', 'JORDUNAT@HOTMAIL.COM', '1979-03-20', 2, 800123456, '6163d5c0c375dfb47e3584e885760edd', '3115959599', 'M', 'CRA 11 No. 39-04 SUR', 11, '11001', '3729147', 2, 1, '../archivos_subidos/800123456/Logo800123456.png'),
(2, 789456000, 'OFICINA JURIDICA ORDUÑA SAS', NULL, 'JORDUNAT@HOTMAIL.COM', NULL, 1, 789456000, '000f42c8cb4c8eeb1b3bef18cafd4931', '3115959599', NULL, 'CLL 12 NO. 12-95 INT 4 APTO 204', 11, '11001', '3729147', NULL, 1, '../archivos_subidos/789456000/Logo789456000.png'),
(2, 800123456, 'CONSULTORIO POLITECNICO GRANCOLOMBIANO', NULL, 'JORDUNAT@HOTMAIL.COM', NULL, 1, 800123456, 'd95113b3b7f71bb59f52585a4bb01cd6', '', NULL, 'CRA 13 NO. 69 - 54 ', 11, '11001', '3040404', NULL, 1, '../archivos_subidos/800123456/Logo800123456.png'),
(2, 900654321, 'ABOGADOS ASOCIADOS', NULL, 'JORDUNAT@HOTMAIL.COM', NULL, 1, 900654321, 'cc0e5e48c8eea301df1a4d2447284df5', '3115959599', NULL, 'CRA 17 NO. 35-89 ', 11, '11001', '2303030', NULL, 1, '0'),
(3, 1000123456, 'NICOLLE VANESSA', 'ORDUñA GALLEGO', 'NORDUNAG@HOTMAIL.COM', '2003-03-01', 3, 800123456, '82615ed7fe990524d0bd02982a0a562d', '3208525452', 'F', 'CRA 11 NO. 39-04 SUR', 11, '11001', '3729147', 2, 1, '0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_casificacionproceso`
--
ALTER TABLE `tbl_casificacionproceso`
 ADD PRIMARY KEY (`clapro_Id`);

--
-- Indices de la tabla `tbl_consultas`
--
ALTER TABLE `tbl_consultas`
 ADD PRIMARY KEY (`Cons_NoConsulta`);

--
-- Indices de la tabla `tbl_departamentos`
--
ALTER TABLE `tbl_departamentos`
 ADD PRIMARY KEY (`depa_Id`);

--
-- Indices de la tabla `tbl_especialidades`
--
ALTER TABLE `tbl_especialidades`
 ADD PRIMARY KEY (`espe_Id`);

--
-- Indices de la tabla `tbl_estados`
--
ALTER TABLE `tbl_estados`
 ADD PRIMARY KEY (`Estado_Id`);

--
-- Indices de la tabla `tbl_estratos`
--
ALTER TABLE `tbl_estratos`
 ADD PRIMARY KEY (`estr_Id`);

--
-- Indices de la tabla `tbl_expedientes`
--
ALTER TABLE `tbl_expedientes`
 ADD PRIMARY KEY (`exp_NumeroExpediente`), ADD KEY `exp_DocumentoConsultorio` (`exp_DocumentoConsultorio`), ADD KEY `exp_Consulta` (`exp_Consulta`);

--
-- Indices de la tabla `tbl_festivos`
--
ALTER TABLE `tbl_festivos`
 ADD PRIMARY KEY (`Fecha`);

--
-- Indices de la tabla `tbl_gestion`
--
ALTER TABLE `tbl_gestion`
 ADD KEY `gest_Expediente` (`gest_Expediente`), ADD KEY `gest_TipoGestion` (`gest_TipoGestion`);

--
-- Indices de la tabla `tbl_juzgados`
--
ALTER TABLE `tbl_juzgados`
 ADD KEY `juz_TipoJuzgado` (`juz_TipoJuzgado`), ADD KEY `juz_Departamento` (`juz_Departamento`), ADD KEY `juz_Municipio` (`juz_Municipio`);

--
-- Indices de la tabla `tbl_municipios`
--
ALTER TABLE `tbl_municipios`
 ADD PRIMARY KEY (`muni_Codigo`), ADD KEY `Departamento` (`muni_Departamento`);

--
-- Indices de la tabla `tbl_tareas`
--
ALTER TABLE `tbl_tareas`
 ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tbl_tipoaccion`
--
ALTER TABLE `tbl_tipoaccion`
 ADD PRIMARY KEY (`TipAcc_Id`);

--
-- Indices de la tabla `tbl_tipodocumento`
--
ALTER TABLE `tbl_tipodocumento`
 ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tbl_tipojuzgado`
--
ALTER TABLE `tbl_tipojuzgado`
 ADD PRIMARY KEY (`tipjuz_Id`);

--
-- Indices de la tabla `tbl_tipousuario`
--
ALTER TABLE `tbl_tipousuario`
 ADD PRIMARY KEY (`tipu_Id`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
 ADD PRIMARY KEY (`usu_Documento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_casificacionproceso`
--
ALTER TABLE `tbl_casificacionproceso`
MODIFY `clapro_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `tbl_especialidades`
--
ALTER TABLE `tbl_especialidades`
MODIFY `espe_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_estados`
--
ALTER TABLE `tbl_estados`
MODIFY `Estado_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tbl_estratos`
--
ALTER TABLE `tbl_estratos`
MODIFY `estr_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tbl_tipousuario`
--
ALTER TABLE `tbl_tipousuario`
MODIFY `tipu_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_municipios`
--
ALTER TABLE `tbl_municipios`
ADD CONSTRAINT `munic_depar` FOREIGN KEY (`muni_Departamento`) REFERENCES `tbl_departamentos` (`depa_Id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
