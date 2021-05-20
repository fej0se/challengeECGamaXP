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
-- Table structure for table `pedidos_produtos`
--

DROP TABLE IF EXISTS `pedidos_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_produtos` (
  `pedido` int NOT NULL,
  `produto` int NOT NULL,
  `quantidade` int NOT NULL,
  `valorUnitario` float NOT NULL,
  `valorTotal` float GENERATED ALWAYS AS ((`quantidade` * `valorUnitario`)) STORED,
  KEY `produtos_pedidos_pr_fk` (`produto`),
  KEY `pedidos_pedidos_pr_fk` (`pedido`),
  CONSTRAINT `pedidos_produtos_ibfk_1` FOREIGN KEY (`produto`) REFERENCES `produtos` (`codProduto`),
  CONSTRAINT `pedidos_produtos_ibfk_2` FOREIGN KEY (`pedido`) REFERENCES `pedidos` (`numeroPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_produtos`
--

LOCK TABLES `pedidos_produtos` WRITE;
/*!40000 ALTER TABLE `pedidos_produtos` DISABLE KEYS */;
INSERT INTO `pedidos_produtos` (`pedido`, `produto`, `quantidade`, `valorUnitario`) VALUES (6254,24672,1,204.5),(6254,25678,1,750),(6589,26335,4,382),(9624,27232,1,412),(9624,26658,2,2.85),(9658,26658,20,2.85),(9984,25754,5,5),(6254,20526,2,50),(6528,13539,1,14),(6528,15883,1,6.5),(6528,19757,1,21.5),(6528,25175,1,28.5),(7896,26941,1,263),(7896,21849,1,340),(8963,27787,1,149),(9632,20438,1,190),(1025,27541,10,418);
/*!40000 ALTER TABLE `pedidos_produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-16 21:05:31
