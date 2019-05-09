#! /bin/bash
  
#Nom du fichier à surveiller
  NOM_FICHIER="/etc/resolv.conf"
# Date de la dernière modification du fichier ci-dessus
  DERNIERE_MODIF=$(date -r ${NOM_FICHIER} '+%d/%m/%Y %H:%M')
# Adresse mail de l'administrateur ou de la personne à prévenir
  MAIL_ADMIN="miel@chg-web.com"
# Date a laquelle le fichier à bien été modifié par vos soins
  DATE_MODIF="14/12/2014 11:50"
# Test si les deux dates sont identiques
 if [ "${NOM_FICHIER}" != "${DATE_MODIF}" ]; then
	 # Si différente, envoi du mail d'alerte
	CORPS_MESSAGE="Alerte, le fichier ${NOM_FICHIER} a été modifié le ${DERNIERE_MODIF}";
	echo "$CORPS_MESSAGE" | mail -s "Alerte surveillance modification de fichier" "${MAIL_ADMIN}";
fi


#Apres avoir cree ce fichier 04.sh, on edite crontab avec "crontab -e" et on met "0 0 * * * path/04.sh"
