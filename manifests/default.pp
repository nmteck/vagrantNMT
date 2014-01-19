# create a new run stage to ensure certain modules are included first
stage { 'pre':
  before => Stage['main']
}

# add the baseconfig module to the new 'pre' run stage
class { 'baseconfig':
  stage => 'pre'
}

# set defaults for file ownership/permissions
File {
  owner => 'root',
  group => 'root',
  mode  => '0644',
}

include baseconfig, apache, mysql, php, apache_vhosts, stdlib, git, drush

package { ['build-essential', 'python-software-properties', 'puppet-lint', 'vim', 'curl', 'zip']:
	ensure  => 'installed'
}