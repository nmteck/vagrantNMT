<?php 
$databases['default']['default'] = array(
      'driver' => 'mysql',
      'database' => 'csnwashington_prod',
      'username' => 'root',
      'password' => '',
      'host' => 'localhost',
      'prefix' => '',
    );

$_ENV['AH_SITE_ENVIRONMENT'] = "dev";

$conf['stage_file_proxy_origin'] = 'http://csnwashington.nbcsports.acquia-ps.com/';
//$themes["csn_bayarea_theme"] = "csn_bayarea_theme";

/**
 * Variable overrides
 */
$conf["rsn_tv_listings_bay_area"] = 29021;
$conf["rsn_tv_listings_california"] = 29026;

$conf['file_temporary_path'] = '/tmp/';

error_reporting(E_ALL);
//ini_set("display_errors", 1);

ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);
