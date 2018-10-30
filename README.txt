***********************************************************************************************
CODE IN PYTHON TO SYNCHRONIZE YOUR COMPUTER'S CLOCK
***********************************************************************************************
***********************************************************************************************
IMPORTANT
For the hours to change you must have root permission or be the root user.
***********************************************************************************************
This software uses an idea of ​​logical clocks proposed by Leslie Lamport that has relation 'happens before', it is synchronized with a machine that has the highest logical clock.

It is a code open to all, respecting the intellectual rights of the same on the basis of registration.

***********************************************************************************************
How to install: 

Give permission to file INSTALL.sh
$sudo chmod +x INSTALL.sh

Obs:For the above command to work the terminal must be open where the file is located

Run the file
$sudo ./INSTALL.sh
***********************************************************************************************
Erros

If you get the error "./INSTALL.sh: sudo: not found". By default sudo is not installed, but you can install it. First enable su-mode:
$su
#apt install sudo -y
After that you would need to play around with users and permissions. Give sudo rigth to you own user.
#usermod -aG sudo yoursername
Edit the file 'sudoers'
#nano /etc/sudoers
=================================
#User privilege specification
root ALL=(ALL:ALL) ALL
yoursername ALL=(ALL:ALL) ALL 
#The top line was the one we added. 
#Replace 'yoursername' with the name of your user who wants to have root permission
=================================
#exit
***********************************************************************************************

If everything happens as expected you will only have to respond if you really want to download the file. Just answer with yes 'y'.

A folder will be created on the Desktop with the necessary files for an installation. After installation the 'clock' folder can be deleted if desired.

If you prefer to install the files manually read the file 'Install.txt'
There you will find all the packages and versions required for the installation of the software
**********************************************************************************************
**********************************************************************************************

HOW TO USE

Open 'idle-python', it must have root permission
$sudo idle-python2.7
or
#idle python2.7

Click on 'File ==> Open ==> ds_logic_clocks_mc.py'

The source code will appear on your screen

Click on 'run ==> run module'
or
Press 'F5'

**********************************************************************************************
Obs: The images are in the images folder

The panel shows the data and the hours configured on your machine, not necessarily the logical clock. (Image 1.0)

Open the software on the machines and do steps 1 and 2 on all machines that want to be synchronized

1. Define a way to use it (Image 1.1)
-BROADCAST // Message to all receivers simultaneously
-MULTICAST // Message to multiple recipients simultaneously, using the most efficient "multiplexed broadcast" strategy.
-UNICAST // Message to a single destination. "peer-to-peer"

2.Connect by clicking on 'Bind ID/Port' (Image 1.2)

3.If your network is correctly connected, the message 'Waiting for cennection' will appear (image 1.3)

4. You can send a message automatically by clicking on 'Automatic Send Message' (Image 1.4)

5. Or you can send messages manually in 'Manual Send Message' (Image 1.5)

6. At this moment it is possible to see a data and time being changed in the instance without vis digial (Image 1.0)
