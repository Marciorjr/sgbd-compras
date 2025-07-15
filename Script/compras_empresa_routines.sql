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
-- Temporary view structure for view `vw_gasto_por_fornecedor`
--

DROP TABLE IF EXISTS `vw_gasto_por_fornecedor`;
/*!50001 DROP VIEW IF EXISTS `vw_gasto_por_fornecedor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_gasto_por_fornecedor` AS SELECT 
 1 AS `NOME_EMPRESA`,
 1 AS `TOTAL_GASTO`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_gasto_por_departamento`
--

DROP TABLE IF EXISTS `vw_gasto_por_departamento`;
/*!50001 DROP VIEW IF EXISTS `vw_gasto_por_departamento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_gasto_por_departamento` AS SELECT 
 1 AS `DEPARTAMENTO`,
 1 AS `TOTAL_GASTO`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_pedidos_detalhados`
--

DROP TABLE IF EXISTS `vw_pedidos_detalhados`;
/*!50001 DROP VIEW IF EXISTS `vw_pedidos_detalhados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pedidos_detalhados` AS SELECT 
 1 AS `ID_PEDIDO_COMPRA`,
 1 AS `DATA_PEDIDO`,
 1 AS `NOME_EMPRESA`,
 1 AS `PRODUTO`,
 1 AS `SOLICITANTE`,
 1 AS `DEPARTAMENTO`,
 1 AS `LOCAL_ENTREGA`,
 1 AS `QUANTIDADE`,
 1 AS `PRECO_UNITARIO`,
 1 AS `CUSTO_TOTAL`,
 1 AS `STATUS_PEDIDO`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_gasto_mensal`
--

DROP TABLE IF EXISTS `vw_gasto_mensal`;
/*!50001 DROP VIEW IF EXISTS `vw_gasto_mensal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_gasto_mensal` AS SELECT 
 1 AS `ANO`,
 1 AS `MES`,
 1 AS `TOTAL_GASTO`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_gasto_por_fornecedor`
--

/*!50001 DROP VIEW IF EXISTS `vw_gasto_por_fornecedor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_gasto_por_fornecedor` AS select `f`.`NOME_EMPRESA` AS `NOME_EMPRESA`,sum(`p`.`CUSTO_TOTAL`) AS `TOTAL_GASTO` from (`pedidos_compra` `p` join `fornecedores` `f` on((`p`.`ID_FORNECEDOR` = `f`.`ID_FORNECEDOR`))) group by `f`.`NOME_EMPRESA` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_gasto_por_departamento`
--

/*!50001 DROP VIEW IF EXISTS `vw_gasto_por_departamento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_gasto_por_departamento` AS select `s`.`DEPARTAMENTO` AS `DEPARTAMENTO`,sum(`p`.`CUSTO_TOTAL`) AS `TOTAL_GASTO` from (`pedidos_compra` `p` join `solicitantes` `s` on((`p`.`ID_SOLICITANTE` = `s`.`ID_SOLICITANTE`))) group by `s`.`DEPARTAMENTO` order by `TOTAL_GASTO` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pedidos_detalhados`
--

/*!50001 DROP VIEW IF EXISTS `vw_pedidos_detalhados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pedidos_detalhados` AS select `p`.`ID_PEDIDO_COMPRA` AS `ID_PEDIDO_COMPRA`,`p`.`DATA_PEDIDO` AS `DATA_PEDIDO`,`f`.`NOME_EMPRESA` AS `NOME_EMPRESA`,`ps`.`DESCRICAO` AS `PRODUTO`,`s`.`NOME` AS `SOLICITANTE`,`s`.`DEPARTAMENTO` AS `DEPARTAMENTO`,`l`.`DESCRICAO_LOCAL` AS `LOCAL_ENTREGA`,`p`.`QUANTIDADE` AS `QUANTIDADE`,`p`.`PRECO_UNITARIO` AS `PRECO_UNITARIO`,`p`.`CUSTO_TOTAL` AS `CUSTO_TOTAL`,`p`.`STATUS_PEDIDO` AS `STATUS_PEDIDO` from ((((`pedidos_compra` `p` join `fornecedores` `f` on((`p`.`ID_FORNECEDOR` = `f`.`ID_FORNECEDOR`))) join `produtos_servicos` `ps` on((`p`.`ID_PRODUTO` = `ps`.`ID_PRODUTO`))) join `solicitantes` `s` on((`p`.`ID_SOLICITANTE` = `s`.`ID_SOLICITANTE`))) join `locais_entrega` `l` on((`p`.`ID_LOCAL_ENTREGA` = `l`.`ID_LOCAL`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_gasto_mensal`
--

/*!50001 DROP VIEW IF EXISTS `vw_gasto_mensal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_gasto_mensal` AS select year(`pedidos_compra`.`DATA_PEDIDO`) AS `ANO`,month(`pedidos_compra`.`DATA_PEDIDO`) AS `MES`,sum(`pedidos_compra`.`CUSTO_TOTAL`) AS `TOTAL_GASTO` from `pedidos_compra` group by `ANO`,`MES` order by `ANO`,`MES` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-15  1:10:08
