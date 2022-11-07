# coaching_europapark
Exercice de coaching formatif sur le thème du parc d'attraction Europapark
## 1.	Travail préliminaire 
Récupérez le projet en réalisant un clone de ce repository. La base de données MySQL se trouve dans le répertoire « data ». 
Renommez le projet et le dossier avec votre nom (Ex: 223_europapark_ramalho)

## 2.	Fonctionnement de l’application
- L’application affiche les attractions d'EuropaPark de la base de données. 
- À l’aide de la ListView, vous pouvez **afficher** les attractions et cliquer sur le bouton "Afficher" pour afficher le détail de l'attraction dans une nouvelle fenêtre
- Les attractions doivent être **ordré par** nom de l'attraction, pour cela ajouter une nouvelle méthode dans le JpaDao: **public List\<E\> lireListe(String order)**
- Vous pouvez **effacer** l'attraction courante. 
- Vous pouvez **ajouter** une nouvelle attraction
- Vous pouvez **modifier** l'attraction courante
- Ajouter un **nouveau champ** dans la base de données pour gérer la concurrence 
- Le filtre **"Filtre par lieu"** permet de sélectionner que les attractions qui sont localisées dans la zone en question et le filtre **"Filtre par sensation"** permet de sélectionner que les attractions par rapport au niveau de sensation. Il faut écrire un **filtre en JPQL**.
- Le programme doit correctement se terminer par l’appui du bouton rouge **"Fermer"** de la fenêtre ou du menu Fichier Quitter.
 
## 3.	Fonctionnement interne
- Vous devez utiliser l’API JPA de EclipseLink pour accéder à la base de données.
- La version reçue possède un IHM en grande partie déjà programmé et la couche **JpaDao** est fonctionnelle.
- En cas de problème de concurrence lors de la modification d'une attraction, un en-tête de **message adapté** à la situation ainsi que l’erreur JPA doivent être affichés à l’utilisateur. 
- Il est nécessaire de rajouter une méthode dans JpaDao pour le filtre. Voici une proposition de signature de méthode : **public List\<E\> filtrer(String nomChamp, Object valeur);**. Cette méthode doit être utilisable pour d’autres filtres simples (avec une condition)
- Il y a deux fenêtres dans l'application, le MainCtrl ouvre l'EditCtrl avec la méthode ouvrirFenetre().

4.	Maquette de l’application
![image](https://user-images.githubusercontent.com/3630367/200251156-de29c0f7-b603-4cd3-ab00-8eb0b892c55a.png)
Fig 1 : Fenêtre de démarrage : liste des attractions

![image](https://user-images.githubusercontent.com/3630367/200251197-fc240c06-92c5-4ba0-925c-58443109fb73.png)
Fig 2 : Fenêtre d'affichage de l'attraction

En cliquant sur Afficher, il n'y a que le bouton OK
![image](https://user-images.githubusercontent.com/3630367/200251242-e63a82e9-3d46-4c81-9425-446e272041fb.png)

En cliquant sur Modifier ou Ajouter, il y a le bouton Sauver et Annuler  
![image](https://user-images.githubusercontent.com/3630367/200251276-65c01c01-0171-47c3-a8c9-c72cde847d11.png)

5.	Tests
Je vous demande de faire deux **tests unitaires** (voir ci-dessous) sur deux méthodes que vous avez rajoutées dans la classe DbWorker. Pour le deuxième test, vous devez prendre le niveau de sensation Faibles.
![image](https://user-images.githubusercontent.com/3630367/200251315-bf2d4f35-d7db-4afe-b81c-7d85a53f2384.png)


 

