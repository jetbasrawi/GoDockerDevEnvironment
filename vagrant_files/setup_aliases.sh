#if [ -f ~/.bash_aliases ]; 
#then
#    sudo rm ~/.bash_aliases
#fi

sudo echo 'Setting up personal alias'
#sudo touch ~/.bash_aliases

##### ea - alias for editing aliases
#
#When setting up a new aliases file, or having creating a new file.. About every time after editing an aliases file, I source it. This alias makes editing alias a
#bit easier and they are useful right away. Note if the source failed, it will not echo "aliases sourced".
#
#Sub in gedit for your favorite editor, or alter for ksh, sh, etc.
#
sudo echo "alias ea='vim ~/.bash_aliases; source ~/.bash_aliases && source $HOME/.bash_aliases && echo \"aliases sourced  --ok.\"'" >> ~/.bash_aliases
#

# My Go projects
sudo echo "alias dv='cd /go/src/github.com/jetbasrawi'" >> ~/.bash_aliases

# Common docker commands
sudo echo "alias dk=docker" >> ~/.bash_aliases
sudo echo "alias dkp='docker ps'" >> ~/.bash_aliases
sudo echo "alias dkpa='docker ps -a'" >> ~/.bash_aliases
sudo echo "alias dbt='docker build -t'" >> ~/.bash_aliases

# List images
sudo echo "alias img='docker images'" >> ~/.bash_aliases

# List volumes
sudo echo "alias vols='docker volume ls'" >> ~/.bash_aliases

# Remove all containers
sudo echo "alias drma='docker rm -f \$(docker ps -a)'" >> ~/.bash_aliases

# Docker Compose
sudo echo "alias dc=docker-compose" >> ~/.bash_aliases
sudo echo "alias dcu='docker-compose up'" >> ~/.bash_aliases


# Find top 5 big files
sudo echo "alias findbig='find . -type f -exec ls -s {} \; | sort -n -r | head -5'" >> ~/.bash_aliases

# Grep for a bash process
sudo echo "alias psg='ps -aux Â¦ grep bash'"  >> ~/.bash_aliases

# List including hidden files with indicator and color
sudo echo "alias ls='ls -aF --color=always'" >> ~/.bash_aliases

# List in long format
sudo echo "alias ll='ls -l'" >> ~/.bash_aliases

# To clear all the history and screen
sudo echo "alias hcl='history -c; clear'"  >> ~/.bash_aliases

# Make basic commands interactive, and verbose
sudo echo "alias cp='cp -iv'" >> ~/.bash_aliases      # interactive
sudo echo "alias rm='rm -i'" >> ~/.bash_aliases      # interactive
sudo echo "alias mv='mv -iv'" >> ~/.bash_aliases       # interactive, verbose
sudo echo "alias grep='grep -i'" >> ~/.bash_aliases  # ignore case

# Easy to use aliases for frequently used commands
sudo echo "alias x='exit'" >> ~/.bash_aliases

# Clear the screen and list file
sudo echo "alias cls='clear;ls'" >> ~/.bash_aliases

# Filesystem diskspace usage
sudo echo "alias dus='df -h'" >> ~/.bash_aliases

# To navigate to the different directories
sudo echo "alias ..='cd ..'" >> ~/.bash_aliases
sudo echo "alias ...='cd ../..'" >> ~/.bash_aliases
