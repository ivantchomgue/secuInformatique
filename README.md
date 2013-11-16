secuInformatique
================

Projet de sécurité informatique 2013

## Membres du groupe

* Élie Bouttier
* Ivan Tchomgue
* Liangqi Gong

## Livrables ou sources

[ftp des sources du projet](http://diamant.bde.enseeiht.fr/secu/)

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
 Il se trouvait donc au fuseau horaire GMT+2 (heure d'été) au moment de la modification de la
photo.

En ouvrant le fichier **the whirling dancers.mp3** avec un éditeur tel que **vim** par
exemple, et en appliquant la commande `:%!xxd` à ce fichier, on se rend compte que le
fichier contient l'indication **JFIF** (*JPEG File Interchange Format*). Il s'agirait donc
d'une image JPEG dont **l'entête a été modifiée!!!**

[Le site suivant](http://sylvain.fish.free.fr/JPEG_SIZE/Read_jpeg_size.htm) nous donne
plus d'informations relatives à la structure d'un fichier JPEG.

Il en ressort principalement que :
* Tous fichiers JPEG doivent commencer par **0xff 0xd8** c'est le **SOF** (*Start of Image*)
* Ils sont ensuite composés de blocs(*frames*) qui commencent par **0xff** qui marque le
  début d'un bloc
* Ensuite vient l'indicateur de type de bloc **0xe0** (*Frame Identifier*)
* Et la longueur du bloc écrite sur deux octets.

Ce qui donne par exemple: 
	00000000: ffd8 ffe0 0010

qui est une image dont le premier bloc est identifié par **e0** et de llongueur **0x10** soit
16 octets.

En appliquant ceci au fihier binaire **the whirling dancers.mp3** 
c'est-à dire en remplaçant les premiers caractères par **00000000: ffd8 ffe1** soit en binaire
la séquence **ÿØÿà**, et en renommant le fichier en **the whirling dancers.jpg** on trouve
enfin l'image cachée sous cette suite de chiffres.

On peut alors visualiser l'image ci-dessous dont les informations complètent celles de la
photo trouvée dans le scellé
 
![Alt text](thewhirlingdancers.jpg)
