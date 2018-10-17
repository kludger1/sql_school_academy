-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2018 at 04:56 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses_professors_info`
--

CREATE TABLE `courses_professors_info` (
  `course_professor_info_id` int(11) NOT NULL,
  `course_code` char(7) NOT NULL,
  `name_of_course` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `start_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses_professors_info`
--

INSERT INTO `courses_professors_info` (`course_professor_info_id`, `course_code`, `name_of_course`, `description`, `faculty_id`, `start_date`) VALUES
(1, ' HUM101', 'nam', 'Dolores omnis omnis assumenda eos ut sint. Consectetur incidunt magni eum ipsum. Modi voluptas laboriosam est quisquam.', 3, '2018-01-28'),
(2, ' MED101', 'adipisci', 'Ea blanditiis quia nostrum eos delectus. Hic illo repellendus iste occaecati repudiandae. Consequatur magni architecto sapiente consectetur non facere cum nulla. Voluptatem et aut non.', 5, '2018-01-28'),
(3, ' MUS203', 'quia', 'Aut ullam voluptas mollitia sit consequuntur molestias. Sapiente asperiores delectus qui architecto. Aut maxime ab explicabo odio. Ut delectus delectus ea est eveniet enim rem.', 6, '2018-08-20'),
(4, ' HUM202', 'dicta', 'Ut similique quia culpa. Et quidem similique dolores dolor eum porro atque. Voluptatibus eos nihil voluptas sapiente a laboriosam. Commodi ullam delectus corrupti sunt.', 3, '2018-08-20'),
(5, ' JOU201', 'enim', 'Officia reprehenderit aut itaque consequatur. Consectetur perferendis sit vitae et fugit. Ratione praesentium sunt molestias.', 1, '2018-01-28'),
(6, ' SCI202', 'laudantium', 'Pariatur dolorem aut voluptas consequatur. Et rerum autem perferendis delectus aut enim aliquam commodi. Sequi maiores delectus veritatis omnis eum.', 4, '2018-08-20'),
(7, 'SCI1011', 'molestiae', 'Consequatur molestias ut quaerat rerum earum. Aut iste deleniti possimus asperiores iste nostrum et. Sit cumque error rerum. Voluptas eveniet tempora libero non vel.', 4, '2018-01-28'),
(8, ' MUS104', 'sunt', 'Sunt distinctio ut eos esse ullam accusamus. Occaecati et explicabo aperiam deserunt sed nostrum omnis.', 6, '2018-01-28'),
(9, ' MED202', 'enim', 'Minus qui et illo quidem. Velit eaque reprehenderit incidunt possimus non dolorem. Commodi et autem sed assumenda ea quo vel id. Est sit modi eos.', 5, '2018-08-20'),
(10, ' HIS262', 'ipsam', 'Molestias voluptatum ut ipsa fugiat. Voluptatem nam et molestiae debitis sunt. Id perferendis dolorum dolor praesentium.', 2, '2018-08-20'),
(11, ' HIS152', 'non', 'Velit omnis reiciendis et necessitatibus. Consectetur facere tenetur rerum expedita architecto. Mollitia ab voluptas quia quam sint at. Velit quidem nulla velit voluptatibus aut.', 2, '2018-01-28'),
(12, ' JOU101', 'est', 'Hic quia quo debitis iste quidem error. Ut impedit expedita tenetur laborum voluptas. Aut vel vitae alias aut.', 1, '2018-01-28');

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `faculty_id` int(11) NOT NULL,
  `title` varchar(3) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `department` enum('SCIENCE','HUMANITIES','MUSIC','JOURNALISM','HISTORY','MEDICINE') NOT NULL,
  `tenure` enum('yes','no') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`faculty_id`, `title`, `first_name`, `last_name`, `department`, `tenure`) VALUES
(1, 'Pro', 'David', 'Olson', 'JOURNALISM', 'yes'),
(2, 'Mis', 'Jacynthe', 'Baumbach', 'HISTORY', 'no'),
(3, 'Mrs', 'Faye', 'Senger', 'HUMANITIES', 'yes'),
(4, 'Mr', 'Candido', 'Moen', 'SCIENCE', 'no'),
(5, 'Dr.', 'Catherine', 'Harber', 'MEDICINE', 'yes'),
(6, 'Mrs', 'Dolores', 'Smitham', 'MUSIC', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `date_of_birth` date NOT NULL,
  `student_status` enum('ENROLLED','LEAVE','GRADUATED','DROP') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `date_of_birth`, `student_status`) VALUES
(1, 'Elsie', 'Ruecker', '1998-07-13', 'ENROLLED'),
(2, 'Jillian', 'Rowe', '2000-10-24', 'GRADUATED'),
(3, 'Vada', 'Gutkowski', '1978-02-13', 'ENROLLED'),
(4, 'Jennie', 'Beahan', '2006-07-20', 'LEAVE'),
(5, 'Adrian', 'Olson', '2004-10-08', 'ENROLLED'),
(6, 'Drake', 'Herman', '1997-08-23', 'DROP'),
(7, 'Clement', 'Dickinson', '1992-11-29', 'LEAVE'),
(8, 'Ardella', 'O\'Kon', '2016-09-09', 'ENROLLED'),
(9, 'Benedict', 'Thiel', '1994-08-12', 'GRADUATED'),
(10, 'Reid', 'Jast', '1980-09-26', 'DROP'),
(11, 'Zena', 'Lynch', '1992-09-21', 'GRADUATED'),
(12, 'Jaquan', 'Douglas', '2007-06-15', 'ENROLLED'),
(13, 'Neoma', 'Renner', '1985-03-28', 'GRADUATED'),
(14, 'Eulalia', 'McCullough', '1985-11-16', 'ENROLLED'),
(15, 'Flavio', 'Becker', '1973-07-27', 'GRADUATED'),
(16, 'Hillard', 'Kuhic', '1999-05-30', 'ENROLLED'),
(17, 'Ryley', 'Lang', '1979-02-06', 'ENROLLED'),
(18, 'Meagan', 'Gerlach', '1999-09-25', 'GRADUATED'),
(19, 'Camron', 'Gerlach', '1984-01-30', 'LEAVE'),
(20, 'Leonardo', 'Conn', '2011-05-24', 'ENROLLED'),
(21, 'Marlin', 'Halvorson', '1980-01-19', 'GRADUATED'),
(22, 'Caleigh', 'Stark', '2004-05-23', 'ENROLLED'),
(23, 'Oceane', 'Spencer', '1998-07-19', 'DROP'),
(24, 'Hans', 'Kuphal', '1975-06-16', 'ENROLLED'),
(25, 'Vernie', 'Heidenreich', '1986-12-05', 'GRADUATED'),
(26, 'Nakia', 'Hudson', '2015-11-04', 'ENROLLED'),
(27, 'Eve', 'Stoltenberg', '1970-06-17', 'GRADUATED'),
(28, 'Raphael', 'Bode', '1960-11-03', 'GRADUATED'),
(29, 'Maryjane', 'Tremblay', '1981-04-29', 'GRADUATED'),
(30, 'Myrtie', 'Lehner', '1971-03-19', 'GRADUATED'),
(31, 'Stephania', 'Schoen', '2003-10-26', 'GRADUATED'),
(32, 'Sydni', 'Dietrich', '1975-05-29', 'GRADUATED'),
(33, 'Ena', 'Harber', '1984-08-14', 'ENROLLED'),
(34, 'Jeremie', 'Glover', '1989-02-07', 'DROP'),
(35, 'Edwina', 'Spinka', '1972-05-20', 'ENROLLED'),
(36, 'Sharon', 'Ziemann', '1983-11-01', 'ENROLLED'),
(37, 'Ena', 'Runolfsson', '1998-06-01', 'ENROLLED'),
(38, 'Aditya', 'Trantow', '2011-05-05', 'DROP'),
(39, 'Alex', 'Ryan', '2011-01-22', 'LEAVE'),
(40, 'Claire', 'Gislason', '2002-09-18', 'GRADUATED'),
(41, 'Bernard', 'Green', '1993-07-05', 'LEAVE'),
(42, 'Oda', 'VonRueden', '1985-02-14', 'DROP'),
(43, 'Moses', 'Skiles', '1989-11-24', 'ENROLLED'),
(44, 'Karina', 'Predovic', '1987-05-14', 'GRADUATED'),
(45, 'Favian', 'VonRueden', '2009-10-07', 'LEAVE'),
(46, 'Antone', 'Hettinger', '1976-01-18', 'ENROLLED'),
(47, 'April', 'Lowe', '1978-09-13', 'ENROLLED'),
(48, 'Maya', 'Quitzon', '1981-06-14', 'GRADUATED'),
(49, 'Sydni', 'Satterfield', '1988-09-13', 'LEAVE'),
(50, 'Forest', 'Fahey', '2002-02-05', 'ENROLLED'),
(51, 'Maymie', 'Lindgren', '2002-07-08', 'ENROLLED'),
(52, 'Aimee', 'Brekke', '2009-01-06', 'ENROLLED'),
(53, 'Nicola', 'Casper', '1977-02-23', 'DROP'),
(54, 'Robbie', 'Aufderhar', '2015-03-01', 'GRADUATED'),
(55, 'Malinda', 'Spencer', '1995-09-05', 'ENROLLED'),
(56, 'Alvah', 'Torphy', '2010-08-23', 'GRADUATED'),
(57, 'Yazmin', 'Volkman', '2008-08-23', 'ENROLLED'),
(58, 'Trystan', 'Bode', '1982-01-01', 'GRADUATED'),
(59, 'River', 'Hoeger', '1972-03-13', 'LEAVE'),
(60, 'Patricia', 'Kiehn', '1995-07-23', 'GRADUATED'),
(61, 'Cornell', 'Carter', '1991-01-06', 'LEAVE'),
(62, 'Emmanuel', 'Corkery', '1973-09-17', 'ENROLLED'),
(63, 'Bartholome', 'Langosh', '1996-01-19', 'LEAVE'),
(64, 'Moshe', 'Hegmann', '1987-09-24', 'ENROLLED'),
(65, 'Sylvester', 'Johnston', '2006-06-02', 'ENROLLED'),
(66, 'Davonte', 'Fritsch', '1970-05-23', 'ENROLLED'),
(67, 'Anna', 'Lang', '2000-07-22', 'GRADUATED'),
(68, 'Dalton', 'Baumbach', '1991-01-20', 'ENROLLED'),
(69, 'Glen', 'Strosin', '1977-06-20', 'LEAVE'),
(70, 'Emily', 'Pollich', '2013-10-02', 'ENROLLED'),
(71, 'Jadyn', 'Dicki', '1982-10-14', 'ENROLLED'),
(72, 'Elouise', 'Romaguera', '2014-08-08', 'GRADUATED'),
(73, 'Maegan', 'Mayert', '2014-07-29', 'ENROLLED'),
(74, 'Lavern', 'Hermann', '1980-07-25', 'GRADUATED'),
(75, 'Paige', 'Armstrong', '2016-05-12', 'GRADUATED'),
(76, 'Anne', 'Becker', '1989-09-29', 'ENROLLED'),
(77, 'Alva', 'Waelchi', '2016-07-06', 'GRADUATED'),
(78, 'Clemens', 'Boehm', '1979-04-19', 'ENROLLED'),
(79, 'Cielo', 'Wyman', '1992-05-25', 'ENROLLED'),
(80, 'Emerson', 'Orn', '2015-01-22', 'ENROLLED'),
(81, 'Alexandro', 'Fahey', '1972-03-29', 'ENROLLED'),
(82, 'Beth', 'Kutch', '1970-08-29', 'DROP'),
(83, 'Carlotta', 'Renner', '1980-10-05', 'ENROLLED'),
(84, 'Benton', 'Boyer', '1982-08-29', 'LEAVE'),
(85, 'Alysson', 'Conroy', '1981-04-02', 'LEAVE'),
(86, 'Guadalupe', 'Miller', '2008-10-29', 'DROP'),
(87, 'Tatum', 'Langworth', '2000-09-04', 'GRADUATED'),
(88, 'Mara', 'Beahan', '1972-09-23', 'LEAVE'),
(89, 'Rowena', 'Reichert', '1976-12-12', 'ENROLLED'),
(90, 'Kyler', 'Kerluke', '1989-11-07', 'DROP'),
(91, 'Rene', 'Jacobi', '2002-11-09', 'LEAVE'),
(92, 'Amalia', 'Sawayn', '2015-12-26', 'GRADUATED'),
(93, 'Coleman', 'Stanton', '2016-02-21', 'ENROLLED'),
(94, 'Kendall', 'Reinger', '2003-04-02', 'GRADUATED'),
(95, 'Elva', 'Wolff', '1972-03-27', 'GRADUATED'),
(96, 'Cesar', 'Kuphal', '2016-06-03', 'ENROLLED'),
(97, 'Freda', 'Abbott', '1972-01-14', 'LEAVE'),
(98, 'Price', 'Will', '2006-01-10', 'ENROLLED'),
(99, 'Stefanie', 'Weimann', '2001-06-19', 'DROP'),
(100, 'Ila', 'Satterfield', '2000-06-29', 'LEAVE'),
(101, 'Connor', 'Mayer', '1978-12-14', 'GRADUATED'),
(102, 'Jonathon', 'Baumbach', '1976-10-20', 'DROP'),
(103, 'Marisol', 'Hackett', '1985-08-05', 'GRADUATED'),
(104, 'Sarah', 'Terry', '1987-11-22', 'ENROLLED'),
(105, 'Dedric', 'Armstrong', '2001-01-11', 'GRADUATED'),
(106, 'Alexys', 'Kozey', '1978-01-17', 'ENROLLED'),
(107, 'Rachelle', 'Nolan', '1980-10-21', 'DROP'),
(108, 'Monserrate', 'Metz', '1990-09-01', 'LEAVE'),
(109, 'Lora', 'Kuhic', '2003-03-23', 'LEAVE'),
(110, 'Delta', 'Labadie', '1984-01-04', 'LEAVE'),
(111, 'Rasheed', 'Kilback', '2017-08-14', 'DROP'),
(112, 'Nicholaus', 'Senger', '1994-09-14', 'DROP'),
(113, 'Celia', 'Cartwright', '1990-09-11', 'GRADUATED'),
(114, 'Antwan', 'Stehr', '1970-07-13', 'LEAVE'),
(115, 'Ford', 'Rohan', '2015-07-22', 'GRADUATED'),
(116, 'Cydney', 'Ratke', '1990-03-17', 'ENROLLED'),
(117, 'Ora', 'Mertz', '1981-12-23', 'LEAVE'),
(118, 'Lottie', 'Durgan', '2006-08-10', 'ENROLLED'),
(119, 'Devon', 'Abernathy', '1986-09-29', 'DROP'),
(120, 'Loraine', 'Hessel', '2002-07-12', 'GRADUATED');

-- --------------------------------------------------------

--
-- Table structure for table `student_course_info`
--

CREATE TABLE `student_course_info` (
  `student_id` int(11) NOT NULL,
  `course_code` char(7) NOT NULL,
  `registration_date` date NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_course_info`
