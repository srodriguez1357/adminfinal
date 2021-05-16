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

cd /tmp
wget http://download.adiscon.com/loganalyzer/loganalyzer-4.1.6.tar.gz
tar -xzvf loganalyzer-4.1.6.tar.gz
mkdir /var/www/html/loganalyzer
cp -r /tmp/loganalyzer-4.1.6/src/* /var/www/html/loganalyzer
cd /var/www/html/loganalyzer
touch config.php
chown www-data:www-data config.php
chmod 666 config.php
chown www-data:www-data -R /var/www/html/loganalyzer/