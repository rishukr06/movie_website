-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2019 at 09:17 PM
-- Server version: 10.3.14-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id6233455_webnotes`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `malecast` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `femalecast` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `poster` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `malecast`, `femalecast`, `year`, `poster`, `rating`) VALUES
('1', 'The Avengers', 'Joss Whedon', 'Scarlett Johansson', '2012', 'http://www.movienewsletters.net/photos/130835R1.jpg', '8.1'),
('10', 'The Godfather Part II', ' Francis Ford Coppola', '', '1974', 'http://t2.gstatic.com/images?q=tbn:ANd9GcRZ6ToTQtumClvfIsMO46QiwvAm47_ghVBSZsjrJxjjPt38gyeg', '9'),
('11', 'Fight Club', 'David Fincher', '', '1999', 'http://t1.gstatic.com/images?q=tbn:ANd9GcQNgTszE1phYg2G7H4RrgeSEssOw-Kpnh0Si-sF5pVQQrBXJ_6e', '8.8'),
('12', 'Dangal', 'Nitesh Tiwari', '', '2016', 'http://t3.gstatic.com/images?q=tbn:ANd9GcQIXnFlBKGWT1ByyIu3qfxX6opQX6BmeeU_qsiE3X8rX9ZRr63r', '8.5'),
('13', 'Gladiator', ' Ridley Scott', '', '2000', 'http://www.gstatic.com/tv/thumb/v22vodart/24674/p24674_v_v8_ag.jpg', '8.5'),
('14', 'The Lion King', 'Rob Minkoff', '', '1994', 'http://t0.gstatic.com/images?q=tbn:ANd9GcSy2iMzH39dcj9KZeoulk18_LyeeoNIm5a26-2F80NY7rlVofiz', '8.5'),
('15', 'Kabir Singh', 'Sandeep Reddy Vanga', '', '2019', 'http://t1.gstatic.com/images?q=tbn:ANd9GcSSBjgn6nmJttwcTh0nmdTxJLyomVapLaColnlJZ9dXLjf-Y1tP', '7.9'),
('16', 'Article 15', ' Anubhav Sinha', '', '2019', 'http://t0.gstatic.com/images?q=tbn:ANd9GcQ2baH3qSxzfZo1Z45SHQSds_ABf0T-foz9-rnhuNm_ZfjVpgI4', '8.3'),
('17', 'Thor', 'Kenneth Branagh', '', '2011', 'http://www.movienewsletters.net/photos/113522R1.jpg', '7'),
('18', 'Thor: The Dark World', ' Alan Taylor', '', '2013', 'http://www.movienewsletters.net/photos/169119R1.jpg', '6.9'),
('19', 'Thor: Ragnarok', 'Taika Waititi', '', '2017', 'http://www.movienewsletters.net/photos/256906R1.jpg', '7.9'),
('2', 'Avengers: Age of Ultron', ' Joss Whedon', '', '2015', 'http://www.movienewsletters.net/photos/183976R1.jpg', '7.3'),
('20', 'Doctor Strange', ' Scott Derrickson', '', '2016', 'https://contentserver.com.au/assets/491602_p11214341_p_v8_ap.jpg', '7.5'),
('3', 'Avengers: Endgame', 'Anthony Russo', '', '2019', 'http://t2.gstatic.com/images?q=tbn:ANd9GcQA_-tL18_rj9zEcjN6n41NEaJm-kRNF9UeOtvksZ4z_OW6jRA9', '8.7'),
('4', 'Avengers: Infinity War', 'Anthony Russo', '', '2018', 'http://t0.gstatic.com/images?q=tbn:ANd9GcRmE2vwxy5KaCu7cRuYYdgNdQKddux5OYgGwsPo0kqP_xzLnsDV', '8.7'),
('5', 'Captain Marvel', ' Anna Boden', '', '2019', 'http://t1.gstatic.com/images?q=tbn:ANd9GcQ1bDkDLq-_bteASakhnC1XYwlkErFuqcof7KMhFpRwVhCTh1Vo', '7'),
('6', 'Dark Phoenix', 'Simon Kinberg', '', '2019', 'http://t2.gstatic.com/images?q=tbn:ANd9GcSx4JS_U1Xp6AKtrTXtE00H40SejV2VfJtLVd3Vy46BcPYa0PPy', '6.1'),
('7', 'The Shawshank ', 'Frank Darabont', '', '1994', 'http://t0.gstatic.com/images?q=tbn:ANd9GcSkmMH-bEDUS2TmK8amBqgIMgrfzN1_mImChPuMrunA1XjNTSKm', '9.3'),
('8', 'The Godfather', ' Francis Ford Coppola', '', '1972', 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', '9.2'),
('9', 'The Dark Knight', 'Christopher Nolan', '', '2008', 'https://contentserver.com.au/assets/598411_p173378_p_v8_au.jpg', '9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
