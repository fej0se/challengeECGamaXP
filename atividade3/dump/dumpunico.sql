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
-- create schema
--

CREATE SCHEMA `gama` ;
USE `gama`;


--
-- Table structure for table `bairros`
--

DROP TABLE IF EXISTS `bairros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bairros` (
  `idbairros` int NOT NULL AUTO_INCREMENT,
  `nomeBairro` varchar(100) NOT NULL,
  `cidade` int NOT NULL,
  PRIMARY KEY (`idbairros`),
  KEY `cidadefk_idx` (`cidade`),
  CONSTRAINT `cidadefk` FOREIGN KEY (`cidade`) REFERENCES `cidades` (`idCidade`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairros`
--

LOCK TABLES `bairros` WRITE;
/*!40000 ALTER TABLE `bairros` DISABLE KEYS */;
INSERT INTO `bairros` VALUES (1,'Jardim Portugal',1),(2,'Portão',3),(3,'Jardim São Bento',2),(4,'Boqueirão',3);
/*!40000 ALTER TABLE `bairros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidades` (
  `idCidade` int NOT NULL AUTO_INCREMENT,
  `nomeCidade` varchar(100) NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`idCidade`),
  KEY `estadofk_idx` (`estado`),
  CONSTRAINT `estadofk` FOREIGN KEY (`estado`) REFERENCES `estados` (`idEstados`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` VALUES (1,'Valinhos',2),(2,'Belo Horizonte',4),(3,'Curitiba',1);
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `whatsapp` bigint NOT NULL,
  `senha` varchar(20) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Felipe José','felipe@gmail.com',41992476077,'felipe123'),(2,'José da Silva','jose@gmail.com',41999999999,'jose123'),(3,'Francisco Sousa','francisco@gmail.com',41999999999,'francisco123'),(4,'João da Silva','joao@gmail.com',11999999999,'joao123'),(5,'Maria da Silva','maria@gmail.com',11999999999,'maria123'),(6,'Safira Mendes','safira@gmail.com',11999999999,'safira123'),(7,'Catarina Bond','catarina@gmail.com',11999999999,'catarina123'),(8,'Antonio C da Silva','antonio@gmail.com',11999999999,'toninho123');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_enderecos`
--

DROP TABLE IF EXISTS `clientes_enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes_enderecos` (
  `cliente` int NOT NULL,
  `endereco` int NOT NULL,
  KEY `clientes_clientes_e_fk` (`cliente`),
  KEY `enderecos_clientes_e_fk` (`endereco`),
  CONSTRAINT `clientes_enderecos_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`idCliente`),
  CONSTRAINT `clientes_enderecos_ibfk_2` FOREIGN KEY (`endereco`) REFERENCES `enderecos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_enderecos`
--

LOCK TABLES `clientes_enderecos` WRITE;
/*!40000 ALTER TABLE `clientes_enderecos` DISABLE KEYS */;
INSERT INTO `clientes_enderecos` VALUES (1,1),(1,2),(2,1),(3,2),(4,3),(4,4),(5,5),(6,5),(7,6),(8,7),(5,8),(8,9);
/*!40000 ALTER TABLE `clientes_enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `idDepto` int NOT NULL,
  `nomeDepto` varchar(150) NOT NULL,
  `empresa` int NOT NULL,
  PRIMARY KEY (`idDepto`),
  KEY `empresa_departamentos_fk` (`empresa`),
  CONSTRAINT `departamentos_ibfk_1` FOREIGN KEY (`empresa`) REFERENCES `empresas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Adaptadores',1),(2,'Ferramentas',1),(3,'Eletronicos',1),(4,'Casa',1),(5,'Acessorios',1),(6,'Moveis',1),(7,'Tablets e Celulares',1),(8,'Games',1),(9,'Informatica',1);
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomeEmpresa` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (1,'GAMA ACADEMY');
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enderecos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `largadouro` varchar(255) NOT NULL,
  `numero` int NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `cep` int NOT NULL,
  `bairro` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bairrofk_idx` (`bairro`),
  CONSTRAINT `bairrofk` FOREIGN KEY (`bairro`) REFERENCES `bairros` (`idbairros`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,'Rua','Rua do Fado',95,'APTO 5',13273269,1),(2,'Rua','Rua João Bettega',1576,'APTO 20',81070001,2),(3,'Rua','Rua do Quincas',995,'CASA',13273358,3),(4,'Rua','Rua do Quincas',58,'FUNDOS',13273358,3),(5,'Rua','Rua do Quincas',32,'APTO 2',13273358,3),(6,'Rua','Rua do Quincas',89,'CASA FRENTE',13273358,3),(7,'Rua','Rua do America',874,'APTO 10',81770777,4),(8,'Rua','Rua do America',89,'CASA',81770777,4),(9,'Rua','Rua do America',88,'BLOCO 5',81770777,4);
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados` (
  `idEstados` int NOT NULL AUTO_INCREMENT,
  `siglasEstado` varchar(2) NOT NULL,
  PRIMARY KEY (`idEstados`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'PR'),(2,'SP'),(3,'RS'),(4,'BH');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

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
  KEY `enderecoEntrega_idx` (`enderecoEntrega`),
  KEY `cliente_idx` (`cliente`),
  CONSTRAINT `cliente` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`idCliente`),
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

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `codProduto` int NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `preco` float NOT NULL,
  `qtdProduto` int NOT NULL,
  `disponivel` varchar(3) NOT NULL,
  `emDestaque` varchar(3) NOT NULL,
  `departamento` int NOT NULL,
  PRIMARY KEY (`codProduto`),
  KEY `departamentos_produtos_fk` (`departamento`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`idDepto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1298,'FILTRO DE LINHA FORZA PS-001B  6 TOMADAS',3.9,22,'sim','sim',5),(1705,'CABO VGA / VGA   1.5MTS',2.9,54,'sim','sim',5),(2717,'ESTABILIZADOR MICROFINS- 1500 BIVOLT P/02 MAQUINA',24.5,24,'sim','nao',5),(5025,'CAMERA WEBCAM MICROSOFT LIFE CAM CINEMA HD 720p H5D-00013 -PROMOCAO',46.5,76,'sim','sim',3),(5544,'ESTABILIZADOR MICROFINS- 2000 BIVOLT P/02 MAQUINA',29,82,'sim','sim',5),(6530,'ADAPTADOR VGA MACHO / RJ45',6,413,'sim','sim',1),(7186,'ADAPTADOR GRAVADOR CADDY NB 9.5MM / HD 2.5 SATA',9.5,21,'sim','nao',1),(7559,'ADAPTADOR HDMI FEMEA / DVI MACHO',4,21,'sim','sim',1),(8971,'BATERIA GOLINE ALKALINE 9V 500MAH',1.2,2,'sim','sim',5),(11719,'ALICATE PARA CRIMPAR TL-315 3 EM 1',15,16,'sim','sim',2),(12226,'MESA DIG. KODAK CYBERTABLET F8 8X5 PRETO',105,1,'sim','sim',5),(12263,'CAMERA WEBCAM LOGITECH C270 HD 960-000694',41,27,'sim','sim',3),(13168,'MONIT. LCD  4 EVERSUN WD-2030 USB',49,63,'sim','nao',5),(13449,'ADAPTADOR TYPE C MACHO/ USB 3.0 FEMEA',2.9,2,'sim','sim',1),(13539,'ADAPTADOR CONVERSOR HDMI / RCA FULLHD 1080 BRANCO',14,5,'sim','nao',1),(13896,'ADAPTADOR EXTENDER / RJ45 BEGE',1,101,'sim','sim',1),(15452,'MESA DIG. WACOM INTUOS PEN AND TOUCH SMALL CTL-4100/K0-AA PRETO',82.5,61,'sim','sim',5),(15464,'ADAPTADOR HDMI/VGA/AUDIO PRETO',9.5,91,'sim','sim',1),(15684,'CAPA P/ NOTEBOOK COMPACTO  13.3  PRETO',8.3,8,'sim','nao',5),(15883,'CADEADO SEGURANCA PARA NOTEBOOK HLD Fu0026K LLAVE',6.5,2,'sim','nao',2),(16845,'BASTAO SELFIE BLUETOOTH HAVIT HV-BTM33 PRETO',8.1,7,'sim','sim',5),(16991,'ADAPTADOR EXTENDER HDMI / RJ45 60M',39,120,'sim','sim',1),(17791,'CABO ADAPTADOR CONVERSOR VGA MACHO/HDMI FEMEA/USB/AUDIO HLD PRETO',13.8,0,'nao','nao',1),(18092,'APRESENTADOR LASER SATELLITE LR-26R PRETO',8,0,'nao','nao',3),(18711,'CARREGADOR DE BATERIA TP-LINK PB10000 POWER BANK 02-SAIDAS USB',11.7,33,'sim','sim',5),(19141,'CAMERA WEBCAM RAZER  RZ19-02320100-R3U1 KIYO 720P',91,0,'nao','nao',3),(19277,'GAME CONTROLE HAVIT 2X1 HV-G61 USB P/PC PRETO',10,0,'nao','nao',8),(19757,'GAME CONTROLE REDRAGON HARROW G808 VIBRATION PC/PS3',21.5,72,'sim','sim',8),(19985,'CABO VGA MACHO/HDMI MACHO 1.8MTS',2.8,6,'sim','nao',5),(20091,'GABINETE GAME THERMALTAKE V200 TG CA-3K8-50M1WU-00 PRETO - FONTE 500W - MID TOWER',81,54,'sim','sim',5),(20212,'ADAPTADOR CONECTOR HDMI FEMEA L / FEMEA',2.8,20,'sim','sim',1),(20437,'CADEIRA GAMER MTEK MK01 PRETO/AZUL',175,0,'nao','nao',6),(20438,'CADEIRA GAMER MTEK MK02 PRETO/VERMELHO',190,78,'sim','sim',6),(20526,'TABLET AMAZON FIRE 7 1GB/16GB PRETO WIFI/QUAD CORE 7',50,9,'sim','sim',7),(21299,'ADAPTADOR HDMI MACHO / DVI FEMEA',6.5,81,'sim','sim',1),(21300,'ADAPTADOR CONECTOR HDMI MACHO L / FEMEA',3.5,10,'sim','nao',1),(21849,'CAMERA GOPRO HERO 8 CHDHX-801-RW PRETO',340,6,'sim','sim',3),(22125,'MESA GAMER MTEK GM01 LED RGB PRETO',170,66,'sim','sim',6),(22252,'ADAPTADOR EXTENDER HDMI / RJ45 30M RX/TX 4K FHD AZUL',16.5,10,'sim','sim',1),(22941,'BABA ELETRONICA MOTOROLA MBP87CNCT BRANCO/DOURADO',55,2,'sim','sim',4),(23213,'ANTENA P/TV DIGITAL KOLKE KVV288 INTERNA VHF/UHF/FHD PRETO',9,6,'sim','sim',3),(23450,'CALCULADORA HP GRAFICA PRIME G2 PRETO/CINZA',132,23,'sim','sim',3),(23553,'BARBEADOR PANASONIC ER-389 RECARREGAVEL 110 VOLT',24.75,7,'sim','sim',4),(23734,'CONSOLE NINTENDO SWITCH LITE DH-S-YAZAA AMARELO',205,0,'nao','nao',8),(24101,'ADAPTADOR TYPE C FEMEA / USB 3.0 MACHO',3,0,'nao','nao',1),(24672,'CEL SAMSUNG A31 A315G 4GB/128GB AZUL DUAL SIM LTE 6.4',204.5,16,'sim','sim',7),(25104,'CADEIRA GAMER MTEK MK01 PRETO/CINZA',175,5,'sim','nao',6),(25175,'CONSOLE SUPER MINI CLASSIC SN-02 CINZA C/821 JOGOS',28.5,28,'sim','sim',8),(25492,'CABO XIAOMI SJX01ZM 2 IN 1 TYPE-C/MICRO USB/USB MACHO 30CM BRANCO',3.75,7,'sim','sim',5),(25659,'SPEAKER AMAZON ECHO DOT 4 GER ALEXA/WIFI AZUL',38.5,0,'nao','nao',9),(25678,'DESKTOP ACER C24-963-UA91 I3-1005G1 1.2GHz/8GB/512GB SSD/23.8FHD IPS/W10/INGLES PRETO',750,0,'nao','nao',9),(25754,'ADAPTADOR BLUETOOH USB RECEPTOR DE AUDIO P2',5,10,'sim','sim',1),(25759,'TECLADO + MOUSE + MOUSEPAD + FONE GAME HAVIT KB501CM GAMENOTE ESPANHOL PRETO',25,23,'sim','sim',5),(25876,'ADAPTADOR HDMI HEMDRA/ MINI HDMI/MICRO HDMI MACHO',3,5,'sim','sim',1),(25963,'IMPRESSORA  XIAOMI FOTOGRAFICA MI PORTABLE PHOTO PRINTER TEJ4018GL BLUETOOTH BRANCO',48.9,62,'sim','nao',9),(25967,'CARREGADOR DE BATERIA XIAOMI VXN4305GL 10000MAH 02-SAIDAS USB PRETO S/GARANTIA',10.45,83,'sim','sim',5),(26013,'MESA DIG. WACOM INTUOS PEN AND TOUCH SMALL CTL-4100WL/K0-AA BLUETOOTH  PRETO',112,0,'nao','nao',5),(26322,'MOUSE GAME COOLER MASTER MM110 RGB PRETO MM-110-GKOM1',17,64,'sim','nao',9),(26333,'BABA ELETRONICA MOTOROLA MBP161TIMER BRANCO',36.5,7,'sim','sim',4),(26335,'CONSOLE SONY PS4 SLIM 1TB CUH-2215B PRETO BIVOLT',382,45,'sim','sim',8),(26414,'ASPIRADOR NAPPO NLAR-063 ROBOT WIFI 350ML PRETO',87,2,'sim','nao',4),(26468,'BALANCA DIGITAL BLULORY DSY03 BODY FAST SCALE BRANCO',19,3,'sim','sim',4),(26471,'CARREGADOR DE BATERIA P/CARRO XIAOMI MI 37W CC06ZM 2-SAIDAS USB PRETO S/GARANTIA',8.85,64,'sim','sim',5),(26608,'ADAPTADOR CONVERSOR 2VGA/RCA/S-VIDEO PRATA',10.4,10,'sim','sim',1),(26658,'PENDRIVE   8GB ADATA AC906-8GB USB 2.0  PRETO',2.85,28,'sim','nao',9),(26674,'MEM NB DDR4 32GB 4000MHZ 4X8GB CORSAIR VENGEANCE CMSX32GX4M4X4000C19',229,6,'sim','nao',5),(26777,'MESA DIG. HUION H420 INSPIROY PEN GRAPHICS PRETO',49.9,11,'sim','nao',5),(26941,'CAPTURA DE VIDEO ELGATO THUNDERBOLT3 DOCK 4K 10DAA4101 TYPE-C/DP/LAN/USB3.1/SOM',263,84,'sim','sim',3),(26948,'ADAPTADOR TYPE C/ MICRO USB',3.2,3,'sim','sim',1),(26976,'CADEIRA GAMER MTEK MK01 PRETO/ROSA',190,6,'sim','sim',6),(27062,'CABO UTP CAT6 LANPRO LP-4C6DUSYL3C 3MTS AMARELO',3.9,4,'sim','sim',5),(27065,'CADEIRA GAMER HAVIT 922 GAMENOTE VERMELHO',185,3,'sim','nao',6),(27085,'CABO UTP CAT6 LANPRO LP-4C6USYL3 3MTS AMARELO',4,23,'sim','sim',5),(27131,'TABLET AMAZON FIRE  HD8 KIDS EDITION 2GB/32GB AZUL WIFI/QUAD CORE 8',99,34,'sim','nao',7),(27133,'TABLET AMAZON FIRE  HD8 KIDS EDITION 2GB/32GB ROSA WIFI/QUAD CORE 8',99,18,'sim','nao',7),(27192,'MESA DIG. WACOM INTUOS CREATIVE TOUCH SAMLL CTL-6100WL/E0-AA  M BLUETOOTH  PRETO/VERDE',207,4,'sim','sim',5),(27206,'CADEIRA GAMER REDRAGON CAPRICORNUS C502-B PRETO',185,9,'sim','sim',6),(27207,'CADEIRA GAMER REDRAGON CAPRICORNUS C502-BW PRETO/BRANCO',185,8,'sim','nao',6),(27232,'XBOX ONE S  512GB BIVOLT ALL DIGITAL 120FPS BRANCO',412,6,'sim','sim',8),(27261,'FONTE ATX  500W AIGO WARRIOR AK500 REAL 220V',32.5,4,'sim','sim',5),(27405,'CAPA P/ NOTEBOOK SATELLITE A-KP12 17  PRETO/AZUL',5.5,3,'sim','sim',5),(27539,'CONSOLE SONY PS4 SLIM 1TB CUH-2215B PRETO BIVOLT + 3 JOGOS HORIZON ZD/GRAN TURISMO SPORT/RAINBOWSIX',425,2,'sim','sim',8),(27540,'CONSOLE SONY PS4 SLIM 1TB CUH-2215B PRETO BIVOLT + 3 JOGOS SPIDER-MAN/HORIZON ZD/RATCHET CLANK',425,4,'sim','sim',8),(27541,'CONSOLE SONY PS4 SLIM 1TB CUH-2215B PRETO BIVOLT + JOGO FIFA21 EA SPORT',418,75,'sim','sim',8),(27624,'BOLSA P/NOTEBOOK 15 TARGUS TST598BT-70 FEMENINO PRETO',48,3,'sim','nao',5),(27642,'MONIT. LED 15.6 HYE HY16WLNC HD/VGA/HDMI PRETO',68,12,'sim','nao',9),(27691,'CADEIRA GAMER UP UP0917 PRETO/VERDE',145,0,'nao','nao',6),(27695,'CAMERA DE SEGURANCA XIAOMI MI HOME MJSXJ09CM 2K WIFI PANORAMICO 360 BRANCO',36,5,'sim','sim',3),(27707,'FONE C/ MICROFONE JBL C50HI PRETO',7,29,'sim','sim',9),(27774,'CADEIRA GAMER MTEK MK02 PRETO/VERDE',190,7,'sim','sim',6),(27787,'MICROFONE ELGATO WAVE1 10MAA9901 DIGITAL PRETO',149,41,'sim','sim',5);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-22 17:35:33
