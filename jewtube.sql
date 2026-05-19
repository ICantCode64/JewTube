-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 19 2026 г., 19:44
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `jewtube`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `videoid` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `parentid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `videoid`, `userid`, `comment`, `created_at`, `parentid`) VALUES
(1, '1', '3', 'Sigma', '2026-05-17 17:23:49', NULL),
(3, '1', '3', 'nah', '2026-05-17 18:12:14', 2),
(4, '1', '3', 'nah bos', '2026-05-17 18:13:01', 2),
(6, '7', '4', 'jewtube shorts leak???', '2026-05-17 21:01:31', NULL),
(7, '11', '4', '😂😂😂', '2026-05-17 21:07:09', NULL),
(8, '8', '5', 'fucking wowowwowowowk', '2026-05-17 21:07:35', NULL),
(10, '12', '5', 'i love these piano videos', '2026-05-17 21:23:22', NULL),
(11, '13', '5', 'lol', '2026-05-17 21:24:05', NULL),
(12, '13', '4', 'loll', '2026-05-17 21:26:06', 11),
(13, '13', '3', 'soapy', '2026-05-17 21:54:50', 11),
(14, '15', '4', 'w0w z0 t4ff v1d30 s1r 1 l0v3 y0u', '2026-05-17 22:26:15', NULL),
(15, '8', '6', 'Welcome to Swooden hey hey! Where everyday is the 15 of MAYYYY, Here we live without trying where nobodys crying where all over swooden balloogens are flyinggg!! Dab du..... duh.... Wh... WHAT??? The sunshine is sunning, hey hey! Where the rivers are running.. Hey hey! all the boaters are boating, the floaters are floating, and everyones humming sweet notes in theyre throating..', '2026-05-17 22:32:07', NULL),
(16, '22', '3', 'Wtf is this', '2026-05-17 22:46:56', NULL),
(17, '22', '4', 'idk . i just had ts saved on my pc', '2026-05-17 22:48:50', 16),
(19, '27', '3', 'Omg real!! Good fr!', '2026-05-18 15:50:35', NULL),
(20, '25', '7', 'goonblox', '2026-05-18 17:23:17', NULL),
(21, '30', '7', '3 as he is my idol', '2026-05-18 17:43:55', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `videoid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `history`
--

