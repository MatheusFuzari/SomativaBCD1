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
-- Table structure for table `tarefa_status`
--

DROP TABLE IF EXISTS `tarefa_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarefa_status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` enum('Aberta','Em Andamento','Concluída','Encerrada') NOT NULL DEFAULT 'Aberta',
  `tarefaFK` bigint NOT NULL,
  `dataEtapa` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `coment` text,
  `responsavelFK` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tarefaFK` (`tarefaFK`),
  KEY `responsavelFK` (`responsavelFK`),
  CONSTRAINT `tarefa_status_ibfk_1` FOREIGN KEY (`tarefaFK`) REFERENCES `tarefas` (`id`),
  CONSTRAINT `tarefa_status_ibfk_2` FOREIGN KEY (`responsavelFK`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarefa_status`
--

LOCK TABLES `tarefa_status` WRITE;
/*!40000 ALTER TABLE `tarefa_status` DISABLE KEYS */;
INSERT INTO `tarefa_status` VALUES (1,'Aberta',1,'2023-05-29 23:42:50',NULL,2),(2,'Em Andamento',1,'2023-05-29 22:12:32','Anotado!',2),(3,'Aberta',2,'2023-05-29 23:42:50',NULL,2),(4,'Aberta',3,'2023-05-29 23:42:50',NULL,3),(5,'Em Andamento',3,'2023-06-01 12:45:23','Desmontando o Ar',3),(6,'Concluída',3,'2023-06-03 18:32:12','Remontagem feita, tudo certo',3),(7,'Aberta',4,'2023-05-29 23:42:50',NULL,2),(8,'Em Andamento',4,'2023-05-29 21:35:32','Retirando o projetor',3),(9,'Concluída',4,'2023-06-30 23:59:59','Projetor apresentando normalmente',4),(10,'Aberta',5,'2023-05-29 23:42:50',NULL,3),(12,'Encerrada',4,'2023-07-01 12:35:59','Projetor normalizado',2);
/*!40000 ALTER TABLE `tarefa_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-29 22:49:34
