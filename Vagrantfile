# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "gitlab-instance"
  config.vm.box = "ubuntu/jammy64" # call the ubuntu/jammy64 box among the Vagrant boxes

  # Forward SSH agent (optional)
  config.ssh.forward_agent = true

  # VM settings
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "8192"
    vb.cpus = 2
  end

end
