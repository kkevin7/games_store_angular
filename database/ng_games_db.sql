-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-09-2019 a las 23:51:23
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ng_games_db`
--
CREATE DATABASE IF NOT EXISTS `ng_games_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ng_games_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `title` varchar(180) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `games`
--

INSERT INTO `games` (`id`, `title`, `description`, `image`, `create_at`) VALUES
(1, 'Mario kart 8', 'A Nintendo Wii u and Switch game', 'https://www.videojuegosclub.com/446-large_default/mario-kart-8-nintendo-switch.jpg', '2019-09-30 15:54:34'),
(2, 'Horizon Zero Dawn', 'A PS4 Game', 'https://images-na.ssl-images-amazon.com/images/I/71sJZS0XYnL._SX342_.jpg', '2019-09-30 15:57:16'),
(3, 'Spiderman', 'A PS4 Game', 'https://www.videojuegosclub.com/695-large_default/usado-spiderman-ps4.jpg', '2019-09-30 15:58:24'),
(4, 'God of War 4', 'A PS4 game', 'https://i11d.3djuegos.com/juegos/11552/god_of_war_ps4__nombre_temporal_/fotos/ficha/god_of_war_ps4__nombre_temporal_-3754795.jpg', '2019-09-30 19:57:21'),
(5, 'Resident Evil 5', 'Considered the best of the resident evil', 'https://vignette.wikia.nocookie.net/fansresidentevil/images/9/9a/Resident_Evil_4_PS2_Cover.jpg/revision/latest?cb=20130224203350&path-prefix=es', '2019-09-30 20:19:54'),
(8, 'Crash Bandicoot', 'A PS4, Nindento Switch and Xbox Remastered', 'https://images-na.ssl-images-amazon.com/images/I/710NrLxX0kL._SL1000_.jpg', '2019-09-30 20:45:21'),
(9, 'Grand Theft Auto v', 'A action game', 'https://http2.mlstatic.com/gta-v-grand-theft-auto-5-ps4-premium-fisico-nextgames-D_NQ_NP_651839-MLA31309599965_072019-F.jpg', '2019-10-01 09:22:30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
