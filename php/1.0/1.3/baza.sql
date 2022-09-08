SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `z01c` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `z01c`;

CREATE TABLE `nauczyciele` (
  `NauczycielID` int(11) NOT NULL,
  `NazwiskoImie` varchar(55) NOT NULL,
  `Wyksztalcenie` varchar(35) NOT NULL,
  `StazPrazy` varchar(8) NOT NULL,
  `Telefon` varchar(10) NOT NULL,
  `Mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `nauczyciele` (`NauczycielID`, `NazwiskoImie`, `Wyksztalcenie`, `StazPrazy`, `Telefon`, `Mail`) VALUES
(1, 'Rutkowski Paweł', 'wyższe', '6 lat', '987273598', 'rutkowskipawel@wp.pl'),
(2, 'Kowalczyk Adam', 'wyższe', '8 lat', '987369741', 'kowalczyk.adam@o2.pl'),
(3, 'Wójcik Daniel', 'wyższe', '4 lata', '963951456', 'daniel.wojcik@onet.pl');

CREATE TABLE `oceny` (
  `OcenaID` int(11) NOT NULL,
  `UczenID` int(11) NOT NULL,
  `PrzedmiotID` int(11) NOT NULL,
  `NauczycielID` int(11) NOT NULL,
  `OcenaDefID` int(11) NOT NULL,
  `Data` date NOT NULL,
  `Godzina` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `oceny` (`OcenaID`, `UczenID`, `PrzedmiotID`, `NauczycielID`, `OcenaDefID`, `Data`, `Godzina`) VALUES
(1, 1, 1, 1, 1, '2015-09-06', '16:15:00'),
(2, 2, 2, 2, 2, '2015-09-08', '17:20:00'),
(3, 3, 3, 3, 3, '2015-09-09', '18:30:00');

CREATE TABLE `ocenydefinicje` (
  `OcenaDefID` int(11) NOT NULL,
  `NazwaPelna` varchar(20) NOT NULL,
  `NazwaSkrot` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `ocenydefinicje` (`OcenaDefID`, `NazwaPelna`, `NazwaSkrot`) VALUES
(1, 'Celująca', 'cel'),
(2, 'Bardzo dobra', 'bdb'),
(3, 'Dobra', 'db');

CREATE TABLE `przedmioty` (
  `PrzedmiotID` int(11) NOT NULL,
  `NazwaPelna` varchar(55) NOT NULL,
  `NazwaSkrot` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `przedmioty` (`PrzedmiotID`, `NazwaPelna`, `NazwaSkrot`) VALUES
(1, 'Informatyka', 'inf.'),
(2, 'Matematyka', 'mat.'),
(3, 'Język Polski', 'j.pol');

CREATE TABLE `uczniowie` (
  `UczenID` int(11) NOT NULL,
  `NazwiskoImie` varchar(55) NOT NULL,
  `DataUr` date NOT NULL,
  `MiejsceUr` varchar(55) NOT NULL,
  `Kod` varchar(30) NOT NULL,
  `Miejscowosc` varchar(55) NOT NULL,
  `UlicaNr` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `uczniowie` (`UczenID`, `NazwiskoImie`, `DataUr`, `MiejsceUr`, `Kod`, `Miejscowosc`, `UlicaNr`) VALUES
(1, 'Kowalski Jan', '2004-04-01', 'Zielona Góra', '65-125', 'Zielona Góra', 'Skrajna 86'),
(2, 'Pietrykowski Marcin', '2004-06-03', 'Zielona Góra', '66-004', 'Zielona góra, Racula', 'Grabowa 3'),
(3, 'Nowak Piotr', '2004-12-08', 'Zielona Góra', '66-004', 'Zielona Góra, Drzonków', 'Strumykowa 16');

ALTER TABLE `nauczyciele`
  ADD PRIMARY KEY (`NauczycielID`);

ALTER TABLE `oceny`
  ADD PRIMARY KEY (`OcenaID`),
  ADD KEY `UczenID` (`UczenID`),
  ADD KEY `PrzedmiotID` (`PrzedmiotID`),
  ADD KEY `NauczycielID` (`NauczycielID`),
  ADD KEY `OcenaDefID` (`OcenaDefID`);

ALTER TABLE `ocenydefinicje`
  ADD PRIMARY KEY (`OcenaDefID`);

ALTER TABLE `przedmioty`
  ADD PRIMARY KEY (`PrzedmiotID`);

ALTER TABLE `uczniowie`
  ADD PRIMARY KEY (`UczenID`);

ALTER TABLE `nauczyciele`
  MODIFY `NauczycielID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `ocenydefinicje`
  MODIFY `OcenaDefID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `przedmioty`
  MODIFY `PrzedmiotID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `uczniowie`
  MODIFY `UczenID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `nauczyciele`
  ADD CONSTRAINT `nauczyciele_ibfk_1` FOREIGN KEY (`NauczycielID`) REFERENCES `oceny` (`NauczycielID`);

ALTER TABLE `ocenydefinicje`
  ADD CONSTRAINT `ocenydefinicje_ibfk_1` FOREIGN KEY (`OcenaDefID`) REFERENCES `oceny` (`OcenaDefID`);

ALTER TABLE `przedmioty`
  ADD CONSTRAINT `przedmioty_ibfk_1` FOREIGN KEY (`PrzedmiotID`) REFERENCES `oceny` (`PrzedmiotID`);

ALTER TABLE `uczniowie`
  ADD CONSTRAINT `uczniowie_ibfk_1` FOREIGN KEY (`UczenID`) REFERENCES `oceny` (`UczenID`);

USE `phpmyadmin`;

COMMIT;