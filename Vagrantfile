# -*- mode: ruby -*-
# vi: set ft=ruby :

box      = 'nmteckDev'
url      = 'http://files.vagrantup.com/precise32.box'
hostname = 'vagrantdev'
domain   = 'nmteck.info'
ip       = '192.168.0.42'
ram      = '256'

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = box
  config.vm.box_url = url
  config.vm.host_name = hostname + '.' + domain
  config.vm.network "forwarded_port", guest: 80, host: 8080
  
  config.vm.network "private_network", ip: "192.168.0.7"

  config.vm.synced_folder "~/www", "/var/www", id: "vagrant-root"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'manifests'
    puppet.manifest_file = 'default.pp'
    puppet.module_path = 'modules'
  end
end
