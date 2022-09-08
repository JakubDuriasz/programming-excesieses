ALTER TABLE z02.ksiazki DROP FOREIGN KEY ksiazki_ibfk_1;
ALTER TABLE `ksiazki` DROP `Id_wypozyczajacego`;

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

ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_ucznia` (`Id_ucznia`),
  ADD KEY `Id_ksiazki` (`Id_ksiazki`);

ALTER TABLE `wypozyczenia`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
