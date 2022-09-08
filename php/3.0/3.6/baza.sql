-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Paź 2021, 12:28
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.11
-- autor ; Jakub Duriasz

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `szkola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `szkola`;

CREATE TABLE `oceny` (
  `id_oceny` int(11) NOT NULL,
  `ocena` varchar(5) COLLATE utf8_polish_ci NOT NULL,
  `id_ucznia` int(11) NOT NULL,
  `id_przedmiotu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

INSERT INTO `oceny` (`id_oceny`, `ocena`, `id_ucznia`, `id_przedmiotu`) VALUES
(1, '3', 1, 1),
(2, '5', 1, 2),
(3, '1', 1, 3),
(4, '4', 1, 4),
(5, '3', 1, 5),
(6, '6', 2, 1),
(7, '5', 2, 2),
(8, '1', 2, 3),
(9, '3', 2, 4),
(10, '5', 2, 5),
(11, '4', 3, 1),
(12, '1', 3, 2),
(13, '1', 3, 3),
(14, '5', 3, 4),
(15, '4', 3, 5),
(16, '6', 4, 1),
(17, '4', 4, 2),
(18, '3', 4, 3),
(19, '5', 4, 4),
(20, '4', 4, 5),
(21, '5', 5, 1),
(22, '3', 5, 2),
(23, '4', 5, 3),
(24, '6', 5, 4),
(25, '2', 5, 5);

CREATE TABLE `przedmiot` (
  `id_przedmiotu` int(11) NOT NULL,
  `nazwa_przedmiotu` varchar(30) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

INSERT INTO `przedmiot` (`id_przedmiotu`, `nazwa_przedmiotu`) VALUES
(1, 'matematyka'),
(2, 'fizyka'),
(3, 'chemia'),
(4, 'geografia'),
(5, 'biologia');

CREATE TABLE `uczen` (
  `id_ucznia` int(11) NOT NULL,
  `imie` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `data_urodzenia` date NOT NULL DEFAULT current_timestamp(),
  `miejsce_urodzenia` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `plec` char(1) COLLATE utf8_polish_ci NOT NULL,
  `klasa` varchar(10) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

INSERT INTO `uczen` (`id_ucznia`, `imie`, `nazwisko`, `data_urodzenia`, `miejsce_urodzenia`, `plec`, `klasa`) VALUES
(1, 'Jan', 'Branicki', '2005-05-11', 'Bydgoszcz', 'm', '2Tb'),
(2, 'Ania', 'Nowa', '2005-09-18', 'Zielona góra', 'k', '2Ta'),
(3, 'Sebastian', 'Tkocz', '2005-11-16', 'Zielona góra', 'm', '2Tc'),
(4, 'Fabian', 'Babiak', '2006-06-14', 'Gdańsk', 'm', '1Ta'),
(5, 'Maria', 'Nowak', '2004-01-08', 'Nowy sącz', 'k', '3Tg');

ALTER TABLE `oceny`
  ADD PRIMARY KEY (`id_oceny`),
  ADD KEY `id_ucznia` (`id_ucznia`),
  ADD KEY `id_przedmiotu` (`id_przedmiotu`);

ALTER TABLE `przedmiot`
  ADD PRIMARY KEY (`id_przedmiotu`);

ALTER TABLE `uczen`
  ADD PRIMARY KEY (`id_ucznia`);

ALTER TABLE `oceny`
  MODIFY `id_oceny` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

ALTER TABLE `przedmiot`
  MODIFY `id_przedmiotu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `uczen`
  MODIFY `id_ucznia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `oceny`
  ADD CONSTRAINT `oceny_ibfk_1` FOREIGN KEY (`id_przedmiotu`) REFERENCES `przedmiot` (`id_przedmiotu`),
  ADD CONSTRAINT `oceny_ibfk_2` FOREIGN KEY (`id_ucznia`) REFERENCES `uczen` (`id_ucznia`);

USE `phpmyadmin`;

COMMIT;
