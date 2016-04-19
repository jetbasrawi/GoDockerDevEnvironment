#!/bin/bash
sudo echo 'Installing Go'
wget https://storage.googleapis.com/golang/go1.6.linux-amd64.tar.gz -O /home/vagrant/go.tar.gz
sudo tar -C /usr/local -xzf /home/vagrant/go.tar.gz
sudo rm /home/vagrant/go.tar.gz
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/go
export PATH=$PATH:$GOPATH/bin
echo "export PATH=$PATH:/usr/local/go/bin" >> /home/vagrant/.bash_profile
echo "export GOPATH=/go" >> /home/vagrant/.bash_profile
echo "export PATH=$PATH:$GOPATH/bin" >> /home/vagrant/.bash_profile
