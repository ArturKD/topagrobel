-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 09 2022 г., 09:52
-- Версия сервера: 10.4.22-MariaDB
-- Версия PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `topagrobel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-03-22 20:36:31', '2022-03-22 17:36:31', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_nextend2_image_storage`
--

CREATE TABLE `wp_nextend2_image_storage` (
  `id` int(11) NOT NULL,
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_nextend2_image_storage`
--

INSERT INTO `wp_nextend2_image_storage` (`id`, `hash`, `image`, `value`) VALUES
(1, 'b408502a3636140a36061c2d0d3d72e9', '$upload$/2022/04/background-header1-scaled.jpg', 'eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19'),
(2, 'ee994be956becc5d9fe6ea54f3576269', '$upload$/2022/04/background-header2-scaled.jpg', 'eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19'),
(3, 'b167ef0d7391c03e1a23c00688838100', '$upload$/2022/04/background-header3-scaled.jpg', 'eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19'),
(4, '34daa1915da05c10d698ced9342e1d5c', '$upload$/2022/04/background-header5-scaled.jpg', 'eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19'),
(5, '24569094e5d5abf6a4210d18f67dcc95', '$upload$/2022/04/background-header6-scaled.jpg', 'eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_nextend2_section_storage`
--

CREATE TABLE `wp_nextend2_section_storage` (
  `id` int(11) NOT NULL,
  `application` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referencekey` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `system` int(11) NOT NULL DEFAULT 0,
  `editable` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_nextend2_section_storage`
--

INSERT INTO `wp_nextend2_section_storage` (`id`, `application`, `section`, `referencekey`, `value`, `system`, `editable`) VALUES
(10000, 'smartslider', 'settings', '', '{\"slidersOrder2\":\"ordering\",\"slidersOrder2Direction\":\"ASC\",\"autoupdatecheck\":\"0\",\"slide-as-file\":\"0\",\"preview-new-window\":\"0\",\"youtube-privacy-enhanced\":\"0\",\"smooth-scroll-speed\":\"400\",\"external-css-files\":\"\",\"editor-icon\":\"1\",\"wp-adminbar\":\"1\",\"yoast-sitemap\":\"1\",\"wordpress-widget-areas\":\"1\",\"wp-ajax-iframe-slider\":\"0\",\"responsive-screen-width-tablet-portrait\":\"1199\",\"responsive-screen-width-tablet-portrait-landscape\":\"1199\",\"responsive-screen-width-mobile-portrait\":\"700\",\"responsive-screen-width-mobile-portrait-landscape\":\"900\",\"breakpoints-orientation\":\"portrait\",\"responsive-focus-top\":\"#wpadminbar\",\"responsive-focus-bottom\":\"\",\"translate-url\":\"|*|\"}', 0, 1),
(10051, 'smartslider', 'sliderChanged', '2', '0', 0, 1),
(10052, 'cache', 'notweb/n2-ss-2', 'data.manifest', '{\"generator\":[]}', 0, 1),
(10053, 'cache', 'notweb/n2-ss-2', 'variations.manifest', '1', 0, 1),
(10054, 'cache', 'notweb/n2-ss-2', 'sliderru_RU1.manifest', '{\"hash\":\"\",\"nextCacheRefresh\":2145916800,\"currentPath\":\"57caa58fdec4f427bae319c5af0adbe7\",\"version\":\"3.5.1.4\"}', 0, 1),
(10055, 'cache', 'notweb/n2-ss-2', 'sliderru_RU1', '{\"html\":\"<div class=\\\"n2_clear\\\"><ss3-force-full-width data-overflow-x=\\\"body\\\" data-horizontal-selector=\\\"body\\\"><div class=\\\"n2-section-smartslider fitvidsignore  n2_clear\\\" data-ssid=\\\"2\\\"><div id=\\\"n2-ss-2-align\\\" class=\\\"n2-ss-align\\\"><div class=\\\"n2-padding\\\"><div id=\\\"n2-ss-2\\\" data-creator=\\\"Smart Slider 3\\\" data-responsive=\\\"fullwidth\\\" class=\\\"n2-ss-slider n2-ow n2-has-hover n2notransition  \\\"><div class=\\\"n2-ss-slider-wrapper-inside\\\">\\n        <div class=\\\"n2-ss-slider-1 n2_ss__touch_element n2-ow\\\" style=\\\"\\\">\\n            <div class=\\\"n2-ss-slider-2 n2-ow\\\">\\n                                                <div class=\\\"n2-ss-slider-3 n2-ow\\\" style=\\\"\\\">\\n\\n                    <div class=\\\"n2-ss-slide-backgrounds n2-ow-all\\\"><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"1\\\" data-mode=\\\"fill\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-opacity=\\\"100\\\" data-x=\\\"50\\\" data-y=\\\"50\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><img src=\\\"\\/\\/topagrobel\\/wp-content\\/uploads\\/2022\\/04\\/background-header1-scaled.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><div data-color=\\\"RGBA(255,255,255,0)\\\" style=\\\"background-color: RGBA(255,255,255,0);\\\" class=\\\"n2-ss-slide-background-color\\\"><\\/div><\\/div><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"2\\\" data-mode=\\\"fill\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-opacity=\\\"100\\\" data-x=\\\"50\\\" data-y=\\\"50\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><img src=\\\"\\/\\/topagrobel\\/wp-content\\/uploads\\/2022\\/04\\/background-header2-scaled.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><div data-color=\\\"RGBA(255,255,255,0)\\\" style=\\\"background-color: RGBA(255,255,255,0);\\\" class=\\\"n2-ss-slide-background-color\\\"><\\/div><\\/div><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"3\\\" data-mode=\\\"fill\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-opacity=\\\"100\\\" data-x=\\\"50\\\" data-y=\\\"50\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><img src=\\\"\\/\\/topagrobel\\/wp-content\\/uploads\\/2022\\/04\\/background-header3-scaled.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><div data-color=\\\"RGBA(255,255,255,0)\\\" style=\\\"background-color: RGBA(255,255,255,0);\\\" class=\\\"n2-ss-slide-background-color\\\"><\\/div><\\/div><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"4\\\" data-mode=\\\"fill\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-opacity=\\\"100\\\" data-x=\\\"50\\\" data-y=\\\"50\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><img src=\\\"\\/\\/topagrobel\\/wp-content\\/uploads\\/2022\\/04\\/background-header5-scaled.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><div data-color=\\\"RGBA(255,255,255,0)\\\" style=\\\"background-color: RGBA(255,255,255,0);\\\" class=\\\"n2-ss-slide-background-color\\\"><\\/div><\\/div><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"5\\\" data-mode=\\\"fill\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-opacity=\\\"100\\\" data-x=\\\"50\\\" data-y=\\\"50\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><img src=\\\"\\/\\/topagrobel\\/wp-content\\/uploads\\/2022\\/04\\/background-header6-scaled.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><div data-color=\\\"RGBA(255,255,255,0)\\\" style=\\\"background-color: RGBA(255,255,255,0);\\\" class=\\\"n2-ss-slide-background-color\\\"><\\/div><\\/div><\\/div>                    <div class=\\\"n2-ss-slider-4 n2-ow\\\">\\n                        <svg xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" viewBox=\\\"0 0 1200 800\\\" data-related-device=\\\"desktopPortrait\\\" class=\\\"n2-ow n2-ss-preserve-size n2-ss-preserve-size--slider n2-ss-slide-limiter\\\"><\\/svg><div data-first=\\\"1\\\" data-slide-duration=\\\"0\\\" data-id=\\\"3\\\" data-slide-public-id=\\\"1\\\" data-title=\\\"background-header1\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-3\\\"><div role=\\\"note\\\" class=\\\"n2-ss-slide--focus\\\" tabindex=\\\"-1\\\">background-header1<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-b7ZMb3aVmieF\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-Eou5pbPdcuTi\\\" data-pm=\\\"default\\\" data-sstype=\\\"content\\\" data-hasbackground=\\\"0\\\"><div class=\\\"n2-ss-section-main-content n2-ss-layer-with-background n2-ss-layer-content n2-ow n-uc-Eou5pbPdcuTi-inner\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-epdgKqUytlgt\\\" data-pm=\\\"normal\\\" data-sstype=\\\"layer\\\"><h2 id=\\\"n2-ss-2item1\\\" class=\\\"n2-font-82a39a171605a3f82e80825bc2785f19-hover   n2-ss-item-content n2-ss-text n2-ow\\\" style=\\\"display:block;\\\"><br>0 SUPER COOL AND CHEAP BUILDING COMPANY HEADED BY SUPER COOL PERSON OLEG WHO IS MY FRIEND AND MOREOVER MY LAST COWORKER.<\\/h2><\\/div><div class=\\\"n2-ss-layer n2-ow n-uc-wPZO00K6erAf\\\" data-pm=\\\"normal\\\" data-sstype=\\\"layer\\\"><div class=\\\"n2-ss-item-content n2-ss-text n2-ow-all\\\"><div class=\\\"\\\"><p class=\\\"n2-font-c8fea7d4c34266ee8440045a1096a40f-paragraph  n2-style-8d1b1eb5a9cdc368e77fb831e5b70bc0-heading  \\\">0 Topagrobel specializes in so many product, you can\'t even imagine numbers of projects they done, in construction development design, maintaining and more.<\\/p>\\n<\\/div><\\/div><\\/div><div class=\\\"n2-ss-layer n2-ow n-uc-WGyvHGFRGQe6 n2-ss-layer--auto\\\" data-pm=\\\"normal\\\" data-sstype=\\\"layer\\\"><div class=\\\"n2-ss-button-container n2-ss-item-content n2-ow n2-font-4081c50f0bb9f4d7e10825f5941ea5ea-link  n2-ss-nowrap n2-ss-button-container--non-full-width\\\"><a class=\\\"n2-style-b47d6f6dff42586eb175a13fe8ff51ea-heading  n2-ow \\\" onclick=\\\"return false;\\\" href=\\\"#\\\"><div><div>0 Learn more about Button with some text<\\/div><\\/div><\\/a><\\/div><\\/div><\\/div><\\/div><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"4\\\" data-slide-public-id=\\\"2\\\" data-title=\\\"background-header2\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-4\\\"><div role=\\\"note\\\" class=\\\"n2-ss-slide--focus\\\" tabindex=\\\"-1\\\">background-header2<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-HALIrphb2bh3\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"5\\\" data-slide-public-id=\\\"3\\\" data-title=\\\"background-header3\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-5\\\"><div role=\\\"note\\\" class=\\\"n2-ss-slide--focus\\\" tabindex=\\\"-1\\\">background-header3<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-sammVsVedbOz\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"6\\\" data-slide-public-id=\\\"4\\\" data-title=\\\"background-header5\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-6\\\"><div role=\\\"note\\\" class=\\\"n2-ss-slide--focus\\\" tabindex=\\\"-1\\\">background-header5<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-5PZwQXSn2SV9\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"7\\\" data-slide-public-id=\\\"5\\\" data-title=\\\"background-header6\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-7\\\"><div role=\\\"note\\\" class=\\\"n2-ss-slide--focus\\\" tabindex=\\\"-1\\\">background-header6<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-NLoa0ivyjfdy\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div>                    <\\/div>\\n\\n                                    <\\/div>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"n2-ss-slider-controls n2-ss-slider-controls-absolute-center-bottom\\\"><div style=\\\"--widget-offset:10px;\\\" class=\\\"n2-ss-widget n2-ss-control-bullet n2-ow-all n2-ss-control-bullet-horizontal\\\"><div class=\\\" nextend-bullet-bar n2-bar-justify-content-center\\\"><div class=\\\"n2-bullet n2-style-7c5731d32b971634addbf0241184681a-dot \\\" style=\\\"visibility:hidden;\\\"><\\/div><\\/div><\\/div><\\/div><\\/div><\\/div><ss3-loader><\\/ss3-loader><\\/div><\\/div><div class=\\\"n2_clear\\\"><\\/div><\\/div><\\/ss3-force-full-width><\\/div>\",\"assets\":{\"css\":{\"staticGroupPreload\":{\"smartslider\":\"C:\\\\xampp\\\\htdocs\\\\topagrobel\\\\www\\\\wp-content\\\\plugins\\\\smart-slider-3\\\\Public\\\\SmartSlider3\\\\Application\\\\Frontend\\/Assets\\/dist\\/smartslider.min.css\"},\"staticGroup\":[],\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":{\"n2-ss-2\":\"div#n2-ss-2 .n2-ss-slider-1{display:grid;position:relative;}div#n2-ss-2 .n2-ss-slider-2{display:grid;position:relative;overflow:hidden;padding:0px 0px 0px 0px;border:0px solid RGBA(62,62,62,1);border-radius:0px;background-clip:padding-box;background-repeat:repeat;background-position:50% 50%;background-size:cover;background-attachment:scroll;z-index:1;}div#n2-ss-2:not(.n2-ss-loaded) .n2-ss-slider-2{background-image:none !important;}div#n2-ss-2 .n2-ss-slider-3{display:grid;grid-template-areas:\'cover\';position:relative;overflow:hidden;z-index:10;}div#n2-ss-2 .n2-ss-slider-3 > *{grid-area:cover;}div#n2-ss-2 .n2-ss-slide-backgrounds,div#n2-ss-2 .n2-ss-slider-3 > .n2-ss-divider{position:relative;}div#n2-ss-2 .n2-ss-slide-backgrounds{z-index:10;}div#n2-ss-2 .n2-ss-slide-backgrounds > *{overflow:hidden;}div#n2-ss-2 .n2-ss-slide-background{transform:translateX(-100000px);}div#n2-ss-2 .n2-ss-slider-4{place-self:center;position:relative;width:100%;height:100%;z-index:20;display:grid;grid-template-areas:\'slide\';}div#n2-ss-2 .n2-ss-slider-4 > *{grid-area:slide;}div#n2-ss-2.n2-ss-full-page--constrain-ratio .n2-ss-slider-4{height:auto;}div#n2-ss-2 .n2-ss-slide{display:grid;place-items:center;grid-auto-columns:100%;position:relative;z-index:20;-webkit-backface-visibility:hidden;transform:translateX(-100000px);}div#n2-ss-2 .n2-ss-slide{perspective:1500px;}div#n2-ss-2 .n2-ss-slide-active{z-index:21;}.n2-ss-background-animation{position:absolute;top:0;left:0;width:100%;height:100%;z-index:3;}div#n2-ss-2 .n2-ss-button-container,div#n2-ss-2 .n2-ss-button-container a{display:block;}div#n2-ss-2 .n2-ss-button-container--non-full-width,div#n2-ss-2 .n2-ss-button-container--non-full-width a{display:inline-block;}div#n2-ss-2 .n2-ss-button-container.n2-ss-nowrap{white-space:nowrap;}div#n2-ss-2 .n2-ss-button-container a div{display:inline;font-size:inherit;text-decoration:inherit;color:inherit;line-height:inherit;font-family:inherit;font-weight:inherit;}div#n2-ss-2 .n2-ss-button-container a > div{display:inline-flex;align-items:center;vertical-align:top;}div#n2-ss-2 .n2-ss-button-container span{font-size:100%;vertical-align:baseline;}div#n2-ss-2 .n2-ss-button-container a[data-iconplacement=\\\"left\\\"] span{margin-right:0.3em;}div#n2-ss-2 .n2-ss-button-container a[data-iconplacement=\\\"right\\\"] span{margin-left:0.3em;}div#n2-ss-2 .n2-ss-control-bullet{visibility:hidden;text-align:center;justify-content:center;z-index:14;}div#n2-ss-2 .n2-ss-control-bullet--calculate-size{left:0 !important;}div#n2-ss-2 .n2-ss-control-bullet-horizontal.n2-ss-control-bullet-fullsize{width:100%;}div#n2-ss-2 .n2-ss-control-bullet-vertical.n2-ss-control-bullet-fullsize{height:100%;flex-flow:column;}div#n2-ss-2 .nextend-bullet-bar{display:inline-flex;vertical-align:top;visibility:visible;align-items:center;flex-wrap:wrap;}div#n2-ss-2 .n2-bar-justify-content-left{justify-content:flex-start;}div#n2-ss-2 .n2-bar-justify-content-center{justify-content:center;}div#n2-ss-2 .n2-bar-justify-content-right{justify-content:flex-end;}div#n2-ss-2 .n2-ss-control-bullet-vertical > .nextend-bullet-bar{flex-flow:column;}div#n2-ss-2 .n2-ss-control-bullet-fullsize > .nextend-bullet-bar{display:flex;}div#n2-ss-2 .n2-ss-control-bullet-horizontal.n2-ss-control-bullet-fullsize > .nextend-bullet-bar{flex:1 1 auto;}div#n2-ss-2 .n2-ss-control-bullet-vertical.n2-ss-control-bullet-fullsize > .nextend-bullet-bar{height:100%;}div#n2-ss-2 .nextend-bullet-bar .n2-bullet{cursor:pointer;transition:background-color 0.4s;}div#n2-ss-2 .nextend-bullet-bar .n2-bullet.n2-active{cursor:default;}div#n2-ss-2 div.n2-ss-bullet-thumbnail-container{position:absolute;z-index:10000000;}div#n2-ss-2 .n2-ss-bullet-thumbnail-container .n2-ss-bullet-thumbnail{background-size:cover;background-repeat:no-repeat;background-position:center;}div#n2-ss-2 .n2-font-82a39a171605a3f82e80825bc2785f19-hover{font-family: \'Roboto\',\'Arial\';color: #ffffff;font-size:300%;text-shadow: none;line-height: 1;font-weight: normal;font-style: normal;text-decoration: none;text-align: left;letter-spacing: normal;word-spacing: normal;text-transform: none;font-weight: 400;}div#n2-ss-2 .n2-font-c8fea7d4c34266ee8440045a1096a40f-paragraph{font-family: \'Roboto\',\'Arial\';color: #ffffff;font-size:156.25%;text-shadow: none;line-height: 1;font-weight: normal;font-style: normal;text-decoration: none;text-align: left;letter-spacing: normal;word-spacing: normal;text-transform: none;font-weight: 400;}div#n2-ss-2 .n2-font-c8fea7d4c34266ee8440045a1096a40f-paragraph a, div#n2-ss-2 .n2-font-c8fea7d4c34266ee8440045a1096a40f-paragraph a:FOCUS{font-family: \'Roboto\',\'Arial\';color: #1890d7;font-size:100%;text-shadow: none;line-height: 1;font-weight: normal;font-style: normal;text-decoration: none;text-align: left;letter-spacing: normal;word-spacing: normal;text-transform: none;font-weight: 400;}div#n2-ss-2 .n2-font-c8fea7d4c34266ee8440045a1096a40f-paragraph a:HOVER, div#n2-ss-2 .n2-font-c8fea7d4c34266ee8440045a1096a40f-paragraph a:ACTIVE{font-family: \'Roboto\',\'Arial\';color: #1890d7;font-size:100%;text-shadow: none;line-height: 1;font-weight: normal;font-style: normal;text-decoration: none;text-align: left;letter-spacing: normal;word-spacing: normal;text-transform: none;font-weight: 400;}div#n2-ss-2 .n2-style-8d1b1eb5a9cdc368e77fb831e5b70bc0-heading{background: RGBA(255,255,255,0);opacity:1;padding:5% 0% 0% 0% ;box-shadow: none;border: 0px solid RGBA(0,0,0,1);border-radius:0px;}div#n2-ss-2 .n2-font-4081c50f0bb9f4d7e10825f5941ea5ea-link a{font-family: \'Roboto\',\'Arial\';color: #000000;font-size:106.25%;text-shadow: none;line-height: 1.5;font-weight: normal;font-style: normal;text-decoration: none;text-align: center;letter-spacing: normal;word-spacing: normal;text-transform: none;font-weight: 400;}div#n2-ss-2 .n2-style-b47d6f6dff42586eb175a13fe8ff51ea-heading{background: #ffd200;opacity:1;padding:20px 30px 20px 30px ;box-shadow: none;border: 0px solid RGBA(0,0,0,1);border-radius:4px;}div#n2-ss-2 .n2-style-7c5731d32b971634addbf0241184681a-dot{background: #ffffff;opacity:1;padding:5px 5px 5px 5px ;box-shadow: none;border: 0px solid RGBA(0,0,0,1);border-radius:50px;margin: 4px;}div#n2-ss-2 .n2-style-7c5731d32b971634addbf0241184681a-dot.n2-active, div#n2-ss-2 .n2-style-7c5731d32b971634addbf0241184681a-dot:HOVER, div#n2-ss-2 .n2-style-7c5731d32b971634addbf0241184681a-dot:FOCUS{background: RGBA(29,129,249,1);}div#n2-ss-2 .n2-ss-slide-limiter{max-width:1200px;}div#n2-ss-2 .n-uc-b7ZMb3aVmieF{padding:10px 10px 10px 10px}div#n2-ss-2 .n-uc-Eou5pbPdcuTi-inner{padding:10px 10px 10px 10px;text-align:center;--ssselfalign:center;;justify-content:center}div#n2-ss-2 .n-uc-Eou5pbPdcuTi{align-self:center;}div#n2-ss-2 .n-uc-epdgKqUytlgt{align-self:var(--ss-fs);}div#n2-ss-2 .n-uc-wPZO00K6erAf{align-self:var(--ss-fs);}div#n2-ss-2 .n-uc-WGyvHGFRGQe6{align-self:var(--ss-fs);}@media (min-width: 1200px){div#n2-ss-2 [data-hide-desktopportrait=\\\"1\\\"]{display: none !important;}}@media (orientation: landscape) and (max-width: 1199px) and (min-width: 901px),(orientation: portrait) and (max-width: 1199px) and (min-width: 701px){div#n2-ss-2 [data-hide-tabletportrait=\\\"1\\\"]{display: none !important;}}@media (orientation: landscape) and (max-width: 900px),(orientation: portrait) and (max-width: 700px){div#n2-ss-2 [data-hide-mobileportrait=\\\"1\\\"]{display: none !important;}}\"},\"globalInline\":[]},\"less\":{\"staticGroupPreload\":[],\"staticGroup\":[],\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[],\"globalInline\":[]},\"js\":{\"staticGroupPreload\":[],\"staticGroup\":{\"smartslider-frontend\":\"C:\\\\xampp\\\\htdocs\\\\topagrobel\\\\www\\\\wp-content\\\\plugins\\\\smart-slider-3\\\\Public\\\\SmartSlider3\\\\Application\\\\Frontend\\/Assets\\/dist\\/smartslider-frontend.min.js\",\"ss-simple\":\"C:\\\\xampp\\\\htdocs\\\\topagrobel\\\\www\\\\wp-content\\\\plugins\\\\smart-slider-3\\\\Public\\\\SmartSlider3\\\\Slider\\\\SliderType\\\\Simple\\/Assets\\/dist\\/ss-simple.min.js\",\"w-bullet\":\"C:\\\\xampp\\\\htdocs\\\\topagrobel\\\\www\\\\wp-content\\\\plugins\\\\smart-slider-3\\\\Public\\\\SmartSlider3\\\\Widget\\\\Bullet\\/Assets\\/dist\\/w-bullet.min.js\"},\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[\"_N2.r([\\\"documentReady\\\",\\\"smartslider-frontend\\\",\\\"SmartSliderWidgetBulletTransition\\\",\\\"ss-simple\\\"],function(){new _N2.SmartSliderSimple(\'n2-ss-2\', {\\\"admin\\\":false,\\\"callbacks\\\":\\\"\\\",\\\"background.video.mobile\\\":1,\\\"loadingTime\\\":10000,\\\"alias\\\":{\\\"id\\\":0,\\\"smoothScroll\\\":0,\\\"slideSwitch\\\":0,\\\"scroll\\\":1},\\\"align\\\":\\\"normal\\\",\\\"isDelayed\\\":0,\\\"responsive\\\":{\\\"mediaQueries\\\":{\\\"all\\\":false,\\\"desktopportrait\\\":[\\\"(min-width: 1200px)\\\"],\\\"tabletportrait\\\":[\\\"(orientation: landscape) and (max-width: 1199px) and (min-width: 901px)\\\",\\\"(orientation: portrait) and (max-width: 1199px) and (min-width: 701px)\\\"],\\\"mobileportrait\\\":[\\\"(orientation: landscape) and (max-width: 900px)\\\",\\\"(orientation: portrait) and (max-width: 700px)\\\"]},\\\"base\\\":{\\\"slideOuterWidth\\\":1200,\\\"slideOuterHeight\\\":800,\\\"sliderWidth\\\":1200,\\\"sliderHeight\\\":800,\\\"slideWidth\\\":1200,\\\"slideHeight\\\":800},\\\"hideOn\\\":{\\\"desktopLandscape\\\":false,\\\"desktopPortrait\\\":false,\\\"tabletLandscape\\\":false,\\\"tabletPortrait\\\":false,\\\"mobileLandscape\\\":false,\\\"mobilePortrait\\\":false},\\\"onResizeEnabled\\\":true,\\\"type\\\":\\\"fullwidth\\\",\\\"sliderHeightBasedOn\\\":\\\"real\\\",\\\"focusUser\\\":1,\\\"focusEdge\\\":\\\"auto\\\",\\\"breakpoints\\\":[{\\\"device\\\":\\\"tabletPortrait\\\",\\\"type\\\":\\\"max-screen-width\\\",\\\"portraitWidth\\\":1199,\\\"landscapeWidth\\\":1199},{\\\"device\\\":\\\"mobilePortrait\\\",\\\"type\\\":\\\"max-screen-width\\\",\\\"portraitWidth\\\":700,\\\"landscapeWidth\\\":900}],\\\"enabledDevices\\\":{\\\"desktopLandscape\\\":0,\\\"desktopPortrait\\\":1,\\\"tabletLandscape\\\":0,\\\"tabletPortrait\\\":1,\\\"mobileLandscape\\\":0,\\\"mobilePortrait\\\":1},\\\"sizes\\\":{\\\"desktopPortrait\\\":{\\\"width\\\":1200,\\\"height\\\":800,\\\"max\\\":3000,\\\"min\\\":1200},\\\"tabletPortrait\\\":{\\\"width\\\":701,\\\"height\\\":467,\\\"customHeight\\\":false,\\\"max\\\":1199,\\\"min\\\":701},\\\"mobilePortrait\\\":{\\\"width\\\":320,\\\"height\\\":213,\\\"customHeight\\\":false,\\\"max\\\":900,\\\"min\\\":320}},\\\"overflowHiddenPage\\\":0,\\\"focus\\\":{\\\"offsetTop\\\":\\\"#wpadminbar\\\",\\\"offsetBottom\\\":\\\"\\\"}},\\\"controls\\\":{\\\"mousewheel\\\":0,\\\"touch\\\":\\\"horizontal\\\",\\\"keyboard\\\":1,\\\"blockCarouselInteraction\\\":1},\\\"playWhenVisible\\\":1,\\\"playWhenVisibleAt\\\":0.5,\\\"lazyLoad\\\":0,\\\"lazyLoadNeighbor\\\":0,\\\"blockrightclick\\\":0,\\\"maintainSession\\\":0,\\\"autoplay\\\":{\\\"enabled\\\":0,\\\"start\\\":1,\\\"duration\\\":8000,\\\"autoplayLoop\\\":1,\\\"allowReStart\\\":0,\\\"pause\\\":{\\\"click\\\":1,\\\"mouse\\\":\\\"0\\\",\\\"mediaStarted\\\":1},\\\"resume\\\":{\\\"click\\\":0,\\\"mouse\\\":\\\"0\\\",\\\"mediaEnded\\\":1,\\\"slidechanged\\\":0},\\\"interval\\\":1,\\\"intervalModifier\\\":\\\"loop\\\",\\\"intervalSlide\\\":\\\"current\\\"},\\\"perspective\\\":1500,\\\"layerMode\\\":{\\\"playOnce\\\":0,\\\"playFirstLayer\\\":1,\\\"mode\\\":\\\"skippable\\\",\\\"inAnimation\\\":\\\"mainInEnd\\\"},\\\"bgAnimations\\\":0,\\\"mainanimation\\\":{\\\"type\\\":\\\"horizontal\\\",\\\"duration\\\":800,\\\"delay\\\":0,\\\"ease\\\":\\\"easeOutQuad\\\",\\\"shiftedBackgroundAnimation\\\":0},\\\"carousel\\\":1,\\\"initCallbacks\\\":function(){new _N2.SmartSliderWidgetBulletTransition(this, {\\\"area\\\":10,\\\"dotClasses\\\":\\\"n2-style-7c5731d32b971634addbf0241184681a-dot \\\",\\\"mode\\\":\\\"\\\",\\\"action\\\":\\\"click\\\"});}});});\"],\"globalInline\":[]},\"googleFonts\":{\"staticGroupPreload\":[],\"staticGroup\":[],\"files\":{\"Roboto\":[\"300\",\"400\"]},\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[],\"globalInline\":[]},\"image\":{\"images\":[\"\\/\\/topagrobel\\/wp-content\\/uploads\\/2022\\/04\\/background-header1-scaled.jpg\",\"\\/\\/topagrobel\\/wp-content\\/uploads\\/2022\\/04\\/background-header2-scaled.jpg\",\"\\/\\/topagrobel\\/wp-content\\/uploads\\/2022\\/04\\/background-header3-scaled.jpg\",\"\\/\\/topagrobel\\/wp-content\\/uploads\\/2022\\/04\\/background-header5-scaled.jpg\",\"\\/\\/topagrobel\\/wp-content\\/uploads\\/2022\\/04\\/background-header6-scaled.jpg\"]}}}', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_nextend2_smartslider3_generators`
--

CREATE TABLE `wp_nextend2_smartslider3_generators` (
  `id` int(11) NOT NULL,
  `group` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_nextend2_smartslider3_sliders`
--

CREATE TABLE `wp_nextend2_smartslider3_sliders` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `time` datetime NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_nextend2_smartslider3_sliders`
--

INSERT INTO `wp_nextend2_smartslider3_sliders` (`id`, `alias`, `title`, `type`, `params`, `status`, `time`, `thumbnail`, `ordering`) VALUES
(1, NULL, 'Tutorial Slider', 'simple', '{\"aria-label\":\"Slider\",\"alias-id\":\"\",\"alias-smoothscroll\":\"\",\"alias-slideswitch\":\"\",\"background\":\"\",\"background-fixed\":\"0\",\"background-size\":\"cover\",\"background-color\":\"FFFFFF00\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"backgroundVideoMode\":\"fill\",\"align\":\"normal\",\"margin\":\"0|*|0|*|0|*|0\",\"padding\":\"0|*|0|*|0|*|0\",\"perspective\":\"1000\",\"border-width\":\"0\",\"border-color\":\"3E3E3Eff\",\"border-radius\":\"0\",\"slider-preset\":\"\",\"slider-css\":\"\",\"width\":\"1200\",\"height\":\"600\",\"mobileportrait\":\"1\",\"mobilelandscape\":\"1\",\"tabletportrait\":\"1\",\"tabletlandscape\":\"1\",\"desktopportrait\":\"1\",\"desktoplandscape\":\"1\",\"responsiveLimitSlideWidth\":\"1\",\"responsiveSlideWidthDesktopLandscape\":\"0\",\"responsiveSlideWidthMaxDesktopLandscape\":\"1600\",\"responsiveSlideWidth\":\"0\",\"responsiveSlideWidthMax\":\"3000\",\"responsiveSlideWidthTabletLandscape\":\"0\",\"responsiveSlideWidthMaxTabletLandscape\":\"1200\",\"responsiveSlideWidthTablet\":\"0\",\"responsiveSlideWidthMaxTablet\":\"3000\",\"responsiveSlideWidthMobileLandscape\":\"0\",\"responsiveSlideWidthMaxMobileLandscape\":\"740\",\"responsiveSlideWidthMobile\":\"0\",\"responsiveSlideWidthMaxMobile\":\"480\",\"responsive-breakpoint-desktop-portrait\":\"1440\",\"responsive-breakpoint-desktop-portrait-landscape\":\"1440\",\"responsive-breakpoint-tablet-landscape\":\"1300\",\"responsive-breakpoint-tablet-landscape-landscape\":\"1300\",\"responsive-breakpoint-tablet-portrait\":\"1199\",\"responsive-breakpoint-tablet-portrait-landscape\":\"1199\",\"responsive-breakpoint-mobile-landscape\":\"900\",\"responsive-breakpoint-mobile-landscape-landscape\":\"1050\",\"responsive-breakpoint-mobile-portrait\":\"700\",\"responsive-breakpoint-mobile-portrait-landscape\":\"900\",\"responsive-breakpoint-desktop-landscape-enabled\":\"0\",\"responsive-breakpoint-tablet-landscape-enabled\":\"0\",\"responsive-breakpoint-tablet-portrait-enabled\":\"1\",\"responsive-breakpoint-mobile-landscape-enabled\":\"0\",\"responsive-breakpoint-mobile-portrait-enabled\":\"1\",\"responsive-breakpoint-global\":\"0\",\"breakpoints-orientation\":\"portrait\",\"responsive-mode\":\"fullwidth\",\"responsiveSliderHeightMin\":\"0\",\"responsiveForceFull\":\"1\",\"responsiveForceFullOverflowX\":\"body\",\"responsiveForceFullHorizontalSelector\":\"body\",\"slider-size-override\":\"0\",\"slider-size-override-mobile-portrait\":\"0\",\"mobile-portrait-width\":\"320\",\"mobile-portrait-height\":\"568\",\"slider-size-override-mobile-landscape\":\"0\",\"mobile-landscape-width\":\"568\",\"mobile-landscape-height\":\"320\",\"slider-size-override-tablet-portrait\":\"0\",\"tablet-portrait-width\":\"768\",\"tablet-portrait-height\":\"1024\",\"slider-size-override-tablet-landscape\":\"0\",\"tablet-landscape-width\":\"1024\",\"tablet-landscape-height\":\"768\",\"slider-size-override-desktop-landscape\":\"0\",\"desktop-landscape-width\":\"1440\",\"desktop-landscape-height\":\"900\",\"controlsTouch\":\"horizontal\",\"controlsScroll\":\"0\",\"controlsKeyboard\":\"1\",\"widget-arrow-enabled\":\"0\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-previous\":\"thin-horizontal.svg\",\"widget-arrow-previous-image\":\"\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"1\",\"widget-arrow-previous-hover-color\":\"ffffffff\",\"widget-arrow-mirror\":\"1\",\"widget-arrow-next\":\"thin-horizontal.svg\",\"widget-arrow-next-image\":\"\",\"widget-arrow-next-color\":\"ffffffcc\",\"widget-arrow-next-hover\":\"0\",\"widget-arrow-next-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-mode\":\"simple\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-previous-position-horizontal\":\"left\",\"widget-arrow-previous-position-horizontal-position\":\"0\",\"widget-arrow-previous-position-horizontal-unit\":\"px\",\"widget-arrow-previous-position-vertical\":\"top\",\"widget-arrow-previous-position-vertical-position\":\"0\",\"widget-arrow-previous-position-vertical-unit\":\"px\",\"widget-arrow-next-position-mode\":\"simple\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-next-position-horizontal\":\"left\",\"widget-arrow-next-position-horizontal-position\":\"0\",\"widget-arrow-next-position-horizontal-unit\":\"px\",\"widget-arrow-next-position-vertical\":\"top\",\"widget-arrow-next-position-vertical-position\":\"0\",\"widget-arrow-next-position-vertical-unit\":\"px\",\"widget-arrow-animation\":\"fade\",\"widget-arrow-previous-alt\":\"previous arrow\",\"widget-arrow-next-alt\":\"next arrow\",\"widget-arrow-base64\":\"1\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-display-mobileportrait\":\"0\",\"widget-arrow-display-mobilelandscape\":\"0\",\"widget-arrow-display-tabletportrait\":\"1\",\"widget-arrow-display-tabletlandscape\":\"1\",\"widget-arrow-display-desktopportrait\":\"1\",\"widget-arrow-display-desktoplandscape\":\"1\",\"widget-arrow-exclude-slides\":\"\",\"widget-bullet-enabled\":\"1\",\"widgetbullet\":\"transition\",\"widget-bullet-position-mode\":\"simple\",\"widget-bullet-position-area\":\"10\",\"widget-bullet-position-stack\":\"1\",\"widget-bullet-position-offset\":\"5\",\"widget-bullet-position-horizontal\":\"left\",\"widget-bullet-position-horizontal-position\":\"0\",\"widget-bullet-position-horizontal-unit\":\"px\",\"widget-bullet-position-vertical\":\"top\",\"widget-bullet-position-vertical-position\":\"0\",\"widget-bullet-position-vertical-unit\":\"px\",\"widget-bullet-action\":\"click\",\"widget-bullet-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000000\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"5|*|5|*|5|*|5|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"2|*|solid|*|ffffffcc\\\",\\\"borderradius\\\":\\\"50\\\",\\\"extra\\\":\\\"margin: 4px;\\\"},{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"ffffffcc\\\",\\\"border\\\":\\\"2|*|solid|*|ffffffcc\\\"}]}\",\"widget-bullet-bar\":\"\",\"widget-bullet-bar-full-size\":\"0\",\"widget-bullet-align\":\"center\",\"widget-bullet-orientation\":\"auto\",\"widget-bullet-thumbnail-show-image\":\"0\",\"widget-bullet-thumbnail-width\":\"60\",\"widget-bullet-thumbnail-height\":\"60\",\"widget-bullet-thumbnail-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000080\\\",\\\"padding\\\":\\\"3|*|3|*|3|*|3|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"margin: 5px;\\\"}]}\",\"widget-bullet-thumbnail-side\":\"before\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-display-mobileportrait\":\"1\",\"widget-bullet-display-mobilelandscape\":\"1\",\"widget-bullet-display-tabletportrait\":\"1\",\"widget-bullet-display-tabletlandscape\":\"1\",\"widget-bullet-display-desktopportrait\":\"1\",\"widget-bullet-display-desktoplandscape\":\"1\",\"widget-bullet-exclude-slides\":\"\",\"widget-bar-enabled\":\"0\",\"widgetbar\":\"horizontal\",\"widget-bar-position-mode\":\"simple\",\"widget-bar-position-area\":\"10\",\"widget-bar-position-stack\":\"1\",\"widget-bar-position-offset\":\"30\",\"widget-bar-position-horizontal\":\"left\",\"widget-bar-position-horizontal-position\":\"0\",\"widget-bar-position-horizontal-unit\":\"px\",\"widget-bar-position-vertical\":\"top\",\"widget-bar-position-vertical-position\":\"0\",\"widget-bar-position-vertical-unit\":\"px\",\"widget-bar-animate\":\"0\",\"widget-bar-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"5|*|20|*|5|*|20|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"40\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-bar-show-title\":\"1\",\"widget-bar-font-title\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000c7\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"extra\\\":\\\"vertical-align: middle;\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"google(@import url(http://fonts.googleapis.com/css?family=Raleway);),Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-bar-show-description\":\"1\",\"widget-bar-font-description\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000c7\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":1,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"extra\\\":\\\"vertical-align: middle;\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"Raleway,Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-bar-slide-count\":\"0\",\"widget-bar-width\":\"100%\",\"widget-bar-full-width\":\"0\",\"widget-bar-separator\":\" - \",\"widget-bar-align\":\"center\",\"widget-bar-display-hover\":\"0\",\"widget-bar-display-mobileportrait\":\"1\",\"widget-bar-display-mobilelandscape\":\"1\",\"widget-bar-display-tabletportrait\":\"1\",\"widget-bar-display-tabletlandscape\":\"1\",\"widget-bar-display-desktopportrait\":\"1\",\"widget-bar-display-desktoplandscape\":\"1\",\"widget-bar-exclude-slides\":\"\",\"widget-thumbnail-enabled\":\"0\",\"widgetthumbnail\":\"default\",\"widget-thumbnail-show-image\":\"1\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widget-thumbnail-position-mode\":\"simple\",\"widget-thumbnail-position-area\":\"12\",\"widget-thumbnail-position-stack\":\"1\",\"widget-thumbnail-position-offset\":\"0\",\"widget-thumbnail-position-horizontal\":\"left\",\"widget-thumbnail-position-horizontal-position\":\"0\",\"widget-thumbnail-position-horizontal-unit\":\"px\",\"widget-thumbnail-position-vertical\":\"top\",\"widget-thumbnail-position-vertical-position\":\"0\",\"widget-thumbnail-position-vertical-unit\":\"px\",\"widget-thumbnail-action\":\"click\",\"widget-thumbnail-align-content\":\"start\",\"widget-thumbnail-style-bar\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"242424ff\\\",\\\"padding\\\":\\\"3|*|3|*|3|*|3|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-thumbnail-style-slides\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000000\\\",\\\"padding\\\":\\\"0|*|0|*|0|*|0|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|ffffff00\\\",\\\"borderradius\\\":\\\"0\\\",\\\"opacity\\\":\\\"40\\\",\\\"extra\\\":\\\"margin: 3px;\\ntransition: all 0.4s;\\nbackground-size: cover;\\\"},{\\\"border\\\":\\\"0|*|solid|*|ffffffcc\\\",\\\"opacity\\\":\\\"100\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-thumbnail-title-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"3|*|10|*|3|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\",\\\"extra\\\":\\\"bottom: 0;\\nleft: 0;\\\"}]}\",\"widget-thumbnail-title\":\"0\",\"widget-thumbnail-title-font\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"12||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ab\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.2\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"google(@import url(http://fonts.googleapis.com/css?family=Raleway);),Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-thumbnail-description\":\"0\",\"widget-thumbnail-description-font\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"12||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ab\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"google(@import url(http://fonts.googleapis.com/css?family=Raleway);),Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-thumbnail-caption-placement\":\"overlay\",\"widget-thumbnail-caption-size\":\"100\",\"widget-thumbnail-arrow\":\"1\",\"widget-thumbnail-arrow-width\":\"26\",\"widget-thumbnail-arrow-offset\":\"0\",\"widget-thumbnail-arrow-prev-alt\":\"previous arrow\",\"widget-thumbnail-arrow-next-alt\":\"next arrow\",\"widget-thumbnail-arrow-image\":\"\",\"widget-thumbnail-group\":\"1\",\"widget-thumbnail-invert-group-direction\":\"0\",\"widget-thumbnail-orientation\":\"auto\",\"widget-thumbnail-size\":\"100%\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-display-mobileportrait\":\"1\",\"widget-thumbnail-display-mobilelandscape\":\"1\",\"widget-thumbnail-display-tabletportrait\":\"1\",\"widget-thumbnail-display-tabletlandscape\":\"1\",\"widget-thumbnail-display-desktopportrait\":\"1\",\"widget-thumbnail-display-desktoplandscape\":\"1\",\"widget-thumbnail-exclude-slides\":\"\",\"widget-shadow-enabled\":\"0\",\"widgetshadow\":\"shadow\",\"widget-shadow-shadow\":\"dark.png\",\"widget-shadow-shadow-image\":\"\",\"widget-shadow-width\":\"100%\",\"widget-shadow-display-mobileportrait\":\"1\",\"widget-shadow-display-mobilelandscape\":\"1\",\"widget-shadow-display-tabletportrait\":\"1\",\"widget-shadow-display-tabletlandscape\":\"1\",\"widget-shadow-display-desktopportrait\":\"1\",\"widget-shadow-display-desktoplandscape\":\"1\",\"widget-shadow-exclude-slides\":\"\",\"widget-fullscreen-enabled\":\"0\",\"widgetfullscreen\":\"image\",\"widget-fullscreen-tonormal\":\"full1.svg\",\"widget-fullscreen-tonormal-image\":\"\",\"widget-fullscreen-tonormal-color\":\"ffffffcc\",\"widget-fullscreen-mirror\":\"1\",\"widget-fullscreen-tofull\":\"full1.svg\",\"widget-fullscreen-tofull-image\":\"\",\"widget-fullscreen-tofull-color\":\"ffffffcc\",\"widget-fullscreen-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"10|*|10|*|10|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"\\\"},{\\\"backgroundcolor\\\":\\\"000000ab\\\"}]}\",\"widget-fullscreen-position-mode\":\"simple\",\"widget-fullscreen-position-area\":\"4\",\"widget-fullscreen-position-stack\":\"1\",\"widget-fullscreen-position-offset\":\"15\",\"widget-fullscreen-position-horizontal\":\"left\",\"widget-fullscreen-position-horizontal-position\":\"0\",\"widget-fullscreen-position-horizontal-unit\":\"px\",\"widget-fullscreen-position-vertical\":\"top\",\"widget-fullscreen-position-vertical-position\":\"0\",\"widget-fullscreen-position-vertical-unit\":\"px\",\"widget-fullscreen-responsive-desktop\":\"1\",\"widget-fullscreen-responsive-tablet\":\"0.7\",\"widget-fullscreen-responsive-mobile\":\"0.5\",\"widget-fullscreen-display-hover\":\"0\",\"widget-fullscreen-display-mobileportrait\":\"1\",\"widget-fullscreen-display-mobilelandscape\":\"1\",\"widget-fullscreen-display-tabletportrait\":\"1\",\"widget-fullscreen-display-tabletlandscape\":\"1\",\"widget-fullscreen-display-desktopportrait\":\"1\",\"widget-fullscreen-display-desktoplandscape\":\"1\",\"widget-fullscreen-exclude-slides\":\"\",\"widget-html-enabled\":\"0\",\"widgethtml\":\"html\",\"widget-html-position-mode\":\"simple\",\"widget-html-position-area\":\"2\",\"widget-html-position-stack\":\"1\",\"widget-html-position-offset\":\"0\",\"widget-html-position-horizontal\":\"left\",\"widget-html-position-horizontal-position\":\"0\",\"widget-html-position-horizontal-unit\":\"px\",\"widget-html-position-vertical\":\"top\",\"widget-html-position-vertical-position\":\"0\",\"widget-html-position-vertical-unit\":\"px\",\"widget-html-code\":\"\",\"widget-html-display-hover\":\"0\",\"widget-html-display-mobileportrait\":\"1\",\"widget-html-display-mobilelandscape\":\"1\",\"widget-html-display-tabletportrait\":\"1\",\"widget-html-display-tabletlandscape\":\"1\",\"widget-html-display-desktopportrait\":\"1\",\"widget-html-display-desktoplandscape\":\"1\",\"widget-html-exclude-slides\":\"\",\"animation\":\"fade\",\"animation-duration\":\"500\",\"animation-delay\":\"0\",\"animation-easing\":\"easeOutQuad\",\"carousel\":\"1\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"normal\",\"animation-shifted-background-animation\":\"auto\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"shape-divider\":\"\",\"particle\":\"\",\"playfirstlayer\":\"1\",\"playonce\":\"0\",\"layer-animation-play-in\":\"end\",\"layer-animation-play-mode\":\"skippable\",\"parallax-enabled\":\"1\",\"parallax-enabled-mobile\":\"0\",\"parallax-3d\":\"0\",\"parallax-animate\":\"1\",\"parallax-horizontal\":\"mouse\",\"parallax-vertical\":\"mouse\",\"parallax-mouse-origin\":\"slider\",\"parallax-scroll-move\":\"both\",\"autoplay\":\"0\",\"autoplayDuration\":\"8000\",\"autoplayStart\":\"1\",\"autoplayAllowReStart\":\"0\",\"autoplayLoop\":\"1\",\"autoplayfinish\":\"1|*|loop|*|current\",\"loop-single-slide\":\"0\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"autoplayResumeClick\":\"0\",\"autoplayResumeMouse\":\"0\",\"autoplayResumeMedia\":\"1\",\"widget-autoplay-enabled\":\"0\",\"widgetautoplay\":\"image\",\"widget-autoplay-play\":\"small-light.svg\",\"widget-autoplay-play-image\":\"\",\"widget-autoplay-play-color\":\"ffffffcc\",\"widget-autoplay-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"10|*|10|*|10|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"\\\"},{\\\"backgroundcolor\\\":\\\"000000ab\\\"}]}\",\"widget-autoplay-mirror\":\"1\",\"widget-autoplay-pause\":\"small-light.svg\",\"widget-autoplay-pause-image\":\"\",\"widget-autoplay-pause-color\":\"ffffffcc\",\"widget-autoplay-responsive-desktop\":\"1\",\"widget-autoplay-responsive-tablet\":\"0.7\",\"widget-autoplay-responsive-mobile\":\"0.5\",\"widget-autoplay-position-mode\":\"simple\",\"widget-autoplay-position-area\":\"4\",\"widget-autoplay-position-stack\":\"1\",\"widget-autoplay-position-offset\":\"15\",\"widget-autoplay-position-horizontal\":\"left\",\"widget-autoplay-position-horizontal-position\":\"0\",\"widget-autoplay-position-horizontal-unit\":\"px\",\"widget-autoplay-position-vertical\":\"top\",\"widget-autoplay-position-vertical-position\":\"0\",\"widget-autoplay-position-vertical-unit\":\"px\",\"widget-autoplay-display-hover\":\"0\",\"widget-autoplay-display-mobileportrait\":\"1\",\"widget-autoplay-display-mobilelandscape\":\"1\",\"widget-autoplay-display-tabletportrait\":\"1\",\"widget-autoplay-display-tabletlandscape\":\"1\",\"widget-autoplay-display-desktopportrait\":\"1\",\"widget-autoplay-display-desktoplandscape\":\"1\",\"widget-autoplay-exclude-slides\":\"\",\"widget-indicator-enabled\":\"0\",\"widgetindicator\":\"pie\",\"widget-indicator-position-mode\":\"simple\",\"widget-indicator-position-area\":\"4\",\"widget-indicator-position-stack\":\"1\",\"widget-indicator-position-offset\":\"15\",\"widget-indicator-position-horizontal\":\"left\",\"widget-indicator-position-horizontal-position\":\"0\",\"widget-indicator-position-horizontal-unit\":\"px\",\"widget-indicator-position-vertical\":\"top\",\"widget-indicator-position-vertical-position\":\"0\",\"widget-indicator-position-vertical-unit\":\"px\",\"widget-indicator-size\":\"25\",\"widget-indicator-thickness\":\"30\",\"widget-indicator-track\":\"000000ab\",\"widget-indicator-bar\":\"ffffffff\",\"widget-indicator-style\":\"\",\"widget-indicator-display-hover\":\"0\",\"widget-indicator-display-mobileportrait\":\"1\",\"widget-indicator-display-mobilelandscape\":\"1\",\"widget-indicator-display-tabletportrait\":\"1\",\"widget-indicator-display-tabletlandscape\":\"1\",\"widget-indicator-display-desktopportrait\":\"1\",\"widget-indicator-display-desktoplandscape\":\"1\",\"widget-indicator-exclude-slides\":\"\",\"imageload\":\"0\",\"imageloadNeighborSlides\":\"0\",\"optimize-scale\":\"0\",\"optimize-quality\":\"70\",\"optimize-thumbnail-scale\":\"0\",\"optimize-thumbnail-quality\":\"70\",\"optimize-slide-width-normal\":\"1920\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"layer-image-optimize\":\"0\",\"layer-image-width-tablet\":\"800\",\"layer-image-width-mobile\":\"425\",\"layer-image-base64\":\"0\",\"layer-image-base64-size\":\"50\",\"slides-background-video-mobile\":\"1\",\"playWhenVisible\":\"1\",\"playWhenVisibleAt\":\"50\",\"dependency\":\"\",\"delay\":\"0\",\"is-delayed\":\"0\",\"backgroundMode\":\"fill\",\"slide-css\":\"\",\"randomize\":\"0\",\"randomizeFirst\":\"0\",\"randomize-cache\":\"1\",\"variations\":\"5\",\"reverse-slides\":\"0\",\"maximumslidecount\":\"1000\",\"maintain-session\":\"0\",\"global-lightbox\":\"0\",\"global-lightbox-label\":\"0\",\"slide-background-parallax\":\"0\",\"slide-background-parallax-strength\":\"50\",\"bg-parallax-tablet\":\"0\",\"bg-parallax-mobile\":\"0\",\"blockrightclick\":\"0\",\"controlsBlockCarouselInteraction\":\"1\",\"clear-both\":\"1\",\"clear-both-after\":\"1\",\"overflow-hidden-page\":\"0\",\"responsiveFocusUser\":\"1\",\"responsiveFocusEdge\":\"auto\",\"classes\":\"\",\"custom-css-codes\":\"\",\"callbacks\":\"\",\"related-posts\":\"\"}', 'trash', '2020-02-25 13:53:41', 'https://smartslider3.com/wp-content/uploads/slider404/tutorialsliderthumbnail-1.png', 1),
(2, NULL, 'Main Slider', 'simple', '{\"thumbnail\":\"\",\"aria-label\":\"\",\"alias-id\":\"\",\"alias-smoothscroll\":\"\",\"alias-slideswitch\":\"\",\"alias-slideswitch-scroll\":\"1\",\"align\":\"normal\",\"margin\":\"0|*|0|*|0|*|0\",\"width\":\"1200\",\"height\":\"800\",\"responsiveLimitSlideWidth\":\"1\",\"responsiveSlideWidth\":\"0\",\"responsiveSlideWidthMax\":\"3000\",\"responsiveSlideWidthTablet\":\"0\",\"responsiveSlideWidthMaxTablet\":\"3000\",\"responsiveSlideWidthMobile\":\"0\",\"responsiveSlideWidthMaxMobile\":\"480\",\"responsive-breakpoint-tablet-portrait\":\"1199\",\"responsive-breakpoint-tablet-portrait-landscape\":\"1199\",\"responsive-breakpoint-mobile-portrait\":\"700\",\"responsive-breakpoint-mobile-portrait-landscape\":\"900\",\"responsive-breakpoint-tablet-portrait-enabled\":\"1\",\"responsive-breakpoint-mobile-portrait-enabled\":\"1\",\"responsive-breakpoint-global\":\"0\",\"breakpoints-orientation\":\"portrait\",\"responsive-mode\":\"fullwidth\",\"responsiveSliderHeightMin\":\"0\",\"responsiveForceFull\":\"1\",\"responsiveForceFullOverflowX\":\"body\",\"responsiveForceFullHorizontalSelector\":\"body\",\"controlsTouch\":\"horizontal\",\"controlsScroll\":\"0\",\"controlsKeyboard\":\"1\",\"widget-arrow-enabled\":\"0\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-previous\":\"thin-horizontal.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-previous-alt\":\"previous arrow\",\"widget-arrow-next-alt\":\"next arrow\",\"widget-arrow-base64\":\"1\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-display-mobileportrait\":\"0\",\"widget-arrow-display-tabletportrait\":\"1\",\"widget-arrow-display-desktopportrait\":\"1\",\"widget-bullet-enabled\":\"1\",\"widgetbullet\":\"transition\",\"widget-bullet-position-area\":\"10\",\"widget-bullet-position-stack\":\"1\",\"widget-bullet-position-offset\":\"10\",\"widget-bullet-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"ffffffff\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"5|*|5|*|5|*|5|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"50\\\",\\\"extra\\\":\\\"margin: 4px;\\\"},{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"1D81F9FF\\\"}]}\",\"widget-bullet-bar\":\"\",\"widget-bullet-thumbnail-show-image\":\"0\",\"widget-bullet-thumbnail-width\":\"60\",\"widget-bullet-thumbnail-height\":\"60\",\"widget-bullet-thumbnail-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000080\\\",\\\"padding\\\":\\\"3|*|3|*|3|*|3|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"margin: 5px;\\\"}]}\",\"widget-bullet-thumbnail-side\":\"before\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-display-mobileportrait\":\"1\",\"widget-bullet-display-tabletportrait\":\"1\",\"widget-bullet-display-desktopportrait\":\"1\",\"widget-bar-enabled\":\"0\",\"widgetbar\":\"horizontal\",\"widget-bar-position-area\":\"10\",\"widget-bar-position-stack\":\"1\",\"widget-bar-position-offset\":\"30\",\"widget-bar-animate\":\"0\",\"widget-bar-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"5|*|20|*|5|*|20|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"40\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-bar-show-title\":\"1\",\"widget-bar-font-title\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000c7\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"extra\\\":\\\"vertical-align: middle;\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"Raleway,Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-bar-show-description\":\"1\",\"widget-bar-font-description\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000c7\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":1,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"extra\\\":\\\"vertical-align: middle;\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"Raleway,Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-bar-slide-count\":\"0\",\"widget-bar-full-width\":\"0\",\"widget-bar-separator\":\" - \",\"widget-bar-align\":\"center\",\"widget-bar-display-hover\":\"0\",\"widget-bar-display-mobileportrait\":\"1\",\"widget-bar-display-tabletportrait\":\"1\",\"widget-bar-display-desktopportrait\":\"1\",\"widget-thumbnail-enabled\":\"0\",\"widgetthumbnail\":\"default\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widget-thumbnail-tablet-width\":\"100\",\"widget-thumbnail-tablet-height\":\"60\",\"widget-thumbnail-mobile-width\":\"100\",\"widget-thumbnail-mobile-height\":\"60\",\"widget-thumbnail-position-area\":\"12\",\"widget-thumbnail-position-stack\":\"1\",\"widget-thumbnail-position-offset\":\"0\",\"widget-thumbnail-align-content\":\"start\",\"widget-thumbnail-style-bar\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"242424ff\\\",\\\"padding\\\":\\\"3|*|3|*|3|*|3|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-thumbnail-style-slides\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000000\\\",\\\"padding\\\":\\\"0|*|0|*|0|*|0|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|ffffff00\\\",\\\"borderradius\\\":\\\"0\\\",\\\"opacity\\\":\\\"40\\\",\\\"extra\\\":\\\"margin: 3px;\\\\ntransition: all 0.4s;\\\"},{\\\"border\\\":\\\"0|*|solid|*|ffffffcc\\\",\\\"opacity\\\":\\\"100\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-thumbnail-title-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"3|*|10|*|3|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\",\\\"extra\\\":\\\"bottom: 0;\\\\nleft: 0;\\\"}]}\",\"widget-thumbnail-title\":\"0\",\"widget-thumbnail-title-font\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"12||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ab\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.2\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"Raleway,Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-thumbnail-description\":\"0\",\"widget-thumbnail-description-font\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"12||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ab\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"Raleway,Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-thumbnail-caption-placement\":\"overlay\",\"widget-thumbnail-caption-size\":\"100\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-display-mobileportrait\":\"0\",\"widget-thumbnail-display-tabletportrait\":\"1\",\"widget-thumbnail-display-desktopportrait\":\"1\",\"widget-shadow-enabled\":\"0\",\"widgetshadow\":\"shadow\",\"widget-shadow-shadow\":\"dark.png\",\"widget-shadow-display-mobileportrait\":\"0\",\"widget-shadow-display-tabletportrait\":\"1\",\"widget-shadow-display-desktopportrait\":\"1\",\"animation\":\"horizontal\",\"animation-duration\":\"800\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"normal\",\"autoplay\":\"0\",\"autoplayDuration\":\"8000\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"autoplayResumeClick\":\"0\",\"autoplayResumeMouse\":\"0\",\"autoplayResumeMedia\":\"1\",\"widget-autoplay-enabled\":\"0\",\"widgetautoplay\":\"image\",\"widget-autoplay-play\":\"small-light.svg\",\"widget-autoplay-play-color\":\"ffffffcc\",\"widget-autoplay-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"10|*|10|*|10|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"\\\"},{\\\"backgroundcolor\\\":\\\"000000ab\\\"}]}\",\"widget-autoplay-position-area\":\"4\",\"widget-autoplay-position-stack\":\"1\",\"widget-autoplay-position-offset\":\"15\",\"widget-autoplay-display-hover\":\"0\",\"widget-autoplay-display-mobileportrait\":\"1\",\"widget-autoplay-display-tabletportrait\":\"1\",\"widget-autoplay-display-desktopportrait\":\"1\",\"loading-type\":\"\",\"delay\":\"0\",\"playWhenVisible\":\"1\",\"playWhenVisibleAt\":\"50\",\"optimize-scale\":\"0\",\"optimize-quality\":\"70\",\"optimize-slide-width-normal\":\"1920\",\"optimize-thumbnail-scale\":\"0\",\"optimize-thumbnail-quality\":\"70\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"backgroundMode\":\"fill\",\"backgroundBlurFit\":\"7\",\"controlsBlockCarouselInteraction\":\"1\",\"clear-both\":\"1\",\"clear-both-after\":\"1\",\"overflow-hidden-page\":\"0\",\"responsiveFocusUser\":\"1\",\"responsiveFocusEdge\":\"auto\",\"is-delayed\":\"0\",\"legacy-font-scale\":\"0\",\"classes\":\"\",\"custom-css-codes\":\"\",\"callbacks\":\"\",\"loading-time\":\"10000\",\"related-posts\":\"\",\"version\":\"3.5.1.4\"}', 'published', '2022-04-01 19:16:12', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_nextend2_smartslider3_sliders_xref`
--

CREATE TABLE `wp_nextend2_smartslider3_sliders_xref` (
  `group_id` int(11) NOT NULL,
  `slider_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_nextend2_smartslider3_sliders_xref`
--

INSERT INTO `wp_nextend2_smartslider3_sliders_xref` (`group_id`, `slider_id`, `ordering`) VALUES
(0, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_nextend2_smartslider3_slides`
--

CREATE TABLE `wp_nextend2_smartslider3_slides` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider` int(11) NOT NULL,
  `publish_up` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `published` tinyint(1) NOT NULL,
  `first` int(11) NOT NULL,
  `slide` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `generator_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_nextend2_smartslider3_slides`
--

INSERT INTO `wp_nextend2_smartslider3_slides` (`id`, `title`, `slider`, `publish_up`, `publish_down`, `published`, `first`, `slide`, `description`, `thumbnail`, `params`, `ordering`, `generator_id`) VALUES
(1, 'Slide Background', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":1120,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitselfalign\":\"center\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-IbNOabpfT5aE\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"row\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"desktopportraitgutter\":0,\"desktopportraitwrapafter\":0,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"tabletportraitgutter\":20,\"mobileportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"mobileportraitgutter\":20,\"mobileportraitwrapafter\":1,\"mobileportraitmaxwidth\":400,\"mobilelandscapewrapafter\":1,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-dtwtw9DVCwgQ\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"ffffff00\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"borderwidth\":\"1|*|1|*|1|*|1\",\"borderstyle\":\"none\",\"bordercolor\":\"FFFFFFFF\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"fullwidth\":1,\"stretch\":0,\"name\":\"Row\",\"namesynced\":1,\"cols\":[{\"type\":\"col\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px\",\"desktopportraitorder\":0,\"tabletportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"mobileportraitinneralign\":\"left\",\"mobileportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"mobileportraitorder\":2,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-Fjvyu081qJeK\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"colwidth\":\"2/5\",\"href\":\"\",\"href-target\":\"_self\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"borderwidth\":\"0|*|0|*|0|*|0\",\"borderstyle\":\"solid\",\"bordercolor\":\"ffffffff\",\"name\":\"Column\",\"namesynced\":1,\"layers\":[{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":60,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Jeans Store Interior\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"36||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.2\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"01. Slide Background\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Lorem ipsum dolor sit amet, consect\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"24||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"weight\\\":300,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Every slide includes a background, which can be a picture or solid color.\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":100,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Latest Project\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffdb\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"uppercase\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Step 1\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":90,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Text\",\"namesynced\":1,\"item\":{\"type\":\"text\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"18||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.6\\\",\\\"weight\\\":400,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"}]}\",\"style\":\"\",\"content\":\"To change the background click on the label bar and in the layer window select the style tab.\",\"content-tablet-enabled\":\"0\",\"contenttablet\":\"\",\"content-mobile-enabled\":\"0\",\"contentmobile\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":100,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Latest Project\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffdb\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"uppercase\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Step 2\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":90,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Text\",\"namesynced\":1,\"item\":{\"type\":\"text\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"18||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.6\\\",\\\"weight\\\":400,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"}]}\",\"style\":\"\",\"content\":\"Choose a source from the background top tab then upload an image or pick a background color.\",\"content-tablet-enabled\":\"0\",\"contenttablet\":\"\",\"content-mobile-enabled\":\"0\",\"contentmobile\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Read More\",\"namesynced\":1,\"item\":{\"type\":\"button\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"center\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"0568f6ff\\\"}]}\",\"style\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"0568f6ff\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"1|*|2|*|1|*|2|*|em\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"5\\\"},{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"ffffffff\\\"}]}\",\"content\":\"Next Slide\",\"nowrap\":\"1\",\"fullwidth\":\"0\",\"href\":\"NextSlide[]\",\"href-target\":\"_self\",\"href-rel\":\"\",\"class\":\"\",\"icon\":\"\",\"iconsize\":\"100\",\"iconspacing\":\"30\",\"iconplacement\":\"left\"}}}]},{\"type\":\"col\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitorder\":0,\"mobileportraitinneralign\":\"center\",\"mobileportraitorder\":1,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-LnImbm1HgUAv\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"colwidth\":\"3/5\",\"href\":\"\",\"href-target\":\"_self\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"borderwidth\":\"0|*|0|*|0|*|0\",\"borderstyle\":\"solid\",\"bordercolor\":\"ffffffff\",\"name\":\"Column\",\"namesynced\":1,\"layers\":[{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"mobileportraitmaxwidth\":300,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Image\",\"namesynced\":1,\"item\":{\"type\":\"image\",\"values\":{\"image\":\"https://smartslider3.com/wp-content/uploads/slider424/background.png\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"size\":\"auto|*|auto\",\"alt\":\"\",\"title\":\"\",\"href-class\":\"\"}}}]}]}]}]', '', 'https://smartslider3.com/wp-content/uploads/slider424/slidebackground.jpg', '{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"10|*|60|*|10|*|60\",\"tabletportraitpadding\":\"10|*|50|*|10|*|50\",\"mobileportraitpadding\":\"10|*|10|*|35|*|10\",\"record-slides\":0,\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"https://smartslider3.com/wp-content/uploads/slider424/slide1.png\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.4.0\"}', 1, 0),
(2, 'Build & Design', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":1120,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitselfalign\":\"center\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-TPnUuKlAWVoC\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"row\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"desktopportraitgutter\":0,\"desktopportraitwrapafter\":0,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"tabletportraitgutter\":20,\"mobileportraitinneralign\":\"inherit\",\"mobileportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"mobileportraitgutter\":20,\"mobileportraitwrapafter\":1,\"mobileportraitmaxwidth\":400,\"mobileportraitselfalign\":\"inherit\",\"mobilelandscapewrapafter\":1,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-NmnNQvKK01kO\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"ffffff00\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"borderwidth\":\"1|*|1|*|1|*|1\",\"borderstyle\":\"none\",\"bordercolor\":\"FFFFFFFF\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"fullwidth\":1,\"stretch\":0,\"name\":\"Row\",\"namesynced\":1,\"cols\":[{\"type\":\"col\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px\",\"desktopportraitorder\":0,\"tabletportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"mobileportraitmaxwidth\":0,\"mobileportraitinneralign\":\"left\",\"mobileportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"mobileportraitorder\":2,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-R5Jkk06Nmzr4\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"colwidth\":\"2/5\",\"href\":\"\",\"href-target\":\"_self\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"borderwidth\":\"0|*|0|*|0|*|0\",\"borderstyle\":\"solid\",\"bordercolor\":\"ffffffff\",\"name\":\"Column\",\"namesynced\":1,\"layers\":[{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":60,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Jeans Store Interior\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"36||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.2\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"02. Build & Design\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Lorem ipsum dolor sit amet, consect\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"24||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"weight\\\":300,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Build any layout with layers and customize your designs limitlessly.\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":100,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Latest Project\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffdb\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"uppercase\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Step 1\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":90,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Text\",\"namesynced\":1,\"item\":{\"type\":\"text\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"18||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.6\\\",\\\"weight\\\":400,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"}]}\",\"style\":\"\",\"content\":\"To add a layer, click the green plus button in the left sidebar and select the type of layer.\",\"content-tablet-enabled\":\"0\",\"contenttablet\":\"\",\"content-mobile-enabled\":\"0\",\"contentmobile\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":100,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Latest Project\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffdb\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"uppercase\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Step 2\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":90,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Text\",\"namesynced\":1,\"item\":{\"type\":\"text\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"18||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.6\\\",\\\"weight\\\":400,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"}]}\",\"style\":\"\",\"content\":\"Select any layer and you can edit its content and style properties in the layer window.\",\"content-tablet-enabled\":\"0\",\"contenttablet\":\"\",\"content-mobile-enabled\":\"0\",\"contentmobile\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Read More\",\"namesynced\":1,\"item\":{\"type\":\"button\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"center\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"0568f6ff\\\"}]}\",\"style\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"0568f6ff\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"1|*|2|*|1|*|2|*|em\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"5\\\"},{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"ffffffff\\\"}]}\",\"content\":\"Next Slide\",\"nowrap\":\"1\",\"fullwidth\":\"0\",\"href\":\"NextSlide[]\",\"href-target\":\"_self\",\"href-rel\":\"\",\"class\":\"\",\"icon\":\"\",\"iconsize\":\"100\",\"iconspacing\":\"30\",\"iconplacement\":\"left\"}}}]},{\"type\":\"col\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitorder\":0,\"mobileportraitinneralign\":\"center\",\"mobileportraitorder\":1,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-iYi6ZKk8yeVp\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"colwidth\":\"3/5\",\"href\":\"\",\"href-target\":\"_self\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"borderwidth\":\"0|*|0|*|0|*|0\",\"borderstyle\":\"solid\",\"bordercolor\":\"ffffffff\",\"name\":\"Column\",\"namesynced\":1,\"layers\":[{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"mobileportraitmaxwidth\":300,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Image\",\"namesynced\":1,\"item\":{\"type\":\"image\",\"values\":{\"image\":\"https://smartslider3.com/wp-content/uploads/slider424/buildanddesign.png\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"size\":\"auto|*|auto\",\"alt\":\"\",\"title\":\"\",\"href-class\":\"\"}}}]}]}]}]', '', 'https://smartslider3.com/wp-content/uploads/slider424/buildanddesign.jpg', '{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"10|*|60|*|10|*|60\",\"tabletportraitpadding\":\"10|*|50|*|10|*|50\",\"mobileportraitpadding\":\"10|*|10|*|35|*|10\",\"record-slides\":0,\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"https://smartslider3.com/wp-content/uploads/slider424/slide2.png\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.4.0\"}', 2, 0),
(3, 'background-header1', 2, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitverticalalign\":\"center\",\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"center\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px\",\"desktopportraitselfalign\":\"center\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-Eou5pbPdcuTi\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"layers\":[{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"left\",\"id\":\"\",\"uniqueclass\":\"n-uc-epdgKqUytlgt\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"\\n0 SUPER COOL AND CHEAP BUILDING COMPANY HEADED BY SUPER COOL PERSON OLEG WHO IS MY FRIEND AND MOREOVER MY LAST COWORKER.\",\"priority\":\"2\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"300||%\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto,Arial\\\",\\\"lineheight\\\":\\\"1\\\",\\\"weight\\\":400,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"left\",\"id\":\"\",\"uniqueclass\":\"n-uc-wPZO00K6erAf\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"\\u0422\\u0435\\u043a\\u0441\\u0442\",\"namesynced\":1,\"item\":{\"type\":\"text\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"25||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto,Arial\\\",\\\"lineheight\\\":\\\"1\\\",\\\"weight\\\":400,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"}]}\",\"style\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"ffffff00\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"5|*|0|*|0|*|0|*|%\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"content\":\"0 Topagrobel specializes in so many product, you can\'t even imagine numbers of projects they done, in construction development design, maintaining and more.\",\"content-tablet-enabled\":\"0\",\"contenttablet\":\"\",\"content-mobile-enabled\":\"0\",\"contentmobile\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"left\",\"id\":\"\",\"uniqueclass\":\"n-uc-WGyvHGFRGQe6\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"\\u041a\\u043d\\u043e\\u043f\\u043a\\u0430\",\"namesynced\":1,\"item\":{\"type\":\"button\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"000000ff\\\",\\\"size\\\":\\\"17||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto,Arial\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":400,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"center\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"ffd200ff\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"20|*|30|*|20|*|30|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"4\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"content\":\"0 Learn more about Button with some text\",\"nowrap\":\"1\",\"fullwidth\":\"0\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"class\":\"\",\"icon\":\"\",\"iconsize\":\"100\",\"iconspacing\":\"30\",\"iconplacement\":\"left\"}}}]}]', '', '$upload$/2022/04/background-header1-scaled.jpg', '{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"10|*|10|*|10|*|10\",\"record-slides\":0,\"thumbnailAlt\":\"\",\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"\",\"aria-label\":\"\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"$upload$/2022/04/background-header1-scaled.jpg\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"backgroundBlurFit\":7,\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.5.1.4\"}', 1, 0),
(4, 'background-header2', 2, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[]', '', '$upload$/2022/04/background-header2-scaled.jpg', '{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2022/04/background-header2-scaled.jpg\",\"version\":\"3.5.1.4\"}', 2, 0),
(5, 'background-header3', 2, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[]', '', '$upload$/2022/04/background-header3-scaled.jpg', '{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2022/04/background-header3-scaled.jpg\",\"version\":\"3.5.1.4\"}', 3, 0),
(6, 'background-header5', 2, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[]', '', '$upload$/2022/04/background-header5-scaled.jpg', '{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2022/04/background-header5-scaled.jpg\",\"version\":\"3.5.1.4\"}', 4, 0),
(7, 'background-header6', 2, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[]', '', '$upload$/2022/04/background-header6-scaled.jpg', '{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2022/04/background-header6-scaled.jpg\",\"version\":\"3.5.1.4\"}', 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://topagrobel', 'yes'),
(2, 'home', 'http://topagrobel', 'yes'),
(3, 'blogname', 'TopAgroBel', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dmitrisabaleuski@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"smart-slider-3/smart-slider-3.php\";i:2;s:27:\"svg-support/svg-support.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:71:\"C:\\xampp\\htdocs\\topagrobel\\www/wp-content/themes/topagrobel/js/index.js\";i:2;s:69:\"C:\\xampp\\htdocs\\topagrobel\\www/wp-content/themes/topagrobel/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'topagrobel', 'yes'),
(41, 'stylesheet', 'topagrobel', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '11', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '6', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1663522590', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:65:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'ru_RU', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1648964191;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1649007391;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1649007415;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1649007416;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1649266591;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1649493391;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1649525791;a:2:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}s:19:\"bad_response_source\";a:1:{i:0;s:95:\"Похоже, что источником ответа не является этот сайт.\";}}', 'yes'),
(126, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1647972095;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(142, 'can_compress_scripts', '1', 'no'),
(157, 'finished_updating_comment_type', '1', 'yes'),
(158, 'current_theme', 'Topagrobel', 'yes'),
(159, 'theme_mods_topagrobel', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:3;s:10:\"sub_menu-1\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1648051885;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:11:\"custom_logo\";i:6;}', 'yes'),
(160, 'theme_switched', '', 'yes'),
(222, 'theme_mods_twentytwenty', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1648051886;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(226, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(227, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(247, 'recently_activated', 'a:0:{}', 'yes'),
(254, 'bodhi_svgs_plugin_version', '2.4.2', 'yes'),
(255, 'bodhi_svgs_settings', 'a:3:{s:8:\"restrict\";s:2:\"on\";s:12:\"frontend_css\";s:2:\"on\";s:10:\"css_target\";s:0:\"\";}', 'yes'),
(269, 'site_logo', '6', 'yes'),
(291, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":4,\"critical\":0}', 'yes'),
(322, 'acf_version', '5.12.1', 'yes'),
(340, '_site_transient_timeout_php_check_653b16e6c5979ac325fae9f9db6a18fe', '1649428218', 'no'),
(341, '_site_transient_php_check_653b16e6c5979ac325fae9f9db6a18fe', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(354, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.9.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.9.3-partial-2.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:5:\"5.9.2\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.9.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1649490743;s:15:\"version_checked\";s:5:\"5.9.2\";s:12:\"translations\";a:0:{}}', 'no'),
(356, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1649490746;s:7:\"checked\";a:1:{s:10:\"topagrobel\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(357, 'n2_ss3_version', '3.5.1.4/b:release-3.5.1.4/r:4180a0be31ca8245fb8b81d21b5e7404d5f5166d', 'yes'),
(358, 'widget_smartslider3', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(359, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(466, '_transient_doing_cron', '1649490742.5698819160461425781250', 'yes'),
(467, '_transient_timeout_global_styles_topagrobel', '1649490803', 'no'),
(468, '_transient_global_styles_topagrobel', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(469, 'auto_updater.lock', '1649490745', 'no'),
(470, '_site_transient_timeout_theme_roots', '1649492545', 'no'),
(471, '_site_transient_theme_roots', 'a:1:{s:10:\"topagrobel\";s:7:\"/themes\";}', 'no'),
(472, 'core_updater.lock', '1649490746', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(5, 6, '_wp_attached_file', '2022/03/topagrobel.svg'),
(6, 6, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:244;s:6:\"height\";i:93;s:4:\"file\";s:14:\"topagrobel.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";d:57;s:4:\"crop\";b:0;s:4:\"file\";s:14:\"topagrobel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";d:115;s:4:\"crop\";b:0;s:4:\"file\";s:14:\"topagrobel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";d:293;s:4:\"crop\";b:0;s:4:\"file\";s:14:\"topagrobel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";d:391;s:4:\"crop\";b:0;s:4:\"file\";s:14:\"topagrobel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:14:\"topagrobel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:14:\"topagrobel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(7, 6, '_wp_attachment_image_alt', 'logo'),
(8, 7, '_wp_trash_meta_status', 'publish'),
(9, 7, '_wp_trash_meta_time', '1648053419'),
(10, 8, '_wp_trash_meta_status', 'publish'),
(11, 8, '_wp_trash_meta_time', '1648053875'),
(18, 11, '_edit_lock', '1648937544:1'),
(19, 11, '_edit_last', '1'),
(21, 11, '_wp_page_template', 'home.php'),
(22, 18, '_menu_item_type', 'custom'),
(23, 18, '_menu_item_menu_item_parent', '0'),
(24, 18, '_menu_item_object_id', '18'),
(25, 18, '_menu_item_object', 'custom'),
(26, 18, '_menu_item_target', ''),
(27, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 18, '_menu_item_xfn', ''),
(29, 18, '_menu_item_url', '#'),
(31, 19, '_menu_item_type', 'custom'),
(32, 19, '_menu_item_menu_item_parent', '0'),
(33, 19, '_menu_item_object_id', '19'),
(34, 19, '_menu_item_object', 'custom'),
(35, 19, '_menu_item_target', ''),
(36, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 19, '_menu_item_xfn', ''),
(38, 19, '_menu_item_url', '#'),
(40, 20, '_menu_item_type', 'custom'),
(41, 20, '_menu_item_menu_item_parent', '0'),
(42, 20, '_menu_item_object_id', '20'),
(43, 20, '_menu_item_object', 'custom'),
(44, 20, '_menu_item_target', ''),
(45, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 20, '_menu_item_xfn', ''),
(47, 20, '_menu_item_url', '#'),
(49, 21, '_menu_item_type', 'custom'),
(50, 21, '_menu_item_menu_item_parent', '0'),
(51, 21, '_menu_item_object_id', '21'),
(52, 21, '_menu_item_object', 'custom'),
(53, 21, '_menu_item_target', ''),
(54, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 21, '_menu_item_xfn', ''),
(56, 21, '_menu_item_url', '#'),
(58, 22, '_menu_item_type', 'custom'),
(59, 22, '_menu_item_menu_item_parent', '0'),
(60, 22, '_menu_item_object_id', '22'),
(61, 22, '_menu_item_object', 'custom'),
(62, 22, '_menu_item_target', ''),
(63, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 22, '_menu_item_xfn', ''),
(65, 22, '_menu_item_url', '#'),
(67, 23, '_menu_item_type', 'custom'),
(68, 23, '_menu_item_menu_item_parent', '0'),
(69, 23, '_menu_item_object_id', '23'),
(70, 23, '_menu_item_object', 'custom'),
(71, 23, '_menu_item_target', ''),
(72, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 23, '_menu_item_xfn', ''),
(74, 23, '_menu_item_url', '#'),
(139, 31, '_menu_item_type', 'custom'),
(140, 31, '_menu_item_menu_item_parent', '0'),
(141, 31, '_menu_item_object_id', '31'),
(142, 31, '_menu_item_object', 'custom'),
(143, 31, '_menu_item_target', ''),
(144, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(145, 31, '_menu_item_xfn', ''),
(146, 31, '_menu_item_url', '#'),
(148, 32, '_menu_item_type', 'custom'),
(149, 32, '_menu_item_menu_item_parent', '31'),
(150, 32, '_menu_item_object_id', '32'),
(151, 32, '_menu_item_object', 'custom'),
(152, 32, '_menu_item_target', ''),
(153, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(154, 32, '_menu_item_xfn', ''),
(155, 32, '_menu_item_url', '#'),
(157, 33, '_menu_item_type', 'custom'),
(158, 33, '_menu_item_menu_item_parent', '31'),
(159, 33, '_menu_item_object_id', '33'),
(160, 33, '_menu_item_object', 'custom'),
(161, 33, '_menu_item_target', ''),
(162, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(163, 33, '_menu_item_xfn', ''),
(164, 33, '_menu_item_url', '#'),
(166, 34, '_menu_item_type', 'custom'),
(167, 34, '_menu_item_menu_item_parent', '31'),
(168, 34, '_menu_item_object_id', '34'),
(169, 34, '_menu_item_object', 'custom'),
(170, 34, '_menu_item_target', ''),
(171, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(172, 34, '_menu_item_xfn', ''),
(173, 34, '_menu_item_url', '#'),
(175, 35, '_menu_item_type', 'custom'),
(176, 35, '_menu_item_menu_item_parent', '31'),
(177, 35, '_menu_item_object_id', '35'),
(178, 35, '_menu_item_object', 'custom'),
(179, 35, '_menu_item_target', ''),
(180, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(181, 35, '_menu_item_xfn', ''),
(182, 35, '_menu_item_url', '#'),
(184, 36, '_wp_attached_file', '2022/04/background-header1-scaled.jpg'),
(185, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:37:\"2022/04/background-header1-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"background-header1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"background-header1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"background-header1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"background-header1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"background-header1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:32:\"background-header1-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:22:\"background-header1.jpg\";}'),
(186, 37, '_wp_attached_file', '2022/04/background-header2-scaled.jpg'),
(187, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:37:\"2022/04/background-header2-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"background-header2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"background-header2-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"background-header2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"background-header2-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"background-header2-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:32:\"background-header2-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:22:\"background-header2.jpg\";}'),
(188, 38, '_wp_attached_file', '2022/04/background-header3-scaled.jpg'),
(189, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:37:\"2022/04/background-header3-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"background-header3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"background-header3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"background-header3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"background-header3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"background-header3-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:32:\"background-header3-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:22:\"background-header3.jpg\";}'),
(190, 39, '_wp_attached_file', '2022/04/background-header5-scaled.jpg'),
(191, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:37:\"2022/04/background-header5-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"background-header5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"background-header5-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"background-header5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"background-header5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"background-header5-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:32:\"background-header5-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:22:\"background-header5.jpg\";}'),
(192, 40, '_wp_attached_file', '2022/04/background-header6-scaled.jpg'),
(193, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:37:\"2022/04/background-header6-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"background-header6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"background-header6-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"background-header6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"background-header6-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"background-header6-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:32:\"background-header6-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:22:\"background-header6.jpg\";}'),
(194, 41, '_edit_last', '1'),
(195, 41, '_edit_lock', '1648837293:1'),
(196, 11, 'top_slider', '2'),
(197, 11, '_top_slider', 'field_624728aef7352'),
(198, 43, 'top_slider', '2'),
(199, 43, '_top_slider', 'field_624728aef7352'),
(200, 11, 'second_block_main_page', 'Kiewit is one of North America’s largest and most respected engineering and construction organizations. Kiewit’s commitment to safety, quality and environmental stewardship are ingrained in everything we do. It’s visible in our core values, the work that we build and in our people.\r\n<p>Learn more about Kiewit</p>'),
(201, 11, '_second_block_main_page', 'field_6247411c1ee1c'),
(202, 46, 'top_slider', '2'),
(203, 46, '_top_slider', 'field_624728aef7352'),
(204, 46, 'second_block_main_page', 'Kiewit is one of North America’s largest and most respected engineering and construction organizations. Kiewit’s commitment to safety, quality and environmental stewardship are ingrained in everything we do. It’s visible in our core values, the work that we build and in our people.'),
(205, 46, '_second_block_main_page', 'field_6247411c1ee1c'),
(206, 47, 'top_slider', '2'),
(207, 47, '_top_slider', 'field_624728aef7352'),
(208, 47, 'second_block_main_page', 'Kiewit is one of North America’s largest and most respected engineering and construction organizations. Kiewit’s commitment to safety, quality and environmental stewardship are ingrained in everything we do. It’s visible in our core values, the work that we build and in our people.\r\n<p>Learn more about Kiewit</p>'),
(209, 47, '_second_block_main_page', 'field_6247411c1ee1c');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-03-22 20:36:31', '2022-03-22 17:36:31', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2022-03-22 20:36:31', '2022-03-22 17:36:31', '', 0, 'http://topagrobel/?p=1', 0, 'post', '', 1),
(6, 1, '2022-03-23 19:36:34', '2022-03-23 16:36:34', '', 'topagrobel', '', 'inherit', 'open', 'closed', '', 'topagrobel', '', '', '2022-03-23 19:36:40', '2022-03-23 16:36:40', '', 0, 'http://topagrobel/wp-content/uploads/2022/03/topagrobel.svg', 0, 'attachment', 'image/svg+xml', 0),
(7, 1, '2022-03-23 19:36:59', '2022-03-23 16:36:59', '{\n    \"site_icon\": {\n        \"value\": 6,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-03-23 16:36:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9f523568-7343-4c44-9c13-41aa795bd33f', '', '', '2022-03-23 19:36:59', '2022-03-23 16:36:59', '', 0, 'http://topagrobel/2022/03/23/9f523568-7343-4c44-9c13-41aa795bd33f/', 0, 'customize_changeset', '', 0),
(8, 1, '2022-03-23 19:44:35', '2022-03-23 16:44:35', '{\n    \"topagrobel::custom_logo\": {\n        \"value\": 6,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-03-23 16:44:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '40d28051-2dd1-4f52-92ed-72edf1351c06', '', '', '2022-03-23 19:44:35', '2022-03-23 16:44:35', '', 0, 'http://topagrobel/2022/03/23/40d28051-2dd1-4f52-92ed-72edf1351c06/', 0, 'customize_changeset', '', 0),
(11, 1, '2022-03-23 19:56:36', '2022-03-23 16:56:36', '', 'Main Page', '', 'publish', 'closed', 'closed', '', 'main-page', '', '', '2022-04-01 21:21:45', '2022-04-01 18:21:45', '', 0, 'http://topagrobel/?page_id=11', 0, 'page', '', 0),
(12, 1, '2022-03-23 19:56:10', '2022-03-23 16:56:10', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-topagrobel', '', '', '2022-03-23 19:56:10', '2022-03-23 16:56:10', '', 0, 'http://topagrobel/2022/03/23/wp-global-styles-topagrobel/', 0, 'wp_global_styles', '', 0),
(13, 1, '2022-03-23 19:56:36', '2022-03-23 16:56:36', '', 'Main Page', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-03-23 19:56:36', '2022-03-23 16:56:36', '', 11, 'http://topagrobel/?p=13', 0, 'revision', '', 0),
(16, 1, '2022-03-23 21:07:58', '2022-03-23 18:07:58', '<!-- wp:group {\"tagName\":\"header\",\"layout\":{\"inherit\":true}} -->\n<header class=\"wp-block-group\"><!-- wp:site-title /-->\n\n<!-- wp:site-tagline /--></header>\n<!-- /wp:group -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:group {\"tagName\":\"main\"} -->\n<main class=\"wp-block-group\"><!-- wp:group {\"layout\":{\"inherit\":true}} -->\n<div class=\"wp-block-group\"><!-- wp:post-title /--></div>\n<!-- /wp:group -->\n\n<!-- wp:post-content {\"layout\":{\"inherit\":true}} /--></main>\n<!-- /wp:group -->', 'MainPage', '', 'publish', 'closed', 'closed', '', 'wp-custom-template-main-page', '', '', '2022-03-23 21:07:58', '2022-03-23 18:07:58', '', 0, 'http://topagrobel/2022/03/23/wp-custom-template-main-page/', 0, 'wp_template', '', 0),
(18, 1, '2022-04-01 19:09:53', '2022-04-01 14:48:34', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-04-01 19:09:53', '2022-04-01 16:09:53', '', 0, 'http://topagrobel/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2022-04-01 19:09:53', '2022-04-01 14:48:34', '', 'Item', '', 'publish', 'closed', 'closed', '', 'item', '', '', '2022-04-01 19:09:53', '2022-04-01 16:09:53', '', 0, 'http://topagrobel/?p=19', 2, 'nav_menu_item', '', 0),
(20, 1, '2022-04-01 19:09:53', '2022-04-01 14:48:34', '', 'Item', '', 'publish', 'closed', 'closed', '', 'item-2', '', '', '2022-04-01 19:09:53', '2022-04-01 16:09:53', '', 0, 'http://topagrobel/?p=20', 3, 'nav_menu_item', '', 0),
(21, 1, '2022-04-01 19:09:53', '2022-04-01 14:48:34', '', 'Item', '', 'publish', 'closed', 'closed', '', 'item-3', '', '', '2022-04-01 19:09:53', '2022-04-01 16:09:53', '', 0, 'http://topagrobel/?p=21', 4, 'nav_menu_item', '', 0),
(22, 1, '2022-04-01 19:09:53', '2022-04-01 14:48:34', '', 'Item', '', 'publish', 'closed', 'closed', '', 'item-4', '', '', '2022-04-01 19:09:53', '2022-04-01 16:09:53', '', 0, 'http://topagrobel/?p=22', 5, 'nav_menu_item', '', 0),
(23, 1, '2022-04-01 19:09:53', '2022-04-01 14:48:34', '', 'Item', '', 'publish', 'closed', 'closed', '', 'item-5', '', '', '2022-04-01 19:09:53', '2022-04-01 16:09:53', '', 0, 'http://topagrobel/?p=23', 6, 'nav_menu_item', '', 0),
(31, 1, '2022-04-01 19:10:39', '2022-04-01 16:10:39', '', 'Item', '', 'publish', 'closed', 'closed', '', 'item-6', '', '', '2022-04-01 19:10:39', '2022-04-01 16:10:39', '', 0, 'http://topagrobel/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2022-04-01 19:10:39', '2022-04-01 16:10:39', '', 'Sub-Item', '', 'publish', 'closed', 'closed', '', 'sub-item', '', '', '2022-04-01 19:10:39', '2022-04-01 16:10:39', '', 0, 'http://topagrobel/?p=32', 2, 'nav_menu_item', '', 0),
(33, 1, '2022-04-01 19:10:40', '2022-04-01 16:10:40', '', 'Sub-Item', '', 'publish', 'closed', 'closed', '', 'sub-item-2', '', '', '2022-04-01 19:10:40', '2022-04-01 16:10:40', '', 0, 'http://topagrobel/?p=33', 3, 'nav_menu_item', '', 0),
(34, 1, '2022-04-01 19:10:40', '2022-04-01 16:10:40', '', 'Sub-Item', '', 'publish', 'closed', 'closed', '', 'sub-item-3', '', '', '2022-04-01 19:10:40', '2022-04-01 16:10:40', '', 0, 'http://topagrobel/?p=34', 4, 'nav_menu_item', '', 0),
(35, 1, '2022-04-01 19:10:40', '2022-04-01 16:10:40', '', 'Sub-Item', '', 'publish', 'closed', 'closed', '', 'sub-item-4', '', '', '2022-04-01 19:10:40', '2022-04-01 16:10:40', '', 0, 'http://topagrobel/?p=35', 5, 'nav_menu_item', '', 0),
(36, 1, '2022-04-01 19:16:43', '2022-04-01 16:16:43', '', 'background-header1', '', 'inherit', 'open', 'closed', '', 'background-header1', '', '', '2022-04-01 19:16:43', '2022-04-01 16:16:43', '', 0, 'http://topagrobel/wp-content/uploads/2022/04/background-header1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2022-04-01 19:16:49', '2022-04-01 16:16:49', '', 'background-header2', '', 'inherit', 'open', 'closed', '', 'background-header2', '', '', '2022-04-01 19:16:49', '2022-04-01 16:16:49', '', 0, 'http://topagrobel/wp-content/uploads/2022/04/background-header2.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2022-04-01 19:16:55', '2022-04-01 16:16:55', '', 'background-header3', '', 'inherit', 'open', 'closed', '', 'background-header3', '', '', '2022-04-01 19:16:55', '2022-04-01 16:16:55', '', 0, 'http://topagrobel/wp-content/uploads/2022/04/background-header3.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2022-04-01 19:17:01', '2022-04-01 16:17:01', '', 'background-header5', '', 'inherit', 'open', 'closed', '', 'background-header5', '', '', '2022-04-01 19:17:01', '2022-04-01 16:17:01', '', 0, 'http://topagrobel/wp-content/uploads/2022/04/background-header5.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2022-04-01 19:17:05', '2022-04-01 16:17:05', '', 'background-header6', '', 'inherit', 'open', 'closed', '', 'background-header6', '', '', '2022-04-01 19:17:05', '2022-04-01 16:17:05', '', 0, 'http://topagrobel/wp-content/uploads/2022/04/background-header6.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2022-04-01 19:31:16', '2022-04-01 16:31:16', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Главная Страница', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', 'publish', 'closed', 'closed', '', 'group_62472899288b3', '', '', '2022-04-01 21:21:33', '2022-04-01 18:21:33', '', 0, 'http://topagrobel/?post_type=acf-field-group&#038;p=41', 0, 'acf-field-group', '', 0),
(42, 1, '2022-04-01 19:31:16', '2022-04-01 16:31:16', 'a:5:{s:4:\"type\";s:16:\"acf_smartslider3\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}}', 'Top Slider', 'top_slider', 'publish', 'closed', 'closed', '', 'field_624728aef7352', '', '', '2022-04-01 19:31:16', '2022-04-01 16:31:16', '', 41, 'http://topagrobel/?post_type=acf-field&p=42', 0, 'acf-field', '', 0),
(43, 1, '2022-04-01 19:31:30', '2022-04-01 16:31:30', '', 'Main Page', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-04-01 19:31:30', '2022-04-01 16:31:30', '', 11, 'http://topagrobel/?p=43', 0, 'revision', '', 0),
(44, 1, '2022-04-01 21:12:06', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-01 21:12:06', '0000-00-00 00:00:00', '', 0, 'http://topagrobel/?post_type=acf-field-group&p=44', 0, 'acf-field-group', '', 0),
(45, 1, '2022-04-01 21:15:53', '2022-04-01 18:15:53', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Второй блок', 'second_block_main_page', 'publish', 'closed', 'closed', '', 'field_6247411c1ee1c', '', '', '2022-04-01 21:21:33', '2022-04-01 18:21:33', '', 41, 'http://topagrobel/?post_type=acf-field&#038;p=45', 1, 'acf-field', '', 0),
(46, 1, '2022-04-01 21:17:09', '2022-04-01 18:17:09', '', 'Main Page', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-04-01 21:17:09', '2022-04-01 18:17:09', '', 11, 'http://topagrobel/?p=46', 0, 'revision', '', 0),
(47, 1, '2022-04-01 21:21:45', '2022-04-01 18:21:45', '', 'Main Page', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-04-01 21:21:45', '2022-04-01 18:21:45', '', 11, 'http://topagrobel/?p=47', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'topagrobel', 'topagrobel', 0),
(3, 'Primary Menu', 'primary-menu', 0),
(4, 'Sub Menu Col 1', 'sub-menu-col-1', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 2, 0),
(16, 2, 0),
(18, 3, 0),
(19, 3, 0),
(20, 3, 0),
(21, 3, 0),
(22, 3, 0),
(23, 3, 0),
(31, 4, 0),
(32, 4, 0),
(33, 4, 0),
(34, 4, 0),
(35, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"e5483e6680345e56359e1c2d58301588e6d4e8b47e8fe66137802972101e0934\";a:4:{s:10:\"expiration\";i:1649180215;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36\";s:5:\"login\";i:1647970615;}s:64:\"c21e0873d3241413803cd710bf12dfd4b28ce1eb8e815309dbb4990e940014db\";a:4:{s:10:\"expiration\";i:1649262729;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36\";s:5:\"login\";i:1648053129;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=upload&editor=html'),
(20, 1, 'wp_user-settings-time', '1648837301'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B.dH3p2RInTlVFvQ1FkUK3E3uoOD39.', 'admin', 'dmitrisabaleuski@gmail.com', 'http://topagrobel', '2022-03-22 17:36:31', '', 0, 'admin');

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
-- Индексы таблицы `wp_nextend2_image_storage`
--
ALTER TABLE `wp_nextend2_image_storage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Индексы таблицы `wp_nextend2_section_storage`
--
ALTER TABLE `wp_nextend2_section_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system` (`system`),
  ADD KEY `editable` (`editable`),
  ADD KEY `application` (`application`,`section`(50),`referencekey`(50)),
  ADD KEY `application_2` (`application`,`section`(50));

--
-- Индексы таблицы `wp_nextend2_smartslider3_generators`
--
ALTER TABLE `wp_nextend2_smartslider3_generators`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_nextend2_smartslider3_sliders`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `time` (`time`);

--
-- Индексы таблицы `wp_nextend2_smartslider3_sliders_xref`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders_xref`
  ADD PRIMARY KEY (`group_id`,`slider_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `wp_nextend2_smartslider3_slides`
--
ALTER TABLE `wp_nextend2_smartslider3_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`),
  ADD KEY `publish_up` (`publish_up`),
  ADD KEY `publish_down` (`publish_down`),
  ADD KEY `generator_id` (`generator_id`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `slider` (`slider`),
  ADD KEY `thumbnail` (`thumbnail`(100));

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
-- AUTO_INCREMENT для таблицы `wp_nextend2_image_storage`
--
ALTER TABLE `wp_nextend2_image_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wp_nextend2_section_storage`
--
ALTER TABLE `wp_nextend2_section_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10056;

--
-- AUTO_INCREMENT для таблицы `wp_nextend2_smartslider3_generators`
--
ALTER TABLE `wp_nextend2_smartslider3_generators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_nextend2_smartslider3_sliders`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_nextend2_smartslider3_slides`
--
ALTER TABLE `wp_nextend2_smartslider3_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=473;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
