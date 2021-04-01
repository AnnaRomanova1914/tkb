-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Апр 01 2021 г., 08:56
-- Версия сервера: 8.0.23
-- Версия PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tkb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tkb_data`
--

CREATE TABLE `tkb_data` (
  `id` int NOT NULL,
  `html` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
      <label>Особые условия</label>\n        <div>\n            <table>\n                <thead>\n                    <tr><th>Условие</th>\n                    <th>\n                </th></tr></thead>\n                <tbody>\n                    <tr>\n                        <td>\n                            <input type=\"text\" class=\"form-control\" value=\"\">\n                        </td>\n                        <td>\n                            <div class=\"delete-row-btn\">–</div>\n                        </td>\n                    </tr>\n                <tr>\n                        <td>\n                            <input type=\"text\" class=\"form-control\" value=\"dfdasfa\">\n                        </td>\n                        <td>\n                            <div class=\"delete-row-btn\">–</div>\n                        </td>\n                    </tr><tr>\n                        <td>\n                            <input type=\"text\" class=\"form-control\" value=\"\">\n                        </td>\n                        <td>\n                            <div class=\"delete-row-btn\">–</div>\n                        </td>\n                    </tr></tbody>\n            </table>\n            <button class=\"add-row-btn\">\n                Добавить\n            </button>\n        </div>\n    ');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tkb_data`
--
ALTER TABLE `tkb_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tkb_data`
--
ALTER TABLE `tkb_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
