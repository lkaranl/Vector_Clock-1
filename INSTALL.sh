#!/usr/bin/env bash

#####	NAME:				INSTALL
#####	VERSION:			1.0
#####	DESCRIPTION:		Install libraries and dependencies 			
#####	DATE OF CREATION:	18/04/2019
#####	WRITTEN BY:			Karan Luciano Silva
#####	E-MAIL:				karanluciano1@gmail.com			
#####	DISTRO:				Manjaro Linux
#####	LICENSE:			GPLv3 			
#####	PROJECT:			https://github.com/lkaranl/Vector_Clock

#Check architecture
_arch=$(uname -m)

#Check the distribution name
_distribDeb=$(cat /etc/*release |grep PRETTY_NAME | sed 's/PRETTY_NAME="//g'|cut -c1-6)
_distribUbu=$(cat /etc/*release |grep DISTRIB_ID= |sed 's/DISTRIB_ID=//g')
_distribMin=$(cat /etc/*release |grep DISTRIB_ID= |sed 's/DISTRIB_ID=//g')
_distribMan=$(cat /etc/*release |grep DISTRIB_ID= |sed 's/DISTRIB_ID=//g')
_distribArc=$(cat /etc/*release |grep ID=a |sed 's/ID=//g')

_home=$(pwd)
mkdir "$_home/clock"
cd "$_home/clock"

#Debian and derivatives
debian(){		
	#64bits
	if [ "$_arch" = "x86_64" ]; then
		apt update
		apt install idle-python2.7
		apt install python-pip
		pip install python-dateutil
		pip install netifaces
		apt-get install multiarch-support

		#Files
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/libgstreamer-plugins-base0.10-0_0.10.36-2ubuntu0.1_amd64.deb
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/libgstreamer0.10-0_0.10.36-1.5ubuntu1_amd64.deb
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/libpng12-0_1.2.54-1ubuntu1.1_amd64.deb
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/libwxbase2.8-0_2.8.12.1%2Bdfsg-2ubuntu2_amd64.deb
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/libwxgtk-media2.8-0_2.8.12.1%2Bdfsg-2ubuntu2_amd64.deb
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/libwxgtk2.8-0_2.8.12.1%2Bdfsg-2ubuntu2_amd64.deb
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/python-ipaddr_2.1.11-2_all.deb
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/python-wxgtk2.8_2.8.12.1%2Bdfsg-2ubuntu2_amd64.deb
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/python-wxversion_3.0.2.0%2Bdfsg-8_all.deb

		#Compilation
		dpkg -i libwxbase2.8-0_2.8.12.1+dfsg-2ubuntu2_amd64.deb
		dpkg -i python-wxversion_3.0.2.0+dfsg-8_all.deb
		dpkg -i libpng12-0_1.2.54-1ubuntu1.1_amd64.deb
		dpkg -i libwxgtk2.8-0_2.8.12.1+dfsg-2ubuntu2_amd64.deb
		dpkg -i libgstreamer0.10-0_0.10.36-1.5ubuntu1_amd64.deb
		dpkg -i libgstreamer-plugins-base0.10-0_0.10.36-2ubuntu0.1_amd64.deb
		dpkg -i libwxgtk-media2.8-0_2.8.12.1+dfsg-2ubuntu2_amd64.deb
		dpkg -i python-wxgtk2.8_2.8.12.1+dfsg-2ubuntu2_amd64.deb
		dpkg -i python-ipaddr_2.1.11-2_all.deb
		cd .. 
		rm -r "$_home/clock"
	fi

	#32bits
	if [ "$_arch" = "i686" ]; then
		yes | sudo apt update
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
		cd .. 
		rm -r "$_home/clock"
	fi
}

ubuntu(){		
	#64bits
	if [ "$_arch" = "x86_64" ]; then
		yes | sudo apt update
		yes | sudo apt install idle-python2.7
		yes | sudo apt install python-pip
		yes | sudo pip install python-dateutil
		yes | sudo pip install netifaces
		yes | sudo apt-get install multiarch-support

		#Files
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/libgstreamer-plugins-base0.10-0_0.10.36-2ubuntu0.1_amd64.deb
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/libgstreamer0.10-0_0.10.36-1.5ubuntu1_amd64.deb
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/libpng12-0_1.2.54-1ubuntu1.1_amd64.deb
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/libwxbase2.8-0_2.8.12.1%2Bdfsg-2ubuntu2_amd64.deb
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/libwxgtk-media2.8-0_2.8.12.1%2Bdfsg-2ubuntu2_amd64.deb
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/libwxgtk2.8-0_2.8.12.1%2Bdfsg-2ubuntu2_amd64.deb
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/python-ipaddr_2.1.11-2_all.deb
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/python-wxgtk2.8_2.8.12.1%2Bdfsg-2ubuntu2_amd64.deb
		wget https://github.com/lkaranl/Vector_Clock/raw/master/Files/python-wxversion_3.0.2.0%2Bdfsg-8_all.deb

		#Compilation
		sudo dpkg -i libwxbase2.8-0_2.8.12.1+dfsg-2ubuntu2_amd64.deb
		sudo dpkg -i python-wxversion_3.0.2.0+dfsg-8_all.deb
		sudo dpkg -i libpng12-0_1.2.54-1ubuntu1.1_amd64.deb
		sudo dpkg -i libwxgtk2.8-0_2.8.12.1+dfsg-2ubuntu2_amd64.deb
		sudo dpkg -i libgstreamer0.10-0_0.10.36-1.5ubuntu1_amd64.deb
		sudo dpkg -i libgstreamer-plugins-base0.10-0_0.10.36-2ubuntu0.1_amd64.deb
		sudo dpkg -i libwxgtk-media2.8-0_2.8.12.1+dfsg-2ubuntu2_amd64.deb
		sudo dpkg -i python-wxgtk2.8_2.8.12.1+dfsg-2ubuntu2_amd64.deb
		sudo dpkg -i python-ipaddr_2.1.11-2_all.deb
		cd .. 
		rm -r "$_home/clock"
	fi

	#32bits
	if [ "$_arch" = "i686" ]; then
		yes | sudo apt update
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
		cd .. 
		rm -r "$_home/clock"
	fi
}

#arch and derivatives
archlinux(){
	yes | sudo pacman -S python2-dateutil python2-netifaces python2-ipaddr
	wget https://aur.archlinux.org/cgit/aur.git/snapshot/gstreamer0.10.tar.gz
	wget https://aur.archlinux.org/cgit/aur.git/snapshot/gstreamer0.10-base.tar.gz
	wget https://aur.archlinux.org/cgit/aur.git/snapshot/wxgtk2.8.tar.gz
	wget https://aur.archlinux.org/cgit/aur.git/snapshot/wxpython-gtk2.tar.gz
	wget https://aur.archlinux.org/cgit/aur.git/snapshot/wxpython2.8.tar.gz

	tar -xvf gstreamer0.10.tar.gz
	cd gstreamer0.10
	yes | makepkg -si
	cd ..
	rm gstreamer0.10.tar.gz

	tar -xvf gstreamer0.10-base.tar.gz
	cd gstreamer0.10-base
	yes | makepkg -si
	cd ..
	rm gstreamer0.10-base.tar.gz

	tar -xvf wxgtk2.8.tar.gz
	cd wxgtk2.8
	yes | makepkg -si
	cd ..
	rm wxgtk2.8.tar.gz

	tar -xvf wxpython-gtk2.tar.gz
	cd wxpython-gtk2
	yes | makepkg -si
	cd ..
	rm wxpython-gtk2.tar.gz

	tar -xvf wxpython2.8.tar.gz
	cd wxpython2.8
	yes | makepkg -si
	cd ..
	rm wxpython2.8.tar.gz
}

#Debian
if [ "$_distribDeb" = "Debian" ]; then
	debian
fi
#Ubuntu
if [ "$_distribUbu" = "Ubuntu" ]; then
	ubuntu
fi
#LinuxMint
if [ "$_distribMin" = "LinuxMint" ]; then
	ubuntu
fi
#Manjaro
if [ "$_distribMan" = "ManjaroLinux" ]; then
	archlinux
fi
#Arch (Unique more special)
if [ "$_distribArc" = "arch" ]; then
	archlinux
fi
exec bash
