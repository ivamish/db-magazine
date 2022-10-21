-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 21 2022 г., 12:02
-- Версия сервера: 5.7.33
-- Версия PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `magazine`
--
CREATE DATABASE IF NOT EXISTS `magazine` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `magazine`;

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `slug`) VALUES
(1, 'Category 0', 'perferendis ipsa voluptas a pariatur aspernatur officiis sint ut dolor', 'category-0'),
(2, 'Category 1', 'unde enim excepturi quia corporis alias qui culpa sit earum', 'category-1'),
(3, 'Category 2', 'nihil nihil et officia perspiciatis ut velit iure ut possimus', 'category-2'),
(4, 'Category 3', 'iure pariatur et non quam enim ut quae repellendus omnis', 'category-3'),
(5, 'Category 4', 'sed aliquid est aspernatur quam beatae minima excepturi accusantium qui', 'category-4'),
(6, 'Category 5', 'atque autem laudantium doloribus consequatur in reiciendis veniam iusto suscipit', 'category-5'),
(7, 'Category 6', 'neque quasi labore voluptatem est quibusdam perspiciatis suscipit amet quia', 'category-6'),
(8, 'Category 7', 'molestiae tenetur nulla quas voluptatibus et optio quaerat hic natus', 'category-7'),
(9, 'Category 8', 'reiciendis quae repudiandae nihil voluptatem commodi sapiente accusamus qui dolor', 'category-8'),
(10, 'Category 9', 'sunt quibusdam consequatur in aperiam inventore ratione est beatae aut', 'category-9'),
(11, 'Category 10', 'est occaecati et aut ipsa eos cum nostrum eos ducimus', 'category-10'),
(12, 'Category 11', 'necessitatibus omnis fugit unde a sunt sed ut suscipit earum', 'category-11');

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `url`, `alt`) VALUES
(1, 'https://via.placeholder.com/640x480.png/0044bb?text=rerum', 'velit'),
(2, 'https://via.placeholder.com/640x480.png/0000bb?text=vero', 'aut'),
(3, 'https://via.placeholder.com/640x480.png/000099?text=nihil', 'nostrum'),
(4, 'https://via.placeholder.com/640x480.png/008811?text=voluptatem', 'ut'),
(5, 'https://via.placeholder.com/640x480.png/000022?text=iure', 'beatae'),
(6, 'https://via.placeholder.com/640x480.png/0077dd?text=quas', 'aut'),
(7, 'https://via.placeholder.com/640x480.png/00cc66?text=fuga', 'nam'),
(8, 'https://via.placeholder.com/640x480.png/00ccff?text=at', 'vel'),
(9, 'https://via.placeholder.com/640x480.png/0077ee?text=non', 'libero'),
(10, 'https://via.placeholder.com/640x480.png/006655?text=voluptas', 'qui'),
(11, 'https://via.placeholder.com/640x480.png/00ffcc?text=veniam', 'eius'),
(12, 'https://via.placeholder.com/640x480.png/00dd22?text=consequatur', 'nesciunt');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float UNSIGNED NOT NULL,
  `old_price` float UNSIGNED DEFAULT NULL,
  `promo_price` float DEFAULT NULL,
  `category_main` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `image_main` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `old_price`, `promo_price`, `category_main`, `image_main`, `is_active`) VALUES
