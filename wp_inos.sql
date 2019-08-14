-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 14 2019 г., 09:15
-- Версия сервера: 5.7.23
-- Версия PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `inos`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-07-11 13:34:52', '2019-07-11 10:34:52', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://inos.local', 'yes'),
(2, 'home', 'http://inos.local', 'yes'),
(3, 'blogname', 'INOS', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'swd.admin@mail.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:56:\"C:\\OSPanel\\domains\\inos/wp-content/themes/inos/style.css\";i:1;s:60:\"C:\\OSPanel\\domains\\inos/wp-content/themes/inos/functions.php\";i:2;s:54:\"C:\\OSPanel\\domains\\inos/wp-content/themes/inos/404.php\";i:3;s:57:\"C:\\OSPanel\\domains\\inos/wp-content/themes/inos/footer.php\";i:5;s:0:\"\";}', 'no'),
(40, 'template', 'inos', 'yes'),
(41, 'stylesheet', 'inos', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:5:{i:1565764492;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1565778892;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1565779154;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1565779156;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1563810329;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(130, 'can_compress_scripts', '1', 'no'),
(145, 'current_theme', '', 'yes'),
(146, 'theme_mods_rsht', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1562842479;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(149, 'theme_mods_inos', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:4:\"left\";i:2;s:6:\"bottom\";i:3;s:3:\"top\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1563095987;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(150, 'recovery_mode_email_last_sent', '1565178729', 'yes'),
(163, 'recently_activated', 'a:0:{}', 'yes'),
(174, 'acf_version', '5.8.2', 'yes'),
(176, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(257, '_transient_health-check-site-status-result', '{\"good\":\"11\",\"recommended\":\"4\",\"critical\":\"1\"}', 'yes'),
(258, 'theme_mods_twentysixteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(260, '_transient_twentysixteen_categories', '1', 'yes'),
(403, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1565757088;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(404, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1565757089;s:7:\"checked\";a:5:{s:4:\"inos\";s:0:\"\";s:4:\"rsht\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(405, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1565757088;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.2\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(579, '_site_transient_timeout_browser_1c6548c1e5fcdb35d7741fd2e4f5f61e', '1566320264', 'no'),
(580, '_site_transient_browser_1c6548c1e5fcdb35d7741fd2e4f5f61e', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(581, '_site_transient_timeout_php_check_e481018c713db17b5f16f6d87bf44ece', '1566320264', 'no'),
(582, '_site_transient_php_check_e481018c713db17b5f16f6d87bf44ece', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:1;}', 'no'),
(588, '_site_transient_timeout_theme_roots', '1565758888', 'no'),
(589, '_site_transient_theme_roots', 'a:5:{s:4:\"inos\";s:7:\"/themes\";s:4:\"rsht\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(592, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1565806503', 'no'),
(593, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1565015289:1'),
(16, 9, '_edit_lock', '1563863404:1'),
(17, 9, '_wp_trash_meta_status', 'publish'),
(18, 9, '_wp_trash_meta_time', '1563863413'),
(20, 3, '_edit_lock', '1563863312:1'),
(21, 2, '_edit_lock', '1563863917:1'),
(22, 11, '_edit_lock', '1563951149:1'),
(23, 11, '_edit_last', '1'),
(24, 11, '_wp_page_template', 'default'),
(25, 11, '_wp_trash_meta_status', 'publish'),
(26, 11, '_wp_trash_meta_time', '1563951942'),
(27, 11, '_wp_desired_post_slug', 'svedenia'),
(28, 2, '_wp_trash_meta_status', 'draft'),
(29, 2, '_wp_trash_meta_time', '1563951945'),
(30, 2, '_wp_desired_post_slug', 'osnovnie-svedenia'),
(33, 22, '_edit_lock', '1563952754:1'),
(34, 24, '_edit_lock', '1564475213:1'),
(35, 3, '_wp_trash_meta_status', 'draft'),
(36, 3, '_wp_trash_meta_time', '1564321835'),
(37, 3, '_wp_desired_post_slug', 'privacy-policy'),
(38, 28, '_edit_lock', '1564493490:1'),
(39, 31, '_edit_lock', '1565028578:1'),
(40, 34, '_edit_lock', '1564397683:1'),
(41, 44, '_wp_attached_file', '2019/07/карта2-red.png'),
(42, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:869;s:6:\"height\";i:368;s:4:\"file\";s:27:\"2019/07/карта2-red.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"карта2-red-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"карта2-red-300x127.png\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"карта2-red-768x325.png\";s:5:\"width\";i:768;s:6:\"height\";i:325;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 45, '_wp_attached_file', '2019/07/карта3-red.png'),
(44, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:636;s:6:\"height\";i:532;s:4:\"file\";s:27:\"2019/07/карта3-red.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"карта3-red-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"карта3-red-300x251.png\";s:5:\"width\";i:300;s:6:\"height\";i:251;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 46, '_wp_attached_file', '2019/07/фото-мин-red.png'),
(46, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:745;s:6:\"height\";i:446;s:4:\"file\";s:31:\"2019/07/фото-мин-red.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"фото-мин-red-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"фото-мин-red-300x180.png\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 48, '_wp_attached_file', '2019/07/карта2-red-1.png'),
(48, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:869;s:6:\"height\";i:368;s:4:\"file\";s:29:\"2019/07/карта2-red-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"карта2-red-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"карта2-red-1-300x127.png\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"карта2-red-1-768x325.png\";s:5:\"width\";i:768;s:6:\"height\";i:325;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 48, '_edit_lock', '1564393751:1'),
(50, 52, '_edit_lock', '1564399894:1'),
(51, 57, '_edit_lock', '1564483635:1'),
(52, 59, '_edit_lock', '1565271169:1'),
(53, 61, '_edit_lock', '1564558145:1'),
(54, 63, '_edit_lock', '1564557710:1'),
(55, 65, '_edit_lock', '1564559796:1'),
(56, 67, '_menu_item_type', 'post_type'),
(57, 67, '_menu_item_menu_item_parent', '0'),
(58, 67, '_menu_item_object_id', '65'),
(59, 67, '_menu_item_object', 'page'),
(60, 67, '_menu_item_target', ''),
(61, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 67, '_menu_item_xfn', ''),
(63, 67, '_menu_item_url', ''),
(65, 67, 'test', 'некн'),
(66, 67, '_test', 'field_5d2af382cac19'),
(67, 67, 'color_class', 'menu-btn-color-1'),
(68, 67, '_color_class', 'field_5d483ba09bc99'),
(69, 67, 'img_class', 'img-btn-11'),
(70, 67, '_img_class', 'field_5d483d31056dc'),
(71, 70, '_edit_last', '1'),
(72, 70, '_edit_lock', '1565016781:1'),
(84, 31, '_wp_trash_meta_status', 'publish'),
(85, 31, '_wp_trash_meta_time', '1565028727'),
(86, 31, '_wp_desired_post_slug', 'table'),
(87, 73, '_edit_lock', '1565028984:1'),
(88, 75, '_edit_lock', '1565029101:1'),
(89, 77, '_edit_lock', '1565029306:1'),
(90, 79, '_edit_lock', '1565029337:1'),
(157, 87, '_menu_item_type', 'custom'),
(158, 87, '_menu_item_menu_item_parent', '0'),
(159, 87, '_menu_item_object_id', '87'),
(160, 87, '_menu_item_object', 'custom'),
(161, 87, '_menu_item_target', ''),
(162, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(163, 87, '_menu_item_xfn', ''),
(164, 87, '_menu_item_url', '/'),
(166, 87, 'color_class', 'menu-btn-color-1'),
(167, 87, '_color_class', 'field_5d483ba09bc99'),
(168, 87, 'img_class', 'img-btn-1'),
(169, 87, '_img_class', 'field_5d483d31056dc'),
(170, 88, '_menu_item_type', 'post_type'),
(171, 88, '_menu_item_menu_item_parent', '0'),
(172, 88, '_menu_item_object_id', '24'),
(173, 88, '_menu_item_object', 'page'),
(174, 88, '_menu_item_target', ''),
(175, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 88, '_menu_item_xfn', ''),
(177, 88, '_menu_item_url', ''),
(179, 88, 'color_class', 'menu-btn-color-2'),
(180, 88, '_color_class', 'field_5d483ba09bc99'),
(181, 88, 'img_class', 'img-btn-2'),
(182, 88, '_img_class', 'field_5d483d31056dc'),
(183, 89, '_menu_item_type', 'post_type'),
(184, 89, '_menu_item_menu_item_parent', '0'),
(185, 89, '_menu_item_object_id', '28'),
(186, 89, '_menu_item_object', 'page'),
(187, 89, '_menu_item_target', ''),
(188, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(189, 89, '_menu_item_xfn', ''),
(190, 89, '_menu_item_url', ''),
(192, 89, 'color_class', 'menu-btn-color-3'),
(193, 89, '_color_class', 'field_5d483ba09bc99'),
(194, 89, 'img_class', 'img-btn-3'),
(195, 89, '_img_class', 'field_5d483d31056dc'),
(196, 90, '_menu_item_type', 'post_type'),
(197, 90, '_menu_item_menu_item_parent', '0'),
(198, 90, '_menu_item_object_id', '34'),
(199, 90, '_menu_item_object', 'page'),
(200, 90, '_menu_item_target', ''),
(201, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(202, 90, '_menu_item_xfn', ''),
(203, 90, '_menu_item_url', ''),
(205, 90, 'color_class', 'menu-btn-color-4'),
(206, 90, '_color_class', 'field_5d483ba09bc99'),
(207, 90, 'img_class', 'img-btn-4'),
(208, 90, '_img_class', 'field_5d483d31056dc'),
(209, 91, '_menu_item_type', 'post_type'),
(210, 91, '_menu_item_menu_item_parent', '0'),
(211, 91, '_menu_item_object_id', '22'),
(212, 91, '_menu_item_object', 'page'),
(213, 91, '_menu_item_target', ''),
(214, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(215, 91, '_menu_item_xfn', ''),
(216, 91, '_menu_item_url', ''),
(218, 91, 'color_class', 'menu-btn-color-5'),
(219, 91, '_color_class', 'field_5d483ba09bc99'),
(220, 91, 'img_class', 'img-btn-5'),
(221, 91, '_img_class', 'field_5d483d31056dc'),
(222, 92, '_menu_item_type', 'post_type'),
(223, 92, '_menu_item_menu_item_parent', '0'),
(224, 92, '_menu_item_object_id', '52'),
(225, 92, '_menu_item_object', 'page'),
(226, 92, '_menu_item_target', ''),
(227, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(228, 92, '_menu_item_xfn', ''),
(229, 92, '_menu_item_url', ''),
(231, 92, 'color_class', 'menu-btn-color-5'),
(232, 92, '_color_class', 'field_5d483ba09bc99'),
(233, 92, 'img_class', 'img-btn-6'),
(234, 92, '_img_class', 'field_5d483d31056dc'),
(235, 93, '_menu_item_type', 'post_type'),
(236, 93, '_menu_item_menu_item_parent', '0'),
(237, 93, '_menu_item_object_id', '57'),
(238, 93, '_menu_item_object', 'page'),
(239, 93, '_menu_item_target', ''),
(240, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(241, 93, '_menu_item_xfn', ''),
(242, 93, '_menu_item_url', ''),
(244, 93, 'color_class', 'menu-btn-color-1'),
(245, 93, '_color_class', 'field_5d483ba09bc99'),
(246, 93, 'img_class', 'img-btn-3'),
(247, 93, '_img_class', 'field_5d483d31056dc'),
(248, 94, '_menu_item_type', 'post_type'),
(249, 94, '_menu_item_menu_item_parent', '0'),
(250, 94, '_menu_item_object_id', '59'),
(251, 94, '_menu_item_object', 'page'),
(252, 94, '_menu_item_target', ''),
(253, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(254, 94, '_menu_item_xfn', ''),
(255, 94, '_menu_item_url', ''),
(257, 94, 'color_class', 'menu-btn-color-2'),
(258, 94, '_color_class', 'field_5d483ba09bc99'),
(259, 94, 'img_class', 'img-btn-7'),
(260, 94, '_img_class', 'field_5d483d31056dc'),
(261, 95, '_menu_item_type', 'post_type'),
(262, 95, '_menu_item_menu_item_parent', '0'),
(263, 95, '_menu_item_object_id', '61'),
(264, 95, '_menu_item_object', 'page'),
(265, 95, '_menu_item_target', ''),
(266, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(267, 95, '_menu_item_xfn', ''),
(268, 95, '_menu_item_url', ''),
(270, 95, 'color_class', 'menu-btn-color-4'),
(271, 95, '_color_class', 'field_5d483ba09bc99'),
(272, 95, 'img_class', 'img-btn-8'),
(273, 95, '_img_class', 'field_5d483d31056dc'),
(287, 97, '_menu_item_type', 'post_type'),
(288, 97, '_menu_item_menu_item_parent', '0'),
(289, 97, '_menu_item_object_id', '63'),
(290, 97, '_menu_item_object', 'page'),
(291, 97, '_menu_item_target', ''),
(292, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(293, 97, '_menu_item_xfn', ''),
(294, 97, '_menu_item_url', ''),
(296, 97, 'color_class', 'menu-btn-color-6'),
(297, 97, '_color_class', 'field_5d483ba09bc99'),
(298, 97, 'img_class', 'img-btn-10'),
(299, 97, '_img_class', 'field_5d483d31056dc'),
(300, 98, '_menu_item_type', 'post_type'),
(301, 98, '_menu_item_menu_item_parent', '0'),
(302, 98, '_menu_item_object_id', '75'),
(303, 98, '_menu_item_object', 'page'),
(304, 98, '_menu_item_target', ''),
(305, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(306, 98, '_menu_item_xfn', ''),
(307, 98, '_menu_item_url', ''),
(309, 98, 'color_class', 'menu-btn-color-6'),
(310, 98, '_color_class', 'field_5d483ba09bc99'),
(311, 98, 'img_class', 'img-btn-12'),
(312, 98, '_img_class', 'field_5d483d31056dc'),
(443, 109, '_edit_lock', '1565082457:1'),
(444, 111, '_edit_lock', '1565083890:1'),
(445, 113, '_edit_lock', '1565084769:1'),
(446, 115, '_edit_lock', '1565086876:1'),
(447, 118, '_edit_lock', '1565087927:1'),
(448, 120, '_edit_lock', '1565088826:1'),
(449, 122, '_edit_lock', '1565090345:1'),
(450, 124, '_edit_lock', '1565106649:1'),
(451, 126, '_edit_lock', '1565353384:1'),
(452, 128, '_edit_lock', '1565350140:1'),
(453, 130, '_menu_item_type', 'post_type'),
(454, 130, '_menu_item_menu_item_parent', '0'),
(455, 130, '_menu_item_object_id', '73'),
(456, 130, '_menu_item_object', 'page'),
(457, 130, '_menu_item_target', ''),
(458, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(459, 130, '_menu_item_xfn', ''),
(460, 130, '_menu_item_url', ''),
(462, 130, 'color_class', 'menu-btn-color-1'),
(463, 130, '_color_class', 'field_5d483ba09bc99'),
(464, 130, 'img_class', 'img-btn-13'),
(465, 130, '_img_class', 'field_5d483d31056dc'),
(466, 131, '_menu_item_type', 'post_type'),
(467, 131, '_menu_item_menu_item_parent', '0'),
(468, 131, '_menu_item_object_id', '77'),
(469, 131, '_menu_item_object', 'page'),
(470, 131, '_menu_item_target', ''),
(471, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(472, 131, '_menu_item_xfn', ''),
(473, 131, '_menu_item_url', ''),
(475, 131, 'color_class', 'menu-btn-color-2'),
(476, 131, '_color_class', 'field_5d483ba09bc99'),
(477, 131, 'img_class', 'img-btn-14'),
(478, 131, '_img_class', 'field_5d483d31056dc'),
(479, 132, '_menu_item_type', 'post_type'),
(480, 132, '_menu_item_menu_item_parent', '0'),
(481, 132, '_menu_item_object_id', '79'),
(482, 132, '_menu_item_object', 'page'),
(483, 132, '_menu_item_target', ''),
(484, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(485, 132, '_menu_item_xfn', ''),
(486, 132, '_menu_item_url', ''),
(488, 132, 'color_class', 'menu-btn-color-3'),
(489, 132, '_color_class', 'field_5d483ba09bc99'),
(490, 132, 'img_class', 'img-btn-15'),
(491, 132, '_img_class', 'field_5d483d31056dc'),
(492, 133, '_menu_item_type', 'post_type'),
(493, 133, '_menu_item_menu_item_parent', '0'),
(494, 133, '_menu_item_object_id', '109'),
(495, 133, '_menu_item_object', 'page'),
(496, 133, '_menu_item_target', ''),
(497, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(498, 133, '_menu_item_xfn', ''),
(499, 133, '_menu_item_url', ''),
(501, 133, 'color_class', 'menu-btn-color-4'),
(502, 133, '_color_class', 'field_5d483ba09bc99'),
(503, 133, 'img_class', 'img-btn-16'),
(504, 133, '_img_class', 'field_5d483d31056dc'),
(505, 134, '_menu_item_type', 'post_type'),
(506, 134, '_menu_item_menu_item_parent', '0'),
(507, 134, '_menu_item_object_id', '111'),
(508, 134, '_menu_item_object', 'page'),
(509, 134, '_menu_item_target', ''),
(510, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(511, 134, '_menu_item_xfn', ''),
(512, 134, '_menu_item_url', ''),
(514, 134, 'color_class', 'menu-btn-color-5'),
(515, 134, '_color_class', 'field_5d483ba09bc99'),
(516, 134, 'img_class', 'img-btn-17'),
(517, 134, '_img_class', 'field_5d483d31056dc'),
(518, 135, '_menu_item_type', 'post_type'),
(519, 135, '_menu_item_menu_item_parent', '0'),
(520, 135, '_menu_item_object_id', '113'),
(521, 135, '_menu_item_object', 'page'),
(522, 135, '_menu_item_target', ''),
(523, 135, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(524, 135, '_menu_item_xfn', ''),
(525, 135, '_menu_item_url', ''),
(527, 135, 'color_class', 'menu-btn-color-6'),
(528, 135, '_color_class', 'field_5d483ba09bc99'),
(529, 135, 'img_class', 'img-btn-18'),
(530, 135, '_img_class', 'field_5d483d31056dc'),
(531, 136, '_menu_item_type', 'post_type'),
(532, 136, '_menu_item_menu_item_parent', '0'),
(533, 136, '_menu_item_object_id', '115'),
(534, 136, '_menu_item_object', 'page'),
(535, 136, '_menu_item_target', ''),
(536, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(537, 136, '_menu_item_xfn', ''),
(538, 136, '_menu_item_url', ''),
(540, 136, 'color_class', 'menu-btn-color-1'),
(541, 136, '_color_class', 'field_5d483ba09bc99'),
(542, 136, 'img_class', 'img-btn-19'),
(543, 136, '_img_class', 'field_5d483d31056dc'),
(544, 137, '_menu_item_type', 'post_type'),
(545, 137, '_menu_item_menu_item_parent', '0'),
(546, 137, '_menu_item_object_id', '118'),
(547, 137, '_menu_item_object', 'page'),
(548, 137, '_menu_item_target', ''),
(549, 137, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(550, 137, '_menu_item_xfn', ''),
(551, 137, '_menu_item_url', ''),
(553, 137, 'color_class', 'menu-btn-color-2'),
(554, 137, '_color_class', 'field_5d483ba09bc99'),
(555, 137, 'img_class', 'img-btn-20'),
(556, 137, '_img_class', 'field_5d483d31056dc'),
(557, 138, '_menu_item_type', 'post_type'),
(558, 138, '_menu_item_menu_item_parent', '0'),
(559, 138, '_menu_item_object_id', '120'),
(560, 138, '_menu_item_object', 'page'),
(561, 138, '_menu_item_target', ''),
(562, 138, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(563, 138, '_menu_item_xfn', ''),
(564, 138, '_menu_item_url', ''),
(566, 138, 'color_class', 'menu-btn-color-3'),
(567, 138, '_color_class', 'field_5d483ba09bc99'),
(568, 138, 'img_class', 'img-btn-21'),
(569, 138, '_img_class', 'field_5d483d31056dc'),
(570, 139, '_menu_item_type', 'post_type'),
(571, 139, '_menu_item_menu_item_parent', '0'),
(572, 139, '_menu_item_object_id', '122'),
(573, 139, '_menu_item_object', 'page'),
(574, 139, '_menu_item_target', ''),
(575, 139, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(576, 139, '_menu_item_xfn', ''),
(577, 139, '_menu_item_url', ''),
(579, 139, 'color_class', 'menu-btn-color-6'),
(580, 139, '_color_class', 'field_5d483ba09bc99'),
(581, 139, 'img_class', 'img-btn-22'),
(582, 139, '_img_class', 'field_5d483d31056dc'),
(583, 140, '_edit_last', '1'),
(584, 140, '_edit_lock', '1565180024:1'),
(585, 143, '_menu_item_type', 'post_type'),
(586, 143, '_menu_item_menu_item_parent', '0'),
(587, 143, '_menu_item_object_id', '28'),
(588, 143, '_menu_item_object', 'page'),
(589, 143, '_menu_item_target', ''),
(590, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(591, 143, '_menu_item_xfn', ''),
(592, 143, '_menu_item_url', ''),
(594, 143, 'shape', 'circle'),
(595, 143, '_shape', 'field_5d4ac00626401'),
(596, 143, 'coords', '70,50,31'),
(597, 143, '_coords', 'field_5d4ac04226402'),
(598, 144, '_menu_item_type', 'post_type'),
(599, 144, '_menu_item_menu_item_parent', '0'),
(600, 144, '_menu_item_object_id', '24'),
(601, 144, '_menu_item_object', 'page'),
(602, 144, '_menu_item_target', ''),
(603, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(604, 144, '_menu_item_xfn', ''),
(605, 144, '_menu_item_url', ''),
(607, 144, 'shape', 'circle'),
(608, 144, '_shape', 'field_5d4ac00626401'),
(609, 144, 'coords', '79,137,33'),
(610, 144, '_coords', 'field_5d4ac04226402'),
(611, 145, '_menu_item_type', 'post_type'),
(612, 145, '_menu_item_menu_item_parent', '0'),
(613, 145, '_menu_item_object_id', '52'),
(614, 145, '_menu_item_object', 'page'),
(615, 145, '_menu_item_target', ''),
(616, 145, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(617, 145, '_menu_item_xfn', ''),
(618, 145, '_menu_item_url', ''),
(620, 145, 'shape', 'circle'),
(621, 145, '_shape', 'field_5d4ac00626401'),
(622, 145, 'coords', '183,101,50'),
(623, 145, '_coords', 'field_5d4ac04226402'),
(624, 146, '_menu_item_type', 'post_type'),
(625, 146, '_menu_item_menu_item_parent', '0'),
(626, 146, '_menu_item_object_id', '122'),
(627, 146, '_menu_item_object', 'page'),
(628, 146, '_menu_item_target', ''),
(629, 146, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(630, 146, '_menu_item_xfn', ''),
(631, 146, '_menu_item_url', ''),
(633, 146, 'shape', 'circle'),
(634, 146, '_shape', 'field_5d4ac00626401'),
(635, 146, 'coords', '345,50,33'),
(636, 146, '_coords', 'field_5d4ac04226402'),
(650, 148, '_menu_item_type', 'post_type'),
(651, 148, '_menu_item_menu_item_parent', '0'),
(652, 148, '_menu_item_object_id', '65'),
(653, 148, '_menu_item_object', 'page'),
(654, 148, '_menu_item_target', ''),
(655, 148, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(656, 148, '_menu_item_xfn', ''),
(657, 148, '_menu_item_url', ''),
(659, 148, 'shape', 'circle'),
(660, 148, '_shape', 'field_5d4ac00626401'),
(661, 148, 'coords', '460,94,50'),
(662, 148, '_coords', 'field_5d4ac04226402'),
(663, 149, '_edit_lock', '1565271114:1'),
(664, 151, '_edit_lock', '1565271409:1'),
(665, 153, '_edit_lock', '1565354665:1'),
(666, 155, '_edit_lock', '1565334893:1'),
(667, 157, '_edit_lock', '1565282656:1'),
(668, 160, '_edit_lock', '1565282703:1'),
(669, 162, '_edit_lock', '1565334868:1'),
(670, 164, '_edit_lock', '1565286400:1'),
(671, 166, '_edit_lock', '1565353436:1'),
(672, 168, '_edit_lock', '1565334914:1'),
(673, 170, '_edit_lock', '1565326121:1'),
(687, 1, '_wp_trash_meta_status', 'publish'),
(688, 1, '_wp_trash_meta_time', '1565679470'),
(689, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(690, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(691, 176, '_menu_item_type', 'post_type'),
(692, 176, '_menu_item_menu_item_parent', '0'),
(693, 176, '_menu_item_object_id', '170'),
(694, 176, '_menu_item_object', 'page'),
(695, 176, '_menu_item_target', ''),
(696, 176, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(697, 176, '_menu_item_xfn', ''),
(698, 176, '_menu_item_url', ''),
(700, 176, 'shape', 'circle'),
(701, 176, '_shape', 'field_5d4ac00626401'),
(702, 176, 'coords', '360,136,33'),
(703, 176, '_coords', 'field_5d4ac04226402'),
(704, 177, '_menu_item_type', 'custom'),
(705, 177, '_menu_item_menu_item_parent', '0'),
(706, 177, '_menu_item_object_id', '177'),
(707, 177, '_menu_item_object', 'custom'),
(708, 177, '_menu_item_target', ''),
(709, 177, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(710, 177, '_menu_item_xfn', ''),
(711, 177, '_menu_item_url', '/'),
(713, 177, 'color_class', 'b-m-b-i-color-1'),
(714, 177, '_color_class', 'field_5d4843371002a'),
(715, 178, '_menu_item_type', 'custom'),
(716, 178, '_menu_item_menu_item_parent', '0'),
(717, 178, '_menu_item_object_id', '178'),
(718, 178, '_menu_item_object', 'custom'),
(719, 178, '_menu_item_target', ''),
(720, 178, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(721, 178, '_menu_item_xfn', ''),
(722, 178, '_menu_item_url', '/povishenia-kvalifikacii'),
(724, 178, 'color_class', 'b-m-b-i-color-3'),
(725, 178, '_color_class', 'field_5d4843371002a'),
(726, 179, '_menu_item_type', 'custom'),
(727, 179, '_menu_item_menu_item_parent', '0'),
(728, 179, '_menu_item_object_id', '179'),
(729, 179, '_menu_item_object', 'custom'),
(730, 179, '_menu_item_target', ''),
(731, 179, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(732, 179, '_menu_item_xfn', ''),
(733, 179, '_menu_item_url', '/programmi-povishenia-kval'),
(735, 179, 'color_class', 'b-m-b-i-color-3'),
(736, 179, '_color_class', 'field_5d4843371002a'),
(737, 180, '_menu_item_type', 'custom'),
(738, 180, '_menu_item_menu_item_parent', '0'),
(739, 180, '_menu_item_object_id', '180'),
(740, 180, '_menu_item_object', 'custom'),
(741, 180, '_menu_item_target', ''),
(742, 180, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(743, 180, '_menu_item_xfn', ''),
(744, 180, '_menu_item_url', '/kval-russ-lit-cikl'),
(746, 180, 'color_class', 'b-m-b-i-color-4'),
(747, 180, '_color_class', 'field_5d4843371002a'),
(748, 181, '_menu_item_type', 'custom'),
(749, 181, '_menu_item_menu_item_parent', '0'),
(750, 181, '_menu_item_object_id', '181'),
(751, 181, '_menu_item_object', 'custom'),
(752, 181, '_menu_item_target', ''),
(753, 181, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(754, 181, '_menu_item_xfn', ''),
(755, 181, '_menu_item_url', '/kval-ruk-obr-shkol-cikl'),
(757, 181, 'color_class', 'b-m-b-i-color-5'),
(758, 181, '_color_class', 'field_5d4843371002a'),
(759, 182, '_menu_item_type', 'custom'),
(760, 182, '_menu_item_menu_item_parent', '0'),
(761, 182, '_menu_item_object_id', '182'),
(762, 182, '_menu_item_object', 'custom'),
(763, 182, '_menu_item_target', ''),
(764, 182, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(765, 182, '_menu_item_xfn', ''),
(766, 182, '_menu_item_url', '/kval-math-cikl'),
(768, 183, '_menu_item_type', 'custom'),
(769, 183, '_menu_item_menu_item_parent', '0'),
(770, 183, '_menu_item_object_id', '183'),
(771, 183, '_menu_item_object', 'custom'),
(772, 183, '_menu_item_target', ''),
(773, 183, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(774, 183, '_menu_item_xfn', ''),
(775, 183, '_menu_item_url', '/kval-nach-school-cikl'),
(777, 182, 'color_class', 'b-m-b-i-color-6'),
(778, 182, '_color_class', 'field_5d4843371002a'),
(779, 183, 'color_class', 'b-m-b-i-color-7'),
(780, 183, '_color_class', 'field_5d4843371002a');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-07-11 13:34:52', '2019-07-11 10:34:52', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2019-08-13 09:57:50', '2019-08-13 06:57:50', '', 0, 'http://inos.local/?p=1', 0, 'post', '', 1),
(2, 1, '2019-07-11 13:34:52', '2019-07-11 10:34:52', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://inos.local/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'osnovnie-svedenia__trashed', '', '', '2019-07-24 10:05:45', '2019-07-24 07:05:45', '', 0, 'http://inos.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-07-11 13:34:52', '2019-07-11 10:34:52', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://inos.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2019-07-28 16:50:35', '2019-07-28 13:50:35', '', 0, 'http://inos.local/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-07-14 12:19:39', '2019-07-14 09:19:39', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"nav_menu_item\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"location/left\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Боковое меню', '%d0%b1%d0%be%d0%ba%d0%be%d0%b2%d0%be%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 'publish', 'closed', 'closed', '', 'group_5d2af37a1ed2a', '', '', '2019-08-05 17:30:29', '2019-08-05 14:30:29', '', 0, 'http://inos.local/?post_type=acf-field-group&#038;p=5', 0, 'acf-field-group', '', 0),
(9, 1, '2019-07-23 09:30:13', '2019-07-23 06:30:13', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-23 06:30:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '77375b9c-20d6-4846-ac78-a49f3251d8bb', '', '', '2019-07-23 09:30:13', '2019-07-23 06:30:13', '', 0, 'http://inos.local/?p=9', 0, 'customize_changeset', '', 0),
(11, 1, '2019-07-23 09:31:55', '2019-07-23 06:31:55', '<h2>ОСНОВНЫЕ СВЕДЕНИЯ ОБ ИНСТИТУТЕ</h2>\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->', 'Основные сведения', '', 'trash', 'closed', 'closed', '', 'svedenia__trashed', '', '', '2019-07-24 10:05:42', '2019-07-24 07:05:42', '', 0, 'http://inos.local/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-07-23 09:31:40', '2019-07-23 06:31:40', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Основные сведения', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-07-23 09:31:40', '2019-07-23 06:31:40', '', 11, 'http://inos.local/2019/07/23/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-07-23 09:38:40', '2019-07-23 06:38:40', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://inos.local/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-07-23 09:38:40', '2019-07-23 06:38:40', '', 2, 'http://inos.local/2019/07/23/2-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-07-24 09:49:09', '2019-07-24 06:49:09', '<h2>ОСНОВНЫЕ СВЕДЕНИЯ ОБ ИНСТИТУТЕ</h2>', 'Основные сведения', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-07-24 09:49:09', '2019-07-24 06:49:09', '', 11, 'http://inos.local/2019/07/24/11-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-07-24 09:53:58', '2019-07-24 06:53:58', '<h2>ОСНОВНЫЕ СВЕДЕНИЯ ОБ ИНСТИТУТЕ</h2>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Основные сведения', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-07-24 09:53:58', '2019-07-24 06:53:58', '', 11, 'http://inos.local/2019/07/24/11-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-07-24 09:54:57', '2019-07-24 06:54:57', '<h2>ОСНОВНЫЕ СВЕДЕНИЯ ОБ ИНСТИТУТЕ</h2>\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->', 'Основные сведения', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-07-24 09:54:57', '2019-07-24 06:54:57', '', 11, 'http://inos.local/2019/07/24/11-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-07-24 10:10:36', '2019-07-24 07:10:36', '', 'РУКОВОСТВО. СТРУКТУРА И ОРГАНЫ УПРАВЛЕНИЯ ИНСТИТУТА', '', 'publish', 'closed', 'closed', '', 'rukovodstvo', '', '', '2019-07-24 10:10:36', '2019-07-24 07:10:36', '', 0, 'http://inos.local/?page_id=22', 0, 'page', '', 0),
(23, 1, '2019-07-24 10:07:14', '2019-07-24 07:07:14', '', 'РУКОВОСТВО. СТРУКТУРА И ОРГАНЫ УПРАВЛЕНИЯ ИНСТИТУТА', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-07-24 10:07:14', '2019-07-24 07:07:14', '', 22, 'http://inos.local/2019/07/24/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-07-28 12:19:59', '2019-07-28 09:19:59', '', 'Основные сведения об институте', '', 'publish', 'closed', 'closed', '', 'svedenia', '', '', '2019-07-28 16:52:40', '2019-07-28 13:52:40', '', 0, 'http://inos.local/?page_id=24', 0, 'page', '', 0),
(25, 1, '2019-07-28 12:19:24', '2019-07-28 09:19:24', '', 'Основные сведения об институте', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-07-28 12:19:24', '2019-07-28 09:19:24', '', 24, 'http://inos.local/2019/07/28/24-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-07-28 16:50:35', '2019-07-28 13:50:35', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://inos.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-07-28 16:50:35', '2019-07-28 13:50:35', '', 3, 'http://inos.local/2019/07/28/3-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-07-28 16:51:15', '2019-07-28 13:51:15', '', 'РЕКВИЗИТЫ', '', 'publish', 'closed', 'closed', '', 'rekvizity', '', '', '2019-07-28 16:51:15', '2019-07-28 13:51:15', '', 0, 'http://inos.local/?page_id=28', 0, 'page', '', 0),
(29, 1, '2019-07-28 16:50:57', '2019-07-28 13:50:57', '', 'РЕКВИЗИТЫ', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-07-28 16:50:57', '2019-07-28 13:50:57', '', 28, 'http://inos.local/2019/07/28/28-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-07-29 10:54:47', '2019-07-29 07:54:47', '<!-- wp:paragraph -->\n<p>dfgdfgdhdfhdh</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:list -->\n<ul><li>dfgdfgdgf</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Таблицы', '', 'trash', 'closed', 'closed', '', 'table__trashed', '', '', '2019-08-05 21:12:07', '2019-08-05 18:12:07', '', 0, 'http://inos.local/?page_id=31', 0, 'page', '', 0),
(32, 1, '2019-07-29 10:53:48', '2019-07-29 07:53:48', '', 'Таблицы', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-07-29 10:53:48', '2019-07-29 07:53:48', '', 31, 'http://inos.local/2019/07/29/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-07-29 10:54:44', '2019-07-29 07:54:44', '<!-- wp:paragraph -->\n<p>dfgdfgdhdfhdh</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:list -->\n<ul><li>dfgdfgdgf</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Таблицы', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-07-29 10:54:44', '2019-07-29 07:54:44', '', 31, 'http://inos.local/2019/07/29/31-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-07-29 12:40:39', '2019-07-29 09:40:39', '', 'ИНСТИТУТ НА КАРТЕ', '', 'publish', 'closed', 'closed', '', 'institut-na-karte', '', '', '2019-07-29 13:55:53', '2019-07-29 10:55:53', '', 0, 'http://inos.local/?page_id=34', 0, 'page', '', 0),
(35, 1, '2019-07-29 12:39:53', '2019-07-29 09:39:53', '', 'ИНСТИТУТ НА КАРТЕ', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-07-29 12:39:53', '2019-07-29 09:39:53', '', 34, 'http://inos.local/2019/07/29/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-07-29 12:40:06', '2019-07-29 09:40:06', '<!-- wp:paragraph -->\n<p>kjflksdskdfkl</p>\n<!-- /wp:paragraph -->', 'ИНСТИТУТ НА КАРТЕ', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-07-29 12:40:06', '2019-07-29 09:40:06', '', 34, 'http://inos.local/2019/07/29/34-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-07-29 12:42:34', '2019-07-29 09:42:34', '<!-- wp:html -->\n <h2 class=\"h2-page-header\">ОСНОВНЫЕ СВЕДЕНИЯ ОБ ИНСТИТУТЕ</h2>\n <h4 class=\"h4-page-header\">Негосударственное образовательное учреждение</h4>\n <h4 class=\"h4-page-header\">дополнительного образования</h4>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'ИНСТИТУТ НА КАРТЕ', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-07-29 12:42:34', '2019-07-29 09:42:34', '', 34, 'http://inos.local/2019/07/29/34-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-07-29 12:42:57', '2019-07-29 09:42:57', '<!-- wp:heading {\"className\":\"h2-page-header\"} -->\n<h2 class=\"h2-page-header\">ОСНОВНЫЕ СВЕДЕНИЯ ОБ ИНСТИТУТЕ</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4,\"className\":\"h4-page-header\"} -->\n<h4 class=\"h4-page-header\">Негосударственное образовательное учреждение</h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4,\"className\":\"h4-page-header\"} -->\n<h4 class=\"h4-page-header\">дополнительного образования</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'ИНСТИТУТ НА КАРТЕ', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-07-29 12:42:57', '2019-07-29 09:42:57', '', 34, 'http://inos.local/2019/07/29/34-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-07-29 12:43:29', '2019-07-29 09:43:29', '<!-- wp:heading {\"className\":\"h2-page-header\"} -->\n<h2 class=\"h2-page-header\"><strong>ИНСТИТУТ НА КАРТЕ</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4,\"className\":\"h4-page-header\"} -->\n<h4 class=\"h4-page-header\">Негосударственное образовательное учреждение</h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4,\"className\":\"h4-page-header\"} -->\n<h4 class=\"h4-page-header\">дополнительного образования</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'ИНСТИТУТ НА КАРТЕ', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-07-29 12:43:29', '2019-07-29 09:43:29', '', 34, 'http://inos.local/2019/07/29/34-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-07-29 12:43:56', '2019-07-29 09:43:56', '<!-- wp:heading {\"className\":\"h2-page-header\"} -->\n<h2 class=\"h2-page-header\"><strong>ИНСТИТУТ НА КАРТЕ</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4,\"className\":\"h4-page-header\"} -->\n<h4 class=\"h4-page-header\"><strong>КАРТА ПРОЕЗДА</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4,\"className\":\"h4-page-header\"} -->\n<h4 class=\"h4-page-header\">дополнительного образования</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'ИНСТИТУТ НА КАРТЕ', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-07-29 12:43:56', '2019-07-29 09:43:56', '', 34, 'http://inos.local/2019/07/29/34-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-07-29 12:44:38', '2019-07-29 09:44:38', '<!-- wp:heading {\"className\":\"h2-page-header\"} -->\n<h2 class=\"h2-page-header\"><strong>ИНСТИТУТ НА КАРТЕ</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4,\"className\":\"h4-page-header\"} -->\n<h4 class=\"h4-page-header\"><strong>КАРТА ПРОЕЗДА</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4,\"className\":\"h4-page-header\"} -->\n<h4 class=\"h4-page-header\"><strong>GPS координаты (координаты на карте):</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><strong>долгота — 37.612021, широта — 55.603283.</strong></h4>\n<!-- /wp:heading -->', 'ИНСТИТУТ НА КАРТЕ', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-07-29 12:44:38', '2019-07-29 09:44:38', '', 34, 'http://inos.local/2019/07/29/34-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-07-29 12:45:38', '2019-07-29 09:45:38', '<!-- wp:heading {\"className\":\"h2-page-header\"} -->\n<h2 class=\"h2-page-header\"><strong>ИНСТИТУТ НА КАРТЕ</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4,\"className\":\"h4-page-header\"} -->\n<h4 class=\"h4-page-header\"><strong>КАРТА ПРОЕЗДА</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4,\"className\":\"h4-page-header\"} -->\n<h4 class=\"h4-page-header\">GPS координаты (координаты на карте):</h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>долгота — 37.612021, широта — 55.603283.</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'ИНСТИТУТ НА КАРТЕ', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-07-29 12:45:38', '2019-07-29 09:45:38', '', 34, 'http://inos.local/2019/07/29/34-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-07-29 12:49:36', '2019-07-29 09:49:36', '', 'карта2 red', '', 'inherit', 'open', 'closed', '', '%d0%ba%d0%b0%d1%80%d1%82%d0%b02-red', '', '', '2019-07-29 12:49:36', '2019-07-29 09:49:36', '', 34, 'http://inos.local/wp-content/uploads/2019/07/карта2-red.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2019-07-29 12:49:36', '2019-07-29 09:49:36', '', 'карта3 red', '', 'inherit', 'open', 'closed', '', '%d0%ba%d0%b0%d1%80%d1%82%d0%b03-red', '', '', '2019-07-29 12:49:36', '2019-07-29 09:49:36', '', 34, 'http://inos.local/wp-content/uploads/2019/07/карта3-red.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2019-07-29 12:49:37', '2019-07-29 09:49:37', '', 'фото мин red', '', 'inherit', 'open', 'closed', '', '%d1%84%d0%be%d1%82%d0%be-%d0%bc%d0%b8%d0%bd-red', '', '', '2019-07-29 12:49:37', '2019-07-29 09:49:37', '', 34, 'http://inos.local/wp-content/uploads/2019/07/фото-мин-red.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2019-07-29 12:50:33', '2019-07-29 09:50:33', '<!-- wp:heading {\"className\":\"h2-page-header\"} -->\n<h2 class=\"h2-page-header\"><strong>ИНСТИТУТ НА КАРТЕ</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4,\"className\":\"h4-page-header\"} -->\n<h4 class=\"h4-page-header\"><strong>КАРТА ПРОЕЗДА</strong></h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4,\"className\":\"h4-page-header\"} -->\n<h4 class=\"h4-page-header\">GPS координаты (координаты на карте):</h4>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4,\"className\":\"h4-page-header\"} -->\n<h4 class=\"h4-page-header\">долгота — 37.612021, широта — 55.603283.</h4>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":44} -->\n<figure class=\"wp-block-image\"><img src=\"http://inos.local/wp-content/uploads/2019/07/карта2-red.png\" alt=\"\" class=\"wp-image-44\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'ИНСТИТУТ НА КАРТЕ', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-07-29 12:50:33', '2019-07-29 09:50:33', '', 34, 'http://inos.local/2019/07/29/34-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-07-29 12:51:09', '2019-07-29 09:51:09', '', 'карта2 red', '', 'inherit', 'open', 'closed', '', '%d0%ba%d0%b0%d1%80%d1%82%d0%b02-red-2', '', '', '2019-07-29 12:51:09', '2019-07-29 09:51:09', '', 34, 'http://inos.local/wp-content/uploads/2019/07/карта2-red-1.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2019-07-29 13:49:32', '2019-07-29 10:49:32', '', 'ИНСТИТУТ НА КАРТЕ', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-07-29 13:49:32', '2019-07-29 10:49:32', '', 34, 'http://inos.local/2019/07/29/34-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-07-29 13:57:03', '2019-07-29 10:57:03', '', 'ИНСТИТУТ НА КАРТЕ', '', 'inherit', 'closed', 'closed', '', '34-autosave-v1', '', '', '2019-07-29 13:57:03', '2019-07-29 10:57:03', '', 34, 'http://inos.local/2019/07/29/34-autosave-v1/', 0, 'revision', '', 0),
(52, 1, '2019-07-29 14:11:24', '2019-07-29 11:11:24', '', 'ДОКУМЕНТЫ', '', 'publish', 'closed', 'closed', '', 'documents', '', '', '2019-07-29 14:11:24', '2019-07-29 11:11:24', '', 0, 'http://inos.local/?page_id=52', 0, 'page', '', 0),
(53, 1, '2019-07-29 14:11:13', '2019-07-29 11:11:13', '', 'ДОКУМЕНТЫ', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-07-29 14:11:13', '2019-07-29 11:11:13', '', 52, 'http://inos.local/2019/07/29/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-07-29 14:12:10', '2019-07-29 11:12:10', '', 'ДОКУМЕНТЫ', '', 'inherit', 'closed', 'closed', '', '52-autosave-v1', '', '', '2019-07-29 14:12:10', '2019-07-29 11:12:10', '', 52, 'http://inos.local/2019/07/29/52-autosave-v1/', 0, 'revision', '', 0),
(55, 1, '2019-07-29 14:34:06', '2019-07-29 11:34:06', '', 'Основные сведения об институте', '', 'inherit', 'closed', 'closed', '', '24-autosave-v1', '', '', '2019-07-29 14:34:06', '2019-07-29 11:34:06', '', 24, 'http://inos.local/2019/07/29/24-autosave-v1/', 0, 'revision', '', 0),
(57, 1, '2019-07-30 13:49:37', '2019-07-30 10:49:37', '', 'ОБРАЗОВАНИЕ', '', 'publish', 'closed', 'closed', '', 'obrazovanie', '', '', '2019-07-30 13:49:37', '2019-07-30 10:49:37', '', 0, 'http://inos.local/?page_id=57', 0, 'page', '', 0),
(58, 1, '2019-07-30 13:49:20', '2019-07-30 10:49:20', '', 'ОБРАЗОВАНИЕ', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2019-07-30 13:49:20', '2019-07-30 10:49:20', '', 57, 'http://inos.local/2019/07/30/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-07-30 17:01:17', '2019-07-30 14:01:17', '', 'УЧЕБНЫЙ ПЛАН ПОВЫШЕНИЯ КВАЛИФИКАЦИИ', '', 'publish', 'closed', 'closed', '', 'povishenia-kvalifikacii', '', '', '2019-07-30 17:01:17', '2019-07-30 14:01:17', '', 0, 'http://inos.local/?page_id=59', 0, 'page', '', 0),
(60, 1, '2019-07-30 17:00:39', '2019-07-30 14:00:39', '', 'УЧЕБНЫЙ ПЛАН ПОВЫШЕНИЯ КВАЛИФИКАЦИИ', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-07-30 17:00:39', '2019-07-30 14:00:39', '', 59, 'http://inos.local/2019/07/30/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2019-07-30 19:59:46', '2019-07-30 16:59:46', '', 'ПРОГРАММЫ ПОВЫШЕНИЯ КВАЛИФИКАЦИИ', '', 'publish', 'closed', 'closed', '', 'programmi-povishenia-kval', '', '', '2019-07-30 19:59:46', '2019-07-30 16:59:46', '', 0, 'http://inos.local/?page_id=61', 0, 'page', '', 0),
(62, 1, '2019-07-30 19:59:28', '2019-07-30 16:59:28', '', 'ПРОГРАММЫ ПОВЫШЕНИЯ КВАЛИФИКАЦИИ', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2019-07-30 19:59:28', '2019-07-30 16:59:28', '', 61, 'http://inos.local/2019/07/30/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-07-31 10:23:37', '2019-07-31 07:23:37', '', 'ОБРАЗОВАТЕЛЬНЫЕ СТАНДАРТЫ', '', 'publish', 'closed', 'closed', '', 'obrazovatelnie-standarti', '', '', '2019-07-31 10:23:37', '2019-07-31 07:23:37', '', 0, 'http://inos.local/?page_id=63', 0, 'page', '', 0),
(64, 1, '2019-07-31 10:23:11', '2019-07-31 07:23:11', '', 'ОБРАЗОВАТЕЛЬНЫЕ СТАНДАРТЫ', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2019-07-31 10:23:11', '2019-07-31 07:23:11', '', 63, 'http://inos.local/2019/07/31/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-07-31 10:56:34', '2019-07-31 07:56:34', '', 'РУКОВОДСТВО.НАУЧНО-ПЕДАГОГИЧЕСКИЙ СОСТАВ', '', 'publish', 'closed', 'closed', '', 'pedagogicheskiy-sostav', '', '', '2019-07-31 10:56:34', '2019-07-31 07:56:34', '', 0, 'http://inos.local/?page_id=65', 0, 'page', '', 0),
(66, 1, '2019-07-31 10:56:13', '2019-07-31 07:56:13', '', 'РУКОВОДСТВО.НАУЧНО-ПЕДАГОГИЧЕСКИЙ СОСТАВ', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2019-07-31 10:56:13', '2019-07-31 07:56:13', '', 65, 'http://inos.local/2019/07/31/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2019-08-05 17:16:12', '2019-08-05 14:16:12', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=67', 11, 'nav_menu_item', '', 0),
(68, 1, '2019-08-05 17:23:14', '2019-08-05 14:23:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:21:\"e.x. menu-btn-color-1\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Класс цвета меню', 'color_class', 'publish', 'closed', 'closed', '', 'field_5d483ba09bc99', '', '', '2019-08-05 17:23:14', '2019-08-05 14:23:14', '', 5, 'http://inos.local/?post_type=acf-field&p=68', 0, 'acf-field', '', 0),
(69, 1, '2019-08-05 17:30:29', '2019-08-05 14:30:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:14:\"e.x. img-btn-1\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Класс изображения меню', 'img_class', 'publish', 'closed', 'closed', '', 'field_5d483d31056dc', '', '', '2019-08-05 17:30:29', '2019-08-05 14:30:29', '', 5, 'http://inos.local/?post_type=acf-field&p=69', 1, 'acf-field', '', 0),
(70, 1, '2019-08-05 17:54:30', '2019-08-05 14:54:30', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"nav_menu_item\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"location/bottom\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Нижнее меню', '%d0%bd%d0%b8%d0%b6%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 'publish', 'closed', 'closed', '', 'group_5d48431f22cee', '', '', '2019-08-05 17:55:16', '2019-08-05 14:55:16', '', 0, 'http://inos.local/?post_type=acf-field-group&#038;p=70', 0, 'acf-field-group', '', 0),
(71, 1, '2019-08-05 17:55:16', '2019-08-05 14:55:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:20:\"e.x. b-m-b-i-color-3\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Класс цвета меню', 'color_class', 'publish', 'closed', 'closed', '', 'field_5d4843371002a', '', '', '2019-08-05 17:55:16', '2019-08-05 14:55:16', '', 70, 'http://inos.local/?post_type=acf-field&p=71', 0, 'acf-field', '', 0),
(73, 1, '2019-08-05 21:17:54', '2019-08-05 18:17:54', '', 'МАТЕРИАЛЬНО-ТЕХНИЧЕСКОЕ ОБЕСПЕЧЕНИЕ', '', 'publish', 'closed', 'closed', '', 'mat-obespechenie', '', '', '2019-08-05 21:17:54', '2019-08-05 18:17:54', '', 0, 'http://inos.local/?page_id=73', 0, 'page', '', 0),
(74, 1, '2019-08-05 21:17:06', '2019-08-05 18:17:06', '', 'МАТЕРИАЛЬНО-ТЕХНИЧЕСКОЕ ОБЕСПЕЧЕНИЕ', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2019-08-05 21:17:06', '2019-08-05 18:17:06', '', 73, 'http://inos.local/2019/08/05/73-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-08-05 21:19:23', '2019-08-05 18:19:23', '', 'НАШИ ПАРТНЕРЫ', '', 'publish', 'closed', 'closed', '', 'nashi-partnery', '', '', '2019-08-05 21:19:23', '2019-08-05 18:19:23', '', 0, 'http://inos.local/?page_id=75', 0, 'page', '', 0),
(76, 1, '2019-08-05 21:19:00', '2019-08-05 18:19:00', '', 'НАШИ ПАРТНЕРЫ', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2019-08-05 21:19:00', '2019-08-05 18:19:00', '', 75, 'http://inos.local/2019/08/05/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-08-05 21:21:38', '2019-08-05 18:21:38', '', 'СВЕДЕНИЯ О ЗДАНИЯХ И ПОМЕЩЕНИЯХ', '', 'publish', 'closed', 'closed', '', 'svedenia-o-zdaniyah', '', '', '2019-08-05 21:21:38', '2019-08-05 18:21:38', '', 0, 'http://inos.local/?page_id=77', 0, 'page', '', 0),
(78, 1, '2019-08-05 21:21:07', '2019-08-05 18:21:07', '', 'СВЕДЕНИЯ О ЗДАНИЯХ И ПОМЕЩЕНИЯХ', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2019-08-05 21:21:07', '2019-08-05 18:21:07', '', 77, 'http://inos.local/2019/08/05/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-08-05 21:24:40', '2019-08-05 18:24:40', '', 'БЕЗОПАСНАЯ СРЕДА', '', 'publish', 'closed', 'closed', '', 'bezopasnaya-sreda', '', '', '2019-08-05 21:24:40', '2019-08-05 18:24:40', '', 0, 'http://inos.local/?page_id=79', 0, 'page', '', 0),
(80, 1, '2019-08-05 21:24:24', '2019-08-05 18:24:24', '', 'БЕЗОПАСНАЯ СРЕДА', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2019-08-05 21:24:24', '2019-08-05 18:24:24', '', 79, 'http://inos.local/2019/08/05/79-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-08-06 09:01:33', '2019-08-06 06:01:33', '', 'ИНСТИТУТ НОВЫХ ОБРАЗОВАТЕЛЬНЫХ СИСТЕМ', '', 'publish', 'closed', 'closed', '', '%d0%b8%d0%bd%d1%81%d1%82%d0%b8%d1%82%d1%83%d1%82-%d0%bd%d0%be%d0%b2%d1%8b%d1%85-%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d0%be%d0%b2%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d1%8b%d1%85-%d1%81%d0%b8%d1%81%d1%82', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=87', 1, 'nav_menu_item', '', 0),
(88, 1, '2019-08-06 09:03:05', '2019-08-06 06:03:05', '', 'ОСНОВНЫЕ СВЕДЕНИЯ об образовательной организации', '', 'publish', 'closed', 'closed', '', '%d0%be%d1%81%d0%bd%d0%be%d0%b2%d0%bd%d1%8b%d0%b5-%d1%81%d0%b2%d0%b5%d0%b4%d0%b5%d0%bd%d0%b8%d1%8f-%d0%be%d0%b1-%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d0%be%d0%b2%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=88', 2, 'nav_menu_item', '', 0),
(89, 1, '2019-08-06 09:03:35', '2019-08-06 06:03:35', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=89', 3, 'nav_menu_item', '', 0),
(90, 1, '2019-08-06 09:04:03', '2019-08-06 06:04:03', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=90', 4, 'nav_menu_item', '', 0),
(91, 1, '2019-08-06 09:04:48', '2019-08-06 06:04:48', '', 'СТРУКТУРА И ОРГАНЫ УПРАВЛЕНИЯ ИНСТИТУТА', '', 'publish', 'closed', 'closed', '', '%d1%81%d1%82%d1%80%d1%83%d0%ba%d1%82%d1%83%d1%80%d0%b0-%d0%b8-%d0%be%d1%80%d0%b3%d0%b0%d0%bd%d1%8b-%d1%83%d0%bf%d1%80%d0%b0%d0%b2%d0%bb%d0%b5%d0%bd%d0%b8%d1%8f-%d0%b8%d0%bd%d1%81%d1%82%d0%b8%d1%82', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=91', 5, 'nav_menu_item', '', 0),
(92, 1, '2019-08-06 09:05:26', '2019-08-06 06:05:26', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=92', 6, 'nav_menu_item', '', 0),
(93, 1, '2019-08-06 09:06:20', '2019-08-06 06:06:20', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=93', 7, 'nav_menu_item', '', 0),
(94, 1, '2019-08-06 09:07:08', '2019-08-06 06:07:08', '', 'УЧЕБНЫЙ ПЛАН', '', 'publish', 'closed', 'closed', '', '%d1%83%d1%87%d0%b5%d0%b1%d0%bd%d1%8b%d0%b9-%d0%bf%d0%bb%d0%b0%d0%bd', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=94', 9, 'nav_menu_item', '', 0),
(95, 1, '2019-08-06 09:07:54', '2019-08-06 06:07:54', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=95', 8, 'nav_menu_item', '', 0),
(97, 1, '2019-08-06 09:10:43', '2019-08-06 06:10:43', ' ', '', '', 'publish', 'closed', 'closed', '', '97', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=97', 10, 'nav_menu_item', '', 0),
(98, 1, '2019-08-06 09:11:40', '2019-08-06 06:11:40', ' ', '', '', 'publish', 'closed', 'closed', '', '98', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=98', 12, 'nav_menu_item', '', 0),
(109, 1, '2019-08-06 12:08:34', '2019-08-06 09:08:34', '', 'ЭЛЕКТРОННЫЕ ОБРАЗОВАТЕЛЬНЫЕ РЕСУРСЫ', '', 'publish', 'closed', 'closed', '', 'obrazovatelnie-resursy', '', '', '2019-08-06 12:08:34', '2019-08-06 09:08:34', '', 0, 'http://inos.local/?page_id=109', 0, 'page', '', 0),
(110, 1, '2019-08-06 12:07:49', '2019-08-06 09:07:49', '', 'ЭЛЕКТРОННЫЕ ОБРАЗОВАТЕЛЬНЫЕ РЕСУРСЫ', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2019-08-06 12:07:49', '2019-08-06 09:07:49', '', 109, 'http://inos.local/2019/08/06/109-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2019-08-06 12:33:49', '2019-08-06 09:33:49', '', 'ОРГАНИЗАЦИИ', '', 'publish', 'closed', 'closed', '', 'organizacii', '', '', '2019-08-06 12:33:49', '2019-08-06 09:33:49', '', 0, 'http://inos.local/?page_id=111', 0, 'page', '', 0),
(112, 1, '2019-08-06 12:33:44', '2019-08-06 09:33:44', '', 'ОРГАНИЗАЦИИ', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2019-08-06 12:33:44', '2019-08-06 09:33:44', '', 111, 'http://inos.local/2019/08/06/111-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2019-08-06 12:48:31', '2019-08-06 09:48:31', '', 'КОМПЛЕКСНЫЕ РЕСУРСЫ', '', 'publish', 'closed', 'closed', '', 'complex-resurs', '', '', '2019-08-06 12:48:31', '2019-08-06 09:48:31', '', 0, 'http://inos.local/?page_id=113', 0, 'page', '', 0),
(114, 1, '2019-08-06 12:48:27', '2019-08-06 09:48:27', '', 'КОМПЛЕКСНЫЕ РЕСУРСЫ', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2019-08-06 12:48:27', '2019-08-06 09:48:27', '', 113, 'http://inos.local/2019/08/06/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2019-08-06 13:23:25', '2019-08-06 10:23:25', '', 'ВИДЕОЛЕКЦИИ', '', 'publish', 'closed', 'closed', '', 'videolekcii', '', '', '2019-08-06 13:23:25', '2019-08-06 10:23:25', '', 0, 'http://inos.local/?page_id=115', 0, 'page', '', 0),
(116, 1, '2019-08-06 13:23:22', '2019-08-06 10:23:22', '', 'ВИДЕОЛЕКЦИИ', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2019-08-06 13:23:22', '2019-08-06 10:23:22', '', 115, 'http://inos.local/2019/08/06/115-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2019-08-06 13:40:47', '2019-08-06 10:40:47', '', 'СТИПЕНДИИ', '', 'publish', 'closed', 'closed', '', 'stipendii', '', '', '2019-08-06 13:40:47', '2019-08-06 10:40:47', '', 0, 'http://inos.local/?page_id=118', 0, 'page', '', 0),
(119, 1, '2019-08-06 13:40:36', '2019-08-06 10:40:36', '', 'СТИПЕНДИИ', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2019-08-06 13:40:36', '2019-08-06 10:40:36', '', 118, 'http://inos.local/2019/08/06/118-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2019-08-06 13:55:58', '2019-08-06 10:55:58', '', 'ФИНАНСОВО-ХОЗЯЙСТВЕННАЯ ДЕЯТЕЛЬНОСТЬ', '', 'publish', 'closed', 'closed', '', 'hoz-deyatelnost', '', '', '2019-08-06 13:55:58', '2019-08-06 10:55:58', '', 0, 'http://inos.local/?page_id=120', 0, 'page', '', 0),
(121, 1, '2019-08-06 13:55:52', '2019-08-06 10:55:52', '', 'ФИНАНСОВО-ХОЗЯЙСТВЕННАЯ ДЕЯТЕЛЬНОСТЬ', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2019-08-06 13:55:52', '2019-08-06 10:55:52', '', 120, 'http://inos.local/2019/08/06/120-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2019-08-06 14:21:07', '2019-08-06 11:21:07', '', 'ГАЛЕРЕЯ', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2019-08-06 14:21:07', '2019-08-06 11:21:07', '', 0, 'http://inos.local/?page_id=122', 0, 'page', '', 0),
(123, 1, '2019-08-06 14:20:55', '2019-08-06 11:20:55', '', 'ГАЛЕРЕЯ', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2019-08-06 14:20:55', '2019-08-06 11:20:55', '', 122, 'http://inos.local/2019/08/06/122-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2019-08-06 17:16:22', '2019-08-06 14:16:22', '', 'ПРОГРАММА ПОВЫШЕНИЯ КВАЛИФИКАЦИИ. РУССКИЙ, ЛИТЕРАТУРА', '', 'publish', 'closed', 'closed', '', 'kval-russ-lit-prog', '', '', '2019-08-06 18:53:11', '2019-08-06 15:53:11', '', 0, 'http://inos.local/?page_id=124', 0, 'page', '', 0),
(125, 1, '2019-08-06 17:15:57', '2019-08-06 14:15:57', '', 'ПРОГРАММА ПОВЫШЕНИЯ КВАЛИФИКАЦИИ. РУССКИЙ, ЛИТЕРАТУРА', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2019-08-06 17:15:57', '2019-08-06 14:15:57', '', 124, 'http://inos.local/2019/08/06/124-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2019-08-06 18:56:29', '2019-08-06 15:56:29', '', 'УЧЕБНЫЙ ПЛАН. РУССКИЙ И ЛИТЕРАТУРА', '', 'publish', 'closed', 'closed', '', 'kval-russ-lit-plan', '', '', '2019-08-06 18:56:29', '2019-08-06 15:56:29', '', 0, 'http://inos.local/?page_id=126', 0, 'page', '', 0),
(127, 1, '2019-08-06 18:56:09', '2019-08-06 15:56:09', '', 'УЧЕБНЫЙ ПЛАН. РУССКИЙ И ЛИТЕРАТУРА', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2019-08-06 18:56:09', '2019-08-06 15:56:09', '', 126, 'http://inos.local/2019/08/06/126-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2019-08-06 20:21:04', '2019-08-06 17:21:04', '', 'ЦИКЛЫ ЛЕКЦИЙ.РУССКИЙ И ЛИТЕРАТУРА', '', 'publish', 'closed', 'closed', '', 'kval-russ-lit-cikl', '', '', '2019-08-06 20:23:48', '2019-08-06 17:23:48', '', 0, 'http://inos.local/?page_id=128', 0, 'page', '', 0),
(129, 1, '2019-08-06 20:20:59', '2019-08-06 17:20:59', '', 'ЦИКЛЫ ЛЕКЦИЙ.РУССКИЙ И ЛИТЕРАТУРА', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2019-08-06 20:20:59', '2019-08-06 17:20:59', '', 128, 'http://inos.local/2019/08/06/128-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2019-08-07 09:36:43', '2019-08-07 06:36:43', '', 'МАТЕРИАЛЬНО-ТЕХНИЧЕСКОЕ ОБЕПЕЧЕНИЕ И ОСНАЩЕННОСТЬ ОБРАЗОВАТЕЛЬНОГО ПРОЦЕССА', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b0%d1%82%d0%b5%d1%80%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d0%be-%d1%82%d0%b5%d1%85%d0%bd%d0%b8%d1%87%d0%b5%d1%81%d0%ba%d0%be%d0%b5-%d0%be%d0%b1%d0%b5%d0%bf%d0%b5%d1%87%d0%b5%d0%bd%d0%b8%d0%b5-2', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=130', 13, 'nav_menu_item', '', 0),
(131, 1, '2019-08-07 09:38:10', '2019-08-07 06:38:10', '', 'СВЕДЕНИЯ О ЗДАНИЯХ И ПОМЕЩЕНИЯХ, ИСПОЛЬЗУЕМЫХ ДЛЯ ОБРАЗОВАТЕЛЬНОЙ ДЕЯТЕЛЬНОСТИ', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%b2%d0%b5%d0%b4%d0%b5%d0%bd%d0%b8%d1%8f-%d0%be-%d0%b7%d0%b4%d0%b0%d0%bd%d0%b8%d1%8f%d1%85-%d0%b8-%d0%bf%d0%be%d0%bc%d0%b5%d1%89%d0%b5%d0%bd%d0%b8%d1%8f%d1%85-%d0%b8%d1%81%d0%bf%d0%be%d0%bb-2', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=131', 14, 'nav_menu_item', '', 0),
(132, 1, '2019-08-07 09:38:46', '2019-08-07 06:38:46', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=132', 15, 'nav_menu_item', '', 0),
(133, 1, '2019-08-07 09:39:17', '2019-08-07 06:39:17', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=133', 16, 'nav_menu_item', '', 0),
(134, 1, '2019-08-07 09:39:51', '2019-08-07 06:39:51', ' ', '', '', 'publish', 'closed', 'closed', '', '134', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=134', 17, 'nav_menu_item', '', 0),
(135, 1, '2019-08-07 09:40:28', '2019-08-07 06:40:28', ' ', '', '', 'publish', 'closed', 'closed', '', '135', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=135', 18, 'nav_menu_item', '', 0),
(136, 1, '2019-08-07 09:40:52', '2019-08-07 06:40:52', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=136', 19, 'nav_menu_item', '', 0),
(137, 1, '2019-08-07 09:41:15', '2019-08-07 06:41:15', ' ', '', '', 'publish', 'closed', 'closed', '', '137', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=137', 20, 'nav_menu_item', '', 0),
(138, 1, '2019-08-07 09:41:40', '2019-08-07 06:41:40', ' ', '', '', 'publish', 'closed', 'closed', '', '138', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=138', 21, 'nav_menu_item', '', 0),
(139, 1, '2019-08-07 09:42:40', '2019-08-07 06:42:40', ' ', '', '', 'publish', 'closed', 'closed', '', '139', '', '', '2019-08-13 11:43:56', '2019-08-13 08:43:56', '', 0, 'http://inos.local/?p=139', 22, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(140, 1, '2019-08-07 15:11:48', '2019-08-07 12:11:48', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"nav_menu_item\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"location/top\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Верхнее меню', '%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 'publish', 'closed', 'closed', '', 'group_5d4abff56f0fd', '', '', '2019-08-07 15:13:43', '2019-08-07 12:13:43', '', 0, 'http://inos.local/?post_type=acf-field-group&#038;p=140', 0, 'acf-field-group', '', 0),
(141, 1, '2019-08-07 15:13:43', '2019-08-07 12:13:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:17:\"circle, rect, etc\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Форма ссылок', 'shape', 'publish', 'closed', 'closed', '', 'field_5d4ac00626401', '', '', '2019-08-07 15:13:43', '2019-08-07 12:13:43', '', 140, 'http://inos.local/?post_type=acf-field&p=141', 0, 'acf-field', '', 0),
(142, 1, '2019-08-07 15:13:43', '2019-08-07 12:13:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:127:\"Относительно левого верхнего угла картинки в пикселях. Зависит от shape\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Координаты ссылки', 'coords', 'publish', 'closed', 'closed', '', 'field_5d4ac04226402', '', '', '2019-08-07 15:13:43', '2019-08-07 12:13:43', '', 140, 'http://inos.local/?post_type=acf-field&p=142', 1, 'acf-field', '', 0),
(143, 1, '2019-08-07 15:15:06', '2019-08-07 12:15:06', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2019-08-13 10:01:42', '2019-08-13 07:01:42', '', 0, 'http://inos.local/?p=143', 1, 'nav_menu_item', '', 0),
(144, 1, '2019-08-07 15:15:34', '2019-08-07 12:15:34', '', 'Основные сведения', '', 'publish', 'closed', 'closed', '', '%d0%be%d1%81%d0%bd%d0%be%d0%b2%d0%bd%d1%8b%d0%b5-%d1%81%d0%b2%d0%b5%d0%b4%d0%b5%d0%bd%d0%b8%d1%8f-2', '', '', '2019-08-13 10:01:42', '2019-08-13 07:01:42', '', 0, 'http://inos.local/?p=144', 2, 'nav_menu_item', '', 0),
(145, 1, '2019-08-07 15:16:06', '2019-08-07 12:16:06', ' ', '', '', 'publish', 'closed', 'closed', '', '145', '', '', '2019-08-13 10:01:42', '2019-08-13 07:01:42', '', 0, 'http://inos.local/?p=145', 3, 'nav_menu_item', '', 0),
(146, 1, '2019-08-07 15:16:29', '2019-08-07 12:16:29', ' ', '', '', 'publish', 'closed', 'closed', '', '146', '', '', '2019-08-13 10:01:42', '2019-08-13 07:01:42', '', 0, 'http://inos.local/?p=146', 4, 'nav_menu_item', '', 0),
(148, 1, '2019-08-07 15:17:51', '2019-08-07 12:17:51', '', 'РУКОВОДСТВО. ПЕДАГОГИЧЕСКИЙ СОСТАВ', '', 'publish', 'closed', 'closed', '', '%d1%80%d1%83%d0%ba%d0%be%d0%b2%d0%be%d0%b4%d1%81%d1%82%d0%b2%d0%be-%d0%bf%d0%b5%d0%b4%d0%b0%d0%b3%d0%be%d0%b3%d0%b8%d1%87%d0%b5%d1%81%d0%ba%d0%b8%d0%b9-%d1%81%d0%be%d1%81%d1%82%d0%b0%d0%b2', '', '', '2019-08-13 10:01:42', '2019-08-13 07:01:42', '', 0, 'http://inos.local/?p=148', 5, 'nav_menu_item', '', 0),
(149, 1, '2019-08-08 16:34:14', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-08 16:34:14', '0000-00-00 00:00:00', '', 0, 'http://inos.local/?page_id=149', 0, 'page', '', 0),
(150, 1, '2019-08-08 16:35:03', '2019-08-08 13:35:03', '', 'УЧЕБНЫЙ ПЛАН ПОВЫШЕНИЯ КВАЛИФИКАЦИИ', '', 'inherit', 'closed', 'closed', '', '59-autosave-v1', '', '', '2019-08-08 16:35:03', '2019-08-08 13:35:03', '', 59, 'http://inos.local/2019/08/08/59-autosave-v1/', 0, 'revision', '', 0),
(151, 1, '2019-08-08 16:39:09', '2019-08-08 13:39:09', '', 'ПРОГРАММА ПОВЫШЕНИЯ КВАЛИФИКАЦИИ.РУКОВОДИТЕЛЬ ОБЩЕОБРАЗОВАТЕЛЬНОЙ ШКОЛЫ', '', 'publish', 'closed', 'closed', '', 'kval-ruk-obr-shkol-prog', '', '', '2019-08-08 16:39:09', '2019-08-08 13:39:09', '', 0, 'http://inos.local/?page_id=151', 0, 'page', '', 0),
(152, 1, '2019-08-08 16:36:09', '2019-08-08 13:36:09', '', 'ПРОГРАММА ПОВЫШЕНИЯ КВАЛИФИКАЦИИ.РУКОВОДИТЕЛЬ ОБЩЕОБРАЗОВАТЕЛЬНОЙ ШКОЛЫ', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2019-08-08 16:36:09', '2019-08-08 13:36:09', '', 151, 'http://inos.local/2019/08/08/151-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2019-08-08 17:47:58', '2019-08-08 14:47:58', '', 'УЧЕБНЫЙ ПЛАН.РУКОВОДИТЕЛЬ ОБЩЕОБРАЗОВАТЕЛЬНОЙ ШКОЛЫ', '', 'publish', 'closed', 'closed', '', 'kval-ruk-obr-shkol-plan', '', '', '2019-08-08 17:47:58', '2019-08-08 14:47:58', '', 0, 'http://inos.local/?page_id=153', 0, 'page', '', 0),
(154, 1, '2019-08-08 17:47:52', '2019-08-08 14:47:52', '', 'УЧЕБНЫЙ ПЛАН.РУКОВОДИТЕЛЬ ОБЩЕОБРАЗОВАТЕЛЬНОЙ ШКОЛЫ', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2019-08-08 17:47:52', '2019-08-08 14:47:52', '', 153, 'http://inos.local/2019/08/08/153-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2019-08-08 18:14:42', '2019-08-08 15:14:42', '', 'ЦИКЛЫ ЛЕКЦИЙ. РУКОВОДИТЕЛЬ ОБЩЕОБРАЗОВАТЕЛЬНОЙ ШКОЛЫ', '', 'publish', 'closed', 'closed', '', 'kval-ruk-obr-shkol-cikl', '', '', '2019-08-08 18:14:42', '2019-08-08 15:14:42', '', 0, 'http://inos.local/?page_id=155', 0, 'page', '', 0),
(156, 1, '2019-08-08 18:14:37', '2019-08-08 15:14:37', '', 'ЦИКЛЫ ЛЕКЦИЙ. РУКОВОДИТЕЛЬ ОБЩЕОБРАЗОВАТЕЛЬНОЙ ШКОЛЫ', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2019-08-08 18:14:37', '2019-08-08 15:14:37', '', 155, 'http://inos.local/2019/08/08/155-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2019-08-08 19:37:51', '2019-08-08 16:37:51', '', 'ПРОГРАММА ПОВЫШЕНИЯ КВАЛИФИКАЦИИ.МАТЕМАТИКА', '', 'publish', 'closed', 'closed', '', 'kval-math-prog', '', '', '2019-08-08 19:37:51', '2019-08-08 16:37:51', '', 0, 'http://inos.local/?page_id=157', 0, 'page', '', 0),
(158, 1, '2019-08-08 19:37:44', '2019-08-08 16:37:44', '', 'ПРОГРАММА ПОВЫШЕНИЯ КВАЛИФИКАЦИИ.МАТЕМАТИКА', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2019-08-08 19:37:44', '2019-08-08 16:37:44', '', 157, 'http://inos.local/2019/08/08/157-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2019-08-08 19:37:53', '2019-08-08 16:37:53', '', 'ПРОГРАММА ПОВЫШЕНИЯ КВАЛИФИКАЦИИ.МАТЕМАТИКА', '', 'inherit', 'closed', 'closed', '', '157-autosave-v1', '', '', '2019-08-08 19:37:53', '2019-08-08 16:37:53', '', 157, 'http://inos.local/2019/08/08/157-autosave-v1/', 0, 'revision', '', 0),
(160, 1, '2019-08-08 19:47:26', '2019-08-08 16:47:26', '', 'УЧЕБНЫЙ ПЛАН.МАТЕМАТИКА', '', 'publish', 'closed', 'closed', '', 'kval-math-plan', '', '', '2019-08-08 19:47:26', '2019-08-08 16:47:26', '', 0, 'http://inos.local/?page_id=160', 0, 'page', '', 0),
(161, 1, '2019-08-08 19:47:05', '2019-08-08 16:47:05', '', 'УЧЕБНЫЙ ПЛАН.МАТЕМАТИКА', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2019-08-08 19:47:05', '2019-08-08 16:47:05', '', 160, 'http://inos.local/2019/08/08/160-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2019-08-08 19:52:37', '2019-08-08 16:52:37', '', 'ЦИКЛЫ ЛЕКЦИЙ.МАТЕМАТИКА', '', 'publish', 'closed', 'closed', '', 'kval-math-cikl', '', '', '2019-08-08 19:52:37', '2019-08-08 16:52:37', '', 0, 'http://inos.local/?page_id=162', 0, 'page', '', 0),
(163, 1, '2019-08-08 19:52:25', '2019-08-08 16:52:25', '', 'ЦИКЛЫ ЛЕКЦИЙ.МАТЕМАТИКА', '', 'inherit', 'closed', 'closed', '', '162-revision-v1', '', '', '2019-08-08 19:52:25', '2019-08-08 16:52:25', '', 162, 'http://inos.local/2019/08/08/162-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2019-08-08 20:49:03', '2019-08-08 17:49:03', '', 'ПРОГРАММА ПОВЫШЕНИЯ КВАЛИФИКАЦИИ.ПРЕПОДАВАНИЕ В НАЧАЛЬНОЙ ШКОЛЕ', '', 'publish', 'closed', 'closed', '', 'kval-nach-school-prog', '', '', '2019-08-08 20:49:03', '2019-08-08 17:49:03', '', 0, 'http://inos.local/?page_id=164', 0, 'page', '', 0),
(165, 1, '2019-08-08 20:48:43', '2019-08-08 17:48:43', '', 'ПРОГРАММА ПОВЫШЕНИЯ КВАЛИФИКАЦИИ.ПРЕПОДАВАНИЕ В НАЧАЛЬНОЙ ШКОЛЕ', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2019-08-08 20:48:43', '2019-08-08 17:48:43', '', 164, 'http://inos.local/2019/08/08/164-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2019-08-08 21:12:49', '2019-08-08 18:12:49', '', 'УЧЕБНЫЙ ПЛАН.ПРЕПОДАВАНИЕ В НАЧАЛЬНОЙ ШКОЛЕ', '', 'publish', 'closed', 'closed', '', 'kval-nach-school-plan', '', '', '2019-08-08 21:12:49', '2019-08-08 18:12:49', '', 0, 'http://inos.local/?page_id=166', 0, 'page', '', 0),
(167, 1, '2019-08-08 21:12:33', '2019-08-08 18:12:33', '', 'УЧЕБНЫЙ ПЛАН.ПРЕПОДАВАНИЕ В НАЧАЛЬНОЙ ШКОЛЕ', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2019-08-08 21:12:33', '2019-08-08 18:12:33', '', 166, 'http://inos.local/2019/08/08/166-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2019-08-08 21:24:07', '2019-08-08 18:24:07', '', 'ЦИКЛЫ ЛЕКЦИЙ.ПРЕПОДАВАНИЕ В НАЧАЛЬНОЙ ШКОЛЕ', '', 'publish', 'closed', 'closed', '', 'kval-nach-school-cikl', '', '', '2019-08-08 21:24:07', '2019-08-08 18:24:07', '', 0, 'http://inos.local/?page_id=168', 0, 'page', '', 0),
(169, 1, '2019-08-08 21:23:45', '2019-08-08 18:23:45', '', 'ЦИКЛЫ ЛЕКЦИЙ.ПРЕПОДАВАНИЕ В НАЧАЛЬНОЙ ШКОЛЕ', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2019-08-08 21:23:45', '2019-08-08 18:23:45', '', 168, 'http://inos.local/2019/08/08/168-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2019-08-09 07:51:05', '2019-08-09 04:51:05', '', 'ТЕКУЩИЕ ЦИКЛЫ ЛЕКЦИЙ', '', 'publish', 'closed', 'closed', '', 'cikl-lek', '', '', '2019-08-09 07:51:05', '2019-08-09 04:51:05', '', 0, 'http://inos.local/?page_id=170', 0, 'page', '', 0),
(171, 1, '2019-08-09 07:50:44', '2019-08-09 04:50:44', '', 'ТЕКУЩИЕ ЦИКЛЫ ЛЕКЦИЙ', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2019-08-09 07:50:44', '2019-08-09 04:50:44', '', 170, 'http://inos.local/2019/08/09/170-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2019-08-09 15:25:14', '2019-08-09 12:25:14', '', 'УЧЕБНЫЙ ПЛАН. РУССКИЙ И ЛИТЕРАТУРА', '', 'inherit', 'closed', 'closed', '', '126-autosave-v1', '', '', '2019-08-09 15:25:14', '2019-08-09 12:25:14', '', 126, 'http://inos.local/2019/08/09/126-autosave-v1/', 0, 'revision', '', 0),
(174, 1, '2019-08-09 15:25:41', '2019-08-09 12:25:41', '', 'УЧЕБНЫЙ ПЛАН.ПРЕПОДАВАНИЕ В НАЧАЛЬНОЙ ШКОЛЕ', '', 'inherit', 'closed', 'closed', '', '166-autosave-v1', '', '', '2019-08-09 15:25:41', '2019-08-09 12:25:41', '', 166, 'http://inos.local/2019/08/09/166-autosave-v1/', 0, 'revision', '', 0),
(175, 1, '2019-08-13 09:57:50', '2019-08-13 06:57:50', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-08-13 09:57:50', '2019-08-13 06:57:50', '', 1, 'http://inos.local/2019/08/13/1-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2019-08-13 10:01:29', '2019-08-13 07:01:29', ' ', '', '', 'publish', 'closed', 'closed', '', '176', '', '', '2019-08-13 10:01:42', '2019-08-13 07:01:42', '', 0, 'http://inos.local/?p=176', 6, 'nav_menu_item', '', 0),
(177, 1, '2019-08-13 10:04:07', '2019-08-13 07:04:07', '', 'НА ГЛАВНУЮ', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%b0-%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d1%83%d1%8e', '', '', '2019-08-14 07:32:53', '2019-08-14 04:32:53', '', 0, 'http://inos.local/?p=177', 1, 'nav_menu_item', '', 0),
(178, 1, '2019-08-13 10:07:46', '2019-08-13 07:07:46', '', 'УЧЕБНЫЙ ПЛАН', '', 'publish', 'closed', 'closed', '', '%d1%83%d1%87%d0%b5%d0%b1%d0%bd%d1%8b%d0%b9-%d0%bf%d0%bb%d0%b0%d0%bd-2', '', '', '2019-08-14 07:32:53', '2019-08-14 04:32:53', '', 0, 'http://inos.local/?p=178', 2, 'nav_menu_item', '', 0),
(179, 1, '2019-08-13 10:10:10', '2019-08-13 07:10:10', '', 'ПРОГРАММЫ ПОВЫШЕНИЯ КВАЛИФИКАЦИИ', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d0%be%d0%b3%d1%80%d0%b0%d0%bc%d0%bc%d1%8b-%d0%bf%d0%be%d0%b2%d1%8b%d1%88%d0%b5%d0%bd%d0%b8%d1%8f-%d0%ba%d0%b2%d0%b0%d0%bb%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%86%d0%b8%d0%b8', '', '', '2019-08-14 07:32:53', '2019-08-14 04:32:53', '', 0, 'http://inos.local/?p=179', 3, 'nav_menu_item', '', 0),
(180, 1, '2019-08-13 10:13:20', '2019-08-13 07:13:20', '', 'ПК УЧИТЕЛЯ РУССКОГО ЯЗЫКА И ЛИТЕРАТУРЫ', '', 'publish', 'closed', 'closed', '', '%d1%80%d1%83%d1%81%d1%81%d0%ba%d0%b8%d0%b9-%d0%b8-%d0%bb%d0%b8%d1%82%d0%b5%d1%80%d0%b0%d1%82%d1%83%d1%80%d0%b0', '', '', '2019-08-14 07:32:53', '2019-08-14 04:32:53', '', 0, 'http://inos.local/?p=180', 4, 'nav_menu_item', '', 0),
(181, 1, '2019-08-13 10:21:52', '2019-08-13 07:21:52', '', 'ПК РУКОВОДИТЕЛЯ ОУ', '', 'publish', 'closed', 'closed', '', '%d1%80%d1%83%d0%ba%d0%be%d0%b2%d0%be%d0%b4%d0%b8%d1%82%d0%b5%d0%bb%d1%8c-%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d0%be%d0%b2%d0%b0%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d0%b3%d0%be-%d1%83%d1%87%d0%b5%d1%80%d0%b5', '', '', '2019-08-14 07:32:53', '2019-08-14 04:32:53', '', 0, 'http://inos.local/?p=181', 5, 'nav_menu_item', '', 0),
(182, 1, '2019-08-13 11:01:10', '2019-08-13 08:01:10', '', 'ПК УЧИТЕЛЯ МАТЕМАТИКИ', '', 'publish', 'closed', 'closed', '', '%d1%83%d1%87%d0%b8%d1%82%d0%b5%d0%bb%d1%8c-%d0%bc%d0%b0%d1%82%d0%b5%d0%bc%d0%b0%d1%82%d0%b8%d0%ba%d0%b8', '', '', '2019-08-14 07:32:53', '2019-08-14 04:32:53', '', 0, 'http://inos.local/?p=182', 6, 'nav_menu_item', '', 0),
(183, 1, '2019-08-13 11:01:10', '2019-08-13 08:01:10', '', 'ПК УЧИТЕЛЯ НАЧАЛЬНОЙ ШКОЛЫ', '', 'publish', 'closed', 'closed', '', '%d1%83%d1%87%d0%b8%d1%82%d0%b5%d0%bb%d1%8c-%d0%bd%d0%b0%d1%87%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d0%b9-%d1%88%d0%ba%d0%be%d0%bb%d1%8b', '', '', '2019-08-14 07:32:53', '2019-08-14 04:32:53', '', 0, 'http://inos.local/?p=183', 7, 'nav_menu_item', '', 0),
(184, 1, '2019-08-13 19:57:44', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-08-13 19:57:44', '0000-00-00 00:00:00', '', 0, 'http://inos.local/?p=184', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'color_class', ''),
(2, 2, '_color_class', 'field_5d483ba09bc99');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Боковое меню', '%d0%b1%d0%be%d0%ba%d0%be%d0%b2%d0%be%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(3, 'Нижнее меню', '%d0%bd%d0%b8%d0%b6%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(4, 'Верхнее меню', '%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(67, 2, 0),
(87, 2, 0),
(88, 2, 0),
(89, 2, 0),
(90, 2, 0),
(91, 2, 0),
(92, 2, 0),
(93, 2, 0),
(94, 2, 0),
(95, 2, 0),
(97, 2, 0),
(98, 2, 0),
(130, 2, 0),
(131, 2, 0),
(132, 2, 0),
(133, 2, 0),
(134, 2, 0),
(135, 2, 0),
(136, 2, 0),
(137, 2, 0),
(138, 2, 0),
(139, 2, 0),
(143, 4, 0),
(144, 4, 0),
(145, 4, 0),
(146, 4, 0),
(148, 4, 0),
(176, 4, 0),
(177, 3, 0),
(178, 3, 0),
(179, 3, 0),
(180, 3, 0),
(181, 3, 0),
(182, 3, 0),
(183, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 22),
(3, 3, 'nav_menu', '', 0, 7),
(4, 4, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'default_password_nag', ''),
(16, 1, 'show_welcome_panel', '0'),
(17, 1, 'session_tokens', 'a:1:{s:64:\"4292f40a1501275114478ab4f94cd6484e60d86ee0ad4d8c51eb9db58ee774ef\";a:4:{s:10:\"expiration\";i:1565852262;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1565679462;}}'),
(18, 1, 'wp_dashboard_quick_press_last_post_id', '184'),
(19, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1564393870'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'wp_media_library_mode', 'list'),
(25, 1, 'nav_menu_recently_edited', '3'),
(26, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(27, 1, 'metaboxhidden_dashboard', 'a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BroRjwbInCUf2rxThmqSte2mAAWwdE1', 'admin', 'swd.admin@mail.ru', '', '2019-07-11 10:34:52', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=781;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
