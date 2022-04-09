<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать файл в "wp-config.php"
 * и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры базы данных: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'topagrobel' );

/** Имя пользователя базы данных */
define( 'DB_USER', 'root' );

/** Пароль к базе данных */
define( 'DB_PASSWORD', '' );

/** Имя сервера базы данных */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу. Можно сгенерировать их с помощью
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}.
 *
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными.
 * Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '6Qm-oR#T0n]v#r`%vjL)3^&ta6LHz|BK6]n/I=?Y_h&KLY-71A)Q|;F<{tfx*1{6' );
define( 'SECURE_AUTH_KEY',  '**70&UvmidW}ly%xVr^Vj-!_|d|c!A.4J<<;r?ZP*>oNB6T?+rih7pSweJ zj6{o' );
define( 'LOGGED_IN_KEY',    '~I%@`Lo^f%K2zC p4x%A|fR>Sdc7L /UJRDjQxfYX=_#=#s=CCK[Ii;x9y4Khx/C' );
define( 'NONCE_KEY',        '@,D4EvB-.0I*,L)9P7a)y]#zhlWTA00Pfd/%wwD_(%Z!F3fy#{Zg,0sX7b*BEXQl' );
define( 'AUTH_SALT',        'OX*pn4cCI;!ECqX5k7N[)*WNa[1JLNK#^Y0?Mk{9|l[m$ 7/RVmTN@>.zfcf}l^c' );
define( 'SECURE_AUTH_SALT', 'E&hsq_h0j9/ap`|:!.t8K LQQl6rIkRvQaN[&=)I])AGC9YYOG{a~_x5)ReUf_h7' );
define( 'LOGGED_IN_SALT',   '1rMNN5/xuf5G#:J;_(9Y-.W:u-xCXnjc$).nCSOJ-R(82msQ/:~M>Fpw-0}+eI|b' );
define( 'NONCE_SALT',       'IQ]ITLs&1Q3&Gv /X6Ag``^]&2px@siY}JJO1Hs4}dk*EqHf*HT`)=lL_zo .|sW' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Произвольные значения добавляйте между этой строкой и надписью "дальше не редактируем". */



/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
