# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "wheezy64"
  
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/debian-70rc1-x64-vbox4210.box"

  config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file = "default.pp"
      puppet.module_path = "puppet/modules"
      puppet.options = "--verbose --debug"
  end
  
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024", "--natdnshostresolver1", "on"]
  end
  
  # instead of setting the forwarded ports, we'll create a host in the private network
  # (default port forward 22 -> 222 for ssh connections remains valid)
  config.vm.network :private_network, ip: "192.168.50.4"

  # by mounting the shared folder using NFS, we cannot set the owner parameters:
  # :owner => "www-data", :group => "www-data"
  config.vm.synced_folder "/var/www/MY_PROJECT", "/usr/share/nginx/www/MY_PROJECT", :extra => 'dmode=775,fmode=775', :nfs => true

end

