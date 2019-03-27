#!/bin/sh

if [ -d ${HOME}/Desktop ]; then
    mkdir ${HOME}/Desktop/snapshot
    cd ${HOME}/Desktop/snapshot
fi

if [ -d ${HOME}/Área\ de\ Trabalho/ ]; then
    mkdir ${HOME}/Área\ de\ Trabalho/clock
    cd ${HOME}/Área\ de\ Trabalho/clock
fi

yes | sudo wget pacman -S python2-dateutil python2-netifaces python2-ipaddr


wget https://aur.archlinux.org/cgit/aur.git/snapshot/gstreamer0.10.tar.gz
wget https://aur.archlinux.org/cgit/aur.git/snapshot/gstreamer0.10-base.tar.gz
wget https://aur.archlinux.org/cgit/aur.git/snapshot/wxgtk2.8.tar.gz
wget https://aur.archlinux.org/cgit/aur.git/snapshot/wxpython-gtk2.tar.gz
wget https://aur.archlinux.org/cgit/aur.git/snapshot/wxpython2.8.tar.gz

tar -xvf gstreamer0.10.tar.gz
cd gstreamer0.10
yes | makepkg -si
cd ..
rm -r gstreamer0.10.tar.gz

tar -xvf gstreamer0.10-base.tar.gz
cd gstreamer0.10-base
yes | makepkg -si
cd ..
rm -r gstreamer0.10-base.tar.gz

tar -xvf wxgtk2.8.tar.gz
cd wxgtk2.8
yes | makepkg -si
cd ..
rm -r wxgtk2.8.tar.gz

tar -xvf wxpython-gtk2.tar.gz
cd wxpython-gtk2
yes | makepkg -si
cd ..
rm -r wxpython-gtk2.tar.gz

tar -xvf wxpython2.8.tar.gz
cd wxpython2.8
yes | makepkg -si
cd ..
rm -r wxpython2.8.tar.gz


exec bash
