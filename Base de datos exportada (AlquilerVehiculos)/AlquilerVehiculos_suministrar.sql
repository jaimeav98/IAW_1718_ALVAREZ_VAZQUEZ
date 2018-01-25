-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: AlquilerVehiculos
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `suministrar`
--

DROP TABLE IF EXISTS `suministrar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suministrar` (
  `Matricula` varchar(20) NOT NULL,
  `DNI` varchar(20) NOT NULL,
  `Precio` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Matricula`,`DNI`),
  KEY `fk2` (`DNI`),
  CONSTRAINT `suministrar_ibfk_1` FOREIGN KEY (`Matricula`) REFERENCES `vehiculo` (`Matricula`),
  CONSTRAINT `suministrar_ibfk_2` FOREIGN KEY (`DNI`) REFERENCES `proveedor` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suministrar`
--

LOCK TABLES `suministrar` WRITE;
/*!40000 ALTER TABLE `suministrar` DISABLE KEYS */;
INSERT INTO `suministrar` VALUES ('3000-JKZ','53717891K','100000 Euros'),('3167-JKZ','63548651B','120000 Euros'),('3334-JKZ','47289247R','700000 Euros'),('3501-JKZ','29637831H','150000 Euros'),('3668-JKZ','74921479Z','175000 Euros');
/*!40000 ALTER TABLE `suministrar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-18 10:09:33
