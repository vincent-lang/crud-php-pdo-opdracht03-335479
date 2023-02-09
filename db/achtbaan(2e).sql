-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 09 feb 2023 om 21:28
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
CREATE DATABASE IF NOT EXISTS `atractiepark` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `atractiepark`;

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `achtbaan`
--

INSERT INTO `achtbaan` (`Id`, `naam_achtbaan`, `naam_pretpark`, `naam_land`, `topsnelheid`, `hoogte`, `datum`, `cijfer`) VALUES
(1, ' Red Force', 'Ferrari Land', 'Spanje', 192, 112, '1968-03-02', '9.2'),
(2, 'Ring Racer', 'Circuit Nürnberg ', 'Duitsland', 160, 110, '1974-08-01', '8.7'),
(3, 'Hyperion', 'EnergyLandia', 'Polen', 141, 77, '2009-09-09', '6.3'),
(4, 'Furios Baco', 'PortAventura', 'Spanje', 138, 23, '2018-06-06', '5.5'),
(5, 'Shambala', 'PortAventura', 'Spanje', 134, 102, '2017-04-03', '9.7');
--
-- Database: `maakzelfjepizza`
--
CREATE DATABASE IF NOT EXISTS `maakzelfjepizza` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `maakzelfjepizza`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pizza`
--

DROP TABLE IF EXISTS `pizza`;
CREATE TABLE IF NOT EXISTS `pizza` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Bodemformaat` varchar(30) NOT NULL,
  `Saus` varchar(30) NOT NULL,
  `Pizzatoppings` varchar(30) DEFAULT NULL,
  `Peterselie` varchar(30) DEFAULT NULL,
  `Oregano` varchar(30) DEFAULT NULL,
  `Chili_flakes` varchar(30) DEFAULT NULL,
  `Zwarte_peper` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `pizza`
--

INSERT INTO `pizza` (`Id`, `Bodemformaat`, `Saus`, `Pizzatoppings`, `Peterselie`, `Oregano`, `Chili_flakes`, `Zwarte_peper`) VALUES
(23, '35 centimeter', 'Tomatensaus', 'vegetarisch', NULL, 'on', NULL, NULL);
--
-- Database: `php-pdo-crud-2209b-j1-p2`
--
CREATE DATABASE IF NOT EXISTS `php-pdo-crud-2209b-j1-p2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `php-pdo-crud-2209b-j1-p2`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `persoon`
--

DROP TABLE IF EXISTS `persoon`;
CREATE TABLE IF NOT EXISTS `persoon` (
  `Id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(255) NOT NULL,
  `Infix` varchar(20) DEFAULT NULL,
  `Lastname` varchar(255) NOT NULL,
  `Phone_number` varchar(20) NOT NULL,
  `Street_name` varchar(30) NOT NULL,
  `House_number` varchar(10) NOT NULL,
  `Residence` varchar(30) NOT NULL,
  `Post_code` varchar(10) NOT NULL,
  `Land_name` varchar(40) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `persoon`
--

INSERT INTO `persoon` (`Id`, `Firstname`, `Infix`, `Lastname`, `Phone_number`, `Street_name`, `House_number`, `Residence`, `Post_code`, `Land_name`) VALUES
(1, 'Vincent', 'van de', 'Merwe', '', '', '', '', '', ''),
(2, 'Piet', NULL, 'Jan', '', '', '', '', '', ''),
(3, 'Jan', 'de', 'Piet', '', '', '', '', '', ''),
(4, 'Angelino', 'de', 'Kip', '', '', '', '', '', ''),
(5, 'Angela', 'de', 'Boer', '', '', '', '', '', '');
--
-- Database: `php-pdo-crud-proeftoets`
--
CREATE DATABASE IF NOT EXISTS `php-pdo-crud-proeftoets` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `php-pdo-crud-proeftoets`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `RichestPeople`
--

