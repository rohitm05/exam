-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 21, 2018 at 02:43 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.31-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `password` varchar(100) NOT NULL COMMENT 'admin123'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `mobile`, `password`) VALUES
(1, 'admin', 'admin@email.com', 123456789, 'f865b53623b121fd34ee5426c792e5c33af8c227');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_des` text NOT NULL,
  `time` decimal(2,1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_des`, `time`, `created_at`, `updated_at`) VALUES
(1, 'PHP ', 'PHP is a nice language', '0.5', '2018-08-17 09:21:25', '2018-08-21 08:56:03'),
(5, 'C++', 'C++ is a nice language	', '0.5', '2018-08-17 14:14:37', '2018-08-20 14:37:23'),
(8, 'Python', 'Python is a nice language', '0.5', '2018-08-21 05:38:23', '2018-08-21 05:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `paper_post`
--

CREATE TABLE `paper_post` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_id` varchar(50) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer1` text NOT NULL,
  `answer2` text NOT NULL,
  `answer3` text NOT NULL,
  `answer4` text NOT NULL,
  `correct_ans` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `category_id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_ans`, `create_at`, `update_at`) VALUES
(9, 1, 'What is the full form of PHP', 'Hypertext Preprocessor', 'Per Home Page', 'Pay Home Page ', 'Personal home page', '1', '2018-08-20 14:43:32', '2018-08-21 04:41:09'),
(10, 1, 'Who was the creater of PHP', 'Zeev Suraski', 'Larry Wall', 'Rasmus Lerdorf', 'Dennis Ritchie', '3', '2018-08-21 04:43:04', '2018-08-21 04:43:04'),
(11, 1, 'What kind of language PHP is?', 'Markup', 'Highlevel', 'Lowlevel', 'Scripting', '4', '2018-08-21 04:45:32', '2018-08-21 04:45:32'),
(12, 1, 'Which of the following type of variables are named and indexed collections of other values?', 'Strings', 'Arrays', 'Objects', 'Resources', '2', '2018-08-21 04:46:28', '2018-08-21 04:46:28'),
(13, 1, ' Which of the following is correct about constants?', 'Unlike with variables, you do not need to have a constant with a $.', 'Only scalar data (boolean, integer, float and string) can be contained in constants.', 'Both of the above.', ' None of the above.', '3', '2018-08-21 04:47:38', '2018-08-21 04:47:38'),
(14, 1, 'Which of the following is used to get information sent via get method in PHP?', ' $_GET', '$GET', '$GETREQUEST', ' None of the above.', '1', '2018-08-21 04:48:37', '2018-08-21 04:48:37'),
(15, 1, 'Which of the following function is used to read the content of a file?', 'fopen()', 'fread()', 'filesize()', 'file_exist()', '2', '2018-08-21 04:49:59', '2018-08-21 04:49:59'),
(16, 1, 'Which of the following is used to set cookies?', 'setcookie() function', '$_COOKIE variable', '$HTTP_COOKIE_VARS variable', 'isset() function', '1', '2018-08-21 04:51:13', '2018-08-21 04:51:13'),
(17, 5, 'Choose the pure virtual function definition from the following.', 'virtual void f()=0 { }', 'void virtual f()=0 { }', 'virtual void f() {} = 0;', 'None of the above.', '4', '2018-08-21 04:54:56', '2018-08-21 04:54:56'),
(18, 5, ' Runtime polymorphism is done using.', 'Function overloading', 'Virtual classes', 'Virtual functions', 'Friend function', '3', '2018-08-21 04:55:58', '2018-08-21 04:55:58'),
(19, 5, 'Choose the Object oriented programming language from below.', ' C++', 'Small talk', 'Simula', 'All the above.', '4', '2018-08-21 04:56:54', '2018-08-21 04:56:54'),
(20, 5, 'Which feature of the OOPS gives the concept of reusability?', 'Abstraction', 'Encapsulation', 'Inheritance', 'None of the above.', '3', '2018-08-21 04:57:46', '2018-08-21 04:57:46'),
(21, 5, 'An exception is __', 'Runtime error', 'Compile time error', ' Logical error', 'None of the above', '1', '2018-08-21 04:58:39', '2018-08-21 04:58:39'),
(22, 5, 'The default executable generation on UNIX for a C++ program is ___', 'a.exe', 'a', 'a.out', 'out.a', '3', '2018-08-21 04:59:38', '2018-08-21 04:59:38'),
(23, 5, 'What is the built in library function to compare two strings?', 'string_cmp()', 'strcmp()', 'equals()', 'str_compare()', '2', '2018-08-21 05:00:38', '2018-08-21 05:00:38'),
(28, 8, 'Which of these is not a core data type?', 'Lists', 'Dictionary', 'Tuples', 'Class', '4', '2018-08-21 05:39:32', '2018-08-21 05:39:32'),
(29, 8, 'What data type is the object below ? L = [1, 23, â€˜helloâ€™, 1]', 'Lists', 'Dictionary', 'Tuples', 'Array', '1', '2018-08-21 05:43:44', '2018-08-21 05:43:44'),
(30, 8, 'What is called when a function is defined inside a class?', 'Module', 'Class', 'Another Function', 'Method', '4', '2018-08-21 05:46:52', '2018-08-21 05:46:52'),
(31, 8, 'Which of the following is the use of id() function in python?', 'Id returns the identity of the object', 'Every object doesnâ€™t have a unique id', 'All of the mentioned', 'None of the mentioned', '1', '2018-08-21 05:47:52', '2018-08-21 05:47:52'),
(32, 8, 'What is the output of L[1:] if L = [1,2,3]?', '2,3', '2', '3', 'None of the above', '1', '2018-08-21 05:54:50', '2018-08-21 05:54:50'),
(33, 8, 'What is the binary number 00001010 in decimal?', '4', '16', '32', '10', '4', '2018-08-21 05:57:54', '2018-08-21 05:57:54'),
(34, 8, 'An object can contain:', 'Only variables', 'Only methods', 'Variables and methods', 'None of the above', '3', '2018-08-21 05:58:58', '2018-08-21 05:58:58'),
(35, 8, 'What is a nested loop?', 'A loop without conditions', 'A loop with an if statement', 'A loop within a loop', ' None of the above', '3', '2018-08-21 06:00:34', '2018-08-21 06:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0)active 1)inactive',
  `result` int(11) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `status`, `result`, `create_at`, `update_at`) VALUES
