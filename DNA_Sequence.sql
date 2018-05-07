-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: DNA_Sequence
-- ------------------------------------------------------
-- Server version	5.6.39

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
-- Table structure for table `DS_Algorithm`
--

DROP TABLE IF EXISTS `DS_Algorithm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DS_Algorithm` (
  `algid` varchar(100) NOT NULL,
  `algname` varchar(50) DEFAULT NULL,
  `algcommand` varchar(50) DEFAULT NULL,
  `algpath` varchar(200) DEFAULT NULL,
  `algparatable` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`algid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DS_Algorithm`
--

LOCK TABLES `DS_Algorithm` WRITE;
/*!40000 ALTER TABLE `DS_Algorithm` DISABLE KEYS */;
INSERT INTO `DS_Algorithm` VALUES ('8061653e-aa94-42dd-bd43-de939bd6e1d8','silver-clusters-master','python run_all.py','/DNASequenceVerify/WebContent/silver-clusters-master/start','DS_LibsvmParameterCommand');
/*!40000 ALTER TABLE `DS_Algorithm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DS_Experiments`
--

DROP TABLE IF EXISTS `DS_Experiments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DS_Experiments` (
  `expid` varchar(100) NOT NULL,
  `algid` varchar(100) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  `fileid` varchar(100) DEFAULT NULL,
  `expname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`expid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DS_Experiments`
--

LOCK TABLES `DS_Experiments` WRITE;
/*!40000 ALTER TABLE `DS_Experiments` DISABLE KEYS */;
INSERT INTO `DS_Experiments` VALUES ('5da47b75-6b91-483c-8b29-d169546cc7e9','8061653e-aa94-42dd-bd43-de939bd6e1d8','6c33f360-7667-491d-9822-4bef6c8a5513','0cc133b9-7187-4add-a4d6-472c07d3c005','Asdfasd'),('a432c9a5-ea97-4022-84a4-0b7ded0f402c','8061653e-aa94-42dd-bd43-de939bd6e1d8','6c33f360-7667-491d-9822-4bef6c8a5513','0e94f58a-c833-4aab-969a-5d6442182574','exp2'),('b00487da-0644-400f-8ae4-0b3f417773b5','8061653e-aa94-42dd-bd43-de939bd6e1d8','dfgdf-4354-gdfgd-ejfhf','93dc6b69-1c77-4695-b864-58546a0b6c06','exp123'),('c66122e6-a1b8-4530-9d1f-4b1f3909b43f','8061653e-aa94-42dd-bd43-de939bd6e1d8','6c33f360-7667-491d-9822-4bef6c8a5513','0cc133b9-7187-4add-a4d6-472c07d3c005','exp123');
/*!40000 ALTER TABLE `DS_Experiments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DS_Files`
--

DROP TABLE IF EXISTS `DS_Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DS_Files` (
  `fileid` varchar(100) NOT NULL,
  `filename` varchar(80) DEFAULT NULL,
  `filepath` varchar(200) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DS_Files`
--

LOCK TABLES `DS_Files` WRITE;
/*!40000 ALTER TABLE `DS_Files` DISABLE KEYS */;
INSERT INTO `DS_Files` VALUES ('0cc133b9-7187-4add-a4d6-472c07d3c005','integrated-intensity.csv','/DNASequenceVerify/WebContent/silver-clusters-master/data/input_data/integrated-intensity.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('0e94f58a-c833-4aab-969a-5d6442182574','integrated-intensity2.csv','/DNASequenceVerify/WebContent/silver-clusters-master/data/input_data/integrated-intensity2.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('6f3146bb-af9e-4f6a-ade7-ae65f393e2d5','peak-intensity.csv','/DNASequenceVerify/WebContent/silver-clusters-master/data/input_data/peak-intensity.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('93dc6b69-1c77-4695-b864-58546a0b6c06','integrated-intensity.csv','/Users/maimac/Documents/JavaEEPRO/DNASequenceVerify/WebContent/silver-clusters-master/data/input_data/integrated-intensity.csv','dfgdf-4354-gdfgd-ejfhf'),('9714420a-b50e-478f-8eb7-9bf07b6dc777','integrated-intensity.combinedfeatures.csv','/DNASequenceVerify/WebContent/silver-clusters-master/data/training_data/integrated-intensity.combinedfeatures.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('d326bcda-5c19-4230-a789-665d161cc7f1','peak-intensity.combinedfeatures.csv','/DNASequenceVerify/WebContent/silver-clusters-master/data/training_data/peak-intensity.combinedfeatures.csv','6c33f360-7667-491d-9822-4bef6c8a5513'),('f303a6e6-8fda-47b4-99d4-a3d8efa4c128','integrated-intensity2.combinedfeatures.csv','/DNASequenceVerify/WebContent/silver-clusters-master/data/training_data/integrated-intensity2.combinedfeatures.csv','6c33f360-7667-491d-9822-4bef6c8a5513');
/*!40000 ALTER TABLE `DS_Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DS_LibsvmParameterValue`
--

DROP TABLE IF EXISTS `DS_LibsvmParameterValue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DS_LibsvmParameterValue` (
  `thresholdhighvalue` varchar(20) DEFAULT NULL,
  `thresholdlowvalue` varchar(20) DEFAULT NULL,
  `thresholdhigh` varchar(10) DEFAULT NULL,
  `thresholdlow` varchar(10) DEFAULT NULL,
  `verbose` varchar(10) DEFAULT NULL,
  `crossvalidtiontest` varchar(10) DEFAULT NULL,
  `generatenewfeatures` varchar(10) DEFAULT NULL,
  `expid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DS_LibsvmParameterValue`
--

LOCK TABLES `DS_LibsvmParameterValue` WRITE;
/*!40000 ALTER TABLE `DS_LibsvmParameterValue` DISABLE KEYS */;
INSERT INTO `DS_LibsvmParameterValue` VALUES ('0','0','no','no','no','no','yes','c66122e6-a1b8-4530-9d1f-4b1f3909b43f'),('0','0','0','0','0','0','0','5da47b75-6b91-483c-8b29-d169546cc7e9'),('0','0','0','0','0','0','0','b00487da-0644-400f-8ae4-0b3f417773b5'),('0','0','no','no','no','yes','no','a432c9a5-ea97-4022-84a4-0b7ded0f402c');
/*!40000 ALTER TABLE `DS_LibsvmParameterValue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DS_ParameterCommand`
--

DROP TABLE IF EXISTS `DS_ParameterCommand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DS_ParameterCommand` (
  `paraid` varchar(100) NOT NULL,
  `algid` varchar(100) NOT NULL,
  `paraname` varchar(50) NOT NULL,
  `paratype` varchar(10) DEFAULT NULL,
  `paracommand` varchar(10) DEFAULT NULL,
  `statement` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`paraid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DS_ParameterCommand`
--

LOCK TABLES `DS_ParameterCommand` WRITE;
/*!40000 ALTER TABLE `DS_ParameterCommand` DISABLE KEYS */;
INSERT INTO `DS_ParameterCommand` VALUES ('3317bcaf-7622-475b-ab3e-21d8e2dbb0b3','8061653e-aa94-42dd-bd43-de939bd6e1d8','verbose','select','-v','aa'),('5797cdf3-a50a-4fa4-877c-4272b4255bc6','8061653e-aa94-42dd-bd43-de939bd6e1d8','thresholdlowvalue','value',NULL,'bb'),('5de0f471-909e-4df7-9550-f9e28267ee96','8061653e-aa94-42dd-bd43-de939bd6e1d8','thresholdhigh','select','-th','cc'),('7453c83e-1624-494d-b43b-8fceb4850ce3','8061653e-aa94-42dd-bd43-de939bd6e1d8','crossvalidtiontest','select','-c','dd'),('8e3c1c62-b4dd-4d7c-9954-017a169216fc','8061653e-aa94-42dd-bd43-de939bd6e1d8','generatenewfeatures','select','-g','ff'),('b5844e3c-86e7-4705-b3d9-99d42e9c8f00','8061653e-aa94-42dd-bd43-de939bd6e1d8','thresholdlow','select','-tl','fff'),('cae7bcf6-546c-4819-a4d5-6180f2eba122','8061653e-aa94-42dd-bd43-de939bd6e1d8','thresholdhighvalue','value',NULL,'fff');
/*!40000 ALTER TABLE `DS_ParameterCommand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DS_user`
--

DROP TABLE IF EXISTS `DS_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DS_user` (
  `userid` varchar(100) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isAdmin` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DS_user`
--

LOCK TABLES `DS_user` WRITE;
/*!40000 ALTER TABLE `DS_user` DISABLE KEYS */;
INSERT INTO `DS_user` VALUES ('5f52ab8f-af9a-4228-8d02-58f9d3586bad','kitty','12345','Rqfgsd','Qgtqwre','Qetqtq',NULL,NULL,'2018-05-04 20:14:44','no'),('6c33f360-7667-491d-9822-4bef6c8a5513','admin','123','hello123@163.com','1400 hello street apt','51859523452','1','2018-04-19 18:36:07','2018-05-07 20:25:07','yes'),('dfgdf-4354-gdfgd-ejfhf','Simith','123456','hello@163.com','1400 hello street apt123','5185948353','1',NULL,'2018-05-04 18:54:44','no');
/*!40000 ALTER TABLE `DS_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-07 16:29:50
