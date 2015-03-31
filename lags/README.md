LAGS
====

[source](http://acmicpc-live-archive.uva.es/nuevoportal/data/problem.php?p=2942)

ABEAS Corp est une toute petite entreprise qui poss�de un seul avion. Les clients d'ABEAS Corp sont de grandes compagnies qui louent l'avion pour augmenter leur capacit� � l'occasion.

Les clients envoient des commandes de location qui consistent en un intervalle de temps, et le prix qu'ils sont pr�ts � payer pour louer l'avion durant cet intervalle.

Les commandes de tous les clients sont connues � l'avance. Bien s�r, toutes les commandes ne pourront pas �tre honor�es, et certaines devront �tre d�clin�es. Eug�ne LAWLER, le Chief Scientific Officer d'ABEAS Corp aimerait maximiser le profit de l'entreprise.

On vous demande de calculer une solution optimale.

Consid�rez par exemple le cas o� la compagnie a 4 commandes :

    * AF514 : heure de d�part 0, dur�e 5, prix 10
    * CO5 : heure de d�part 3, dur�e 7, prix 14
    * AF515 : heure de d�part 5, dur�e 9, prix 7
    * BA01 : heure de d�part 6, dur�e 9, prix 8 

La solution optimale consiste � d�cliner CO5 et AF515, et le revenu est de 10+8=18. Remarquez qu'une solution � partir de AF514 et AF515 est faisable (l'avion serait lou� sans interruption de 0 � 14) mais non-optimale.

Entr�e

L'entr�e consiste en plusieurs cas de test, chacun suivant la description ci-dessous. Une ligne vide s�pare chaque cas de test.

Chaque cas de test est d�crit par un fichier contenant toutes les informations concern�es : la premi�re ligne contient le nombre n de commandes ( n <= 3000). Cette ligne est suivie de n lignes. Chacune de ces lignes d�crit une commande et contient l'identifiant de la commande (moins de 80 caract�res, sans espaces) suivie de trois valeurs enti�res : le temps de d�part, la dur�e de la location et le prix que le client est pr�t � payer pour cette commande (des espaces sont utilis�s comme s�parateurs). On suppose que les commandes ont une dur�e strictement positive. Vous pouvez supposer que les heures, dur�es et prix sont strictement inf�rieurs � 231.

Sortie

Pour chaque cas de test, il vous est demand� de calculer une solution optimale pour chaque fichier en entr�e. Votre programme doit �crire le prix total pay� par les compagnies.

Les sorties de deux cas de tests cons�cutifs seront s�par�s par une ligne blanche.

Exemple d'entr�e

 4
 AF514 0 5 10
 CO5 3 7 14
 AF515 5 9 7
 BA01 6 9 8

Exemple de sortie

 18