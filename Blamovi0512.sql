CREATE DATABASE  IF NOT EXISTS `bd_blamovi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_blamovi`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_blamovi
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `idComentario` binary(16) NOT NULL,
  `idUsuario` binary(16) NOT NULL,
  `idPost` binary(16) NOT NULL,
  `texto` varchar(255) NOT NULL,
  PRIMARY KEY (`idComentario`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idPost` (`idPost`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`idPost`) REFERENCES `post` (`idPost`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (_binary 'ß±XèÓ£§¥E{Ö¥',_binary '.“ù≠èÓ£§¥E{Ö¥',_binary 'l\nk\ÏèÓ£§¥E{Ö¥','Um filme que talvez mere√ßa um pouco mais de cr√©dito'),(_binary '©j]ºèÓ£§¥E{Ö¥',_binary '1KbàèÓ£§¥E{Ö¥',_binary 'Òû-CèÓ£§¥E{Ö¥','Uma homenagem altamente divertida e sangrenta aos filmes de terror dos anos 70 e 80'),(_binary '™\„\€PèÓ£§¥E{Ö¥',_binary '2\»!∂èÓ£§¥E{Ö¥',_binary '¢\–2èÓ£§¥E{Ö¥','Toda a divers√£o do original com um enredo muito melhor e mais sombrio'),(_binary '¨≥~\ÈèÓ£§¥E{Ö¥',_binary '6gvèÓ£§¥E{Ö¥',_binary 'H°\Œ€èÓ£§¥E{Ö¥','Estranho e incr√≠vel.'),(_binary 'Æ0\›˛èÓ£§¥E{Ö¥',_binary '4Æ\–¸èÓ£§¥E{Ö¥',_binary 'o\‡6”èÓ£§¥E{Ö¥','Eles fazem um trabalho de baixa qualidade');
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `idPost` binary(16) NOT NULL,
  `idVideo` binary(16) NOT NULL,
  `idUsuario` binary(16) NOT NULL,
  `quantidadeCurtida` int NOT NULL,
  `texto` varchar(255) NOT NULL,
  PRIMARY KEY (`idPost`),
  KEY `idVideo` (`idVideo`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`idVideo`) REFERENCES `video` (`idVideo`),
  CONSTRAINT `post_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (_binary '¢\–2èÓ£§¥E{Ö¥',_binary 'y¯=–èÓ£§¥E{Ö¥',_binary '2\»!∂èÓ£§¥E{Ö¥',289,'O que tornou este triunfo de enorme sucesso? Foi elenco, m√∫sica, imagina√ß√£o, engenhosidade ou sorte?'),(_binary 'H°\Œ€èÓ£§¥E{Ö¥',_binary '4Æ\–¸èÓ£§¥E{Ö¥',_binary '¸Z\n‘é\Óé˘1ø\’IÇ',3,'Em Los Angeles, os humanos vivem com orcs e elfos em um mundo onde existem criaturas fant√°sticas.'),(_binary 'l\nk\ÏèÓ£§¥E{Ö¥',_binary '^\∆\Z1èÓ£§¥E{Ö¥',_binary '.“ù≠èÓ£§¥E{Ö¥',12,'Tanta grandeza neste filme que estou chocado que tenha uma classifica√ß√£o de 5,9! John Singleton dirigiu um passeio selvagem de entretenimento divertido com carros, m√∫sica, luzes de neon e cinematografia'),(_binary 'o\‡6”èÓ£§¥E{Ö¥',_binary 'óò\ŸYèÓ£§¥E{Ö¥',_binary '6gvèÓ£§¥E{Ö¥',32,'Eu entendo que o drama √© cativante, mas n√£o entendo. Os carros que eles constroem n√£o s√£o t√£o bons. A pintura e a carroceria s√£o de baix√≠ssima qualidade.'),(_binary 'Òû-CèÓ£§¥E{Ö¥',_binary 'n˙JçèÓ£§¥E{Ö¥',_binary '1KbàèÓ£§¥E{Ö¥',20,'Muitas risadas, muito sangue, muita atua√ß√£o ruim, edi√ß√£o e dire√ß√£o ruins, mas, apesar de tudo isso, me diverti muito assistindo.');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` binary(16) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(180) NOT NULL,
  `apelido` varchar(30) NOT NULL,
  `tipo_usuario` tinyint DEFAULT NULL,
  `url_img` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  CONSTRAINT `usuario_chk_1` CHECK ((`tipo_usuario` between 0 and 1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (_binary '.“ù≠èÓ£§¥E{Ö¥','Nicolas','nicolas@email.com','ncl',NULL,NULL,NULL),(_binary '1KbàèÓ£§¥E{Ö¥','Amanda','amanda@email.com','Amandinha',NULL,NULL,NULL),(_binary '2\»!∂èÓ£§¥E{Ö¥','Flamarion','flamarion@email.com','Fla',NULL,NULL,NULL),(_binary '4Æ\–¸èÓ£§¥E{Ö¥','Elton','elton@email.com','Toddynho',NULL,NULL,NULL),(_binary '6gvèÓ£§¥E{Ö¥','Jo√£oa','joao@email.com','Jo√£ozinho',NULL,NULL,'123'),(_binary ':◊®\ËÖFËì≥\ÀÙ\„ñ\È','Nicolas Teste','nicolas2@email.com','Celular',NULL,'01122023203435.png','$2a$10$FTYR/FntRKVXWsMwfv.h9./kg8iJ6.dGC9gzw77QQhZUrqzTMAL6m'),(_binary 'ˆ\Ì\Ï¶˜ÚIs±`æ0´}\ƒ','Nicolas 2','nicolas32@email.com','Celulara',NULL,'01122023203828.png','$2a$10$7vtV1.KxcCDYJ/aTVOwSt.vbjqwMwzkmtf2717XBJTnmVkVyWm8P2');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_seq`
