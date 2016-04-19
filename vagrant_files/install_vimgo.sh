#!/bin/bash
sudo echo 'Installing Vim Go'
sudo mkdir /home/vagrant/.vim_go_runtime
sudo cp -r /vagrant_data/vim_go_runtime/* /home/vagrant/.vim_go_runtime
sudo chmod +x /home/vagrant/.vim_go_runtime/bin/install
sudo sh /home/vagrant/.vim_go_runtime/bin/install

sudo echo "alias vimgo='vim -u ~/.vimrc.go'" >> ~/.bashrc


