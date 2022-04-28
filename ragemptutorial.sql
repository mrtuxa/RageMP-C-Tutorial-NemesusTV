-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 28. Apr 2022 um 14:32
-- Server-Version: 10.4.21-MariaDB
-- PHP-Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `ragemptutorial`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `adminlevel` int(2) NOT NULL DEFAULT 0,
  `geld` int(11) NOT NULL,
  `payday` int(2) NOT NULL DEFAULT 60,
  `fraktion` int(2) NOT NULL DEFAULT 0,
  `rang` int(2) NOT NULL DEFAULT 0,
  `posx` float NOT NULL,
  `posy` float NOT NULL,
  `posz` float NOT NULL,
  `posa` float NOT NULL,
  `einreise` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `password`, `adminlevel`, `geld`, `payday`, `fraktion`, `rang`, `posx`, `posy`, `posz`, `posa`, `einreise`) VALUES
(2, 'Nemesus', '$2a$10$Y0XnAEu0moCEbJl6BAbXM.IGw7G1XgJFyebOVmWvBgc5wFYutlQ0.', 3, 5050, 45, 1, 6, -420.678, 1182.97, 325.642, 160.944, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `house`
--

CREATE TABLE `house` (
  `id` int(11) NOT NULL,
  `ipl` varchar(100) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `preis` int(6) NOT NULL,
  `besitzer` varchar(50) NOT NULL,
  `abgeschlossen` int(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `house`
--

INSERT INTO `house` (`id`, `ipl`, `posX`, `posY`, `posZ`, `preis`, `besitzer`, `abgeschlossen`, `status`) VALUES
(1, 'apa_v_mp_h_01_a', -437.341, 1124.94, 325.859, 50, 'Keiner', 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `hash` varchar(35) NOT NULL,
  `ownerEntity` varchar(35) NOT NULL,
  `ownerIdentifier` int(6) NOT NULL,
  `amount` int(4) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `PosZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `items`
--

INSERT INTO `items` (`id`, `hash`, `ownerEntity`, `ownerIdentifier`, `amount`, `posX`, `posY`, `PosZ`) VALUES
(2, '2565741261', 'Player', 2, 3, 0, 0, 0),
(9, '2565741261', 'Ground', 2, 1, -445.791, 1135.73, 324.985),
(10, '2565741261', 'Ground', 2, 1, -435.519, 1136.22, 324.984);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `whitelist`
--

CREATE TABLE `whitelist` (
  `id` int(11) NOT NULL,
  `socialclubid` int(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `whitelist`
--

INSERT INTO `whitelist` (`id`, `socialclubid`, `timestamp`) VALUES
(3, 18021891, '2022-03-08 12:47:33');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `house`
--
ALTER TABLE `house`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `whitelist`
--
ALTER TABLE `whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
