CREATE DATABASE  IF NOT EXISTS `223_europapark` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `223_europapark`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: 223_europapark
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_attraction`
--

DROP TABLE IF EXISTS `t_attraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_attraction` (
  `PK_attraction` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `age_min` int DEFAULT NULL,
  `taille_min` int DEFAULT NULL,
  `FK_sensation` int DEFAULT NULL,
  `FK_lieu` int DEFAULT NULL,
  `FK_saison` int DEFAULT NULL,
  `annee` int DEFAULT NULL,
  `duree` double DEFAULT NULL,
  `capacite` int DEFAULT NULL,
  `capacite_horaire` int DEFAULT NULL,
  `FK_constructeur` int DEFAULT NULL,
  PRIMARY KEY (`PK_attraction`),
  KEY `FK_Constructeur_idx` (`FK_constructeur`),
  KEY `FK_Saison_idx` (`FK_saison`),
  KEY `FK_Sensation_idx` (`FK_sensation`),
  KEY `FK_Lieu_idx` (`FK_lieu`),
  CONSTRAINT `FK_Constructeur` FOREIGN KEY (`FK_constructeur`) REFERENCES `t_constructeur` (`PK_constructeur`),
  CONSTRAINT `FK_Lieu` FOREIGN KEY (`FK_lieu`) REFERENCES `t_lieu` (`PK_lieu`),
  CONSTRAINT `FK_Saison` FOREIGN KEY (`FK_saison`) REFERENCES `t_saison` (`PK_saison`),
  CONSTRAINT `FK_Sensation` FOREIGN KEY (`FK_sensation`) REFERENCES `t_sensation` (`PK_sensation`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_attraction`
--

