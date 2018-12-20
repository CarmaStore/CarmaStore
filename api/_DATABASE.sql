-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-12-2018 a las 21:28:51
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--
CREATE DATABASE IF NOT EXISTS `proyecto` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `proyecto`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nom_admin` varchar(25) NOT NULL,
  `correo_admin` varchar(45) NOT NULL,
  `clave` varchar(120) NOT NULL,
  `foto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `admin`
--

TRUNCATE TABLE `admin`;
--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id_admin`, `nom_admin`, `correo_admin`, `clave`, `foto`) VALUES
(1, 'Admin', 'srf.12@gmail.com', '123', 'admin.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `nom_company` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `company`
--

TRUNCATE TABLE `company`;
--
-- Volcado de datos para la tabla `company`
--

INSERT INTO `company` (`id_company`, `nom_company`) VALUES
(1, 'DICE'),
(2, 'Ubisoft'),
(3, 'id Software'),
(4, 'Rockstar North'),
(5, 'Capcom'),
(6, 'Facepunch Studios'),
(7, 'PUBG Corporation'),
(8, 'Behaviour Digital Inc'),
(9, 'Coatsink'),
(10, 'Noio'),
(11, 'BioWare');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `games`
--

CREATE TABLE `games` (
  `id_g` int(11) NOT NULL,
  `nom_g` varchar(55) NOT NULL,
  `info_g` varchar(400) NOT NULL,
  `category` varchar(400) NOT NULL,
  `fecha` date NOT NULL,
  `Company` int(55) NOT NULL,
  `precio` int(11) NOT NULL,
  `idioma` int(11) NOT NULL,
  `foto_g` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `games`
--

TRUNCATE TABLE `games`;
--
-- Volcado de datos para la tabla `games`
--

INSERT INTO `games` (`id_g`, `nom_g`, `info_g`, `category`, `fecha`, `Company`, `precio`, `idioma`, `foto_g`) VALUES
(1, 'BATTLEFIELD V', 'Vive el mayor conflicto de la humanidad con gracias a este regreso de la saga a sus orígenes con una representación inédita de la 2ª Guerra Mundial. Ponte al frente de la patrulla y llévala a la victoria con nuevas formas de cambiar el campo de batalla a tu antojo. Forma tu propia compañía con vehículos, armas y soldados personalizados y vive un viaje épico en Vientos de guerra.', 'Acción, Aventura, Shooter.', '2018-10-20', 1, 15, 8, 'battlefieldV.jpg'),
(2, 'Dragon Age: Inquisitor', 'En el videojuego se te encarga de organizar y recolectar fuerzas para la inquisición, que se encarga de combatir las fuerzas oscuras. Al comenzar la aventura eliges entre tres clases de personajes, cada uno ofrece múltiples árboles de habilidades para especializarte y elegir tu estilo de juego.', 'Juego de Rol.', '2014-10-10', 2, 15, 8, 'inquisition.jpg'),
(3, 'Just Dance 2019', 'Adéntrate a una experiencia más personalizada conforma el juego emprende de tus hábitos de baile y te sugiere contenido que te va a gustar. Cuenta, además, con ocho exclusivas coreografías creadas con la ayuda de expertos en desarrollo infantil para promover un movimiento saludable.', 'Entretenimiento', '2018-10-25', 3, 25, 8, 'justdance.jpg'),
(4, 'DOOM(2016)', 'Estudio pionero en el género de los shooters en primera persona y creador de las partidas multijugador en formato Deathmatch, regresa una vez más como un moderno Shooter repleto de diversión y desafíos', 'Acción', '2016-05-13', 4, 0, 8, 'doom2016.jpg'),
(5, 'GRAND THEFT AUTO V', 'Asóciate con el empresario Tony Price para abrir y gestionar un club nocturno en el que pinchan los mejores DJ del mundo (Solomum, Tale of Us, Dixon y The Black Madonna), y úsalo de tapadera para ocultar la red de organizaciones criminales más densa de San Andreas.\r\nEste juego puede incluir contenido no apto para todas las edades o para verlo en el trabajo: contenido general para adultos', 'Acción, Aventura', '2015-06-14', 5, 0, 8, 'GTAV.jpg'),
(6, 'Devil May Cry 5', 'El caza demonios definitivo vuelve con estilo en el juego que los fans de la acción estaban esperando', 'Acción, Aventura', '2019-03-08', 6, 0, 7, 'dmc5.jpg'),
(7, 'Garry´s mod', 'Garry’s Mod es un entorno que te permite jugar libremente con el motor físico. Al contrario que en la mayoría de los juegos, no hay metas u objetivos predeterminados. Te proporcionamos las herramientas y te damos libertad para jugar.\r\nTú generas los objetos y los unes para crear tus propios artefactos: ya sea un coche, un cohete, una catapulta o algo aún por inventar.', 'Indie, Simuladores', '2006-11-29', 7, 0, 9, 'garrysmod.png'),
(8, 'PLAYERUNKNOWN’S BATTLEGRPUND', 'Es un Shooter basado en el modo Battle Royale que esta siendo desarrollado a través de la retroalimentación con la comunidad.\r\nComenzando de la nada, los usuarios tienen que luchar uno contra el otro para localizar armas y suministros para el único sobreviviente.', 'Acción, Aventura, Multijugador masivo', '2006-11-29', 8, 0, 9, 'pubg.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idiomas`
--

CREATE TABLE `idiomas` (
  `id_idioma` int(11) NOT NULL,
  `idioma` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `idiomas`
--

TRUNCATE TABLE `idiomas`;
--
-- Volcado de datos para la tabla `idiomas`
--

INSERT INTO `idiomas` (`id_idioma`, `idioma`) VALUES
(1, 'Ingles'),
(2, 'Español'),
(3, 'Italiano'),
(4, 'Frances'),
(5, 'Aleman'),
(6, 'Portugues'),
(7, 'Multi 3'),
(8, 'Multi 5'),
(9, 'Multi 7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nom_usu` varchar(25) NOT NULL,
  `paterno_usu` varchar(25) NOT NULL,
  `materno_usu` varchar(25) NOT NULL,
  `sexo_usu` char(1) NOT NULL,
  `correo_usu` varchar(45) NOT NULL,
  `nick` varchar(45) NOT NULL,
  `clave` varchar(120) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `usuarios`
--

TRUNCATE TABLE `usuarios`;
--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nom_usu`, `paterno_usu`, `materno_usu`, `sexo_usu`, `correo_usu`, `nick`, `clave`, `foto`, `estado`) VALUES
(1, 'angel', 'Castillo', 'coronado', 'M', 'krico@gmail.com', 'Krico', '123', 'krico.jpg', '0'),
(2, 'ricardo', 'Canchis', 'meza', 'M', 'srf.12.14@gmail.com', 'hackerpxndx', '123', 'hacker.jpg', '0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`);

--
-- Indices de la tabla `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id_g`),
  ADD KEY `Company` (`Company`),
  ADD KEY `idioma` (`idioma`);

--
-- Indices de la tabla `idiomas`
--
ALTER TABLE `idiomas`
  ADD PRIMARY KEY (`id_idioma`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `games`
--
ALTER TABLE `games`
  MODIFY `id_g` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `idiomas`
--
ALTER TABLE `idiomas`
  MODIFY `id_idioma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`Company`) REFERENCES `company` (`id_company`),
  ADD CONSTRAINT `games_ibfk_2` FOREIGN KEY (`idioma`) REFERENCES `idiomas` (`id_idioma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
