-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: examen
-- ------------------------------------------------------
-- Server version	5.5.40-0+wheezy1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `detalle_pregutas_respuestas`
--
DROP DATABASE IF EXISTS examen;
CREATE DATABASE examen;
use examen;

DROP TABLE IF EXISTS `detalle_pregutas_respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_pregutas_respuestas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Pregunta` int(11) NOT NULL,
  `ID_Respuesta` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `unique_ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pregutas_respuestas`
--

LOCK TABLES `detalle_pregutas_respuestas` WRITE;
/*!40000 ALTER TABLE `detalle_pregutas_respuestas` DISABLE KEYS */;
INSERT INTO `detalle_pregutas_respuestas` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,2,5),(6,2,6),(7,3,7),(8,3,8),(9,3,9),(10,4,10),(11,4,11),(12,4,12),(13,5,13),(14,5,14),(15,5,15),(16,6,16),(17,6,17),(18,6,18),(19,6,19),(20,7,20),(21,7,21),(22,7,22),(23,8,23),(24,8,24),(25,8,25),(26,8,26),(27,8,27),(28,9,28),(29,9,29),(30,9,30),(31,9,31),(32,10,32),(33,10,33),(34,10,34),(35,10,35),(36,10,36),(37,11,37),(38,11,38),(39,11,39),(40,11,40);
/*!40000 ALTER TABLE `detalle_pregutas_respuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntas`
--

DROP TABLE IF EXISTS `preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preguntas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) NOT NULL,
  `ID_respuesta` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `unique_ID` (`ID`),
  KEY `ID_respuesta` (`ID_respuesta`),
  CONSTRAINT `preguntas_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_10` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_11` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_12` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_13` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_14` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_15` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_16` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_17` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_18` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_19` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_2` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_20` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_21` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_22` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_3` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_4` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_5` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_6` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_7` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_8` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  CONSTRAINT `preguntas_ibfk_9` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
INSERT INTO `preguntas` VALUES (1,'¿Quién es el padre de la patria?',3),(2,'¿Qué es el grito de Dolores?',5),(3,'¿En qué año inicia  la Independencia de México?',9),(4,'¿Primer presidente de México?',10),(5,'¿Qué presidente de México se hacía llamar su santísima serenidad?',15),(6,'¿En qué película de Walt Disney están basadas las versione del S.O. Debian? ',18),(7,'¿Siglas de programación orientada a objetos? ',21),(8,'¿Nombre la de versión 3 de Android?  ',26),(9,'¿OS para móviles, aparte de Android, iSO, Windows Phone?',30),(10,'¿Qué empresa hiso el primer Servidor WEB?',34),(11,'¿Cuanto es 1024x2?',39);
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuestas`
--

DROP TABLE IF EXISTS `respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respuestas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuestas`
--

LOCK TABLES `respuestas` WRITE;
/*!40000 ALTER TABLE `respuestas` DISABLE KEYS */;
INSERT INTO `respuestas` VALUES (1,'José María Morelos '),(2,'Ignacio Allende'),(3,'Miguel Hidalgo '),(4,'Una celebración'),(5,'Un acto de Inicio  de guerra '),(6,'Una conferencia'),(7,'1910'),(8,'1941'),(9,'1810'),(10,'Guadalupe Victoria'),(11,'Vicente Guerrero'),(12,'Anastasio Bustamante  '),(13,'Manuel Gómez Pedraza'),(14,'Valentín Gómez Farías'),(15,'Antonio López de Santa Ana'),(16,'Buscando a Nemo'),(17,'WALL*E'),(18,'Toy Story'),(19,'Cenicienta'),(20,'O2P'),(21,'POO'),(22,'PO'),(23,'Gingerbread'),(24,'Froyo'),(25,'KitKat'),(26,'Honeycomb'),(27,'Lollipop'),(28,'Solaris'),(29,'Fedora'),(30,'FireFox OS'),(31,'Debian'),(32,'Microsoft Corporation'),(33,'Apple Inc'),(34,'NeXT Computer'),(35,'Oracle Corporation'),(36,'IBM Corp'),(37,'1024'),(38,'2136'),(39,'2048'),(40,'512');
/*!40000 ALTER TABLE `respuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nomb` varchar(50) DEFAULT NULL,
  `App` varchar(50) DEFAULT NULL,
  `Apm` varchar(50) DEFAULT NULL,
  `usr` varchar(20) DEFAULT NULL,
  `psw` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `calficacion` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `unique_ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Cruz Alfredo','Bibiano','Montaño','cruz','qwerty',1,1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-05 13:51:05
