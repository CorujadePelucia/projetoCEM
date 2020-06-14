CREATE DATABASE  IF NOT EXISTS `ligacem` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ligacem`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: ligacem
-- ------------------------------------------------------
-- Server version	5.7.28

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
-- Table structure for table `atletas`
--

DROP TABLE IF EXISTS `atletas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atletas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `Apelido` varchar(25) NOT NULL,
  `curso` varchar(50) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `RG` varchar(15) DEFAULT NULL,
  `CPF` varchar(15) DEFAULT NULL,
  `data_de_nascimento` date NOT NULL,
  `telefone` varchar(17) DEFAULT NULL,
  `idusuarios` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idusuarios` (`idusuarios`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `apelido` varchar(20) DEFAULT NULL,
  `curso` varchar(30) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `telefone` varchar(17) DEFAULT NULL,
  `RA` varchar(9) DEFAULT NULL,
  `rede_social` varchar(25) DEFAULT NULL,
  `data_prim_compra` date DEFAULT NULL,
  `idusuarios` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idusuarios` (`idusuarios`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contas`
--

DROP TABLE IF EXISTS `contas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `natureza` varchar(9) DEFAULT NULL,
  `idusuarios` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idusuarios` (`idusuarios`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `CNPJ` varchar(20) NOT NULL,
  `telefone` varchar(17) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `email` varchar(38) NOT NULL,
  `rede_social` varchar(40) DEFAULT NULL,
  `referencia` varchar(40) DEFAULT NULL,
  `data_de_criacao` date NOT NULL,
  `idusuarios` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idusuarios` (`idusuarios`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `imobilizados`
--

DROP TABLE IF EXISTS `imobilizados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imobilizados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `Tipo` varchar(25) NOT NULL,
  `data_de_aquisicao` date NOT NULL,
  `custo_de_aquisicao` float NOT NULL,
  `referencia` varchar(12) DEFAULT NULL,
  `data_prim_compra` date DEFAULT NULL,
  `idusuarios` int(11) DEFAULT NULL,
  `idfornecedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idusuarios` (`idusuarios`),
  KEY `idfornecedor` (`idfornecedor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `nome_curto` varchar(15) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `preco_de_aquisicao` float DEFAULT NULL,
  `data_criacao` date NOT NULL,
  `estoque` int(11) NOT NULL,
  `idusuarios` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idusuarios` (`idusuarios`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `técnico`
--

DROP TABLE IF EXISTS `técnico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `técnico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `RG` varchar(15) DEFAULT NULL,
  `CPF` varchar(15) DEFAULT NULL,
  `esporte` varchar(30) DEFAULT NULL,
  `telefone` varchar(17) DEFAULT NULL,
  `banco` varchar(30) DEFAULT NULL,
  `conta_deposito` varchar(30) NOT NULL,
  `data_de_contratacao` date NOT NULL,
  `idusuarios` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `conta_deposito` (`conta_deposito`),
  KEY `idusuarios` (`idusuarios`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `diretoria` varchar(20) NOT NULL,
  `curso` varchar(50) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `telefone` varchar(17) DEFAULT NULL,
  `RA` varchar(9) DEFAULT NULL,
  `RG` varchar(15) DEFAULT NULL,
  `CPF` varchar(15) DEFAULT NULL,
  `rede_social` varchar(25) DEFAULT NULL,
  `foto_de_perfil` blob,
  `data_de_criacao` date DEFAULT NULL,
  `Tipologia` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-14 15:25:11