(4, 'sunt libero', 'Ratione maiores quis sint. Omnis et voluptatibus deserunt. Non voluptatem dolor est labore aut et voluptatem. Et inventore illo explicabo commodi incidunt ut.', 634.51, 9752.55, NULL, 1, 1, 1),
(5, 'commodi ipsum', 'Ipsam quibusdam reiciendis sapiente alias tenetur et minima. Illo et velit laboriosam vitae necessitatibus eum voluptatem tempora. Quis velit exercitationem ut dicta.', 6006.97, 9858.87, NULL, 2, 2, 1),
(6, 'impedit ut', 'Enim ut eveniet laudantium harum aspernatur. Sint animi quam quaerat. Nostrum fugiat numquam consectetur accusantium.', 9364.46, 7905.61, NULL, 3, 3, 1),
(7, 'cum praesentium', 'Possimus nihil voluptatem facilis et cum rerum impedit sint. Consequuntur enim eum sunt nobis nostrum ab. Blanditiis sit qui tempora.', 748.15, 6391.65, NULL, 4, 4, 1),
(8, 'laudantium saepe', 'Dolor ut debitis tempore vel aliquid quasi odio placeat. Alias voluptas rerum asperiores ullam qui quod. Doloremque ex voluptatem cumque repellat. Repellat aut quod ut aut.', 4563.94, 1367.88, NULL, 5, 5, 1),
(9, 'sit quisquam', 'Unde quasi modi non facere quos. Qui occaecati nobis sapiente. Nesciunt neque maiores quaerat. Quae necessitatibus enim aspernatur.', 528.2, 9015.89, NULL, 6, 6, 1),
(10, 'quasi est', 'Animi quas distinctio incidunt vel eum aspernatur omnis. Temporibus illo qui at earum ut eligendi voluptas. Deserunt in est vel aut optio rerum. Voluptatem cumque sit et aut quo nobis quibusdam.', 6286.96, 7896.7, NULL, 7, 7, 1),
(11, 'rerum quae', 'Quia dicta rem ipsam quia asperiores saepe esse. Ut ratione est et. Officiis voluptatem quaerat dicta culpa ut et aliquid. Rerum ullam repudiandae ullam non.', 4632.62, 1372.47, NULL, 8, 8, 1),
(12, 'recusandae fugiat', 'Sit illum quibusdam esse esse hic dolores voluptatem nihil. Voluptas consequuntur est sunt. Tempora ratione et perferendis totam sequi et deleniti magnam.', 7151.07, 2824.69, NULL, 9, 9, 1),
(13, 'quod est', 'In omnis nisi aut rerum velit. Voluptatem sit quisquam nobis. Sed sequi aperiam magni nostrum inventore. Corporis voluptatibus aut aut quod est alias et tempore.', 8282.33, 9626.23, NULL, 10, 10, 1),
(14, 'delectus dicta', 'Non quo commodi hic rem qui. Perspiciatis et perferendis corporis omnis blanditiis. Ut ad architecto modi est.', 4173.36, 6419.08, NULL, 11, 11, 1),
(15, 'aperiam facere', 'Libero consequatur sunt et tempore. Ea deleniti tempore tempora esse hic nulla. Velit odio et vel voluptatem voluptatem quo expedita vitae.', 4087.85, 6975.74, NULL, 12, 12, 1),
(16, 'voluptatem ut', 'Et est ipsam commodi adipisci. Dolorum reiciendis necessitatibus odit corrupti enim aut.', 9978.86, 8275.76, NULL, 1, 1, 1),
(17, 'repudiandae harum', 'Et omnis a fuga voluptatem et sequi. Odio explicabo aut doloribus fuga temporibus ipsam voluptates. Corporis dolorum eos et ullam id voluptatem. Qui libero aut expedita adipisci perspiciatis velit id.', 5367.67, 9367.53, NULL, 2, 2, 1),
(18, 'sit in', 'Non adipisci explicabo non unde. Aut explicabo aliquam totam aut voluptatem. Quia tempore et natus reprehenderit occaecati.', 5767.05, 4985.31, NULL, 3, 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_basis`
--

CREATE TABLE `product_basis` (
  `product_id` int(10) NOT NULL,
  `image_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_basis`
--

INSERT INTO `product_basis` (`product_id`, `image_id`, `category_id`) VALUES
(4, 1, 1),
(5, 2, 2),
(6, 3, 3),
(7, 4, 4),
(8, 5, 5),
(9, 6, 6),
(10, 7, 7),
(11, 8, 8),
(12, 9, 9),
(13, 10, 10),
(14, 11, 11),
(15, 12, 12),
(16, 1, 1),
(17, 2, 2),
(18, 3, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `product_category`
--

CREATE TABLE `product_category` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_category`
--

INSERT INTO `product_category` (`product_id`, `category_id`) VALUES
(1, 1),
(1, 2),
(2, 5),
(2, 6),
(3, 9),
(3, 10),
(4, 5),
(4, 6),
(5, 1),
(5, 2),
(6, 5),
(6, 6),
(7, 1),
(7, 2),
(8, 5),
(8, 6),
(9, 9),
(9, 10),
(10, 5),
(10, 6),
(11, 1),
(11, 2),
(12, 5),
(12, 6),
(13, 1),
(13, 2),
(14, 5),
(14, 6),
(15, 9),
(15, 10),
(16, 5),
(16, 6),
(17, 1),
(17, 2),
(18, 5),
(18, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `product_image`
--

CREATE TABLE `product_image` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `image_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_image`
--

INSERT INTO `product_image` (`product_id`, `image_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 8),
(9, 9),
(9, 10),
(9, 11),
(9, 12),
(10, 5),
(10, 6),
(10, 7),
(10, 8),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(12, 5),
(12, 6),
(12, 7),
(12, 8),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(14, 5),
(14, 6),
(14, 7),
(14, 8),
(15, 9),
(15, 10),
(15, 11),
(15, 12),
(16, 5),
(16, 6),
(16, 7),
(16, 8),
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(18, 5),
(18, 6),
(18, 7),
(18, 8);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_basis`
--
ALTER TABLE `product_basis`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Индексы таблицы `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`product_id`,`image_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
