<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'nutrifit' );

/** Database username */
define( 'DB_USER', 'dev' );

/** Database password */
define( 'DB_PASSWORD', 'sebas123qwe,.' );

/** Database hostname */
define( 'DB_HOST', 'localhost:3306' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '_ P`iNB#+)/(L_L{Vs.45tK.^bqt~M;#L| ZL!E{`IJ7Y^9`UN&~xlE4ty`K|Ma?');
define('SECURE_AUTH_KEY',  'V->>#A=ddKL;jaq~JhtS8+%_!Nyb7-D3Q>nNUqk=0Jt_:x)c/8Z7r~7Z?7S6Mqex');
define('LOGGED_IN_KEY',    'P@-`&`*OQndl[81_z31aUOWA?jxeNn;>|*qug3x>?%5VXcg+U2G5#]>k?g|itCN+');
define('NONCE_KEY',        '-!ZCA+1- WYq`ZU8 spL_oSf _gke#n^[kIR_gfBZ0.<=TkA3{Fhbu+BpEP%+@3x');
define('AUTH_SALT',        '/nFbl<tS4PgPB<oz+#{-)~p@6k-0I:2)gD[S}zJtD(2nB:43~5)<XRzOC{J]U|-R');
define('SECURE_AUTH_SALT', '*35}RD6l~a!=,xBw8Ok}{3}O4)Crt~@E2V9CS{R+Y|IZ!R6w_+zj+6?g8+PQXg2>');
define('LOGGED_IN_SALT',   'NMAZK/e6^=MYT$HLoI]=diz`;9<i9_f77XnNhU5&lDbIpQY6`B,w=he9J9/R4HF4');
define('NONCE_SALT',       'mE&6TRUf.nR|kPc]OL+!),cw(YM+<}.ko(dx`! Y:zK5>$#,N~po=nUDZt#JuWvE');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
