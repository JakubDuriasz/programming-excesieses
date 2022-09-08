-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Cze 2021, 13:32
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `meteo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `meteo`;

CREATE TABLE `lokalizacja` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nazwa` text DEFAULT NULL,
  `Adres` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `lokalizacja` (`id`, `Nazwa`, `Adres`) VALUES
(1, 'WAW1', 'Warszawa, Koszykowa 75'),
(2, 'SZC1', 'Szczecin, Przestrzenna 10'),
(3, 'KAT1', 'Katowice, Korfantego 105');

CREATE TABLE `pogoda` (
  `id` int(10) UNSIGNED NOT NULL,
  `temperatura` int(11) DEFAULT NULL,
  `Opad` int(10) UNSIGNED DEFAULT NULL,
  `Cisnienie` int(10) UNSIGNED DEFAULT NULL,
  `PredkoscWiatru` int(10) UNSIGNED DEFAULT NULL,
  `Wilgotnosc` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `pogoda` (`id`, `temperatura`, `Opad`, `Cisnienie`, `PredkoscWiatru`, `Wilgotnosc`) VALUES
(1, 23, 0, 1017, 4, 60),
(2, 21, 0, 1004, 40, 50),
(3, 18, 0, 990, 3, 55),
(4, 23, 0, 1000, 30, 30),
(5, 19, 0, 1000, 30, 30);

CREATE TABLE `prognoza` (
  `id` int(10) UNSIGNED NOT NULL,
  `Lokalizacja_id` int(10) UNSIGNED NOT NULL,
  `Pogoda_id` int(10) UNSIGNED NOT NULL,
  `dataProg` date DEFAULT NULL,
  `godzina` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prognoza` (`id`, `Lokalizacja_id`, `Pogoda_id`, `dataProg`, `godzina`) VALUES
(1, 1, 1, '2015-07-01', '17:00:00'),
(2, 2, 2, '2015-07-01', '17:00:00'),
(3, 1, 3, '2015-07-02', '17:00:00'),
(4, 2, 4, '2015-07-02', '17:00:00'),
(5, 1, 5, '2015-07-03', '17:00:00');

ALTER TABLE `lokalizacja`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `pogoda`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `prognoza`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `lokalizacja`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `pogoda`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `prognoza`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

USE `phpmyadmin`;

COMMIT;