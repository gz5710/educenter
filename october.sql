-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 07, 2017 at 11:17 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `october`
--

-- --------------------------------------------------------

--
-- Table structure for table `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '::1', '2017-09-29 19:10:02', '2017-09-29 19:10:02'),
(2, 1, '::1', '2017-10-07 11:30:49', '2017-10-07 11:30:49'),
(3, 1, '::1', '2017-10-07 11:56:30', '2017-10-07 11:56:30'),
(4, 1, '::1', '2017-10-07 11:56:30', '2017-10-07 11:56:30'),
(5, 1, '::1', '2017-10-07 12:04:17', '2017-10-07 12:04:17'),
(6, 1, '::1', '2017-10-07 12:09:49', '2017-10-07 12:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `activated_at`, `last_login`, `created_at`, `updated_at`, `is_superuser`) VALUES
(1, 'Zhe', 'GONG', 'admin', 'bruce.gong.tmax@gmail.com', '$2y$10$U0zpt6hMpPMHfK/H1HYtbOx8m4vqG96jj482j0dp48AV2F.7Gt/Ze', NULL, '$2y$10$BI0VMCxxjODgHMkySj1RKObSmnKJS48QQKXZ/lw7RUnfapH/EPjdq', NULL, '', 1, NULL, '2017-10-07 12:09:49', '2017-09-29 19:07:42', '2017-10-07 12:09:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `permissions`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', NULL, '2017-09-29 19:07:41', '2017-09-29 19:07:41', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_user_preferences`
--

INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 1, 'backend', 'reportwidgets', 'dashboard', '{\"welcome\":{\"class\":\"Backend\\\\ReportWidgets\\\\Welcome\",\"sortOrder\":\"50\",\"configuration\":{\"ocWidgetWidth\":6}},\"systemStatus\":{\"class\":\"System\\\\ReportWidgets\\\\Status\",\"sortOrder\":\"70\",\"configuration\":{\"ocWidgetWidth\":6}},\"activeTheme\":{\"class\":\"Cms\\\\ReportWidgets\\\\ActiveTheme\",\"sortOrder\":\"60\",\"configuration\":{\"title\":\"Website\",\"ocWidgetWidth\":4,\"ocWidgetNewRow\":null}}}');

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '::1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_theme_data`
--

