#!/bin/bash
sudo echo 'Installing Glide'
GLIDE_VERSION="0.9.3"
set -e
wget "https://github.com/Masterminds/glide/releases/download/$GLIDE_VERSION/glide-$GLIDE_VERSION-linux-amd64.tar.gz" -P /tmp
tar xvf "/tmp/glide-$GLIDE_VERSION-linux-amd64.tar.gz" -C /tmp

user=$(whoami)
if [[ "$user" != "root" ]]; then
	SUDO="sudo"
fi

$SUDO mv /tmp/linux-amd64/glide /usr/bin/
$SUDO chmod +x /usr/bin/glide
$SUDO rm "/tmp/glide-$GLIDE_VERSION-linux-amd64.tar.gz"
$SUDO rm -rf /tmp/linux-amd64/glide