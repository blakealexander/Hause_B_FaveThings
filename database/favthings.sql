-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 31, 2019 at 02:47 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `favthings`
--

-- --------------------------------------------------------

--
-- Table structure for table `hero`
--

CREATE TABLE `hero` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `bio` text,
  `when` text,
  `why` text,
  `image` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hero`
--

INSERT INTO `hero` (`id`, `name`, `bio`, `when`, `why`, `image`) VALUES
(1, 'Photography', 'Photography is the art or practice of taking and processing photographs. The best part of photography is being able to capture picture of a particular moment or scene and having the ability to enjoy that moment over and over again.', 'I began an interest in photography when I took a course on the subject in my second year of high school.', 'I enjoy photography simply because of the endless creative freedom you have. There are all sorts of types of photography and each and every type has its own unique beauty.', 'photo.jpg'),
(2, 'Swimming', 'Swimming is probably my all time favourite past time. Whether it be the ocean, a lake, a river or a pool, swimming is enjoyable plus its great exercise.', 'I started swimming when I was really young. The house I grew up in has a pool which I put to use everyday I could. At the age of thirteen I completed all thirteen swimming levels and started my bronze medallion training. Upon . completion of my bronze medallion I completed my bronze cross at the age of fourteen. By this time I had to wait two years until I was sixteen in order to complete my NLS and become a life guard. Unfortunately two years had passed and I had lost interest in wanting to become a life guard.', 'I think I love swimming mainly because i started at young age and did it consistently. The love for swimming is probably something that runs in my family as my dad was on the Ontario swim team. I think swimming is an important skill to have and is something everyone can enjoy once they know how to.', 'swim.jpg'),
(3, 'Travel', 'Travel is something that I love. It has taught me a lot about the world outside of where I live. It\'s molded me to who I am today and possibly where I want to be in the future.', 'The first time I travelled outside of the country I was two years old and my family and I went to visit my grandparents in Fort Lauderdale Florida.\r\nEver since then I can remember all of the family vacations and traveling that we have been fortunate enough to do almost every year.', 'I think traveling is important for everyone to experience once in a life time. I think it offers people a view of the world that they have never seen before. Whether your travelling to a third world country or too some tourist hotspot, most of the time you get to experience other cultures and societies outside of your own. It\'s good to know how other people live, it made me a much more humble person and feeling grateful for where I live.', 'travel.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hero`
--
ALTER TABLE `hero`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
