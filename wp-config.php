<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'wp_inos' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'root' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', '' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '3ViE v^LN+Uk!,~1Ta9]#pWY%It;JD!P!JBT_b+v-d|J#ET_o$Joey1*(}~GVw-C' );
define( 'SECURE_AUTH_KEY',  'm;hCRIISH4X^-@a&u5Kp1#P0cre9(v6gr;Q}dF9|@d|P7Kmf2nQp5i1BV$gfGrxH' );
define( 'LOGGED_IN_KEY',    '`eQ!Y>aS(Iq`m80ds[9HH>1rhw2Atv!]FA]~qrv_t%oY~Y]HDr:ovY+t0Q)GLeog' );
define( 'NONCE_KEY',        'R|0lpa(N8%HIs6u`kb#R gNc*1%>A 1>C.k,Q5.PXP.sn$:rRiVbTDM(*$u3}Wm^' );
define( 'AUTH_SALT',        'vp@Og<ErZ,zZk7f4`s=W3@@&K}Eq|0Z%lF$km?NRlvd[K~dfK,;K?0PkoV|FHl@:' );
define( 'SECURE_AUTH_SALT', '!;O3He5?u2jq2.p9ouI9&@.XF:EuDj}{a(oxD_gNko=PYPSJbd9@[BPWLj^w1Dg9' );
define( 'LOGGED_IN_SALT',   'WFc?H7}hQ0IC2*Vwn=d:y<Up@]=!Ku OFG4c#w%^FK4UCO3nBo[L;{G]=PH%q9/#' );
define( 'NONCE_SALT',       '_[yN|| aR0KsKW&N!A]/9o ($]1b%b$gV#Qm130Za(O~^>RT #[J#n9iwK#-KDpK' );

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
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once( ABSPATH . 'wp-settings.php' );
