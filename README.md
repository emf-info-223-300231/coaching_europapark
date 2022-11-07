# coaching_europapark
Exercice de coaching formatif sur le thème du parc d'attraction Europapark
1.	Travail préliminaire 

Récupérez le fichier « Som_eleve ». La base de données MySQL se trouve dans le répertoire « data ». Renommez le projet et le dossier avec votre nom de login. 


2.	Fonctionnement de l’application
•	L’application affiche les attractions d'EuropaPark de la base de données. 
•	À l’aide de la ListView, vous pouvez afficher les attractions et cliquer sur le bouton "Afficher" pour afficher le détail de l'attraction dans une nouvelle fenêtre
•	Les attractions doivent être ordré par nom de l'attraction, pour cela ajouter une nouvelle méthode dans le JpaDao: public List<E> lireListe(String order)
•	Vous pouvez effacer l'attraction courante. 
•	Vous pouvez ajouter une nouvelle attraction
•	Vous pouvez modifier l'attraction courante
•	Ajouter un nouveau champ dateModif dans la base de données pour gérer la concurrence 
•	Le filtre "Filtre par lieu" permet de sélectionner que les attractions qui sont localisées dans la zone en question et le filtre "Filtre par sensation" permet de sélectionner que les attractions par rapport au niveau de sensation. Il faut écrire un filtre en JPQL.
•	Le programme doit correctement se terminer par l’appui du bouton rouge « Fermer » de la fenêtre ou du menu Fichier > Quitter.


 
3.	Fonctionnement interne
•	Vous devez utiliser l’API JPA de EclipseLink pour accéder à la base de données.
•	La version reçue possède un IHM en grande partie déjà programmé et la partie JpaDao est fonctionnelle.
•	En cas de problème de concurrence lors de la modification d'une attraction, un en-tête de message adapté à la situation ainsi que l’erreur JPA doivent être affichés à l’utilisateur. 
•	Il est nécessaire de rajouter une méthode dans JpaDao pour le filtre. Voici une proposition de signature de méthode : public List<E> filtrer(String nomChamp, Object valeur);. Cette méthode doit être utilisable pour d’autres filtres simples (avec une condition)
•	Il y a deux fenêtres dans l'application, le MainCtrl ouvre l'EditCtrl avec la méthode ouvrirFenetre().

4.	Maquette de l’application

 

Fig 1 : Fenêtre de démarrage : liste des attractions

  

Fig 2 : Fenêtre d'affichage de l'attraction

En cliquant sur Afficher, il n'y a que le bouton OK  

En cliquant sur Modifier ou Ajouter, il y a le bouton Sauver et Annuler  

5.	Tests
Je vous demande de faire deux tests unitaires (voir ci-dessous) sur deux méthodes que vous avez rajoutées dans la classe DbWorker. Pour le deuxième test, vous devez prendre le niveau de sensation Faibles. 

 

