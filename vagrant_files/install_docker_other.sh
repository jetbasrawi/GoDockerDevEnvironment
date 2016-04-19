#!/bin/bash
sudo echo 'Running docker registry'
docker rm -f registry_local
docker run -v /var/lib/registry:/var/lib/registry --name registry_local --restart=always -p 5000:5000 -d registry:2.3.1 

sudo echo 'Installing Docker Compose'
sudo curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
