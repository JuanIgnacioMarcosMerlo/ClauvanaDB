CREATE DATABASE  IF NOT EXISTS `clauvana` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clauvana`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: clauvana
-- ------------------------------------------------------
-- Server version	8.0.34

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
  `fecha_inscripto` date DEFAULT NULL,
  `id_cliente` varchar(20) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `geolocalizacion` varchar(20) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `nombre_transporte` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `fecha_inscripto` (`fecha_inscripto`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`fecha_inscripto`) REFERENCES `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('2023-10-30','cliente1','Nombre1','Apellido1','DNI1','Geoloc1','Celular1','Transporte1'),('2023-10-30','cliente10','Nombre10','Apellido10','DNI10','Geoloc10','Celular10','Transporte10'),('2023-10-30','cliente11','Nombre11','Apellido11','DNI11','Geoloc11','Celular11','Transporte13'),('2023-10-30','cliente12','Nombre12','Apellido12','DNI12','Geoloc12','Celular12','Transporte13'),('2023-10-30','cliente13','Nombre13','Apellido13','DNI13','Geoloc13','Celular13','Transporte13'),('2023-10-30','cliente14','Nombre14','Apellido14','DNI14','Geoloc14','Celular14','Transporte14'),('2023-10-30','cliente15','Nombre15','Apellido15','DNI15','Geoloc15',NULL,'Transporte15'),('2023-10-30','cliente2','Nombre2','Apellido2','DNI2','Geoloc2','Celular2','Transporte2'),('2023-10-30','cliente3','Nombre3','Apellido3','DNI3','Geoloc3',NULL,'Transporte3'),('2023-10-30','cliente4','Nombre4','Apellido4','DNI4','Geoloc4','Celular4','Transporte4'),('2023-10-30','cliente5','Nombre5','Apellido5','DNI5','Geoloc5','Celular5','Transporte5'),('2023-10-30','cliente6','Nombre6','Apellido6','DNI6','Geoloc6','Celular6','Transporte5'),('2023-10-30','cliente7','Nombre7','Apellido7','DNI7','Geoloc7','Celular7','Transporte5'),('2023-10-30','cliente8','Nombre8','Apellido8','DNI8','Geoloc8','Celular8','Transporte8'),('2023-10-30','cliente9','Nombre9','Apellido9','DNI9','Geoloc9',NULL,'Transporte9');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `deudores`
--

