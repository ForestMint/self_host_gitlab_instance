# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "gitlab-instance-vm"
  config.vm.box = "ubuntu/jammy64" # call the ubuntu/jammy64 box among the Vagrant boxes

  # Forward SSH agent (optional)
  # config.ssh.forward_agent = true

  config.vm.define "host1" do |host1|
    host1.vm.network :private_network, ip: "192.168.56.17"
    host1.vm.hostname = "host1"
  end

  # VM settings
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "8192"
    vb.cpus = 2
  end

  # File provisioner to copy a file
  config.vm.provision "file", source: "./start_gitlab_instance.sh", destination: "/home/vagrant/start_gitlab_instance.sh"

end
