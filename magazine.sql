-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 20 2022 г., 18:49
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
  `slug` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `slug`, `alt`) VALUES
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
  `free_delivery` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `lamoda` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `old_price`, `free_delivery`, `is_active`, `lamoda`) VALUES
(4, 'sunt libero', 'Ratione maiores quis sint. Omnis et voluptatibus deserunt. Non voluptatem dolor est labore aut et voluptatem. Et inventore illo explicabo commodi incidunt ut.', 634.51, 9752.55, 1, 1, 1),
(5, 'commodi ipsum', 'Ipsam quibusdam reiciendis sapiente alias tenetur et minima. Illo et velit laboriosam vitae necessitatibus eum voluptatem tempora. Quis velit exercitationem ut dicta.', 6006.97, 9858.87, 1, 1, 1),
(6, 'impedit ut', 'Enim ut eveniet laudantium harum aspernatur. Sint animi quam quaerat. Nostrum fugiat numquam consectetur accusantium.', 9364.46, 7905.61, 1, 1, 1),
(7, 'cum praesentium', 'Possimus nihil voluptatem facilis et cum rerum impedit sint. Consequuntur enim eum sunt nobis nostrum ab. Blanditiis sit qui tempora.', 748.15, 6391.65, 1, 1, 1),
(8, 'laudantium saepe', 'Dolor ut debitis tempore vel aliquid quasi odio placeat. Alias voluptas rerum asperiores ullam qui quod. Doloremque ex voluptatem cumque repellat. Repellat aut quod ut aut.', 4563.94, 1367.88, 1, 1, 1),
(9, 'sit quisquam', 'Unde quasi modi non facere quos. Qui occaecati nobis sapiente. Nesciunt neque maiores quaerat. Quae necessitatibus enim aspernatur.', 528.2, 9015.89, 1, 1, 1),
(10, 'quasi est', 'Animi quas distinctio incidunt vel eum aspernatur omnis. Temporibus illo qui at earum ut eligendi voluptas. Deserunt in est vel aut optio rerum. Voluptatem cumque sit et aut quo nobis quibusdam.', 6286.96, 7896.7, 1, 1, 1),
(11, 'rerum quae', 'Quia dicta rem ipsam quia asperiores saepe esse. Ut ratione est et. Officiis voluptatem quaerat dicta culpa ut et aliquid. Rerum ullam repudiandae ullam non.', 4632.62, 1372.47, 1, 1, 1),
(12, 'recusandae fugiat', 'Sit illum quibusdam esse esse hic dolores voluptatem nihil. Voluptas consequuntur est sunt. Tempora ratione et perferendis totam sequi et deleniti magnam.', 7151.07, 2824.69, 1, 1, 1),
(13, 'quod est', 'In omnis nisi aut rerum velit. Voluptatem sit quisquam nobis. Sed sequi aperiam magni nostrum inventore. Corporis voluptatibus aut aut quod est alias et tempore.', 8282.33, 9626.23, 1, 1, 1),
(14, 'delectus dicta', 'Non quo commodi hic rem qui. Perspiciatis et perferendis corporis omnis blanditiis. Ut ad architecto modi est.', 4173.36, 6419.08, 1, 1, 1),
(15, 'aperiam facere', 'Libero consequatur sunt et tempore. Ea deleniti tempore tempora esse hic nulla. Velit odio et vel voluptatem voluptatem quo expedita vitae.', 4087.85, 6975.74, 1, 1, 1),
(16, 'voluptatem ut', 'Et est ipsam commodi adipisci. Dolorum reiciendis necessitatibus odit corrupti enim aut.', 9978.86, 8275.76, 1, 1, 1),
(17, 'repudiandae harum', 'Et omnis a fuga voluptatem et sequi. Odio explicabo aut doloribus fuga temporibus ipsam voluptates. Corporis dolorum eos et ullam id voluptatem. Qui libero aut expedita adipisci perspiciatis velit id.', 5367.67, 9367.53, 1, 1, 1),
(18, 'sit in', 'Non adipisci explicabo non unde. Aut explicabo aliquam totam aut voluptatem. Quia tempore et natus reprehenderit occaecati.', 5767.05, 4985.31, 1, 1, 1),
(19, 'atque corporis', 'Sunt et commodi iure dicta et delectus. Consequatur ea ad omnis tempora. Eum magnam dolorem amet voluptatibus ut qui exercitationem blanditiis.', 1970.65, 879.05, 1, 1, 1),
(20, 'consequatur ab', 'Voluptas et rerum accusamus quibusdam. Odit cupiditate omnis enim. Dolores sunt neque id molestiae delectus. Deserunt repellendus quaerat libero temporibus cupiditate possimus. Porro reprehenderit dolore temporibus iste aliquid voluptatem.', 1667.55, 9993.24, 1, 1, 1),
(21, 'assumenda voluptate', 'Quaerat qui aut rerum nihil fuga ipsum dolorem. Ut et repudiandae exercitationem quo. Necessitatibus quidem rerum officia qui atque magnam aliquid.', 9552.25, 9446.74, 1, 1, 1),
(22, 'hic necessitatibus', 'Molestias alias aut ullam ipsam nulla corporis totam. Sed officia aut cumque nihil. Aut laudantium voluptatem exercitationem dolorem.', 1102.56, 5274.2, 1, 1, 1),
(23, 'veniam sapiente', 'Quam atque repudiandae dolor maiores cum minus unde. Quod nihil ducimus quaerat et quia sint. Accusamus quo iste quia occaecati.', 5188.1, 4308.26, 1, 1, 1),
(24, 'enim a', 'Quia explicabo laudantium nihil sit ipsum et. Veniam nihil hic quo officia eum et. Rerum enim iure temporibus.', 8128.57, 7852.07, 1, 1, 1),
(25, 'maiores assumenda', 'Rerum aliquam et aliquid maiores. Et beatae at suscipit. Vero quod non consectetur aut nostrum voluptas.', 1053.64, 352.38, 1, 1, 1),
(26, 'culpa voluptates', 'Animi est iusto quis eos delectus. Quis dolor odit expedita quaerat omnis aut numquam. Ut vero incidunt sint.', 6491.43, 4554.56, 1, 1, 1),
(27, 'quasi tenetur', 'Ex fuga dolor perspiciatis et commodi similique hic. Repellendus in eos ea aspernatur.', 6634.16, 9103.7, 1, 1, 1),
(28, 'sit rerum', 'Doloribus tenetur recusandae totam nesciunt. Velit alias similique voluptatem vel quia. Quasi ut eum sequi velit inventore qui consequatur odio.', 2719.45, 6419.3, 1, 1, 1),
(29, 'mollitia sequi', 'Et qui adipisci earum qui. Iusto sequi amet illum sunt aut neque. Iusto architecto corporis explicabo.', 6383.64, 7972.32, 1, 1, 1),
(30, 'omnis asperiores', 'Unde velit labore suscipit dolorum perspiciatis. Aut aut illum recusandae dignissimos quidem voluptas. Eos voluptas quos at ut voluptate aut in ipsa.', 2674.35, 8776.75, 1, 1, 1),
(31, 'voluptatum quis', 'Sunt vero est et nihil architecto sed dolores. Non saepe aliquam veritatis dolores sed. Aut perspiciatis in excepturi quam animi. Voluptas perferendis dolor esse in voluptatem doloremque.', 1672.15, 6313.45, 1, 1, 1),
(32, 'fugiat voluptates', 'Totam vel omnis vero ea dolores ducimus voluptatem in. Voluptates qui unde autem commodi ab. Voluptates aut ratione excepturi eum praesentium ut.', 597.96, 8727.17, 1, 1, 1),
(33, 'molestiae hic', 'Id repudiandae sed maxime consequatur qui illum maxime. Iste necessitatibus vel explicabo assumenda voluptas harum incidunt. Fuga dolor iusto est aliquam ab omnis quaerat. Dolorum atque delectus commodi vel aliquid enim.', 7103.34, 7941.02, 1, 1, 1),
(34, 'velit adipisci', 'Officia officia dolore nemo optio. Ut est velit consequatur optio. Ullam adipisci culpa blanditiis a ut et. Explicabo laborum occaecati aut dolor.', 3126.66, 3735.39, 1, 1, 1),
(35, 'error ipsa', 'Expedita enim corporis aperiam tempora in. Voluptas iste veniam est quo quos sint. Numquam a quia aut assumenda similique.', 931.5, 1862.05, 1, 1, 1),
(36, 'velit mollitia', 'Nam eius quidem nostrum. Aliquam quis non hic sint repellendus qui non. Et velit nihil voluptate a ad voluptate id.', 7666.11, 3452.05, 1, 1, 1),
(37, 'quisquam laudantium', 'In eligendi assumenda voluptas perspiciatis sit ea tempora porro. Autem commodi veniam ducimus autem nisi voluptatum a. Earum consectetur asperiores quia velit autem mollitia. Odio nulla ab sed blanditiis iste.', 2424.52, 8846.38, 1, 1, 1),
(38, 'inventore veniam', 'Ducimus alias autem hic. Odit aliquam minus maxime aut. Sapiente officia corrupti quod eos corrupti sequi.', 2100.54, 1023.01, 1, 1, 1),
(39, 'quia voluptatem', 'Consequatur quod eos voluptatibus officia sit qui. Iste ullam quis aut et accusamus neque assumenda. Ullam nulla consequatur vitae modi id.', 748.64, 297.8, 1, 1, 1),
(40, 'quidem consequuntur', 'Soluta doloremque necessitatibus facere ratione sed est molestiae. Recusandae vero corporis unde eum nostrum. Sint mollitia ex voluptatibus blanditiis voluptatem rem ipsa quos.', 8695.95, 9543.01, 1, 1, 1),
(41, 'deleniti est', 'Rem autem et eaque cupiditate. Aut aut qui qui perferendis autem. Eos laboriosam adipisci sint dolore est et asperiores. Veritatis odio nostrum placeat nostrum soluta voluptatem deleniti eligendi.', 8810.57, 6421.04, 1, 1, 1);

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
(18, 6),
(19, 1),
(19, 2),
(20, 5),
(20, 6),
(21, 9),
(21, 10),
(22, 5),
(22, 6),
(23, 1),
(23, 2),
(24, 5),
(24, 6),
(25, 1),
(25, 2),
(26, 5),
(26, 6),
(27, 9),
(27, 10),
(28, 5),
(28, 6),
(29, 1),
(29, 2),
(30, 5),
(30, 6),
(31, 1),
(31, 2),
(32, 5),
(32, 6),
(33, 9),
(33, 10),
(34, 5),
(34, 6),
(35, 1),
(35, 2),
(36, 5),
(36, 6),
(37, 1),
(37, 2);

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
(18, 8),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(20, 5),
(20, 6),
(20, 7),
(20, 8),
(21, 9),
(21, 10),
(21, 11),
(21, 12),
(22, 5),
(22, 6),
(22, 7),
(22, 8),
(23, 1),
(23, 2),
(23, 3),
(23, 4),
(24, 5),
(24, 6),
(24, 7),
(24, 8),
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(26, 5),
(26, 6),
(26, 7),
(26, 8),
(27, 9),
(27, 10),
(27, 11),
(27, 12),
(28, 5),
(28, 6),
(28, 7),
(28, 8),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(30, 5),
(30, 6),
(30, 7),
(30, 8),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(32, 5),
(32, 6),
(32, 7),
(32, 8),
(33, 9),
(33, 10),
(33, 11),
(33, 12),
(34, 5),
(34, 6),
(34, 7),
(34, 8),
(35, 1),
(35, 2),
(35, 3),
(35, 4),
(36, 5),
(36, 6),
(36, 7),
(36, 8),
(37, 1),
(37, 2),
(37, 3),
(37, 4);

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
