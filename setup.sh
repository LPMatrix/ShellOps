#!/bin/bash


echo "*******************************
# ShellOps                    #
# A tool to setup your server #
*******************************"

PS3='Please enter your choice or enter "3" to quit: '
options=("LAMP"  "LNMP" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "LAMP")
            sleep 1
            echo "Please wait while we install $opt"
            ./$opt/install.sh
        ;;
        "LNMP")
            sleep 1
            echo "Please wait while we install $opt"
            sleep 1
            ./$opt/install.sh
        ;;
        
        "Quit")
            break
        ;;
        *) echo "invalid option $REPLY";;
    esac
done

PS4='Do you want to install ssl certificate? '
options=("Yes", "No")
select opt in "${options[@]}"
do
    case $opt in
        "Yes" )
            sleep 1
            sudo add-apt-repository ppa:certbot/certbot
            sleep 1
            sudo apt install python-certbot-apache
            sleep 1
            sudo certbot --apache
            ;;
        "No")
            break
        ;;
    esac
done