DROP TABLE IF EXISTS `RichestPeople`;
CREATE TABLE IF NOT EXISTS `RichestPeople` (
  `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `Networth` varchar(200) NOT NULL,
  `Age` tinyint(4) NOT NULL,
  `MyCompany` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `RichestPeople`
--

INSERT INTO `RichestPeople` (`Id`, `Name`, `Networth`, `Age`, `MyCompany`) VALUES
(1, 'Elon Musk', '261000000000', 50, 'Tesla'),
(2, 'Jeff Bezos', '183000000000', 58, 'Amazon'),
(3, 'Bernard Arnault', '142000000000', 73, 'Louis Vuitton Moët Hennessy'),
(4, 'Bill Gates', '130000000000', 66, 'Microsoft'),
(5, 'Warren Buffett', '126000000000', 91, 'Berkshire Hathaway');
--
-- Database: `php-pdo-crud-toets`
--
CREATE DATABASE IF NOT EXISTS `php-pdo-crud-toets` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `php-pdo-crud-toets`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `DureAuto`
--

DROP TABLE IF EXISTS `DureAuto`;
CREATE TABLE IF NOT EXISTS `DureAuto` (
  `Id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Merk` varchar(200) NOT NULL,
  `Model` varchar(200) NOT NULL,
  `Topsnelheid` smallint(4) NOT NULL,
  `Prijs` int(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `DureAuto`
--

INSERT INTO `DureAuto` (`Id`, `Merk`, `Model`, `Topsnelheid`, `Prijs`) VALUES
(1, 'Bugatti', 'La vioture noire', 420, 16500000),
(2, 'Rolls-Royce', 'Swaptail', 250, 10960000),
(3, 'Bugatti', 'EB110', 390, 7500000),
(4, 'Mercedes-Benz', 'Maybach Exelero', 350, 6700000),
(5, 'Koenigsegg', 'CCXR Trevita', 401, 4000000);
--
-- Database: `projectdb`
--
CREATE DATABASE IF NOT EXISTS `projectdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projectdb`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `Projectcode` int(4) NOT NULL,
  `Projectnaam` varchar(50) NOT NULL,
  `Plaats` varchar(50) NOT NULL,
  `Projectleider` int(11) NOT NULL,
  `Startdatum` date DEFAULT NULL,
  `Budget` int(8) DEFAULT NULL,
  `Mailadres` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Projectcode`),
  UNIQUE KEY `Mailadres` (`Mailadres`),
  KEY `FK_Projectleider` (`Projectleider`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `project`
--

INSERT INTO `project` (`Projectcode`, `Projectnaam`, `Plaats`, `Projectleider`, `Startdatum`, `Budget`, `Mailadres`) VALUES
(110, 'ITCZ', 'Rotterdam', 40, '2009-01-01', 100000, 'itcz@mail.nl'),
(120, 'MTS', 'Rotterdam', 10, '2010-08-15', 145000, 'mts@mail.nl'),
(130, 'CAIA', 'Amsterdam', 30, '2010-10-01', 80000, 'caia@mail.nl'),
(140, 'GADB', 'Utrecht', 60, '2010-10-12', 98000, 'gadb@mail.nl'),
(150, 'ZVH', 'Maastricht', 35, '2010-10-12', 112000, 'zvh@mail.nl'),
(160, 'AAB', 'Utrecht', 16, '2011-01-12', 80000, 'aab@mail.nl');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `projectleden`
--

DROP TABLE IF EXISTS `projectleden`;
CREATE TABLE IF NOT EXISTS `projectleden` (
  `Projectcode` int(4) NOT NULL,
  `wnr` int(11) NOT NULL,
  `gewerkteAantalUren` int(4) DEFAULT NULL,
  KEY `project_projectcode` (`Projectcode`),
  KEY `werknemer_wnr` (`wnr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `projectleden`
--

INSERT INTO `projectleden` (`Projectcode`, `wnr`, `gewerkteAantalUren`) VALUES
(110, 40, 120),
(110, 25, 44),
(110, 45, 56),
(110, 26, 34),
(110, 10, 30),
(120, 10, 25),
(120, 50, 56),
(120, 20, 90),
(120, 12, 110),
(120, 26, 56),
(120, 40, 50),
(120, 30, 40),
(130, 30, 65),
(130, 60, 75),
(140, 48, 80),
(140, 35, 90),
(140, 26, 10),
(150, 47, 5),
(150, 28, 15),
(150, 26, 25),
(150, 40, 45),
(150, 25, 95);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `werknemer`
--

DROP TABLE IF EXISTS `werknemer`;
CREATE TABLE IF NOT EXISTS `werknemer` (
  `wnr` int(11) NOT NULL,
  `achternaam` varchar(50) NOT NULL,
  `voorletters` varchar(10) NOT NULL,
  `voorvoegsel` varchar(10) DEFAULT NULL,
  `adres` varchar(50) NOT NULL,
  `postcode` varchar(7) NOT NULL,
  `woonplaats` varchar(50) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `datum_in_dienst` date NOT NULL,
  `sal` decimal(8,2) NOT NULL,
  `chef` int(11) DEFAULT NULL,
  PRIMARY KEY (`wnr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `werknemer`
--

INSERT INTO `werknemer` (`wnr`, `achternaam`, `voorletters`, `voorvoegsel`, `adres`, `postcode`, `woonplaats`, `tel`, `datum_in_dienst`, `sal`, `chef`) VALUES
(10, 'Buck', 'A.P.', 'De', 'Lindelaan 2', '1055 PP', 'Amsterdam', '020-9876889', '1980-01-01', '4567.00', 99),
(12, 'Brasser', 'K.J.', '', 'Lindelaan 18', '1055 PP', 'Amsterdam', '020-9876443', '1988-10-12', '2148.80', 20),
(16, 'Lievense', 'I.H.', '', 'Hoofdstraat 3', '8948 KK', 'Leeuwarden', '058-6675434', '2004-10-14', '3148.54', 30),
(18, 'Vliet', 'P.', 'Van', 'Kade 34', '1056 KM', 'Amsterdam', '020-9322899', '2001-09-28', '1999.70', 20),
(19, 'Umbgrove', 'M.M.', '', 'Talmalaan 3', '4351 JG', 'Vlissingen', '0118-768221', '2006-11-13', '2988.10', 30),
(20, 'Maas', 'L.C.', '', 'Bosjeslaan 3', '3085 HG', 'Rotterdam', '010-2346777', '2011-02-01', '3011.30', 10),
(25, 'Neve', 'G.', 'De', 'Prinsengracht 20', '1048 GP', 'Amsterdam', '020-7654441', '1999-05-15', '3280.67', 40),
(26, 'Geel', 'J.M.G.', '', 'Plein 43', '3568 JL', 'Utrecht', '030-5671118', '2010-08-12', '2981.10', 30),
(28, 'Zeeuw', 'A.J.', '', 'Julianalaan 6', '5610JP', 'Eindhoven', '040-5908891', '1998-04-11', '3100.00', 35),
(30, 'Merk', 'J.', '', 'Eikenlaan 23', '3086 GH', 'Rotterdam', '010-2334990', '2010-01-30', '4300.50', 40),
(31, 'Paree', 'G.M.', '', 'Kade 44', '1056 KM', 'Amsterdam', '020-9322780', '2005-02-06', '1780.50', 35),
(35, 'Jonge', 'L.M.', 'De', 'Gracht 11', '6222 AG', 'Maastricht', '043-9012670', '1990-03-21', '2118.00', 40),
(40, 'Willegen', 'W.M.', 'Van', 'Beukenlaan 2', '3088 LM', 'Rotterdam ', '010-6671246', '2000-12-09', '4717.90', 99),
(45, 'Jobse', 'G.C.', '', 'Singel 128', '3088 HJ', 'Rotterdam', '010-9051230', '2010-04-12', '4990.95', 40),
(47, 'Jansma', 'L.M.', '', 'Singel 48', '1038 JG', 'Amsterdam', '020-1129045', '1998-06-11', '3124.56', 35),
(48, 'Bos', 'P.', '', 'Beukenlaan 18', '3088 LM', 'Rotterdam', '010-6671234', '2007-08-21', '3410.34', 60),
(50, 'Loof', 'J.G.', 'De', 'Plein 12', '3568 JL', 'Utrecht', '030-5671211', '2001-11-15', '2357.00', 10),
(52, 'Maas', 'M.C.', '', 'Hogeweg 12', '3078 KL', 'Rotterdam', '010-1123889', '1999-09-01', '2849.90', 60),
(60, 'Vliet', 'P.C.', 'Van der', 'Oranjeplein 23', '5655 AA', 'Eindhoven', '040-3434567', '1990-04-01', '3878.25', 10),
(99, 'Koning', 'C.', 'De', 'Singel 2', '3088 JK', 'Rotterdam', '010-9051229', '1980-01-01', '5690.00', NULL);

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `FK_Projectleider` FOREIGN KEY (`Projectleider`) REFERENCES `werknemer` (`wnr`);

--
-- Beperkingen voor tabel `projectleden`
--
ALTER TABLE `projectleden`
  ADD CONSTRAINT `project_projectcode` FOREIGN KEY (`Projectcode`) REFERENCES `project` (`Projectcode`),
  ADD CONSTRAINT `werknemer_wnr` FOREIGN KEY (`wnr`) REFERENCES `werknemer` (`wnr`);
--
-- Database: `toetsdb`
--
CREATE DATABASE IF NOT EXISTS `toetsdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `toetsdb`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `afdelingen`
--

DROP TABLE IF EXISTS `afdelingen`;
CREATE TABLE IF NOT EXISTS `afdelingen` (
  `ziekhnr` int(2) NOT NULL,
  `afdnr` int(2) NOT NULL,
  `naam` varchar(15) DEFAULT NULL,
  `totbed` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `afdelingen`
--

INSERT INTO `afdelingen` (`ziekhnr`, `afdnr`, `naam`, `totbed`) VALUES
(10, 3, 'Intensive Care', 21),
(10, 6, 'Psychiatrie', 67),
(15, 3, 'Intensive Care', 10),
(15, 4, 'Hartafdeling', 53),
(20, 1, 'Hersteloord', 10),
(20, 6, 'Psychiatrie', 118),
(20, 2, 'Kinder', 34),
(25, 4, 'Hartafdeling', 55),
(15, 1, 'Hersteloord', 13),
(25, 2, 'Kinder', 24);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `auto`
--

DROP TABLE IF EXISTS `auto`;
CREATE TABLE IF NOT EXISTS `auto` (
  `nummer` int(11) DEFAULT NULL,
  `merk` varchar(15) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `transmissie` varchar(15) DEFAULT NULL,
  `aantal_deuren` int(1) DEFAULT NULL,
  `catalogusprijs` int(7) DEFAULT NULL,
  `brandstof` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `auto`
--

INSERT INTO `auto` (`nummer`, `merk`, `type`, `transmissie`, `aantal_deuren`, `catalogusprijs`, `brandstof`) VALUES
(1000, 'Alfa Romeo', '145 1.4 16V TS', '5 versn bak', 3, 29600, 'Gas'),
(1001, 'Alfa Romeo', '145 1.4 16V TS', '5 versn bak', 3, 29600, 'Benzine'),
(1057, 'Audi', 'A3 1.8 20v 110kw Turbo Ambition', '5 versn bak', 3, 57350, 'Benzine'),
(1058, 'Audi', 'A3 1.8 20v 110kw Turbo Ambition automaat', 'automaat', 3, 61250, 'Benzine'),
(1256, 'BMW', '316i N', '5 versn bak', 4, 49950, 'Gas'),
(1257, 'BMW', '316i N', '5 versn bak', 4, 49950, 'Benzine'),
(1718, 'Ford', 'Escort 1600 66kw Rs Wagon', '5 versn bak', 5, 33990, 'Benzine'),
(2100, 'Jeep', 'Wrangler 2.5 Soft Top', '5 versn bak', 3, 51600, 'Gas'),
(2101, 'Jeep', 'Wrangler 2.5 Soft Top', '5 versn bak', 3, 51600, 'Benzine'),
(2234, 'Mazda', '323 1.3 Lx \"P\"', '5 versn bak', 3, 29595, 'Gas'),
(2390, 'Mercedes', 'C220td Classic Combi', '5 versn bak', 5, 74850, 'Diesel'),
(2762, 'Opel', 'Corsa X1.7d Eco', '5 versn bak', 5, 27150, 'Diesel'),
(4105, 'Toyota', 'Corolla 2.0d Linea Terra Hatchback', '5 versn bak', 3, 34340, 'Diesel'),
(4265, 'Volkswagen', 'Golf 1.9tdi 81kw Trline automaat', 'automaat', 3, 46869, 'Diesel'),
(4429, 'Volkswagen', 'Polo 1.4 16v 74kw Hatchback', '5 versn bak', 3, 32300, 'Benzine'),
(4515, 'Volvo', 'S40 1.6 16v', '5 versn bak', 4, 43900, 'Benzine');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bezetting`
--

DROP TABLE IF EXISTS `bezetting`;
CREATE TABLE IF NOT EXISTS `bezetting` (
  `patnr` int(5) NOT NULL,
  `ziekhnr` int(2) NOT NULL,
  `afdnr` int(2) NOT NULL,
  `bednr` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `bezetting`
--

INSERT INTO `bezetting` (`patnr`, `ziekhnr`, `afdnr`, `bednr`) VALUES
(11321, 10, 3, 1),
(12816, 10, 3, 2),
(19381, 10, 3, 3),
(25218, 15, 4, 1),
(30940, 15, 4, 2),
(38911, 20, 6, 1),
(39410, 20, 6, 2),
(45630, 20, 6, 3),
(48220, 20, 2, 1),
(50333, 25, 4, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `boetebedragen`
--

DROP TABLE IF EXISTS `boetebedragen`;
CREATE TABLE IF NOT EXISTS `boetebedragen` (
  `boetenr` int(2) NOT NULL,
  `spelnr` int(3) NOT NULL,
  `datum` datetime DEFAULT NULL,
  `bedrag` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`boetenr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `boetebedragen`
--

INSERT INTO `boetebedragen` (`boetenr`, `spelnr`, `datum`, `bedrag`) VALUES
(1, 6, '1990-01-07 12:30:00', '200.00'),
(2, 44, '1991-02-17 13:45:00', '100.00'),
(3, 27, '1993-11-28 09:20:30', '100.00'),
(4, 104, '1994-06-19 16:10:45', '50.00'),
(5, 44, '1990-01-07 12:30:00', '200.00'),
(6, 8, '1990-01-07 20:05:10', '200.00'),
(7, 44, '1992-10-18 21:00:25', '30.00'),
(8, 27, '1995-01-08 11:32:00', '75.00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naam` varchar(40) DEFAULT NULL,
  `duur` int(11) DEFAULT NULL,
  `releasedatum` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `film`
--

INSERT INTO `film` (`id`, `naam`, `duur`, `releasedatum`) VALUES
(1, 'A Good Day to Die Hard', 97, '2013-02-14'),
(2, 'Les Misérables', 157, '2013-01-10'),
(3, 'Django Unchained', 165, '2013-01-17'),
(4, 'Silver Linings Playbook', 120, '2013-02-28'),
(5, 'Hansel and Gretel: Witch Hunters', 88, '2013-02-28'),
(6, 'The Last Stand', 107, '2013-01-18'),
(7, 'Nijntje de Film', 71, '2013-01-30'),
(8, 'Lincoln', 150, '2013-01-31'),
(9, 'The Hobbit: An Unexpected Journey', 169, '2012-11-28'),
(10, 'Life of Pi', 127, '2012-12-20');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naam` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `genre`
--

INSERT INTO `genre` (`id`, `naam`) VALUES
(1, 'Actie'),
(2, 'Animatie'),
(3, 'Avontuur'),
(4, 'Documentaire'),
(5, 'Drama'),
(6, 'Familie'),
(7, 'Fantasy'),
(8, 'Horror'),
(9, 'Komedie'),
(10, 'Misdaad'),
(11, 'Muziek'),
(12, 'Oorlog'),
(13, 'Romantiek'),
(14, 'Sciencefiction'),
(15, 'Thriller'),
(16, 'Western');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `kantoren`
--

DROP TABLE IF EXISTS `kantoren`;
CREATE TABLE IF NOT EXISTS `kantoren` (
  `kantnr` int(2) NOT NULL,
  `naam` varchar(15) DEFAULT NULL,
  `plaats` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`kantnr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `kantoren`
--

INSERT INTO `kantoren` (`kantnr`, `naam`, `plaats`) VALUES
(10, 'BOEKHOUDING', 'AMSTERDAM'),
(20, 'ONDERZOEK', 'UTRECHT'),
(30, 'VERKOOP', 'DEN HAAG'),
(40, 'PRODUCTIE', 'ARNHEM');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `klant`
--

DROP TABLE IF EXISTS `klant`;
CREATE TABLE IF NOT EXISTS `klant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voornaam` varchar(40) DEFAULT NULL,
  `tussenvoegsel` varchar(40) DEFAULT NULL,
  `achternaam` varchar(40) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `klant`
--

INSERT INTO `klant` (`id`, `voornaam`, `tussenvoegsel`, `achternaam`, `email`) VALUES
(1, 'Piet', NULL, 'Pietersen', 'ppietersen@mail.nl'),
(2, 'Dolby', NULL, 'Omringer', 'domringer@mail.nl'),
(3, 'Jan', NULL, 'Janssen', 'jjansen3@mail.nl'),
(4, 'Jan', NULL, 'Jansen', 'jjansen4@mail.nl'),
(5, 'Jantien', NULL, 'Jansen', 'jjansen5@mail.nl'),
(6, 'Kees', NULL, 'Kijker', 'kkijker@mail.nl'),
(7, 'Frits', 'van de', 'Film', 'fvdfilmp@mail.nl'),
(8, 'Daan', NULL, 'Doek', 'ddoek@mail.nl'),
(9, 'Carice', 'van', 'Houten', 'cvhouten@mail.nl'),
(10, 'Barrie', NULL, 'Atsma', 'batsma@mail.nl');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `kt_genre_film`
--

DROP TABLE IF EXISTS `kt_genre_film`;
CREATE TABLE IF NOT EXISTS `kt_genre_film` (
  `film_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`film_id`,`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `kt_genre_film`
--

INSERT INTO `kt_genre_film` (`film_id`, `genre_id`) VALUES
(1, 1),
(1, 10),
(2, 5),
(2, 11),
(3, 1),
(3, 16),
(4, 5),
(4, 9),
(5, 8),
(5, 9),
(6, 1),
(6, 10),
(7, 2),
(8, 5),
(9, 3),
(9, 7),
(10, 3),
(10, 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `patienten`
--

DROP TABLE IF EXISTS `patienten`;
CREATE TABLE IF NOT EXISTS `patienten` (
  `patnr` int(5) NOT NULL,
  `naam` varchar(15) DEFAULT NULL,
  `plaats` varchar(15) DEFAULT NULL,
  `gebdat` datetime DEFAULT NULL,
  `mv` varchar(1) DEFAULT NULL,
  `ziekfnr` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `patienten`
--

INSERT INTO `patienten` (`patnr`, `naam`, `plaats`, `gebdat`, `mv`, `ziekfnr`) VALUES
(11321, 'Koopmans M.', 'Utrecht', '1966-12-11 00:00:00', 'M', 3542764),
(12816, 'Schouten W.', 'Den Haag', '1973-04-23 00:00:00', 'V', 7466384),
(19381, 'Elbers M.', 'Amsterdam', '1976-01-01 00:00:00', 'V', 9753728),
(25218, 'Dekker B.', 'Utrecht', '1954-11-05 00:00:00', 'M', 8466355),
(30940, 'Lammers T.', 'Arnhem', '1943-04-12 00:00:00', 'V', 3452718),
(38911, 'Jong H.', 'Nijmegen', '1982-01-12 00:00:00', 'M', 4656238),
(39410, 'Manders G.', 'Den Bosch', '1970-12-11 00:00:00', 'M', 2794710),
(45630, 'Ravenhorst P.', 'Eindhoven', '1948-02-04 00:00:00', 'M', 9872513),
(48220, 'Feenstra A.', 'Breda', '1977-02-27 00:00:00', 'V', 3529976),
(50333, 'Horst E.', 'Utrecht', '1964-04-12 00:00:00', 'M', 1232988);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `reservering`
--

DROP TABLE IF EXISTS `reservering`;
CREATE TABLE IF NOT EXISTS `reservering` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `klant_id` int(11) DEFAULT NULL,
  `voorstelling_id` int(11) DEFAULT NULL,
  `aantal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `reservering`
--

INSERT INTO `reservering` (`id`, `klant_id`, `voorstelling_id`, `aantal`) VALUES
(1, 1, 6, 1),
(2, 9, 10, 2),
(3, 1, 1, 4),
(4, 10, 7, 2),
(5, 8, 1, 3),
(6, 3, 3, 2),
(7, 9, 3, 1),
(8, 7, 2, 3),
(9, 1, 5, 2),
(10, 4, 9, 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `spelers`
--

DROP TABLE IF EXISTS `spelers`;
CREATE TABLE IF NOT EXISTS `spelers` (
  `spelnr` int(3) NOT NULL,
  `naam` varchar(20) DEFAULT NULL,
  `voorl` varchar(3) DEFAULT NULL,
  `jaartoe` int(4) DEFAULT NULL,
  `plaats` varchar(10) DEFAULT NULL,
  `bondsnr` int(4) DEFAULT NULL,
  PRIMARY KEY (`spelnr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `spelers`
--

INSERT INTO `spelers` (`spelnr`, `naam`, `voorl`, `jaartoe`, `plaats`, `bondsnr`) VALUES
(2, 'van der Wal', 'R', 1975, 'Den Haag', 2411),
(6, 'Honing', 'R', 1977, 'Den Haag', 8467),
(7, 'Sorgdrager', 'GWS', 1981, 'Den Haag', NULL),
(8, 'Cools', 'C', 1980, 'Rijswijk', 2983),
(27, 'Cools', 'DD', 1983, 'Utrecht', 2513),
(44, 'Bakker', 'E', 1980, 'Rijswijk', 1124),
(57, 'O\'Neal', 'M', 1985, 'Den Haag', 6409),
(83, 'Martens', 'PK', 1982, 'Utrecht', 1608),
(104, 'Kok', 'D', 1984, 'Utrecht', 7060),
(112, 'Winterdijk', 'IP', 1984, 'Rotterdam', 1319);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `stafleden`
--

DROP TABLE IF EXISTS `stafleden`;
CREATE TABLE IF NOT EXISTS `stafleden` (
  `ziekhnr` int(2) NOT NULL,
  `afdnr` int(2) NOT NULL,
  `persnr` int(4) NOT NULL,
  `naam` varchar(15) DEFAULT NULL,
  `functie` varchar(15) DEFAULT NULL,
  `dienst` varchar(6) DEFAULT NULL,
  `sal` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `stafleden`
--

INSERT INTO `stafleden` (`ziekhnr`, `afdnr`, `persnr`, `naam`, `functie`, `dienst`, `sal`) VALUES
(10, 6, 3526, 'Dinter B.', 'Verpleegster', 'A', 17400),
(10, 6, 3198, 'Hursman J.', 'Zaalknecht', 'A', 13500),
(15, 4, 2342, 'Keyzer W.', 'Assistent', 'A', 18300),
(20, 6, 2315, 'Horst D.', 'Verpleegster', 'N', 18300),
(20, 6, 8574, 'Beek G.', 'Zaalknecht', 'N', 12600),
(20, 2, 3257, 'Mensink C.', 'Assistent', 'N', 17000),
(20, 1, 8632, 'Riksen G.', 'Verpleegster', 'D', 20200),
(20, 1, 5342, 'Coolen R.', 'Verpleegster', 'A', 16300),
(25, 4, 6543, 'Arends R.', 'Assistent', 'D', 17000),
(25, 2, 9835, 'Fleskes H.', 'Verpleegster', 'A', 19400);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `taal`
--

DROP TABLE IF EXISTS `taal`;
CREATE TABLE IF NOT EXISTS `taal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naam` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `taal`
--

INSERT INTO `taal` (`id`, `naam`) VALUES
(1, 'Nederlands'),
(2, 'Engels'),
(3, 'Frans'),
(4, 'Duits'),
(5, 'Spaans');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `teamnr` int(2) NOT NULL,
  `spelnr` int(3) NOT NULL,
  `divisie` varchar(6) NOT NULL,
  PRIMARY KEY (`teamnr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `teams`
--

INSERT INTO `teams` (`teamnr`, `spelnr`, `divisie`) VALUES
(1, 2, 'ere'),
(2, 27, 'tweede');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `voorstelling`
--

DROP TABLE IF EXISTS `voorstelling`;
CREATE TABLE IF NOT EXISTS `voorstelling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `film_id` int(11) DEFAULT NULL,
  `zaal_id` int(11) DEFAULT NULL,
  `aanvang` varchar(40) DEFAULT NULL,
  `prijs` decimal(5,2) DEFAULT NULL,
  `taal_id` int(11) DEFAULT NULL,
  `ondertitel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `voorstelling`
--

INSERT INTO `voorstelling` (`id`, `film_id`, `zaal_id`, `aanvang`, `prijs`, `taal_id`, `ondertitel_id`) VALUES
(1, 1, 2, '2013-02-28 19:00:00.000', '9.00', 2, 1),
(2, 1, 2, '2013-03-01 19:00:00.000', '9.00', 2, 1),
(3, 1, 2, '2013-03-02 19:00:00.000', '9.00', 2, 1),
(4, 2, 3, '2013-02-28 19:00:00.000', '8.00', 2, 1),
(5, 2, 3, '2013-02-28 19:00:00.000', '8.00', 2, 1),
(6, 7, 1, '2013-03-02 19:00:00.000', '7.50', 1, NULL),
(7, 3, 2, '2013-02-28 19:00:00.000', '9.00', 2, 1),
(8, 3, 2, '2013-03-01 19:00:00.000', '9.00', 2, 1),
(9, 3, 2, '2013-03-02 19:00:00.000', '9.00', 2, 1),
(10, 4, 2, '2013-03-05 19:00:00.000', '8.00', 2, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `wedstrijden`
--

DROP TABLE IF EXISTS `wedstrijden`;
CREATE TABLE IF NOT EXISTS `wedstrijden` (
  `TEAMNR` int(2) NOT NULL,
  `SPELNR` int(3) NOT NULL,
  `GEWONNEN` int(3) NOT NULL DEFAULT '0',
  `VERLOREN` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `wedstrijden`
--

INSERT INTO `wedstrijden` (`TEAMNR`, `SPELNR`, `GEWONNEN`, `VERLOREN`) VALUES
(1, 6, 9, 1),
(1, 44, 7, 5),
(1, 83, 3, 3),
(1, 2, 4, 8),
(1, 57, 5, 0),
(1, 8, 0, 1),
(2, 27, 11, 2),
(2, 104, 8, 4),
(2, 112, 4, 8),
(2, 8, 4, 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `werknemers`
--

DROP TABLE IF EXISTS `werknemers`;
CREATE TABLE IF NOT EXISTS `werknemers` (
  `persnr` int(4) NOT NULL,
  `naam` varchar(10) DEFAULT NULL,
  `functie` varchar(9) DEFAULT NULL,
  `mgr` int(4) DEFAULT NULL,
  `sal` int(5) DEFAULT NULL,
  `toeslag` int(5) DEFAULT NULL,
  `kantnr` int(2) DEFAULT NULL,
  PRIMARY KEY (`persnr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `werknemers`
--

INSERT INTO `werknemers` (`persnr`, `naam`, `functie`, `mgr`, `sal`, `toeslag`, `kantnr`) VALUES
(3381, 'SMITS', 'KLERK', 7902, 2400, NULL, 20),
(3462, 'ALKEMA', 'VERKOPER', 4621, 2600, 300, 30),
(3518, 'WALSTRA', 'VERKOPER', 4621, 2250, 500, 30),
(3930, 'PIETERS', 'MANAGER', 6221, 3975, NULL, 20),
(4510, 'VERGEER', 'VERKOPER', 4621, 2250, 1400, 30),
(4621, 'KLAASEN', 'MANAGER', 6221, 3850, NULL, 30),
(5810, 'HEUVEL', 'MANAGER', 6221, 3450, NULL, 10),
(5931, 'SANDERS', 'ANALIST', 3930, 4000, NULL, 20),
(6221, 'KRAAY', 'DIRECTEUR', NULL, 6000, NULL, 10),
(6500, 'DROST', 'VERKOPER', 4621, 2500, 0, 30),
(6681, 'ADELAAR', 'KLERK', 5931, 2100, NULL, 20),
(7900, 'APPEL', 'KLERK', 4621, 1950, NULL, 30),
(7902, 'VERMEULEN', 'ANALIST', 3930, 3900, NULL, 20),
(8222, 'MANDERS', 'KLERK', 5810, 2300, NULL, 10);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `zaal`
--

DROP TABLE IF EXISTS `zaal`;
CREATE TABLE IF NOT EXISTS `zaal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naam` varchar(40) DEFAULT NULL,
  `plaatsen` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `zaal`
--

INSERT INTO `zaal` (`id`, `naam`, `plaatsen`) VALUES
(1, 'Kinderzaal', 10),
(2, 'Megazaal', 350),
(3, 'Theaterzaal', 200),
(4, 'Oude Zaal', 100);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ziekenhuizen`
--

DROP TABLE IF EXISTS `ziekenhuizen`;
CREATE TABLE IF NOT EXISTS `ziekenhuizen` (
  `ziekhnr` int(2) NOT NULL,
  `naam` varchar(15) DEFAULT NULL,
  `plaats` varchar(15) DEFAULT NULL,
  `telefoon` varchar(12) DEFAULT NULL,
  `totbed` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `ziekenhuizen`
--

INSERT INTO `ziekenhuizen` (`ziekhnr`, `naam`, `plaats`, `telefoon`, `totbed`) VALUES
(10, 'AMC', 'Amsterdam', '020-6532617', 502),
(15, 'Diaconessen', 'Utrecht', '030-2646362', 587),
(20, 'Antonius', 'Nieuwegein', '030-6045632', 412),
(25, 'Zuiderzee', 'Lelystad', '0320-255522', 845);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
