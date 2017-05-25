-- MySQL dump 10.13  Distrib 5.5.24, for Win32 (x86)
--
-- Host: localhost    Database: bookberries
-- ------------------------------------------------------
-- Server version	5.5.24

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cartId` varchar(15) NOT NULL,
  `quantity` varchar(2) DEFAULT NULL,
  `customerId` varchar(15) NOT NULL,
  `productId` varchar(15) NOT NULL,
  PRIMARY KEY (`cartId`),
  KEY `customerId` (`customerId`),
  KEY `productId` (`productId`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `categoryId` varchar(15) NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('2TiL22ML5SbtTkk','BCA'),('CZRWZhtW4mS2yZS','BBA'),('HXGJH363JHn3RXJ','Old Books'),('IbY1gNNM8P8N7NI','Pharmacy'),('iNtTTEt1t7NGlGE','M.B.B.S'),('iSdSYv1XNXzXnhn','Diploma'),('oSSoAuPSTTCmPuG','B.H.M.S'),('pIUoISNIWInIIdd','MBA'),('rOXbXo2Xooc11XO','B.A.M.S'),('T9515oY4HCn1CYY','MCA'),('wDaDbx55e79wbx5','Degree'),('xdBbIBYObxyYUUM','Msc.IT.'),('ZWBMrx1MgW1MMwB','Physiotherapathic');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customerId` varchar(15) NOT NULL,
  `customerFname` varchar(15) NOT NULL,
  `customerLname` varchar(15) NOT NULL,
  `customerAddress` varchar(255) NOT NULL,
  `customerMobileNo` varchar(10) NOT NULL,
  `customerMobileNo1` varchar(10) DEFAULT NULL,
  `customerPincode` varchar(15) NOT NULL,
  `customerEmail` varchar(50) NOT NULL,
  `customerPwd` varchar(128) NOT NULL,
  `customerIsAdmin` varchar(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`customerId`),
  UNIQUE KEY `customerEmail` (`customerEmail`),
  KEY `customerPincode` (`customerPincode`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`customerPincode`) REFERENCES `pincode` (`pincodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('7yPtVRRrU0Y00PR','Sharvil','Shah','Prerna Darshan Flats,vasna,ahmedabad.','9510363605','','IZl8p11RI9l1ZD9','sharvilshah1996@gmail.com','895848b2a884af7bc7cef9d6fdb5c308849d338d93380672d704a58f2adc01f6885b96c17e11ec507ba82cc74ca6d31e77bfc8b51f1be80ad9e961282341e661','y'),('dqop33GoKGOoG3I','Akshat','Mewada','A/3, Madhur Flats, Naranura, Ahmedabad','8866146377','','GIN0HIGmA44m2mj','mewadaakshat@gmail.com','fa69b3a1960ab0a0ea1c698d49ba84ef128be102c836fc791aec5bccdb7f677b20b59206cb40e50dd793d934f447d3e8ad34f001e84d192063eecbbc4782e47e','y'),('i4GZNNyvedeGeZy','Jeet','Khatri','A-3/2 Godavarinagar Part-1,b/h Sugam Flats,vasna','8469007271','','IZl8p11RI9l1ZD9','jeet.g.khatri@gmail.com','b166dc99f8f3cacc68e2052c4913f01f903af9774be362f67198336392bec51cdc45737c9de8124468c79ca3b4887b1f36e77539cc077655a1a90990e8fdcf68','y'),('QgwnyQQsgsh2vQQ','Urvil','Shah','Vasna','9016598908','','56s5Rss3sAtA33n','urvilshah1999@gmail.com','62a6ca2b88a14dee5f3bf82126e02828c3a12b8e0e9839b660b57859465d1f0df11732e79687f33682eaead9a7fcbfdd3a77b8152ee0a61480e894094b407bed','n'),('QhLN8hdQnqWTn88','Harmish','Shah','A-202 , Anatha Astha Flats , Near Gaytri Mandir , Waghodia (khatmbha Road).\r\nvadodara','9723767621','','qwGyygHwlrGNqwc','harmish141195@gmail.com','502c7205dc9bfcba8875361ff238c10d59c9d6e77c29658aa8f9995d44c60351b3e98c2da004232c0a757ef56c0c1a3387efe3c3c49f9f1ae6f3751bc40e1690','y');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forgotpassword`
--

DROP TABLE IF EXISTS `forgotpassword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forgotpassword` (
  `customerId` varchar(15) NOT NULL,
  `forgotPasswordId` varchar(30) NOT NULL,
  PRIMARY KEY (`forgotPasswordId`),
  KEY `customerId` (`customerId`),
  CONSTRAINT `forgotpassword_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forgotpassword`
--

LOCK TABLES `forgotpassword` WRITE;
/*!40000 ALTER TABLE `forgotpassword` DISABLE KEYS */;
INSERT INTO `forgotpassword` VALUES ('7yPtVRRrU0Y00PR','1G5rxzxS50k1581Qi9ymg89y6gGfQ8');
/*!40000 ALTER TABLE `forgotpassword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `logDate` varchar(50) NOT NULL,
  `logUserCnt` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES ('1466187903075',4),('1466240325097',1),('1466515828628',3),('1467032022802',1),('1467203030907',1),('1467289063492',26),('1467311483403',26),('1467399241936',73),('1467537790645',3),('1467606988344',8),('1467698380204',17),('1467785638465',5),('1467875214330',12),('1467919168499',5),('1468003097028',18),('1468139330436',3),('1468227369193',1),('1468501814753',2),('1468524889446',7),('1469019208270',3),('1469271834720',10),('1469330925481',1),('1469438037464',2),('1469523199079',2),('1469610524895',2),('1469824733274',5),('1469964296698',2),('1470084138143',3),('1470384988731',5),('1470426232022',11),('1470566825071',3),('1470632181768',13),('1470707934578',7),('1470804824854',10),('1470889762672',10),('1470976983289',8),('1471061100166',3),('1471326459840',4),('1471406113072',3),('1471522501170',3),('1471577054900',3),('1471679717562',3),('1471870500982',4),('1471963200190',3),('1471977921472',2),('1472109271668',1),('1472211265962',1),('1472403573862',4),('1472445826703',5),('1472640665035',2),('1473145067206',9),('1473336790668',4),('1473369344037',3),('1473748539366',4),('1474291382960',2),('1474383888169',1),('1474872694112',4),('1474961880963',2),('1475130209318',2),('1475946643726',2),('1476210422715',1),('1476211029628',5),('1476350683186',2),('1476434706682',1),('1476524707950',1),('1476624105947',2),('1476705186758',3),('1476813303644',1),('1477434109625',3),('1477548035413',1),('1478087087487',1),('1478198267520',1),('1478540217187',1),('1478684626558',1),('1479052524043',5),('1479545987798',1),('1480046438624',1),('1480319709974',1),('1480688339959',1),('1481039558964',2),('1481186651881',1),('1481884878641',2),('1482070933254',1),('1482220505040',2),('1482400888337',2),('1482487162747',2),('1482593772092',1),('1482655182773',1),('1482858981684',1),('1483125111776',2),('1483362447349',1),('1483445466089',1),('1483509342510',1),('1483792056296',1),('1484119315469',1),('1484213095962',1),('1484629832391',1),('1484862097400',1),('1484982866705',8);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `name`
--

DROP TABLE IF EXISTS `name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `name` (
  `Name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `name`
--

LOCK TABLES `name` WRITE;
/*!40000 ALTER TABLE `name` DISABLE KEYS */;
INSERT INTO `name` VALUES ('Sharvil'),('Viral'),('Avnish'),('Jeet');
/*!40000 ALTER TABLE `name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `ordersId` varchar(15) NOT NULL,
  `ordersQty` varchar(60) NOT NULL,
  `ordersPrice` varchar(5) NOT NULL,
  `ordersDate` varchar(50) NOT NULL,
  `customerId` varchar(15) NOT NULL,
  `ordersIsDispatched` varchar(1) NOT NULL DEFAULT 'n',
  `ordersIsDelivered` varchar(1) NOT NULL DEFAULT 'n',
  `ordersIsCancelled` varchar(1) NOT NULL DEFAULT 'n',
  `productId` varchar(255) NOT NULL,
  PRIMARY KEY (`ordersId`),
  KEY `customerId` (`customerId`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('77GyznGk4kj2xjn','1','130','1467459803300','QhLN8hdQnqWTn88','y','y','n','cAJLcgJLLC7RBBb'),('BFkeWwWupWukFow','1','159','1484983772718','QgwnyQQsgsh2vQQ','n','n','n','0uyS10bSpS5y3u1'),('GDVDhUDZVDCTWWZ','1','130','1467460717009','QhLN8hdQnqWTn88','n','n','n','cAJLcgJLLC7RBBb');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pincode`
--

DROP TABLE IF EXISTS `pincode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pincode` (
  `pincodeId` varchar(15) NOT NULL,
  `pincodeNumber` int(6) NOT NULL,
  PRIMARY KEY (`pincodeId`),
  UNIQUE KEY `pincodeNumber` (`pincodeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pincode`
--

LOCK TABLES `pincode` WRITE;
/*!40000 ALTER TABLE `pincode` DISABLE KEYS */;
INSERT INTO `pincode` VALUES ('IZl8p11RI9l1ZD9',380007),('GIN0HIGmA44m2mj',380009),('0QrE0JslGSJGQ0r',390019),('H9H8i9wa5a4gWHi',390022),('PPE9w9wAA9PkyZE',391240),('gnggiMniV2gy2aa',391510),('56s5Rss3sAtA33n',391740),('qwGyygHwlrGNqwc',391760);
/*!40000 ALTER TABLE `pincode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `productId` varchar(15) NOT NULL,
  `productImage` varchar(1) NOT NULL DEFAULT 'n',
  `productName` varchar(100) NOT NULL,
  `productAuthor` varchar(50) NOT NULL,
  `productPublisher` varchar(50) NOT NULL,
  `productDesc` varchar(255) NOT NULL,
  `productStock` varchar(5) NOT NULL,
  `productPrice` varchar(5) NOT NULL,
  `productPurchases` varchar(7) NOT NULL,
  `subCategoryId` varchar(15) NOT NULL,
  `productDiscount` varchar(2) NOT NULL,
  PRIMARY KEY (`productId`),
  KEY `subCategoryId` (`subCategoryId`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`subCategoryId`) REFERENCES `subcategory` (`subCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('0uyS10bSpS5y3u1','y','Disaster Management ','S.P.Maheta','Books India ','For Basic Knowledge In Degree Engineering ','24','175','1','IyTPBBiivTTPWPy','15'),('0VdN001slNfhtNs','y','Microprocessor M.I','Ramesh Gaokar','Prenam','Best Book','15','399','0','YeVV7VeV4yaeaNr','17'),('1aH7uPPyZPOy1vP','y','C N S','Dipak A. Patel','Atul','Computer Engineering Book ','05','75','0','FBoc7B9dBvbZo9r','20'),('1DAnrZSrq6b1rZr','y','D C M T ','R. P.Ajwalia ','Atul','Electrical Book ','15','150','0','8zyvy1U3Q3UCqCv','20'),('2CuJCXBXfBCDy2X','y','Environment Conservation Hazard Management','R R Mahitcha','Atul Prakashan','First Year Student Book','80','130','0','8zyvy1U3Q3UCqCv','20'),('2Hjjkee1jVvlssv','y','Geotechnics & Applied Geology','R P Rethaliya',' Atul Prakashan','Civil Engineering Book','20','300','0','o0DlwDDpDzlljQl','20'),('2wCQn22ICj8IAJI','y','Analysis & Design Of Algorithm','A A Puntambekar','Techanical','Computer Engineering Book','10','495','0','GnKkq5Ex5QQkqGt','15'),('2zy2y673K6z00jy','y','Control Engineering ','Ashok Kumar C.P','Tex-mech','Mechanical Engineering Book ','15','330','0','IyTPBBiivTTPWPy','15'),('3bpR0hzhR0GgRR4','y','Tool Engineering','S V Gosai','Atul Prakashan','It\'s 6 Sem Mechanical Book In English','30','120','0','KSg72mkkb7NbpAK','20'),('451gTTbpBT1wbbC','y','Fluid Mechanics &  Hydraulic Machine ','Bansal','Laxmi','Commen Book ','25','650','0','o0DlwDDpDzlljQl','15'),('49Qx99ff7Qi99xU','y','Environment Conservation Hazard Management','R R Mahitcha','Atul Prakashan','All Branch Diploma First Year Book','80','130','0','8zyvy1U3Q3UCqCv','20'),('4A0ArVRlb6lRA05','y','Electrical Compotiont & Circuit ','R. P.Ajwalia ','Atul','Electrical Engineering Book ','15','120','0','8zyvy1U3Q3UCqCv','20'),('6szBzwB7Bs607ws','y','Fundamentals Digital Electonics','R P Ajwalia','Atul Prakashan','First Year Computer,it Engineering Book','70','120','0','cce7Qcve7eamvea','20'),('77ep2v8m2278pYh','y','Computer Aided Manufacturing','Ragadia Sadiq Y.','Atul Prakashan','It\'s 6sem Gujarati Medium Book ','45','100','0','KSg72mkkb7NbpAK','20'),('7v49Uv4U9u91i9N','y','E E M','H.R Patel','Mahajan ','Commen Book ','15','230','0','IyTPBBiivTTPWPy','15'),('8ombbooRURAVwmI','y','Object Oriented Programming Using Jaava',' A A Puntambekar','Techanical','Computer Engineering Book','10','395','0','GnKkq5Ex5QQkqGt','15'),('8s8wfRCJCCRIfVa','y','Thermodyanamic','R.B Variya','Atul','best book ever','20','120','0','KSg72mkkb7NbpAK','20'),('8VrPSrr7V7rJPoD','y','E E M','D.R Patel','Atul','Commen Book For 3&4 Sem ','05','120','0','o0DlwDDpDzlljQl','20'),('A6PSFdN6AdNIOPA','y','Dme','S.B Soni','Atul','main subject & truly difficult subject','20','200','0','KSg72mkkb7NbpAK','20'),('a8jmFFcMjjjucP8','y','S M','Dr R. P.Rethaliya ','Atul','Mechanical Engineering Book ','25','150','0','KSg72mkkb7NbpAK','20'),('akObD6D6YMSqYzb','y','Programming In Ansi C','Balagurusamy','Mcgraw-hill Publications','Common Book For All Branch','30','399','0','i3in88sn8sb7iyg','17'),('AVqqVCjs4jsppAj','y','Industrial Management','D.R Patel','Atul Prakashan','6 Sem Mechanical Book','56','150','0','KSg72mkkb7NbpAK','20'),('aWNACwaIawADeaW','y','Organon Of Medicine','Bk Sarkar','Birla','For All Student','40','395','0','nX4275L77nL9f2X','20'),('BEqlELLEEXqqlW9','y','Operating Systems','William Stallings','Pearson','For Mca Study Book','03','819','0','zzfdzgg50dIl444','20'),('bnxWJZnWg1DJYyQ','y','Heat And Mass Transfer',' R.K. Rajput ','S Chand Publishing','Mechanical Engineering Book','03','550','0','IyTPBBiivTTPWPy','17'),('brCDQDj9DQecbCO','y','Sa 2','Dr R. P.Rethaliya ','Atul','Civil Engineering Book ','25','360','0','o0DlwDDpDzlljQl','20'),('BX7G7NGN63N7GfX','y','H R M ','Dr D.R. Patel','Atul','Medical Engineering Book ','25','120','0','KSg72mkkb7NbpAK','20'),('BZfIVYfXGBNYBEI','y','Operating System Concepts','Silberschatz And Galvin','Willey','Computer Engineering Book','10','619','0','GnKkq5Ex5QQkqGt','15'),('BzPJgogLCyCEBk1','y','Computer Graphics',' A P Godse Dr D A Godse','Techanical','Computer Engineering Book','10','399','0','GnKkq5Ex5QQkqGt','15'),('cAJLcgJLLC7RBBb','y','Sid','D.R. Patel','Atul','its say how to self employ in factory','8','120','2','KSg72mkkb7NbpAK','20'),('CEthEREEHgIgwSR','y','D C Machine & Transformer','D M Patel','Atul Prakashan','Electrical Engineering Book','10','300','0','iXyVpNQQTpQiip6','20'),('cHQ3svnzwOuoocw','y','Computer Programming','M T Savaliya','Atul Prakashan','First Year Computer, It Engineering Book','20','100','0','cce7Qcve7eamvea','20'),('CSEISIcyyCoEoOD','y','D R C S','Dr R. P.Rethaliya ','Atul','Civil Engineering Book ','15','300','0','o0DlwDDpDzlljQl','20'),('CVJ93M9Y0t9TXCJ','y','Mechanical E.C.C','S.V Gosai','Atul','its industrial coasting book','20','120','0','KSg72mkkb7NbpAK','20'),('CXJJP2PLXWP2Jnk','y','Fundamental Of Mechanical Engineering','R B Varia','Atul Prakashan','First Year Book','20','200','0','8zyvy1U3Q3UCqCv','20'),('CxrsgsAxkrYAjAY','y','Machine Design','R S Khurmi J K Gupta',' S Chand Publishing','Mechanical Engineering Book','25','895','0','IyTPBBiivTTPWPy','20'),('d8GcaaoaVdLNQx8','n','Textbook Of Pathology With Pathology Quick Review And Mcqs','Harsh Mohan','Jypee','For Mbbs Student & Also With Mcq Book','25','1850','0','nX4275L77nL9f2X','20'),('dDrrnp1CpDiQNUr','y','Ie','R.P Rethalia','Atul','book is best support in industry','10','120','0','KSg72mkkb7NbpAK','20'),('DGgwDwJkeegxkZd','y','Soil Mechanics ','Dr R. P.Rethaliya ','Atul','Civil Engineering Book ','15','240','0','o0DlwDDpDzlljQl','20'),('DHMlzl1llDzrYBr','y','Data Structures Using C','Reema Thareja','Oxford','Computer Engineering Book','10','430','0','GnKkq5Ex5QQkqGt','20'),('dldNZMdOCPztzdd','n','Power Electronic 1','D.M Patel','Atul','Electrical Engineering Book','15','150','0','iXyVpNQQTpQiip6','20'),('DM55zJI6wzj5jIf','y','A. C Circuit ','R. P.Ajwalia ','Atul','Electrical Engineering Book ','05','120','0','8zyvy1U3Q3UCqCv','20'),('DmDmbbGmi8ULkik','y','Bd Chaurasia S Handbk Gen Anatomy 5e','Chaurasia B. D','Jypee','Common For All Students','100','320','0','3223004N30ftt3h','25'),('drsUorKs3sUP2oU','y','Calculus','Dr. K.R Kachot','Mahajan','First Year Degree Book','20','320','0','o0DlwDDpDzlljQl','15'),('dTTuMXptdT1XusZ','y','Avr Microcontroller And Embedded Systems: Using Assembly And C','Muhammad Ali Mazidi','Pearson','Computer & Electronics Book','05','795','0','YeVV7VeV4yaeaNr','20'),('DX2X2c4XmemDZUZ','y','Estimating Costing In Civil Engineer ','B N Dutta','B N Dutta','Civil Engineering Book ','05','595','0','o0DlwDDpDzlljQl','15'),('dxdAdx0xdh4dppH','y','Circuit & Network','U.A Patel','Mahajan ','Electrical Engineering Book','05','500','0','iXyVpNQQTpQiip6','15'),('DZ4LH8jD4jjL1jH','y','Applied Mechanics',' R P Rethaliya','Atul Prakashan','First Year Student Book','80','150','0','KSg72mkkb7NbpAK','20'),('E4O4EqMM9M0Fps5','y','Theory Of Machines','R.S. Khurmi','S Chand Publishing','Mechanical Engineering Book','15','895','0','IyTPBBiivTTPWPy','20'),('eocdFpFcXdXZcJc','y','Design Of Machine Elements','Bhandari, V','Mcgraw-hill Publications','Mechanical Engineering Book','10','625','0','IyTPBBiivTTPWPy','20'),('eruAyYuT22EwTtt','y','Mechanics Of Solids','R P Rethaliya','Atul Prakashan','Civil Engineering Book','10','450','0','o0DlwDDpDzlljQl','20'),('FdFd1FK7FDFo7dd','y','Electrical Technology','B L Theraja A K Theraja','S Chand Publishing','Electrical Engineering Book','20','645','0','iXyVpNQQTpQiip6','15'),('Fg68KrGmGK6G7K7','y','Electrical Technology','B L Theraja A K Theraja','S Chand Publishing','Electrial Engineering Book','20','645','0','iXyVpNQQTpQiip6','15'),('fGvoBPPM4PDWGMW','y','B.D.Chaurasia\'s Human Anatomy: Regional And Applied Dissection And Clinical Volume 3 : Head And Neck','By Krishna Garg And P S Mittal','Jypee','For All Students','200','695','0','3223004N30ftt3h','25'),('flH2ihliVf1VVi2','y','Engineering And General Geology','Singh P','S.K Katariya & Sons','Civil Engineering Book','05','340','0','o0DlwDDpDzlljQl','20'),('FppPySsrFr4sPkF','y','Me-1','M.K Vora','Atul','Mechanical Engineering ','25','100','0','KSg72mkkb7NbpAK','20'),('fwGwaPqjqvxDZwf','y','Manufacturing Engineering - 1','Hemant S Trivedi','Books India ','Mechanical Engineering Book ','05','225','0','IyTPBBiivTTPWPy','15'),('GD5zkBSDEXf5KzB','y','P P V','Dr R. P.Rethaliya ','Atul','Civil Engineering Book ','05','360','0','o0DlwDDpDzlljQl','20'),('guHTaasu1sDTH1c','y','Fluid Machanics','R P Rethaliya','Atul Prakashan','Civil 3 Sem Book','10','325','0','o0DlwDDpDzlljQl','20'),('GUPGhGZZunjXUqx','y','Materia Medica','S K Dubey','S K Dubey','For B.H.M.S Students.','20','245','0','nX4275L77nL9f2X','20'),('gWYZWtlZtZzYIlw','y','Compiler Design','A.A.Puntambekar','Techanical','Computer Engineerig Book','10','320','0','GnKkq5Ex5QQkqGt','15'),('H67Jt61bqJVd5HH','y','Energy Conservation & Audit ','R. P.Ajwalia ','Atul','Electrical Engineering Book ','15','120','0','8zyvy1U3Q3UCqCv','20'),('hJiW7KmN7NhWhmA','y','Me 3','S.V Gosai','Atul','best book for manufactring','10','100','0','KSg72mkkb7NbpAK','20'),('hVSGljlfmGlUGdU','y','Textbook Of Pathology ','(hardcover, Harsh Mohan, Ivan Damjanov)','Jaypee Brothers Medical Publishers','Textbook Of Pathology 7th Edition, Authored By Harsh Mohan, Is A Useful Text For Medical Students Who Are Studying Pathology. The Book Comes With A Free Quick Review In The Subject And Multiple Choice Questions.','80','1850','0','nX4275L77nL9f2X','20'),('I75mIIqD7qnRXGD','y',' Environment Conservation And Hazard Management','R R Mahitcha','Atul Prakashan','First Year Student Book','90','120','0','17sWsQzzm1zJ1Ye','20'),('IFK96Iw7K9h97pK','y','Essentials Of Medical Physiology',' Sembulingam','Jypee','For All Student','40','1295','0','3223004N30ftt3h','20'),('IIYmCnVCFKCYIpX','y','B.D.Chaurasia\'s Human Anatomy : Regional And Applied Dissection And Clinical Volome 1 : Upper Limb A','By Krishna Garg And Mrudula Chandrupatla Paperback','Cbs','For All Student','100','499','0','3223004N30ftt3h','25'),('JFAGL2aaGa2J992','y','Construction Project Management','Dr R P Rethlia','Atul Prakashan','Civil Engineer Book','25','200','0','17sWsQzzm1zJ1Ye','20'),('jHZZCD2rDDgZ7gr','y','Parikhs Textbk Med Jurisprud For Med 6e','Parikh','Cbs','For All Students','13','670','0','nX4275L77nL9f2X','20'),('JJihIPJH8Ml2Nih','y','F.M.H.M','V.K. Modi','Atul','its best book for mechanical student','19','150','1','KSg72mkkb7NbpAK','20'),('JJtMfMfSfUUtgJj','y','Me 1','M.K Vora','Atul','best book in meanufactring','20','120','0','KSg72mkkb7NbpAK','20'),('Jr3hDvh0DJhLMMv','y','Fundamentals Digital Electonics','R P Ajwalia','Atul Prakashan','Computer Eng Book','40','120','0','cce7Qcve7eamvea','20'),('jRzzpOZzTtMJzyz','y','Dme','S.B Soni','Atul','main subject & truly difficult subject','05','180','0','KSg72mkkb7NbpAK','20'),('Jz0J1Psp1BB1ss6','y','Physiology','Sembunigam','Jypee','for medical student ','9','1295','1','nX4275L77nL9f2X','20'),('KKIIKhXP2FhO2sO','y','Basic Mathematics','G C Patel , Ami Chirag Shah','Atul Prakashan','First Year Student Book','80','150','0','KSg72mkkb7NbpAK','20'),('KKkYKww3OCmqbJJ','y','Theory Of Machines','S S Rattan','Mcgraw-hill Publications','Mechanical Engineering Book','15','599','0','IyTPBBiivTTPWPy','20'),('kRrRRceM5rcrlle','y','Mobile Computing & Wirless Comnucation','V.S Bagad','Technical','Computer Enginneering Book','05','160','0','GnKkq5Ex5QQkqGt','15'),('ll2XqBFVz3lzBbX','y','Hydrology & Water Resource Management ','R. B. Khasiya ','Mahajan ','Civil Engineering Book ','05','270','0','o0DlwDDpDzlljQl','15'),('loBPAVd7FQQkAkF','y','Hrm','D.R Patel','Atul','its best book for human resourt','20','120','0','KSg72mkkb7NbpAK','20'),('lYhlNhBchNh3YTc','y','D W P D','J. B Patel','Atul','It\'s Web Page Book ','05','150','0','FBoc7B9dBvbZo9r','20'),('LYhY982ssuss0hS','y','Soil mechanics','Dr R. P.Rethaliya ','Atul','Civil Engineering Book ','25','240','0','o0DlwDDpDzlljQl','20'),('M5jVnj5UVuVu4jP','y','Active English ','Experience Teacher ','Atul','It\'s Guide Of Active English & It\'s Also Translation In Gujrati. ','50','180','0','KSg72mkkb7NbpAK','20'),('MdzhYadmOMCbNbo','y','E E D','D.M Patel','Atul','Electrical Book','05','150','0','iXyVpNQQTpQiip6','20'),('MjD7bWMTDDN7LGW','y','Eectrical Technology','B.L Thareja','S.Chand','Book For Electric','15','645','0','iXyVpNQQTpQiip6','15'),('MJLGO5GUqw533yM','y','Operation Research ','Dr Ravi Kant','Books India ','Mechanical Engineering Book ','30','350','0','IyTPBBiivTTPWPy','15'),('MksmKahusmLsIIV','y','A. E. E. E','R. P.Ajwalia ','Atul','Diploma Engineering Book ','25','100','0','KSg72mkkb7NbpAK','20'),('mvc9hGq6Fhkq6Ga','y','Inter Connected Power System','D M Patel','Electrical Engineering ','7 Sem Electrical Engineering Book','25','240','0','iXyVpNQQTpQiip6','20'),('n63123bba3a1QP8','y','Hydrology & Water Resource Management ','Dr R. P.Rethaliya ','Atul','Civil Engineering Book ','15','240','0','IyTPBBiivTTPWPy','20'),('nDnviVMvBDMvonx','y','D C M T ','R. P.Ajwalia ','Atul','Electrical Engineering ','15','150','0','8zyvy1U3Q3UCqCv','20'),('Nr9PpBRo1ERgp1b','y','E I','R. P.Ajwalia ','Atul','Electrical Engineering ','15','120','0','8zyvy1U3Q3UCqCv','20'),('nsgEcg2M4BBxqBq','y','E I','R. P.Ajwalia ','Atul','Electrical Engineering Book ','25','120','0','8zyvy1U3Q3UCqCv','20'),('NSgnGnJBnlBvvgn','y','Engineering Drawing','N.D.Bhatt,v.M. Panchal, Pramod R. Ingle','Charotar','Common Book For All The Student','40','330','0','IyTPBBiivTTPWPy','13'),('NYv5cd5NdccXoQ5','y','Basic Engineering Drawing','P J Shah','Atul Prakashan','Mechanical Engineering First Year Book','100','120','0','17sWsQzzm1zJ1Ye','20'),('NZ5LX2ylLyCZCN5','y','I C N','Madhav Ajwalia ','Atul','Information Book ','05','120','0','cce7Qcve7eamvea','20'),('O8yfyvOyBf2Gyz6','y','Engineering Chemistry','M M Makwana','Atul Prakashan','Electrical Engineering Diploma First Year Book','80','150','0','8zyvy1U3Q3UCqCv','20'),('OfIDepKpggI6jfe','y','Computer Aided Manufacturing','Ragadia Sadiq Y.','Atul Prakashan','6sem Diploma In English Medium Book','56','120','0','KSg72mkkb7NbpAK','20'),('OKmkMvwD2xDzMD4','y','Cyber Security','I A Dhotre','Techanical','All Branches Book','10','150','0','GnKkq5Ex5QQkqGt','15'),('OkRk9kOZRfnRR0c','y','Manufacturing System','Atul I. Makvana','Atul Prakashan','Good Book','35','120','0','KSg72mkkb7NbpAK','20'),('oRYNGoYDRbobu3U','y','Highway Engineering ','R. P.Rethaliya ','Atul','Civil Engineering Book ','15','240','0','o0DlwDDpDzlljQl','20'),('P99PcFPoTaAychx','y','Fabrication Technology','S V Gosai','Atul Prakashan','It\'s 6 Sem Book In Gujarati','56','100','0','KSg72mkkb7NbpAK','20'),('PGJo2YQYpP2IJsW','y','Textbook Of Physiology Vol - I & Ii, 6e','By Ak Jain','Avichal Publication','For Medical Student','15','1350','0','UaNMhmNKUmb8BVB','20'),('pkPCbCkVkaaobSk','y','Advanced Engineering Mathematics','Dr.Shailesh S. Patel,dr. Narendra B. Desai','Atul Prakashan','All Branch Book','25','300','0','IyTPBBiivTTPWPy','20'),('pmnoinopuiKp0mi','y','Machine Drawing','N. D. Bhatt','Charotar','This Book For Mechanical Eng.','20','150','0','IyTPBBiivTTPWPy','30'),('PP1JtxTXwPmt1Po','y','Parikh Textbook Of Medical Jurisprudence Forensic Medicine And Toxicology : For Classrooms And Court',' Bv Subrahmanyam)','Cbs','The Seventh Edition Retains The Prime Flavour Of Parikh\'s Original Book, Including His Style Of Writing And Expression Of Facts In A Unique Style, Which Made It A Popular Text And Reference In The Indian Scenario. The Contents Have Been Thoroughly Updated','100','695','0','nX4275L77nL9f2X','20'),('PppzFmZOyOaYa4I','y','Information & Network Security','V.S.Bagad,i.A Dhotre','Techanical','It Departement','10','125','0','i3in88sn8sb7iyg','15'),('PzCzFUdUgtCCdBB','y','Fundamentals Of Digital Circuits','A. Anand Kumar','Phi','Electrical Engineering Book','10','475','0','iXyVpNQQTpQiip6','20'),('QBfVQBXVKR3BfVv','y','Building Construction','R P Rethaliya','Atul Prakashan','Civil Engineering 3 Sem Book','10','300','0','o0DlwDDpDzlljQl','20'),('qcWqWst6GstGaap','y','Electrical Compotiont & Circuit ','R. P.Ajwalia ','Atul','Electrical Engineering ','25','120','0','8zyvy1U3Q3UCqCv','20'),('QD7mDeCmeIeYCpQ','y','Fluid Power Engineering ','J. P.Hadiya ','Books India ','Mechanical Engineering Book ','15','350','0','IyTPBBiivTTPWPy','15'),('qdiPuCuqdSSnPSS','y','Electrical Wayring ','P. M Soni','Atul','Electrical Engineering Book ','15','225','0','8zyvy1U3Q3UCqCv','20'),('qgwYKPQKqg8QQK8','y','Allens Keynote','Allen H C','B Jain','For B.H.M.S Student','30','179','0','nX4275L77nL9f2X','20'),('QHcQOcrFgF3H3gQ','y','Engineering Chemistry','M M Makwana , S V Ranga','Atul Prakashan','Electrical Eng Book','45','120','0','8zyvy1U3Q3UCqCv','20'),('QQbLLMntQgln3V9','y','Me 3','C.M Desai','Atul','manufactring is first best thing in any kind of factory & country','10','100','0','KSg72mkkb7NbpAK','20'),('QxQhYxyN1nEYEPh','y','Tool Engineering','Atul I. Makvana','Atul Prakashan','It\'s 6sem Mechanical Book','80','120','0','KSg72mkkb7NbpAK','20'),('RQ55M5ivMEMafQl','y','Basic Mathematics','G C Patel , Ami Chirag Shah','Atul Prakashan','All First Year Student','100','150','0','cce7Qcve7eamvea','20'),('rqpkSkhqmqSLIVI','y','Fundamental Of Mechanical Engineering','R B Varia','Atul Prakashan','Diploma Electrical Student Book','20','120','0','8zyvy1U3Q3UCqCv','20'),('rtftlJcP9lrRncf','y','E P G','R. P.Ajwalia ','Atul','Electrical ','20','150','0','8zyvy1U3Q3UCqCv','20'),('RUShUGQPGQPyJSp','y','Power Electronics','Muhammad H. Rashid ','Pearson','Electrical Book','15','540','0','iXyVpNQQTpQiip6','15'),('SLTNDDNtbOSbtZS','y','Thermal 2','R.B. Variya','Atul','helpful of all type of power plants ','30','150','0','KSg72mkkb7NbpAK','20'),('Sme91eRmdcSe55r','y','C Programming.','Balaguru Swami','Balaguru Swami','c language','05','400','10','UlaUIqFhnHaXXF1','15'),('sqUrxsqTnxOCwsW','y','Manufacturing System','A R Sharma','Atul Prakashan','6sem Book','80','150','0','KSg72mkkb7NbpAK','20'),('sstJemMAemcMYYJ','y','Applied Mechanics','R P Rethaliya','Atul Prakashan','First Year Diploma Student Book','40','150','0','KSg72mkkb7NbpAK','20'),('t7XAOtTtb26Jo72','y','Biochemestry','U.Satyanarayana','Elsever','Medical Book','25','995','0','nX4275L77nL9f2X','17'),('TqtS33qpppp2J0d','y','Textbook Of Pathology With Pathology Quick Review And Mcqs','Harsh Mohan','Jypee','For All Medical Students','20','1850','0','nX4275L77nL9f2X','20'),('ua2hK2NYPaK8Fu8','y','Web Programing  Using Asp. Net','Hitesh Patel','Atul','Information Technology Book... ','05','150','0','cce7Qcve7eamvea','20'),('Ua53KpkAeOkppef','y','A & P Textbook Of Microbiology','R. Ananthanarayan And Arti Kapil','Universal Press','For All Students.','20','775','0','nX4275L77nL9f2X','20'),('umEmmpJJJXmuJXU','y','Fabrication Technology','S V Gosai','Atul Prakashan','It\'s 6 Sem Mechanical Engineering Book In English','30','120','0','KSg72mkkb7NbpAK','20'),('UMmxUYMS5EMmVUS','y','A. C Circuit ','R. P.Ajwalia ','Atul','Electrical Engineering Book ','15','100','0','8zyvy1U3Q3UCqCv','20'),('usiwPlci2dOPOlO','y','Theory Of Machine ','F.B. Sayyad','Tex-mech','Mechanical Engineering Book ','15','450','0','IyTPBBiivTTPWPy','15'),('v3Iv33jatVm2N3m','y','Computer Programming And Utilization','S M Shah , P P Kotak','Mahajan','1 Year In Bechalor Engineering Book','10','250','0','iXyVpNQQTpQiip6','15'),('vhkvJhhVhiJZikZ','y','Basic Mathematics','G C Patel , Ami Chirag Shah','Atul Prakashan','First Year All Branch Common Book For Diploma','100','150','0','8zyvy1U3Q3UCqCv','20'),('vmugZAAmmAvYUvZ','y','Object Oriented Programming Using Jaava','A A Puntambekar','Techanical','Computer Enginnering Book','10','395','0','GnKkq5Ex5QQkqGt','15'),('VnSQ9nmndhmd9dd','y','Hydrology & Water Resource Engineering','R.P Rethaliya','Atul','Civil Book','20','240','0','o0DlwDDpDzlljQl','20'),('vXLGPVGLYVPXXGb','y','System Programming',' A A Puntambekar','Techanical','Computer Engineering Book','10','290','0','GnKkq5Ex5QQkqGt','15'),('vZrGrvmrrclJuJl','y','Environment Engineering ','B. R. Shah','Mahajan ','Civil Engineering Book ','05','190','0','o0DlwDDpDzlljQl','15'),('W373713WJrOlhtQ','y','A Course In Electrical And Electronic Measurements And Instrumentation ','A. K Sawhney','Dhanpatray & Company','Electrical 3 Sem Book','10','550','0','iXyVpNQQTpQiip6','10'),('W6mN6nlWD4W946n','y','System Programming','A A Puntambekar','Techanical','Compuer Departement Book','10','290','0','GnKkq5Ex5QQkqGt','15'),('wIJwEJzXPPQtPzj','y','Electrical Measurement & Measuring Instruments','D M Patel','Atul Prakashan','Electrical Engineering  3 Sem Book','20','200','0','iXyVpNQQTpQiip6','20'),('WpxffpihvWdpUfp','y','Mobile Computing','Asoke K Talukder And Hasan Ahmed','Mcgraw-hill Publications','Computer Engineering Book','10','575','0','GnKkq5Ex5QQkqGt','20'),('Wq3WWxxGyVxjejO','y','Power Electronics','P. S. Bimbhra','Khana Publication','Electrical Engineering Book','10','495','0','iXyVpNQQTpQiip6','15'),('WUbnjLnFFYpjYy5','y','Product Details A Textbook Of Homoeopathic Pharmacy','Mandal & Mandal','Ncba','For B.H.M.S Students.','30','385','0','nX4275L77nL9f2X','20'),('wv4DzLVSZDLLzpV','y','Power Plant Engineering ','H G Kataria ','Books India ','Mechanical Engineering Book ','25','400','0','IyTPBBiivTTPWPy','15'),('wvTSzwloYTaSByw','y','D C M T ','J.G Jamnanni','Mahajan ','Electrical Engineering Book','05','220','0','iXyVpNQQTpQiip6','15'),('WWd3dTWwwDr0TTt','y','E P G','R. P.Ajwalia ','Atul','Electrical Engineering Book ','15','150','0','8zyvy1U3Q3UCqCv','20'),('wwzwyTy0wzbqqFO','y','Engineering Physics','S S Patel','Atul Prakashan','First Year Diploma Student Book','40','120','0','17sWsQzzm1zJ1Ye','20'),('XvTdPdRNPEmlvTn','y','B.D.Chaurasia\'s Human Anatomy : Regional & Applied Dissection And Clinical Volume 2 : Lower Limb Abd','By Krishna Garg And P S Mittal','Cbs','For All Students','100','625','0','3223004N30ftt3h','25'),('XYnrv4RrzvXr64a','y','Environment Engineering ','Dr R. P.Rethaliya ','Atul','Civil Engineering Book ','15','240','0','o0DlwDDpDzlljQl','20'),('XZpMi0tUUiZU0wi','y','Construction Project Management','Dr R P Rethlia','Atul Prakashan','Civil Engineering Book','25','200','0','17sWsQzzm1zJ1Ye','20'),('yAXw6MwJhwAsY6w','y','F M H M ','V. K Modi','Atul','Best Book Ever ','15','150','0','KSg72mkkb7NbpAK','20'),('yG7Atkt773LoXyG','y','Engineering Physics','S S Patel','Atul Prakashan','All Branch Common Book','120','120','0','17sWsQzzm1zJ1Ye','20'),('YJa8eeQft8LYtaB','y','S.M','Dr. R.P Rethaliya','Atul','it is helpful for mechanical','10','150','0','KSg72mkkb7NbpAK','20'),('YlIdlYgc73LYggk','y','Distributed Dbms','I.A Dhotre','Techanical','It Depatment Book','10','150','0','GnKkq5Ex5QQkqGt','15'),('yRnHRkyiinOywMi','y','Elements Of Electrical Engineering','U.A Patel','Atul Prakashan','First Year Degree Book','25','360','0','iXyVpNQQTpQiip6','20'),('yuEmxmKhvZSvKhE','y','Basic Engineering Drawing','P J Shah , Vaibhav P Shah','Atul Prakashan','First Year All Branch Common Book','120','100','0','17sWsQzzm1zJ1Ye','20'),('ZaK0HOKOmZNDmwZ','y','A.E.E.E','R.P. Ajwalia','Atul','book is just awesome','10','120','0','KSg72mkkb7NbpAK','20'),('ZegbCZpbbOpzC9e','y','C M T S','Amit M. Panchal ','Atul','Computer Engineering Book ','05','150','0','FBoc7B9dBvbZo9r','20'),('zei9uBzidBjFejj','y','Machine Design ','R. B. Patil','Tex-mech','Mechanical Engineering Book ','15','565','0','IyTPBBiivTTPWPy','15'),('ztr6trMrXGYhMr6','y','Industrial Management','D.R Patel','Atul Prakashan','It\'s 6 Sem Book In English','30','180','0','KSg72mkkb7NbpAK','20'),('zuo2rP5Pr5yLy2r','y','Surveying','R P Rethaliya','Atul Prakashan','Civil Engineering 3 Sem Book','15','300','0','o0DlwDDpDzlljQl','20');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategory` (
  `subCategoryId` varchar(15) NOT NULL,
  `subCategoryName` varchar(50) NOT NULL,
  `categoryId` varchar(15) NOT NULL,
  PRIMARY KEY (`subCategoryId`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `category` (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES ('17sWsQzzm1zJ1Ye','Civil','iSdSYv1XNXzXnhn'),('3223004N30ftt3h','M.B.B.S.','iNtTTEt1t7NGlGE'),('80PfLlcv7fY0Y7R','Physiotherapathic','ZWBMrx1MgW1MMwB'),('8zyvy1U3Q3UCqCv','Electrical','iSdSYv1XNXzXnhn'),('cce7Qcve7eamvea','It','iSdSYv1XNXzXnhn'),('FBoc7B9dBvbZo9r','Computer ','iSdSYv1XNXzXnhn'),('fYZzL2DvSHfxYvf','BCA','2TiL22ML5SbtTkk'),('GnKkq5Ex5QQkqGt','Computer ','wDaDbx55e79wbx5'),('i3in88sn8sb7iyg','It','wDaDbx55e79wbx5'),('iDXaCudicXNnznN','MBA','pIUoISNIWInIIdd'),('iXyVpNQQTpQiip6','Electrical ','wDaDbx55e79wbx5'),('IyTPBBiivTTPWPy','Mechanical ','wDaDbx55e79wbx5'),('KSg72mkkb7NbpAK','Mechanical ','iSdSYv1XNXzXnhn'),('nX4275L77nL9f2X','B.H.M.S','oSSoAuPSTTCmPuG'),('o0DlwDDpDzlljQl','Civil','wDaDbx55e79wbx5'),('QIhrrLjjYKQ2dp5','Pharmacy','IbY1gNNM8P8N7NI'),('TM7t3T53QKdvUSv','BBA','CZRWZhtW4mS2yZS'),('UaNMhmNKUmb8BVB','B.A.M.S','rOXbXo2Xooc11XO'),('UlaUIqFhnHaXXF1','C','xdBbIBYObxyYUUM'),('x1p9HpBFPl8PFWx','Old Book','HXGJH363JHn3RXJ'),('YeVV7VeV4yaeaNr','Ec','wDaDbx55e79wbx5'),('zzfdzgg50dIl444','MCA','T9515oY4HCn1CYY');
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suggestion`
--

DROP TABLE IF EXISTS `suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suggestion` (
  `suggestionId` varchar(15) NOT NULL,
  `suggestionDesc` varchar(255) NOT NULL,
  `customerId` varchar(15) NOT NULL,
  `suggestionIsAnswered` varchar(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`suggestionId`),
  KEY `customerId` (`customerId`),
  CONSTRAINT `suggestion_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suggestion`
--

LOCK TABLES `suggestion` WRITE;
/*!40000 ALTER TABLE `suggestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `suggestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlist` (
  `wishlistId` varchar(15) NOT NULL,
  `productId` varchar(15) NOT NULL,
  `customerId` varchar(15) NOT NULL,
  PRIMARY KEY (`wishlistId`),
  KEY `productId` (`productId`),
  KEY `customerId` (`customerId`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`),
  CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-21 13:02:17
