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

sudo wget http://ftp.br.debian.org/debian/pool/main/p/python-ipaddr/python-ipaddr_2.1.11-2_all.deb
sudo wget http://ftp.br.debian.org/debian/pool/main/g/glibc/multiarch-support_2.24-11+deb9u3_amd64.deb
sudo wget http://ftp.br.debian.org/debian/pool/main/libj/libjpeg8/libjpeg8_8d-1+deb7u1_amd64.deb
sudo wget http://ftp.br.debian.org/debian/pool/main/p/pango1.0/libpango1.0-0_1.40.5-1_amd64.deb
sudo wget http://ftp.us.debian.org/debian/pool/main/libp/libpng/libpng12-0_1.2.49-1+deb7u2_amd64.deb
sudo wget http://security.debian.org/debian-security/pool/updates/main/t/tiff3/libtiff4_3.9.6-11+deb7u11_amd64.deb
sudo wget http://ftp.us.debian.org/debian/pool/main/w/wxwidgets2.8/libwxbase2.8-0_2.8.12.1-12_amd64.deb
sudo wget http://ftp.us.debian.org/debian/pool/main/w/wxwidgets2.8/libwxgtk2.8-0_2.8.12.1-12_amd64.deb
sudo wget http://ftp.us.debian.org/debian/pool/main/w/wxwidgets2.8/python-wxgtk2.8_2.8.12.1-12_amd64.deb
sudo wget http://ftp.br.debian.org/debian/pool/main/w/wxpython3.0/python-wxversion_3.0.2.0+dfsg-4_all.deb

sudo dpkg -i python-ipaddr_2.1.11-2_all.deb
sudo dpkg -i libwxgtk2.8-0_2.8.12.1-12_amd64.deb
sudo dpkg -i libwxbase2.8-0_2.8.12.1-12_amd64.deb
sudo dpkg -i libtiff4_3.9.6-11+deb7u11_amd64.deb
sudo dpkg -i libpng12-0_1.2.49-1+deb7u2_amd64.deb
sudo dpkg -i libpango1.0-0_1.40.5-1_amd64.deb 
sudo dpkg -i libjpeg8_8d-1+deb7u1_amd64.deb
sudo dpkg -i multiarch-support_2.24-11+deb9u3_amd64.deb
sudo dpkg -i python-wxversion_3.0.2.0+dfsg-4_all.deb
sudo dpkg -i python-wxgtk2.8_2.8.12.1-12_amd64.deb
yes | sudo apt-get install -f
sudo dpkg -i python-wxgtk2.8_2.8.12.1-12_amd64.deb

exec bash
