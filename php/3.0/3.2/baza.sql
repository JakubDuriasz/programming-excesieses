-- athor; jakub duriasz

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `z01b` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `z01b`;

CREATE TABLE `klienci` (
  `klient_id` int(11) NOT NULL,
  `nazwisko_imie` varchar(25) NOT NULL,
  `adres` varchar(25) NOT NULL,
  `miejscowosc` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `klienci` (`klient_id`, `nazwisko_imie`, `adres`, `miejscowosc`) VALUES
(1, 'Kowalski_Adam', 'Zjednoczenia 16', 'Zielona Góra'),
(2, 'Jakub_Bybło', 'Wojaska polskiego 23', 'Zielona góra'),
(3, 'Kamil_Bobrowski', 'Szkolna 6', 'Łężyca');


CREATE TABLE `ksiazki` (
  `isbn` char(17) NOT NULL,
  `autor` varchar(25) NOT NULL,
  `tytul` varchar(25) NOT NULL,
  `cena` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `ksiazki` (`isbn`, `autor`, `tytul`, `cena`) VALUES
('978-83-89405-00-5', 'Jan Kochanowski', 'Treny', '150.00'),
('978-83-900210-1-0', 'Julian Tuwim', 'Wiersze dla dzieci', '100.00'),
('978-86-89405-03-6', 'Mickiewicz Adam', 'Pan Tadeusz', '85.00');

CREATE TABLE `ksiazki_zamowione` (
  `zamowienie_id` int(11) NOT NULL,
  `isbn` char(17) NOT NULL,
  `ilosc` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `ksiazki_zamowione` (`zamowienie_id`, `isbn`, `ilosc`) VALUES
(1, '978-83-89405-00-5', 3),
(2, '978-83-900210-1-0', 2),
(3, '978-86-89405-03-6', 1);

CREATE TABLE `recenzje_ksiazek` (
  `isbn` char(17) NOT NULL,
  `recenzja` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `recenzje_ksiazek` (`isbn`, `recenzja`) VALUES
('978-83-89405-00-5', 'Przyjemna lektura w sam raz na chłodne wieczory'),
('978-83-900210-1-0', 'Polecam.'),
('978-86-89405-03-6', 'Naprawdę polecam.');

CREATE TABLE `zamowienia` (
  `zamowienie_id` int(11) NOT NULL,
  `klient_id` int(11) NOT NULL,
  `wartosc` decimal(11,2) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `zamowienia` (`zamowienie_id`, `klient_id`, `wartosc`, `data`) VALUES
(1, 1, '85.00', '2020-02-15'),
(2, 2, '450.00', '2021-12-09'),
(3, 3, '200.00', '2021-12-24');

ALTER TABLE `klienci`
  ADD PRIMARY KEY (`klient_id`);

ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`isbn`);

ALTER TABLE `ksiazki_zamowione`
  ADD PRIMARY KEY (`zamowienie_id`),
  ADD KEY `isbn` (`isbn`);

ALTER TABLE `recenzje_ksiazek`
  ADD PRIMARY KEY (`isbn`);

ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`zamowienie_id`),
  ADD KEY `kli` (`klient_id`);

ALTER TABLE `klienci`
  MODIFY `klient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `klienci`
  ADD CONSTRAINT `klienci_ibfk_1` FOREIGN KEY (`klient_id`) REFERENCES `zamowienia` (`klient_id`);

ALTER TABLE `ksiazki`
  ADD CONSTRAINT `ksiazki_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `ksiazki_zamowione` (`isbn`),
  ADD CONSTRAINT `ksiazki_ibfk_2` FOREIGN KEY (`isbn`) REFERENCES `recenzje_ksiazek` (`isbn`);

ALTER TABLE `zamowienia`
  ADD CONSTRAINT `zamowienia_ibfk_1` FOREIGN KEY (`klient_id`) REFERENCES `klienci` (`klient_id`),
  ADD CONSTRAINT `zamowienia_ibfk_2` FOREIGN KEY (`zamowienie_id`) REFERENCES `ksiazki_zamowione` (`zamowienie_id`);

USE `phpmyadmin`;

COMMIT;