INSERT INTO `cms_theme_data` (`id`, `theme`, `data`, `created_at`, `updated_at`) VALUES
(1, 'laratify-octobercms-octaskin', '{\"website_name\":\"\\u6cd5\\u4e2d\\u6559\\u80b2\\u670d\\u52a1\\u4e2d\\u5fc3\",\"website_author\":\"Bruce GONG\",\"website_url\":\"www.gongzhe.fr\",\"description\":\"\\u8fd9\\u91cc\\u662f\\u6cd5\\u4e2d\\u6559\\u80b2\\u670d\\u52a1\\u4e2d\\u5fc3\\u5b98\\u65b9\\u7f51\\u7ad9\",\"keywords\":null,\"load_google_fonts\":\"1\",\"google_font_family\":\"Roboto+Slab:300,400,700|Raleway:300,300i,400,400i,700,700i\",\"load_fontawesome\":\"1\",\"load_material_icons\":\"1\",\"load_stroke7_icons\":\"1\",\"load_jQuery\":\"1\",\"jQuery_version\":\"2.2.4\",\"load_octobercms_framework\":\"1\",\"primary_color\":\"#2196f3\",\"secondary_color\":\"#808080\",\"navigation_background_color\":\"#2196f3\",\"navigation_text_color\":\"#ffffff\",\"slideshow_background_color\":\"#455a64\",\"slideshow_text_color\":\"#ffffff\",\"header_background_color\":\"#37474f\",\"header_text_color\":\"#ffffff\",\"feature_background_color\":\"#ffffff\",\"feature_text_color\":\"#686868\",\"utility_background_color\":\"#eceff1\",\"utility_text_color\":\"#686868\",\"mainpage_background_color\":\"#ffffff\",\"mainpage_text_color\":\"#686868\",\"bottom_background_color\":\"#eceff1\",\"bottom_text_color\":\"#686868\",\"extension_background_color\":\"#ffffff\",\"extension_text_color\":\"#686868\",\"footer_background_color\":\"#455a64\",\"footer_text_color\":\"#b0bec5\",\"copyright_background_color\":\"#37474f\",\"copyright_text_color\":\"#78909c\",\"load_animate_css\":\"1\",\"load_wow_js\":\"1\",\"load_owl_carousel\":\"1\",\"custom_css\":\"\",\"custom_js\":\"\"}', '2017-09-29 19:24:47', '2017-10-07 09:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `old_content` longtext COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `master_field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slave_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slave_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2013_10_01_000001_Db_Deferred_Bindings', 1),
('2013_10_01_000002_Db_System_Files', 1),
('2013_10_01_000003_Db_System_Plugin_Versions', 1),
('2013_10_01_000004_Db_System_Plugin_History', 1),
('2013_10_01_000005_Db_System_Settings', 1),
('2013_10_01_000006_Db_System_Parameters', 1),
('2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
('2013_10_01_000008_Db_System_Mail_Templates', 1),
('2013_10_01_000009_Db_System_Mail_Layouts', 1),
('2014_10_01_000010_Db_Jobs', 1),
('2014_10_01_000011_Db_System_Event_Logs', 1),
('2014_10_01_000012_Db_System_Request_Logs', 1),
('2014_10_01_000013_Db_System_Sessions', 1),
('2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
('2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
('2015_10_01_000016_Db_Cache', 1),
('2015_10_01_000017_Db_System_Revisions', 1),
('2015_10_01_000018_Db_FailedJobs', 1),
('2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
('2016_10_01_000020_Db_System_Timestamp_Fix', 1),
('2013_10_01_000001_Db_Backend_Users', 2),
('2013_10_01_000002_Db_Backend_User_Groups', 2),
('2013_10_01_000003_Db_Backend_Users_Groups', 2),
('2013_10_01_000004_Db_Backend_User_Throttle', 2),
('2014_01_04_000005_Db_Backend_User_Preferences', 2),
('2014_10_01_000006_Db_Backend_Access_Log', 2),
('2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
('2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
('2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
('2014_10_01_000001_Db_Cms_Theme_Data', 3),
('2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
('2017_10_01_000003_Db_Cms_Theme_Logs', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_categories`
--

CREATE TABLE `rainlab_blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rainlab_blog_categories`
--

INSERT INTO `rainlab_blog_categories` (`id`, `name`, `slug`, `code`, `description`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', NULL, NULL, NULL, 1, 2, 0, '2017-09-29 19:10:30', '2017-09-29 19:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts`
--

CREATE TABLE `rainlab_blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `content_html` longtext COLLATE utf8_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`) VALUES
(1, NULL, 'First blog post', 'first-blog-post', 'The first ever blog post is here. It might be a good idea to update this post with some more relevant content.', 'This is your first ever **blog post**! It might be a good idea to update this post with some more relevant content.\n\nYou can edit this content by selecting **Blog** from the administration back-end menu.\n\n*Enjoy the good times!*', '<p>This is your first ever <strong>blog post</strong>! It might be a good idea to update this post with some more relevant content.</p>\n<p>You can edit this content by selecting <strong>Blog</strong> from the administration back-end menu.</p>\n<p><em>Enjoy the good times!</em></p>', '2017-09-29 19:10:30', 1, '2017-09-29 19:10:30', '2017-09-29 19:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts_categories`
--

CREATE TABLE `rainlab_blog_posts_categories` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_channels`
--

CREATE TABLE `rainlab_forum_channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `count_topics` int(11) NOT NULL DEFAULT '0',
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `is_moderated` tinyint(1) NOT NULL DEFAULT '0',
  `embed_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rainlab_forum_channels`
--

INSERT INTO `rainlab_forum_channels` (`id`, `parent_id`, `title`, `slug`, `description`, `nest_left`, `nest_right`, `nest_depth`, `count_topics`, `count_posts`, `created_at`, `updated_at`, `is_hidden`, `is_moderated`, `embed_code`) VALUES
(1, NULL, 'Channel Orange', 'channel-orange', 'A root level forum channel', 1, 12, 0, 0, 0, '2017-09-29 19:10:32', '2017-09-29 19:10:32', 0, 0, NULL),
(2, 1, 'Autumn Leaves', 'autumn-leaves', 'Disccusion about the season of falling leaves.', 2, 9, 1, 0, 0, '2017-09-29 19:10:32', '2017-09-29 19:10:32', 0, 0, NULL),
(3, 2, 'September', 'september', 'The start of the fall season.', 3, 4, 2, 0, 0, '2017-09-29 19:10:32', '2017-09-29 19:10:32', 0, 0, NULL),
(4, 2, 'October', 'october', 'The middle of the fall season.', 5, 6, 2, 0, 0, '2017-09-29 19:10:32', '2017-09-29 19:10:32', 0, 0, NULL),
(5, 2, 'November', 'november', 'The end of the fall season.', 7, 8, 2, 0, 0, '2017-09-29 19:10:32', '2017-09-29 19:10:32', 0, 0, NULL),
(6, 1, 'Summer Breeze', 'summer-breeze', 'Disccusion about the wind at the ocean.', 10, 11, 1, 0, 0, '2017-09-29 19:10:32', '2017-09-29 19:10:32', 0, 0, NULL),
(7, NULL, 'Channel Green', 'channel-green', 'A root level forum channel', 13, 18, 0, 0, 0, '2017-09-29 19:10:32', '2017-09-29 19:10:32', 0, 0, NULL),
(8, 7, 'Winter Snow', 'winter-snow', 'Disccusion about the frosty snow flakes.', 14, 15, 1, 0, 0, '2017-09-29 19:10:32', '2017-09-29 19:10:32', 0, 0, NULL),
(9, 7, 'Spring Trees', 'spring-trees', 'Disccusion about the blooming gardens.', 16, 17, 1, 0, 0, '2017-09-29 19:10:32', '2017-09-29 19:10:32', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_members`
--

CREATE TABLE `rainlab_forum_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `count_topics` int(11) NOT NULL DEFAULT '0',
  `last_active_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_moderator` tinyint(1) NOT NULL DEFAULT '0',
  `is_banned` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_posts`
--

CREATE TABLE `rainlab_forum_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  `topic_id` int(10) UNSIGNED DEFAULT NULL,
  `member_id` int(10) UNSIGNED DEFAULT NULL,
  `edit_user_id` int(11) DEFAULT NULL,
  `delete_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_topics`
--

CREATE TABLE `rainlab_forum_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `start_member_id` int(11) DEFAULT NULL,
  `last_post_id` int(11) DEFAULT NULL,
  `last_post_member_id` int(11) DEFAULT NULL,
  `last_post_at` datetime DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_sticky` tinyint(1) NOT NULL DEFAULT '0',
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `count_views` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `embed_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_topic_followers`
--

CREATE TABLE `rainlab_forum_topic_followers` (
  `topic_id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_translate_attributes`
--

CREATE TABLE `rainlab_translate_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_data` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_translate_indexes`
--

CREATE TABLE `rainlab_translate_indexes` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_translate_locales`
--

CREATE TABLE `rainlab_translate_locales` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rainlab_translate_locales`
--

INSERT INTO `rainlab_translate_locales` (`id`, `code`, `name`, `is_default`, `is_enabled`) VALUES
(1, 'en', 'English', 1, 1),
(2, 'zh-CN', '中文', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_translate_messages`
--

CREATE TABLE `rainlab_translate_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_data` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rainlab_translate_messages`
--

INSERT INTO `rainlab_translate_messages` (`id`, `code`, `message_data`) VALUES
(1, 'site.name', '{\"x\":\"site.name\"}'),
(2, 'nav.home', '{\"x\":\"nav.home\"}'),
(3, 'nav.languages', '{\"x\":\"nav.languages\"}'),
(4, 'nav.messages', '{\"x\":\"nav.messages\"}'),
(5, 'nav.content', '{\"x\":\"nav.content\"}'),
(6, 'nav.video', '{\"x\":\"nav.video\"}'),
(7, 'help', '{\"x\":\"Help\",\"zh-CN\":\"\\u5e2e\\u52a9\"}');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_user_mail_blockers`
--

CREATE TABLE `rainlab_user_mail_blockers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci,
  `last_activity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `details` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_text` text COLLATE utf8_unicode_ci,
  `content_css` text COLLATE utf8_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `created_at`, `updated_at`) VALUES
(1, 'Default', 'default', '<html>\n    <head>\n        <style type=\"text/css\" media=\"screen\">\n            {{ css|raw }}\n        </style>\n    </head>\n    <body>\n        {{ content|raw }}\n    </body>\n</html>', '{{ content|raw }}', 'a, a:hover {\n    text-decoration: none;\n    color: #0862A2;\n    font-weight: bold;\n}\n\ntd, tr, th, table {\n    padding: 0px;\n    margin: 0px;\n}\n\np {\n    margin: 10px 0;\n}', 1, '2017-09-29 19:07:41', '2017-09-29 19:07:41'),
(2, 'System', 'system', '<html>\n    <head>\n        <style type=\"text/css\" media=\"screen\">\n            {{ css|raw }}\n        </style>\n    </head>\n    <body>\n        {{ content|raw }}\n        <hr />\n        <p>This is an automatic message. Please do not reply to it.</p>\n    </body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', 'a, a:hover {\n    text-decoration: none;\n    color: #0862A2;\n    font-weight: bold;\n}\n\ntd, tr, th, table {\n    padding: 0px;\n    margin: 0px;\n}\n\np {\n    margin: 10px 0;\n}', 1, '2017-09-29 19:07:41', '2017-09-29 19:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_text` text COLLATE utf8_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'core', 'hash', '\"386846ebe3802c4f192625743abb3f06\"'),
(3, 'system', 'core', 'build', '\"419\"'),
(4, 'system', 'update', 'retry', '1507469451'),
(5, 'system', 'theme', 'history', '{\"Laratify.octobercms-octaskin\":\"laratify-octobercms-octaskin\"}'),
(6, 'cms', 'theme', 'active', '\"laratify-octobercms-octaskin\"');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(1, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2017-09-29 19:07:41'),
(2, 'RainLab.Pages', 'comment', '1.0.1', 'Implemented the static pages management and the Static Page component.', '2017-09-29 19:07:41'),
(3, 'RainLab.Pages', 'comment', '1.0.2', 'Fixed the page preview URL.', '2017-09-29 19:07:41'),
(4, 'RainLab.Pages', 'comment', '1.0.3', 'Implemented menus.', '2017-09-29 19:07:41'),
(5, 'RainLab.Pages', 'comment', '1.0.4', 'Implemented the content block management and placeholder support.', '2017-09-29 19:07:41'),
(6, 'RainLab.Pages', 'comment', '1.0.5', 'Added support for the Sitemap plugin.', '2017-09-29 19:07:41'),
(7, 'RainLab.Pages', 'comment', '1.0.6', 'Minor updates to the internal API.', '2017-09-29 19:07:41'),
(8, 'RainLab.Pages', 'comment', '1.0.7', 'Added the Snippets feature.', '2017-09-29 19:07:41'),
(9, 'RainLab.Pages', 'comment', '1.0.8', 'Minor improvements to the code.', '2017-09-29 19:07:41'),
(10, 'RainLab.Pages', 'comment', '1.0.9', 'Fixes issue where Snippet tab is missing from the Partials form.', '2017-09-29 19:07:41'),
(11, 'RainLab.Pages', 'comment', '1.0.10', 'Add translations for various locales.', '2017-09-29 19:07:41'),
(12, 'RainLab.Pages', 'comment', '1.0.11', 'Fixes issue where placeholders tabs were missing from Page form.', '2017-09-29 19:07:41'),
(13, 'RainLab.Pages', 'comment', '1.0.12', 'Implement Media Manager support.', '2017-09-29 19:07:41'),
(14, 'RainLab.Pages', 'script', '1.1.0', 'snippets_rename_viewbag_properties.php', '2017-09-29 19:07:41'),
(15, 'RainLab.Pages', 'comment', '1.1.0', 'Adds meta title and description to pages. Adds |staticPage filter.', '2017-09-29 19:07:41'),
(16, 'RainLab.Pages', 'comment', '1.1.1', 'Add support for Syntax Fields.', '2017-09-29 19:07:41'),
(17, 'RainLab.Pages', 'comment', '1.1.2', 'Static Breadcrumbs component now respects the hide from navigation setting.', '2017-09-29 19:07:41'),
(18, 'RainLab.Pages', 'comment', '1.1.3', 'Minor back-end styling fix.', '2017-09-29 19:07:41'),
(19, 'RainLab.Pages', 'comment', '1.1.4', 'Minor fix to the StaticPage component API.', '2017-09-29 19:07:41'),
(20, 'RainLab.Pages', 'comment', '1.1.5', 'Fixes bug when using syntax fields.', '2017-09-29 19:07:41'),
(21, 'RainLab.Pages', 'comment', '1.1.6', 'Minor styling fix to the back-end UI.', '2017-09-29 19:07:41'),
(22, 'RainLab.Pages', 'comment', '1.1.7', 'Improved menu item form to include CSS class, open in a new window and hidden flag.', '2017-09-29 19:07:41'),
(23, 'RainLab.Pages', 'comment', '1.1.8', 'Improved the output of snippet partials when saved.', '2017-09-29 19:07:41'),
(24, 'RainLab.Pages', 'comment', '1.1.9', 'Minor update to snippet inspector internal API.', '2017-09-29 19:07:41'),
(25, 'RainLab.Pages', 'comment', '1.1.10', 'Fixes a bug where selecting a layout causes permanent unsaved changes.', '2017-09-29 19:07:41'),
(26, 'RainLab.Pages', 'comment', '1.1.11', 'Add support for repeater syntax field.', '2017-09-29 19:07:41'),
(27, 'RainLab.Pages', 'comment', '1.2.0', 'Added support for translations, UI updates.', '2017-09-29 19:07:41'),
(28, 'RainLab.Pages', 'comment', '1.2.1', 'Use nice titles when listing the content files.', '2017-09-29 19:07:41'),
(29, 'RainLab.Pages', 'comment', '1.2.2', 'Minor styling update.', '2017-09-29 19:07:41'),
(30, 'RainLab.Pages', 'comment', '1.2.3', 'Snippets can now be moved by dragging them.', '2017-09-29 19:07:41'),
(31, 'RainLab.Pages', 'comment', '1.2.4', 'Fixes a bug where the cursor is misplaced when editing text files.', '2017-09-29 19:07:41'),
(32, 'RainLab.Pages', 'comment', '1.2.5', 'Fixes a bug where the parent page is lost upon changing a page layout.', '2017-09-29 19:07:41'),
(33, 'RainLab.Pages', 'comment', '1.2.6', 'Shared view variables are now passed to static pages.', '2017-09-29 19:07:41'),
(34, 'RainLab.Pages', 'comment', '1.2.7', 'Fixes issue with duplicating properties when adding multiple snippets on the same page.', '2017-09-29 19:07:41'),
(35, 'RainLab.Pages', 'comment', '1.2.8', 'Fixes a bug where creating a content block without extension doesn\'t save the contents to file.', '2017-09-29 19:07:41'),
(36, 'RainLab.Pages', 'comment', '1.2.9', 'Add conditional support for translating page URLs.', '2017-09-29 19:07:41'),
(37, 'RainLab.Pages', 'comment', '1.2.10', 'Streamline generation of URLs to use the new Cms::url helper.', '2017-09-29 19:07:41'),
(38, 'RainLab.Pages', 'comment', '1.2.11', 'Implements repeater usage with translate plugin.', '2017-09-29 19:07:41'),
(39, 'RainLab.Pages', 'comment', '1.2.12', 'Fixes minor issue when using snippets and switching the application locale.', '2017-09-29 19:07:41'),
(40, 'RainLab.Pages', 'comment', '1.2.13', 'Fixes bug when AJAX is used on a page that does not yet exist.', '2017-09-29 19:07:41'),
(41, 'RainLab.Pages', 'comment', '1.2.14', 'Add theme logging support for changes made to menus.', '2017-09-29 19:07:41'),
(42, 'RainLab.Pages', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2017-09-29 19:07:41'),
(43, 'RainLab.Pages', 'comment', '1.2.16', 'Fixes a bug when saving a template that has been modified outside of the CMS (mtime mismatch).', '2017-09-29 19:07:41'),
(44, 'RainLab.Translate', 'script', '1.0.1', 'create_messages_table.php', '2017-09-29 19:07:41'),
(45, 'RainLab.Translate', 'script', '1.0.1', 'create_attributes_table.php', '2017-09-29 19:07:41'),
(46, 'RainLab.Translate', 'script', '1.0.1', 'create_locales_table.php', '2017-09-29 19:07:41'),
(47, 'RainLab.Translate', 'script', '1.0.1', 'seed_all_tables.php', '2017-09-29 19:07:41'),
(48, 'RainLab.Translate', 'comment', '1.0.1', 'First version of Translate', '2017-09-29 19:07:41'),
(49, 'RainLab.Translate', 'comment', '1.0.2', 'Languages and Messages can now be deleted.', '2017-09-29 19:07:41'),
(50, 'RainLab.Translate', 'comment', '1.0.3', 'Minor updates for latest October release.', '2017-09-29 19:07:41'),
(51, 'RainLab.Translate', 'comment', '1.0.4', 'Locale cache will clear when updating a language.', '2017-09-29 19:07:41'),
(52, 'RainLab.Translate', 'comment', '1.0.5', 'Add Spanish language and fix plugin config.', '2017-09-29 19:07:41'),
(53, 'RainLab.Translate', 'comment', '1.0.6', 'Minor improvements to the code.', '2017-09-29 19:07:41'),
(54, 'RainLab.Translate', 'comment', '1.0.7', 'Fixes major bug where translations are skipped entirely!', '2017-09-29 19:07:41'),
(55, 'RainLab.Translate', 'comment', '1.0.8', 'Minor bug fixes.', '2017-09-29 19:07:41'),
(56, 'RainLab.Translate', 'comment', '1.0.9', 'Fixes an issue where newly created models lose their translated values.', '2017-09-29 19:07:41'),
(57, 'RainLab.Translate', 'comment', '1.0.10', 'Minor fix for latest build.', '2017-09-29 19:07:41'),
(58, 'RainLab.Translate', 'comment', '1.0.11', 'Fix multilingual rich editor when used in stretch mode.', '2017-09-29 19:07:41'),
(59, 'RainLab.Translate', 'comment', '1.1.0', 'Introduce compatibility with RainLab.Pages plugin.', '2017-09-29 19:07:41'),
(60, 'RainLab.Translate', 'comment', '1.1.1', 'Minor UI fix to the language picker.', '2017-09-29 19:07:41'),
(61, 'RainLab.Translate', 'comment', '1.1.2', 'Add support for translating Static Content files.', '2017-09-29 19:07:41'),
(62, 'RainLab.Translate', 'comment', '1.1.3', 'Improved support for the multilingual rich editor.', '2017-09-29 19:07:41'),
(63, 'RainLab.Translate', 'comment', '1.1.4', 'Adds new multilingual markdown editor.', '2017-09-29 19:07:41'),
(64, 'RainLab.Translate', 'comment', '1.1.5', 'Minor update to the multilingual control API.', '2017-09-29 19:07:41'),
(65, 'RainLab.Translate', 'comment', '1.1.6', 'Minor improvements in the message editor.', '2017-09-29 19:07:41'),
(66, 'RainLab.Translate', 'comment', '1.1.7', 'Fixes bug not showing content when first loading multilingual textarea controls.', '2017-09-29 19:07:41'),
(67, 'RainLab.Translate', 'comment', '1.2.0', 'CMS pages now support translating the URL.', '2017-09-29 19:07:41'),
(68, 'RainLab.Translate', 'comment', '1.2.1', 'Minor update in the rich editor and code editor language control position.', '2017-09-29 19:07:41'),
(69, 'RainLab.Translate', 'comment', '1.2.2', 'Static Pages now support translating the URL.', '2017-09-29 19:07:41'),
(70, 'RainLab.Translate', 'comment', '1.2.3', 'Fixes Rich Editor when inserting a page link.', '2017-09-29 19:07:41'),
(71, 'RainLab.Translate', 'script', '1.2.4', 'create_indexes_table.php', '2017-09-29 19:07:41'),
(72, 'RainLab.Translate', 'comment', '1.2.4', 'Translatable attributes can now be declared as indexes.', '2017-09-29 19:07:41'),
(73, 'RainLab.Translate', 'comment', '1.2.5', 'Adds new multilingual repeater form widget.', '2017-09-29 19:07:41'),
(74, 'RainLab.Translate', 'comment', '1.2.6', 'Fixes repeater usage with static pages plugin.', '2017-09-29 19:07:41'),
(75, 'RainLab.Translate', 'comment', '1.2.7', 'Fixes placeholder usage with static pages plugin.', '2017-09-29 19:07:41'),
(76, 'RainLab.Translate', 'comment', '1.2.8', 'Improvements to code for latest October build compatibility.', '2017-09-29 19:07:41'),
(77, 'RainLab.Translate', 'comment', '1.2.9', 'Fixes context for translated strings when used with Static Pages.', '2017-09-29 19:07:41'),
(78, 'RainLab.Translate', 'comment', '1.2.10', 'Minor UI fix to the multilingual repeater.', '2017-09-29 19:07:41'),
(79, 'RainLab.Translate', 'comment', '1.2.11', 'Fixes translation not working with partials loaded via AJAX', '2017-09-29 19:07:41'),
(80, 'RainLab.Blog', 'script', '1.0.1', 'create_posts_table.php', '2017-09-29 19:10:30'),
(81, 'RainLab.Blog', 'script', '1.0.1', 'create_categories_table.php', '2017-09-29 19:10:30'),
(82, 'RainLab.Blog', 'script', '1.0.1', 'seed_all_tables.php', '2017-09-29 19:10:30'),
(83, 'RainLab.Blog', 'comment', '1.0.1', 'Initialize plugin.', '2017-09-29 19:10:30'),
(84, 'RainLab.Blog', 'comment', '1.0.2', 'Added the processed HTML content column to the posts table.', '2017-09-29 19:10:30'),
(85, 'RainLab.Blog', 'comment', '1.0.3', 'Category component has been merged with Posts component.', '2017-09-29 19:10:30'),
(86, 'RainLab.Blog', 'comment', '1.0.4', 'Improvements to the Posts list management UI.', '2017-09-29 19:10:30'),
(87, 'RainLab.Blog', 'comment', '1.0.5', 'Removes the Author column from blog post list.', '2017-09-29 19:10:30'),
(88, 'RainLab.Blog', 'comment', '1.0.6', 'Featured images now appear in the Post component.', '2017-09-29 19:10:30'),
(89, 'RainLab.Blog', 'comment', '1.0.7', 'Added support for the Static Pages menus.', '2017-09-29 19:10:30'),
(90, 'RainLab.Blog', 'comment', '1.0.8', 'Added total posts to category list.', '2017-09-29 19:10:30'),
(91, 'RainLab.Blog', 'comment', '1.0.9', 'Added support for the Sitemap plugin.', '2017-09-29 19:10:30'),
(92, 'RainLab.Blog', 'comment', '1.0.10', 'Added permission to prevent users from seeing posts they did not create.', '2017-09-29 19:10:30'),
(93, 'RainLab.Blog', 'comment', '1.0.11', 'Deprecate \"idParam\" component property in favour of \"slug\" property.', '2017-09-29 19:10:30'),
(94, 'RainLab.Blog', 'comment', '1.0.12', 'Fixes issue where images cannot be uploaded caused by latest Markdown library.', '2017-09-29 19:10:30'),
(95, 'RainLab.Blog', 'comment', '1.0.13', 'Fixes problem with providing pages to Sitemap and Pages plugins.', '2017-09-29 19:10:30'),
(96, 'RainLab.Blog', 'comment', '1.0.14', 'Add support for CSRF protection feature added to core.', '2017-09-29 19:10:30'),
(97, 'RainLab.Blog', 'comment', '1.1.0', 'Replaced the Post editor with the new core Markdown editor.', '2017-09-29 19:10:30'),
(98, 'RainLab.Blog', 'comment', '1.1.1', 'Posts can now be imported and exported.', '2017-09-29 19:10:30'),
(99, 'RainLab.Blog', 'comment', '1.1.2', 'Posts are no longer visible if the published date has not passed.', '2017-09-29 19:10:30'),
(100, 'RainLab.Blog', 'comment', '1.1.3', 'Added a New Post shortcut button to the blog menu.', '2017-09-29 19:10:30'),
(101, 'RainLab.Blog', 'script', '1.2.0', 'categories_add_nested_fields.php', '2017-09-29 19:10:30'),
(102, 'RainLab.Blog', 'comment', '1.2.0', 'Categories now support nesting.', '2017-09-29 19:10:30'),
(103, 'RainLab.Blog', 'comment', '1.2.1', 'Post slugs now must be unique.', '2017-09-29 19:10:30'),
(104, 'RainLab.Blog', 'comment', '1.2.2', 'Fixes issue on new installs.', '2017-09-29 19:10:30'),
(105, 'RainLab.Blog', 'comment', '1.2.3', 'Minor user interface update.', '2017-09-29 19:10:30'),
(106, 'RainLab.Blog', 'script', '1.2.4', 'update_timestamp_nullable.php', '2017-09-29 19:10:31'),
(107, 'RainLab.Blog', 'comment', '1.2.4', 'Database maintenance. Updated all timestamp columns to be nullable.', '2017-09-29 19:10:31'),
(108, 'RainLab.Blog', 'comment', '1.2.5', 'Added translation support for blog posts.', '2017-09-29 19:10:31'),
(109, 'RainLab.Blog', 'comment', '1.2.6', 'The published field can now supply a time with the date.', '2017-09-29 19:10:31'),
(110, 'RainLab.Blog', 'comment', '1.2.7', 'Introduced a new RSS feed component.', '2017-09-29 19:10:31'),
(111, 'RainLab.Blog', 'comment', '1.2.8', 'Fixes issue with translated `content_html` attribute on blog posts.', '2017-09-29 19:10:31'),
(112, 'RainLab.Blog', 'comment', '1.2.9', 'Added translation support for blog categories.', '2017-09-29 19:10:31'),
(113, 'RainLab.Blog', 'comment', '1.2.10', 'Added translation support for post slugs.', '2017-09-29 19:10:31'),
(114, 'RainLab.Blog', 'comment', '1.2.11', 'Fixes bug where excerpt is not translated.', '2017-09-29 19:10:31'),
(115, 'RainLab.Blog', 'comment', '1.2.12', 'Description field added to category form.', '2017-09-29 19:10:31'),
(116, 'RainLab.Blog', 'comment', '1.2.13', 'Improved support for Static Pages menus, added a blog post and all blog posts.', '2017-09-29 19:10:31'),
(117, 'RainLab.Blog', 'comment', '1.2.14', 'Added post exception property to the post list component, useful for showing related posts.', '2017-09-29 19:10:31'),
(118, 'RainLab.Blog', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2017-09-29 19:10:31'),
(119, 'RainLab.Blog', 'comment', '1.2.16', 'Added `nextPost` and `previousPost` to the blog post component.', '2017-09-29 19:10:31'),
(120, 'RainLab.User', 'script', '1.0.1', 'create_users_table.php', '2017-09-29 19:10:31'),
(121, 'RainLab.User', 'script', '1.0.1', 'create_throttle_table.php', '2017-09-29 19:10:31'),
(122, 'RainLab.User', 'comment', '1.0.1', 'Initialize plugin.', '2017-09-29 19:10:31'),
(123, 'RainLab.User', 'comment', '1.0.2', 'Seed tables.', '2017-09-29 19:10:31'),
(124, 'RainLab.User', 'comment', '1.0.3', 'Translated hard-coded text to language strings.', '2017-09-29 19:10:31'),
(125, 'RainLab.User', 'comment', '1.0.4', 'Improvements to user-interface for Location manager.', '2017-09-29 19:10:31'),
(126, 'RainLab.User', 'comment', '1.0.5', 'Added contact details for users.', '2017-09-29 19:10:31'),
(127, 'RainLab.User', 'script', '1.0.6', 'create_mail_blockers_table.php', '2017-09-29 19:10:31'),
(128, 'RainLab.User', 'comment', '1.0.6', 'Added Mail Blocker utility so users can block specific mail templates.', '2017-09-29 19:10:31'),
(129, 'RainLab.User', 'comment', '1.0.7', 'Add back-end Settings page.', '2017-09-29 19:10:31'),
(130, 'RainLab.User', 'comment', '1.0.8', 'Updated the Settings page.', '2017-09-29 19:10:31'),
(131, 'RainLab.User', 'comment', '1.0.9', 'Adds new welcome mail message for users and administrators.', '2017-09-29 19:10:31'),
(132, 'RainLab.User', 'comment', '1.0.10', 'Adds administrator-only activation mode.', '2017-09-29 19:10:31'),
(133, 'RainLab.User', 'script', '1.0.11', 'users_add_login_column.php', '2017-09-29 19:10:31'),
(134, 'RainLab.User', 'comment', '1.0.11', 'Users now have an optional login field that defaults to the email field.', '2017-09-29 19:10:31'),
(135, 'RainLab.User', 'script', '1.0.12', 'users_rename_login_to_username.php', '2017-09-29 19:10:31'),
(136, 'RainLab.User', 'comment', '1.0.12', 'Create a dedicated setting for choosing the login mode.', '2017-09-29 19:10:31'),
(137, 'RainLab.User', 'comment', '1.0.13', 'Minor fix to the Account sign in logic.', '2017-09-29 19:10:31'),
(138, 'RainLab.User', 'comment', '1.0.14', 'Minor improvements to the code.', '2017-09-29 19:10:31'),
(139, 'RainLab.User', 'script', '1.0.15', 'users_add_surname.php', '2017-09-29 19:10:31'),
(140, 'RainLab.User', 'comment', '1.0.15', 'Adds last name column to users table (surname).', '2017-09-29 19:10:31'),
(141, 'RainLab.User', 'comment', '1.0.16', 'Require permissions for settings page too.', '2017-09-29 19:10:31'),
(142, 'RainLab.User', 'comment', '1.1.0', '!!! Profile fields and Locations have been removed.', '2017-09-29 19:10:31'),
(143, 'RainLab.User', 'script', '1.1.1', 'create_user_groups_table.php', '2017-09-29 19:10:31'),
(144, 'RainLab.User', 'script', '1.1.1', 'seed_user_groups_table.php', '2017-09-29 19:10:31'),
(145, 'RainLab.User', 'comment', '1.1.1', 'Users can now be added to groups.', '2017-09-29 19:10:31'),
(146, 'RainLab.User', 'comment', '1.1.2', 'A raw URL can now be passed as the redirect property in the Account component.', '2017-09-29 19:10:31'),
(147, 'RainLab.User', 'comment', '1.1.3', 'Adds a super user flag to the users table, reserved for future use.', '2017-09-29 19:10:31'),
(148, 'RainLab.User', 'comment', '1.1.4', 'User list can be filtered by the group they belong to.', '2017-09-29 19:10:31'),
(149, 'RainLab.User', 'comment', '1.1.5', 'Adds a new permission to hide the User settings menu item.', '2017-09-29 19:10:31'),
(150, 'RainLab.User', 'script', '1.2.0', 'users_add_deleted_at.php', '2017-09-29 19:10:31'),
(151, 'RainLab.User', 'comment', '1.2.0', 'Users can now deactivate their own accounts.', '2017-09-29 19:10:31'),
(152, 'RainLab.User', 'comment', '1.2.1', 'New feature for checking if a user is recently active/online.', '2017-09-29 19:10:31'),
(153, 'RainLab.User', 'comment', '1.2.2', 'Add bulk action button to user list.', '2017-09-29 19:10:31'),
(154, 'RainLab.User', 'comment', '1.2.3', 'Included some descriptive paragraphs in the Reset Password component markup.', '2017-09-29 19:10:31'),
(155, 'RainLab.User', 'comment', '1.2.4', 'Added a checkbox for blocking all mail sent to the user.', '2017-09-29 19:10:31'),
(156, 'RainLab.User', 'script', '1.2.5', 'update_timestamp_nullable.php', '2017-09-29 19:10:31'),
(157, 'RainLab.User', 'comment', '1.2.5', 'Database maintenance. Updated all timestamp columns to be nullable.', '2017-09-29 19:10:31'),
(158, 'RainLab.User', 'script', '1.2.6', 'users_add_last_seen.php', '2017-09-29 19:10:31'),
(159, 'RainLab.User', 'comment', '1.2.6', 'Add a dedicated last seen column for users.', '2017-09-29 19:10:31'),
(160, 'RainLab.User', 'comment', '1.2.7', 'Minor fix to user timestamp attributes.', '2017-09-29 19:10:31'),
(161, 'RainLab.User', 'comment', '1.2.8', 'Add date range filter to users list. Introduced a logout event.', '2017-09-29 19:10:31'),
(162, 'RainLab.User', 'comment', '1.2.9', 'Add invitation mail for new accounts created in the back-end.', '2017-09-29 19:10:31'),
(163, 'RainLab.User', 'script', '1.3.0', 'users_add_guest_flag.php', '2017-09-29 19:10:31'),
(164, 'RainLab.User', 'script', '1.3.0', 'users_add_superuser_flag.php', '2017-09-29 19:10:31'),
(165, 'RainLab.User', 'comment', '1.3.0', 'Introduced guest user accounts.', '2017-09-29 19:10:31'),
(166, 'RainLab.User', 'comment', '1.3.1', 'User notification variables can now be extended.', '2017-09-29 19:10:31'),
(167, 'RainLab.User', 'comment', '1.3.2', 'Minor fix to the Auth::register method.', '2017-09-29 19:10:31'),
(168, 'RainLab.User', 'comment', '1.3.3', 'Allow prevention of concurrent user sessions via the user settings.', '2017-09-29 19:10:31'),
(169, 'RainLab.User', 'comment', '1.3.4', 'Added force secure protocol property to the account component.', '2017-09-29 19:10:31'),
(170, 'RainLab.Forum', 'script', '1.0.1', 'create_channels_table.php', '2017-09-29 19:10:31'),
(171, 'RainLab.Forum', 'script', '1.0.1', 'create_posts_table.php', '2017-09-29 19:10:31'),
(172, 'RainLab.Forum', 'script', '1.0.1', 'create_topics_table.php', '2017-09-29 19:10:31'),
(173, 'RainLab.Forum', 'script', '1.0.1', 'create_members_table.php', '2017-09-29 19:10:32'),
(174, 'RainLab.Forum', 'script', '1.0.1', 'seed_all_tables.php', '2017-09-29 19:10:32'),
(175, 'RainLab.Forum', 'comment', '1.0.1', 'First version of Forum', '2017-09-29 19:10:32'),
(176, 'RainLab.Forum', 'script', '1.0.2', 'create_topic_watches_table.php', '2017-09-29 19:10:32'),
(177, 'RainLab.Forum', 'comment', '1.0.2', 'Add unread flags to topics', '2017-09-29 19:10:32'),
(178, 'RainLab.Forum', 'script', '1.0.3', 'members_add_mod_and_ban.php', '2017-09-29 19:10:32'),
(179, 'RainLab.Forum', 'comment', '1.0.3', 'Users can now be made moderators or be banned', '2017-09-29 19:10:32'),
(180, 'RainLab.Forum', 'script', '1.0.4', 'channels_add_hidden_and_moderated.php', '2017-09-29 19:10:32'),
(181, 'RainLab.Forum', 'comment', '1.0.4', 'Channels can now be hidden or moderated', '2017-09-29 19:10:32'),
(182, 'RainLab.Forum', 'script', '1.0.5', 'add_embed_code.php', '2017-09-29 19:10:32'),
(183, 'RainLab.Forum', 'comment', '1.0.5', 'Introduced topic and channel embedding', '2017-09-29 19:10:32'),
(184, 'RainLab.Forum', 'script', '1.0.6', 'create_channel_watches_table.php', '2017-09-29 19:10:32'),
(185, 'RainLab.Forum', 'comment', '1.0.6', 'Add unread flags to channels', '2017-09-29 19:10:32'),
(186, 'RainLab.Forum', 'script', '1.0.7', 'create_topic_followers_table.php', '2017-09-29 19:10:32'),
(187, 'RainLab.Forum', 'comment', '1.0.7', 'Forum members can now follow topics', '2017-09-29 19:10:32'),
(188, 'RainLab.Forum', 'comment', '1.0.8', 'Added Channel name to the Topics component view', '2017-09-29 19:10:32'),
(189, 'RainLab.Forum', 'comment', '1.0.9', 'Updated the Settings page', '2017-09-29 19:10:32'),
(190, 'RainLab.Forum', 'comment', '1.0.10', 'Users can now report spammers who can be banned by moderators.', '2017-09-29 19:10:32'),
(191, 'RainLab.Forum', 'comment', '1.0.11', 'Users can now quote other posts.', '2017-09-29 19:10:32'),
(192, 'RainLab.Forum', 'comment', '1.0.12', 'Improve support for CDN asset hosting.', '2017-09-29 19:10:32'),
(193, 'RainLab.Forum', 'comment', '1.0.13', 'Fixes a bug where channels cannot be selected in the Embed component inspector.', '2017-09-29 19:10:32'),
(194, 'RainLab.Forum', 'comment', '1.0.14', 'Improve the pagination code used in the component default markup.', '2017-09-29 19:10:32'),
(195, 'RainLab.Forum', 'comment', '1.0.15', 'When a User is deleted, their Member profile and posts is also deleted.', '2017-09-29 19:10:32'),
(196, 'RainLab.Forum', 'comment', '1.0.16', 'Posting topics is now throttled allowing 3 new topics every 15 minutes.', '2017-09-29 19:10:32'),
(197, 'RainLab.Forum', 'comment', '1.0.17', 'Update channel reorder page to new system reordering feature.', '2017-09-29 19:10:32'),
(198, 'RainLab.Forum', 'comment', '1.0.18', 'Minor fix to embed topic component.', '2017-09-29 19:10:32'),
(199, 'RainLab.Forum', 'script', '1.0.19', 'update_timestamp_nullable.php', '2017-09-29 19:10:32'),
(200, 'RainLab.Forum', 'comment', '1.0.19', 'Database maintenance. Updated all timestamp columns to be nullable.', '2017-09-29 19:10:32'),
(201, 'RainLab.Forum', 'script', '1.1.0', 'drop_watches_tables.php', '2017-09-29 19:10:32'),
(202, 'RainLab.Forum', 'comment', '1.1.0', 'Major performance enhancements', '2017-09-29 19:10:32'),
(203, 'RainLab.Forum', 'comment', '1.1.1', 'Fixes bug throwing error when a forum topic has no posts.', '2017-09-29 19:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(1, 'October.Demo', '1.0.1', '2017-09-29 19:07:41', 0, 0),
(2, 'RainLab.Pages', '1.2.16', '2017-09-29 19:07:41', 0, 0),
(3, 'RainLab.Translate', '1.2.11', '2017-09-29 19:07:41', 0, 0),
(4, 'RainLab.Blog', '1.2.16', '2017-09-29 19:10:31', 0, 0),
(5, 'RainLab.User', '1.3.4', '2017-09-29 19:10:31', 0, 0),
(6, 'RainLab.Forum', '1.1.1', '2017-09-29 19:10:32', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  `new_value` text COLLATE utf8_unicode_ci,
  `revisionable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
(1, 'system_mail_settings', '{\"send_mode\":\"mail\",\"sender_name\":\"\\u4e91\\u5929\\u4e0b\\u96c6\\u56e2\",\"sender_email\":\"bruce.gong.tmax@gmail.com\",\"sendmail_path\":\"\\/usr\\/sbin\\/sendmail -bs\",\"smtp_address\":\"smtp.mailgun.org\",\"smtp_port\":\"587\",\"smtp_user\":\"\",\"smtp_password\":\"\",\"smtp_authorization\":\"0\",\"smtp_encryption\":\"tls\",\"mailgun_domain\":\"\",\"mailgun_secret\":\"\",\"mandrill_secret\":\"\",\"ses_key\":\"\",\"ses_secret\":\"\",\"ses_region\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Guest', 'guest', 'Default group for guest users.', '2017-09-29 19:10:31', '2017-09-29 19:10:31'),
(2, 'Registered', 'registered', 'Default group for registered users.', '2017-09-29 19:10:31', '2017-09-29 19:10:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_throttle`
--

CREATE TABLE `user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`);

--
-- Indexes for table `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Indexes for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Indexes for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Indexes for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Indexes for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_categories_slug_index` (`slug`),
  ADD KEY `rainlab_blog_categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_posts_user_id_index` (`user_id`),
  ADD KEY `rainlab_blog_posts_slug_index` (`slug`);

--
-- Indexes for table `rainlab_blog_posts_categories`
--
ALTER TABLE `rainlab_blog_posts_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Indexes for table `rainlab_forum_channels`
--
ALTER TABLE `rainlab_forum_channels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rainlab_forum_channels_slug_unique` (`slug`),
  ADD KEY `rainlab_forum_channels_parent_id_index` (`parent_id`),
  ADD KEY `rainlab_forum_channels_embed_code_index` (`embed_code`);

--
-- Indexes for table `rainlab_forum_members`
--
ALTER TABLE `rainlab_forum_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_forum_members_user_id_index` (`user_id`),
  ADD KEY `rainlab_forum_members_count_posts_index` (`count_posts`),
  ADD KEY `rainlab_forum_members_count_topics_index` (`count_topics`),
  ADD KEY `rainlab_forum_members_last_active_at_index` (`last_active_at`),
  ADD KEY `rainlab_forum_members_is_moderator_index` (`is_moderator`);

--
-- Indexes for table `rainlab_forum_posts`
--
ALTER TABLE `rainlab_forum_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_forum_posts_topic_id_index` (`topic_id`),
  ADD KEY `rainlab_forum_posts_member_id_index` (`member_id`);

--
-- Indexes for table `rainlab_forum_topics`
--
ALTER TABLE `rainlab_forum_topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rainlab_forum_topics_slug_unique` (`slug`),
  ADD KEY `sticky_post_time` (`is_sticky`,`last_post_at`),
  ADD KEY `rainlab_forum_topics_channel_id_index` (`channel_id`),
  ADD KEY `rainlab_forum_topics_start_member_id_index` (`start_member_id`),
  ADD KEY `rainlab_forum_topics_last_post_at_index` (`last_post_at`),
  ADD KEY `rainlab_forum_topics_is_private_index` (`is_private`),
  ADD KEY `rainlab_forum_topics_is_locked_index` (`is_locked`),
  ADD KEY `rainlab_forum_topics_count_posts_index` (`count_posts`),
  ADD KEY `rainlab_forum_topics_count_views_index` (`count_views`),
  ADD KEY `rainlab_forum_topics_embed_code_index` (`embed_code`);

--
-- Indexes for table `rainlab_forum_topic_followers`
--
ALTER TABLE `rainlab_forum_topic_followers`
  ADD PRIMARY KEY (`topic_id`,`member_id`);

--
-- Indexes for table `rainlab_translate_attributes`
--
ALTER TABLE `rainlab_translate_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_attributes_locale_index` (`locale`),
  ADD KEY `rainlab_translate_attributes_model_id_index` (`model_id`),
  ADD KEY `rainlab_translate_attributes_model_type_index` (`model_type`);

--
-- Indexes for table `rainlab_translate_indexes`
--
ALTER TABLE `rainlab_translate_indexes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_indexes_locale_index` (`locale`),
  ADD KEY `rainlab_translate_indexes_model_id_index` (`model_id`),
  ADD KEY `rainlab_translate_indexes_model_type_index` (`model_type`),
  ADD KEY `rainlab_translate_indexes_item_index` (`item`);

--
-- Indexes for table `rainlab_translate_locales`
--
ALTER TABLE `rainlab_translate_locales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_locales_code_index` (`code`),
  ADD KEY `rainlab_translate_locales_name_index` (`name`);

--
-- Indexes for table `rainlab_translate_messages`
--
ALTER TABLE `rainlab_translate_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_messages_code_index` (`code`);

--
-- Indexes for table `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_user_mail_blockers_email_index` (`email`),
  ADD KEY `rainlab_user_mail_blockers_template_index` (`template`),
  ADD KEY `rainlab_user_mail_blockers_user_id_index` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Indexes for table `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Indexes for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Indexes for table `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Indexes for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Indexes for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Indexes for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_login_unique` (`username`),
  ADD KEY `users_activation_code_index` (`activation_code`),
  ADD KEY `users_reset_password_code_index` (`reset_password_code`),
  ADD KEY `users_login_index` (`username`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_groups_code_index` (`code`);

--
-- Indexes for table `user_throttle`
--
ALTER TABLE `user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_throttle_user_id_index` (`user_id`),
  ADD KEY `user_throttle_ip_address_index` (`ip_address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rainlab_forum_channels`
--
ALTER TABLE `rainlab_forum_channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `rainlab_forum_members`
--
ALTER TABLE `rainlab_forum_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_forum_posts`
--
ALTER TABLE `rainlab_forum_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_forum_topics`
--
ALTER TABLE `rainlab_forum_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_translate_attributes`
--
ALTER TABLE `rainlab_translate_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_translate_indexes`
--
ALTER TABLE `rainlab_translate_indexes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_translate_locales`
--
ALTER TABLE `rainlab_translate_locales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rainlab_translate_messages`
--
ALTER TABLE `rainlab_translate_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
--
-- AUTO_INCREMENT for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_throttle`
--
ALTER TABLE `user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;