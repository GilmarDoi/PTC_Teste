CREATE DATABASE  IF NOT EXISTS `ptc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ptc`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: ptc
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `Tipo` varchar(20) NOT NULL DEFAULT 'Fisica ou juridica',
  `CPF_CNPJ` varchar(20) NOT NULL DEFAULT 'Cpf ou Cnpj',
  `RG_IE` varchar(20) DEFAULT 'RG ou Insc Estadual',
  `Data_Cadastro` date DEFAULT NULL,
  `Ativo` varchar(20) DEFAULT 'Ativo Inativo',
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'GILMAR','F','55911064987','9028283382','2011-08-03','A'),(3,'CLUB CELL COMÉRCIO DE CELULARES LTDA MATRIZ','J','','9028283382','2011-08-03','A'),(5,'PRISCILA RIBEIRO MAIA','F','4326402903','85285807','2011-08-08','A'),(6,'LUCIANA HEREDIA VIEIRA','F','55911064987','71615790','2011-08-08','A'),(7,'ROBSON CUSTODIO FRAGOSO','F','2935575946','77210474','2011-08-08','A'),(8,'JOA MARIA ALVES DA CRUZ','F','51680149921','48291406444','2011-08-09','I'),(9,'EDUARDO HENRIQUE ZANARDINI','F','7813924975','103518296','2011-08-09','A'),(10,'ELIANE ZANARDINI','F','64775097920','43936484','2011-08-09','A'),(12,'LEDA VIANA COSTA RIBEIRO','F','7027549948','106046522','2011-08-09','A'),(13,'PEDRO DE JESUS DE OLIVEIRA','F','36120561587','3116681001','2011-08-09','A'),(14,'LUCIANA CECILA BASSO','F','2683235933','70532468','2011-08-09','A'),(16,'LONY MARY HEINSEN','F','95963383900','59775960','2011-08-09','A'),(17,'JOSE FELIX VALDEZ BENITEZ','F','18484131904','V0668780','2011-08-09','A'),(18,'BILLY ALBERTO FAGOS IONES 111 ','F','3617034900','89065461','2011-08-09','I'),(19,'ZANONI V KANANDA','F','2902397968','63592048','2011-08-09','A'),(20,'FERNANDA DE SORDI','F','26667425808','28656761','2011-08-09','A'),(21,'WELINGTON SEEFELDT RANGEL','F','5096683990','94674450','2011-08-09','I'),(22,'MARIO RIBEIRO DE MELLO','F','87615444934','51330340','2011-08-09','A'),(23,'WALDEMIR P SCHMIDT JUNIOR','F','2006765981','71464156','2011-08-09','A'),(24,'DORACI REGINA DE SOUZA','F','70362033900','52081220','2011-08-09','A'),(25,'IVAN SOARES DE SOUZA','F','80070736987','53733263','2011-08-09','A'),(26,'OSNI DA MAIA RAIA','F','53678150900','2054079','2011-08-10','A'),(27,'GISELE DO NASCIMENTO DE MEDEIROS','F','95986707915','59349783','2011-08-10','A'),(28,'ROSILENE DE CASSIA CORREA MARIA','F','88584283900','56451803','2011-08-10','A'),(29,'THIAGO CORREA DA COSTA','F','9794617903','131867905','2011-08-10','A'),(30,'LEONARDO RODRIGUES','F','7114026986','21','2011-08-10','A'),(31,'EDEMILSON DA SILVA','F','80071244972','54800134','2011-08-10','A'),(32,'GILSOM FERREIRA SILVA','F','','123917','2020-03-05','A'),(33,'teste2','F','55911064987','5655','2021-02-25','A'),(34,'teste 12','F','55911064987','5656lll','2022-01-01','A'),(35,'GILMAR22222','J','1111111111111','11111111111','2022-03-24','A'),(36,'teste novo','F','11122233388','jgjgj','2022-03-27','A'),(37,'4444','F','','98989','2022-03-27','A'),(38,'João da Silva','F','55911064987','uyuu9-99','2022-03-27','A');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `idEndereco` int unsigned NOT NULL AUTO_INCREMENT,
  `Logradouro` varchar(45) DEFAULT NULL,
  `Numero` varchar(20) DEFAULT NULL,
  `CEP` varchar(10) DEFAULT NULL,
  `Bairro` varchar(45) DEFAULT NULL,
  `Cidade` varchar(45) DEFAULT NULL,
  `Estado` varchar(10) DEFAULT NULL,
  `Pais` varchar(45) DEFAULT NULL,
  `Cliente_idCliente` int NOT NULL,
  PRIMARY KEY (`idEndereco`),
  KEY `fk_Endereco_Cliente1_idx` (`Cliente_idCliente`),
  CONSTRAINT `fk_Endereco_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (3,'AVENIDA ESPÍRITO SANTO','145','83408-410','FÁTIMA','COLOMBO','PR','BRASIL',3),(5,'UBALDINO CECCON','18','83406-500','VILA SANTA HELENA','COLOMBO','PR','BRASIL',5),(9,'TV CORREIA 	','153','83203-260','CENTRO','PARANAGUÁ','PR','BRASIL',9),(23,'RUA JEQUITINHONHA','96','83212-210','PARQUE SÃO JOÃO','PARANAGUÁ','PR','BRASIL',23),(29,'RUA MANOEL PEREIRA','572','83203-765','VINTE E NOVE DE JULHO','PARANAGUÁ','PR','BRASIL',29),(31,'888','88','89090-060','888','888','pr','brasil',24),(32,'565','565','86060-000','6565','565','pr','Brasil',9),(36,'Rua Tanganica','56','86080-000','Ouro Verde','Londrina','PR','Brasil',12),(38,'Rua Japão','200','11020200','Macuco','Santos','SP','Brasil',34),(39,'Rua Nova Orleans','','86060080','Lima Azevedo','Londrina','PR','Brasil',10),(40,'','','','','','','',18),(41,'Rua Minneápolis','565','86060090','Lima Azevedo','Londrina','PR','Brasil',35),(42,'Rua Marrocos','80','86080080','Ouro+Verde','Londrina','PR','Brasil',6),(43,'Rua Minneapolis','100','86060090','lima+Azevedo','Londrina','PR',NULL,1),(44,'rua','1','86060090','ii','londrina','pr','basil',7),(45,'rua 2','2','86060080','2','2','pr','brasil',7),(46,'3','3','86060080',NULL,'3','pr','brasil',22),(47,'Avenida Odilon+Borges+de+Carvalho','22','86070090','Shangri-La','Londrina','PR','brasil',9),(48,'Rua Cecília+Meirelles','11','86060600','Palermo','Londrina','PR',NULL,1),(51,'Rua Nova+Orleans','25','86060080','Lima+Azevedo','Londrina','PR',NULL,38);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `idTelefone` int NOT NULL AUTO_INCREMENT,
  `Fone` varchar(20) DEFAULT NULL,
  `Cliente_idCliente` int NOT NULL,
  PRIMARY KEY (`idTelefone`),
  KEY `fk_Telefone_Cliente_idx` (`Cliente_idCliente`),
  CONSTRAINT `fk_Telefone_Cliente` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (3,'(41)3562-5099',3),(5,'(41)9915-4005',5),(9,'(44)99999-5555',22),(10,'(99)99999-9999',33),(13,'(43)_99994-5455',1),(14,'(91) 3555-1010',34),(15,'(43)99995-4555',18),(16,'(43)99994-5555',35),(17,'43 9999999',3),(18,'(41) 99995-1111',6),(19,'43 99994-5455',32),(22,'(43) 3348-1796',38);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-28  0:33:15
