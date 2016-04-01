# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|
  config.vm.box      = 'ubuntu/wily64'
  config.vm.hostname = 'BookReview'

  config.vm.box_check_update = false

  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :private_network, ip: "192.168.33.10"
  config.vm.provision :shell, path: 'bootstrap.sh', keep_color: true

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end
end
