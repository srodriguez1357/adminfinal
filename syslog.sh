#!/bin/bash
apt install rsyslog-mysql -y 
apt install apache2 libapache2-mod-php -y
systemctl enable apache2
systemctl start apache2
apt install mysql-server php-mysql -y
apt install php7.0 php-mysql -y
apt install php7.0 php-curl -y
apt install php7.0 php-gd -y
apt install php7.0 php-json -y
apt install php7.0 php-opcache -y 
apt install php7.0 php-xml -y
apt install php7.0 mcrypt -y
apt install php7.0 php-mcrypt -y

systemctl restart apache2
