#!/bin/bash
sudo amazon-linux-extras install epel -y
sudo yum install -y mosquitto
echo "allow_anonymous false" >> /etc/mosquitto/mosquitto.conf
sudo touch /etc/mosquitto/passwd
sudo mosquitto_passwd -b /etc/mosquitto/passwd sony 123 // username and password
sudo systemctl restart mosquitto.service
sudo systemctl enable mosquitto.service