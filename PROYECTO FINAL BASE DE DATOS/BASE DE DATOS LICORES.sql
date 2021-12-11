CREATE DATABASE  IF NOT EXISTS `licores` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `licores`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: licores
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `ID_CLIENTE` int(11) NOT NULL,
  `NOMBRE CLIENTE` varchar(20) NOT NULL,
  `ID_LICOR` text,
  PRIMARY KEY (`ID_CLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (2010,'RICARDO ',''),(2011,'PACO',''),(2012,'ALEJANDRO',''),(2013,'AISHA',''),(2014,'DANIELA',''),(2015,'FERNANDO',''),(2016,'EDUARDO',''),(2017,'ISAC',''),(2018,'CRISTIAN',''),(2019,'CESAR',''),(2020,'MAURICIO',''),(2021,'JORGE',''),(2022,'LUIS',''),(2023,'ULISES',''),(2024,'FEDERICO',''),(2025,'MARIA',''),(2026,'PEDRO',''),(2027,'MARTIN',''),(2028,'PAOLA',''),(2029,'SERGIO',''),(2030,'RODRIGO',''),(2031,'ISAMEL',''),(2032,'MARCOS',''),(2033,'FELIPE',''),(2034,'VICTOR',''),(2035,'LUCIA',''),(2036,'MARTHA',''),(2037,'NOEMI',''),(2038,'SALMA',''),(2039,'JOSE','');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licores`
--

DROP TABLE IF EXISTS `licores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `licores` (
  `ID_LICOR` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `TAMAÑO` varchar(45) NOT NULL,
  `PRECIO` varchar(45) NOT NULL,
  `ID_TIPO_LICOR` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_LICOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licores`
--

LOCK TABLES `licores` WRITE;
/*!40000 ALTER TABLE `licores` DISABLE KEYS */;
INSERT INTO `licores` VALUES (1,'DON JULIO 70','3/4','600','TQ'),(2,'CASA DRAGONES','3/4','250','TQ'),(3,'EL TESORO REPOSADO','3/4','250','TQ'),(4,'HERRADURA','3/4','350','TQ'),(5,'BLAVOD','3/4','250','VK'),(6,'SMIRNOFF','3/4','250','VK'),(7,'CHOPIN','3/4','600','VK'),(8,'ABSOLUT','3/4','250','VK'),(9,'SKYY','3/4','350','VK'),(10,'DIPLOMATICO','3/4','800','RN'),(11,'ZACAPA','3/4','820','RN'),(12,'BRUGAL','3/4','2800','RN'),(13,'BACARDI','3/4','350','RN'),(14,'FLOR DE CAÑA','3/4','450','RN'),(15,'ANCNOC','3/4','2300','WK'),(16,'ARAID','3/4','3000','WK'),(17,'DEWAR\'S','3/4','370','WK'),(18,'JOHNNIE WALKER','3/4','600','WK'),(19,'LAUDER\'S','3/4','400','WK'),(20,'GLEN GRANT','3/4','570','WK'),(21,'GUSANO ROJO','3/4','530','MZ'),(22,'SAN COSME','3/4','810','MZ'),(23,'MONTELOBOS','3/4','950','MZ'),(24,'REMY MARTIN','3/4','1200','CÑ'),(25,'HARDY VSOP ORGANIC','3/4','1300','CÑ'),(26,'HENNESSY PRIVILIGE VSOP','3/4','1380','CÑ'),(27,'CASAMIGOS','3/4','1590','MZ'),(28,'MAESTRO DOBLE DIAMANTE','3/4','250','TQ'),(29,'02','3/4','300','VK'),(30,'TEQUILA COSMOS','3/4','350','TQ');
/*!40000 ALTER TABLE `licores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos de licor`
--

DROP TABLE IF EXISTS `tipos de licor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos de licor` (
  `ID_TIPO_LICOR` varchar(2) NOT NULL,
  `TIPOS DE LICOR` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_TIPO_LICOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos de licor`
--

LOCK TABLES `tipos de licor` WRITE;
/*!40000 ALTER TABLE `tipos de licor` DISABLE KEYS */;
INSERT INTO `tipos de licor` VALUES ('CÑ','COÑAC'),('MZ','MEZCAL'),('RN','RON'),('TQ','TEQUILA'),('VK','VODKA'),('WK','WISKY');
/*!40000 ALTER TABLE `tipos de licor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedores` (
  `ID_VENDEDOR` varchar(3) NOT NULL,
  `NOMBRE VENDEDOR` varchar(45) NOT NULL,
  `ID_CLIENTE` varchar(45) DEFAULT NULL,
  `ID_VENTA` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_VENDEDOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` VALUES ('V1','ALAN JOSUE ALFARO',NULL,NULL),('V2','NATHALY RODRIGUEZ',NULL,NULL);
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `ID_VENTAS` varchar(4) NOT NULL,
  `ID_VENDEDOR` varchar(45) NOT NULL,
  `ID_CLEINTE` varchar(45) NOT NULL,
  `ID_LICOR` varchar(45) NOT NULL,
  `FECHA` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_VENTAS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES ('P01','V1','2010','5','10/02/21'),('P02','V1','2021','6','10/02/21'),('P03','V1','2020','12','10/02/21'),('P04','V1','2015','30','12/02/21'),('P05','V2','2019','29','12/02/21'),('P06','V2','2035','14','12/02/21'),('P07','V2','2010','16','14/02/21'),('P08','V2','2034','28','14/02/21'),('P09','V2','2014','10','19/02/21'),('P10','V1','2018','1','22/02/21'),('P11','V1','2026','3','22/02/21'),('P12','V2','2023','25','22/02/21'),('P13','V2','2030','20','24/02/21'),('P14','V1','2010','21','24/02/21'),('P15','V1','2011','26','24/02/21'),('P16','V1','2039','15','24/02/21'),('P17','V2','2034','14','1/03/21'),('P18','V2','2028','12','1/03/21'),('P19','V1','2013','9','2/03/21'),('P20','V2','2017','8','2/03/21'),('P21','V1','2032','4','5/03/21'),('P22','V1','2031','2','5/03/21'),('P23','V2','2016','7','5/03/21'),('P24','V2','2014','16','5/03/21'),('P25','V2','2010','27','7/03/21'),('P26','V1','2035','30','7/03/21'),('P27','V1','2028','22','7/03/21'),('P28','V2','2020','14','8/03/21'),('P29','V2','2016','5','10/03/21'),('P30','V2','2010','12','10/03/21');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-11 12:51:57