LOCK TABLES `t_attraction` WRITE;
/*!40000 ALTER TABLE `t_attraction` DISABLE KEYS */;
INSERT INTO `t_attraction` VALUES (1,'À LA DÉCOUVERTE D\'ATLANTIS','Une aventure interactive à la découverte d’Atlantis ! A bord de sous-marins, parcourez les fonds de l’océan à la recherche de la cité engloutie. Les aventuriers les plus courageux utiliseront leurs lasers pour récolter des points.',0,0,2,1,2,2007,6,2,1240,1),(2,'AFRICAN QUEEN','Faites une croisière à bord de nos bateaux à vapeur sur le grand lac d\'Europa-Park et découvrez un village africain et de nombreux animaux. Les enfants adoreront les pistolets à eau à bord du bateau.',0,0,1,2,2,1975,5.1,40,520,NULL),(3,'ARTHUR','Une découverte époustouflante à travers le Royaume des Minimoys. Vivez d’innombrables effets spéciaux, tout au long de votre voyage indoor comportant un passage en extérieur.',4,100,3,3,2,2014,4.3,12,1100,1),(4,'ATLANTICA SUPERSPLASH','Tels les grands navigateurs et explorateurs, les visiteurs montent à bord des navires pour une escapade éclaboussante avec « Atlantica SuperSplash ». ',3,100,4,4,1,2005,3.35,16,1400,1),(5,'BLUE FIRE MEGACOASTER','Un voyage spectaculaire à la découverte de falaises abruptes et de paysages époustouflants vous attend ! À bord de blue fire Megacoaster powered by Nord Stream 2, vous serez catapultés de 0 à 100 km/h en 2,5 secondes et vous filerez à toute vitesse en faisant des figures impressionnantes à travers les roches escarpées de l’Islande.',7,130,5,5,2,2009,2.2,20,1450,1),(6,'BOBSLEIGH SUISSE','Dans le Bobsleigh Suisse, les bobs foncent librement sur une piste de glace. Ces luges de deux places s’élancent à une vitesse à couper le souffle après une montée à 20 mètres de haut. ',6,120,4,11,2,1985,2.05,12,1220,1),(7,'EURO-TOWER','Europa-Park vu de tout en haut. Avec une hauteur de 75 mètres l\'Euro-Tower vous fera bénéficier d\'une vue panoramique sur tout le parc.',0,0,2,7,2,1983,3.37,50,600,3),(8,'EURO-MIR','L’Euro-Mir - Une expérience renversante !',8,130,5,6,2,1997,5,16,1600,1),(9,'PEGASUS','Au beau milieu des ruines et d’un site archéologique au sein du quartier grec d’Europa-Park, les petits visiteurs pourront faire leur toute première escapade à bord d’un grand huit.',4,100,4,1,2,2006,2.11,18,1000,1),(10,'LASER ADVENTURE','Les jeunes talents de la fédération secrète « Adventure Club of Europe » sont à la recherche d’un mystérieux livre rempli de codes.',10,0,3,12,2,2020,NULL,NULL,NULL,NULL),(12,'PIRATES DE BATAVIA','Accompagnez Bartholomeus van Robbemond dans sa quête de la légendaire dague de Batavia, le « Tigre de Feu ». Selon la légende, celui qui possède la dague de Batavia deviendra invulnérable.',0,0,1,13,2,2020,8,16,1800,1),(13,'SILVER STAR','Silver Star est l’un des plus grands et plus hauts grands huit en acier d’Europe et vous propose une escapade décoiffante et vertigineuse.',11,140,5,7,2,2002,3,36,1620,2),(14,'VOLETARIUM','Le rêve de voler devient réalité dans le quartier allemand ! Les visiteurs peuvent se réjouir d’entamer un voyage fantastique au dessus de l\'Europe.',4,100,3,10,2,2017,NULL,10,1400,NULL),(15,'WODAN - TIMBURCOASTER','Le premier et gigantesque grand huit en bois d’Europa-Park ! Avec un parcours de 1050 m, une hauteur de 40 m, une vitesse dépassant les 100 km/h, une accélération maximale de 3,5 G, des virages serrés et des phases d’airtime, WODAN-Timburcoaster garantit des sueurs froides même au plus intrépides d’entre-nous.',6,120,5,5,2,2012,2.3,24,1250,4);
/*!40000 ALTER TABLE `t_attraction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_constructeur`
--

DROP TABLE IF EXISTS `t_constructeur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_constructeur` (
  `PK_constructeur` int NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PK_constructeur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_constructeur`
--

LOCK TABLES `t_constructeur` WRITE;
/*!40000 ALTER TABLE `t_constructeur` DISABLE KEYS */;
INSERT INTO `t_constructeur` VALUES (1,'Mack Rides'),(2,'Bolliger & Mabillard'),(3,'Intamin'),(4,'GCI');
/*!40000 ALTER TABLE `t_constructeur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_lieu`
--

DROP TABLE IF EXISTS `t_lieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_lieu` (
  `PK_lieu` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PK_lieu`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_lieu`
--

LOCK TABLES `t_lieu` WRITE;
/*!40000 ALTER TABLE `t_lieu` DISABLE KEYS */;
INSERT INTO `t_lieu` VALUES (1,'Grèce'),(2,'Univers de l\'aventure'),(3,'Le Royaume des Minimoys'),(4,'Portugal'),(5,'Islande'),(6,'Russie'),(7,'France'),(8,'Scandinavie'),(9,'Autriche'),(10,'Allemagne'),(11,'Suisse'),(12,'Angleterre'),(13,'Hollande');
/*!40000 ALTER TABLE `t_lieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_saison`
--

DROP TABLE IF EXISTS `t_saison`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_saison` (
  `PK_saison` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PK_saison`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_saison`
--

LOCK TABLES `t_saison` WRITE;
/*!40000 ALTER TABLE `t_saison` DISABLE KEYS */;
INSERT INTO `t_saison` VALUES (1,'Été'),(2,'Hivers et été');
/*!40000 ALTER TABLE `t_saison` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sensation`
--

DROP TABLE IF EXISTS `t_sensation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_sensation` (
  `PK_sensation` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `niveau` int DEFAULT NULL,
  PRIMARY KEY (`PK_sensation`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sensation`
--

LOCK TABLES `t_sensation` WRITE;
/*!40000 ALTER TABLE `t_sensation` DISABLE KEYS */;
INSERT INTO `t_sensation` VALUES (1,'Faibles',1),(2,'Relativement faibles',2),(3,'Modérées',3),(4,'Fortes',4),(5,'Très fortes',5);
/*!40000 ALTER TABLE `t_sensation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-28 22:56:49
