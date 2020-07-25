-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 25. Jul 2020 um 16:29
-- Server-Version: 10.1.39-MariaDB
-- PHP-Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr11_paulalbrecht_petadoption`
--
CREATE DATABASE IF NOT EXISTS `cr11_paulalbrecht_petadoption` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cr11_paulalbrecht_petadoption`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `animal`
--

CREATE TABLE `animal` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `breed` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `location` varchar(500) NOT NULL,
  `img` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `animal`
--

INSERT INTO `animal` (`id`, `name`, `breed`, `type`, `size`, `age`, `location`, `img`) VALUES
(1, 'Olivia', 'Pug', 1, 1, 1, 'vienna', 'https://images.pexels.com/photos/1851164/pexels-photo-1851164.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
(3, 'Luna', 'Pug', 1, 1, 1, 'vienna', 'https://images.unsplash.com/photo-1591768575198-88dac53fbd0a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80'),
(4, 'Bud', 'French Bulldog', 1, 1, 9, 'vienna', 'https://images.unsplash.com/photo-1564655636428-a86aecc8b948?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1212&q=80'),
(5, 'Bullie', 'Chartreux', 2, 1, 5, 'vienna', 'https://images.unsplash.com/photo-1561948955-570b270e7c36?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=859&q=80'),
(6, 'Louis', 'chihuahua', 1, 1, 5, 'vienna', 'https://images.unsplash.com/photo-1520825944622-a66c85325472?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80'),
(7, 'James', 'Blanc de Hotot', 5, 1, 5, 'vienna', 'https://images.unsplash.com/photo-1585574838433-b8a8a249140e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80'),
(8, 'Frank', 'Bohemian waxwing', 3, 1, 5, 'vienna', 'https://images.unsplash.com/photo-1511692277506-3be3a7ab1686?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1700&q=80');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `status` enum('user','admin','superadmin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`, `status`) VALUES
(1, 'Pauli', 'pauli@gmx.at', '34c139d38990c41bc42bdb958c8b914479360ac73f580844e5377ada2174ad27', 'user'),
(3, 'admin', 'admin@gmx.at', '34c139d38990c41bc42bdb958c8b914479360ac73f580844e5377ada2174ad27', 'admin'),
(4, 'superadmin', 'superadmin@gmx.at', '34c139d38990c41bc42bdb958c8b914479360ac73f580844e5377ada2174ad27', 'superadmin');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
