#!/bin/sh

# install httpd
echo "Installing HTTPD"
yum install -y httpd

# start httpd
echo "Starting HTTPD"
systemctl start httpd.service

# firewall
echo "Adding Firewall Rules"
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --permanent --add-port=443/tcp

# reloading firewall
firewall-cmd --reload

# enable http service
echo "Enabling HTTPD"
systemctl enable httpd.service

#install ferodara
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

# install remi
echo "Installing Remi"
yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm

# install utils
echo "Installing Utils"
yum install -y yum-utils

# enable remi
echo "Enabling remi"
yum-config-manager --enable remi-php56

# install PHP 
echo "Installing PHP-MCRYPT PHP-CLI PHP-CURL PHP-LDAP PHP-ZIP PHP-FILEINFO"
yum install -y php php-mcrypt php-cli php-gd php-curl php-ldap php-zip php-fileinfo

# restart httpd service
echo "Restarting httpd service"
systemctl restart httpd.service

# install mariadb
echo "Installing MariDB"
yum install -y mariadb-server mariadb

# enable mariadb
echo "Enabling MariaDB"
systemctl start mariadb

# Running simple security script
echo "Running simple security script"
echo -e "\nY\nSEAN\nSEAN\nY\nY\nY\nY\n " | mysql_secure_installation

# enable mariadb
echo "Enabling MariaDB"
systemctl enable mariadb

# install php
echo "Installing PHP"
echo "Installing -y php php-mysql

# install PHP-FPM
echo "Installing PHP-FPM
yum install -y php-fpm

#This command will create a database named "wordpress"
mysql -u root -pSEAN -e "CREATE DATABASE wordpress;"

#This command will create a new MySQL user account and grants privileges to database "wordpress"(commands to input)
mysql -u root -pSEAN -e "CREATE USER wp_user@localhost IDENTIFIED BY 'seanagustin';"
mysql -u root -pSEAN -e "GRANT ALL PRIVILEGES ON wordpress.* TO wp_user@localhost IDENTIFIED BY 'seanagustin';"
mysql -u root -pSEAN -e "FLUSH PRIVILEGES;"

# install wordpress 
echo "Installing wordpress"
yum install -y php-gd

# restart apache
echo "Restarting Apache"
service httpd restart

# install wget
echo "installing wget"
yum install -y wget

# install tar
echo "installing tar"
yum install -y tar

# wget
echo "going to wget"
wget http://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz

# updating php
echo "Updating php mysql"
yum install -y php php-mysql

# install rsync
echo "Installing Rsync"
yum install -y rsync

# rsync to worpress
echo "opening html foler"
rsync -avP ~/wordpress/ /var/www/html/

# going to html
echo "going to html"
cd /var/www/html/

# mkdir wp-content
echo "Creating directory"
mkdir /var/www/html/wp-content/uploads

# chown apache
echo "Changing the owner"
chown -R apache:apache /var/www/html*

# copy wp-config
echo "Copying wp-config"
cat wp-config-sample.php | sed -e 's/database_name_here/wordpress/g' | sed -e 's/username_here/wp_user/g' | sed -e 's/password_here/seanagustin/g' > wp-config.php

# restart HTTPD
echo "Restarting HTTPD SERVICES"
systemctl restart httpd.service
