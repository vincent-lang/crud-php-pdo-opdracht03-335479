-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 09 feb 2023 om 20:09
-- Serverversie: 5.7.36
-- PHP-versie: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atractiepark`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `achtbaan`
--

DROP TABLE IF EXISTS `achtbaan`;
CREATE TABLE IF NOT EXISTS `achtbaan` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `naam_achtbaan` varchar(20) NOT NULL,
  `naam_pretpark` varchar(20) NOT NULL,
  `naam_land` varchar(20) NOT NULL,
  `topsnelheid` int(200) NOT NULL,
  `hoogte` int(200) NOT NULL,
  `datum` date NOT NULL,
  `cijfer` decimal(10,1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `achtbaan`
--

INSERT INTO `achtbaan` (`Id`, `naam_achtbaan`, `naam_pretpark`, `naam_land`, `topsnelheid`, `hoogte`, `datum`, `cijfer`) VALUES
(1, ' Red Force', 'Ferrari Land', 'Spanje', 192, 112, '1968-03-02', '9.2'),
(2, 'Ring Racer', 'Circuit Nürnberg ', 'Duitsland', 160, 110, '1974-08-01', '8.7'),
(3, 'Hyperion', 'EnergyLandia', 'Polen', 141, 77, '2009-09-09', '6.3'),
(4, 'Furios Baco', 'PortAventura', 'Spanje', 138, 23, '2018-06-06', '5.5'),
(5, 'Shambala', 'PortAventura', 'Spanje', 134, 102, '2017-04-03', '9.7');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
