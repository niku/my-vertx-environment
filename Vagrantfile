# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "base"
  config.vm.network :forwarded_port, guest: 8080, host: 18080
  config.vm.provision 'chef_solo' do |chef|
    chef.cookbooks_path = ['vendor/cookbooks', 'site-cookbooks']
    chef.data_bags_path = 'data_bags'
    chef.json = JSON.parse(File.read('nodes/default.json'))
  end
end
