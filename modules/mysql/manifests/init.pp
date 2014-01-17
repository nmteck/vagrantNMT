# == Class: mysql
#
# Installs MySQL server, sets config file, and loads database for dynamic site.
#
class mysql {
  package { ['mysql-server']:
    ensure => present;
  }

  service { 'mysql':
    ensure  => running,
    require => Package['mysql-server'];
  }

  file { '/etc/mysql/my.cnf':
    source  => 'puppet:///modules/mysql/my.cnf',
    require => Package['mysql-server'],
    notify  => Service['mysql'];
  }

  exec { 'load-dynamic-sql':
    command => 'mysql -u root < /vagrant/sql/dbsetup.sql',
    path    => ['/bin', '/usr/bin'],
    require => Service['mysql'];
  }
}
