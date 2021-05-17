# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

$bootstrap = <<-SCRIPT
sudo apt update
sudo apt install python3-pip build-essential -y
git clone --recurse-submodules https://github.com/michalke-it/CiaB.git /home/vagrant/CiaB
cp -R /home/vagrant/CiaB/comac-in-a-box /home/vagrant/CiaB/automation-tools/
SCRIPT
$setup = <<-SCRIPT
cp /home/vagrant/Makefile /home/vagrant/CiaB/automation-tools/comac-in-a-box/
cp -R /home/vagrant/omec-user-plane /home/vagrant/CiaB/
cd /home/vagrant/CiaB/automation-tools/comac-in-a-box
make
make test
SCRIPT


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "generic/ubuntu1804"
    config.vm.provider "libvirt"
    config.vm.provision:shell, inline: <<-SHELL
        echo "root:rootroot" | sudo chpasswd
    SHELL

    config.vm.provider "libvirt" do |ubuntu|
        ubuntu.memory = 20000
        ubuntu.cpus = 14
    end

    config.vm.provision:shell, inline: $bootstrap
    config.vm.provision:"shell", inline: $setup
end
