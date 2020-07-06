#!/bin/bash



echo "***** Installing Nginx, MySQL and PHP for Debian and Ubuntu OS ********"
sleep 2

echo "***** Updating services ****"
sleep 3
sudo apt-get update


echo  "Checking for Nginx Server"
sleep 2
if [ $(find /etc/init.d -name nginx) ]
then
    echo  " You have nginx server installed! "
else
    echo  " Installing Nginx Server"
    sleep 2
    sudo apt-get install nginx -y
    echo   " Nginx server has been installed! "
    
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