INSERT INTO `history` (`id`, `userid`, `videoid`, `created_at`) VALUES
(1, 0, 25, '2026-05-18 12:49:17'),
(2, 0, 25, '2026-05-18 12:49:17'),
(3, 0, 25, '2026-05-18 12:49:45'),
(6, 6, 21, '2026-05-18 12:50:54'),
(8, 6, 13, '2026-05-18 12:51:14'),
(9, 6, 13, '2026-05-18 12:51:34'),
(10, 6, 21, '2026-05-18 12:51:51'),
(11, 6, 25, '2026-05-18 12:52:14'),
(25, 3, 24, '2026-05-18 13:14:16'),
(26, 3, 24, '2026-05-18 13:14:18'),
(27, 6, 25, '2026-05-18 13:15:34'),
(28, 6, 25, '2026-05-18 13:15:36'),
(29, 6, 25, '2026-05-18 13:15:36'),
(30, 6, 25, '2026-05-18 13:15:37'),
(31, 6, 25, '2026-05-18 13:15:40'),
(32, 3, 24, '2026-05-18 13:15:51'),
(33, 3, 25, '2026-05-18 13:15:54'),
(34, 3, 25, '2026-05-18 13:15:55'),
(35, 3, 23, '2026-05-18 13:15:58'),
(36, 3, 23, '2026-05-18 13:16:00'),
(37, 3, 21, '2026-05-18 13:16:02'),
(38, 3, 21, '2026-05-18 13:16:04'),
(39, 3, 20, '2026-05-18 13:16:07'),
(40, 3, 20, '2026-05-18 13:16:09'),
(41, 3, 13, '2026-05-18 13:19:16'),
(42, 7, 25, '2026-05-18 13:21:33'),
(43, 7, 25, '2026-05-18 13:23:10'),
(44, 7, 25, '2026-05-18 13:26:52'),
(45, 7, 25, '2026-05-18 13:31:13'),
(46, 7, 26, '2026-05-18 13:36:58'),
(47, 7, 26, '2026-05-18 13:37:10'),
(48, 6, 26, '2026-05-18 13:39:19'),
(49, 6, 25, '2026-05-18 13:39:34'),
(50, 3, 20, '2026-05-18 13:40:58'),
(51, 7, 26, '2026-05-18 13:43:14'),
(52, 3, 23, '2026-05-18 13:43:56'),
(53, 3, 26, '2026-05-18 13:46:44'),
(54, 7, 27, '2026-05-18 13:49:21'),
(55, 3, 27, '2026-05-18 13:50:24'),
(56, 3, 27, '2026-05-18 13:50:35'),
(57, 7, 27, '2026-05-18 13:51:50'),
(58, 3, 20, '2026-05-18 13:58:57'),
(59, 7, 27, '2026-05-18 13:59:41'),
(60, 3, 20, '2026-05-18 14:01:24'),
(61, 7, 28, '2026-05-18 14:06:10'),
(62, 3, 20, '2026-05-18 14:08:45'),
(63, 3, 20, '2026-05-18 14:08:52'),
(64, 3, 28, '2026-05-18 14:09:10'),
(65, 3, 28, '2026-05-18 14:09:22'),
(66, 7, 13, '2026-05-18 14:11:58'),
(67, 3, 28, '2026-05-18 14:12:24'),
(68, 3, 23, '2026-05-18 14:14:22'),
(69, 3, 23, '2026-05-18 14:14:31'),
(70, 3, 28, '2026-05-18 14:17:50'),
(71, 3, 16, '2026-05-18 14:23:32'),
(72, 3, 16, '2026-05-18 14:25:54'),
(73, 7, 26, '2026-05-18 15:21:41'),
(74, 7, 25, '2026-05-18 15:22:06'),
(75, 7, 25, '2026-05-18 15:23:18'),
(76, 7, 28, '2026-05-18 15:34:49'),
(77, 7, 29, '2026-05-18 15:40:55'),
(78, 3, 30, '2026-05-18 15:43:05'),
(79, 7, 30, '2026-05-18 15:43:28'),
(80, 3, 29, '2026-05-18 15:43:30'),
(81, 7, 30, '2026-05-18 15:44:31'),
(82, 3, 23, '2026-05-18 15:44:49'),
(83, 7, 12, '2026-05-18 15:46:12'),
(84, 3, 31, '2026-05-18 15:53:27'),
(85, 3, 31, '2026-05-18 15:54:05'),
(86, 7, 31, '2026-05-18 15:54:11'),
(87, 3, 25, '2026-05-18 15:55:29'),
(88, 3, 25, '2026-05-18 15:55:34'),
(89, 3, 25, '2026-05-18 15:55:35'),
(90, 7, 32, '2026-05-18 15:58:55'),
(91, 5, 32, '2026-05-18 16:00:01'),
(92, 5, 32, '2026-05-18 16:00:42'),
(93, 5, 33, '2026-05-18 16:05:10'),
(94, 5, 34, '2026-05-18 16:05:43'),
(95, 5, 35, '2026-05-18 16:09:42'),
(96, 5, 36, '2026-05-18 16:12:31'),
(97, 5, 37, '2026-05-18 16:18:38'),
(98, 5, 38, '2026-05-18 16:24:36'),
(99, 7, 39, '2026-05-18 16:27:54'),
(100, 3, 39, '2026-05-18 16:33:01'),
(101, 7, 40, '2026-05-18 16:33:04'),
(102, 7, 39, '2026-05-18 16:39:47'),
(103, 3, 40, '2026-05-18 17:27:45'),
(104, 8, 25, '2026-05-19 13:43:01'),
(105, 8, 25, '2026-05-19 13:43:10'),
(106, 7, 32, '2026-05-19 14:26:43'),
(107, 7, 32, '2026-05-19 14:27:15'),
(108, 7, 40, '2026-05-19 14:27:23'),
(109, 5, 11, '2026-05-19 15:14:47');

-- --------------------------------------------------------

--
-- Структура таблицы `playlists`
--

