# Vector_Clock

Code in Python to Synchronize the computer clock using the [Lamport](https://en.wikipedia.org/wiki/Leslie_Lamport) method.

People use physical time to order events. For example, we say that an event at 8:15 AM occurs before an event at 8:16 AM. In distributed systems, physical clocks are not always precise, so we can't rely on physical time to order events. Instead, we can use logical clocks to create a partial or total ordering of events. This article explores the concept of and an implementation of the logical clocks invented by Leslie Lamport in his seminal paper Time, Clocks, and the Ordering of Events in a Distributed System.

![animacao](https://user-images.githubusercontent.com/32453979/47199699-d9c90e00-d340-11e8-94b7-6b609d44561e.gif)
<\br>
1. [What are the Possible Applications?](#what-are-the-possible-applications?)
1. [Methodology](#methodology)
1. [Prerequisites](#prerequisites)
1. [What do you need to use the software?](#what-do-you-need-to-use-the-software?)
1. [How to install](#how-to-install)
1. [Possibles erros](#possibles-erros)
1. [How to use](#how-to-use)


</head>

# What are the Possible Applications?
Its purpose is the synchronization of logical clocks of computers connected to the same network.

# Methodology
* OS: Ubuntu 18.10 cosmic
* Kernel: x86_64 Linux 4.18.0-10-generic
* CPU: Intel Core i7 Q 740 @ 8x 1.734GHz
* GPU: GeForce GT 425M
* RAM: 7956MiB

# Prerequisites
* Pyhton2.7
* Idle-Python2.7
* Python-Dateutil
* Python-Netifaces
* Python-Ipaddr
* Python-WXgtk2.8


# What do you need to use the software?
* You will need a GNU/Linux Ubuntu 18.04.1 cosmic /  KERNEL x86_64 Linux 4.18.0-10-generic or Debian 9.5 Stretch / KERNEL x86_64 Linux 4.9.0-8-amd64. 
* Internet connection for download.
* OBS: Software does not work on 32 bits systems.

Probably the software will also work on any other Debian-based distribution, but it has only been tested on the systems listed above.

These are the necessary packages and modules.
The version may not necessarily be the same, but these versions have been tested and confirmed the operation.

* 1. PYTHON IDLE <br/>
Package: idle-python2.7 <br/>
Version: 2.7.12-1ubuntu0~16.04.3 <br/>

* 2. PIP<br/>
Package: python-pip<br/>
Version: 8.1.1-2ubuntu0.4 <br/>

* 3. DATEUTIL<br/>
Package: python-dateutil<br/>
Version: 2.4.2-1<br/>

* 4. NETIFACES<br/>
Package: python-netifaces<br/>
Version: 0.10.4-0.1build2<br/>

* 5. IPADDR<br/>
Package: python-ipaddr<br/>
Version: 2.1.11-2<br/>

* 6. LIBPNG<br/>
Package: libpng12-0<br/>
Version: 1.2.54-1ubuntu1.1<br/>

* 7. LIBTIFF<br/>
Package: libtiff4<br/>
Version: 3.9.6-11+deb7u11<br/>

* 8. LIBWXBASE<br/>
Package: libwxbase2.8-0<br/>
Version: 2.8.12.1-12<br/>

* 9. LIBWXGTK<br/>
Package: libwxgtk2.8-0<br/>
Version: 2.8.12.1-12<br/>

* 10. XWPYTHON<br/>
Package: python-wxgtk2.8<br/>
Version: 2.8.12.1-12<br/>

***********************************************************************************************
# How to install

Give permission to file INSTALL.sh<br/>
`$sudo chmod +x INSTALL.sh`

Obs: For the above command to work the terminal must be open where the file is located.<br/>

Run the file<br/>
`$sudo ./INSTALL.sh`

***********************************************************************************************
* You can do an installation automatically by running the file 'INSTALL.sh'. But if you want to install manually just follow the steps below.

First you will download the package and later install it.

Once the installations are finished you can delete the downloaded .deb files.


1 . INSTALL PYTHON IDLE<br/>
`$sudo apt install idle-python2.7`<br/>

2 . INSTALE PIP<br/>
`$sudo apt install python-pip`<br/>

3 . INSTALL DATEUTIL (PIP)<br/>
`$sudo pip install python-dateutil`<br/>

4 . INSTALL NETIFACES (PIP)<br/>
`$sudo pip install netifaces`<br/>

5 . INSTALL IPADDR<br/>
`$sudo apt install python-ipaddr`<br/>

6 . DOWNLOAD LIBPNG<br/>
`$sudo wget http://ftp.us.debian.org/debian/pool/main/libp/libpng/libpng12-0_1.2.49-1+deb7u2_amd64.deb`<br/>
6 . 1 .INSTALL LIBPNG<br/>
`$sudo dpkg -i libpng12-0_1.2.49-1+deb7u2_amd64.deb`<br/>

7 . DOWNLOAD LIBTIFF<br/>
`$sudo wget http://security.debian.org/debian-security/pool/updates/main/t/tiff3/libtiff4_3.9.6-11+deb7u11_amd64.deb`<br/>
7 . 1INSTALL LIBTIFF<br/>
`$sudo dpkg -i libtiff4_3.9.6-11+deb7u11_amd64.deb`<br/>

8 . DOWNLOAD LIBWXBASE<br/>
`$sudo wget http://ftp.us.debian.org/debian/pool/main/w/wxwidgets2.8/libwxbase2.8-0_2.8.12.1-12_amd64.deb`<br/>
8 . 1 . INSTALL LIBWXBASE<br/>
`$sudo dpkg -i libwxbase2.8-0_2.8.12.1-12_amd64.deb`<br/>

9 . DOWNLOAD LIBWXGTK<br/>
`$sudo wget http://ftp.us.debian.org/debian/pool/main/w/wxwidgets2.8/libwxgtk2.8-0_2.8.12.1-12_amd64.deb`<br/>
9 . 1 . INSTALL LIBWXGTK<br/>
`$sudo dpkg -i libwxgtk2.8-0_2.8.12.1-12_amd64.deb`<br/>

10 . DOWLOAD XWPYTHON<br/>
`$sudo wget http://ftp.us.debian.org/debian/pool/main/w/wxwidgets2.8/python-wxgtk2.8_2.8.12.1-12_amd64.deb`<br/>
10 . 1 . INSTALL ALL DEPENDENCIES MISSING<br/>
`$sudo apt-get install -f`<br/>
10 . 2 . INSTALL XWPYTHON<br/>
`$sudo dpkg -i python-wxgtk2.8_2.8.12.1-12_amd64.deb`<br/>

***********************************************************************************************
# Possibles erros

* If any module for unknown reasons has not been installed

Any module error that you may have to re-view the "HOW TO USE" session and manually install each module in sequence according to the tutorial. Follow steps 1 through 10.2.<br/>

In the Debian system you may have a user error<br/>
If you get the error "./INSTALL.sh: sudo: not found". By default sudo is not installed, but you can install it. <br/>

First enable su-mode:<br/>
`$su`<br/>
 
Install sudo<br/>
`#apt install sudo -y`<br/>

After that you would need to play around with users and permissions. Give sudo rigth to you own user.<br/>
`#usermod -aG sudo yoursername`<br/>

Edit the file 'sudoers'<br/>
`#nano /etc/sudoers`<br/>

#User privilege specification<br/>
root ALL=(ALL:ALL) ALL<br/>
yoursername ALL=(ALL:ALL) ALL <br/><br/>
#The top line was the one we added. <br/>
#Replace 'yoursername' with the name of your user who wants to have root permission<br/>
`#exit`
***********************************************************************************************

# How to use

*  IMPORTANT: For the hours to change you must have root permission or be the root user.

Open 'idle-python', it must have root permission<br/>
`$sudo idle-python2.7`<br/>
or<br/>
`#idle python2.7`<br/><br/>

Click on 'File ==> Open ==> ds_logic_clocks_mc.py'<br/><br/>

The source code will appear on your screen<br/><br/>

Click on 'run ==> run module'<br/>
or<br/>
Press 'F5'<br/>
**************************************************************
The simplest way to use eh the "Broadcast"<br/>

* 1 - Shows the time that is "wrong"<br/>

* 2 - Click "Bind IP/Port" to make a connection<br/>

* 3 - You can choose between automatic and manual<br/>
Automatic: Send a message every 3 seconds<br/>
Manual: Send a message each time you click on it<br/>

* 4 - Note that the time has changed, important to realize that it has changed to an hour higher than it was already. Your time is now synchronized.<br/>

![animacao](https://user-images.githubusercontent.com/32777186/47819566-48d73700-dd31-11e8-87e7-d1913935d83b.gif)


**[⬆ back to top](#Vector_Clock)**



***********************************************************************************************
