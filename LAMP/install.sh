#!/bin/bash



echo "***** Installing Apache, MySQL and PHP for Debian and Ubuntu OS ********"
sleep 2

echo "***** Updating services ****"
sleep 3
sudo apt-get update


echo "Checking for Apache Server"
sleep 2
if [ $(find /etc/init.d -name apache2) ]
then
    echo " You have apache2 server installed! "
else
    echo " Installing Apache2 Server"
    sleep 2
    sudo apt-get install apache2 -y
    echo " Apache server has been installed! "
    
fi

echo  "Checking for MySQL Server"
sleep 2
if [ $(find /etc/init.d -name mysql) ]
then
    echo " You have MySQL server installed! "
else
    echo " Installing MySQL Server"
    sleep 2
    sudo apt install mysql-server -y
    echo  " MySQL server has been installed! "
    
fi

echo  "Checking for PHP"
sleep 2
if [ $(sudo find /etc/alternatives/ -name php) ]
then
    echo " You have PHP installed! "
else
    echo " Installing PHP"
    sleep 2
    sudo apt install php libapache2-mod-php php-mysql -y
    echo  "  PHP has been installed! "
    
fi

echo Done