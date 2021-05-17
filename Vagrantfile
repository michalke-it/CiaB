# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "generic/ubuntu1804"
    config.vm.provider "libvirt"
    config.vm.provision:shell, inline: <<-SHELL
        echo "root:rootroot" | sudo chpasswd
    SHELL

    config.vm.provider "libvirt" do |ubuntu|
        ubuntu.memory = 16386
        ubuntu.cpus = 8
    end

    config.vm.provision:shell, path: "bootstrap.sh"
end