(5, 'Rohit Mukherjee', 'rohitm0505@gmail.com', 123457, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '1', 15, '2018-08-20 07:07:34', '2018-08-21 06:19:50'),
(6, 'Rohit', 'rohitm@gmail.com', 123457, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '1', 5, '2018-08-21 06:28:18', '2018-08-21 07:43:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `user_answer`
--

INSERT INTO `user_answer` (`id`, `user_id`, `question_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 5, 10, 3, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(2, 5, 30, 4, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(3, 5, 35, 3, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(4, 5, 21, 1, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(5, 5, 11, 4, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(6, 5, 15, 1, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(7, 5, 12, 2, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(8, 5, 14, 1, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(9, 5, 28, 3, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(10, 5, 17, 3, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(11, 5, 16, 3, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(12, 5, 22, 3, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(13, 5, 19, 4, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(14, 5, 20, 3, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(15, 5, 29, 2, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(16, 5, 34, 3, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(17, 5, 18, 2, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(18, 5, 23, 3, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(19, 5, 13, 3, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(20, 5, 31, 2, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(21, 5, 33, 4, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(22, 5, 32, 1, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(23, 5, 9, 1, '2018-08-21 06:19:50', '2018-08-21 06:19:50'),
(93, 6, 18, 1, '2018-08-21 07:43:38', '2018-08-21 07:43:38'),
(94, 6, 19, 1, '2018-08-21 07:43:38', '2018-08-21 07:43:38'),
(95, 6, 9, 3, '2018-08-21 07:43:38', '2018-08-21 07:43:38'),
(96, 6, 14, 1, '2018-08-21 07:43:38', '2018-08-21 07:43:38'),
(97, 6, 35, 1, '2018-08-21 07:43:38', '2018-08-21 07:43:38'),
(98, 6, 21, 4, '2018-08-21 07:43:38', '2018-08-21 07:43:38'),
(99, 6, 12, 4, '2018-08-21 07:43:38', '2018-08-21 07:43:38'),
(100, 6, 30, 4, '2018-08-21 07:43:38', '2018-08-21 07:43:38'),
(101, 6, 16, 2, '2018-08-21 07:43:38', '2018-08-21 07:43:38'),
(102, 6, 20, 3, '2018-08-21 07:43:38', '2018-08-21 07:43:38'),
(103, 6, 22, 3, '2018-08-21 07:43:38', '2018-08-21 07:43:38'),
(104, 6, 34, 3, '2018-08-21 07:43:38', '2018-08-21 07:43:38'),
(105, 6, 31, 4, '2018-08-21 07:43:38', '2018-08-21 07:43:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paper_post`
--
ALTER TABLE `paper_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `paper_post`
--
ALTER TABLE `paper_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
