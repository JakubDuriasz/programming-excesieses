-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Wrz 2021, 14:46
-- Wersja serwera: 10.1.36-MariaDB
-- Wersja PHP: 7.2.11
-- autor ; Jakub Duriasz

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `biblioteka` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;
USE `biblioteka`;

CREATE TABLE `autorzy` (
  `aid` int(11) NOT NULL,
  `imie` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

INSERT INTO `autorzy` (`aid`, `imie`, `nazwisko`) VALUES
(1, 'Andrzej', 'Nowak'),
(2, 'Leon', 'Atkinson'),
(3, 'Karol', 'Wierzchołowski'),
(4, 'Jakub', 'Duriasz');

CREATE TABLE `kategorie` (
  `kid` int(11) NOT NULL,
  `nazwa` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

INSERT INTO `kategorie` (`kid`, `nazwa`) VALUES
(1, 'PHP'),
(2, 'MySQL'),
(3, 'Bez kategorii');

CREATE TABLE `ksiazki` (
  `id` int(11) NOT NULL,
  `tytul` varchar(60) COLLATE utf8_polish_ci DEFAULT NULL,
  `autor` int(11) DEFAULT NULL,
  `kategoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

INSERT INTO `ksiazki` (`id`, `tytul`, `autor`, `kategoria`) VALUES
(1, 'PHP Samouczek', 3, 1),
(2, 'MySQL Samouczek', 3, 2),
(3, 'PHP Praktyczne rozwiazania', 1, 1),
(4, 'MYSQL Przewodnik programisty', 2, 2),
(5, 'Klasa 2Td', 4, 3);

ALTER TABLE `autorzy`
  ADD PRIMARY KEY (`aid`);

ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`kid`);

ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `autorzy`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `kategorie`
  MODIFY `kid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `ksiazki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

USE `phpmyadmin`;

COMMIT;