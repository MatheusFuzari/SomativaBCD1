-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: formativaHogwarts
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `tarefas`
--

DROP TABLE IF EXISTS `tarefas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarefas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `descricao` text NOT NULL,
  `solicitanteFK` bigint NOT NULL,
  `localFK` bigint NOT NULL,
  `dataAbertura` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dataPrazo` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `solicitanteFK` (`solicitanteFK`),
  KEY `localFK` (`localFK`),
  CONSTRAINT `tarefas_ibfk_1` FOREIGN KEY (`solicitanteFK`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `tarefas_ibfk_2` FOREIGN KEY (`localFK`) REFERENCES `locais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarefas`
--

LOCK TABLES `tarefas` WRITE;
/*!40000 ALTER TABLE `tarefas` DISABLE KEYS */;
INSERT INTO `tarefas` VALUES (1,'Cabo de rede','Cabo de rede parou de funcionar',1,1,'2023-05-29 23:42:43','2023-06-01 07:30:00'),(2,'Computador Parou','Um computador desligou repentinamente e não liga mais',1,2,'2023-05-29 23:42:43','2023-06-14 11:30:00'),(3,'Ar condicionado não gela','O ar condicionado desta sala não está mais gelando, sem motivo aparente',2,2,'2023-05-29 23:42:43','2023-06-07 15:34:00'),(4,'Projeto avermelhado','O projetor nesta sala não tem mais a cor original',2,3,'2023-05-29 23:42:43','2023-05-31 19:23:00'),(5,'Cadeira do professor quebrada','Ao cheagar a sala a cadeira estava quebrada',2,4,'2023-05-29 23:42:43','2023-06-16 12:23:00'),(6,'Bandeira sumiu','A bandeira do Brasil sumiu',3,2,'2023-05-30 06:28:00','2023-05-31 17:47:00');
/*!40000 ALTER TABLE `tarefas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-29 22:49:32
