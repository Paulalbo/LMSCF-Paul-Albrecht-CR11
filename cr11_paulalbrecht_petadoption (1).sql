-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 25. Jul 2020 um 16:54
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
(5, 'Bullie', 'Chartreux', 1, 1, 13, 'vienna', 'https://images.unsplash.com/photo-1561948955-570b270e7c36?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=859&q=80'),
(6, 'Louis', 'chihuahua', 1, 1, 11, 'vienna', 'https://images.unsplash.com/photo-1520825944622-a66c85325472?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80'),
(7, 'James', 'Blanc de Hotot', 5, 1, 5, 'vienna', 'https://images.unsplash.com/photo-1585574838433-b8a8a249140e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80'),
(8, 'Frank', 'Bohemian waxwing', 1, 0, 10, 'vienna', 'https://images.unsplash.com/photo-1511692277506-3be3a7ab1686?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1700&q=80'),
(12, 'Charles', 'Golden Retriever', 1, 0, 2, 'vienna', 'https://images.unsplash.com/photo-1553736026-ff14d158d222?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80'),
(13, 'Franklin', 'Husky', 1, 0, 4, 'Vienna', 'https://images.unsplash.com/photo-1491604612772-6853927639ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80'),
(14, 'Joy', 'Weird bird', 3, 0, 9, '1180 Wien, 18. Bezirk, WÃ¤hring', 'https://images.unsplash.com/photo-1511823794984-b87716139b88?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60'),
(15, 'Coco', 'field rabbit', 5, 0, 2, 'Salzburg', 'https://images.unsplash.com/photo-1589933398236-fdf8e2fb505a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60'),
(16, 'Munchkin', 'some sort of cat', 2, 0, 5, 'Los Angeles', 'https://images.unsplash.com/photo-1543852786-1cf6624b9987?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80'),
(17, 'Jay', 'Clown fish', 4, 0, 15, 'Las Vegas', 'https://images.unsplash.com/photo-1522069169874-c58ec4b76be5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1256&q=80'),
(18, 'Keke', 'Sea Horse', 4, 0, 2, 'Pacific ocean', 'https://images.unsplash.com/photo-1523585895729-a4bb980d5c14?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1232&q=80');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
