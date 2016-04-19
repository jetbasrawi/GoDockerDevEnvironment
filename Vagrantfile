# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = 'dockerhost'

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 32768, host: 32768
  config.vm.network "forwarded_port", guest: 32769, host: 32769
  config.vm.network "forwarded_port", guest: 5000, host: 5000
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 2113, host: 2113
  config.vm.network "forwarded_port", guest: 1113, host: 1113
  config.vm.network "forwarded_port", guest: 2424, host: 2424
  config.vm.network "forwarded_port", guest: 2480, host: 2480

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "vagrant_files/", "/vagrant_data"
  config.vm.synced_folder "./go", "/go", create: true
  config.vm.synced_folder "./docker-registry", "/var/lib/registry", create: true

  memory = 2048
  cpus = 2
  name = "dockerhost"

  config.vm.provider "virtualbox" do |vb|
    
    vb.gui = false
    vb.memory = memory
    vb.name = name
    vb.cpus = cpus

  end

  puts " --------------------------------------------------------------------------------------------------------"
  puts "               memory                             name                             CPUS               "
  puts " --------------------------------------------------------------------------------------------------------"
  puts "                 #{memory}                         #{name}                          #{cpus}           "
  puts " --------------------------------------------------------------------------------------------------------"
  
  config.vm.provision "shell", path: "vagrant_files/setup_bashrc.sh", run: "always", privileged: false
  config.vm.provision "shell", path: "vagrant_files/install_utils.sh"
  
  #Install Docker and Docker Compose, can take a while to install docker!
  config.vm.provision "docker"
  config.vm.provision "shell", path: "vagrant_files/install_docker_other.sh"
  
  #Go, Glide and Vim Setup for Go Development
  config.vm.provision "shell", path: "vagrant_files/install_go.sh", privileged: false
  config.vm.provision "shell", path: "vagrant_files/install_glide.sh", privileged: false
  config.vm.provision "shell", path: "vagrant_files/install_vimgo.sh", privileged: false

  # Mono and Vim Setup for C# development
  config.vm.provision "shell", path: "vagrant_files/install_mono.sh", privileged: false
  config.vm.provision "shell", path: "vagrant_files/install_vimsharp.sh", privileged: false
  
  config.vm.provision "shell", path: "vagrant_files/setup_ssh.sh", privileged: false
  config.vm.provision "shell", path: "vagrant_files/setup_git.sh", privileged: false
  config.vm.provision "shell", path: "vagrant_files/setup_aliases.sh", privileged: false
  config.vm.provision "shell", path: "vagrant_files/cleanup.sh", privileged: true
  config.vm.provision "shell", path: "vagrant_files/startup_actions.sh", run: "always", privileged: false


end
