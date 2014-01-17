# == Class: baseconfig
#
# Performs initial configuration tasks for all Vagrant boxes.
#
class nbcsports {

  file { '/var/www/site-php/nbcsports':
    ensure => directory;
  }

  file { '/var/www/site-php/comcastrsn':
    ensure => directory;
  }

  file { '/var/www/nbcsports/NBCSports-web/docroot/sites/default/files':
    ensure => directory,
    recurse => true,
    owner => "vagrant",
    group => "vagrant",
    mode => 0777
  }

  file {
    '/var/www/site-php/nbcsports/nbcsports-settings.inc':
      owner => 'vagrant',
      group => 'vagrant',
      mode  => '0644',
      source => 'puppet:///modules/nbcsports/nbcsports.inc';
  }

  file {
    '/var/www/site-php/comcastrsn/csnwashington-settings.inc':
      owner => 'vagrant',
      group => 'vagrant',
      mode  => '0644',
      source => 'puppet:///modules/nbcsports/csnwashington.inc';
  }
}
