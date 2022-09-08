SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `autorzy` (
  `IDAutor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Imie` text,
  `Nazwisko` text,
  PRIMARY KEY (`IDAutor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

INSERT INTO `autorzy` (`IDAutor`, `Imie`, `Nazwisko`) VALUES
(1, 'Henryk', 'Sienkiewicz'),
(2, 'Adam', 'Mickiewicz');

CREATE TABLE IF NOT EXISTS `egzemplarze` (
  `IDEgzemplarz` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `KsiazkaID` int(10) unsigned NOT NULL,
  `DoWypozyczenia` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IDEgzemplarz`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

INSERT INTO `egzemplarze` (`IDEgzemplarz`, `KsiazkaID`, `DoWypozyczenia`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 0),
(4, 2, 1),
(5, 2, 1),
(6, 3, 1),
(7, 4, 0),
(8, 4, 1),
(9, 4, 1),
(10, 5, 1),
(11, 5, 0),
(12, 2, 1);

CREATE TABLE IF NOT EXISTS `ksiazki` (
  `IDKsiazki` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AutorID` int(10) unsigned NOT NULL,
  `Tytul` text,
  `Wydawnictwo` text,
  `RokWydania` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`IDKsiazki`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

INSERT INTO `ksiazki` (`IDKsiazki`, `AutorID`, `Tytul`, `Wydawnictwo`, `RokWydania`) VALUES
(1, 1, 'W pustyni i w puszczy', 'Znak', 2014),
(2, 1, 'Quo vadis', 'Greg', 2014),
(3, 2, 'Pan Tadeusz', 'Ossolineum', 2005),
(4, 2, 'Ballady i romanse', 'Zielona Sowa', 2010),
(5, 2, 'Dziady', 'Ossolineum', 2009);