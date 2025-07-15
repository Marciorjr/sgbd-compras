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
-- Table structure for table `locais_entrega`
--

DROP TABLE IF EXISTS `locais_entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locais_entrega` (
  `ID_LOCAL` int NOT NULL AUTO_INCREMENT,
  `DESCRICAO_LOCAL` varchar(100) NOT NULL,
  `ENDERECO` varchar(200) DEFAULT NULL,
  `CIDADE` varchar(50) DEFAULT NULL,
  `ESTADO` varchar(30) DEFAULT NULL,
  `RESPONSAVEL_RECEBIMENTO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_LOCAL`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locais_entrega`
--

LOCK TABLES `locais_entrega` WRITE;
/*!40000 ALTER TABLE `locais_entrega` DISABLE KEYS */;
INSERT INTO `locais_entrega` VALUES (1,'Almoxarifado Central','Av. Industrial, 1000','Natal','RN','João Oliveira'),(2,'Oficina de Máquinas','Av. Industrial, 1000','Natal','RN','Maria Silva'),(3,'Setor de Expedição','Av. Industrial, 1000','Natal','RN','Carlos Souza'),(4,'Depósito de Insumos','Av. Industrial, 1000','Natal','RN','Renata Martins'),(5,'Almoxarifado de Apoio','Rua Central, 50','Tangará','RN','Bruno Lima'),(6,'Oficina de Manutenção','Rua Central, 50','Tangará','RN','Camila Barros'),(7,'Pátio de Máquinas','Rua Central, 50','Tangará','RN','Fábio Oliveira'),(8,'Área Administrativa','Rua Central, 50','Tangará','RN','Tatiane Freitas'),(9,'Galpão Principal','Avenida das Indústrias, 3000','Belo Horizonte','MG','Rodrigo Lopes'),(10,'Central de Logística','Avenida das Indústrias, 3000','Belo Horizonte','MG','Lucas Andrade'),(11,'Depósito de Ferramentas','Avenida das Indústrias, 3000','Belo Horizonte','MG','Fernanda Melo'),(12,'Recebimento de Materiais','Avenida das Indústrias, 3000','Belo Horizonte','MG','Ana Paula');
/*!40000 ALTER TABLE `locais_entrega` ENABLE KEYS */;
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
