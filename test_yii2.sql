-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 07 2016 г., 22:19
-- Версия сервера: 10.1.19-MariaDB
-- Версия PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_yii2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`code`, `name`, `population`) VALUES
('AU', 'Australia', 24016400),
('BR', 'Brazil', 205722000),
('CA', 'Canada', 35985751),
('CN', 'China', 1375210000),
('DE', 'Germany', 81459000),
('FR', 'France', 64513242),
('GB', 'United Kingdom', 65097000),
('IN', 'India', 1285400000),
('RU', 'Russia', 146519759),
('US', 'United States', 322976000);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `title` varchar(256) NOT NULL,
  `anons` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `uid`, `title`, `anons`, `text`) VALUES
(21, 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas at tortor nunc. Pellentesque volutpat tincidunt nibh ac congue. Praesent commodo maximus tempus. Pellentesque eu ipsum non nisl pellentesque posuere ac at augue. Nulla facilisi. Donec tincidunt neque ac ultrices fringilla. Donec sollicitudin dignissim risus, at pulvinar turpis auctor quis.\r\n\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in ullamcorper quam, sit amet vulputate augue. Nulla nunc velit, commodo in faucibus ut, egestas a leo. Cras sagittis laoreet lectus, nec interdum mi fringilla eget. Ut ut orci a sem tincidunt ornare a quis ante. Cras commodo est eu malesuada consequat. Vestibulum ligula felis, posuere sed risus a, tincidunt volutpat leo. In erat elit, imperdiet quis felis at, tincidunt venenatis ante. Vestibulum dolor risus, lobortis euismod auctor non, vestibulum in lorem. Etiam eget gravida justo, in rhoncus est. Morbi pellentesque convallis fringilla. Morbi fermentum risus nec metus vehicula, vel ultricies lorem consequat. Praesent ultricies in massa vitae euismod. Nullam quis dignissim augue, vitae finibus massa. Proin vehicula scelerisque viverra. Duis libero dolor, sagittis sed mauris vitae, tristique vehicula augue.\r\n\r\n'),
(22, 4, 'Fusce sed massa in augue dictum pharetra nec non ipsum.', 'Fusce sed massa in augue dictum pharetra nec non ipsum. Maecenas vitae nulla velit. Ut placerat in neque non porttitor. Vivamus ac est ac ex imperdiet aliquet. Quisque nec dolor urna. Vivamus eu vestibulum mauris. Fusce vulputate arcu non felis pharetra ullamcorper vel sed massa. Pellentesque vitae nulla id odio tincidunt viverra. Praesent suscipit pharetra lectus. Vestibulum hendrerit, dui sed scelerisque viverra, justo sapien tincidunt lectus, et lacinia ligula eros id elit. Duis velit dolor, luctus interdum ex eu, tristique tincidunt felis.\r\n\r\n', 'Quisque nec magna molestie, placerat libero at, scelerisque enim. In rutrum eros pulvinar, finibus erat non, elementum massa. Nam sed placerat augue. Sed congue consequat tortor, a mattis purus volutpat sed. Ut placerat nibh eu nisl consectetur blandit. Cras tempor scelerisque dolor et blandit. Aliquam non magna elit. Duis a odio et libero porttitor dapibus ut quis urna. Quisque ac egestas ligula. Sed et nulla lectus. Duis cursus ipsum arcu, quis venenatis est vulputate vel. Nunc at augue sit amet elit lobortis faucibus. Pellentesque egestas est quis rhoncus condimentum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus eget ante eros.\r\n\r\n'),
(23, 5, 'Aenean fringilla', 'Aenean fringilla nunc a vehicula consectetur. Duis urna libero, ultricies id semper at, pulvinar eu odio. Morbi cursus rutrum mi ut lacinia. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed vitae tristique justo. Maecenas placerat, erat sed accumsan faucibus, elit mi consequat lectu', 'Proin aliquet mattis nisi nec sagittis. Nullam dictum vitae nunc aliquet egestas. Donec dapibus urna cursus odio sagittis euismod. Vivamus bibendum, ex quis dapibus volutpat, ante tellus consequat augue, ut tincidunt magna quam nec est. Morbi ac fermentum felis. Aenean ultrices nunc vel volutpat facilisis. Curabitur porta gravida nibh vel tempor. Quisque at purus in enim feugiat mollis eu sed neque. Nulla quis purus a nibh bibendum posuere. Sed at dolor tristique, pretium nisl id, tempor elit. Proin molestie sapien sit amet pulvinar tristique. Nunc lobortis porta commodo. In ornare, eros malesuada rutrum luctus, urna libero condimentum ipsum, nec scelerisque sapien tellus a enim.\r\n\r\n'),
(24, 3, 'mauris lectus', 'Integer laoreet ex eu quam hendrerit, ut rhoncus est imperdiet. Praesent non est nec nibh tristique aliquet. Nulla facilisi. Curabitur fermentum, velit eget accumsan porta, dui ex egestas e', 'Sed placerat tortor sit amet neque fermentum, a fringilla mi gravida. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque aliquam cursus congue. Nam in orci efficitur, dapibus sapien ac, viverra nunc. Integer massa tortor, elementum at augue eu, maximus varius augue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sit amet mi id est vehicula auctor. Mauris urna mi, dignissim id porta in, ornare eu ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed rhoncus odio non nulla vestibulum semper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras sed quam vitae ipsum convallis iaculis. Sed et risus vestibulum massa interdum auctor ac ut nisl. Aenean commodo leo vitae velit lobortis, at bibendum urna mollis. Cras sapien felis, fringilla id est at, aliquet pellentesque justo.\r\n\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `auth_key` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `auth_key`, `email`, `status`, `created_at`, `updated_at`) VALUES
(3, 'wayid', '$2y$13$pnghNvDkzC69YVX3BV7WTe1STsswyIX.uVm2R0iiVSV96htCaf2h6', '80cu_FmiCV-693RwlI1QfrDYol9WilqI', 'wayid@rootfest.net', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'admin', '$2y$13$a1SkKolBk/XNdfY9bz8tDO66fySLmwPzR/.gacUzMmRIPUusMFld.', 'wGIiDimHRcPY2RhVKHxouLt4Vh1fttzk', 'huja@rootfest.net', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'admin2', '$2y$13$fWWpkY8lEU1IfnyFqMhz8evAw/JFAlMdR3zK0B8mHUUGxiEqGsozm', 'iF5UlgXDc7G6lFcxeSnVxg6G84l_Rekb', 'zapel@rootfest.net', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`code`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`id`),
  ADD KEY `uid_2` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
