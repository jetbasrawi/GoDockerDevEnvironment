sudo echo 'Installing Vim Sharp'
sudo mkdir /home/vagrant/.vim_sharp_runtime
sudo cp -r /vagrant_data/vim_sharp_runtime/* /home/vagrant/.vim_sharp_runtime
sudo chmod -R 777 /home/vagrant/.vim_sharp_runtime/
sudo sh /home/vagrant/.vim_sharp_runtime/bin/install

sudo echo "alias vimsharp='vim -u ~/.vimrc.csharp'" >> ~/.bashrc
