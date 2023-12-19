-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: kasitalovers
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
-- Table structure for table `bebidas`
--

DROP TABLE IF EXISTS `bebidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bebidas` (
  `id_bebidas` int NOT NULL,
  `Nombre_bebidas` varchar(50) NOT NULL,
  `Sabores` text,
  `Precio` decimal(10,2) NOT NULL,
  `ID_Categoria` int DEFAULT NULL,
  PRIMARY KEY (`id_bebidas`),
  KEY `ID_Categoria` (`ID_Categoria`),
  CONSTRAINT `bebidas_ibfk_1` FOREIGN KEY (`ID_Categoria`) REFERENCES `categorias` (`Id_Categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bebidas`
--

LOCK TABLES `bebidas` WRITE;
/*!40000 ALTER TABLE `bebidas` DISABLE KEYS */;
INSERT INTO `bebidas` VALUES (1,'Refresco de Cola','Cola',50.00,1),(2,'Refresco de Naranja','Naranja',45.00,1),(3,'Refresco de Limón','Limón',45.00,1),(4,'Refresco de Uva','Uva',50.00,1),(5,'Batida de Fresa','Fresa',70.00,2),(6,'Batida de Piña','Piña',65.00,2),(7,'Batida de Mango','Mango',70.00,2),(8,'Batida de Coco','Coco',75.00,2),(9,'Jugo de Naranja Natural','Naranja',60.00,3),(10,'Jugo de Guayaba Natural','Guayaba',65.00,3),(11,'Jugo de Piña Natural','Piña',60.00,3),(12,'Jugo de Toronja Natural','Toronja',65.00,3);
/*!40000 ALTER TABLE `bebidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `Id_Categoria` int NOT NULL,
  `Nombre_Categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Categoría 1'),(2,'Categoría 2'),(3,'Categoría 3');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guarniciones`
--

DROP TABLE IF EXISTS `guarniciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guarniciones` (
  `id_guarniciones` int NOT NULL,
  `Nombre_guarniciones` varchar(50) NOT NULL,
  `ingredientes` text,
  `Precio` decimal(10,2) NOT NULL,
  `ID_Categoria` int DEFAULT NULL,
  PRIMARY KEY (`id_guarniciones`),
  KEY `ID_Categoria` (`ID_Categoria`),
  CONSTRAINT `guarniciones_ibfk_1` FOREIGN KEY (`ID_Categoria`) REFERENCES `categorias` (`Id_Categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guarniciones`
--

LOCK TABLES `guarniciones` WRITE;
/*!40000 ALTER TABLE `guarniciones` DISABLE KEYS */;
INSERT INTO `guarniciones` VALUES (1,'Papas Fritas','Papas, aceite vegetal, sal',70.00,3),(2,'Tostones','Plátanos verdes, aceite, sal',75.50,3),(3,'Yuca Frita','Yuca, aceite, ajo, sal',80.25,3),(4,'Ensalada César','Lechuga, pollo, croutones, aderezo César',90.75,3);
/*!40000 ALTER TABLE `guarniciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `Id_Pedidos` int NOT NULL AUTO_INCREMENT,
  `Descripcion` text,
  `Cantidad` int DEFAULT NULL,
  `Total` decimal(10,2) NOT NULL,
  `Fecha_pedidos` datetime DEFAULT CURRENT_TIMESTAMP,
  `Id_Platos` int DEFAULT NULL,
  PRIMARY KEY (`Id_Pedidos`),
  KEY `Id_Platos` (`Id_Platos`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`Id_Platos`) REFERENCES `platos` (`Id_Platos`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'Pedido 1',2,31.98,'2023-12-18 08:52:21',1),(2,'Pedido 2',1,12.50,'2023-12-18 08:52:21',2),(3,'Pedido 3',3,56.25,'2023-12-18 08:52:21',3);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platos`
--

DROP TABLE IF EXISTS `platos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platos` (
  `Id_Platos` int NOT NULL AUTO_INCREMENT,
  `Nombre_Platos` varchar(50) NOT NULL,
  `Ingredientes` text,
  `Precio` decimal(10,2) NOT NULL,
  `Id_Categoria` int DEFAULT NULL,
  PRIMARY KEY (`Id_Platos`),
  KEY `Id_Categoria` (`Id_Categoria`),
  CONSTRAINT `platos_ibfk_1` FOREIGN KEY (`Id_Categoria`) REFERENCES `categorias` (`Id_Categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platos`
--

LOCK TABLES `platos` WRITE;
/*!40000 ALTER TABLE `platos` DISABLE KEYS */;
INSERT INTO `platos` VALUES (1,'Hamburguesa de Carne','Carne de res, lechuga, tomate, queso',300.00,1),(2,'Pollo grande frito','Pollo, condimentos',400.00,2),(3,'Papas grandes fritas','Papas, aceite, sal',500.00,3),(4,'Hamburguesa XL','Carne de res, lechuga, tomate, queso, doble carne',600.00,1),(5,'Hamburguesa de Carne','Carne de res, lechuga, tomate, queso',700.00,1),(6,'Pollo grande frito','Pollo, condimentos',800.00,2),(7,'Papas grandes fritas','Papas, aceite, sal',900.00,3),(8,'Hamburguesa XL','Carne de res, lechuga, tomate, queso, doble carne',1000.00,1);
/*!40000 ALTER TABLE `platos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'usuario1','123456');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-18 23:07:08
