-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Paź 2017, 16:00
-- Wersja serwera: 5.7.17-log
-- Wersja PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `slimrest`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `classlist`
--

CREATE TABLE `classlist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `educator` varchar(255) NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `classlist`
--

INSERT INTO `classlist` (`id`, `name`, `educator`, `type_id`, `created_at`, `updated_at`) VALUES
(31, 'test', 'test', 2, '2017-10-08 12:33:32', '2017-10-08 12:33:32'),
(42, 'asdadas', 'dasdasd', 2, '2017-10-15 06:53:40', '2017-10-15 06:53:40'),
(43, 'asdadass', 'dasdasds', 2, '2017-10-15 06:53:44', '2017-10-15 06:53:44'),
(45, 'sdfsdfs', 'dfsdfsf', 1, '2017-10-15 13:10:07', '2017-10-15 13:10:07'),
(46, 'sdfsdfs2', 'dfsdfsf2', 3, '2017-10-15 13:10:14', '2017-10-15 13:10:14');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `classlist`
--
ALTER TABLE `classlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_classList_type_idx` (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `classlist`
--
ALTER TABLE `classlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `classlist`
--
ALTER TABLE `classlist`
  ADD CONSTRAINT `fk_classList_type` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
