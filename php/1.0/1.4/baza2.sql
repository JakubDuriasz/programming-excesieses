SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `z02` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `z02`;

CREATE TABLE `ksiazki` (
  `Id_ksiazki` int(11) NOT NULL,
  `Autor` varchar(64) NOT NULL,
  `Wydawnictwo` varchar(64) NOT NULL,
  `Rok_wydania` year(4) NOT NULL,
  `Liczba_stron` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `ksiazki` (`Id_ksiazki`, `Autor`, `Wydawnictwo`, `Rok_wydania`, `Liczba_stron`) VALUES
(1, 'Mickiewicz Adam', 'qwerty', 2002, 86),
(2, 'Twardoch Szczepan', 'asdfgh', 2012, 89),
(3, 'Myśliwski Wiesław', 'zxcvbn', 2015, 114);

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

CREATE TABLE `wypozyczenia` (
  `Id` int(11) NOT NULL,
  `Id_ucznia` int(11) NOT NULL,
  `Id_ksiazki` int(11) NOT NULL,
  `Data_wypozyczenia` timestamp NOT NULL DEFAULT current_timestamp(),
  `Data_zwrotu` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `wypozyczenia` (`Id`, `Id_ucznia`, `Id_ksiazki`, `Data_wypozyczenia`, `Data_zwrotu`) VALUES
(1, 1, 1, '2021-03-19 08:44:18', '2021-03-30 09:35:41'),
(2, 2, 2, '2021-03-19 08:45:47', '2021-03-22 09:37:22'),
(3, 3, 3, '2021-03-19 08:46:38', '2021-03-25 11:39:30'),
(4, 1, 2, '2021-03-19 08:47:35', '2021-04-01 05:39:01'),
(5, 1, 3, '2021-03-19 08:47:35', '2021-04-14 14:35:01'),
(6, 2, 1, '2021-03-19 08:48:22', '2021-03-25 11:47:54'),
(7, 2, 2, '2021-03-19 08:48:22', '2021-04-02 13:31:54'),
(8, 3, 1, '2021-03-19 08:48:40', '2021-04-14 09:43:29'),
(9, 2, 3, '2021-03-19 08:49:09', '2021-04-01 14:29:45'),
(10, 3, 2, '2021-03-19 08:49:09', '2021-03-31 10:40:45');

ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`Id_ksiazki`);

ALTER TABLE `uczniowie`
  ADD PRIMARY KEY (`Id_ucznia`);

ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_ucznia` (`Id_ucznia`),
  ADD KEY `Id_ksiazki` (`Id_ksiazki`);

ALTER TABLE `ksiazki`
  MODIFY `Id_ksiazki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `uczniowie`
  MODIFY `Id_ucznia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `wypozyczenia`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `wypozyczenia`
  ADD CONSTRAINT `wypozyczenia_ibfk_1` FOREIGN KEY (`Id_ucznia`) REFERENCES `uczniowie` (`Id_ucznia`),
  ADD CONSTRAINT `wypozyczenia_ibfk_2` FOREIGN KEY (`Id_ksiazki`) REFERENCES `ksiazki` (`Id_ksiazki`);

USE `phpmyadmin`;

COMMIT;