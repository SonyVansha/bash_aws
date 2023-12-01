#!/bin/bash
printf "Step 1"
sudo yum install gcc-c++ make git -y
yum install https://rpm.nodesource.com/pub_16.x/nodistro/repo/nodesource-release-nodistro-1.noarch.rpm -y
yum install nodejs -y
printf "Step 2"
mkdir /home/ec2-user/lkskabmalang2023
git clone https://github.com/handipradana/lkskabmalang2023.git /home/ec2-user/lkskabmalang2023
echo $(ls /home/ec2-user/lkskabmalang2023)
echo "step4"
touch /home/ec2-user/lkskabmalang2023/log/.env
printf "MQTT_BROKER=mqtt://52.205.211.233\n" >> /home/ec2-user/lkskabmalang2023/log/.env
printf "MQTT_PORT=1883\n" >> /home/ec2-user/lkskabmalang2023/log/.env
printf "MQTT_USERNAME=sony\n" >> /home/ec2-user/lkskabmalang2023/log/.env
printf "MQTT_PASSWORD=2005\n" >> /home/ec2-user/lkskabmalang2023/log/.env
printf "DB_HOST=database-2.cvtkq5deqmb8.us-east-1.rds.amazonaws.com\n" >> /home/ec2-user/lkskabmalang2023/log/.env
printf "DB_USER=admin\n" >> /home/ec2-user/lkskabmalang2023/log/.env
printf "DB_PASSWORD=adminsony\n" >> /home/ec2-user/lkskabmalang2023/log/.env
printf "DB_NAME=log_mqtt\n" >> /home/ec2-user/lkskabmalang2023/log/.env
echo "step5"
npm install --prefix /home/ec2-user/lkskabmalang2023/log/
npm run prod --prefix /home/ec2-user/lkskabmalang2023/log/
echo "finish"