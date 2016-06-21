-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июн 21 2016 г., 20:26
-- Версия сервера: 10.1.10-MariaDB
-- Версия PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library2.0`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `ID` int(11) NOT NULL,
  `AUTHOR_NAME` varchar(128) NOT NULL,
  `CENTURY` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`ID`, `AUTHOR_NAME`, `CENTURY`) VALUES
(1, 'Страуд Джонатан', '20-21'),
(2, 'Лев Николаевич Толстой', '19'),
(3, 'Ф.М. Достаевский', '19'),
(4, 'А.Н. Островский', '19'),
(5, 'А.С. Пушкин', '19'),
(6, 'М.Ю. Лермонтов', '19'),
(7, 'Петр Дмитриевич Боборыкин', '?'),
(8, 'Твардовский', '19-20'),
(9, 'Жан-Жак Руссо', '17?'),
(10, 'Иван Сергеевич Тургенев', '19'),
(11, 'И.В.Гёте', '19?'),
(12, 'Овидий', '?'),
(13, 'Аппулей', '?'),
(14, 'Николай Гумилев', '?'),
(15, 'Лоренс Стерн', '?'),
(16, 'Виктор Шкловский', '?'),
(17, 'А. Е. Бердичевский', '20'),
(18, 'Е. Н. Холмянский', '20'),
(19, 'Л. Т. Гиляровская', '20'),
(20, 'А. А. Вехорева', '20'),
(21, 'В. Б. Буглай', '20'),
(22, 'Н. Н. Ливенцев', '20'),
(23, 'Л. Р. Нейман', '20'),
(24, 'К. С. Демирчян', '20'),
(25, 'В. М. Юринов', '20');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `ID` int(11) NOT NULL,
  `BOOK_NAME` varchar(256) NOT NULL,
  `AUTHOR_ID` varchar(128) NOT NULL,
  `GENRE_ID` int(11) NOT NULL,
  `SCHOOL_RECOMENDS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ganres`
--

CREATE TABLE `ganres` (
  `ID` int(11) NOT NULL,
  `GANRE_NAME` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ganres`
--

INSERT INTO `ganres` (`ID`, `GANRE_NAME`) VALUES
(1, 'фантастика'),
(2, 'роман'),
(3, 'роман-эпопея'),
(4, 'рассказ'),
(5, 'комедия'),
(6, 'пьеса'),
(7, 'поэма'),
(8, 'стихотворение'),
(9, 'учебная литература');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `ganres`
--
ALTER TABLE `ganres`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `ganres`
--
ALTER TABLE `ganres`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
