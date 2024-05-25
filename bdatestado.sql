-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: atestado
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
-- Table structure for table `administradores`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `administradores` (
  `instituicao` varchar(360) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `contato` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `perfil_login` varchar(20) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `rg` varchar(12) NOT NULL,
  `endereco` varchar(360) NOT NULL,
  `data_nascimento` date NOT NULL,
  `nome_completo` varchar(250) NOT NULL,
  `id_administradores` int NOT NULL AUTO_INCREMENT,
  `fk_atestado_id_atestado` int DEFAULT NULL,
  PRIMARY KEY (`id_administradores`),
  KEY `FK_administradores_2` (`fk_atestado_id_atestado`),
  CONSTRAINT `FK_administradores_2` FOREIGN KEY (`fk_atestado_id_atestado`) REFERENCES `atestado` (`id_atestado`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administradores`
--

LOCK TABLES `administradores` WRITE;
/*!40000 ALTER TABLE `administradores` DISABLE KEYS */;
/*!40000 ALTER TABLE `administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `sexo` varchar(20) NOT NULL,
  `nome_completo` varchar(250) NOT NULL,
  `data_nascimento` date NOT NULL,
  `endereco` varchar(360) NOT NULL,
  `nome_responsavel` varchar(250) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `rg` varchar(12) NOT NULL,
  `grau_parentesco` varchar(20) NOT NULL,
  `data_nasc_responsavel` date NOT NULL,
  `contato` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `perfil_login` varchar(20) NOT NULL,
  `instituicao` varchar(360) NOT NULL,
  `modalidade` varchar(50) NOT NULL,
  `turma` varchar(10) NOT NULL,
  `turno` varchar(10) NOT NULL,
  `id_aluno` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_aluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atestado`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atestado` (
  `data_solicitacao` date NOT NULL,
  `data_entrega` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `url_arquivo` varchar(360) NOT NULL,
  `id_atestado` int NOT NULL AUTO_INCREMENT,
  `fk_profissional_id_profissional` int DEFAULT NULL,
  `fk_aluno_id_aluno` int DEFAULT NULL,
  PRIMARY KEY (`id_atestado`),
  KEY `FK_atestado_2` (`fk_profissional_id_profissional`),
  KEY `FK_atestado_3` (`fk_aluno_id_aluno`),
  CONSTRAINT `FK_atestado_2` FOREIGN KEY (`fk_profissional_id_profissional`) REFERENCES `profissional` (`id_profissional`) ON DELETE RESTRICT,
  CONSTRAINT `FK_atestado_3` FOREIGN KEY (`fk_aluno_id_aluno`) REFERENCES `aluno` (`id_aluno`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atestado`
--

LOCK TABLES `atestado` WRITE;
/*!40000 ALTER TABLE `atestado` DISABLE KEYS */;
/*!40000 ALTER TABLE `atestado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profissional`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profissional` (
  `instituicao` varchar(360) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `perfil_login` varchar(100) NOT NULL,
  `contato` varchar(20) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `rg` varchar(12) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `endereco` varchar(360) NOT NULL,
  `data_nascimento` date NOT NULL,
  `nome_completo` varchar(250) NOT NULL,
  `id_profissional` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_profissional`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profissional`
--

LOCK TABLES `profissional` WRITE;
/*!40000 ALTER TABLE `profissional` DISABLE KEYS */;
/*!40000 ALTER TABLE `profissional` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-14 13:04:40
