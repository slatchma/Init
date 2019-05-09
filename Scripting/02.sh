#!/bin/bash
apt-get update >> /var/log/update_script.log
ap-get upgrade >> /var/log/update_script.log

#Apres avoir cree ce fichier 02.sh, on edite crontab avec "crontab -e" et on met "0 4 * * * path/02.sh"
