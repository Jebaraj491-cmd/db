CREATE DATABASE  IF NOT EXISTS `css-main-sql-db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `css-main-sql-db`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: css-main-sql-db
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
-- Table structure for table `tblagents`
--

DROP TABLE IF EXISTS `tblagents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblagents` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `CreatedOn` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  `IsDeleted` bit(1) NOT NULL,
  `ReferenceId` varchar(36) NOT NULL,
  `AgentNumber` bigint DEFAULT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Mobile` varchar(45) DEFAULT NULL,
  `CRMCreatedOn` datetime DEFAULT NULL,
  `CRMCreatedBy` varchar(45) DEFAULT NULL,
  `CRMModifiedOn` datetime DEFAULT NULL,
  `Description` varchar(256) DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  `OrganizationId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_agent_organization` (`OrganizationId`),
  CONSTRAINT `fk_agent_organization` FOREIGN KEY (`OrganizationId`) REFERENCES `tblorganizations` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblagents`
--

LOCK TABLES `tblagents` WRITE;
/*!40000 ALTER TABLE `tblagents` DISABLE KEYS */;
INSERT INTO `tblagents` VALUES (1,NULL,'1',NULL,NULL,_binary '\0','f9b2ce1c-a22b-11ed-b0a8-507b9d231787',100,'Joel','joel@head.com',NULL,NULL,NULL,NULL,NULL,_binary '',1),(2,NULL,'1',NULL,NULL,_binary '\0','f9b2ce1c-a22b-11ed-b0a8-507b9d231790',101,'Rasheed','rasheed@agent.com',NULL,NULL,NULL,NULL,NULL,_binary '',1);
/*!40000 ALTER TABLE `tblagents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcompanies`
--

DROP TABLE IF EXISTS `tblcompanies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcompanies` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `CreatedOn` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  `IsDeleted` bit(1) NOT NULL,
  `ReferenceId` varchar(36) NOT NULL,
  `CompanyNumber` bigint DEFAULT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Mobile` varchar(45) DEFAULT NULL,
  `Address` varchar(256) DEFAULT NULL,
  `CRMCreatedOn` datetime DEFAULT NULL,
  `CRMCreatedBy` varchar(45) DEFAULT NULL,
  `CRMModifiedOn` datetime DEFAULT NULL,
  `Industry` int DEFAULT NULL,
  `Description` varchar(256) DEFAULT NULL,
  `OrganizationId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_company_organization` (`OrganizationId`),
  CONSTRAINT `fk_company_organization` FOREIGN KEY (`OrganizationId`) REFERENCES `tblorganizations` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcompanies`
--

LOCK TABLES `tblcompanies` WRITE;
/*!40000 ALTER TABLE `tblcompanies` DISABLE KEYS */;
INSERT INTO `tblcompanies` VALUES (1,NULL,'1',NULL,NULL,_binary '\0','f9b2ce1c-a22b-11ed-b0a8-507b9d231793',1001,'AlNassr','alnassr@info.com',NULL,NULL,NULL,NULL,NULL,1,NULL,1),(2,NULL,'1',NULL,NULL,_binary '\0','f9b2ce1c-a22b-11ed-b0a8-507b9d231795',1002,'Sports Hub','sphb@info.com',NULL,NULL,NULL,NULL,NULL,1,NULL,1);
/*!40000 ALTER TABLE `tblcompanies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontacts`
--

DROP TABLE IF EXISTS `tblcontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcontacts` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `CreatedOn` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  `IsDeleted` bit(1) NOT NULL,
  `ReferenceId` varchar(36) NOT NULL,
  `ContactNumber` bigint DEFAULT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Mobile` varchar(45) DEFAULT NULL,
  `Address` varchar(256) DEFAULT NULL,
  `CRMCreatedOn` datetime DEFAULT NULL,
  `CRMCreatedBy` varchar(45) DEFAULT NULL,
  `CRMModifiedOn` datetime DEFAULT NULL,
  `CompanyId` bigint DEFAULT NULL,
  `IsActive` bit(1) DEFAULT NULL,
  `OrganizationId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_contact_company` (`CompanyId`),
  KEY `fk_contact_organization` (`OrganizationId`),
  CONSTRAINT `fk_contact_company` FOREIGN KEY (`CompanyId`) REFERENCES `tblcompanies` (`Id`),
  CONSTRAINT `fk_contact_organization` FOREIGN KEY (`OrganizationId`) REFERENCES `tblorganizations` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontacts`
--

LOCK TABLES `tblcontacts` WRITE;
/*!40000 ALTER TABLE `tblcontacts` DISABLE KEYS */;
INSERT INTO `tblcontacts` VALUES (1,'2023-01-31 18:53:23',NULL,NULL,NULL,_binary '\0','f9b2ce1c-a22b-11ed-b0a8-507b9d231783',NULL,'Shan','shan@test.com',NULL,NULL,NULL,NULL,NULL,1,_binary '',1),(2,'2023-02-01 18:53:23',NULL,NULL,NULL,_binary '\0','f9b2ce1c-a22b-11ed-b0a8-507b9d231784',NULL,'Uday','uday@test.com',NULL,NULL,NULL,NULL,NULL,2,_binary '',1),(13,'2023-02-07 18:53:23',NULL,NULL,NULL,_binary '\0','a8186564-a6e7-11ed-b5bc-507b9d231783',NULL,'Rashie','ajrasheed@gm.com',NULL,NULL,NULL,NULL,NULL,NULL,_binary '',1);
/*!40000 ALTER TABLE `tblcontacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorganizations`
--

DROP TABLE IF EXISTS `tblorganizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblorganizations` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreatedOn` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  `IsDeleted` bit(1) NOT NULL,
  `ReferenceId` varchar(36) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorganizations`
--

LOCK TABLES `tblorganizations` WRITE;
/*!40000 ALTER TABLE `tblorganizations` DISABLE KEYS */;
INSERT INTO `tblorganizations` VALUES (1,NULL,'1',NULL,NULL,_binary '\0','f9b2ce1c-a22b-11ed-b0a8-507b9d231785','Brightaira');
/*!40000 ALTER TABLE `tblorganizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproducts`
--

DROP TABLE IF EXISTS `tblproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproducts` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `CreatedOn` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  `IsDeleted` bit(1) NOT NULL,
  `ReferenceId` varchar(36) NOT NULL,
  `ProductNumber` bigint DEFAULT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `CRMCreatedOn` datetime DEFAULT NULL,
  `CRMCreatedBy` varchar(45) DEFAULT NULL,
  `CRMModifiedOn` datetime DEFAULT NULL,
  `Description` varchar(256) DEFAULT NULL,
  `OrganizationId` int DEFAULT NULL,
  `ProductType` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_product_organization` (`OrganizationId`),
  CONSTRAINT `fk_product_organization` FOREIGN KEY (`OrganizationId`) REFERENCES `tblorganizations` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproducts`
--

LOCK TABLES `tblproducts` WRITE;
/*!40000 ALTER TABLE `tblproducts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsettings`
--

DROP TABLE IF EXISTS `tblsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsettings` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CreatedOn` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT NULL,
  `Key` varchar(256) NOT NULL,
  `Value` varchar(256) NOT NULL,
  `Description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsettings`
