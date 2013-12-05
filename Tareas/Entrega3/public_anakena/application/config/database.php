<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------
| DATABASE CONNECTIVITY SETTINGS
| -------------------------------------------------------------------
| This file will contain the settings needed to access your database.
|
| For complete instructions please consult the 'Database Connection'
| page of the User Guide.
|
| -------------------------------------------------------------------
| EXPLANATION OF VARIABLES
| -------------------------------------------------------------------
|
|	['hostname'] The hostname of your database server.
|	['username'] The username used to connect to the database
|	['password'] The password used to connect to the database
|	['database'] The name of the database you want to connect to
|	['dbdriver'] The database type. ie: mysql.  Currently supported:
				 mysql, mysqli, postgre, odbc, mssql, sqlite, oci8
|	['dbprefix'] You can add an optional prefix, which will be added
|				 to the table name when using the  Active Record class
|	['pconnect'] TRUE/FALSE - Whether to use a persistent connection
|	['db_debug'] TRUE/FALSE - Whether database errors should be displayed.
|	['cache_on'] TRUE/FALSE - Enables/disables query caching
|	['cachedir'] The path to the folder where cache files should be stored
|	['char_set'] The character set used in communicating with the database
|	['dbcollat'] The character collation used in communicating with the database
|				 NOTE: For MySQL and MySQLi databases, this setting is only used
| 				 as a backup if your server is running PHP < 5.2.3 or MySQL < 5.0.7
|				 (and in table creation queries made with DB Forge).
| 				 There is an incompatibility in PHP with mysql_real_escape_string() which
| 				 can make your site vulnerable to SQL injection if you are using a
| 				 multi-byte character set and are running versions lower than these.
| 				 Sites using Latin-1 or UTF-8 database character set and collation are unaffected.
|	['swap_pre'] A default table prefix that should be swapped with the dbprefix
|	['autoinit'] Whether or not to automatically initialize the database.
|	['stricton'] TRUE/FALSE - forces 'Strict Mode' connections
|							- good for ensuring strict SQL while developing
|
| The $active_group variable lets you choose which connection group to
| make active.  By default there is only one group (the 'default' group).
|
| The $active_record variables lets you determine whether or not to load
| the active record class
*/

$active_group = 'social';
$active_record = TRUE;

$db['social']['hostname'] = 'localhost';
$db['social']['username'] = 'viewg12';
$db['social']['password'] = 'IEhvc3Q6';
$db['social']['database'] = 'cc320125_db';
$db['social']['dbdriver'] = 'mysql';
$db['social']['dbprefix'] = '';
$db['social']['pconnect'] = TRUE;
$db['social']['db_debug'] = TRUE;
$db['social']['cache_on'] = FALSE;
$db['social']['cachedir'] = '';
$db['social']['char_set'] = 'utf8';
$db['social']['dbcollat'] = 'utf8_spanish_ci';
$db['social']['swap_pre'] = '';
$db['social']['autoinit'] = TRUE;
$db['social']['stricton'] = FALSE;

$active_group = 'peliculas';
$active_record = TRUE;

$db['peliculas']['hostname'] = 'localhost';
$db['peliculas']['username'] = 'viewg12';
$db['peliculas']['password'] = 'IEhvc3Q6';
$db['peliculas']['database'] = 'cc320114_db';
$db['peliculas']['dbdriver'] = 'mysql';
$db['peliculas']['dbprefix'] = '';
$db['peliculas']['pconnect'] = TRUE;
$db['peliculas']['db_debug'] = TRUE;
$db['peliculas']['cache_on'] = FALSE;
$db['peliculas']['cachedir'] = '';
$db['peliculas']['char_set'] = 'utf8';
$db['peliculas']['dbcollat'] = 'utf8_spanish_ci';
$db['peliculas']['swap_pre'] = '';
$db['peliculas']['autoinit'] = TRUE;
$db['peliculas']['stricton'] = FALSE;

$active_group = 'servicios';
$active_record = TRUE;

$db['servicios']['hostname'] = 'localhost';
$db['servicios']['username'] = 'viewg12';
$db['servicios']['password'] = 'IEhvc3Q6';
$db['servicios']['database'] = 'cc320151_db';
$db['servicios']['dbdriver'] = 'mysql';
$db['servicios']['dbprefix'] = '';
$db['servicios']['pconnect'] = TRUE;
$db['servicios']['db_debug'] = TRUE;
$db['servicios']['cache_on'] = FALSE;
$db['servicios']['cachedir'] = '';
$db['servicios']['char_set'] = 'utf8';
$db['servicios']['dbcollat'] = 'utf8_spanish_ci';
$db['servicios']['swap_pre'] = '';
$db['servicios']['autoinit'] = TRUE;
$db['servicios']['stricton'] = FALSE;


/* End of file database.php */
/* Location: ./application/config/database.php */