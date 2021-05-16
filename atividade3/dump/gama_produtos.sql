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
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `codProduto` int NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `preco` float(10,2) NOT NULL,
  `qtdProduto` int NOT NULL,
  `disponivel` varchar(3) NOT NULL,
  `emDestaque` varchar(3) NOT NULL,
  `departamento` int NOT NULL,
  PRIMARY KEY (`codProduto`),
  KEY `departamentos_produtos_fk` (`departamento`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`idDepto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1298,'FILTRO DE LINHA FORZA PS-001B  6 TOMADAS',3.90,22,'sim','sim',5),(1705,'CABO VGA / VGA   1.5MTS',2.90,54,'sim','sim',5),(2717,'ESTABILIZADOR MICROFINS- 1500 BIVOLT P/02 MAQUINA',24.50,24,'sim','nao',5),(5025,'CAMERA WEBCAM MICROSOFT LIFE CAM CINEMA HD 720p H5D-00013 -PROMOCAO',46.50,76,'sim','sim',3),(5544,'ESTABILIZADOR MICROFINS- 2000 BIVOLT P/02 MAQUINA',29.00,82,'sim','sim',5),(6530,'ADAPTADOR VGA MACHO / RJ45',6.00,413,'sim','sim',1),(7186,'ADAPTADOR GRAVADOR CADDY NB 9.5MM / HD 2.5 SATA',9.50,21,'sim','nao',1),(7559,'ADAPTADOR HDMI FEMEA / DVI MACHO',4.00,21,'sim','sim',1),(8971,'BATERIA GOLINE ALKALINE 9V 500MAH',1.20,2,'sim','sim',5),(11719,'ALICATE PARA CRIMPAR TL-315 3 EM 1',15.00,16,'sim','sim',2),(12226,'MESA DIG. KODAK CYBERTABLET F8 8X5 PRETO',105.00,1,'sim','sim',5),(12263,'CAMERA WEBCAM LOGITECH C270 HD 960-000694',41.00,27,'sim','sim',3),(13168,'MONIT. LCD  4 EVERSUN WD-2030 USB',49.00,63,'sim','nao',5),(13449,'ADAPTADOR TYPE C MACHO/ USB 3.0 FEMEA',2.90,2,'sim','sim',1),(13539,'ADAPTADOR CONVERSOR HDMI / RCA FULLHD 1080 BRANCO',14.00,5,'sim','nao',1),(13896,'ADAPTADOR EXTENDER / RJ45 BEGE',1.00,101,'sim','sim',1),(15452,'MESA DIG. WACOM INTUOS PEN AND TOUCH SMALL CTL-4100/K0-AA PRETO',82.50,61,'sim','sim',5),(15464,'ADAPTADOR HDMI/VGA/AUDIO PRETO',9.50,91,'sim','sim',1),(15684,'CAPA P/ NOTEBOOK COMPACTO  13.3  PRETO',8.30,8,'sim','nao',5),(15883,'CADEADO SEGURANCA PARA NOTEBOOK HLD Fu0026K LLAVE',6.50,2,'sim','nao',2),(16845,'BASTAO SELFIE BLUETOOTH HAVIT HV-BTM33 PRETO',8.10,7,'sim','sim',5),(16991,'ADAPTADOR EXTENDER HDMI / RJ45 60M',39.00,120,'sim','sim',1),(17791,'CABO ADAPTADOR CONVERSOR VGA MACHO/HDMI FEMEA/USB/AUDIO HLD PRETO',13.80,0,'nao','nao',1),(18092,'APRESENTADOR LASER SATELLITE LR-26R PRETO',8.00,0,'nao','nao',3),(18711,'CARREGADOR DE BATERIA TP-LINK PB10000 POWER BANK 02-SAIDAS USB',11.70,33,'sim','sim',5),(19141,'CAMERA WEBCAM RAZER  RZ19-02320100-R3U1 KIYO 720P',91.00,0,'nao','nao',3),(19277,'GAME CONTROLE HAVIT 2X1 HV-G61 USB P/PC PRETO',10.00,0,'nao','nao',8),(19757,'GAME CONTROLE REDRAGON HARROW G808 VIBRATION PC/PS3',21.50,72,'sim','sim',8),(19985,'CABO VGA MACHO/HDMI MACHO 1.8MTS',2.80,6,'sim','nao',5),(20091,'GABINETE GAME THERMALTAKE V200 TG CA-3K8-50M1WU-00 PRETO - FONTE 500W - MID TOWER',81.00,54,'sim','sim',5),(20212,'ADAPTADOR CONECTOR HDMI FEMEA L / FEMEA',2.80,20,'sim','sim',1),(20437,'CADEIRA GAMER MTEK MK01 PRETO/AZUL',175.00,0,'nao','nao',6),(20438,'CADEIRA GAMER MTEK MK02 PRETO/VERMELHO',190.00,78,'sim','sim',6),(20526,'TABLET AMAZON FIRE 7 1GB/16GB PRETO WIFI/QUAD CORE 7',50.00,9,'sim','sim',7),(21299,'ADAPTADOR HDMI MACHO / DVI FEMEA',6.50,81,'sim','sim',1),(21300,'ADAPTADOR CONECTOR HDMI MACHO L / FEMEA',3.50,10,'sim','nao',1),(21849,'CAMERA GOPRO HERO 8 CHDHX-801-RW PRETO',340.00,6,'sim','sim',3),(22125,'MESA GAMER MTEK GM01 LED RGB PRETO',170.00,66,'sim','sim',6),(22252,'ADAPTADOR EXTENDER HDMI / RJ45 30M RX/TX 4K FHD AZUL',16.50,10,'sim','sim',1),(22941,'BABA ELETRONICA MOTOROLA MBP87CNCT BRANCO/DOURADO',55.00,2,'sim','sim',4),(23213,'ANTENA P/TV DIGITAL KOLKE KVV288 INTERNA VHF/UHF/FHD PRETO',9.00,6,'sim','sim',3),(23450,'CALCULADORA HP GRAFICA PRIME G2 PRETO/CINZA',132.00,23,'sim','sim',3),(23553,'BARBEADOR PANASONIC ER-389 RECARREGAVEL 110 VOLT',24.75,7,'sim','sim',4),(23734,'CONSOLE NINTENDO SWITCH LITE DH-S-YAZAA AMARELO',205.00,0,'nao','nao',8),(24101,'ADAPTADOR TYPE C FEMEA / USB 3.0 MACHO',3.00,0,'nao','nao',1),(24672,'CEL SAMSUNG A31 A315G 4GB/128GB AZUL DUAL SIM LTE 6.4',204.50,16,'sim','sim',7),(25104,'CADEIRA GAMER MTEK MK01 PRETO/CINZA',175.00,5,'sim','nao',6),(25175,'CONSOLE SUPER MINI CLASSIC SN-02 CINZA C/821 JOGOS',28.50,28,'sim','sim',8),(25492,'CABO XIAOMI SJX01ZM 2 IN 1 TYPE-C/MICRO USB/USB MACHO 30CM BRANCO',3.75,7,'sim','sim',5),(25659,'SPEAKER AMAZON ECHO DOT 4 GER ALEXA/WIFI AZUL',38.50,0,'nao','nao',9),(25678,'DESKTOP ACER C24-963-UA91 I3-1005G1 1.2GHz/8GB/512GB SSD/23.8FHD IPS/W10/INGLES PRETO',750.00,0,'nao','nao',9),(25754,'ADAPTADOR BLUETOOH USB RECEPTOR DE AUDIO P2',5.00,10,'sim','sim',1),(25759,'TECLADO + MOUSE + MOUSEPAD + FONE GAME HAVIT KB501CM GAMENOTE ESPANHOL PRETO',25.00,23,'sim','sim',5),(25876,'ADAPTADOR HDMI HEMDRA/ MINI HDMI/MICRO HDMI MACHO',3.00,5,'sim','sim',1),(25963,'IMPRESSORA  XIAOMI FOTOGRAFICA MI PORTABLE PHOTO PRINTER TEJ4018GL BLUETOOTH BRANCO',48.90,62,'sim','nao',9),(25967,'CARREGADOR DE BATERIA XIAOMI VXN4305GL 10000MAH 02-SAIDAS USB PRETO S/GARANTIA',10.45,83,'sim','sim',5),(26013,'MESA DIG. WACOM INTUOS PEN AND TOUCH SMALL CTL-4100WL/K0-AA BLUETOOTH  PRETO',112.00,0,'nao','nao',5),(26322,'MOUSE GAME COOLER MASTER MM110 RGB PRETO MM-110-GKOM1',17.00,64,'sim','nao',9),(26333,'BABA ELETRONICA MOTOROLA MBP161TIMER BRANCO',36.50,7,'sim','sim',4),(26335,'CONSOLE SONY PS4 SLIM 1TB CUH-2215B PRETO BIVOLT',382.00,45,'sim','sim',8),(26414,'ASPIRADOR NAPPO NLAR-063 ROBOT WIFI 350ML PRETO',87.00,2,'sim','nao',4),(26468,'BALANCA DIGITAL BLULORY DSY03 BODY FAST SCALE BRANCO',19.00,3,'sim','sim',4),(26471,'CARREGADOR DE BATERIA P/CARRO XIAOMI MI 37W CC06ZM 2-SAIDAS USB PRETO S/GARANTIA',8.85,64,'sim','sim',5),(26608,'ADAPTADOR CONVERSOR 2VGA/RCA/S-VIDEO PRATA',10.40,10,'sim','sim',1),(26658,'PENDRIVE   8GB ADATA AC906-8GB USB 2.0  PRETO',2.85,28,'sim','nao',9),(26674,'MEM NB DDR4 32GB 4000MHZ 4X8GB CORSAIR VENGEANCE CMSX32GX4M4X4000C19',229.00,6,'sim','nao',5),(26777,'MESA DIG. HUION H420 INSPIROY PEN GRAPHICS PRETO',49.90,11,'sim','nao',5),(26941,'CAPTURA DE VIDEO ELGATO THUNDERBOLT3 DOCK 4K 10DAA4101 TYPE-C/DP/LAN/USB3.1/SOM',263.00,84,'sim','sim',3),(26948,'ADAPTADOR TYPE C/ MICRO USB',3.20,3,'sim','sim',1),(26976,'CADEIRA GAMER MTEK MK01 PRETO/ROSA',190.00,6,'sim','sim',6),(27062,'CABO UTP CAT6 LANPRO LP-4C6DUSYL3C 3MTS AMARELO',3.90,4,'sim','sim',5),(27065,'CADEIRA GAMER HAVIT 922 GAMENOTE VERMELHO',185.00,3,'sim','nao',6),(27085,'CABO UTP CAT6 LANPRO LP-4C6USYL3 3MTS AMARELO',4.00,23,'sim','sim',5),(27131,'TABLET AMAZON FIRE  HD8 KIDS EDITION 2GB/32GB AZUL WIFI/QUAD CORE 8',99.00,34,'sim','nao',7),(27133,'TABLET AMAZON FIRE  HD8 KIDS EDITION 2GB/32GB ROSA WIFI/QUAD CORE 8',99.00,18,'sim','nao',7),(27192,'MESA DIG. WACOM INTUOS CREATIVE TOUCH SAMLL CTL-6100WL/E0-AA  M BLUETOOTH  PRETO/VERDE',207.00,4,'sim','sim',5),(27206,'CADEIRA GAMER REDRAGON CAPRICORNUS C502-B PRETO',185.00,9,'sim','sim',6),(27207,'CADEIRA GAMER REDRAGON CAPRICORNUS C502-BW PRETO/BRANCO',185.00,8,'sim','nao',6),(27232,'XBOX ONE S  512GB BIVOLT ALL DIGITAL 120FPS BRANCO',412.00,6,'sim','sim',8),(27261,'FONTE ATX  500W AIGO WARRIOR AK500 REAL 220V',32.50,4,'sim','sim',5),(27405,'CAPA P/ NOTEBOOK SATELLITE A-KP12 17  PRETO/AZUL',5.50,3,'sim','sim',5),(27539,'CONSOLE SONY PS4 SLIM 1TB CUH-2215B PRETO BIVOLT + 3 JOGOS HORIZON ZD/GRAN TURISMO SPORT/RAINBOWSIX',425.00,2,'sim','sim',8),(27540,'CONSOLE SONY PS4 SLIM 1TB CUH-2215B PRETO BIVOLT + 3 JOGOS SPIDER-MAN/HORIZON ZD/RATCHET CLANK',425.00,4,'sim','sim',8),(27541,'CONSOLE SONY PS4 SLIM 1TB CUH-2215B PRETO BIVOLT + JOGO FIFA21 EA SPORT',418.00,75,'sim','sim',8),(27624,'BOLSA P/NOTEBOOK 15 TARGUS TST598BT-70 FEMENINO PRETO',48.00,3,'sim','nao',5),(27642,'MONIT. LED 15.6 HYE HY16WLNC HD/VGA/HDMI PRETO',68.00,12,'sim','nao',9),(27691,'CADEIRA GAMER UP UP0917 PRETO/VERDE',145.00,0,'nao','nao',6),(27695,'CAMERA DE SEGURANCA XIAOMI MI HOME MJSXJ09CM 2K WIFI PANORAMICO 360 BRANCO',36.00,5,'sim','sim',3),(27707,'FONE C/ MICROFONE JBL C50HI PRETO',7.00,29,'sim','sim',9),(27774,'CADEIRA GAMER MTEK MK02 PRETO/VERDE',190.00,7,'sim','sim',6),(27787,'MICROFONE ELGATO WAVE1 10MAA9901 DIGITAL PRETO',149.00,41,'sim','sim',5);
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

-- Dump completed on 2021-05-16 18:04:16
