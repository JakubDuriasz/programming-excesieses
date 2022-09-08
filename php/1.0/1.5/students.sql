SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `z05` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `z05`;

CREATE TABLE `studenci` (
  `id_studenta` int(7) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `imie` varchar(30) NOT NULL,
  `kraj` varchar(100) NOT NULL DEFAULT 'Polska'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `studenci` (`id_studenta`, `nazwisko`, `imie`, `kraj`) VALUES
(1, 'Kowalski', 'Jan', 'Polska');

ALTER TABLE `studenci`
  ADD PRIMARY KEY (`id_studenta`);

ALTER TABLE `studenci`
  MODIFY `id_studenta` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

USE `phpmyadmin`;

COMMIT;