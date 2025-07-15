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
-- Table structure for table `produtos_servicos`
--

DROP TABLE IF EXISTS `produtos_servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos_servicos` (
  `ID_PRODUTO` int NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(200) NOT NULL,
  `ID_CATEGORIA` int NOT NULL,
  `UNIDADE_MEDIDA` varchar(20) NOT NULL,
  `MARCA` varchar(50) DEFAULT NULL,
  `PRECO_MEDIO` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID_PRODUTO`),
  KEY `ID_CATEGORIA` (`ID_CATEGORIA`),
  CONSTRAINT `produtos_servicos_ibfk_1` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `categorias` (`ID_CATEGORIA`),
  CONSTRAINT `produtos_servicos_chk_1` CHECK ((`PRECO_MEDIO` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_servicos`
--

LOCK TABLES `produtos_servicos` WRITE;
/*!40000 ALTER TABLE `produtos_servicos` DISABLE KEYS */;
INSERT INTO `produtos_servicos` VALUES (1,'Cabo de Cobre 10mm',1,'Metro','Prysmian',7.50),(2,'Disjuntor Tripolar 40A',1,'Unidade','Siemens',38.90),(3,'Tubo PVC 50mm',2,'Metro','Tigre',4.20),(4,'Conexão Joelho 90º 50mm',2,'Unidade','Amanco',2.80),(5,'Chave Combinada 19mm',3,'Unidade','Gedore',35.00),(6,'Martelo de Borracha 450g',3,'Unidade','Tramontina',29.90),(7,'Capacete de Segurança Classe B',4,'Unidade','3M',25.00),(8,'Luva Nitrílica Azul',4,'Par','Ansell',9.50),(9,'Serviço de Limpeza Industrial',5,'Serviço','ServLimpo',1500.00),(10,'Serviço de Jardinagem Mensal',5,'Serviço','VerdeMax',950.00),(11,'Frete Caminhão Basculante',6,'Viagem','Translog',2000.00),(12,'Transporte de Equipamento Pesado',6,'Viagem','Nordestec',3800.00),(13,'Revisão Mecânica de Escavadeira',7,'Serviço','ManutMinas',3500.00),(14,'Manutenção Elétrica em Painel',7,'Serviço','EletroServ',2100.00),(15,'Óleo Lubrificante SAE 40',8,'Litro','Petrobras',22.00),(16,'Graxa Azul de Alta Temperatura',8,'Kg','Texaco',18.00),(17,'Filtro Hidráulico Modelo X',9,'Unidade','Hidromaq',180.00),(18,'Mangueira Hidráulica Alta Pressão',9,'Metro','Hydronorte',75.00),(19,'Retroescavadeira Modelo Z',10,'Unidade','Caterpillar',250000.00),(20,'Perfuratriz Pneumática Portátil',11,'Unidade','Atlas Copco',78000.00);
/*!40000 ALTER TABLE `produtos_servicos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-15  1:10:08