--

LOCK TABLES `tblsettings` WRITE;
/*!40000 ALTER TABLE `tblsettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltickets`
--

DROP TABLE IF EXISTS `tbltickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltickets` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `CreatedOn` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `ModifiedOn` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  `IsDeleted` bit(1) NOT NULL,
  `ReferenceId` varchar(36) NOT NULL,
  `TicketNumber` varchar(25) DEFAULT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `Attachment` varchar(256) DEFAULT NULL,
  `CRMCreatedOn` datetime DEFAULT NULL,
  `CRMCreatedBy` varchar(45) DEFAULT NULL,
  `CRMModifiedOn` datetime DEFAULT NULL,
  `AgentId` bigint DEFAULT NULL,
  `Type` int DEFAULT NULL,
  `Group` int DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `Priority` int DEFAULT NULL,
  `ChannelSource` int DEFAULT NULL,
  `SystemSource` int DEFAULT NULL,
  `CRMClosedOn` datetime DEFAULT NULL,
  `ProductId` bigint DEFAULT NULL,
  `ContactId` bigint DEFAULT NULL,
  `OrganizationId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_ticket_contact` (`ContactId`),
  KEY `fk_ticket_agent` (`AgentId`),
  KEY `fk_ticket_product` (`ProductId`),
  KEY `fk_ticket_organization` (`OrganizationId`),
  CONSTRAINT `fk_ticket_agent` FOREIGN KEY (`AgentId`) REFERENCES `tblagents` (`Id`),
  CONSTRAINT `fk_ticket_contact` FOREIGN KEY (`ContactId`) REFERENCES `tblcontacts` (`Id`),
  CONSTRAINT `fk_ticket_organization` FOREIGN KEY (`OrganizationId`) REFERENCES `tblorganizations` (`Id`),
  CONSTRAINT `fk_ticket_product` FOREIGN KEY (`ProductId`) REFERENCES `tblproducts` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltickets`
--

LOCK TABLES `tbltickets` WRITE;
/*!40000 ALTER TABLE `tbltickets` DISABLE KEYS */;
INSERT INTO `tbltickets` VALUES (1,'2023-02-01 12:00:00',NULL,'2023-02-01 17:00:00',NULL,_binary '\0','C2770D2E-70E6-11E5-A4FB-B026B977EB28',NULL,'Api is not working',NULL,NULL,NULL,NULL,NULL,2,1,2,1,1,1,1,NULL,NULL,1,NULL),(2,'2023-02-01 12:00:00',NULL,'2023-02-01 18:00:00',NULL,_binary '\0','483238dd-a147-11ed-96a3-507b9d231783',NULL,'Can\'t see the analytics',NULL,NULL,NULL,NULL,NULL,1,2,1,2,2,2,1,NULL,NULL,2,NULL),(3,'2023-02-01 12:00:00',NULL,'2023-02-01 15:00:00',NULL,_binary '\0','f9b69d09-a22b-11ed-b0a8-507b9d231783',NULL,'Couldn\'t able to add products','Couldn\'t able to add products',NULL,NULL,NULL,NULL,2,1,2,3,3,3,1,NULL,NULL,1,NULL),(4,'2023-02-02 12:00:00',NULL,'2023-02-02 16:00:00',NULL,_binary '\0','3d2b9361-a303-11ed-863e-507b9d231783',NULL,'Couldn\'t able to view products','Couldn\'t able to view products',NULL,NULL,NULL,NULL,1,2,1,2,2,3,1,NULL,NULL,2,NULL),(5,'2023-02-02 12:00:00',NULL,'2023-02-02 17:00:00',NULL,_binary '\0','6a97b6b7-a303-11ed-863e-507b9d231783',NULL,'Couldn\'t able to open contacts','Couldn\'t able to open contacts',NULL,NULL,NULL,NULL,2,1,2,4,1,1,1,NULL,NULL,1,NULL),(6,'2023-02-02 12:00:00',NULL,'2023-02-02 15:00:00',NULL,_binary '\0','e6ed86e6-a304-11ed-863e-507b9d231783',NULL,'Tickets are not inserting','Tickets are not inserting',NULL,NULL,NULL,NULL,1,1,1,3,3,2,1,NULL,NULL,2,NULL),(55,'2023-02-07 12:00:00','1','2023-02-01 19:00:00',NULL,_binary '\0','98a6ec8c-a6ea-11ed-b5bc-507b9d231783','55','Insertion Issue','Adding elements ','04ec6eb9-63d2-4b23-92ab-a2888fd9c9dd.png',NULL,NULL,NULL,NULL,1,3,1,1,1,1,NULL,NULL,13,1);
/*!40000 ALTER TABLE `tbltickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'css-main-sql-db'
--

--
-- Dumping routines for database 'css-main-sql-db'
--
/*!50003 DROP PROCEDURE IF EXISTS `prcGetAgentCloseRate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetAgentCloseRate`(IN _startdate DATE, IN _enddate DATE,
IN _agentId VARCHAR(25))
BEGIN

SET @current_date = _startdate;

DROP TABLE IF EXISTS temp_dates;
CREATE TEMPORARY TABLE temp_dates (dates DATE);

WHILE @current_date <= _enddate DO
	INSERT INTO temp_dates (dates) VALUES (@current_date);
	SET @current_date = DATE_ADD(@current_date, INTERVAL 1 DAY);
END WHILE;
-- select * from temp_dates;

DROP TABLE IF EXISTS temp_results;

SET @sql= 'CREATE TEMPORARY TABLE temp_results AS SELECT DATE(ti.CreatedOn) as date,COUNT(1) as tickets,
SUM(ti.priority = 1 AND ti.status IN (3,4)) AS low, SUM(ti.priority = 2 AND ti.status IN (3,4)) AS medium, 
SUM(ti.priority = 3 AND ti.status IN (3,4)) AS high,
SUM(ti.priority = 1) AS lowtotal, SUM(ti.priority = 2) AS mediumtotal, 
SUM(ti.priority = 3) AS hightotal
FROM tbltickets ti WHERE ti.IsDeleted=0 ';

IF _agentId IS NOT NULL THEN
	SET @sql = CONCAT(@sql, ' AND ti.agentid = "', _agentId, '"');
END IF;

SET @sql = CONCAT(@sql," AND (CAST(ti.createdon as DATE) >= CAST('", _startdate, "' as DATE)
	AND CAST(ti.createdon as DATE) <= CAST('", _enddate, "' as DATE) ) GROUP BY DATE(ti.CreatedOn)");

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- SELECT * FROM temp_results;

SELECT DATE_FORMAT(td.dates, '%b %d') AS data,
-- tr.lowtotal, tr.mediumtotal, tr.hightotal ,
-- tr.low, tr.medium, tr.high ,
CASE WHEN tr.low IS NULL THEN 0 WHEN tr.low = 0 THEN 0 ELSE FORMAT((tr.low / tr.lowtotal)*100,2) END AS value1, 
CASE WHEN tr.medium IS NULL THEN  0 WHEN tr.medium = 0 THEN 0 ELSE FORMAT((tr.medium / tr.mediumtotal)*100,2) END AS value2,
CASE WHEN tr.high IS NULL THEN 0 WHEN tr.high = 0 THEN 0 ELSE FORMAT((tr.high / tr.hightotal)*100,2) END AS value3
FROM temp_dates td 
LEFT JOIN temp_results tr ON td.dates = tr.date;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prcGetAgentResTime` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetAgentResTime`(IN _startdate DATE, IN _enddate DATE,
IN _agentId VARCHAR(25))
BEGIN

SET @current_date = _startdate;

DROP TABLE IF EXISTS temp_dates;
CREATE TEMPORARY TABLE temp_dates (dates DATE);

WHILE @current_date <= _enddate DO
	INSERT INTO temp_dates (dates) VALUES (@current_date);
	SET @current_date = DATE_ADD(@current_date, INTERVAL 1 DAY);
END WHILE;
-- select * from temp_dates;

DROP TABLE IF EXISTS temp_results;

SET @sql= 'CREATE TEMPORARY TABLE temp_results AS SELECT DATE(ti.CreatedOn) as date,
SUM(ti.priority = 1) AS lowtotal, SUM(ti.priority = 2) AS mediumtotal, 
SUM(ti.priority = 3) AS hightotal,
SUM(CASE WHEN ti.priority=1 THEN TIMESTAMPDIFF(HOUR, ti.createdOn, ti.ModifiedOn) ELSE 0 END) AS low,
SUM(CASE WHEN ti.priority=2 THEN TIMESTAMPDIFF(HOUR, ti.createdOn, ti.ModifiedOn) ELSE 0 END) AS medium,
SUM(CASE WHEN ti.priority=3 THEN TIMESTAMPDIFF(HOUR, ti.createdOn, ti.ModifiedOn) ELSE 0 END) AS high
FROM tbltickets ti WHERE ti.IsDeleted=0 AND ti.status IN (3,4) ';

IF _agentId IS NOT NULL THEN
	SET @sql = CONCAT(@sql, ' AND ti.agentid = "', _agentId, '"');
END IF;

SET @sql = CONCAT(@sql," AND (CAST(ti.createdon as DATE) >= CAST('", _startdate, "' as DATE)
	AND CAST(ti.createdon as DATE) <= CAST('", _enddate, "' as DATE) ) GROUP BY DATE(ti.CreatedOn)");

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SELECT DATE_FORMAT(td.dates, '%b %d') AS data,
-- tr.lowtotal,tr.mediumtotal,tr.hightotal,
CASE WHEN tr.low IS NULL THEN 0 WHEN tr.low = 0 THEN 0 ELSE FORMAT((tr.low / tr.lowtotal),2) END AS value1, 
CASE WHEN tr.medium IS NULL THEN  0 WHEN tr.medium = 0 THEN 0 ELSE FORMAT((tr.medium / tr.mediumtotal),2) END AS value2,
CASE WHEN tr.high IS NULL THEN 0 WHEN tr.high = 0 THEN 0 ELSE FORMAT((tr.high / tr.hightotal),2) END AS value3
FROM temp_dates td  LEFT JOIN temp_results tr ON td.dates = tr.date;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prcGetAgentTicketsSLA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetAgentTicketsSLA`(IN _startdate DATE, IN _enddate DATE,
IN _agentId VARCHAR(25))
BEGIN

SET @current_date = _startdate;

DROP TABLE IF EXISTS temp_dates;
CREATE TEMPORARY TABLE temp_dates (dates DATE);

WHILE @current_date <= _enddate DO
	INSERT INTO temp_dates (dates) VALUES (@current_date);
	SET @current_date = DATE_ADD(@current_date, INTERVAL 1 DAY);
END WHILE;
-- select * from temp_dates;

DROP TABLE IF EXISTS temp_results;

SET @sql= 'CREATE TEMPORARY TABLE temp_results AS SELECT DATE(ti.CreatedOn) as date,COUNT(1) as tickets,
SUM(ti.priority = 1 AND ti.status IN (3,4)) AS low, SUM(ti.priority = 2 AND ti.status IN (3,4)) AS medium, 
SUM(ti.priority = 3 AND ti.status IN (3,4)) AS high 
FROM tbltickets ti WHERE ti.IsDeleted=0 ';

    IF _agentId IS NOT NULL THEN
        SET @sql = CONCAT(@sql, ' AND ti.agentid = "', _agentId, '"');
    END IF;

    SET @sql = CONCAT(@sql," AND (CAST(ti.createdon as DATE) >= CAST('", _startdate, "' as DATE)
        AND CAST(ti.createdon as DATE) <= CAST('", _enddate, "' as DATE) ) GROUP BY DATE(ti.CreatedOn)");

    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SELECT DATE_FORMAT(td.dates, '%b %d') AS data,
    CASE WHEN tr.low IS NULL THEN 0 WHEN tr.low = 0 THEN 0 ELSE FORMAT((tr.low / tr.tickets)*100,2) END AS value1, 
	CASE WHEN tr.medium IS NULL THEN  0 WHEN tr.medium = 0 THEN 0 ELSE FORMAT((tr.medium / tr.tickets)*100,2) END AS value2,
    CASE WHEN tr.high IS NULL THEN 0 WHEN tr.high = 0 THEN 0 ELSE FORMAT((tr.high / tr.tickets)*100,2) END AS value3
    FROM temp_dates td LEFT JOIN temp_results tr ON td.dates = tr.date;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prcGetBestAgents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetBestAgents`(IN _startdate DATE, 
IN _enddate DATE)
BEGIN

SELECT ta.name AS data,
-- count(1),
	SUM(ti.priority = 1) AS value1,
	SUM(ti.priority = 2) AS value2,
	SUM(ti.priority = 3) AS value3
FROM tbltickets ti JOIN tblagents ta ON ti.agentId = ta.id
WHERE ti.IsDeleted = 0 AND ta.IsActive = 1 AND ti.status IN(3,4) AND (CAST(ti.createdon as DATE) >= CAST(_startdate as DATE)
AND CAST(ti.createdon as DATE) <= CAST(_enddate as DATE) ) GROUP BY ti.AgentId ORDER BY Count(1) DESC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prcGetChannelStats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetChannelStats`(IN _startdate DATE, IN _enddate DATE,
IN _agentId VARCHAR(25))
BEGIN

SET @sql= "SELECT CASE When ChannelSource=1 Then 'Web' When ChannelSource=2 Then 'UserPortal' When ChannelSource=3 Then 'Email' 
When ChannelSource=4 Then 'Phone' END data,
count(1) as count FROM tbltickets WHERE IsDeleted=0 ";

IF _agentId IS NOT NULL THEN
	SET @sql = CONCAT(@sql, ' AND agentid = "', _agentId, '"');
END IF;

SET @sql = CONCAT(@sql," AND (CAST(createdon as DATE) >= CAST('", _startdate, "' as DATE)
	AND CAST(createdon as DATE) <= CAST('", _enddate, "' as DATE) ) GROUP BY ChannelSource");

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prcGetClassification` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetClassification`(IN _startdate DATE, 
IN _enddate DATE)
BEGIN

SELECT 
	CASE WHEN `group`=1 THEN 'Technical issue' 
		WHEN `group`=2 THEN 'Billing issue' 
		WHEN `group`=3 THEN 'Feature request' END AS data,
	SUM(priority = 1) AS value1, 
    SUM(priority = 2) AS value2, 
    SUM(priority = 3) AS value3
	FROM tbltickets WHERE IsDeleted = 0 AND (CAST(createdon as DATE) >= CAST(_startdate as DATE)
		AND CAST(createdon as DATE) <= CAST(_enddate as DATE) )
	GROUP BY `group` ORDER by `group`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prcGetCustomersOverTime` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetCustomersOverTime`(IN _startdate DATE, IN _enddate DATE,
IN _agentId VARCHAR(25))
BEGIN

SET @current_date = _startdate;

DROP TABLE IF EXISTS temp_dates;
CREATE TEMPORARY TABLE temp_dates (dates DATE);

WHILE @current_date <= _enddate DO
	INSERT INTO temp_dates (dates) VALUES (@current_date);
	SET @current_date = DATE_ADD(@current_date, INTERVAL 1 DAY);
END WHILE;
-- select * from temp_dates;

SET @sql= "SELECT DATE_FORMAT(td.dates, '%b %d') AS data,
        SUM(CASE WHEN DATE(tc.createdon) = DATE(ti.createdon) THEN 1 ELSE 0 END) AS value1,
        SUM(CASE WHEN DATE(tc.createdon) < DATE(ti.createdon) THEN 1 ELSE 0 END) AS value2
    FROM temp_dates td LEFT JOIN tbltickets ti ON DATE(td.dates) = DATE(ti.createdon) 
    JOIN tblcontacts tc ON ti.contactid=tc.id WHERE ti.IsDeleted=0 ";
    
 IF _agentId IS NOT NULL THEN
	SET @sql = CONCAT(@sql, ' AND ti.agentid = "', _agentId, '"');
END IF;

SET @sql = CONCAT(@sql," AND (CAST(ti.createdon as DATE) >= CAST('", _startdate, "' as DATE)
	AND CAST(ti.createdon as DATE) <= CAST('", _enddate, "' as DATE) ) GROUP BY DATE(ti.CreatedOn)");

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;   
    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prcGetPriorityStats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetPriorityStats`(IN _startdate DATE, IN _enddate DATE,
IN _agentId VARCHAR(25))
BEGIN

SET @low=0;
SET @medium=0;
SET @high=0;

SET @sql= "SELECT 
  SUM(CASE WHEN priority = 1 THEN 1 ELSE 0 END) AS low,
  SUM(CASE WHEN priority = 2 THEN 1 ELSE 0 END) AS medium,
  SUM(CASE WHEN priority = 3 THEN 1 ELSE 0 END) AS high
FROM tbltickets 
WHERE IsDeleted = 0 ";

IF _agentId IS NOT NULL THEN
	SET @sql = CONCAT(@sql, ' AND agentid = "', _agentId, '"');
END IF;

SET @sql = CONCAT(@sql," AND (CAST(createdon as DATE) >= CAST('", _startdate, "' as DATE)
	AND CAST(createdon as DATE) <= CAST('", _enddate, "' as DATE) )");

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;  

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prcGetRepeatCustomers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetRepeatCustomers`(IN _startdate DATE, IN _enddate DATE,
IN _agentId VARCHAR(25))
BEGIN

SET @sql= "SELECT tc.email as data,count(1) as count FROM tbltickets ti 
JOIN tblcontacts tc ON tc.id = ti.contactid
WHERE ti.IsDeleted=0 AND tc.IsActive=1 ";

 IF _agentId IS NOT NULL THEN
	SET @sql = CONCAT(@sql, ' AND ti.agentid = "', _agentId, '"');
END IF;

SET @sql = CONCAT(@sql," AND (CAST(ti.createdon as DATE) >= CAST('", _startdate, "' as DATE)
	AND CAST(ti.createdon as DATE) <= CAST('", _enddate, "' as DATE) ) GROUP BY ti.contactid");

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prcGetRequestType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetRequestType`(IN _startdate DATE, 
IN _enddate DATE)
BEGIN

IF (_startdate is null) THEN
SELECT CASE WHEN `group`=1 THEN 'Technical issue' WHEN `group`=2 THEN 'Billing issue' 
WHEN `group`=3 THEN 'Feature request' END data,
count(1) as count FROM tbltickets WHERE IsDeleted=0 group by `group` ORDER by `group`;

ELSE
SELECT CASE WHEN `group`=1 THEN 'Technical issue' WHEN `group`=2 THEN 'Billing issue' 
WHEN `group`=3 THEN 'Feature request' END data,
count(1) as count FROM tbltickets WHERE IsDeleted=0 AND (CAST(createdon as DATE) >= CAST(_startdate as DATE)
AND CAST(createdon as DATE) <= CAST(_enddate as DATE) ) group by `group` ORDER by `group`;

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prcGetRequestTypeOverTime` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetRequestTypeOverTime`(IN _startdate DATE, 
IN _enddate DATE)
BEGIN

IF (_startdate IS NULL) THEN
SELECT DATE_FORMAT(ti.CreatedOn, '%b %d') AS data,
        SUM(CASE WHEN ti.group = 1 THEN 1 ELSE 0 END) AS value1,
        SUM(CASE WHEN ti.group = 2 THEN 1 ELSE 0 END) AS value2,
        SUM(CASE WHEN ti.group = 3 THEN 1 ELSE 0 END) AS value3
    FROM tbltickets ti
    GROUP BY DATE(ti.createdon);

ELSE
SET @current_date = _startdate;

DROP TABLE IF EXISTS temp_dates;
CREATE TEMPORARY TABLE temp_dates (dates DATE);

WHILE @current_date <= _enddate DO
	INSERT INTO temp_dates (dates) VALUES (@current_date);
	SET @current_date = DATE_ADD(@current_date, INTERVAL 1 DAY);
END WHILE;
-- select * from temp_dates;

SELECT DATE_FORMAT(td.dates, '%b %d') AS data,
        SUM(CASE WHEN ti.group = 1 THEN 1 ELSE 0 END) AS value1,
        SUM(CASE WHEN ti.group = 2 THEN 1 ELSE 0 END) AS value2,
        SUM(CASE WHEN ti.group = 3 THEN 1 ELSE 0 END) AS value3
    FROM temp_dates td LEFT JOIN tbltickets ti ON DATE(td.dates) = DATE(ti.createdon)
    GROUP BY DATE(ti.createdon);

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prcGetResolutionTime` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetResolutionTime`(IN _startdate DATE, IN _enddate DATE,
IN _agentId VARCHAR(25))
BEGIN

SET @current_date = _startdate;

DROP TABLE IF EXISTS temp_dates;
CREATE TEMPORARY TABLE temp_dates (dates DATE);

WHILE @current_date <= _enddate DO
	INSERT INTO temp_dates (dates) VALUES (@current_date);
	SET @current_date = DATE_ADD(@current_date, INTERVAL 1 DAY);
END WHILE;
-- select * from temp_dates;

DROP TABLE IF EXISTS temp_results;

SET @sql= "CREATE TEMPORARY TABLE temp_results AS SELECT DATE(ti.CreatedOn) as date,
COUNT(1) AS total,
SUM(TIMESTAMPDIFF(HOUR, ti.createdOn, ti.ModifiedOn)) AS count
FROM tbltickets ti WHERE ti.IsDeleted=0 AND ti.status IN (3,4) ";

IF _agentId IS NOT NULL THEN
	SET @sql = CONCAT(@sql, ' AND ti.agentid = "', _agentId, '"');
END IF;

SET @sql = CONCAT(@sql," AND (CAST(ti.createdon as DATE) >= CAST('", _startdate, "' as DATE)
	AND CAST(ti.createdon as DATE) <= CAST('", _enddate, "' as DATE) ) GROUP BY DATE(ti.CreatedOn)");

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SELECT DATE_FORMAT(td.dates, '%b %d') AS data, 
-- tr.total,
CASE WHEN tr.count IS NULL THEN 0 WHEN tr.count = 0 THEN 0 ELSE FORMAT((tr.count / tr.total),2) END AS count
FROM temp_dates td  LEFT JOIN temp_results tr ON td.dates = tr.date;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prcGetTicket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetTicket`(IN _id INT)
BEGIN

SELECT ti.id,ti.name as Subject,ti.Description,ti.AgentId,ta.name as Agent,ti.type,ti.group,ti.attachment,
ti.status,ti.priority,ti.channelSource,ti.systemSource,ti.organizationId,ti.contactId,tc.name as Contact,tc.email
FROM tbltickets ti LEFT JOIN tblagents ta ON ta.id = ti.agentId JOIN
tblcontacts tc ON tc.id = ti.contactId WHERE ti.Id = _id AND ti.IsDeleted=0 ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prcGetTickets` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetTickets`(IN _agentId VARCHAR(25),IN _status VARCHAR(25),
IN _priority VARCHAR(25),IN _type VARCHAR(25),IN _channelSource VARCHAR(25),IN _contactId VARCHAR(25),
IN _searchText VARCHAR(255))
BEGIN
  SET @sql = 'SELECT ti.id,ti.name as Subject,ti.Description,ti.AgentId,ta.name as Agent,ti.type,ti.group,ti.attachment,
  ti.status,ti.priority,ti.channelSource,ti.systemSource,ti.organizationId,ti.contactId,tc.name as Contact,tc.email
  FROM tbltickets ti LEFT JOIN tblagents ta ON ta.id = ti.agentId JOIN
  tblcontacts tc ON tc.id = ti.contactId WHERE ti.IsDeleted=0 ';

  IF _agentId IS NOT NULL THEN
    SET @sql = CONCAT(@sql, ' AND ti.agentid IN (', _agentId,')');
  END IF;
  
  IF _status IS NOT NULL THEN
    SET @sql = CONCAT(@sql, ' AND ti.status IN (', _status,')');
  END IF;
  
  IF _priority IS NOT NULL THEN
    SET @sql = CONCAT(@sql, ' AND ti.priority IN (', _priority,')');
  END IF;
  
  IF _type IS NOT NULL THEN
    SET @sql = CONCAT(@sql,' AND ti.type IN (', _type,')');
  END IF;

  IF _channelSource IS NOT NULL THEN
    SET @sql = CONCAT(@sql,' AND ti.channelSource IN (', _channelSource,')');
  END IF;
  
  IF _contactId IS NOT NULL THEN
    SET @sql = CONCAT(@sql,' AND ti.ContactId IN (', _ContactId,')');
  END IF;

  IF _searchText IS NOT NULL THEN
    SET @sql = CONCAT(@sql," AND (ti.name LIKE '%", _searchText,"%' OR ti.description LIKE '%", _searchText,"%' 
    OR tc.name LIKE '%", _searchText,"%' OR ta.name LIKE '%", _searchText,"%' OR tc.email LIKE '%", _searchText,"%' 
    OR ta.email LIKE '%", _searchText,"%')");
  END IF;  

SET @sql = CONCAT(@sql," ORDER BY ti.Id DESC");

  PREPARE stmt FROM @sql;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prcGetTicketStats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetTicketStats`(IN _startdate DATE,  IN _enddate DATE,
IN _agentId VARCHAR(25))
BEGIN

SET @sql= "SELECT 
  SUM(CASE WHEN status IN (1, 2) THEN 1 ELSE 0 END) AS unresolved,
  SUM(CASE WHEN status IN (3, 4) THEN 1 ELSE 0 END) AS resolved,
  SUM(CASE WHEN AgentId IS NULL AND status = 1 THEN 1 ELSE 0 END) AS unassigned,
  SUM(CASE WHEN status IN (1, 2) AND DATEDIFF(CURDATE(), createdon) > 90 THEN 1 ELSE 0 END) AS aged,
  SUM(CASE WHEN AgentId IS NOT NULL THEN 1 ELSE 0 END) AS assigned
FROM tbltickets
WHERE IsDeleted=0 ";

IF _agentId IS NOT NULL THEN
	SET @sql = CONCAT(@sql, ' AND agentid = "', _agentId, '"');
END IF;

SET @sql = CONCAT(@sql," AND (CAST(createdon as DATE) >= CAST('", _startdate, "' as DATE)
	AND CAST(createdon as DATE) <= CAST('", _enddate, "' as DATE) )");

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prcGetTicketsVolume` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetTicketsVolume`(
    IN _startdate DATE, IN _enddate DATE, IN _agentId VARCHAR(25), IN _group VARCHAR(25), IN _status VARCHAR(25))
BEGIN
    SET @current_date = _startdate;

    DROP TABLE IF EXISTS temp_dates;
    CREATE TEMPORARY TABLE temp_dates (dates DATE);

    WHILE @current_date <= _enddate DO
        INSERT INTO temp_dates (dates) VALUES (@current_date);
        SET @current_date = DATE_ADD(@current_date, INTERVAL 1 DAY);
    END WHILE;

    DROP TABLE IF EXISTS temp_results;

    SET @sql= 'CREATE TEMPORARY TABLE temp_results AS
    SELECT DATE(ti.CreatedOn) as date, COUNT(1) AS value1, SUM(ti.status IN (3,4)) AS value2 FROM tbltickets ti
    WHERE ti.IsDeleted=0 ';

    IF _agentId IS NOT NULL THEN
        SET @sql = CONCAT(@sql, ' AND ti.agentid = "', _agentId, '"');
    END IF;

    IF _status IS NOT NULL THEN
        SET @sql = CONCAT(@sql, ' AND ti.status = "', _status, '"');
    END IF;

    IF _group IS NOT NULL THEN
        SET @sql = CONCAT(@sql, ' AND ti.group = "', _group, '"');
    END IF;

    SET @sql = CONCAT(@sql," AND (CAST(ti.createdon as DATE) >= CAST('", _startdate, "' as DATE)
        AND CAST(ti.createdon as DATE) <= CAST('", _enddate, "' as DATE) ) GROUP BY DATE(ti.CreatedOn)");

    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SELECT DATE_FORMAT(td.dates, '%b %d') AS data, 
        CASE WHEN tr.value1 IS NULL THEN 0 ELSE tr.value1 END AS value1, 
        CASE WHEN tr.value2 IS NULL THEN 0 ELSE tr.value2 END AS value2
    FROM temp_dates td 
    LEFT JOIN temp_results tr ON td.dates = tr.date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prcInsertTickets` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertTickets`(IN _subject VARCHAR(255), IN _description TEXT, IN _email VARCHAR(255),
IN _contact VARCHAR(255),IN _attachment VARCHAR(255),IN _systemSource INT,IN _type INT, IN _channelSource INT,
IN _status INT,IN _priority INT ,IN _orgId INT)
BEGIN
	DECLARE contact_id INT;
	DECLARE ticket_id INT;
	DECLARE system_source VARCHAR(2);

	SELECT Id INTO contact_id FROM tblcontacts WHERE tblcontacts.Email=_email;
	IF contact_id IS NULL THEN
		IF _contact IS NULL OR '' THEN
		SET _contact = SUBSTRING_INDEX(_email, '@', 1);
		END IF;
	   INSERT INTO tblcontacts (Name, Email,IsDeleted,ReferenceId,IsActive,OrganizationId) 
	   VALUES (_contact, _email,0,UUID(),1,1);
	   SELECT Id FROM tblcontacts ORDER BY id DESC LIMIT 1  INTO contact_id;
	END IF;

	INSERT INTO tbltickets (Name, Description,CreatedOn,CreatedBy, ContactId,IsDeleted,ReferenceId,
    `Group`,Type,Attachment,SystemSource,ChannelSource,Status,Priority,OrganizationId)
	  VALUES (_subject, _description,NOW(),1, contact_id,0,UUID(),1,_type,_attachment,_systemSource,_channelSource,_status,
      _priority,_orgId);

	SELECT id FROM tbltickets ORDER BY id DESC LIMIT 1 INTO ticket_id;
	-- SET system_source= (SELECT CASE WHEN _systemSource = 1 THEN 'S' ELSE '' END);
	-- need to handle for crm imports

	UPDATE tbltickets SET TicketNumber = ticket_id WHERE Id = ticket_id;
	SELECT '' as code,'' as status,CONCAT('S',LPAD(CONVERT(TicketNumber,CHAR(25)),5,0)) as result 
	FROM tbltickets WHERE Id = ticket_id;
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-22 12:27:14
