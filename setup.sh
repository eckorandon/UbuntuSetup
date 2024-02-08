function banner {
echo -e "\n================================="
echo " Installing $1"
echo -e "=================================\n"
}

apt-get update
apt-get upgrade
update-grub

#Github
banner 'GitHub'
wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
apt update && apt install github-desktop

#Grub-Customizer
banner 'Grub-Customizer'
add-apt-repository ppa:danielrichter2007/grub-customizer
apt install grub-customizer

#Notepadqq
banner 'Notepadqq'
add-apt-repository ppa:notepadqq-team/notepadqq
apt-get install notepadqq

#Sublime Text
banner 'Sublime Text'
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -;
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
apt-get update
apt-get install sublime-text

#Steam
banner 'Steam'
apt-get install steam

#vim
banner 'vim'
apt-get install vim

#tree
banner 'tree'
apt-get install tree

#VLC
banner 'VLC'
apt-get install vlc

#Gimp
banner 'gimp'
apt-get install gimp

#GParted
banner 'GParted'
apt-get install gparted

#Synaptic
banner 'Synaptic'
apt-get install synaptic

#Ubuntu restricted extras
banner 'Ubuntu restricted extras'
apt-get install ubuntu-restricted-extras

#Pre load
banner 'Pre load'
apt-get install preload

#Wine
banner 'Wine'
apt-get install wine

#audacity
#banner 'Audacity'
#apt-get install audacity

#Lynx
#banner 'Lynx'
#apt-get install lynx

#Apache 2
#banner 'Apache 2'
#apt-get install apache2

echo -e "\n"
