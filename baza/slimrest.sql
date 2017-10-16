-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Paź 2017, 15:59
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

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `poniedzialek` varchar(45) DEFAULT NULL,
  `salap` varchar(45) DEFAULT NULL,
  `wtorek` varchar(45) DEFAULT NULL,
  `salaw` varchar(45) DEFAULT NULL,
  `sroda` text,
  `salas` varchar(45) DEFAULT NULL,
  `czwartek` varchar(45) DEFAULT NULL,
  `salac` varchar(45) DEFAULT NULL,
  `piatek` varchar(45) DEFAULT NULL,
  `salapi` varchar(45) DEFAULT NULL,
  `classList_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `plan`
--

INSERT INTO `plan` (`id`, `poniedzialek`, `salap`, `wtorek`, `salaw`, `sroda`, `salas`, `czwartek`, `salac`, `piatek`, `salapi`, `classList_id`, `created_at`, `updated_at`) VALUES
(211, 'asdad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2017-10-08 12:33:42', '2017-10-08 12:33:32'),
(212, '123', 'sdfsf', 's', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2017-10-14 13:04:33', '2017-10-14 13:04:33'),
(213, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2017-10-14 13:19:19', '2017-10-14 13:19:19'),
(214, 'fgfg', NULL, NULL, 'w', NULL, NULL, NULL, NULL, NULL, NULL, 31, '2017-10-15 10:37:32', '2017-10-15 10:37:32'),
(215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2017-10-08 12:33:32', '2017-10-08 12:33:32'),
(216, NULL, NULL, 'sx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2017-10-08 12:34:32', '2017-10-08 12:34:32'),
(217, 'd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2017-10-15 10:37:36', '2017-10-15 10:37:36'),
(218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2017-10-08 12:33:32', '2017-10-08 12:33:32'),
(219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2017-10-08 12:33:32', '2017-10-08 12:33:32'),
(310, '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, '2017-10-15 10:48:13', '2017-10-15 10:48:13'),
(311, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, '2017-10-15 10:46:58', '2017-10-15 10:46:58'),
(312, NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, 42, '2017-10-15 10:47:00', '2017-10-15 10:47:00'),
(313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, '2017-10-15 06:53:40', '2017-10-15 06:53:40'),
(314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, '2017-10-15 06:53:40', '2017-10-15 06:53:40'),
(315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, '2017-10-15 06:53:40', '2017-10-15 06:53:40'),
(316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, '2017-10-15 06:53:40', '2017-10-15 06:53:40'),
(317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, '2017-10-15 06:53:40', '2017-10-15 06:53:40'),
(318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, '2017-10-15 06:53:40', '2017-10-15 06:53:40'),
(319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, '2017-10-15 06:53:44', '2017-10-15 06:53:44'),
(320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, '2017-10-15 06:53:44', '2017-10-15 06:53:44'),
(321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, '2017-10-15 06:53:44', '2017-10-15 06:53:44'),
(322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, '2017-10-15 06:53:44', '2017-10-15 06:53:44'),
(323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, '2017-10-15 06:53:44', '2017-10-15 06:53:44'),
(324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, '2017-10-15 06:53:44', '2017-10-15 06:53:44'),
(325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, '2017-10-15 06:53:44', '2017-10-15 06:53:44'),
(326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, '2017-10-15 06:53:44', '2017-10-15 06:53:44'),
(327, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, '2017-10-15 06:53:44', '2017-10-15 06:53:44'),
(337, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, '2017-10-15 13:10:07', '2017-10-15 13:10:07'),
(338, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, '2017-10-15 13:10:07', '2017-10-15 13:10:07'),
(339, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, '2017-10-15 13:10:07', '2017-10-15 13:10:07'),
(340, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, '2017-10-15 13:10:07', '2017-10-15 13:10:07'),
(341, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, '2017-10-15 13:10:07', '2017-10-15 13:10:07'),
(342, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, '2017-10-15 13:10:07', '2017-10-15 13:10:07'),
(343, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, '2017-10-15 13:10:07', '2017-10-15 13:10:07'),
(344, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, '2017-10-15 13:10:07', '2017-10-15 13:10:07'),
(345, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, '2017-10-15 13:10:07', '2017-10-15 13:10:07'),
(346, 'cxcv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, '2017-10-15 13:41:59', '2017-10-15 13:41:59'),
(347, 'xcvxv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, '2017-10-15 13:41:59', '2017-10-15 13:41:59'),
(348, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, '2017-10-15 13:10:14', '2017-10-15 13:10:14'),
(349, 'xcvxv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, '2017-10-15 13:41:59', '2017-10-15 13:41:59'),
(350, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, '2017-10-15 13:10:14', '2017-10-15 13:10:14'),
(351, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, '2017-10-15 13:10:14', '2017-10-15 13:10:14'),
(352, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, '2017-10-15 13:10:14', '2017-10-15 13:10:14'),
(353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, '2017-10-15 13:10:14', '2017-10-15 13:10:14'),
(354, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, '2017-10-15 13:10:14', '2017-10-15 13:10:14');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `type`
--

INSERT INTO `type` (`id`, `type`) VALUES
(1, 'Liceum'),
(2, 'Technikum'),
(3, 'Szkoła branżowa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `token`, `updated_at`, `created_at`) VALUES
(1, 'test', '$2y$10$mcYO7WoKLabl2kS4EYcH.eXYMnRhNIqnwilGiE5Qu0nggbXP6XXJ6', '123', '2017-10-03 11:50:49', '0000-00-00 00:00:00'),
(2, 'test2', '$2y$10$wls2OPYrw1F/xGSEHx8w4OSprMKNGCR.riFdK4gK3sFk5BK/GMQi2', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9leGFtcGxlLm9yZyIsImF1ZCI6Imh0dHA6XC9cL2V4YW1wbGUuY29tIiwiaWF0IjoxMzU2OTk5NTI0LCJuYmYiOjEzNTcwMDAwMDB9.KcNaeDRMPwkRHDHsuIh1L2B01VApiu3aTOkWplFjoYI', '2017-10-03 11:53:31', '2017-10-03 11:50:53'),
(4, 'test3', '$2y$10$/oLAIjrgrwY2wPgHOxQzh.1I1kx1x.p6yROyn3eEkC4HRa6HwyE1m', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOm51bGwsImF1ZCI6bnVsbCwiaWF0IjoxMzU2OTk5NTI0LCJuYmYiOjEzNTcwMDAwMDB9.y74Z2IeqozFStGXtrVomIq1zLZNybkGGCDodlPqMIzo', '2017-10-03 11:55:12', '2017-10-03 11:55:12');

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
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_plan_classList1_idx` (`classList_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `classlist`
--
ALTER TABLE `classlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT dla tabeli `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;
--
-- AUTO_INCREMENT dla tabeli `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `classlist`
--
ALTER TABLE `classlist`
  ADD CONSTRAINT `fk_classList_type` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `fk_plan_classList1` FOREIGN KEY (`classList_id`) REFERENCES `classlist` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
