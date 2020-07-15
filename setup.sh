#!/bin/bash


echo 
"*****************************
# ShellOps                    #
# A tool to setup your server #
******************************"

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