CREATE TABLE `playlists` (
  `playlistid` int(11) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `playlists`
--

INSERT INTO `playlists` (`playlistid`, `ownerid`, `name`, `description`, `created_at`) VALUES
(3, 7, 'ROBLOX', 'ok                                                    ', '2026-05-18 14:09:08'),
(4, 3, 'testing', 'testing', '2026-05-18 14:12:12');

-- --------------------------------------------------------

--
-- Структура таблицы `playlist_videos`
--

CREATE TABLE `playlist_videos` (
  `id` int(11) NOT NULL,
  `playlistid` int(11) NOT NULL,
  `videoid` int(11) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `playlist_videos`
--

INSERT INTO `playlist_videos` (`id`, `playlistid`, `videoid`, `added_at`) VALUES
(4, 3, 28, '2026-05-18 14:09:48'),
(5, 3, 27, '2026-05-18 14:09:58'),
(6, 4, 23, '2026-05-18 14:14:29');

-- --------------------------------------------------------

--
-- Структура таблицы `rated`
--

CREATE TABLE `rated` (
  `id` int(11) NOT NULL,
  `videoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `ratetype` enum('like','dislike') NOT NULL,
  `rated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `rated`
--

INSERT INTO `rated` (`id`, `videoid`, `userid`, `ratetype`, `rated_at`) VALUES
(3, 24, 3, 'like', '2026-05-18 13:14:18'),
(6, 23, 3, 'like', '2026-05-18 13:16:00'),
(7, 21, 3, 'like', '2026-05-18 13:16:04'),
(8, 20, 3, 'like', '2026-05-18 13:16:09'),
(9, 26, 7, 'like', '2026-05-18 13:37:09'),
(10, 27, 7, 'like', '2026-05-18 13:59:22'),
(11, 25, 3, 'like', '2026-05-18 15:55:35');

-- --------------------------------------------------------

--
-- Структура таблицы `subscriptions`
--

CREATE TABLE `subscriptions` (
  `subscribeid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `subscriberid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `subscriptions`
--

INSERT INTO `subscriptions` (`subscribeid`, `userid`, `subscriberid`) VALUES
(8, 5, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` text NOT NULL,
  `description` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `subscribers` int(11) NOT NULL,
  `role` enum('user','moderator','admin','') NOT NULL DEFAULT 'user',
  `banned` tinyint(1) DEFAULT 0,
  `banreason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`userid`, `username`, `description`, `password`, `email`, `created_at`, `subscribers`, `role`, `banned`, `banreason`) VALUES
(1, 'Admin', 'This is an admin account of JewTube', '', '', '2026-05-17 13:24:44', 0, 'admin', 0, ''),
(3, 'Jew', '', '$2y$10$B7jgTFfApSNl5f9BeT2xU.4SoJDSv9wl3rEhP3vIY0cXlobSGkZaa', '', '2026-05-17 13:49:45', 1, 'admin', 0, ''),
(4, 'zook', '', '$2y$10$GbyxQghyMdeDkhl0bgbgCeqUUV9ECRP64l1B0THiMwQJtDXovwktS', 'diddy@gmail.com', '2026-05-17 18:50:25', 0, 'user', 0, ''),
(5, 'gret', '', '$2y$10$9Rm6Uxf9o6NoM9WqdHXrHuPVzUMuRM95HxBKdh/OZ7HGa.jywgq.K', 'gretisnice@hotmail.com', '2026-05-17 18:58:55', 1, 'user', 0, ''),
(6, 'Dr3ddx', '', '$2y$10$LH.xCauP2To4bJolEBjaGOf.e2mfDE/dP02arllQUb7Zok8o6DNz6', 'manrobux1234@gmail.com', '2026-05-17 20:28:02', 0, 'user', 0, ''),
(7, 'AlbertsStuff', '', '$2y$10$dwbqERedV1Bh4GNe2tZszeii5tU0UwobX.QFbtDuZ59dmH6LAQGve', 'didd@gmail.com', '2026-05-18 13:15:30', 0, 'user', 0, ''),
(8, 'Bouldrr', '', '$2y$10$N97TaYv9ZdOXSSxU/.LDTOS1MoyFQg2U7Tq/nLAVs9U.OD8VmdJFS', 'bouldrr61@gmail.com', '2026-05-19 13:42:43', 0, 'user', 0, ''),
(9, 'Adrian Shephard', '', '$2y$10$bUHNiSyCH.105Weys8uj4OTeYZse2dck0.IjVJRp3b45.hQ5jYtRS', 'hodzikonbro@gmail.com', '2026-05-19 15:06:17', 0, 'user', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `videos`
--

CREATE TABLE `videos` (
  `videoid` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `authorid` int(11) NOT NULL DEFAULT 0,
  `likes` int(11) NOT NULL DEFAULT 0,
  `dislikes` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `published_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `filename` text NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `videos`
--

INSERT INTO `videos` (`videoid`, `name`, `description`, `authorid`, `likes`, `dislikes`, `views`, `published_at`, `filename`, `duration`) VALUES
(6, 'Hacks in polytroia | Part 1', 'Yeah im gonna show my hacks, yall wont get them! Loosers!', 3, 0, 0, 30, '2026-05-17 20:42:09', '6a0a0c645722c.mp4', 158),
(7, 'Some random clip', 'Clipped', 3, 0, 0, 8, '2026-05-17 20:51:21', '6a0a0fb1b266c.mov', 16),
(8, 'swooden', '', 4, 0, 0, 14, '2026-05-17 20:49:54', '6a0a103d166bb.mp4', 101),
(9, 'Render of character', 'some shitty ass render ig', 3, 0, 0, 4, '2026-05-17 20:42:09', '6a0a103d200e0.mp4', 8),
(11, 'Luigi and mario', 'yea', 5, 0, 0, 11, '2026-05-17 20:44:47', '6a0a111806dcc.mp4', 70),
(12, 'RUSH PIGGIES', 'Reuploaded from https://www.youtube.com/watch?v=Ne5auu6TAaY', 3, 0, 0, 4, '2026-05-17 20:42:09', '6a0a1571095b1.mp4', 149),
(13, '\"im sorry!\" lost shit media 😂😂', 'ts was rotting on my pc', 4, 0, 0, 17, '2026-05-17 20:44:00', '6a0a1577b737d.mp4', 19),
(14, 'retrostudio april fools hahahahahaaaaaaaaaaaaaaaaaahahahahaah hsahshahahahah ha hah aha ha hah ah ah ah ahha ah ha hah a', '', 4, 0, 0, 12, '2026-05-17 20:52:38', '6a0a17eba4bd8.mp4', 43),
(15, 'Admin Panel on roblox!!!!', 'Yeah so i found this video that shows admin panel on roblox. Hope yall like it!', 3, 0, 0, 3, '2026-05-17 20:42:09', '6a0a1ed6aa5f5.mp4', 243),
(16, 'Roblox Anthem', 'Yay, nostalgia!', 3, 0, 0, 5, '2026-05-17 20:42:09', '6a0a20dab2d98.mp4', 65),
(17, 'HFJONE: Ready to Die (Fan Animation)', 'An animation that tries to sum up ONE to the best of it\'s ability.\r\nTook a little less than two months to complete.\r\n\r\nReuploaded from https://www.youtube.com/watch?v=C5ZJw7BVJIs', 3, 0, 0, 6, '2026-05-17 20:42:09', '6a0a2189a9317.mp4', 85),
(18, 'the boiled one', '', 6, 0, 0, 4, '2026-05-17 20:41:47', '6a0a24e1a7b7b.mp4', 32),
(19, ' yeah... kids are kinda stupid', 'r/kidsarestupid Top Posts , The Best Of r/kidsarestupid\r\n\r\nToday we take a look at the Top Posts from the r/kidsarestupid subreddit. Enjoy!\r\n\r\nReuploaded from https://www.youtube.com/watch?v=71dfRXftlFM', 3, 0, 0, 6, '2026-05-17 20:43:44', '6a0a2594b2032.mp4', 725),
(20, 'y', 'y', 6, 1, 0, 11, '2026-05-17 20:41:47', '6a0a26c8f1104.mp4', 21),
(21, 'BFDI 1a: Take the Plunge', 'Twenty characters\' fight for Dream Island begins when a mysterious speaker-thing falls from the sky, sparking competition!\r\n\r\nAnimated with Macromedia Flash 8, which has since evolved into Adobe Animate 2020', 6, 1, 0, 11, '2026-05-17 20:49:02', '6a0a27aa88646.mp4', 422),
(22, 'pwndablos', '', 4, 0, 0, 5, '2026-05-17 20:48:50', '6a0a28eea0669.mp4', 37),
(23, 'MI PAN SU SU SUM (VGR 2021 EDM Remix) [Tik Tok Song]', '▶️ Mi Pan Su Su Sum (VGR 2021 EDM Remix) 🎵\r\nHELP US TO 3 MILLION SUBSCRIBERS: http://bit.ly/DTBSubscribe\r\nClick that 🔔 to turn on notifications!  DO NOT MISS AN UPLOAD!\r\n\r\n🔽 Download/Stream this Song d(^_^)b 🔽\r\n  / mi-pan-su-su-sum-vgr-remix  \r\n\r\nSubscribe to VGR:    / videogameremixes  \r\n\r\n🎶 Exclusive Drop the Bassline Playlists 🎶 \r\n🔸 Memes & Themes: http://bit.ly/Memes-Themes\r\n🔸 Trap:  http://bit.ly/DTBTrap\r\n🔸 Dubstep:  http://bit.ly/DTBDubstep\r\n🔸 Future Bass:  http://bit.ly/DTBFuture\r\n🔸 Electro House:  http://bit.ly/DTBElectro \r\n🔸 EDM:  http://bit.ly/DTBEDM\r\n\r\n➥ Follow VGR\r\n  / videogameremixes  \r\n  / vgremixes  \r\n   / videogameremixes  \r\nhttps://open.spotify.com/artist/3pCoH...\r\n\r\n➥ Follow Drop the Bassline \r\n  / bassdrop  \r\n  / drop-the-bassline  \r\n  / dropthebassline  \r\n  / dropthebassline  \r\nhttp://audius.co/dropthabassline\r\n  / dropthabassline  \r\n\r\nFor playlist placements, please email dropthabassline@gmail.com\r\n\r\n➥ Submit Your Music & Wallpapers!\r\ndropthabassline@gmail.com\r\n\r\n*The song and the artwork are not free to use.  Please contact the artist(s).\r\n\r\n*If your work was used in this video and you feel it has not been properly credited or permissed, please email dropthabassline@gmail.com and we will remove it immediately!\r\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\r\nTags: #MiPan #SuSu #Sum #Llama #EDM #VGR #DroptheBassline #Meme\r\n\r\nLetra/Lyrics\r\nMi pan su su su, su su sum\r\nMi pan askkakus ñam ña ñam\r\nMi paaaaaan\r\nSususususususu\r\nAre you ready Bryan?\r\nAll Right\r\nMi pan su su su, su su sum\r\nMi pan askkakus ñam ña ñam\r\nMi paaaaaan\r\nSususususususu\r\nDJ Bryanflow (Vamos pal perreo)\r\nSolo vine a darle\r\nPan, pan, pan, pan\r\nPan, pan, pan, pan\r\nPan, pan, pan, pan\r\nPan, pan, pan, pan\r\nPan, pan, pan, pan\r\nPan, pan, pan, pan\r\nPan, pan, pan, pan\r\nPan, pan, pan, pan\r\nPan, pan, pan, pan\r\nPan, pan, pan, pan\r\nPan, pan, pan, pan\r\nPan, pan, pan, pan\r\nPan, pan, pan, pan\r\nPan, pan, pan, pan\r\nPan, pan, pan, pan\r\nPan, pan, pan, pan\r\nMe aprovecho y pan\r\nLa toco y pan\r\nMe aprovecho y pan\r\nLa toco y pan\r\nMe aprovecho y pan\r\nLa toco y pan\r\nMe aprovecho y pan\r\nLa toco y pan (Bryan Flow!)\r\nMe aprovecho, la toco\r\nMe aprovecho, la toco\r\nMe aprovecho, la azoto y pan\r\nMe aprovecho, la azoto\r\nMe aprovechom la toco\r\nMe aprovecho, la azoto y pan\r\nMi pan su su su, su su sum\r\nMi pan askkakus ñam ñam (mamita dile)\r\nMi paaaaaan\r\nSususususususu (Tengo el traductor aquí)\r\nDJ Bryanflow\r\nMi pan su su su, su su sum\r\nMi pan askkakus ñam ñam\r\nMi paaaaaan\r\nSususususususu\r\nDJ Bryan Flow\r\nRampapapampampampam\r\nRampapapampampampam\r\nRampapapampampampam\r\nRampapa-Rampapa-Rampapa-Rampapam \r\nPam, pam, pam, pam, pam, pam\r\nRampapam, pam, pam, pam, pam, pam, pam\r\nRampapam, pam, pam, pam, pam, pam, pam\r\nPam, pam, pam, pam, pam, pam\r\nRampapam, pam, pam, pam, pam, pam, pam\r\nPam, pam, pam, pam, pam, pam\r\n\r\n0:00​ Mi Pan Su Su Sum Remix (VGR Remix) to First Drop\r\n1:48​ Second Drop\r\n2:53 Repeat\r\n', 6, 1, 0, 12, '2026-05-17 20:59:07', '6a0a2c1ae102f.mp4', 173),
(24, 'Dihnobe', 'Finobe', 6, 1, 0, 7, '2026-05-18 12:40:55', '6a0b08d76708c.mp4', 148),
(25, 'POOBLOX - Trailer', 'Edited and put together by Jquery.\r\n\r\nWelcome to POOBLOX! Our mission is to emulate a web site and game client of a classic brickbattling game (RŌBLOX) before it became more of a realistic meme in today\'s Internet culture. We are \"a different kind of revival project\" - essentially being a web site revival, game revival, and to also be more professional and serious than any other revival that has existed. Check us out on https://ryblox.xyz - there\'s always something new each day!\r\n\r\nCongratulations to Art, lolo999, blocky, zzz, and Automatic for their amazing entries! Thank you all for an incredible amount of submissions for this contest.\r\n\r\nOur current active staff team:\r\nJFK (assassinated)\r\nJquery (old and stupid)\r\nPinInBalls (hes a bottom)\r\n67 (meme)\r\ndeo (gets cracked)\r\npizzadoxer (com-kid)\r\nDihrio (sucks dih)\r\nZanryth (foid)\r\n\r\nThank you for checking out our last video.\r\n', 6, 1, 0, 43, '2026-05-18 12:47:12', '6a0b0a50c3f9d.mp4', 103),
(26, 'THROWING A PARTY IN ROBLOX (4,7MB version)', 'ts worse vid oat\r\ni compressed it so hard that it looks like those lost media shit', 7, 1, 0, 7, '2026-05-18 13:36:58', '6a0b15fa4031d.mp4', 938),
(27, 'THROWING A PARTY IN ROBLOX (real)', '', 7, 1, 0, 5, '2026-05-18 13:49:21', '6a0b18e1077b6.mp4', 938),
(28, 'FUNNY COMMENTS (Online Dating in ROBLOX) ', '', 7, 0, 0, 6, '2026-05-18 14:05:45', '6a0b1cb9822de.mp4', 427),
(29, 'DATING MY NEIGHBOR in HELLO NEIGHBOR', '', 7, 0, 0, 2, '2026-05-18 15:40:54', '6a0b33068d096.mp4', 640),
(30, 'Stupid Kids on the Internet 😭🙏', 'for entertainment purposes only 💯💯', 3, 0, 0, 3, '2026-05-18 15:43:05', '6a0b33898db7b.mp4', 488),
(31, 'CRINGE YouTube Shorts Comments... (June 2025)', 'most cringe yt shorts comments of june 2025 🥀', 3, 0, 0, 3, '2026-05-18 15:53:27', '6a0b35f6dfcfa.mp4', 1355),
(32, 'BIGGEST NOOB IN ROBLOX', '', 7, 0, 0, 5, '2026-05-18 15:58:54', '6a0b373e40e52.mp4', 791),
(33, ' REALISTIC MINECRAFT - PRISON ESCAPE ', 'REALISTIC MINECRAFT - PRISON ESCAPE\r\n\r\nSteve is now in Prison sentenced forever, he wants to break out the Prison. But the Officer watching him the whole time. \r\n\r\nCan Steve break out the Prison?\r\n\r\n\r\nHope you enjoy this Minecraft Realistic Animation!\r\n\r\nDont forget to rate and find HEROBRINE!\r\n\r\n\r\nInspired by: REALISTIC MINECRAFT - STEVE GETS ARRESTED! from NitroLukeDX\r\n\r\nand Realistic Minecraft - Highschool Girlfriend from Kibitz and The Captain\r\n\r\n\r\nSubscribe here: http://bit.ly/1JkbswQ', 5, 0, 0, 1, '2026-05-18 16:05:09', '6a0b38b583433.mp4', 421),
(34, ' Marshmello - Alone (Official Music Video) ', 'Marshmello - Alone (Official Music Video)\r\nStream/Download: https://marshmello.ffm.to/alone\r\n\r\nA lot of people ask me where Alone and its lyrics comes from. Truth is, I had just moved away from my friends and family and I started to feel very home sick and lonely like I didn’t belong in my new settings. Everything was just happening so fast and I couldn’t really grasp where I was or who I was but all i knew was that I felt Alone. With the music video, we really wanted to send a message. Nobody knows how you feel, whether you’re homesick, away from friends and family, or if you simply aren’t like everyone else…its ok. The whole purpose of the Marshmello project and the Mellogang is to bring together people from every corner of the world and create a family…a family that we can all count on to never let us feel Alone. I hope you guys enjoy this video as much as I do. It gives me the feels for sure.\r\n\r\nSUBSCRIBE HERE for more of the best music ▶ http://youtube.com/marshmellomusic?su...\r\n\r\nPLAY MARSHMELLO MUSIC DANCE HERE ▶ http://smarturl.it/mellomusicdance\r\n\r\nFollow Marshmello\'s \'Keep It Mello\' Spotify Playlist ▶ https://spoti.fi/2OuMHG0\r\n\r\nWatch Gaming with Marshmello HERE ▶    • Gaming with Marshmello  \r\n\r\nWatch Cooking with Marshmello HERE ▶    • Cooking with Marshmello  \r\n\r\nWATCH ONE THING RIGHT ▶    • Marshmello x Kane Brown - One Thing Right ...  \r\nWATCH LIGHT IT UP MUSIC VIDEO ▶    • Marshmello - Light It Up ft. Tyga & Chris ...  \r\nWATCH HERE WITH ME MUSIC VIDEO ▶    • Marshmello - Here With Me Feat. CHVRCHES (...  \r\nWATCH BIBA MUSIC VIDEO ▶    • Marshmello x Pritam - BIBA feat. Shirley S...  \r\nWATCH PROJECT DREAMS MUSIC VIDEO ▶    • Marshmello x Roddy Ricch - Project Dreams ...  \r\nWATCH HAPPIER MUSIC VIDEO ▶    • Marshmello ft. Bastille - Happier (Officia...  \r\nWATCH TOGETHER MUSIC VIDEO ▶    • Marshmello - Together (Official Music Video)  \r\nWATCH BAYEN HABEIT LYRIC VIDEO ▶    • Marshmello & Amr Diab - Bayen Habeit \"In L...  \r\nWATCH STARS MUSIC VIDEO ▶    • Marshmello - Stars (Official Music Video)  \r\nWATCH FLASHBACKS MUSIC VIDEO ▶    • Marshmello - Flashbacks (Official Music Vi...  \r\nWATCH YOU CAN CRY MUSIC VIDEO ▶    • Marshmello x Juicy J - You Can Cry (Ft. Ja...  \r\nWATCH EVERYDAY MUSIC VIDEO ▶    • Marshmello & Logic - EVERYDAY (Official Mu...  \r\nWATCH FLY MUSIC VIDEO ▶    • Marshmello - FLY (Official Music Video)  \r\nWATCH FRIENDS MUSIC VIDEO ▶    • Marshmello & Anne-Marie - FRIENDS (Music V...  \r\nWATCH SPOTLIGHT MUSIC VIDEO ▶    • Marshmello x Lil Peep - Spotlight (Officia...  \r\nWATCH LOVE U MUSIC VIDEO ▶    • Marshmello - LoVe U (Official Music Video)  \r\nWATCH TAKE IT BACK MUSIC VIDEO ▶    • Marshmello - Take It Back (Official Music ...  \r\nWATCH SILENCE MUSIC VIDEO ▶    • Marshmello - Silence Ft. Khalid (Official ...  \r\nWATCH BLOCKS MUSIC VIDEO ▶    • Marshmello - Blocks (Official Music Video)  \r\nWATCH YOU & ME MUSIC VIDEO ▶    • Marshmello - You & Me (Official Music Video)  \r\nWATCH FIND ME MUSIC VIDEO ▶    • Marshmello - Find Me (Official Music Video)  \r\nWATCH MOVING ON MUSIC VIDEO ▶    • Marshmello - Moving On (Official Music Video)  \r\nWATCH SUMMER MUSIC VIDEO ▶    • Marshmello - Summer (Official Music Video)...  \r\nWATCH KEEP IT MELLO MUSIC VIDEO ▶    • Marshmello - KeEp IT MeLLo Feat. Omar LinX  \r\nWATCH RESCUE ME ▶    • Marshmello x Kane Brown - One Thing Right ...   \r\n\r\nMARSHMELLO: \r\nMerch: http://mellogang.com\r\nSpotify | http://spoti.fi/2lxqzzm\r\nApple Music | http://apple.co/2n8Evz6\r\nSoundCloud |   / marshmellomusic  \r\nInstagram |   / marshmello  \r\nTwitter |   / marshmello  \r\nFacebook |   / marshmello  \r\nTwitch |   / marshmellomusic  \r\nTikTok |   / marshmello  \r\n\r\nDirector: Daniel Burke\r\nCreative Agency: 23FIFTN\r\nCreative Director: Daniel Malikyar, Karam Gill\r\nExecutive Producer: Reed Matthews\r\nProducer: Karam Gill & Jack Winter\r\nDirector of Photography: Ian Quill\r\n1st AD: Helena McGill\r\nUnit Production Manager: Steven Taylor\r\nProduction Coordinator: Jake Herman & Cole Mier\r\nProduction Designer: Bryce Neville\r\nEditor/DIT: Alex Crosby\r\nColorist: Kinan Chabani\r\n\r\n#Marshmello #Alone #Mellogang #Popular #Trending', 5, 0, 0, 1, '2026-05-18 16:05:42', '6a0b38d6b7f0d.mp4', 199),
(35, ' Me at the zoo ', 'Microplastics are accumulating in human brains at an alarming rate\r\n   • Microplastics are accumulating in human br...  \r\n\r\n“Nanoplastics and Human Health” with Matthew J Campen, PhD, MSPH\r\n   • “Nanoplastics and Human Health” with Matth...  \r\n\r\n00:00 Intro\r\n00:05 The cool thing\r\n00:17 End', 5, 0, 0, 1, '2026-05-18 16:09:42', '6a0b39c648b1c.mp4', 19),
(36, ' The Annoying Orange ', '', 5, 0, 0, 1, '2026-05-18 16:12:30', '6a0b3a6e836a9.mp4', 92),
(37, ' /e dance ', '/e dance the night away at http://www.roblox.com.', 5, 0, 0, 1, '2026-05-18 16:18:36', '6a0b3bdc53679.mp4', 40),
(38, ' ROBLOX BULLY STORY - Sing Me To Sleep (Alan Walker) ', 'This is a roblox music video about a girl who feels alone and targeted in her social life, but she later finds out that the people around her want to know her and help her with the problem she has with bullying. The rest of the video is for you to interpret :)\r\n\r\nJOIN THE GROUP: https://www.roblox.com/Groups/Group.a...\r\n\r\nIf you are being bullied, PLEASE DO NOT ATTEMPT TO BULLY BACK LIKE THIS VIDEO DISPLAYS, this music video is merely a revenge-fantasy story. Tell an adult or someone you feel comfortable telling that you\'re being bullied; your parents, your teacher, a friend (etc.) and hopefully they will help you out in a more appropriate manner.\r\n\r\n\"If people are trying to bring you down, it only means that you are above them.\"', 5, 0, 0, 1, '2026-05-18 16:24:35', '6a0b3d43173a9.mp4', 187),
(39, 'BLOCKLAND SUCKS', '', 7, 0, 0, 3, '2026-05-18 16:27:26', '6a0b3dee2eeac.mp4', 515),
(40, 'ROBLOX HELLO NEIGHBOR', '', 7, 0, 0, 4, '2026-05-18 16:33:04', '6a0b3f3fd9e2f.mp4', 497);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`playlistid`);

--
-- Индексы таблицы `playlist_videos`
--
ALTER TABLE `playlist_videos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rated`
--
ALTER TABLE `rated`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`subscribeid`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- Индексы таблицы `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`videoid`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT для таблицы `playlists`
--
ALTER TABLE `playlists`
  MODIFY `playlistid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `playlist_videos`
--
ALTER TABLE `playlist_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `rated`
--
ALTER TABLE `rated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `subscribeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `videos`
--
ALTER TABLE `videos`
  MODIFY `videoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
