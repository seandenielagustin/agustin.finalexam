#!/bin/sh

# Set the date format.
NOW=$(date +"%Y-%m-%d-%H%M")

# MySQL database credentials
DB_USER="wordpressuser"
DB_PASS="seanagustin"
DB_NAME="wordpress"
DB_FILE="cd /opt/backups"

# create folder in /opt
mkdir /opt/backups

# going back to cd /opt/backup
cd /opt/backups

# exporting the wordpress database 
mysqldump -u root -pSEAN wordpress > wordpress${date}.sql

# compress the wordpress
gzip -cv wordpress${date}.sql > wordpress${date}.gz 

