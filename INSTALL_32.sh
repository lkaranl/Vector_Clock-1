#!/bin/sh

if [ -d ${HOME}/Desktop ]; then
    mkdir ${HOME}/Desktop/clock
    cd ${HOME}/Desktop/clock
fi

if [ -d ${HOME}/Área\ de\ Trabalho/ ]; then
    mkdir ${HOME}/Área\ de\ Trabalho/clock
    cd ${HOME}/Área\ de\ Trabalho/clock
fi
yes | sudo apt --fix-broken install 			
yes | sudo apt install idle-python2.7			
yes | sudo apt install python-pip 				
yes | sudo pip install python-dateutil
yes | sudo pip install netifaces
yes | sudo apt-get install multiarch-support
yes | sudo pip install ipaddr
yes | sudo apt-get install libjpeg8-dev

sudo wget http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1.1_i386.deb
sudo wget http://ftp.br.debian.org/debian/pool/main/t/tiff3/libtiff4_3.9.6-11_i386.deb
sudo wget http://ppa.launchpad.net/nilarimogard/webupd8/ubuntu/pool/main/w/wxwidgets2.8/libwxbase2.8-0_2.8.12.1+dfsg2-2ubuntu2+1~webupd8~xenial0_i386.deb
sudo wget http://ppa.launchpad.net/nilarimogard/webupd8/ubuntu/pool/main/w/wxwidgets2.8/libwxgtk2.8-0_2.8.12.1+dfsg2-2ubuntu2+1~webupd8~xenial0_i386.deb
sudo wget http://archive.ubuntu.com/ubuntu/pool/universe/g/gstreamer0.10/libgstreamer0.10-0_0.10.36-1.5ubuntu1_i386.deb
sudo wget http://archive.ubuntu.com/ubuntu/pool/universe/g/gst-plugins-base0.10/libgstreamer-plugins-base0.10-0_0.10.36-2_i386.deb
sudo wget http://ppa.launchpad.net/nilarimogard/webupd8/ubuntu/pool/main/w/wxwidgets2.8/libwxgtk-media2.8-0_2.8.12.1+dfsg2-2ubuntu2+1~webupd8~xenial0_i386.deb
sudo wget http://archive.ubuntu.com/ubuntu/pool/universe/w/wxpython3.0/python-wxversion_3.0.2.0+dfsg-1build1_all.deb
sudo wget http://ppa.launchpad.net/nilarimogard/webupd8/ubuntu/pool/main/w/wxwidgets2.8/python-wxgtk2.8_2.8.12.1+dfsg2-2ubuntu2+1~webupd8~xenial0_i386.deb

sudo dpkg -i libpng12-0_1.2.54-1ubuntu1.1_i386.deb 
sudo dpkg -i libtiff4_3.9.6-11_i386.deb
sudo dpkg -i libwxbase2.8-0_2.8.12.1+dfsg2-2ubuntu2+1~webupd8~xenial0_i386.deb 
sudo dpkg -i libwxgtk2.8-0_2.8.12.1+dfsg2-2ubuntu2+1~webupd8~xenial0_i386.deb 
sudo dpkg -i libgstreamer0.10-0_0.10.36-1.5ubuntu1_i386.deb
sudo dpkg -i libgstreamer-plugins-base0.10-0_0.10.36-2_i386.deb 
sudo dpkg -i libwxgtk-media2.8-0_2.8.12.1+dfsg2-2ubuntu2+1~webupd8~xenial0_i386.deb
sudo dpkg -i python-wxversion_3.0.2.0+dfsg-1build1_all.deb 
sudo dpkg -i python-wxgtk2.8_2.8.12.1+dfsg2-2ubuntu2+1~webupd8~xenial0_i386.deb 

exec bash
