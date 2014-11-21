# Lelylan MQTT install
# Mongodb
sudo yum install openssl net-snmp net-snmp-libs net-snmp-utils cyrus-sasl cyrus-sasl-lib cyrus-sasl-devel cyrus-sasl-gssapi -y
curl -O http://downloads.10gen.com/linux/mongodb-linux-x86_64-enterprise-amzn64-2.6.4.tgz
tar -zxvf mongodb-linux-x86_64-enterprise-amzn64-2.6.4.tgz
cp -R -n mongodb-linux-x86_64-enterprise-amzn64-2.6.4/ mongodb
sudo emacs ~/.bash_profile 
# Add "PATH=$PATH:$HOME/mongodb/bin/"
sudo reboot
sudo mkdir -p /data/db
sudo chmod 777 /data
sudo chmod 777 /data/db

# MQTT
sudo su
git clone https://github.com/lelylan/mqtt.git
cd mqtt
npm install && npm install -g foreman
mongod
npm install -g nodemon