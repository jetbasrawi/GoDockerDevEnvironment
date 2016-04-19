#A Vagrant development environment for Working with Go and Docker

I have found that it is better to work on a Linux Vagrant VM, when working with Docker, rather than using the docker-machine. It is more reliable, provides a consistent environment for all members of the development team to work. It can also be spun up in a few mintutes providing new developers with a ready to go development environment quickly and cleanly.

##Installation
Clone the repo to somewhere inside your users, directory. Create a new *go* directory alongside the vagrant file, which will host your Go code. This will be your GOPATH in the VM. 

When you push an image to the local docker registry (localhost:5000) a directory will be created alongside. You do not need to create this. In the end the directory structure should look like the schema below.

|- YourUserDir

|-- GoDockerDev 

|--- Vagrantfile

|--- vagrant_files

|--- *go*

|--- *docker* 


From the command line type *vagrant up*. Thats it!

##Go

Go 1.6
GOPATH is set at /go in the VM
Glide for dependency management.

##Docker 
Docker and Docker Compose are installed. A docker registry is setup and mounted into the directory where the Vagrantfile resides. A note of warning, the Docker installation can take several minutes. 

The docker registry is configured to use localhost:5000. The registry will create the required folders to store the images alongside the Vagrantfile.

##VIM
Vim is setup with a fork of the excellent vim setup from https://github.com/farazdagi/vim-go-ide.
This setup will not overwrite the default Vim configurations. I have worked with a couple of VIM setups for Go and this is the best one I have found so far.

The configuration for this is included directly in this repo, however you may want to set this up using a fork of the original repo so that you can customise the configuration and have it pulled in at build time. For instructions on how to do this see the readme in the original repo https://github.com/farazdagi/vim-go-ide

When you first run the vimgo setup, you should execute the *:GoInstallBinaries* command in Vim. This will ensure that the various binaries required to support the vim-go plugin are installed.

Launch this vim configuration with the command *vimgo*

##C#
A vim configuration for C# development is included. Use the command *vimsharp* to load vim with this configuration.

##Mono
Mono is installed.

##Aliases
A number of aliases are setup in the setup_aliases.sh file.

##Tip
After the vagrant VM is created, copy the ssh config to your local ssh config and this will allow you to access the VM more easily using the command *ssh dockerhost*

`$ vagrant ssh-config`

This will give you some output like the following:

Host default
	HostName 127.0.0.1
	User vagrant
	Port 2222
	UserKnownHostsFile /dev/null
	StrictHostKeyChecking no
	PasswordAuthentication no
	IdentityFile "..."
	IdentitiesOnly yes
	LogLevel FATAL


Copy this configuration to your ssh config file *~/.ssh/config* on OSX. Change the Host from *default* to *dockerhost*

Once this has been saved, type *ssh dockerhost* to log on to the VM.

Happy coding!!

