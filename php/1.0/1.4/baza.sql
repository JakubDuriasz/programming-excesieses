SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `z01` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `z01`;

CREATE TABLE `ksiazki` (
  `Id_ksiazki` int(11) NOT NULL,
  `Autor` varchar(64) NOT NULL,
  `Wydawnictwo` varchar(64) NOT NULL,
  `Rok_wydania` year(4) NOT NULL,
  `Liczba_stron` int(11) NOT NULL,
  `Id_wypozyczajacego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `ksiazki` (`Id_ksiazki`, `Autor`, `Wydawnictwo`, `Rok_wydania`, `Liczba_stron`, `Id_wypozyczajacego`) VALUES
(1, 'Mickiewicz Adam', 'qwerty', 2002, 86, 1),
(2, 'Twardoch Szczepan', 'asdfgh', 2012, 89, 2),
(3, 'Myśliwski Wiesław', 'zxcvbn', 2015, 114, 3);

CREATE TABLE `uczniowie` (
  `Id_ucznia` int(11) NOT NULL,
  `Nazwisko` varchar(64) NOT NULL,
  `Imie` varchar(64) NOT NULL,
  `Klasa` varchar(5) NOT NULL,
  `Telefon` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `uczniowie` (`Id_ucznia`, `Nazwisko`, `Imie`, `Klasa`, `Telefon`) VALUES
(1, 'Kowalski', 'Jan', '1td', 987369741),
(2, 'Nowak', 'Paweł', '5th', 957354897),
(3, 'Świderski', 'Konrad', '3tb', 963951456);

ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`Id_ksiazki`),
  ADD KEY `Id_wypozyczajacego` (`Id_wypozyczajacego`);

ALTER TABLE `uczniowie`
  ADD PRIMARY KEY (`Id_ucznia`);

ALTER TABLE `ksiazki`
  MODIFY `Id_ksiazki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `uczniowie`
  MODIFY `Id_ucznia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `ksiazki`
  ADD CONSTRAINT `ksiazki_ibfk_1` FOREIGN KEY (`Id_wypozyczajacego`) REFERENCES `uczniowie` (`Id_ucznia`);

USE `phpmyadmin`;

COMMIT;