--

DROP TABLE IF EXISTS `usuario_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_seq`
--

LOCK TABLES `usuario_seq` WRITE;
/*!40000 ALTER TABLE `usuario_seq` DISABLE KEYS */;
INSERT INTO `usuario_seq` VALUES (1);
/*!40000 ALTER TABLE `usuario_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `idVideo` binary(16) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `diretor` varchar(255) NOT NULL,
  `duracao` varchar(30) NOT NULL,
  `temporadas` varchar(255) DEFAULT NULL,
  `sinopse` varchar(255) NOT NULL,
  `ano` varchar(4) NOT NULL,
  `curtida` varchar(255) DEFAULT NULL,
  `elenco` varchar(255) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `id_video` int NOT NULL,
  `nota` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idVideo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (_binary '^\∆\Z1èÓ£§¥E{Ö¥','+ Velozes + Furiosos','A√ß√£o','John Singleton','1h 47m',NULL,'O ex-policial Brian O\'Conner se muda de Los Angeles para Miami para recome√ßar sua vida. Ele acaba se envolvendo em rachas na sua nova cidade com seu amigo Tej e Suki. Suas aventuras terminam quando ele √© preso e faz um acordo com agentes do FBI.','2003','12','Paul Walker - Brian O\'Conner / Tyrese Gibson - Roman Pearce / Devon Aoki - Suki','Filme',0,NULL),(_binary 'n˙JçèÓ£§¥E{Ö¥','Terror no Est√∫dio 666','Terror/Com√©dia','BJ McDonell','1h 46m',NULL,'A banda Foo Fighters viaja para uma mans√£o em Encino para gravar seu 10¬∫ √°lbum. L√°, Dave Grohl e sua turma enfrentam for√ßas sobrenaturais que amea√ßam tanto a conclus√£o do disco quanto a vida dos membros do grupo.','2022','7','Whitney Cummings - Samantha / Taylor Hawkins / Jenna Ortega - Skye Willow','Filme',0,NULL),(_binary 'y¯=–èÓ£§¥E{Ö¥','Star Wars: Epis√≥dio V - O Imp√©rio Contra-Ataca','Fic√ß√£o cient√≠fica','Irvin Kershner','2h 4m',NULL,'Yoda treina Luke Skywalker para ser um cavaleiro Jedi. Han Solo corteja a Princesa Leia enquanto Darth Vader retorna para combater as for√ßas rebeldes que tentam salvar a gal√°xia.','1980','9','Mark Hamill - Luke Skywalker / Harrison Ford - Han Solo / Carrie Fisher - Leia Organa','Filme',0,NULL),(_binary 'ÉvsŸèÓ£§¥E{Ö¥','Bright','A√ß√£o/Fantasia','David Ayer','1h 58m',NULL,'Humanos, orcs, elfos e fadas coexistem desde o in√≠cio dos tempos. Dois policiais, um humano e um orc, se tornam parceiros de trabalho, e precisam superar suas diferen√ßas j√° que os orcs s√£o vistos como rudes e perigosos.','2017','2','Will Smith - Daryl Ward / Joel Edgerton - Nick Jakoby / Lucy Fry - Tikka','Filme',0,NULL),(_binary 'óò\ŸYèÓ£§¥E{Ö¥','Midas do Ferro-Velho','Reality','Netflix','40min','5','Em busca de raridades valiosas, a equipe da Gotham Garage transforma e negocia uma ecl√©tica cole√ß√£o de ve√≠culos.','2018','29','Constance Nunes / Mark Towle / Shawm Pilot','Reality Show',0,NULL);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_seq`
--

DROP TABLE IF EXISTS `video_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_seq`
--

LOCK TABLES `video_seq` WRITE;
/*!40000 ALTER TABLE `video_seq` DISABLE KEYS */;
INSERT INTO `video_seq` VALUES (1);
/*!40000 ALTER TABLE `video_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 20:13:19
