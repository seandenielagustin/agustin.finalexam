#!/bin/sh

# install httpd
yum install -y httpd

# start httpd
systemctl start httpd

# firewall
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --permanent --add-port=443/tcp
firewall-cmd --reload

# enable httpd
systemctl enable httpd

# install epel
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

# install remi
yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm

# install utils
yum install -y yum-utils

# enable remi
yum-config-manager --enable remi-php56

# install php
yum install -y php php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo

# restart httpd
systemctl restart httpd

# install mariadb
yum install -y mariadb-server mariadb

# start mariadb
systemctl start mariadb

# install mysql
mysql_secure_installation

# enable mariadb
systemctl enable mariadb

# root
mysql -u root -p