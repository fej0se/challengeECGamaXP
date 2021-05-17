-- MySQL dump 10.13  Distrib 8.0.24, for macos11 (x86_64)
--
-- Host: localhost    Database: gama
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `numeroPedido` int NOT NULL,
  `dataPedido` date NOT NULL,
  `statusPedido` varchar(100) NOT NULL,
  `ValorTotal` float NOT NULL,
  `cliente` int NOT NULL,
  `enderecoEntrega` int NOT NULL,
  PRIMARY KEY (`numeroPedido`),
  KEY `cliente_idx` (`cliente`),
  KEY `enderecoEntrega_idx` (`enderecoEntrega`),
  CONSTRAINT `cliente` FOREIGN KEY (`cliente`) REFERENCES `clientes_enderecos` (`cliente`),
  CONSTRAINT `enderecoEntrega` FOREIGN KEY (`enderecoEntrega`) REFERENCES `clientes_enderecos` (`endereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1025,'2021-05-12','Aguardando Pagamento',4180,8,7),(6254,'2021-05-15','Pagamento autorizado',954.5,1,1),(6528,'2021-02-01','Entregue',70.5,4,3),(6589,'2020-08-14','Entregue',1528,2,1),(7896,'2021-03-01','Novo pedido',603,5,8),(8963,'2020-01-05','Pagamento negado',149,6,5),(9624,'2021-05-15','Aguardando pagamento',417.7,1,2),(9632,'2021-05-10','Em Separação',190,8,9),(9658,'2020-12-20','Cancelado',57,2,1),(9984,'2021-02-01','Entregue',25,3,2);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-16 21:05:29
