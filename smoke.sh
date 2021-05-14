#!/bin/bash
apt install smokeping -y
apt install apache2 -y
apt install sendmail -y
a2enmod cgi
service apache2 restart