DROP TABLE IF EXISTS `deudores`;
/*!50001 DROP VIEW IF EXISTS `deudores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `deudores` AS SELECT 
 1 AS `id_cliente`,
 1 AS `saldo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `fecha`
--

DROP TABLE IF EXISTS `fecha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fecha` (
  `fecha` date NOT NULL,
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fecha`
--

LOCK TABLES `fecha` WRITE;
/*!40000 ALTER TABLE `fecha` DISABLE KEYS */;
INSERT INTO `fecha` VALUES ('2023-10-30');
/*!40000 ALTER TABLE `fecha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precio_mayorista`
--

DROP TABLE IF EXISTS `precio_mayorista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precio_mayorista` (
  `registro_precio` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `precio_mayorista` decimal(10,2) DEFAULT NULL,
  `id_prenda` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`registro_precio`),
  KEY `fecha` (`fecha`),
  KEY `id_prenda` (`id_prenda`),
  CONSTRAINT `precio_mayorista_ibfk_1` FOREIGN KEY (`fecha`) REFERENCES `fecha` (`fecha`),
  CONSTRAINT `precio_mayorista_ibfk_2` FOREIGN KEY (`id_prenda`) REFERENCES `prendas` (`id_prenda`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precio_mayorista`
--

LOCK TABLES `precio_mayorista` WRITE;
/*!40000 ALTER TABLE `precio_mayorista` DISABLE KEYS */;
INSERT INTO `precio_mayorista` VALUES (1,'2023-10-30',50.00,'prenda1'),(2,'2023-10-30',60.00,'prenda2'),(3,'2023-10-30',70.00,'prenda3'),(4,'2023-10-30',80.00,'prenda4'),(5,'2023-10-30',90.00,'prenda5'),(6,'2023-10-30',100.00,'prenda6'),(7,'2023-10-30',110.00,'prenda7'),(8,'2023-10-30',120.00,'prenda8'),(9,'2023-10-30',130.00,'prenda9'),(10,'2023-10-30',140.00,'prenda10'),(11,'2023-10-30',150.00,'prenda11'),(12,'2023-10-30',160.00,'prenda12'),(13,'2023-10-30',170.00,'prenda13'),(14,'2023-10-30',180.00,'prenda14'),(15,'2023-10-30',190.00,'prenda15');
/*!40000 ALTER TABLE `precio_mayorista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `precio_minorista`
--

DROP TABLE IF EXISTS `precio_minorista`;
/*!50001 DROP VIEW IF EXISTS `precio_minorista`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `precio_minorista` AS SELECT 
 1 AS `fecha`,
 1 AS `id_prenda`,
 1 AS `precio_mayorista`,
 1 AS `precio_minorista`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `prendas`
--

DROP TABLE IF EXISTS `prendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prendas` (
  `fecha` date DEFAULT NULL,
  `id_prenda` varchar(20) NOT NULL,
  PRIMARY KEY (`id_prenda`),
  KEY `fecha` (`fecha`),
  CONSTRAINT `prendas_ibfk_1` FOREIGN KEY (`fecha`) REFERENCES `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prendas`
--

LOCK TABLES `prendas` WRITE;
/*!40000 ALTER TABLE `prendas` DISABLE KEYS */;
INSERT INTO `prendas` VALUES ('2023-10-30','prenda1'),('2023-10-30','prenda10'),('2023-10-30','prenda11'),('2023-10-30','prenda12'),('2023-10-30','prenda13'),('2023-10-30','prenda14'),('2023-10-30','prenda15'),('2023-10-30','prenda2'),('2023-10-30','prenda3'),('2023-10-30','prenda4'),('2023-10-30','prenda5'),('2023-10-30','prenda6'),('2023-10-30','prenda7'),('2023-10-30','prenda8'),('2023-10-30','prenda9');
/*!40000 ALTER TABLE `prendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produccion`
--

DROP TABLE IF EXISTS `produccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produccion` (
  `fecha` date DEFAULT NULL,
  `nombre_taller_corte` varchar(20) NOT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `id_prenda` varchar(20) DEFAULT NULL,
  `pedido_cliente` varchar(20) DEFAULT NULL,
  `id_telas` varchar(20) DEFAULT NULL,
  `color_tela` varchar(20) DEFAULT NULL,
  `precio_unitario_confeccion` decimal(10,2) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`nombre_taller_corte`),
  KEY `fecha` (`fecha`),
  KEY `id_prenda` (`id_prenda`),
  KEY `id_telas` (`id_telas`),
  KEY `pedido_cliente` (`pedido_cliente`),
  CONSTRAINT `produccion_ibfk_1` FOREIGN KEY (`fecha`) REFERENCES `fecha` (`fecha`),
  CONSTRAINT `produccion_ibfk_2` FOREIGN KEY (`id_prenda`) REFERENCES `prendas` (`id_prenda`),
  CONSTRAINT `produccion_ibfk_3` FOREIGN KEY (`id_telas`) REFERENCES `proveedores_telas` (`id_telas`),
  CONSTRAINT `produccion_ibfk_4` FOREIGN KEY (`pedido_cliente`) REFERENCES `producto_terminado` (`id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produccion`
--

LOCK TABLES `produccion` WRITE;
/*!40000 ALTER TABLE `produccion` DISABLE KEYS */;
INSERT INTO `produccion` VALUES ('2023-10-30','TallerCorte1','Direccion1','prenda1','pedido1','075','colorTela1',50.00,10,500.00),('2023-10-30','TallerCorte10','Direccion10','prenda10','pedido10','084','colorTela10',140.00,7,980.00),('2023-10-30','TallerCorte11','Direccion11','prenda11','pedido11','085','colorTela11',150.00,12,1800.00),('2023-10-30','TallerCorte12','Direccion12','prenda12','pedido12','086','colorTela12',160.00,9,1440.00),('2023-10-30','TallerCorte13','Direccion13','prenda13','pedido13','087','colorTela13',170.00,22,3740.00),('2023-10-30','TallerCorte14','Direccion14','prenda14','pedido14','088','colorTela14',180.00,11,1980.00),('2023-10-30','TallerCorte15','Direccion15','prenda15','pedido15','089','colorTela15',190.00,16,3040.00),('2023-10-30','TallerCorte2','Direccion2','prenda2','pedido2','076','colorTela2',60.00,12,720.00),('2023-10-30','TallerCorte3','Direccion3','prenda3','pedido3','077','colorTela3',70.00,15,1050.00),('2023-10-30','TallerCorte4','Direccion4','prenda4','pedido4','078','colorTela4',80.00,8,640.00),('2023-10-30','TallerCorte5','Direccion5','prenda5','pedido5','079','colorTela5',90.00,20,1800.00),('2023-10-30','TallerCorte6','Direccion6','prenda6','pedido6','080','colorTela6',100.00,5,500.00),('2023-10-30','TallerCorte7','Direccion7','prenda7','pedido7','081','colorTela7',110.00,14,1540.00),('2023-10-30','TallerCorte8','Direccion8','prenda8','pedido8','082','colorTela8',120.00,18,2160.00),('2023-10-30','TallerCorte9','Direccion9','prenda9','pedido9','083','colorTela9',130.00,25,3250.00);
/*!40000 ALTER TABLE `produccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_before_delete_produccion` BEFORE DELETE ON `produccion` FOR EACH ROW BEGIN
    INSERT INTO log_produccion_corte (usuario, fecha, hora, accion, descripcion)
    VALUES (USER(), CURDATE(), CURTIME(), 'DELETE', CONCAT('Se eliminará el registro con Fecha: ', OLD.fecha, ', Nombre_Taller_Corte: ', OLD.nombre_taller_corte, ', Id_Prenda: ', OLD.id_prenda));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `producto_terminado`
--

DROP TABLE IF EXISTS `producto_terminado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_terminado` (
  `fecha` date DEFAULT NULL,
  `id_pedido` varchar(20) NOT NULL,
  `id_tela` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `precio_terminado` decimal(10,2) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fecha` (`fecha`),
  CONSTRAINT `producto_terminado_ibfk_1` FOREIGN KEY (`fecha`) REFERENCES `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_terminado`
--

LOCK TABLES `producto_terminado` WRITE;
/*!40000 ALTER TABLE `producto_terminado` DISABLE KEYS */;
INSERT INTO `producto_terminado` VALUES ('2023-10-30','pedido1','tela1','color1',50.00,10,500.00),('2023-10-30','pedido10','tela10','color10',140.00,7,980.00),('2023-10-30','pedido11','tela11','color11',150.00,12,1800.00),('2023-10-30','pedido12','tela12','color12',160.00,9,1440.00),('2023-10-30','pedido13','tela13','color13',170.00,22,3740.00),('2023-10-30','pedido14','tela14','color14',180.00,11,1980.00),('2023-10-30','pedido15','tela15','color15',190.00,16,3040.00),('2023-10-30','pedido2','tela2','color2',60.00,12,720.00),('2023-10-30','pedido3','tela3','color3',70.00,15,1050.00),('2023-10-30','pedido4','tela4','color4',80.00,8,640.00),('2023-10-30','pedido5','tela5','color5',90.00,20,1800.00),('2023-10-30','pedido6','tela6','color6',100.00,5,500.00),('2023-10-30','pedido7','tela7','color7',110.00,14,1540.00),('2023-10-30','pedido8','tela8','color8',120.00,18,2160.00),('2023-10-30','pedido9','tela9','color9',130.00,25,3250.00);
/*!40000 ALTER TABLE `producto_terminado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores_avios`
--

DROP TABLE IF EXISTS `proveedores_avios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores_avios` (
  `fecha` date DEFAULT NULL,
  `factura` int DEFAULT NULL,
  `empresa` varchar(20) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `tipo_avio` varchar(20) NOT NULL,
  `precio_unidad` decimal(10,2) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`tipo_avio`),
  KEY `fecha` (`fecha`),
  CONSTRAINT `proveedores_avios_ibfk_1` FOREIGN KEY (`fecha`) REFERENCES `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores_avios`
--

LOCK TABLES `proveedores_avios` WRITE;
/*!40000 ALTER TABLE `proveedores_avios` DISABLE KEYS */;
INSERT INTO `proveedores_avios` VALUES ('2023-10-30',400,'empresaavio1','direccionavio1','tipoavio1',10.00,15,150.00),('2023-10-30',409,'empresaavio10','direccionavio10','tipoavio10',10.00,8,80.00),('2023-10-30',410,'empresaavio11','direccionavio11','tipoavio11',10.00,19,190.00),('2023-10-30',411,'empresaavio12','direccionavio12','tipoavio12',10.00,20,200.00),('2023-10-30',412,'empresaavio13','direccionavio13','tipoavio13',10.00,21,210.00),('2023-10-30',413,'empresaavio14','direccionavio14','tipoavio14',10.00,13,130.00),('2023-10-30',414,'empresaavio15','direccionavio15','tipoavio15',10.00,17,170.00),('2023-10-30',401,'empresaavio2','direccionavio2','tipoavio2',10.00,12,120.00),('2023-10-30',402,'empresaavio3','direccionavio3','tipoavio3',10.00,18,180.00),('2023-10-30',403,'empresaavio4','direccionavio4','tipoavio4',10.00,22,220.00),('2023-10-30',404,'empresaavio5','direccionavio5','tipoavio5',10.00,9,90.00),('2023-10-30',405,'empresaavio6','direccionavio6','tipoavio6',10.00,16,160.00),('2023-10-30',406,'empresaavio7','direccionavio7','tipoavio7',10.00,25,250.00),('2023-10-30',407,'empresaavio8','direccionavio8','tipoavio8',10.00,14,140.00),('2023-10-30',408,'empresaavio9','direccionavio9','tipoavio9',10.00,11,110.00);
/*!40000 ALTER TABLE `proveedores_avios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores_telas`
--

DROP TABLE IF EXISTS `proveedores_telas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores_telas` (
  `fecha` date DEFAULT NULL,
  `factura` int DEFAULT NULL,
  `empresa` varchar(20) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `id_telas` varchar(20) NOT NULL,
  `colores` varchar(20) DEFAULT NULL,
  `precio_unidad` decimal(10,2) DEFAULT NULL,
  `cantidad` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_telas`),
  KEY `fecha` (`fecha`),
  CONSTRAINT `proveedores_telas_ibfk_1` FOREIGN KEY (`fecha`) REFERENCES `fecha` (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores_telas`
--

LOCK TABLES `proveedores_telas` WRITE;
/*!40000 ALTER TABLE `proveedores_telas` DISABLE KEYS */;
INSERT INTO `proveedores_telas` VALUES ('2023-10-30',123,'empresa1','direccion1','075','color1',10.00,10.00,100.00),('2023-10-30',124,'empresa2','direccion2','076','color2',10.00,12.00,120.00),('2023-10-30',125,'empresa3','direccion3','077','color3',10.00,15.00,150.00),('2023-10-30',126,'empresa4','direccion4','078','color4',10.00,8.00,80.00),('2023-10-30',127,'empresa5','direccion5','079','color5',10.00,20.00,200.00),('2023-10-30',128,'empresa6','direccion6','080','color6',10.00,5.00,50.00),('2023-10-30',129,'empresa7','direccion7','081','color7',10.00,14.00,140.00),('2023-10-30',130,'empresa8','direccion8','082','color8',10.00,18.00,180.00),('2023-10-30',131,'empresa9','direccion9','083','color9',10.00,25.00,250.00),('2023-10-30',132,'empresa10','direccion10','084','color10',10.00,7.00,70.00),('2023-10-30',133,'empresa11','direccion11','085','color11',10.00,12.00,120.00),('2023-10-30',134,'empresa12','direccion12','086','color12',10.00,9.00,90.00),('2023-10-30',135,'empresa13','direccion13','087','color13',10.00,22.00,220.00),('2023-10-30',136,'empresa14','direccion14','088','color14',10.00,11.00,110.00),('2023-10-30',137,'empresa15','direccion15','089','color15',10.00,16.00,160.00),('2023-10-30',138,'empresa6','direccion6','090','color9',10.00,5.00,50.00),('2023-10-30',139,'empresa10','direccion10','091','color15',10.00,7.00,70.00);
/*!40000 ALTER TABLE `proveedores_telas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_after_insert_proveedores_tela` AFTER INSERT ON `proveedores_telas` FOR EACH ROW BEGIN
    INSERT INTO log_proveedores_tela (usuario, fecha, hora, accion, descripcion)
    VALUES (USER(), CURDATE(), CURTIME(), 'INSERT', 'Se ha insertado un nuevo registro en proveedores_telas');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `resumen_saldo`
--

DROP TABLE IF EXISTS `resumen_saldo`;
/*!50001 DROP VIEW IF EXISTS `resumen_saldo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `resumen_saldo` AS SELECT 
 1 AS `id_cliente`,
 1 AS `saldo`,
 1 AS `estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id_registro` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `id_prenda` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `stock_unitario` int DEFAULT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `fecha` (`fecha`),
  KEY `id_prenda` (`id_prenda`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`fecha`) REFERENCES `fecha` (`fecha`),
  CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`id_prenda`) REFERENCES `prendas` (`id_prenda`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (70,'2023-10-30','prenda1','rojo',100),(71,'2023-10-30','prenda2','azul',50),(72,'2023-10-30','prenda3','verde',75),(73,'2023-10-30','prenda1','amarillo',90),(74,'2023-10-30','prenda2','rojo',120),(75,'2023-10-30','prenda3','azul',60),(76,'2023-10-30','prenda1','verde',85),(77,'2023-10-30','prenda2','amarillo',110),(78,'2023-10-30','prenda3','rojo',130),(79,'2023-10-30','prenda1','azul',70),(80,'2023-10-30','prenda2','verde',95),(81,'2023-10-30','prenda11','amarillo',90),(82,'2023-10-30','prenda13','rojo',120),(83,'2023-10-30','prenda15','azul',60),(84,'2023-10-30','prenda5','verde',85),(85,'2023-10-30','prenda2','amarillo',110),(86,'2023-10-30','prenda4','rojo',130),(87,'2023-10-30','prenda7','azul',70),(88,'2023-10-30','prenda9','verde',95),(89,'2023-10-30','prenda3','amarillo',105),(90,'2023-10-30','prenda1','rojo',80),(91,'2023-10-30','prenda2','azul',100),(92,'2023-10-30','prenda3','verde',125),(93,'2023-10-30','prenda1','rojo',75),(94,'2023-10-30','prenda2','azul',25),(95,'2023-10-30','prenda3','verde',50);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `stocktotal`
--

DROP TABLE IF EXISTS `stocktotal`;
/*!50001 DROP VIEW IF EXISTS `stocktotal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stocktotal` AS SELECT 
 1 AS `id_prenda`,
 1 AS `stock_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tipo_prenda`
--

DROP TABLE IF EXISTS `tipo_prenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_prenda` (
  `tipo_prenda` varchar(20) NOT NULL,
  `id_prenda` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tipo_prenda`),
  KEY `id_prenda` (`id_prenda`),
  CONSTRAINT `tipo_prenda_ibfk_1` FOREIGN KEY (`id_prenda`) REFERENCES `prendas` (`id_prenda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_prenda`
--

LOCK TABLES `tipo_prenda` WRITE;
/*!40000 ALTER TABLE `tipo_prenda` DISABLE KEYS */;
INSERT INTO `tipo_prenda` VALUES ('TipoPrenda1','prenda1'),('TipoPrenda10','prenda10'),('TipoPrenda11','prenda11'),('TipoPrenda12','prenda12'),('TipoPrenda13','prenda13'),('TipoPrenda14','prenda14'),('TipoPrenda15','prenda15'),('TipoPrenda2','prenda2'),('TipoPrenda3','prenda3'),('TipoPrenda4','prenda4'),('TipoPrenda5','prenda5'),('TipoPrenda6','prenda6'),('TipoPrenda7','prenda7'),('TipoPrenda8','prenda8'),('TipoPrenda9','prenda9');
/*!40000 ALTER TABLE `tipo_prenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transacciones` (
  `fecha_facturacion` date DEFAULT NULL,
  `numero_factura` varchar(20) NOT NULL,
  `id_cliente` varchar(20) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `tipo_de_transaccion` enum('debe','abono') DEFAULT NULL,
  PRIMARY KEY (`numero_factura`),
  KEY `fecha_facturacion` (`fecha_facturacion`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `transacciones_ibfk_1` FOREIGN KEY (`fecha_facturacion`) REFERENCES `fecha` (`fecha`),
  CONSTRAINT `transacciones_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES ('2023-10-30','factura1','cliente1',1500.00,'debe'),('2023-10-30','factura10','cliente10',5000.00,'abono'),('2023-10-30','factura11','cliente11',1100.00,'debe'),('2023-10-30','factura12','cliente12',1200.00,'abono'),('2023-10-30','factura13','cliente13',1300.00,'debe'),('2023-10-30','factura14','cliente14',1400.00,'abono'),('2023-10-30','factura15','cliente15',1500.00,'debe'),('2023-10-30','factura16','cliente1',2500.00,'debe'),('2023-10-30','factura17','cliente2',3500.00,'abono'),('2023-10-30','factura18','cliente3',4500.00,'debe'),('2023-10-30','factura19','cliente4',5500.00,'abono'),('2023-10-30','factura2','cliente2',5750.00,'abono'),('2023-10-30','factura20','cliente5',6500.00,'debe'),('2023-10-30','factura21','cliente6',7500.00,'abono'),('2023-10-30','factura22','cliente7',8500.00,'debe'),('2023-10-30','factura23','cliente8',9500.00,'abono'),('2023-10-30','factura24','cliente9',10500.00,'debe'),('2023-10-30','factura25','cliente10',11500.00,'abono'),('2023-10-30','factura26','cliente11',12500.00,'debe'),('2023-10-30','factura27','cliente12',13500.00,'abono'),('2023-10-30','factura28','cliente13',14500.00,'debe'),('2023-10-30','factura29','cliente14',15500.00,'abono'),('2023-10-30','factura3','cliente3',7500.00,'debe'),('2023-10-30','factura30','cliente15',16500.00,'debe'),('2023-10-30','factura4','cliente4',4500.00,'abono'),('2023-10-30','factura5','cliente5',1500.00,'debe'),('2023-10-30','factura6','cliente6',5000.00,'abono'),('2023-10-30','factura7','cliente7',7500.00,'debe'),('2023-10-30','factura8','cliente8',10000.00,'abono'),('2023-10-30','factura9','cliente9',4000.00,'debe');
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'clauvana'
--

--
-- Dumping routines for database 'clauvana'
--
/*!50003 DROP FUNCTION IF EXISTS `CalcularSaldoCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalcularSaldoCliente`(cliente_id VARCHAR(20)) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE saldo DECIMAL(10, 2);
    SELECT SUM(CASE WHEN tipo_de_transaccion = 'debe' THEN -monto ELSE monto END) INTO saldo
    FROM transacciones
    WHERE id_cliente = cliente_id;
    RETURN saldo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ObtenerNombreCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `ObtenerNombreCliente`(cliente_id VARCHAR(20)) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE cliente_nombre VARCHAR(50);
    SELECT CONCAT(nombre, ' ', apellido, ' ',dni) INTO cliente_nombre
    FROM clientes
    WHERE id_cliente = cliente_id;
    RETURN cliente_nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ObtenerTipoPrenda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `ObtenerTipoPrenda`(id_prenda VARCHAR(20)) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE tipo_prenda VARCHAR(50);
    SELECT tipo_prenda INTO tipo_prenda
    FROM tipo_prenda
    WHERE id_prenda = id_prenda;
    RETURN tipo_prenda;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarEliminarRegistroTela` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarEliminarRegistroTela`(IN accion VARCHAR(10), IN id_tela VARCHAR(20), IN empresa VARCHAR(20), IN direccion VARCHAR(20), IN factura INT, IN color VARCHAR(20), IN cantidad DECIMAL(10,2), IN precio_unidad DECIMAL(10,2), IN total DECIMAL(10,2))
BEGIN
    IF accion = 'INSERT' THEN
        -- agrega un nuevo registro en proveedores_tela
        INSERT INTO proveedores_telas (fecha, empresa, direccion, factura, id_tela, color, cantidad, precio_unidad, total)
        VALUES (NOW(), empresa, direccion, factura, id_tela, color, cantidad, precio_unidad, total);
    ELSEIF accion = 'DELETE' THEN
        -- elimina el registro en proveedores_tela con el id_tela
        DELETE FROM proveedores_telas WHERE id_tela = id_tela;
    ELSE
        SELECT 'Acción no válida';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OrdenarTablaTela` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OrdenarTablaTela`(IN campo_orden VARCHAR(50), IN orden VARCHAR(5))
BEGIN
    SET @sql = CONCAT('SELECT * FROM proveedores_telas ORDER BY ', campo_orden, ' ', orden);
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `deudores`
--

/*!50001 DROP VIEW IF EXISTS `deudores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `deudores` AS select `t`.`id_cliente` AS `id_cliente`,sum((case when (`t`.`tipo_de_transaccion` = 'debe') then -(`t`.`monto`) else `t`.`monto` end)) AS `saldo` from `transacciones` `t` group by `t`.`id_cliente` having (sum((case when (`t`.`tipo_de_transaccion` = 'debe') then -(`t`.`monto`) else `t`.`monto` end)) < 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `precio_minorista`
--

/*!50001 DROP VIEW IF EXISTS `precio_minorista`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `precio_minorista` AS select `pm`.`fecha` AS `fecha`,`pm`.`id_prenda` AS `id_prenda`,`pm`.`precio_mayorista` AS `precio_mayorista`,(`pm`.`precio_mayorista` * 1.20) AS `precio_minorista` from `precio_mayorista` `pm` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `resumen_saldo`
--

/*!50001 DROP VIEW IF EXISTS `resumen_saldo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `resumen_saldo` AS select `t`.`id_cliente` AS `id_cliente`,sum((case when (`t`.`tipo_de_transaccion` = 'debe') then -(`t`.`monto`) else `t`.`monto` end)) AS `saldo`,(case when (sum((case when (`t`.`tipo_de_transaccion` = 'debe') then -(`t`.`monto`) else `t`.`monto` end)) < 0) then 'debe' else 'no debe' end) AS `estado` from `transacciones` `t` group by `t`.`id_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stocktotal`
--

/*!50001 DROP VIEW IF EXISTS `stocktotal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stocktotal` AS select `stock`.`id_prenda` AS `id_prenda`,sum(`stock`.`stock_unitario`) AS `stock_total` from `stock` group by `stock`.`id_prenda` */;
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

-- Dump completed on 2023-10-30 17:28:53
