sudo cp -r /vagrant_data/gitignore /home/vagrant/.gitignore
git config --global core.excludesfile '~/.gitignore'
git config --global user.email "anewexplorer@gmail.com"
git config --global user.name "Jet Basrawi"
git config --global url.”git@bitbucket.org:”.insteadOf “https://bitbucket.org/”