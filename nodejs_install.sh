# Installing NodeJS 0.8.8 and npm on a Amazon AMI 
sudo yum update
sudo yum install gcc-c++ make
sudo yum install openssl-devel
sudo yum install git
git clone git://github.com/joyent/node.git
cd node
git checkout v0.8.8
./configure
make
sudo make install
# Add npm path to Sudo
sudo su
vi /etc/sudoers
# <Use the down keyboard arrow to find this line:>
# Defaults    secure_path = /sbin:/bin:/usr/sbin:/usr/bin
 
# <Use the right arrow to move the cursor to the end of the line and press the INSERT button. Now type>
# :/usr/local/bin
 
# <In order to save your changes and exit VI, hit ESC and type>
# :
 
# <now type>
# wq!
 
# <and you're back in the console>
# <in order to leave su mode, type:>
# exit
cd
git clone https://github.com/isaacs/npm.git
cd npm
sudo make install
cd
# Install Adittional packages
sudo npm install express -g
sudo npm install forever -g
