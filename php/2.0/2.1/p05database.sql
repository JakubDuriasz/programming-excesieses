SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `p05` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `p05`;

CREATE TABLE `ksiazki` (
  `id_ksiazki` int(10) UNSIGNED NOT NULL,
  `tytul` varchar(40) NOT NULL,
  `autor` varchar(40) NOT NULL,
  `rok_wydania` year(4) NOT NULL,
  `liczba_stron` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `ksiazki` (`id_ksiazki`, `tytul`, `autor`, `rok_wydania`, `liczba_stron`) VALUES
(1, 'InformatPHP samouczek', 'Marek Nowakowski', 2005, 800),
(2, 'MySQL Samouczek', 'Marek Nowakowski', 2012, 354),
(3, 'MySQL Przewodnik programisty', 'Imie1 Nzawisko1', 2015, 350),
(4, 'Informatyka5', 'Imie2 Nazwisko2', 2008, 450),
(5, 'PHP Praktyczne rozwiazania', 'Imie3 Nazwiko3', 2020, 750);

CREATE TABLE `uczniowie` (
  `id_ucznia` int(10) UNSIGNED NOT NULL,
  `imie` varchar(20) NOT NULL,
  `nazwisko` varchar(20) NOT NULL,
  `klasa` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `uczniowie` (`id_ucznia`, `imie`, `nazwisko`, `klasa`) VALUES
(1, 'Maria', 'Rokita', '2tb'),
(2, 'Jan', 'Nowak', '2tb'),
(3, 'Stefan', 'Nowakowski', '1tb'),
(4, 'Aleskander', 'Żelasko', '2td');

CREATE TABLE `wypozyczenia` (
  `id_ucznia` int(10) UNSIGNED NOT NULL,
  `id_ksiazki` int(10) UNSIGNED NOT NULL,
  `data_wypozyczenia` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`id_ksiazki`);

ALTER TABLE `uczniowie`
  ADD PRIMARY KEY (`id_ucznia`);

ALTER TABLE `wypozyczenia`
  ADD KEY `id_ucznia` (`id_ucznia`),
  ADD KEY `id_kisazki` (`id_ksiazki`);

ALTER TABLE `ksiazki`
  MODIFY `id_ksiazki` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `uczniowie`
  MODIFY `id_ucznia` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `wypozyczenia`
  ADD CONSTRAINT `wypozyczenia_ibfk_1` FOREIGN KEY (`id_ucznia`) REFERENCES `uczniowie` (`id_ucznia`),
  ADD CONSTRAINT `wypozyczenia_ibfk_2` FOREIGN KEY (`id_ksiazki`) REFERENCES `ksiazki` (`id_ksiazki`);

USE `phpmyadmin`;

COMMIT;