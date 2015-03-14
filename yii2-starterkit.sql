-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 14 2015 г., 11:34
-- Версия сервера: 5.5.41-log
-- Версия PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `yii2-starterkit`
--

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `published_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_article_author_id` (`author_id`),
  KEY `idx_article_updater_id` (`updater_id`),
  KEY `idx_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `article_attachment`
--

CREATE TABLE IF NOT EXISTS `article_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `url` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_article_attachment_article` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `article_category`
--

CREATE TABLE IF NOT EXISTS `article_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `parent_id` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `article_category`
--

INSERT INTO `article_category` (`id`, `slug`, `title`, `body`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'informacia', 'Информация', NULL, NULL, 1, 1426276070, 1426276070);

-- --------------------------------------------------------

--
-- Структура таблицы `file_storage_item`
--

CREATE TABLE IF NOT EXISTS `file_storage_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repository` varchar(32) NOT NULL,
  `category` varchar(128) DEFAULT NULL,
  `url` varchar(2048) DEFAULT NULL,
  `path` varchar(2048) NOT NULL,
  `mimeType` varchar(128) NOT NULL,
  `upload_ip` varchar(15) DEFAULT NULL,
  `size` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `file_storage_item`
--

INSERT INTO `file_storage_item` (`id`, `repository`, `category`, `url`, `path`, `mimeType`, `upload_ip`, `size`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads', 'avatar', 'http://storage.yii2-starterkit/1/8XOQxaog27ctsP2jt0ZxY-GqWJfMHafo.jpg', 'G:\\OpenServer\\domains\\yii2-starterkit\\storage\\1\\8XOQxaog27ctsP2jt0ZxY-GqWJfMHafo.jpg', 'image/jpeg', '127.0.0.1', 49174, 1, 1426273360, 1426273360),
(2, 'uploads', 'avatar', 'http://storage.yii2-starterkit/1/18VH2H24dItzwSLqz7wjhdkC337eZLlG.jpg', 'G:\\OpenServer\\domains\\yii2-starterkit\\storage\\1\\18VH2H24dItzwSLqz7wjhdkC337eZLlG.jpg', 'image/jpeg', '127.0.0.1', 23093, 1, 1426273396, 1426273396),
(3, 'uploads', 'avatar', 'http://storage.yii2-starterkit/1/kC4-gmyvD9j-r5X3BoEo6pZNNgnvH_PT.jpg', 'G:\\OpenServer\\domains\\yii2-starterkit\\storage\\1\\kC4-gmyvD9j-r5X3BoEo6pZNNgnvH_PT.jpg', 'image/jpeg', '127.0.0.1', 23093, 1, 1426273571, 1426273571),
(4, 'uploads', 'avatar', 'http://storage.yii2-starterkit/1/y9bBsZQy8oDWSUV4oxBMauPejWOlP1Nf.jpg', 'G:\\OpenServer\\domains\\yii2-starterkit\\storage\\1\\y9bBsZQy8oDWSUV4oxBMauPejWOlP1Nf.jpg', 'image/jpeg', '127.0.0.1', 23093, 1, 1426273576, 1426273576),
(5, 'uploads', 'avatar', 'http://storage.yii2-starterkit/1/ecTIZqGWIQ_6DxCJKkfk3oxroSKZwyvp.jpg', 'G:\\OpenServer\\domains\\yii2-starterkit\\storage\\1\\ecTIZqGWIQ_6DxCJKkfk3oxroSKZwyvp.jpg', 'image/jpeg', '127.0.0.1', 23093, 1, 1426275838, 1426275838),
(6, 'uploads', 'avatar', 'http://storage.yii2-starterkit/1/tE5bWWA7C8ANF4oHajfekYu5Aq16vg5f.jpg', 'G:\\OpenServer\\domains\\yii2-starterkit\\storage\\1\\tE5bWWA7C8ANF4oHajfekYu5Aq16vg5f.jpg', 'image/jpeg', '127.0.0.1', 23093, 1, 1426275842, 1426275842),
(7, 'uploads', NULL, 'http://storage.yii2-starterkit/1/4GILiIjvV3JvBAWX1L1tMUemNBerIvGj.png', 'G:\\OpenServer\\domains\\yii2-starterkit\\storage\\1\\4GILiIjvV3JvBAWX1L1tMUemNBerIvGj.png', 'image/png', '127.0.0.1', 8325, 1, 1426276554, 1426276554),
(8, 'uploads', NULL, 'http://storage.yii2-starterkit/1/GRwLwTUKUWRgFOR_8ZQycOaRn_t7r7UX.jpg', 'G:\\OpenServer\\domains\\yii2-starterkit\\storage\\1\\GRwLwTUKUWRgFOR_8ZQycOaRn_t7r7UX.jpg', 'image/jpeg', '127.0.0.1', 49365, 1, 1426314363, 1426314363);

-- --------------------------------------------------------

--
-- Структура таблицы `i18n_message`
--

CREATE TABLE IF NOT EXISTS `i18n_message` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `translation` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `i18n_source_message`
--

CREATE TABLE IF NOT EXISTS `i18n_source_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `key_storage_item`
--

CREATE TABLE IF NOT EXISTS `key_storage_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_key_storage_item_key` (`key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `key_storage_item`
--

INSERT INTO `key_storage_item` (`id`, `key`, `value`, `comment`, `updated_at`, `created_at`) VALUES
(1, 'backend.theme-skin', 'skin-blue', NULL, NULL, NULL),
(2, 'frontend.maintenance', '0', 'Set it to "true" to turn on maintenance mode', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `slug`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1, 'about', 'О компании', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>', 1, 1426271787, 1426312783),
(2, 'payment', 'Оплата и доставка', '<p><img src="http://storage.yii2-starterkit/1/4GILiIjvV3JvBAWX1L1tMUemNBerIvGj.png">ghfgh </p>', 1, 1426276580, 1426312818),
(3, 'select', 'Как выбрать матрас', '<p>aa</p>', 1, 1426312872, 1426312872),
(4, 'novelty', 'Новинки', '<p>jj</p>', 1, 1426312944, 1426312944),
(5, 'contacts', 'Контакты', '<p>vv</p>', 1, 1426313005, 1426313729);

-- --------------------------------------------------------

--
-- Структура таблицы `rbac_auth_assignment`
--

CREATE TABLE IF NOT EXISTS `rbac_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `rbac_auth_item`
--

CREATE TABLE IF NOT EXISTS `rbac_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rbac_auth_item`
--

INSERT INTO `rbac_auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('administrator', 1, NULL, 'userGroup', NULL, 1426271800, 1426271800),
('manager', 1, NULL, 'userGroup', NULL, 1426271800, 1426271800),
('user', 1, NULL, 'userGroup', NULL, 1426271800, 1426271800);

-- --------------------------------------------------------

--
-- Структура таблицы `rbac_auth_item_child`
--

CREATE TABLE IF NOT EXISTS `rbac_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rbac_auth_item_child`
--

INSERT INTO `rbac_auth_item_child` (`parent`, `child`) VALUES
('administrator', 'manager'),
('manager', 'user');

-- --------------------------------------------------------

--
-- Структура таблицы `rbac_auth_rule`
--

CREATE TABLE IF NOT EXISTS `rbac_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `rbac_auth_rule`
--

INSERT INTO `rbac_auth_rule` (`name`, `data`, `created_at`, `updated_at`) VALUES
('userGroup', 'O:25:"common\\rbac\\UserGroupRule":3:{s:4:"name";s:9:"userGroup";s:9:"createdAt";i:1426271800;s:9:"updatedAt";i:1426271800;}', 1426271800, 1426271800);

-- --------------------------------------------------------

--
-- Структура таблицы `system_event`
--

CREATE TABLE IF NOT EXISTS `system_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `system_log`
--

CREATE TABLE IF NOT EXISTS `system_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_time` double DEFAULT NULL,
  `prefix` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_log_level` (`level`),
  KEY `idx_log_category` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `system_log`
--

INSERT INTO `system_log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(1, 1, 'yii\\base\\ErrorException:1', 1426272017.0548, '[backend][/system-information/index]', 'exception ''yii\\base\\ErrorException'' with message ''Class ''COM'' not found'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\trntv\\probe\\src\\provider\\WindowsProvider.php:276\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(2, 1, 'yii\\base\\ErrorException:1', 1426272044.9728, '[backend][/system-information/index]', 'exception ''yii\\base\\ErrorException'' with message ''Class ''COM'' not found'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\trntv\\probe\\src\\provider\\WindowsProvider.php:276\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(3, 1, 'yii\\base\\InvalidParamException', 1426272052.2609, '[backend][/log/index]', 'exception ''yii\\base\\InvalidParamException'' with message ''Failed to parse ''1426272044.9728'' as a UNIX timestamp.'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php:625\nStack trace:\n#0 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(543): yii\\i18n\\Formatter->normalizeDatetimeValue(1426272044.9728)\n#1 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(506): yii\\i18n\\Formatter->formatDateTimeValue(1426272044.9728, ''medium'', ''datetime'')\n#2 [internal function]: yii\\i18n\\Formatter->asDatetime(1426272044.9728)\n#3 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(265): call_user_func_array(Array, Array)\n#4 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\DataColumn.php(204): yii\\i18n\\Formatter->format(1426272044.9728, ''datetime'')\n#5 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\Column.php(108): yii\\grid\\DataColumn->renderDataCellContent(Object(backend\\models\\SystemLog), ''2'', 0)\n#6 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(455): yii\\grid\\Column->renderDataCell(Object(backend\\models\\SystemLog), ''2'', 0)\n#7 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(424): yii\\grid\\GridView->renderTableRow(Object(backend\\models\\SystemLog), ''2'', 0)\n#8 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(295): yii\\grid\\GridView->renderTableBody()\n#9 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(149): yii\\grid\\GridView->renderItems()\n#10 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(264): yii\\widgets\\BaseListView->renderSection(''{items}'')\n#11 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(126): yii\\grid\\GridView->renderSection(''{items}'')\n#12 [internal function]: yii\\widgets\\BaseListView->yii\\widgets\\{closure}(Array)\n#13 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(129): preg_replace_callback(''/{\\\\w+}/'', Object(Closure), ''{summary}\\n{item...'')\n#14 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(239): yii\\widgets\\BaseListView->run()\n#15 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Widget.php(96): yii\\grid\\GridView->run()\n#16 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\views\\log\\index.php(49): yii\\base\\Widget::widget(Array)\n#17 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(325): require(''G:\\\\OpenServer\\\\d...'')\n#18 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(247): yii\\base\\View->renderPhpFile(''G:\\\\OpenServer\\\\d...'', Array)\n#19 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(149): yii\\base\\View->renderFile(''G:\\\\OpenServer\\\\d...'', Array, Object(backend\\controllers\\LogController))\n#20 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(367): yii\\base\\View->render(''index'', Array, Object(backend\\controllers\\LogController))\n#21 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\controllers\\LogController.php(51): yii\\base\\Controller->render(''index'', Array)\n#22 [internal function]: backend\\controllers\\LogController->actionIndex()\n#23 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#24 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#25 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Module.php(455): yii\\base\\Controller->runAction(''index'', Array)\n#26 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\web\\Application.php(83): yii\\base\\Module->runAction(''log/index'', Array)\n#27 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#28 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\web\\index.php(23): yii\\base\\Application->run()\n#29 {main}\n\nNext exception ''yii\\base\\InvalidParamException'' with message ''''1426272044.9728'' is not a valid date time value: Failed to parse ''1426272044.9728'' as a UNIX timestamp.\nArray\n(\n    [warning_count] => 0\n    [warnings] => Array\n        (\n        )\n\n    [error_count] => 1\n    [errors] => Array\n        (\n            [10] => Trailing data\n        )\n\n)\n'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php:642\nStack trace:\n#0 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(543): yii\\i18n\\Formatter->normalizeDatetimeValue(1426272044.9728)\n#1 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(506): yii\\i18n\\Formatter->formatDateTimeValue(1426272044.9728, ''medium'', ''datetime'')\n#2 [internal function]: yii\\i18n\\Formatter->asDatetime(1426272044.9728)\n#3 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(265): call_user_func_array(Array, Array)\n#4 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\DataColumn.php(204): yii\\i18n\\Formatter->format(1426272044.9728, ''datetime'')\n#5 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\Column.php(108): yii\\grid\\DataColumn->renderDataCellContent(Object(backend\\models\\SystemLog), ''2'', 0)\n#6 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(455): yii\\grid\\Column->renderDataCell(Object(backend\\models\\SystemLog), ''2'', 0)\n#7 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(424): yii\\grid\\GridView->renderTableRow(Object(backend\\models\\SystemLog), ''2'', 0)\n#8 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(295): yii\\grid\\GridView->renderTableBody()\n#9 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(149): yii\\grid\\GridView->renderItems()\n#10 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(264): yii\\widgets\\BaseListView->renderSection(''{items}'')\n#11 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(126): yii\\grid\\GridView->renderSection(''{items}'')\n#12 [internal function]: yii\\widgets\\BaseListView->yii\\widgets\\{closure}(Array)\n#13 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(129): preg_replace_callback(''/{\\\\w+}/'', Object(Closure), ''{summary}\\n{item...'')\n#14 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(239): yii\\widgets\\BaseListView->run()\n#15 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Widget.php(96): yii\\grid\\GridView->run()\n#16 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\views\\log\\index.php(49): yii\\base\\Widget::widget(Array)\n#17 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(325): require(''G:\\\\OpenServer\\\\d...'')\n#18 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(247): yii\\base\\View->renderPhpFile(''G:\\\\OpenServer\\\\d...'', Array)\n#19 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(149): yii\\base\\View->renderFile(''G:\\\\OpenServer\\\\d...'', Array, Object(backend\\controllers\\LogController))\n#20 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(367): yii\\base\\View->render(''index'', Array, Object(backend\\controllers\\LogController))\n#21 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\controllers\\LogController.php(51): yii\\base\\Controller->render(''index'', Array)\n#22 [internal function]: backend\\controllers\\LogController->actionIndex()\n#23 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#24 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#25 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Module.php(455): yii\\base\\Controller->runAction(''index'', Array)\n#26 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\web\\Application.php(83): yii\\base\\Module->runAction(''log/index'', Array)\n#27 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#28 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\web\\index.php(23): yii\\base\\Application->run()\n#29 {main}'),
(4, 1, 'yii\\base\\InvalidParamException', 1426272811.0201, '[backend][/log/index]', 'exception ''yii\\base\\InvalidParamException'' with message ''Failed to parse ''1426272052.2609'' as a UNIX timestamp.'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php:625\nStack trace:\n#0 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(543): yii\\i18n\\Formatter->normalizeDatetimeValue(1426272052.2609)\n#1 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(506): yii\\i18n\\Formatter->formatDateTimeValue(1426272052.2609, ''medium'', ''datetime'')\n#2 [internal function]: yii\\i18n\\Formatter->asDatetime(1426272052.2609)\n#3 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(265): call_user_func_array(Array, Array)\n#4 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\DataColumn.php(204): yii\\i18n\\Formatter->format(1426272052.2609, ''datetime'')\n#5 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\Column.php(108): yii\\grid\\DataColumn->renderDataCellContent(Object(backend\\models\\SystemLog), ''3'', 0)\n#6 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(455): yii\\grid\\Column->renderDataCell(Object(backend\\models\\SystemLog), ''3'', 0)\n#7 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(424): yii\\grid\\GridView->renderTableRow(Object(backend\\models\\SystemLog), ''3'', 0)\n#8 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(295): yii\\grid\\GridView->renderTableBody()\n#9 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(149): yii\\grid\\GridView->renderItems()\n#10 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(264): yii\\widgets\\BaseListView->renderSection(''{items}'')\n#11 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(126): yii\\grid\\GridView->renderSection(''{items}'')\n#12 [internal function]: yii\\widgets\\BaseListView->yii\\widgets\\{closure}(Array)\n#13 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(129): preg_replace_callback(''/{\\\\w+}/'', Object(Closure), ''{summary}\\n{item...'')\n#14 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(239): yii\\widgets\\BaseListView->run()\n#15 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Widget.php(96): yii\\grid\\GridView->run()\n#16 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\views\\log\\index.php(49): yii\\base\\Widget::widget(Array)\n#17 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(325): require(''G:\\\\OpenServer\\\\d...'')\n#18 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(247): yii\\base\\View->renderPhpFile(''G:\\\\OpenServer\\\\d...'', Array)\n#19 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(149): yii\\base\\View->renderFile(''G:\\\\OpenServer\\\\d...'', Array, Object(backend\\controllers\\LogController))\n#20 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(367): yii\\base\\View->render(''index'', Array, Object(backend\\controllers\\LogController))\n#21 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\controllers\\LogController.php(51): yii\\base\\Controller->render(''index'', Array)\n#22 [internal function]: backend\\controllers\\LogController->actionIndex()\n#23 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#24 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#25 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Module.php(455): yii\\base\\Controller->runAction(''index'', Array)\n#26 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\web\\Application.php(83): yii\\base\\Module->runAction(''log/index'', Array)\n#27 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#28 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\web\\index.php(23): yii\\base\\Application->run()\n#29 {main}\n\nNext exception ''yii\\base\\InvalidParamException'' with message ''''1426272052.2609'' is not a valid date time value: Failed to parse ''1426272052.2609'' as a UNIX timestamp.\nArray\n(\n    [warning_count] => 0\n    [warnings] => Array\n        (\n        )\n\n    [error_count] => 1\n    [errors] => Array\n        (\n            [10] => Trailing data\n        )\n\n)\n'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php:642\nStack trace:\n#0 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(543): yii\\i18n\\Formatter->normalizeDatetimeValue(1426272052.2609)\n#1 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(506): yii\\i18n\\Formatter->formatDateTimeValue(1426272052.2609, ''medium'', ''datetime'')\n#2 [internal function]: yii\\i18n\\Formatter->asDatetime(1426272052.2609)\n#3 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(265): call_user_func_array(Array, Array)\n#4 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\DataColumn.php(204): yii\\i18n\\Formatter->format(1426272052.2609, ''datetime'')\n#5 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\Column.php(108): yii\\grid\\DataColumn->renderDataCellContent(Object(backend\\models\\SystemLog), ''3'', 0)\n#6 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(455): yii\\grid\\Column->renderDataCell(Object(backend\\models\\SystemLog), ''3'', 0)\n#7 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(424): yii\\grid\\GridView->renderTableRow(Object(backend\\models\\SystemLog), ''3'', 0)\n#8 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(295): yii\\grid\\GridView->renderTableBody()\n#9 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(149): yii\\grid\\GridView->renderItems()\n#10 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(264): yii\\widgets\\BaseListView->renderSection(''{items}'')\n#11 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(126): yii\\grid\\GridView->renderSection(''{items}'')\n#12 [internal function]: yii\\widgets\\BaseListView->yii\\widgets\\{closure}(Array)\n#13 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(129): preg_replace_callback(''/{\\\\w+}/'', Object(Closure), ''{summary}\\n{item...'')\n#14 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(239): yii\\widgets\\BaseListView->run()\n#15 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Widget.php(96): yii\\grid\\GridView->run()\n#16 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\views\\log\\index.php(49): yii\\base\\Widget::widget(Array)\n#17 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(325): require(''G:\\\\OpenServer\\\\d...'')\n#18 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(247): yii\\base\\View->renderPhpFile(''G:\\\\OpenServer\\\\d...'', Array)\n#19 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(149): yii\\base\\View->renderFile(''G:\\\\OpenServer\\\\d...'', Array, Object(backend\\controllers\\LogController))\n#20 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(367): yii\\base\\View->render(''index'', Array, Object(backend\\controllers\\LogController))\n#21 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\controllers\\LogController.php(51): yii\\base\\Controller->render(''index'', Array)\n#22 [internal function]: backend\\controllers\\LogController->actionIndex()\n#23 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#24 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#25 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Module.php(455): yii\\base\\Controller->runAction(''index'', Array)\n#26 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\web\\Application.php(83): yii\\base\\Module->runAction(''log/index'', Array)\n#27 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#28 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\web\\index.php(23): yii\\base\\Application->run()\n#29 {main}'),
(5, 1, 'yii\\base\\ErrorException:1', 1426273185.3382, '[backend][/system-information/index]', 'exception ''yii\\base\\ErrorException'' with message ''Class ''COM'' not found'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\trntv\\probe\\src\\provider\\WindowsProvider.php:276\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(6, 1, 'yii\\base\\InvalidParamException', 1426273689.7158, '[backend][/log/view?id=3]', 'exception ''yii\\base\\InvalidParamException'' with message ''Failed to parse ''1426272052.2609'' as a UNIX timestamp.'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php:625\nStack trace:\n#0 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(543): yii\\i18n\\Formatter->normalizeDatetimeValue(1426272052.2609)\n#1 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(506): yii\\i18n\\Formatter->formatDateTimeValue(1426272052.2609, ''medium'', ''datetime'')\n#2 [internal function]: yii\\i18n\\Formatter->asDatetime(1426272052.2609)\n#3 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(265): call_user_func_array(Array, Array)\n#4 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\DetailView.php(153): yii\\i18n\\Formatter->format(1426272052.2609, ''datetime'')\n#5 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\DetailView.php(135): yii\\widgets\\DetailView->renderAttribute(Array, 3)\n#6 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Widget.php(96): yii\\widgets\\DetailView->run()\n#7 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\views\\log\\view.php(33): yii\\base\\Widget::widget(Array)\n#8 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(325): require(''G:\\\\OpenServer\\\\d...'')\n#9 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(247): yii\\base\\View->renderPhpFile(''G:\\\\OpenServer\\\\d...'', Array)\n#10 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(149): yii\\base\\View->renderFile(''G:\\\\OpenServer\\\\d...'', Array, Object(backend\\controllers\\LogController))\n#11 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(367): yii\\base\\View->render(''view'', Array, Object(backend\\controllers\\LogController))\n#12 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\controllers\\LogController.php(63): yii\\base\\Controller->render(''view'', Array)\n#13 [internal function]: backend\\controllers\\LogController->actionView(''3'')\n#14 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#15 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#16 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Module.php(455): yii\\base\\Controller->runAction(''view'', Array)\n#17 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\web\\Application.php(83): yii\\base\\Module->runAction(''log/view'', Array)\n#18 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#19 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\web\\index.php(23): yii\\base\\Application->run()\n#20 {main}\n\nNext exception ''yii\\base\\InvalidParamException'' with message ''''1426272052.2609'' is not a valid date time value: Failed to parse ''1426272052.2609'' as a UNIX timestamp.\nArray\n(\n    [warning_count] => 0\n    [warnings] => Array\n        (\n        )\n\n    [error_count] => 1\n    [errors] => Array\n        (\n            [10] => Trailing data\n        )\n\n)\n'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php:642\nStack trace:\n#0 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(543): yii\\i18n\\Formatter->normalizeDatetimeValue(1426272052.2609)\n#1 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(506): yii\\i18n\\Formatter->formatDateTimeValue(1426272052.2609, ''medium'', ''datetime'')\n#2 [internal function]: yii\\i18n\\Formatter->asDatetime(1426272052.2609)\n#3 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(265): call_user_func_array(Array, Array)\n#4 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\DetailView.php(153): yii\\i18n\\Formatter->format(1426272052.2609, ''datetime'')\n#5 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\DetailView.php(135): yii\\widgets\\DetailView->renderAttribute(Array, 3)\n#6 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Widget.php(96): yii\\widgets\\DetailView->run()\n#7 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\views\\log\\view.php(33): yii\\base\\Widget::widget(Array)\n#8 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(325): require(''G:\\\\OpenServer\\\\d...'')\n#9 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(247): yii\\base\\View->renderPhpFile(''G:\\\\OpenServer\\\\d...'', Array)\n#10 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(149): yii\\base\\View->renderFile(''G:\\\\OpenServer\\\\d...'', Array, Object(backend\\controllers\\LogController))\n#11 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(367): yii\\base\\View->render(''view'', Array, Object(backend\\controllers\\LogController))\n#12 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\controllers\\LogController.php(63): yii\\base\\Controller->render(''view'', Array)\n#13 [internal function]: backend\\controllers\\LogController->actionView(''3'')\n#14 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#15 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#16 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Module.php(455): yii\\base\\Controller->runAction(''view'', Array)\n#17 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\web\\Application.php(83): yii\\base\\Module->runAction(''log/view'', Array)\n#18 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#19 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\web\\index.php(23): yii\\base\\Application->run()\n#20 {main}'),
(7, 1, 'yii\\base\\ErrorException:1', 1426275183.6719, '[backend][/system-information/index]', 'exception ''yii\\base\\ErrorException'' with message ''Class ''COM'' not found'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\trntv\\probe\\src\\provider\\WindowsProvider.php:276\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(8, 1, 'yii\\base\\ErrorException:1', 1426275228.1214, '[backend][/system-information/index]', 'exception ''yii\\base\\ErrorException'' with message ''Class ''COM'' not found'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\trntv\\probe\\src\\provider\\WindowsProvider.php:276\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(9, 1, 'yii\\base\\InvalidParamException', 1426275474.2778, '[backend][/log/index]', 'exception ''yii\\base\\InvalidParamException'' with message ''Failed to parse ''1426275228.1214'' as a UNIX timestamp.'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php:625\nStack trace:\n#0 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(543): yii\\i18n\\Formatter->normalizeDatetimeValue(1426275228.1214)\n#1 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(506): yii\\i18n\\Formatter->formatDateTimeValue(1426275228.1214, ''medium'', ''datetime'')\n#2 [internal function]: yii\\i18n\\Formatter->asDatetime(1426275228.1214)\n#3 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(265): call_user_func_array(Array, Array)\n#4 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\DataColumn.php(204): yii\\i18n\\Formatter->format(1426275228.1214, ''datetime'')\n#5 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\Column.php(108): yii\\grid\\DataColumn->renderDataCellContent(Object(backend\\models\\SystemLog), ''8'', 0)\n#6 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(455): yii\\grid\\Column->renderDataCell(Object(backend\\models\\SystemLog), ''8'', 0)\n#7 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(424): yii\\grid\\GridView->renderTableRow(Object(backend\\models\\SystemLog), ''8'', 0)\n#8 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(295): yii\\grid\\GridView->renderTableBody()\n#9 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(149): yii\\grid\\GridView->renderItems()\n#10 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(264): yii\\widgets\\BaseListView->renderSection(''{items}'')\n#11 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(126): yii\\grid\\GridView->renderSection(''{items}'')\n#12 [internal function]: yii\\widgets\\BaseListView->yii\\widgets\\{closure}(Array)\n#13 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(129): preg_replace_callback(''/{\\\\w+}/'', Object(Closure), ''{summary}\\n{item...'')\n#14 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(239): yii\\widgets\\BaseListView->run()\n#15 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Widget.php(96): yii\\grid\\GridView->run()\n#16 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\views\\log\\index.php(49): yii\\base\\Widget::widget(Array)\n#17 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(325): require(''G:\\\\OpenServer\\\\d...'')\n#18 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(247): yii\\base\\View->renderPhpFile(''G:\\\\OpenServer\\\\d...'', Array)\n#19 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(149): yii\\base\\View->renderFile(''G:\\\\OpenServer\\\\d...'', Array, Object(backend\\controllers\\LogController))\n#20 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(367): yii\\base\\View->render(''index'', Array, Object(backend\\controllers\\LogController))\n#21 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\controllers\\LogController.php(51): yii\\base\\Controller->render(''index'', Array)\n#22 [internal function]: backend\\controllers\\LogController->actionIndex()\n#23 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#24 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#25 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Module.php(455): yii\\base\\Controller->runAction(''index'', Array)\n#26 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\web\\Application.php(83): yii\\base\\Module->runAction(''log/index'', Array)\n#27 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#28 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\web\\index.php(23): yii\\base\\Application->run()\n#29 {main}\n\nNext exception ''yii\\base\\InvalidParamException'' with message ''''1426275228.1214'' is not a valid date time value: Failed to parse ''1426275228.1214'' as a UNIX timestamp.\nArray\n(\n    [warning_count] => 0\n    [warnings] => Array\n        (\n        )\n\n    [error_count] => 1\n    [errors] => Array\n        (\n            [10] => Trailing data\n        )\n\n)\n'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php:642\nStack trace:\n#0 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(543): yii\\i18n\\Formatter->normalizeDatetimeValue(1426275228.1214)\n#1 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(506): yii\\i18n\\Formatter->formatDateTimeValue(1426275228.1214, ''medium'', ''datetime'')\n#2 [internal function]: yii\\i18n\\Formatter->asDatetime(1426275228.1214)\n#3 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(265): call_user_func_array(Array, Array)\n#4 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\DataColumn.php(204): yii\\i18n\\Formatter->format(1426275228.1214, ''datetime'')\n#5 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\Column.php(108): yii\\grid\\DataColumn->renderDataCellContent(Object(backend\\models\\SystemLog), ''8'', 0)\n#6 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(455): yii\\grid\\Column->renderDataCell(Object(backend\\models\\SystemLog), ''8'', 0)\n#7 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(424): yii\\grid\\GridView->renderTableRow(Object(backend\\models\\SystemLog), ''8'', 0)\n#8 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(295): yii\\grid\\GridView->renderTableBody()\n#9 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(149): yii\\grid\\GridView->renderItems()\n#10 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(264): yii\\widgets\\BaseListView->renderSection(''{items}'')\n#11 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(126): yii\\grid\\GridView->renderSection(''{items}'')\n#12 [internal function]: yii\\widgets\\BaseListView->yii\\widgets\\{closure}(Array)\n#13 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(129): preg_replace_callback(''/{\\\\w+}/'', Object(Closure), ''{summary}\\n{item...'')\n#14 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(239): yii\\widgets\\BaseListView->run()\n#15 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Widget.php(96): yii\\grid\\GridView->run()\n#16 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\views\\log\\index.php(49): yii\\base\\Widget::widget(Array)\n#17 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(325): require(''G:\\\\OpenServer\\\\d...'')\n#18 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(247): yii\\base\\View->renderPhpFile(''G:\\\\OpenServer\\\\d...'', Array)\n#19 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(149): yii\\base\\View->renderFile(''G:\\\\OpenServer\\\\d...'', Array, Object(backend\\controllers\\LogController))\n#20 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(367): yii\\base\\View->render(''index'', Array, Object(backend\\controllers\\LogController))\n#21 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\controllers\\LogController.php(51): yii\\base\\Controller->render(''index'', Array)\n#22 [internal function]: backend\\controllers\\LogController->actionIndex()\n#23 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#24 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#25 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Module.php(455): yii\\base\\Controller->runAction(''index'', Array)\n#26 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\web\\Application.php(83): yii\\base\\Module->runAction(''log/index'', Array)\n#27 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#28 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\web\\index.php(23): yii\\base\\Application->run()\n#29 {main}'),
(10, 1, 'yii\\base\\InvalidParamException', 1426275998.8353, '[backend][/log/index]', 'exception ''yii\\base\\InvalidParamException'' with message ''Failed to parse ''1426275474.2778'' as a UNIX timestamp.'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php:625\nStack trace:\n#0 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(543): yii\\i18n\\Formatter->normalizeDatetimeValue(1426275474.2778)\n#1 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(506): yii\\i18n\\Formatter->formatDateTimeValue(1426275474.2778, ''medium'', ''datetime'')\n#2 [internal function]: yii\\i18n\\Formatter->asDatetime(1426275474.2778)\n#3 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(265): call_user_func_array(Array, Array)\n#4 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\DataColumn.php(204): yii\\i18n\\Formatter->format(1426275474.2778, ''datetime'')\n#5 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\Column.php(108): yii\\grid\\DataColumn->renderDataCellContent(Object(backend\\models\\SystemLog), ''9'', 0)\n#6 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(455): yii\\grid\\Column->renderDataCell(Object(backend\\models\\SystemLog), ''9'', 0)\n#7 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(424): yii\\grid\\GridView->renderTableRow(Object(backend\\models\\SystemLog), ''9'', 0)\n#8 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(295): yii\\grid\\GridView->renderTableBody()\n#9 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(149): yii\\grid\\GridView->renderItems()\n#10 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(264): yii\\widgets\\BaseListView->renderSection(''{items}'')\n#11 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(126): yii\\grid\\GridView->renderSection(''{items}'')\n#12 [internal function]: yii\\widgets\\BaseListView->yii\\widgets\\{closure}(Array)\n#13 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(129): preg_replace_callback(''/{\\\\w+}/'', Object(Closure), ''{summary}\\n{item...'')\n#14 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(239): yii\\widgets\\BaseListView->run()\n#15 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Widget.php(96): yii\\grid\\GridView->run()\n#16 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\views\\log\\index.php(49): yii\\base\\Widget::widget(Array)\n#17 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(325): require(''G:\\\\OpenServer\\\\d...'')\n#18 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(247): yii\\base\\View->renderPhpFile(''G:\\\\OpenServer\\\\d...'', Array)\n#19 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(149): yii\\base\\View->renderFile(''G:\\\\OpenServer\\\\d...'', Array, Object(backend\\controllers\\LogController))\n#20 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(367): yii\\base\\View->render(''index'', Array, Object(backend\\controllers\\LogController))\n#21 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\controllers\\LogController.php(51): yii\\base\\Controller->render(''index'', Array)\n#22 [internal function]: backend\\controllers\\LogController->actionIndex()\n#23 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#24 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#25 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Module.php(455): yii\\base\\Controller->runAction(''index'', Array)\n#26 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\web\\Application.php(83): yii\\base\\Module->runAction(''log/index'', Array)\n#27 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#28 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\web\\index.php(23): yii\\base\\Application->run()\n#29 {main}\n\nNext exception ''yii\\base\\InvalidParamException'' with message ''''1426275474.2778'' is not a valid date time value: Failed to parse ''1426275474.2778'' as a UNIX timestamp.\nArray\n(\n    [warning_count] => 0\n    [warnings] => Array\n        (\n        )\n\n    [error_count] => 1\n    [errors] => Array\n        (\n            [10] => Trailing data\n        )\n\n)\n'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php:642\nStack trace:\n#0 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(543): yii\\i18n\\Formatter->normalizeDatetimeValue(1426275474.2778)\n#1 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(506): yii\\i18n\\Formatter->formatDateTimeValue(1426275474.2778, ''medium'', ''datetime'')\n#2 [internal function]: yii\\i18n\\Formatter->asDatetime(1426275474.2778)\n#3 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(265): call_user_func_array(Array, Array)\n#4 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\DataColumn.php(204): yii\\i18n\\Formatter->format(1426275474.2778, ''datetime'')\n#5 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\Column.php(108): yii\\grid\\DataColumn->renderDataCellContent(Object(backend\\models\\SystemLog), ''9'', 0)\n#6 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(455): yii\\grid\\Column->renderDataCell(Object(backend\\models\\SystemLog), ''9'', 0)\n#7 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(424): yii\\grid\\GridView->renderTableRow(Object(backend\\models\\SystemLog), ''9'', 0)\n#8 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(295): yii\\grid\\GridView->renderTableBody()\n#9 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(149): yii\\grid\\GridView->renderItems()\n#10 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(264): yii\\widgets\\BaseListView->renderSection(''{items}'')\n#11 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(126): yii\\grid\\GridView->renderSection(''{items}'')\n#12 [internal function]: yii\\widgets\\BaseListView->yii\\widgets\\{closure}(Array)\n#13 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(129): preg_replace_callback(''/{\\\\w+}/'', Object(Closure), ''{summary}\\n{item...'')\n#14 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(239): yii\\widgets\\BaseListView->run()\n#15 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Widget.php(96): yii\\grid\\GridView->run()\n#16 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\views\\log\\index.php(49): yii\\base\\Widget::widget(Array)\n#17 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(325): require(''G:\\\\OpenServer\\\\d...'')\n#18 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(247): yii\\base\\View->renderPhpFile(''G:\\\\OpenServer\\\\d...'', Array)\n#19 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(149): yii\\base\\View->renderFile(''G:\\\\OpenServer\\\\d...'', Array, Object(backend\\controllers\\LogController))\n#20 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(367): yii\\base\\View->render(''index'', Array, Object(backend\\controllers\\LogController))\n#21 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\controllers\\LogController.php(51): yii\\base\\Controller->render(''index'', Array)\n#22 [internal function]: backend\\controllers\\LogController->actionIndex()\n#23 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#24 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#25 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Module.php(455): yii\\base\\Controller->runAction(''index'', Array)\n#26 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\web\\Application.php(83): yii\\base\\Module->runAction(''log/index'', Array)\n#27 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#28 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\web\\index.php(23): yii\\base\\Application->run()\n#29 {main}'),
(11, 1, 'yii\\base\\ErrorException:1', 1426305265.186, '[backend][/system-information/index]', 'exception ''yii\\base\\ErrorException'' with message ''Class ''COM'' not found'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\trntv\\probe\\src\\provider\\WindowsProvider.php:276\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}');
INSERT INTO `system_log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(12, 1, 'yii\\base\\InvalidParamException', 1426305321.0322, '[backend][/log/index]', 'exception ''yii\\base\\InvalidParamException'' with message ''Failed to parse ''1426305265.186'' as a UNIX timestamp.'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php:625\nStack trace:\n#0 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(543): yii\\i18n\\Formatter->normalizeDatetimeValue(1426305265.186)\n#1 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(506): yii\\i18n\\Formatter->formatDateTimeValue(1426305265.186, ''medium'', ''datetime'')\n#2 [internal function]: yii\\i18n\\Formatter->asDatetime(1426305265.186)\n#3 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(265): call_user_func_array(Array, Array)\n#4 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\DataColumn.php(204): yii\\i18n\\Formatter->format(1426305265.186, ''datetime'')\n#5 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\Column.php(108): yii\\grid\\DataColumn->renderDataCellContent(Object(backend\\models\\SystemLog), ''11'', 0)\n#6 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(455): yii\\grid\\Column->renderDataCell(Object(backend\\models\\SystemLog), ''11'', 0)\n#7 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(424): yii\\grid\\GridView->renderTableRow(Object(backend\\models\\SystemLog), ''11'', 0)\n#8 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(295): yii\\grid\\GridView->renderTableBody()\n#9 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(149): yii\\grid\\GridView->renderItems()\n#10 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(264): yii\\widgets\\BaseListView->renderSection(''{items}'')\n#11 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(126): yii\\grid\\GridView->renderSection(''{items}'')\n#12 [internal function]: yii\\widgets\\BaseListView->yii\\widgets\\{closure}(Array)\n#13 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(129): preg_replace_callback(''/{\\\\w+}/'', Object(Closure), ''{summary}\\n{item...'')\n#14 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(239): yii\\widgets\\BaseListView->run()\n#15 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Widget.php(96): yii\\grid\\GridView->run()\n#16 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\views\\log\\index.php(49): yii\\base\\Widget::widget(Array)\n#17 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(325): require(''G:\\\\OpenServer\\\\d...'')\n#18 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(247): yii\\base\\View->renderPhpFile(''G:\\\\OpenServer\\\\d...'', Array)\n#19 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(149): yii\\base\\View->renderFile(''G:\\\\OpenServer\\\\d...'', Array, Object(backend\\controllers\\LogController))\n#20 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(367): yii\\base\\View->render(''index'', Array, Object(backend\\controllers\\LogController))\n#21 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\controllers\\LogController.php(51): yii\\base\\Controller->render(''index'', Array)\n#22 [internal function]: backend\\controllers\\LogController->actionIndex()\n#23 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#24 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#25 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Module.php(455): yii\\base\\Controller->runAction(''index'', Array)\n#26 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\web\\Application.php(83): yii\\base\\Module->runAction(''log/index'', Array)\n#27 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#28 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\web\\index.php(23): yii\\base\\Application->run()\n#29 {main}\n\nNext exception ''yii\\base\\InvalidParamException'' with message ''''1426305265.186'' is not a valid date time value: Failed to parse ''1426305265.186'' as a UNIX timestamp.\nArray\n(\n    [warning_count] => 0\n    [warnings] => Array\n        (\n        )\n\n    [error_count] => 1\n    [errors] => Array\n        (\n            [10] => Trailing data\n        )\n\n)\n'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php:642\nStack trace:\n#0 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(543): yii\\i18n\\Formatter->normalizeDatetimeValue(1426305265.186)\n#1 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(506): yii\\i18n\\Formatter->formatDateTimeValue(1426305265.186, ''medium'', ''datetime'')\n#2 [internal function]: yii\\i18n\\Formatter->asDatetime(1426305265.186)\n#3 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(265): call_user_func_array(Array, Array)\n#4 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\DataColumn.php(204): yii\\i18n\\Formatter->format(1426305265.186, ''datetime'')\n#5 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\Column.php(108): yii\\grid\\DataColumn->renderDataCellContent(Object(backend\\models\\SystemLog), ''11'', 0)\n#6 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(455): yii\\grid\\Column->renderDataCell(Object(backend\\models\\SystemLog), ''11'', 0)\n#7 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(424): yii\\grid\\GridView->renderTableRow(Object(backend\\models\\SystemLog), ''11'', 0)\n#8 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(295): yii\\grid\\GridView->renderTableBody()\n#9 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(149): yii\\grid\\GridView->renderItems()\n#10 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(264): yii\\widgets\\BaseListView->renderSection(''{items}'')\n#11 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(126): yii\\grid\\GridView->renderSection(''{items}'')\n#12 [internal function]: yii\\widgets\\BaseListView->yii\\widgets\\{closure}(Array)\n#13 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(129): preg_replace_callback(''/{\\\\w+}/'', Object(Closure), ''{summary}\\n{item...'')\n#14 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(239): yii\\widgets\\BaseListView->run()\n#15 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Widget.php(96): yii\\grid\\GridView->run()\n#16 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\views\\log\\index.php(49): yii\\base\\Widget::widget(Array)\n#17 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(325): require(''G:\\\\OpenServer\\\\d...'')\n#18 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(247): yii\\base\\View->renderPhpFile(''G:\\\\OpenServer\\\\d...'', Array)\n#19 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(149): yii\\base\\View->renderFile(''G:\\\\OpenServer\\\\d...'', Array, Object(backend\\controllers\\LogController))\n#20 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(367): yii\\base\\View->render(''index'', Array, Object(backend\\controllers\\LogController))\n#21 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\controllers\\LogController.php(51): yii\\base\\Controller->render(''index'', Array)\n#22 [internal function]: backend\\controllers\\LogController->actionIndex()\n#23 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#24 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#25 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Module.php(455): yii\\base\\Controller->runAction(''index'', Array)\n#26 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\web\\Application.php(83): yii\\base\\Module->runAction(''log/index'', Array)\n#27 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#28 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\web\\index.php(23): yii\\base\\Application->run()\n#29 {main}'),
(13, 1, 'yii\\base\\InvalidParamException', 1426314951.01, '[backend][/log/index]', 'exception ''yii\\base\\InvalidParamException'' with message ''Failed to parse ''1426305321.0322'' as a UNIX timestamp.'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php:625\nStack trace:\n#0 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(543): yii\\i18n\\Formatter->normalizeDatetimeValue(1426305321.0322)\n#1 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(506): yii\\i18n\\Formatter->formatDateTimeValue(1426305321.0322, ''medium'', ''datetime'')\n#2 [internal function]: yii\\i18n\\Formatter->asDatetime(1426305321.0322)\n#3 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(265): call_user_func_array(Array, Array)\n#4 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\DataColumn.php(204): yii\\i18n\\Formatter->format(1426305321.0322, ''datetime'')\n#5 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\Column.php(108): yii\\grid\\DataColumn->renderDataCellContent(Object(backend\\models\\SystemLog), ''12'', 0)\n#6 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(455): yii\\grid\\Column->renderDataCell(Object(backend\\models\\SystemLog), ''12'', 0)\n#7 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(424): yii\\grid\\GridView->renderTableRow(Object(backend\\models\\SystemLog), ''12'', 0)\n#8 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(295): yii\\grid\\GridView->renderTableBody()\n#9 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(149): yii\\grid\\GridView->renderItems()\n#10 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(264): yii\\widgets\\BaseListView->renderSection(''{items}'')\n#11 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(126): yii\\grid\\GridView->renderSection(''{items}'')\n#12 [internal function]: yii\\widgets\\BaseListView->yii\\widgets\\{closure}(Array)\n#13 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(129): preg_replace_callback(''/{\\\\w+}/'', Object(Closure), ''{summary}\\n{item...'')\n#14 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(239): yii\\widgets\\BaseListView->run()\n#15 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Widget.php(96): yii\\grid\\GridView->run()\n#16 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\views\\log\\index.php(49): yii\\base\\Widget::widget(Array)\n#17 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(325): require(''G:\\\\OpenServer\\\\d...'')\n#18 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(247): yii\\base\\View->renderPhpFile(''G:\\\\OpenServer\\\\d...'', Array)\n#19 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(149): yii\\base\\View->renderFile(''G:\\\\OpenServer\\\\d...'', Array, Object(backend\\controllers\\LogController))\n#20 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(367): yii\\base\\View->render(''index'', Array, Object(backend\\controllers\\LogController))\n#21 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\controllers\\LogController.php(51): yii\\base\\Controller->render(''index'', Array)\n#22 [internal function]: backend\\controllers\\LogController->actionIndex()\n#23 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#24 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#25 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Module.php(455): yii\\base\\Controller->runAction(''index'', Array)\n#26 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\web\\Application.php(83): yii\\base\\Module->runAction(''log/index'', Array)\n#27 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#28 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\web\\index.php(23): yii\\base\\Application->run()\n#29 {main}\n\nNext exception ''yii\\base\\InvalidParamException'' with message ''''1426305321.0322'' is not a valid date time value: Failed to parse ''1426305321.0322'' as a UNIX timestamp.\nArray\n(\n    [warning_count] => 0\n    [warnings] => Array\n        (\n        )\n\n    [error_count] => 1\n    [errors] => Array\n        (\n            [10] => Trailing data\n        )\n\n)\n'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php:642\nStack trace:\n#0 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(543): yii\\i18n\\Formatter->normalizeDatetimeValue(1426305321.0322)\n#1 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(506): yii\\i18n\\Formatter->formatDateTimeValue(1426305321.0322, ''medium'', ''datetime'')\n#2 [internal function]: yii\\i18n\\Formatter->asDatetime(1426305321.0322)\n#3 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(265): call_user_func_array(Array, Array)\n#4 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\DataColumn.php(204): yii\\i18n\\Formatter->format(1426305321.0322, ''datetime'')\n#5 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\Column.php(108): yii\\grid\\DataColumn->renderDataCellContent(Object(backend\\models\\SystemLog), ''12'', 0)\n#6 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(455): yii\\grid\\Column->renderDataCell(Object(backend\\models\\SystemLog), ''12'', 0)\n#7 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(424): yii\\grid\\GridView->renderTableRow(Object(backend\\models\\SystemLog), ''12'', 0)\n#8 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(295): yii\\grid\\GridView->renderTableBody()\n#9 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(149): yii\\grid\\GridView->renderItems()\n#10 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(264): yii\\widgets\\BaseListView->renderSection(''{items}'')\n#11 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(126): yii\\grid\\GridView->renderSection(''{items}'')\n#12 [internal function]: yii\\widgets\\BaseListView->yii\\widgets\\{closure}(Array)\n#13 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(129): preg_replace_callback(''/{\\\\w+}/'', Object(Closure), ''{summary}\\n{item...'')\n#14 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(239): yii\\widgets\\BaseListView->run()\n#15 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Widget.php(96): yii\\grid\\GridView->run()\n#16 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\views\\log\\index.php(49): yii\\base\\Widget::widget(Array)\n#17 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(325): require(''G:\\\\OpenServer\\\\d...'')\n#18 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(247): yii\\base\\View->renderPhpFile(''G:\\\\OpenServer\\\\d...'', Array)\n#19 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(149): yii\\base\\View->renderFile(''G:\\\\OpenServer\\\\d...'', Array, Object(backend\\controllers\\LogController))\n#20 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(367): yii\\base\\View->render(''index'', Array, Object(backend\\controllers\\LogController))\n#21 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\controllers\\LogController.php(51): yii\\base\\Controller->render(''index'', Array)\n#22 [internal function]: backend\\controllers\\LogController->actionIndex()\n#23 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#24 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#25 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Module.php(455): yii\\base\\Controller->runAction(''index'', Array)\n#26 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\web\\Application.php(83): yii\\base\\Module->runAction(''log/index'', Array)\n#27 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#28 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\web\\index.php(23): yii\\base\\Application->run()\n#29 {main}'),
(14, 1, 'yii\\base\\InvalidParamException', 1426314976.8047, '[backend][/log/index]', 'exception ''yii\\base\\InvalidParamException'' with message ''Failed to parse ''1426314951.01'' as a UNIX timestamp.'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php:625\nStack trace:\n#0 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(543): yii\\i18n\\Formatter->normalizeDatetimeValue(1426314951.01)\n#1 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(506): yii\\i18n\\Formatter->formatDateTimeValue(1426314951.01, ''medium'', ''datetime'')\n#2 [internal function]: yii\\i18n\\Formatter->asDatetime(1426314951.01)\n#3 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(265): call_user_func_array(Array, Array)\n#4 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\DataColumn.php(204): yii\\i18n\\Formatter->format(1426314951.01, ''datetime'')\n#5 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\Column.php(108): yii\\grid\\DataColumn->renderDataCellContent(Object(backend\\models\\SystemLog), ''13'', 0)\n#6 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(455): yii\\grid\\Column->renderDataCell(Object(backend\\models\\SystemLog), ''13'', 0)\n#7 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(424): yii\\grid\\GridView->renderTableRow(Object(backend\\models\\SystemLog), ''13'', 0)\n#8 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(295): yii\\grid\\GridView->renderTableBody()\n#9 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(149): yii\\grid\\GridView->renderItems()\n#10 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(264): yii\\widgets\\BaseListView->renderSection(''{items}'')\n#11 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(126): yii\\grid\\GridView->renderSection(''{items}'')\n#12 [internal function]: yii\\widgets\\BaseListView->yii\\widgets\\{closure}(Array)\n#13 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(129): preg_replace_callback(''/{\\\\w+}/'', Object(Closure), ''{summary}\\n{item...'')\n#14 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(239): yii\\widgets\\BaseListView->run()\n#15 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Widget.php(96): yii\\grid\\GridView->run()\n#16 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\views\\log\\index.php(49): yii\\base\\Widget::widget(Array)\n#17 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(325): require(''G:\\\\OpenServer\\\\d...'')\n#18 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(247): yii\\base\\View->renderPhpFile(''G:\\\\OpenServer\\\\d...'', Array)\n#19 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(149): yii\\base\\View->renderFile(''G:\\\\OpenServer\\\\d...'', Array, Object(backend\\controllers\\LogController))\n#20 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(367): yii\\base\\View->render(''index'', Array, Object(backend\\controllers\\LogController))\n#21 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\controllers\\LogController.php(51): yii\\base\\Controller->render(''index'', Array)\n#22 [internal function]: backend\\controllers\\LogController->actionIndex()\n#23 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#24 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#25 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Module.php(455): yii\\base\\Controller->runAction(''index'', Array)\n#26 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\web\\Application.php(83): yii\\base\\Module->runAction(''log/index'', Array)\n#27 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#28 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\web\\index.php(23): yii\\base\\Application->run()\n#29 {main}\n\nNext exception ''yii\\base\\InvalidParamException'' with message ''''1426314951.01'' is not a valid date time value: Failed to parse ''1426314951.01'' as a UNIX timestamp.\nArray\n(\n    [warning_count] => 0\n    [warnings] => Array\n        (\n        )\n\n    [error_count] => 1\n    [errors] => Array\n        (\n            [10] => Trailing data\n        )\n\n)\n'' in G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php:642\nStack trace:\n#0 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(543): yii\\i18n\\Formatter->normalizeDatetimeValue(1426314951.01)\n#1 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(506): yii\\i18n\\Formatter->formatDateTimeValue(1426314951.01, ''medium'', ''datetime'')\n#2 [internal function]: yii\\i18n\\Formatter->asDatetime(1426314951.01)\n#3 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\i18n\\Formatter.php(265): call_user_func_array(Array, Array)\n#4 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\DataColumn.php(204): yii\\i18n\\Formatter->format(1426314951.01, ''datetime'')\n#5 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\Column.php(108): yii\\grid\\DataColumn->renderDataCellContent(Object(backend\\models\\SystemLog), ''13'', 0)\n#6 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(455): yii\\grid\\Column->renderDataCell(Object(backend\\models\\SystemLog), ''13'', 0)\n#7 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(424): yii\\grid\\GridView->renderTableRow(Object(backend\\models\\SystemLog), ''13'', 0)\n#8 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(295): yii\\grid\\GridView->renderTableBody()\n#9 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(149): yii\\grid\\GridView->renderItems()\n#10 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(264): yii\\widgets\\BaseListView->renderSection(''{items}'')\n#11 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(126): yii\\grid\\GridView->renderSection(''{items}'')\n#12 [internal function]: yii\\widgets\\BaseListView->yii\\widgets\\{closure}(Array)\n#13 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\widgets\\BaseListView.php(129): preg_replace_callback(''/{\\\\w+}/'', Object(Closure), ''{summary}\\n{item...'')\n#14 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\grid\\GridView.php(239): yii\\widgets\\BaseListView->run()\n#15 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Widget.php(96): yii\\grid\\GridView->run()\n#16 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\views\\log\\index.php(49): yii\\base\\Widget::widget(Array)\n#17 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(325): require(''G:\\\\OpenServer\\\\d...'')\n#18 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(247): yii\\base\\View->renderPhpFile(''G:\\\\OpenServer\\\\d...'', Array)\n#19 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\View.php(149): yii\\base\\View->renderFile(''G:\\\\OpenServer\\\\d...'', Array, Object(backend\\controllers\\LogController))\n#20 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(367): yii\\base\\View->render(''index'', Array, Object(backend\\controllers\\LogController))\n#21 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\controllers\\LogController.php(51): yii\\base\\Controller->render(''index'', Array)\n#22 [internal function]: backend\\controllers\\LogController->actionIndex()\n#23 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#24 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Controller.php(151): yii\\base\\InlineAction->runWithParams(Array)\n#25 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Module.php(455): yii\\base\\Controller->runAction(''index'', Array)\n#26 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\web\\Application.php(83): yii\\base\\Module->runAction(''log/index'', Array)\n#27 G:\\OpenServer\\domains\\yii2-starterkit\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#28 G:\\OpenServer\\domains\\yii2-starterkit\\backend\\web\\index.php(23): yii\\base\\Application->run()\n#29 {main}');

-- --------------------------------------------------------

--
-- Структура таблицы `system_migration`
--

CREATE TABLE IF NOT EXISTS `system_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `system_migration`
--

INSERT INTO `system_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1426271779),
('m140703_123000_user', 1426271786),
('m140703_123055_log', 1426271787),
('m140703_123104_page', 1426271787),
('m140703_123803_article', 1426271788),
('m140703_123813_rbac', 1426271788),
('m140709_173306_widget_menu', 1426271788),
('m140709_173333_widget_text', 1426271788),
('m140712_123329_widget_carousel', 1426271789),
('m140805_084737_file_storage_item', 1426271789),
('m140805_084745_key_storage_item', 1426271789),
('m140805_084812_system_event', 1426271789),
('m141012_101932_i18n_tables', 1426271790),
('m150205_004740_maintenance', 1426271790),
('m150211_233921_article_attachment', 1426271790);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oauth_client` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oauth_client_user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` smallint(6) NOT NULL DEFAULT '1',
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `oauth_client`, `oauth_client_user_id`, `email`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'webmaster', 'n8BAlRDE-0VIB6xUcahFOz270Ft7sixu', '$2y$13$vZlDFs3Qhzhqa1Hrdareie6gVsJpMhWidMlDlcrSU9YQXchGNxrfa', NULL, NULL, NULL, 'webmaster@example.com', 10, 1, 1426271784, 1426271784),
(2, 'manager', 'wYrWoRafeRDWogxghIReqjydAdhTc1jm', '$2y$13$Db8F30SfW4ZE1JYwb0zKveZtYYm2Lc9uBkvWgSYu4m1BgSQB818qm', NULL, NULL, NULL, 'manager@example.com', 5, 1, 1426271785, 1426276401),
(3, 'user', '5fbmmFi16xhKcMjUwbkbu_hx80gg48MC', '$2y$13$sq9KhK6s2Y62kEt2sc8t6.q41iX0jkkzyUJ.VWDXjmuDjzZ6.oxUW', NULL, NULL, NULL, 'user@example.com', 1, 1, 1426271786, 1426271786);

-- --------------------------------------------------------

--
-- Структура таблицы `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middlename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `user_profile`
--

INSERT INTO `user_profile` (`user_id`, `firstname`, `middlename`, `lastname`, `picture`, `locale`, `gender`) VALUES
(1, 'John', '', 'Doe', '', 'ru-RU', 1),
(2, NULL, NULL, NULL, NULL, 'en-US', NULL),
(3, NULL, NULL, NULL, NULL, 'en-US', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `widget_carousel`
--

CREATE TABLE IF NOT EXISTS `widget_carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `widget_carousel`
--

INSERT INTO `widget_carousel` (`id`, `key`, `status`) VALUES
(1, 'index', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `widget_carousel_item`
--

CREATE TABLE IF NOT EXISTS `widget_carousel_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carousel_id` int(11) NOT NULL,
  `path` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_carousel_id` (`carousel_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `widget_carousel_item`
--

INSERT INTO `widget_carousel_item` (`id`, `carousel_id`, `path`, `url`, `caption`, `status`, `order`, `created_at`, `updated_at`) VALUES
(2, 1, 'http://storage.yii2-starterkit/1/GRwLwTUKUWRgFOR_8ZQycOaRn_t7r7UX.jpg', '/', '', 1, 0, 1426314388, 1426315137);

-- --------------------------------------------------------

--
-- Структура таблицы `widget_menu`
--

CREATE TABLE IF NOT EXISTS `widget_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `items` text COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `widget_menu`
--

INSERT INTO `widget_menu` (`id`, `key`, `title`, `items`, `status`) VALUES
(1, 'frontend-index', 'Frontend index menu', '[\n    {\n        "label": "Get started with Yii2",\n        "url": "http://www.yiiframework.com",\n        "options": {\n            "tag": "span"\n        },\n        "template": "<a href=\\"{url}\\" class=\\"btn btn-lg btn-success\\">{label}</a>"\n    },\n    {\n        "label": "Yii2 Starter Kit on GitHub",\n        "url": "https://github.com/trntv/yii2-starter-kit",\n        "options": {\n            "tag": "span"\n        },\n        "template": "<a href=\\"{url}\\" class=\\"btn btn-lg btn-primary\\">{label}</a>"\n    },\n    {\n        "label": "Find a bug?",\n        "url": "https://github.com/trntv/yii2-starter-kit/issues",\n        "options": {\n            "tag": "span"\n        },\n        "template": "<a href=\\"{url}\\" class=\\"btn btn-lg btn-danger\\">{label}</a>"\n    }\n]', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `widget_text`
--

CREATE TABLE IF NOT EXISTS `widget_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_widget_text_key` (`key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `widget_text`
--

INSERT INTO `widget_text` (`id`, `key`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1, 'backend_welcome', 'Welcome to backend', '<p>Welcome to Yii2 Starter Kit Dashboard</p>', 1, 1426271788, 1426271788);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_article_author` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `fk_article_category` FOREIGN KEY (`category_id`) REFERENCES `article_category` (`id`),
  ADD CONSTRAINT `fk_article_updater` FOREIGN KEY (`updater_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `article_attachment`
--
ALTER TABLE `article_attachment`
  ADD CONSTRAINT `fk_article_attachment_article` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `article_category`
--
ALTER TABLE `article_category`
  ADD CONSTRAINT `fk_article_category_section` FOREIGN KEY (`parent_id`) REFERENCES `article_category` (`id`);

--
-- Ограничения внешнего ключа таблицы `i18n_message`
--
ALTER TABLE `i18n_message`
  ADD CONSTRAINT `fk_i18n_message_source_message` FOREIGN KEY (`id`) REFERENCES `i18n_source_message` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rbac_auth_assignment`
--
ALTER TABLE `rbac_auth_assignment`
  ADD CONSTRAINT `rbac_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `rbac_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rbac_auth_item`
--
ALTER TABLE `rbac_auth_item`
  ADD CONSTRAINT `rbac_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `rbac_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rbac_auth_item_child`
--
ALTER TABLE `rbac_auth_item_child`
  ADD CONSTRAINT `rbac_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `rbac_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rbac_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `rbac_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `widget_carousel_item`
--
ALTER TABLE `widget_carousel_item`
  ADD CONSTRAINT `fk_item_carousel` FOREIGN KEY (`carousel_id`) REFERENCES `widget_carousel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
