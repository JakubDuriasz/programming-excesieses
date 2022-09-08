-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Sty 2022, 19:18
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `cw03` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci;
USE `cw03`;

CREATE TABLE `ksiazki` (
  `Id_ksiazki` int(11) NOT NULL,
  `Autor` varchar(60) COLLATE utf8mb4_polish_ci NOT NULL,
  `Wydawnictwo` varchar(60) COLLATE utf8mb4_polish_ci NOT NULL,
  `Rok_wydania` year(4) NOT NULL,
  `Liczba_stron` int(11) NOT NULL,
  `Id_wypozyczajacego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

INSERT INTO `ksiazki` (`Id_ksiazki`, `Autor`, `Wydawnictwo`, `Rok_wydania`, `Liczba_stron`, `Id_wypozyczajacego`) VALUES
(1, 'Jakub Dariusz', 'Helion', 2022, 224, 1),
(2, 'Robert C. Martin', 'Helion', 2008, 424, 2),
(3, 'Dave Thomas', 'Helion', 2016, 216, 3),
(4, 'Andy Hunt', 'Helion', 2011, 328, 4),
(5, 'Joshua Bloch', 'Helion', 2018, 408, 5),
(6, 'Erich Gamma', 'Helion', 2014, 426, 6),
(7, 'Ralph Johnson', 'Helion', 2016, 456, 7);

CREATE TABLE `uczniowie` (
  `Id_ucznia` int(11) NOT NULL,
  `Nazwisko` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `Imie` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `Klasa` varchar(6) COLLATE utf8mb4_polish_ci NOT NULL,
  `Telefon` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

INSERT INTO `uczniowie` (`Id_ucznia`, `Nazwisko`, `Imie`, `Klasa`, `Telefon`) VALUES
(1, 'Duriasz', 'Jakub', '2td', 923123456),
(2, 'Bobrowski', 'Kamil', '2td', 924124567),
(3, 'Kisielewski', 'Mateusz', '2te', 987456345),
(4, 'Grabowski', 'Hubert', '3tg', 986754213),
(5, 'Hajnold', 'Jakub', '1tc', 967856423),
(6, 'Szatkowski', 'Tomasz', '3tf', 986723154),
(7, 'Smoliński', 'Hubert', '2te', 967852314);

ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`Id_ksiazki`),
  ADD KEY `Id_wypozyczajacego` (`Id_wypozyczajacego`);

ALTER TABLE `uczniowie`
  ADD PRIMARY KEY (`Id_ucznia`);

ALTER TABLE `ksiazki`
  MODIFY `Id_ksiazki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `uczniowie`
  MODIFY `Id_ucznia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `ksiazki`
  ADD CONSTRAINT `ksiazki_ibfk_1` FOREIGN KEY (`Id_wypozyczajacego`) REFERENCES `uczniowie` (`Id_ucznia`);

USE `phpmyadmin`;

COMMIT;