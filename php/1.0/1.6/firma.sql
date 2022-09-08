SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `z06` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `z06`;

CREATE TABLE `dostawcy` (
  `id_dostawcy` int(11) NOT NULL,
  `adres` varchar(55) NOT NULL,
  `telefon` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `magazyn` (
  `id_towaru` int(11) NOT NULL,
  `liczba_sztuk` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `towary` (
  `id_towaru` int(11) NOT NULL,
  `id_dostawcy` int(11) NOT NULL,
  `nazwa` varchar(64) NOT NULL,
  `cena` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

COMMIT;
