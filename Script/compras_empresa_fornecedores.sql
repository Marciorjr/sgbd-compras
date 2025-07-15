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
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedores` (
  `ID_FORNECEDOR` int NOT NULL AUTO_INCREMENT,
  `NOME_EMPRESA` varchar(100) NOT NULL,
  `CONTATO_RESPONSAVEL` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `TELEFONE` varchar(20) DEFAULT NULL,
  `CNPJ` varchar(20) NOT NULL,
  `ENDERECO` varchar(200) DEFAULT NULL,
  `CIDADE` varchar(50) DEFAULT NULL,
  `ESTADO` varchar(30) DEFAULT NULL,
  `CATEGORIA_FORNECIMENTO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_FORNECEDOR`),
  UNIQUE KEY `CNPJ` (`CNPJ`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'Miner Peças LTDA','João da Silva','joao@minerpecas.com','(84) 99999-1000','12.345.678/0001-90','Rua das Pedras, 100','Natal','RN','Peças de Reposição'),(2,'Translog Transportes','Maria Souza','maria@translog.com','(84) 98888-2000','23.456.789/0001-01','Avenida Central, 500','Mossoró','RN','Serviços de Transporte'),(3,'EletroPower','Carlos Pereira','carlos@eletropower.com','(84) 97777-3000','34.567.890/0001-12','Rua Energia, 250','Parnamirim','RN','Material Elétrico'),(4,'Topografia Alfa','Fernanda Lima','fernanda@topografiaalfa.com','(84) 96666-4000','45.678.901/0001-23','Travessa do Mapa, 75','Caicó','RN','Serviços de Topografia'),(5,'Mega Lubrificantes','Paulo Mendes','paulo@megalubrificantes.com','(84) 95555-5000','56.789.012/0001-34','Rua do Óleo, 321','Natal','RN','Lubrificantes e Óleos'),(6,'Construmax Equipamentos','Juliana Costa','juliana@construmax.com','(84) 94444-6000','67.890.123/0001-45','Rodovia BR-101, Km 200','Mossoró','RN','Máquinas e Equipamentos Pesados'),(7,'ServLimpo','Rogério Alves','rogerio@servlimpo.com','(84) 93333-7000','78.901.234/0001-56','Rua da Limpeza, 456','Natal','RN','Serviços Terceirizados'),(8,'InfoTech Solutions','Patrícia Dias','patricia@infotech.com','(84) 92222-8000','89.012.345/0001-67','Av. Tecnologia, 88','Parnamirim','RN','Informática e Tecnologia'),(9,'AgroDiesel Distribuidora','Bruno Santos','bruno@agrodiesel.com','(84) 91111-9000','90.123.456/0001-78','Rua Combustível, 900','Mossoró','RN','Combustíveis'),(10,'Engenharia Soluções','Larissa Ribeiro','larissa@engenharia.com','(84) 90000-0000','01.234.567/0001-89','Rua Projetos, 150','Natal','RN','Serviços de Engenharia'),(11,'ManutMinas Serviços Industriais','Eduardo Lima','eduardo@manutminas.com','(84) 99911-1010','11.111.111/0001-11','Rua das Oficinas, 300','Currais Novos','RN','Serviços de Manutenção'),(12,'TecHidráulica Nordeste','Cláudia Bezerra','claudia@techidraulica.com','(84) 99882-2020','22.222.222/0001-22','Av. Tubulações, 1200','Santa Cruz','RN','Material Hidráulico'),(13,'GeoMiner Análises','Marcelo Queiroz','marcelo@geominer.com','(84) 99773-3030','33.333.333/0001-33','Travessa Rocha, 50','Assu','RN','Serviços Ambientais'),(14,'Max Ferragens Industriais','Sandra Nogueira','sandra@maxferragens.com','(84) 99664-4040','44.444.444/0001-44','Rua das Indústrias, 987','Natal','RN','Ferramentas Manuais'),(15,'Nordiesel Combustíveis','Henrique Gomes','henrique@nordiesel.com','(84) 99555-5050','55.555.555/0001-55','Av. Petróleo, 600','Mossoró','RN','Combustíveis'),(16,'MineraTech Informática','Tatiane Vieira','tatiane@mineratech.com','(84) 99446-6060','66.666.666/0001-66','Rua da TI, 77','Caicó','RN','Informática e Tecnologia'),(17,'EPI Norte Segurança','André Matos','andre@epinorte.com','(84) 99337-7070','77.777.777/0001-77','Rua dos EPIs, 222','Natal','RN','Equipamentos de Proteção Individual'),(18,'GeoTop Soluções Topográficas','Beatriz Luz','beatriz@geotop.com','(84) 99228-8080','88.888.888/0001-88','Rua Altimétrica, 55','Pau dos Ferros','RN','Serviços de Topografia'),(19,'OfficePaper Papelaria Corporativa','Rafael Tavares','rafael@officepaper.com','(84) 99119-9090','99.999.999/0001-99','Rua dos Arquivos, 18','Parnamirim','RN','Material de Escritório'),(20,'Construsolo Engenharia e Fundações','Daniela Azevedo','daniela@construsolo.com','(84) 99000-0101','10.101.010/0001-10','Av. Fundações, 3000','Natal','RN','Serviços de Engenharia');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
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
