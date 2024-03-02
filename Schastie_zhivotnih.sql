-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 02 2024 г., 13:37
-- Версия сервера: 5.7.39
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Schastie_zhivotnih`
--

-- --------------------------------------------------------

--
-- Структура таблицы `diagnoz_lechenie`
--

CREATE TABLE `diagnoz_lechenie` (
  `id_diagnoz` int(11) NOT NULL,
  `id_vrach` int(11) NOT NULL,
  `id_zhivotnoe` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `coust` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hoziain_zhivotnogo`
--

CREATE TABLE `hoziain_zhivotnogo` (
  `id_hoziain_zhivotnogo` int(11) NOT NULL,
  `fio` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adres` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `vrach`
--

CREATE TABLE `vrach` (
  `id_vrach` int(11) NOT NULL,
  `fio` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telphone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `zhivotnie`
--

CREATE TABLE `zhivotnie` (
  `id_zhivotnie` int(11) NOT NULL,
  `id_vrach` int(11) NOT NULL,
  `id_hoziain_zhivotnogo` int(11) NOT NULL,
  `id_diagnoz` int(11) NOT NULL,
  `clichka` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poroda` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pol` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `diagnoz_lechenie`
--
ALTER TABLE `diagnoz_lechenie`
  ADD PRIMARY KEY (`id_diagnoz`);

--
-- Индексы таблицы `hoziain_zhivotnogo`
--
ALTER TABLE `hoziain_zhivotnogo`
  ADD PRIMARY KEY (`id_hoziain_zhivotnogo`);

--
-- Индексы таблицы `vrach`
--
ALTER TABLE `vrach`
  ADD PRIMARY KEY (`id_vrach`);

--
-- Индексы таблицы `zhivotnie`
--
ALTER TABLE `zhivotnie`
  ADD PRIMARY KEY (`id_zhivotnie`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `diagnoz_lechenie`
--
ALTER TABLE `diagnoz_lechenie`
  MODIFY `id_diagnoz` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `hoziain_zhivotnogo`
--
ALTER TABLE `hoziain_zhivotnogo`
  MODIFY `id_hoziain_zhivotnogo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `vrach`
--
ALTER TABLE `vrach`
  MODIFY `id_vrach` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `zhivotnie`
--
ALTER TABLE `zhivotnie`
  MODIFY `id_zhivotnie` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
