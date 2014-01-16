# -*- mode: ruby -*-
# vi: set ft=ruby :

box      = 'nmteckDev'
url      = 'http://ilm.nmteck.net/filez/uploads/nmtec/nmteckDev.box'
hostname = 'vagrantdev'
domain   = 'nmteck.info'
ip       = '192.168.0.42'
ram      = '256'

Vagrant::Config.run do |config|
  config.vm.box = box
  config.vm.box_url = url
  config.vm.host_name = hostname + '.' + domain
  config.vm.network :forwarded_port, guest: 80, host: 3000

  config.vm.network :private_network, ip: "192.168.33.7"

  config.vm.customize [
    'modifyvm', :id,
    '--name', hostname,
    '--memory', ram
  ]

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'manifests'
    puppet.manifest_file = 'default.pp'
    puppet.module_path = 'modules'
  end
end