--

INSERT INTO `student_course_info` (`student_id`, `course_code`, `registration_date`, `grade`) VALUES
(1, ' MED101', '2007-08-07', 6),
(3, ' JOU101', '1990-10-20', 14),
(4, ' MED101', '1978-03-04', 65),
(5, ' HIS152', '2011-06-22', 89),
(6, ' JOU101', '2011-04-12', 87),
(7, ' HIS152', '1998-04-18', 13),
(8, 'SCI1011', '1979-05-03', 23),
(9, 'SCI1011', '1992-06-06', 36),
(10, ' HUM202', '2006-08-04', 69),
(11, ' HUM202', '1993-11-21', 32),
(12, ' HIS152', '1973-04-27', 55),
(13, ' MUS104', '2000-11-30', 12),
(14, ' HUM202', '2009-10-25', 68),
(15, ' HUM101', '1986-11-09', 71),
(16, ' MUS203', '2005-12-05', 25),
(17, ' HUM101', '1996-06-11', 15),
(18, ' HIS152', '1976-06-28', 1),
(19, ' MUS104', '1976-04-09', 100),
(20, ' MED202', '1995-10-17', 87),
(21, ' JOU201', '2009-10-30', 53),
(22, ' HUM202', '2002-06-18', 62),
(23, ' SCI202', '1983-10-02', 36),
(24, ' MUS203', '2012-07-13', 74),
(25, ' HIS262', '1973-09-04', 68),
(26, ' MUS104', '1991-01-30', 45),
(27, ' HUM101', '1990-08-08', 80),
(28, ' JOU201', '1987-07-27', 89),
(29, ' HUM101', '1970-03-06', 1),
(30, ' MED202', '1997-11-27', 12),
(31, ' HUM101', '2000-07-13', 20),
(32, ' JOU201', '1982-03-18', 87),
(33, ' MUS203', '2006-03-10', 20),
(34, ' JOU101', '1991-04-09', 63),
(35, ' MUS203', '2017-01-20', 23),
(36, ' MED101', '1993-10-26', 53),
(37, ' HIS152', '1994-11-13', 97),
(38, 'SCI1011', '1979-08-18', 37),
(39, ' HIS262', '1981-09-06', 88),
(40, ' HUM101', '2003-07-29', 49),
(41, ' JOU101', '2015-04-01', 20),
(42, ' JOU201', '1972-04-09', 85),
(43, ' HIS152', '1973-03-11', 93),
(44, ' HIS152', '1997-06-03', 87),
(45, 'SCI1011', '2017-07-02', 34),
(46, ' MUS104', '2016-03-25', 93),
(47, ' HIS262', '1983-01-10', 71),
(48, ' HIS262', '1998-01-17', 96),
(49, ' HIS152', '2010-07-05', 3),
(50, ' MED101', '1986-10-27', 85),
(51, ' MED101', '1974-04-11', 98),
(52, ' SCI202', '1974-02-24', 54),
(53, ' JOU201', '1987-10-11', 19),
(54, 'SCI1011', '1978-12-28', 92),
(55, ' MED101', '1983-11-01', 30),
(56, ' HIS152', '1992-05-15', 3),
(57, ' HIS262', '1976-03-02', 25),
(58, ' MED202', '1990-09-23', 13),
(59, ' HIS152', '1981-01-03', 61),
(60, ' JOU201', '2017-09-11', 5),
(61, 'SCI1011', '2014-08-03', 25),
(62, ' HIS152', '1982-09-07', 99),
(63, 'SCI1011', '1981-12-05', 41),
(64, ' JOU101', '1974-10-24', 95),
(65, ' HUM202', '1988-03-26', 62),
(66, ' MED202', '2014-12-04', 45),
(67, ' MED202', '1987-12-17', 79),
(68, ' MED202', '2005-06-18', 45),
(69, ' HUM202', '2009-12-09', 26),
(70, ' JOU201', '2016-11-15', 65),
(71, ' HUM101', '1992-12-07', 82),
(72, ' MUS203', '1986-06-03', 38),
(73, ' SCI202', '1988-08-01', 78),
(74, ' HUM101', '1989-01-16', 16),
(75, ' MED202', '2017-05-24', 42),
(76, ' SCI202', '1976-06-03', 43),
(77, ' MUS203', '1972-05-01', 93),
(78, ' MUS104', '1996-12-14', 43),
(79, ' MUS203', '1975-04-16', 44),
(80, 'SCI1011', '2005-11-20', 68),
(81, ' JOU201', '2002-05-13', 57),
(82, ' HUM101', '1977-05-11', 51),
(83, ' HIS262', '1996-09-19', 51),
(84, ' MUS203', '1992-11-12', 0),
(85, ' HIS152', '2008-07-13', 58),
(86, ' JOU201', '1998-08-26', 80),
(87, ' MED202', '1998-08-14', 62),
(88, ' HUM202', '2004-08-09', 53),
(89, ' JOU201', '2008-12-20', 5),
(90, ' JOU101', '1990-05-10', 84),
(91, ' HUM101', '2008-08-14', 14),
(92, ' JOU101', '1970-11-29', 95),
(93, ' HIS262', '1987-07-17', 26),
(94, ' HIS152', '1994-07-17', 30),
(95, 'SCI1011', '1975-03-02', 94),
(96, ' MED101', '1989-03-29', 60),
(97, ' MED101', '1976-03-06', 9),
(98, ' JOU201', '1981-04-11', 78),
(99, ' HIS152', '2005-03-14', 15),
(100, ' JOU201', '2015-05-20', 36),
(101, ' MUS104', '1974-09-15', 100),
(102, ' MED202', '1979-07-26', 7),
(103, 'SCI1011', '2000-11-06', 44),
(104, ' HIS152', '1998-08-28', 72),
(105, ' SCI202', '1985-05-26', 47),
(106, ' MUS203', '2007-09-07', 76),
(107, ' JOU201', '1999-05-08', 57),
(108, ' HUM101', '2016-10-17', 7),
(109, ' MED101', '1996-06-17', 61),
(110, ' HIS152', '2005-10-04', 54),
(111, ' HUM202', '1974-09-28', 82),
(112, ' HIS262', '1972-05-23', 90),
(113, ' MED101', '2007-08-19', 83),
(114, ' HUM202', '1987-01-10', 12),
(115, ' HUM202', '1984-08-21', 41),
(116, ' MUS104', '1979-03-16', 5),
(117, ' MUS104', '1984-08-23', 89),
(118, ' JOU201', '2012-04-18', 32),
(119, ' HIS262', '1994-05-25', 58),
(120, ' MUS104', '1985-12-02', 47),
(1, ' MED101', '2015-03-08', 5),
(2, ' HIS262', '1989-10-22', 17),
(3, ' MED101', '1995-06-17', 13),
(4, ' MUS203', '2000-06-30', 90),
(5, ' HIS262', '1983-06-17', 33),
(6, ' JOU101', '1991-01-07', 52),
(7, 'SCI1011', '1997-04-24', 61),
(8, ' MUS203', '1974-11-30', 22),
(9, ' HIS262', '1983-06-16', 47),
(10, 'SCI1011', '1998-08-12', 78),
(11, ' SCI202', '1994-01-21', 79),
(12, ' HIS262', '1978-01-30', 99),
(13, 'SCI1011', '1977-05-15', 73),
(14, ' HUM101', '2005-06-07', 70),
(15, ' JOU101', '1997-12-15', 73),
(16, ' SCI202', '1974-10-10', 63),
(17, ' MED202', '1986-06-05', 17),
(18, ' HIS152', '1994-09-25', 12),
(19, ' MED101', '1997-08-20', 16),
(20, 'SCI1011', '2005-07-08', 29),
(21, ' HUM101', '1981-01-30', 50),
(22, ' MED202', '1993-08-27', 29),
(23, ' MUS203', '1999-07-06', 43),
(24, ' MUS104', '2001-11-28', 71),
(25, 'SCI1011', '1974-12-09', 83),
(26, ' MED101', '2014-07-28', 53),
(27, ' HIS152', '2016-06-15', 53),
(28, ' MUS104', '1972-03-02', 80),
(29, ' JOU201', '1995-06-01', 68),
(30, ' JOU201', '1972-04-12', 100),
(31, ' HUM202', '1986-01-21', 71),
(32, ' HUM202', '1971-11-06', 0),
(33, ' MUS203', '1996-04-08', 60),
(34, ' MUS104', '1971-01-21', 56),
(35, ' HUM101', '2012-11-26', 17),
(36, ' JOU201', '2016-01-18', 5),
(37, ' HUM202', '2015-04-20', 92),
(38, ' SCI202', '1975-05-13', 66),
(39, ' JOU101', '2007-10-16', 10),
(40, ' JOU201', '2017-08-23', 7),
(41, ' JOU201', '1998-04-17', 79),
(42, ' SCI202', '2005-06-06', 6),
(43, ' JOU101', '1971-03-02', 17),
(44, ' MUS104', '1975-10-28', 70),
(45, ' MUS203', '1985-03-24', 93),
(46, ' JOU201', '2000-05-27', 3),
(47, ' JOU201', '1975-08-07', 32),
(48, 'SCI1011', '2007-10-31', 53),
(49, ' JOU101', '2011-12-25', 45),
(50, 'SCI1011', '2013-01-09', 9),
(51, ' HUM202', '2007-01-27', 59),
(52, ' JOU101', '2003-09-24', 35),
(53, ' SCI202', '1982-09-25', 10),
(54, 'SCI1011', '1988-04-11', 92),
(55, ' JOU101', '2015-11-06', 62),
(56, ' HIS152', '1987-05-30', 68),
(57, ' HUM202', '1972-07-02', 4),
(58, ' SCI202', '2001-07-05', 57),
(59, ' HIS152', '2001-08-15', 87),
(60, ' HIS152', '1971-01-14', 97),
(61, ' HUM202', '2007-01-30', 84),
(62, 'SCI1011', '2015-07-10', 76),
(63, ' MUS203', '1987-05-26', 41),
(64, 'SCI1011', '1993-10-14', 23),
(65, ' MED202', '1987-05-17', 56),
(66, ' MED101', '2016-04-03', 12),
(67, ' SCI202', '1993-12-25', 87),
(68, ' MED101', '1994-10-12', 46),
(69, ' MED202', '1984-11-10', 80),
(70, ' MED101', '1992-01-26', 79),
(71, ' HUM101', '1996-02-22', 4),
(72, ' MUS104', '2000-04-28', 37),
(73, ' HUM101', '2007-03-21', 58),
(74, ' JOU101', '2017-10-11', 31),
(75, ' HUM202', '1982-11-18', 91),
(76, ' HUM202', '2001-09-03', 0),
(77, ' SCI202', '2012-01-11', 87),
(78, ' HIS152', '1970-11-14', 82),
(79, ' HUM202', '1980-03-20', 81),
(80, ' HIS262', '1999-03-31', 100),
(81, ' SCI202', '1998-02-20', 2),
(82, ' HIS152', '1981-12-12', 18),
(83, ' MED202', '2014-07-02', 81),
(84, ' MUS203', '1976-10-03', 27),
(85, ' JOU201', '1981-08-23', 83),
(86, ' MUS203', '1990-12-02', 53),
(87, ' HUM202', '1998-07-03', 36),
(88, 'SCI1011', '1977-04-02', 72),
(89, ' JOU201', '2008-01-23', 25),
(90, 'SCI1011', '1994-03-31', 95),
(91, ' MUS203', '1980-07-07', 77),
(92, ' SCI202', '1977-09-09', 70),
(93, ' MUS104', '1993-08-31', 55),
(94, ' JOU101', '2002-11-06', 59),
(95, ' SCI202', '2018-02-20', 71),
(96, ' HUM101', '1977-10-03', 77),
(97, ' JOU101', '2013-06-04', 55),
(98, ' MED202', '2003-07-16', 42),
(99, ' SCI202', '2013-09-16', 91),
(100, ' JOU201', '1975-04-28', 0),
(101, ' HUM101', '1998-11-15', 100),
(102, 'SCI1011', '2002-06-21', 79),
(103, ' HIS262', '1974-11-09', 42),
(104, ' JOU201', '2005-04-24', 4),
(105, ' HUM101', '1995-03-16', 9),
(106, ' MUS203', '1988-07-20', 32),
(107, ' JOU201', '2000-12-17', 26),
(108, 'SCI1011', '1992-04-01', 15),
(109, 'SCI1011', '1995-10-18', 54),
(110, ' JOU101', '1972-12-09', 35),
(111, ' JOU201', '1988-11-11', 65),
(112, ' MUS104', '1978-02-19', 40),
(113, ' JOU201', '2002-05-08', 11),
(114, ' HIS152', '1995-12-19', 60),
(115, ' HUM202', '1989-11-01', 4),
(116, ' HIS152', '1977-08-20', 30),
(117, ' MUS104', '1973-11-08', 5),
(118, ' MUS104', '1977-11-14', 96),
(119, ' MED101', '1995-08-06', 92),
(120, ' HUM202', '1978-01-09', 74),
(1, ' MUS203', '2016-01-24', 71),
(2, 'SCI1011', '1973-01-11', 54),
(3, ' SCI202', '2006-10-19', 0),
(4, ' HUM101', '1991-03-12', 36),
(5, ' SCI202', '2004-09-22', 17),
(6, ' HUM202', '2005-10-25', 100),
(7, ' MUS203', '1994-04-07', 70),
(8, ' MED202', '1980-12-13', 98),
(9, ' MED202', '1993-06-17', 72),
(10, ' JOU201', '1976-12-17', 94),
(11, ' MUS104', '1999-07-04', 93),
(12, ' HIS262', '2009-07-17', 66),
(13, ' SCI202', '1998-05-28', 45),
(14, ' HIS152', '1999-12-21', 35),
(15, ' MUS203', '2000-09-09', 88),
(16, 'SCI1011', '2000-03-06', 57),
(17, ' MUS104', '1980-06-27', 10),
(18, ' HIS152', '1981-12-16', 58),
(19, ' HUM101', '1997-12-26', 76),
(20, ' JOU201', '2010-06-03', 72),
(21, ' HUM101', '1981-07-07', 62),
(22, ' MED101', '1986-02-23', 27),
(23, ' HUM202', '1978-04-30', 68),
(24, ' MUS104', '2014-08-08', 39),
(25, ' MED101', '1987-07-05', 52),
(26, ' JOU101', '1999-11-25', 59),
(27, ' HIS152', '1976-07-14', 69),
(28, ' HUM202', '1999-06-05', 42),
(29, ' HUM101', '1974-08-18', 10),
(30, ' HUM202', '1975-07-06', 19),
(31, ' MED101', '2014-07-07', 62),
(32, ' JOU101', '1981-01-16', 15),
(33, ' MUS203', '1970-12-23', 6),
(34, 'SCI1011', '1991-10-10', 88),
(35, ' HIS262', '2017-09-30', 77),
(36, ' HUM101', '1989-10-26', 43),
(37, ' JOU101', '1999-07-25', 29),
(38, ' HUM202', '2000-06-16', 69),
(39, ' MUS104', '1991-10-26', 94),
(40, ' SCI202', '2017-10-16', 66),
(41, ' MUS104', '2006-11-26', 52),
(42, ' HUM202', '2016-03-04', 43),
(43, ' HUM202', '2003-05-05', 98),
(44, ' HUM202', '1982-06-09', 51),
(45, ' HUM101', '2003-12-21', 0),
(46, 'SCI1011', '2004-10-13', 98),
(47, ' MUS104', '1977-12-30', 94),
(48, ' HIS152', '1991-09-30', 58),
(49, ' JOU201', '2006-08-17', 30),
(50, ' HIS262', '1984-08-20', 53),
(51, ' HUM101', '1974-04-11', 49),
(52, ' HUM202', '1975-12-31', 32),
(53, ' JOU201', '1981-07-15', 19),
(54, ' MED101', '1970-11-23', 63),
(55, ' MED101', '1972-03-24', 63),
(56, ' SCI202', '2014-03-18', 12),
(57, ' HIS262', '2003-06-12', 50),
(58, ' MUS104', '1992-02-27', 87),
(59, ' HIS152', '1970-02-20', 27),
(60, ' HIS152', '2016-09-18', 40),
(61, ' MED101', '1972-03-11', 75),
(62, ' MUS104', '1970-02-02', 8),
(63, ' MED202', '1994-04-21', 41),
(64, ' HIS262', '1992-08-09', 40),
(65, ' HUM202', '1990-07-26', 72),
(66, ' MED101', '1993-09-28', 39),
(67, ' HUM202', '1971-08-23', 28),
(68, ' JOU101', '2010-08-11', 68),
(69, ' MUS203', '1979-11-21', 23),
(70, ' MED101', '1985-04-23', 26),
(71, ' SCI202', '1987-12-17', 77),
(72, ' MED202', '1988-06-06', 93),
(73, ' JOU201', '1970-08-19', 69),
(74, ' MED202', '2007-01-31', 54),
(75, ' JOU101', '1973-03-27', 8),
(76, ' MED101', '1994-04-09', 72),
(77, ' HUM101', '1984-02-27', 63),
(78, 'SCI1011', '2015-06-22', 99),
(79, ' JOU201', '1990-02-15', 27),
(80, ' MED101', '2002-05-24', 97),
(81, ' JOU101', '1972-12-07', 30),
(82, ' SCI202', '2015-07-14', 38),
(83, ' HIS152', '2015-07-08', 47),
(84, ' MED101', '2000-08-16', 1),
(85, ' MED101', '2009-11-28', 68),
(86, ' MED202', '1981-03-16', 93),
(87, 'SCI1011', '2012-07-12', 46),
(88, ' JOU201', '1989-12-10', 79),
(89, ' MED202', '2003-02-09', 22),
(90, 'SCI1011', '1995-09-18', 11),
(91, ' JOU201', '2006-03-18', 84),
(92, ' MED202', '2016-02-02', 93),
(93, ' MUS104', '1995-07-11', 7),
(94, ' MUS104', '1978-09-04', 93),
(95, ' MUS104', '2017-04-28', 1),
(96, ' MUS104', '1974-11-14', 71),
(97, ' JOU101', '1974-05-14', 43),
(98, ' MUS203', '1997-11-02', 0),
(99, ' JOU201', '1979-07-09', 29),
(100, ' SCI202', '1970-03-31', 38),
(101, ' JOU101', '1972-08-23', 100),
(102, ' JOU201', '2001-11-26', 50),
(103, ' HIS152', '1979-02-09', 23),
(104, ' HIS262', '2000-02-10', 49),
(105, 'SCI1011', '1970-08-08', 42),
(106, 'SCI1011', '1992-03-09', 21),
(107, ' MUS203', '2018-03-13', 51),
(108, ' JOU101', '1991-03-06', 79),
(109, 'SCI1011', '2013-08-11', 35),
(110, 'SCI1011', '1993-04-21', 1),
(2, ' HIS152', '2018-01-26', 100),
(2, ' SCI202', '2018-01-26', 100),
(2, ' HUM101', '2018-01-26', 100),
(2, ' HUM101', '2018-01-26', 100),
(2, ' MED202', '2018-08-26', 100),
(2, ' HUM202', '2018-08-26', 100),
(2, ' MED101', '2018-01-26', 100),
(2, ' JOU201', '2018-01-26', 100),
(2, ' MED101', '0000-00-00', 90),
(2, ' JOU101', '0000-00-00', 100),
(101, ' JOU201', '0000-00-00', 100),
(101, ' HUM202', '2018-08-15', 100),
(101, ' MUS203', '2018-08-26', 100),
(101, ' HIS152', '0000-00-00', 100),
(101, ' HIS262', '0000-00-00', 100),
(101, ' MED101', '0000-00-00', 100),
(101, ' MED202', '0000-00-00', 100),
(101, ' SCI202', '0000-00-00', 100),
(101, 'SCI1011', '0000-00-00', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses_professors_info`
--
ALTER TABLE `courses_professors_info`
  ADD PRIMARY KEY (`course_professor_info_id`),
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `course_code` (`course_code`),
  ADD KEY `course_code_2` (`course_code`) USING BTREE,
  ADD KEY `faculty_id_2` (`faculty_id`) USING BTREE;

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_course_info`
--
ALTER TABLE `student_course_info`
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_code` (`course_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses_professors_info`
--
ALTER TABLE `courses_professors_info`
  MODIFY `course_professor_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses_professors_info`
--
ALTER TABLE `courses_professors_info`
  ADD CONSTRAINT `faculty_id` FOREIGN KEY (`faculty_id`) REFERENCES `professor` (`faculty_id`);

--
-- Constraints for table `student_course_info`
--
ALTER TABLE `student_course_info`
  ADD CONSTRAINT `course_code` FOREIGN KEY (`course_code`) REFERENCES `courses_professors_info` (`course_code`),
  ADD CONSTRAINT `student_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
