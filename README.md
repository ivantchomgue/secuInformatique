secuInformatique
================

Projet de sécurité informatique 2013

## Membres du groupe

* Élie Bouttier
* Ivan Tchomgue
* Liangqi Gong

## Livrables ou sources

[ftp des sources du projet](http://diamant.bde.enseeiht.fr/secu0/)

## Outils et commandes nécessaires

`exiftool` pour l'analyse des images

`ls -l` pour vérifier les dernières dates de modifications d'un fichier

`file` pour connaître le type réel d'un fichier

`xxd` convertit en représentation hexadécimale et inversement

À partir de ces 3 commandes on tire les premières conclusions suivantes

* le fichier **the whirling dancers.mp3** n'est pas un fichier audio mp3 comme son extension
l'indique. C'est un fichier de données (*data file*)
* les fichiers du scellé ont été modifiés pour la dernière fois le **06 Octobre 2010**
* Liste musique.xls: 

	Composite Document File V2 Document, Little Endian, Os:
	Windows, Version 6.1, Code page: 1252, Author: Microsoft Corporation, Last Saved By:
	RMDSIC, Name of Creating Application: Microsoft Excel, Last Printed: Tue Sep 27 17:54:19
	2011, Create Time/Date: Sun Oct 20 12:03:58 1996, Last Saved Time/Date: Tue Sep 27
	17:55:10 2011, Security: 0
* La Photo a été prise par un Apple iphone 3GS, sans flash,  le 01 octobre 2010 à 18:55:59 et modifiée
  le 06 octobre 2010 à 21:29:06+02:00 (heure internationale GMT et 23:29:06 heure locale)
 Il se trouvait donc au fuseau horaire GMT+2 (heure d'été) au moment de la capture de la
photo.
