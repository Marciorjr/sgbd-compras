-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: compras_empresa
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `solicitantes`
--

DROP TABLE IF EXISTS `solicitantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitantes` (
  `ID_SOLICITANTE` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(100) NOT NULL,
  `DEPARTAMENTO` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `TELEFONE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_SOLICITANTE`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitantes`
--

LOCK TABLES `solicitantes` WRITE;
/*!40000 ALTER TABLE `solicitantes` DISABLE KEYS */;
INSERT INTO `solicitantes` VALUES (1,'Carlos Oliveira','Manutenção','carlos.oliveira@empresa.com','(84) 99111-0001'),(2,'Ana Santos','Operações','ana.santos@empresa.com','(84) 99111-0002'),(3,'João Mendes','Segurança','joao.mendes@empresa.com','(84) 99111-0003'),(4,'Juliana Braga','Almoxarifado','juliana.braga@empresa.com','(84) 99111-0004'),(5,'Pedro Lima','Recursos Humanos','pedro.lima@empresa.com','(84) 99111-0005'),(6,'Renata Pires','Financeiro','renata.pires@empresa.com','(84) 99111-0006'),(7,'Fábio Costa','Logística','fabio.costa@empresa.com','(84) 99111-0007'),(8,'Mariana Souza','Engenharia','mariana.souza@empresa.com','(84) 99111-0008'),(9,'Lucas Rocha','Manutenção','lucas.rocha@empresa.com','(84) 99111-0009'),(10,'Isabela Nunes','Compras','isabela.nunes@empresa.com','(84) 99111-0010'),(11,'Rodrigo Alves','Operações','rodrigo.alves@empresa.com','(84) 99111-0011'),(12,'Tatiane Freitas','Segurança','tatiane.freitas@empresa.com','(84) 99111-0012'),(13,'Felipe Cardoso','Almoxarifado','felipe.cardoso@empresa.com','(84) 99111-0013'),(14,'Priscila Ramos','Manutenção','priscila.ramos@empresa.com','(84) 99111-0014'),(15,'Bruno Fernandes','TI','bruno.fernandes@empresa.com','(84) 99111-0015'),(16,'Beatriz Mota','Compras','beatriz.mota@empresa.com','(84) 99111-0016'),(17,'Samuel Pereira','Logística','samuel.pereira@empresa.com','(84) 99111-0017'),(18,'Camila Guedes','Engenharia','camila.guedes@empresa.com','(84) 99111-0018'),(19,'Thiago Silva','Financeiro','thiago.silva@empresa.com','(84) 99111-0019'),(20,'Débora Martins','Almoxarifado','debora.martins@empresa.com','(84) 99111-0020'),(21,'Rafael Souza','Manutenção','rafael.souza@empresa.com','(84) 99111-0021'),(22,'Marta Alves','Operações','marta.alves@empresa.com','(84) 99111-0022'),(23,'Caio Dantas','Logística','caio.dantas@empresa.com','(84) 99111-0023'),(24,'Suelen Teixeira','Engenharia','suelen.teixeira@empresa.com','(84) 99111-0024'),(25,'Eduardo Queiroz','TI','eduardo.queiroz@empresa.com','(84) 99111-0025');
/*!40000 ALTER TABLE `solicitantes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-15  1:10:07
