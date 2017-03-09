-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: quantinsti
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.14.04.1

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
-- Table structure for table `exchange_orders`
--

DROP TABLE IF EXISTS `exchange_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_orders` (
  `timestamp` double DEFAULT NULL,
  `instrument` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` int(11) DEFAULT NULL,
  `side` int(11) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_orders`
--

LOCK TABLES `exchange_orders` WRITE;
/*!40000 ALTER TABLE `exchange_orders` DISABLE KEYS */;
INSERT INTO `exchange_orders` VALUES (1473997674.817611,54572,1,1000,2,'sold'),(1473997712.959592,54865,2,1700,1,'bought'),(1473997747.964856,53208,3,3500,1,'bought'),(1473997777.894146,57155,4,7000,2,'sold'),(1473997799.048095,54866,5,1700,1,'bought'),(1473997902.097272,57155,6,7000,2,'sold'),(1473998068.077248,53513,7,3000,2,'sold'),(1473998068.077248,53513,8,3000,2,'sold');
/*!40000 ALTER TABLE `exchange_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `timestamp` double DEFAULT NULL,
  `instrument` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` int(11) DEFAULT NULL,
  `side` int(11) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57684 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1473997674.81761,54572,1,1000,2,'sold'),(1473997712.95959,54865,2,1700,1,'bought'),(1473997747.96486,53208,3,3500,1,'bought'),(1473997777.89415,57155,4,7000,2,'sold'),(1473997799.0481,54866,5,1700,1,'bought'),(1473997847.94902,54866,6,1700,1,'bought'),(1473997893.89428,54866,7,1700,1,'bought'),(1473997900.09485,54866,8,1700,1,'bought'),(1473997902.09727,57155,9,7000,2,'sold'),(1473997905.42678,42666,10,3000,1,'bought'),(1473998067.35684,57159,11,7000,1,'bought'),(1473998068.07725,53513,12,3000,2,'sold'),(1473998074.43027,56951,13,3000,1,'bought'),(1473998096.6709,35440,14,3500,1,'bought'),(1473998096.67582,53200,15,3500,1,'bought'),(1473998096.68151,53200,16,3500,1,'bought'),(1473998121.75664,42666,17,3000,1,'bought'),(1473998125.94978,42666,18,3000,1,'bought'),(1473998136.6688,45097,19,3000,2,'sold'),(1473998136.76877,53513,20,3000,2,'sold'),(1473998139.09356,57155,21,7000,1,'bought'),(1473998142.50049,42666,22,3000,1,'bought'),(1473998142.50086,53513,23,3000,2,'sold'),(1473998226.99462,57155,24,7000,1,'bought'),(1473998238.01714,57174,25,7000,1,'bought'),(1473998238.01734,57174,26,7000,1,'bought'),(1473998240.16826,56262,27,12000,2,'sold'),(1473998240.50994,57174,28,7000,1,'bought'),(1473998257.26207,56262,29,12000,2,'sold'),(1473998270.02691,57666,30,5000,2,'sold'),(1473998306.77293,45115,31,5000,2,'sold'),(1473998310.22712,57666,32,5000,2,'sold'),(1473998362.67568,53208,33,3500,2,'sold'),(1473998362.67617,53200,34,3500,1,'bought'),(1473998421.14117,57677,35,10000,2,'sold'),(1473998424.50408,54567,36,1000,1,'bought'),(1473998434.97866,54574,37,1000,1,'bought'),(1473998590.10578,54572,38,1000,1,'bought'),(1473998654.60318,56587,39,2500,1,'bought'),(1473998718.84055,54866,40,5100,2,'sold'),(1473998726.20215,54873,41,1700,2,'sold'),(1473998726.20241,54875,42,1700,2,'sold'),(1473998726.2025,54873,43,1700,2,'sold'),(1473998921.77962,38891,44,3000,2,'sold'),(1473998922.58862,38892,45,3000,1,'bought'),(1473998924.60989,38892,46,3000,1,'bought'),(1473998928.60046,44918,47,3000,1,'bought'),(1473998982.6784,56259,48,12000,1,'bought'),(1473998982.77609,56259,49,12000,1,'bought'),(1473999096.56858,44918,50,3000,2,'sold'),(1473999096.56878,44918,51,3000,2,'sold'),(1473999109.76026,56264,52,24000,2,'sold'),(1473999110.56378,56262,53,12000,2,'sold'),(1473999110.56382,56263,54,12000,1,'bought'),(1473999111.08591,54866,55,1700,2,'sold'),(1473999170.8,45107,56,12000,1,'bought'),(1473999170.8003,45107,57,12000,1,'bought'),(1473999225.80103,45107,58,12000,1,'bought'),(1473999260.03171,54867,59,5100,2,'sold'),(1473999315.29311,56266,60,24000,1,'bought'),(1473999319.8591,42666,61,3000,2,'sold'),(1473999335.24596,45097,62,3000,1,'bought'),(1473999372.55497,45103,63,1700,1,'bought'),(1473999532.47494,37532,64,3000,2,'sold'),(1473999888.26363,53198,65,3500,2,'sold'),(1473999971.60084,54869,66,3400,1,'bought'),(1474000314.30642,54873,67,1700,2,'sold'),(1474000376.68511,57666,68,10000,2,'sold'),(1474000500.49699,54870,69,1700,1,'bought'),(1474000502.30631,56951,70,3000,1,'bought'),(1474000529.83154,35440,71,3500,2,'sold'),(1474000593.98799,56954,72,3000,1,'bought'),(1474000602.91052,57673,73,10000,2,'sold'),(1474000602.91083,57673,74,10000,2,'sold'),(1474000602.91105,57673,75,10000,2,'sold'),(1474000604.77393,57159,76,7000,2,'sold'),(1474000611.0366,45115,77,5000,1,'bought'),(1474000632.38818,45115,78,5000,1,'bought'),(1474000813.63031,56954,79,3000,1,'bought'),(1474000920.91861,44918,80,3000,1,'bought'),(1474000920.91921,44918,81,6000,1,'bought'),(1474000955.63978,53208,82,3500,2,'sold'),(1474000969.11085,42666,83,3000,2,'sold'),(1474000978.80635,42666,84,3000,2,'sold'),(1474001038.5545,57673,85,5000,1,'bought'),(1474001116.16995,37532,86,3000,1,'bought'),(1474001129.03987,42666,87,3000,2,'sold'),(1474001142.11125,53519,88,3000,1,'bought'),(1474001178.8602,42666,89,3000,2,'sold'),(1474001180.12083,57673,90,5000,1,'bought'),(1474001184.03943,57673,91,5000,1,'bought'),(1474001187.67842,57673,92,10000,1,'bought'),(1474001194.30491,45115,93,5000,2,'sold'),(1474001240.82566,45115,94,5000,2,'sold'),(1474001242.27066,45097,95,3000,1,'bought'),(1474001263.05544,44918,96,3000,1,'bought'),(1474001421.47122,38891,97,3000,2,'sold'),(1474001671.7636,54350,98,2200,1,'bought'),(1474001815.75897,56949,99,3000,2,'sold'),(1474001846.98698,56949,100,3000,1,'bought'),(1474002152.83408,38891,101,3000,1,'bought'),(1474002152.83445,53513,102,3000,2,'sold'),(1474002153.78607,42666,103,3000,1,'bought'),(1474002186.30947,42666,104,3000,1,'bought'),(1474002194.50837,45097,105,3000,2,'sold'),(1474002213.57481,42666,106,3000,2,'sold'),(1474002327.05244,42666,107,3000,1,'bought'),(1474002350.79872,56259,108,12000,1,'bought'),(1474002489.56643,56951,109,3000,2,'sold'),(1474002561.96071,57160,110,7000,2,'sold'),(1474002709.76196,38891,111,3000,2,'sold'),(1474002803.399,38891,112,3000,1,'bought'),(1474002891.69837,53519,113,3000,2,'sold'),(1474002891.69904,44918,114,3000,1,'bought'),(1474003136.87325,57671,115,5000,2,'sold'),(1474003139.11426,57673,116,5000,1,'bought'),(1474003182.08966,57674,117,10000,2,'sold'),(1474003300.91186,57671,118,5000,2,'sold'),(1474003301.67313,57666,119,5000,1,'bought'),(1474003648.53111,57162,120,7000,2,'sold'),(1474003926.2819,57158,121,7000,2,'sold'),(1474003926.28199,57162,122,7000,2,'sold'),(1474003926.28266,57158,123,7000,2,'sold'),(1474004043.05221,45113,124,7000,1,'bought'),(1474004136.22165,57158,125,7000,2,'sold'),(1474004172.18884,45113,126,7000,1,'bought'),(1474004263.19246,53198,127,3500,2,'sold'),(1474004333.3381,35440,128,3500,2,'sold'),(1474004333.33878,53208,129,3500,1,'bought'),(1474004333.33908,35440,130,3500,2,'sold'),(1474004333.33916,35440,131,3500,2,'sold'),(1474004337.16841,53208,132,3500,1,'bought'),(1474004338.45777,53200,133,3500,1,'bought'),(1474004372.56773,53198,134,7000,2,'sold'),(1474004429.80804,45095,135,3500,1,'bought'),(1474004432.15639,57155,136,7000,1,'bought'),(1474004462.26448,38891,137,3000,2,'sold'),(1474004504.73892,54565,138,1000,1,'bought'),(1474004504.83892,54565,139,1000,1,'bought'),(1474004564.76952,53198,140,3500,2,'sold'),(1474004606.03098,57155,141,7000,1,'bought'),(1474004606.03199,57157,142,7000,2,'sold'),(1474004850.20498,57159,143,7000,1,'bought'),(1474004977.68075,35440,144,3500,2,'sold'),(1474004985.16578,35440,145,3500,2,'sold'),(1474005205.39861,53519,146,3000,1,'bought'),(1474005255.76256,53519,147,3000,1,'bought'),(1474005285.45702,57658,148,5000,1,'bought'),(1474005288.58358,53208,149,3500,2,'sold'),(1474005391.0704,57159,150,7000,2,'sold'),(1474005445.21489,57673,151,5000,1,'bought'),(1474005480.07615,57159,152,7000,1,'bought'),(1474005480.07651,57157,153,7000,1,'bought'),(1474005622.66053,57159,154,7000,2,'sold'),(1474005622.66074,57159,155,7000,2,'sold'),(1474005799.82522,54867,156,1700,2,'sold'),(1474005900.16907,45103,157,1700,1,'bought'),(1474006092.08664,44918,158,3000,2,'sold'),(1474006109.09452,53519,159,3000,2,'sold'),(1474006109.09523,37531,160,3000,1,'bought'),(1474006125.64018,57666,161,5000,1,'bought'),(1474006128.64133,53513,162,3000,2,'sold'),(1474006135.9855,38891,163,3000,1,'bought'),(1474006464.98806,53212,164,3500,1,'bought'),(1474006464.98862,53212,165,7000,1,'bought'),(1474006464.98877,53200,166,3500,2,'sold'),(1474006464.98897,53200,167,7000,2,'sold'),(1474006476.95337,45095,168,3500,2,'sold'),(1474006791.93502,57673,169,5000,1,'bought'),(1474006945.16552,35440,170,3500,1,'bought'),(1474007062.27,54866,171,1700,2,'sold'),(1474007084.31175,53519,172,3000,2,'sold'),(1474007108.36147,53519,173,3000,2,'sold'),(1474007182.47515,45097,174,3000,2,'sold'),(1474007256.72674,54869,175,1700,2,'sold'),(1474007256.72681,54869,176,1700,2,'sold'),(1474007281.18135,35440,177,3500,1,'bought'),(1474007338.45345,45095,178,3500,2,'sold'),(1474007364.2805,45115,179,5000,2,'sold'),(1474007383.3257,53200,180,3500,2,'sold'),(1474007502.91505,57159,181,7000,1,'bought'),(1474007532.09708,35440,182,3500,2,'sold'),(1474007730.45205,54355,183,2200,2,'sold'),(1474007730.45254,54355,184,2200,2,'sold'),(1474007763.67299,54350,185,1100,2,'sold'),(1474007781.6736,45100,186,1100,1,'bought'),(1474007796.10556,57162,187,7000,2,'sold'),(1474007797.97845,54873,188,1700,2,'sold'),(1474008054.59748,45113,189,7000,1,'bought'),(1474008129.28934,54869,190,1700,2,'sold'),(1474008330.72127,45103,191,1700,1,'bought'),(1474008330.72185,54866,192,1700,1,'bought'),(1474008332.30624,54866,193,3400,1,'bought'),(1474008338.19235,54869,194,1700,2,'sold'),(1474008338.19241,54869,195,1700,2,'sold'),(1474008338.19622,54869,196,1700,2,'sold'),(1474008615.66806,54869,197,1700,2,'sold'),(1474008841.63126,54357,198,2200,1,'bought'),(1474008963.56059,45103,199,1700,1,'bought'),(1474009033.20263,45103,200,1700,1,'bought'),(1474009179.40487,54866,201,1700,2,'sold'),(1474009188.82291,54353,202,1100,1,'bought'),(1474009193.83059,54353,203,1100,1,'bought'),(1474009197.69831,54350,204,1100,2,'sold'),(1474009217.4658,45100,205,1100,2,'sold'),(1474009217.46635,54350,206,1100,2,'sold'),(1474009217.46664,54350,207,1100,2,'sold'),(1474009224.62558,57159,208,7000,1,'bought'),(1474009224.62577,57158,209,7000,1,'bought'),(1474009228.77,57158,210,7000,1,'bought'),(1474009342.84702,44918,211,3000,2,'sold'),(1474009388.15728,45100,212,1100,2,'sold'),(1474009557.85646,44910,213,3000,1,'bought'),(1474009607.36723,57159,214,7000,2,'sold'),(1474009607.36744,57161,215,7000,2,'sold'),(1474009607.36928,57158,216,7000,2,'sold'),(1474009607.37059,57151,217,14000,1,'bought'),(1474009607.37436,45113,218,7000,2,'sold'),(1474009607.38665,57159,219,7000,1,'bought'),(1474009607.3887,57159,220,7000,1,'bought'),(1474009690.3235,57159,221,7000,2,'sold'),(1474009690.32371,57157,222,7000,2,'sold'),(1474009690.32466,57161,223,7000,2,'sold'),(1474009690.32558,57158,224,7000,2,'sold'),(1474009690.32564,57155,225,7000,2,'sold'),(1474009690.32635,57162,226,7000,2,'sold'),(1474009690.32994,57157,227,7000,1,'bought'),(1474009690.33369,57158,228,7000,1,'bought'),(1474009711.6783,57158,229,7000,1,'bought'),(1474009717.37462,57151,230,7000,1,'bought'),(1474009751.29166,57158,231,7000,1,'bought'),(1474009751.2917,57159,232,7000,2,'sold'),(1474009751.29174,57162,233,7000,1,'bought'),(1474009751.29339,57158,234,7000,2,'sold'),(1474009751.29369,57159,235,7000,1,'bought'),(1474009751.29384,57155,236,7000,2,'sold'),(1474009758.9164,57673,237,5000,2,'sold'),(1474009762.13342,57673,238,5000,2,'sold'),(1474009768.81493,57155,239,7000,1,'bought'),(1474009810.03692,57155,240,7000,1,'bought'),(1474009817.53376,57159,241,7000,2,'sold'),(1474009820.88321,45115,242,5000,1,'bought'),(1474009826.62246,54352,243,1100,2,'sold'),(1474009827.47151,57158,244,14000,1,'bought'),(1474009827.47159,57159,245,14000,2,'sold'),(1474009827.47178,57160,246,7000,1,'bought'),(1474009827.47187,57161,247,7000,2,'sold'),(1474009827.47195,57157,248,7000,2,'sold'),(1474009827.47343,57162,249,7000,2,'sold'),(1474009829.05613,45113,250,7000,2,'sold'),(1474009829.05667,45113,251,14000,2,'sold'),(1474009829.50419,56951,252,3000,2,'sold'),(1474009879.00826,57673,253,10000,2,'sold'),(1474009896.17564,45112,254,3000,1,'bought'),(1474009901.14927,45113,255,7000,2,'sold'),(1474009901.14944,57162,256,7000,1,'bought'),(1474009967.44039,57158,257,7000,1,'bought'),(1474009987.86228,57158,258,7000,2,'sold'),(1474010203.63613,56951,259,3000,2,'sold'),(1474010374.4316,54866,260,3400,1,'bought'),(1474010374.43228,54869,261,1700,2,'sold'),(1474010393.6152,57162,262,7000,1,'bought'),(1474010393.61568,57162,263,7000,1,'bought'),(1474010518.76847,45103,264,1700,1,'bought'),(1474010618.78903,57162,265,7000,1,'bought'),(1474010624.70483,54578,266,1000,2,'sold'),(1474010667.03569,57158,267,7000,2,'sold'),(1474010848.69912,57158,268,14000,1,'bought'),(1474010849.55409,45113,269,7000,2,'sold'),(1474010917.77739,54571,270,1000,2,'sold'),(1474010917.77749,54571,271,1000,2,'sold'),(1474010921.24507,54578,272,1000,2,'sold'),(1474010924.59021,54571,273,1000,2,'sold'),(1474010924.59077,54571,274,1000,2,'sold'),(1474010924.608,54572,275,1000,2,'sold'),(1474010933.21488,54571,276,1000,2,'sold'),(1474010933.48609,54571,277,1000,2,'sold'),(1474010943.30482,45102,278,1000,2,'sold'),(1474011022.07672,54578,279,1000,2,'sold'),(1474011030.10662,37515,280,7000,1,'bought'),(1474011030.10703,37515,281,7000,1,'bought'),(1474011030.10727,37515,282,7000,1,'bought'),(1474011038.86543,37515,283,7000,1,'bought'),(1474011145.84688,54871,284,1700,1,'bought'),(1474011162.10913,57159,285,7000,2,'sold'),(1474011167.41235,57160,286,7000,1,'bought'),(1474011178.80404,54866,287,1700,1,'bought'),(1474011191.10586,54572,288,1000,1,'bought'),(1474011191.10608,54570,289,1000,1,'bought'),(1474011191.10628,54572,290,3000,1,'bought'),(1474011191.10671,54572,291,2000,1,'bought'),(1474011191.12491,54570,292,1000,1,'bought'),(1474011229.45716,45102,293,1000,2,'sold'),(1474011259.78297,45113,294,7000,2,'sold'),(1474011273.30079,45095,295,3500,2,'sold'),(1474011396.85662,54572,296,1000,2,'sold'),(1474011396.85706,54572,297,3000,2,'sold'),(1474011396.85741,54572,298,2000,2,'sold'),(1474011501.64373,54571,299,1000,2,'sold'),(1474011606.92913,54355,300,2200,1,'bought'),(1474011618.52676,45115,301,5000,1,'bought'),(1474011623.08373,54355,302,1100,1,'bought'),(1474011623.14241,45100,303,1100,2,'sold'),(1474011639.18905,53208,304,3500,2,'sold'),(1474011641.85892,45100,305,1100,2,'sold'),(1474011722.50401,54571,306,1000,2,'sold'),(1474011773.51789,45102,307,1000,2,'sold'),(1474011790.67048,45095,308,3500,2,'sold'),(1474011880.81026,57159,309,14000,2,'sold'),(1474011907.46341,57159,310,7000,2,'sold'),(1474011965.83105,45113,311,7000,2,'sold'),(1474012005.23147,45113,312,7000,2,'sold'),(1474012011.22164,54869,313,1700,2,'sold'),(1474012044.55989,57673,314,5000,1,'bought'),(1474012045.88346,57673,315,5000,1,'bought'),(1474012060.43301,56951,316,3000,2,'sold'),(1474012073.6149,45112,317,3000,1,'bought'),(1474012095.86753,54355,318,1100,1,'bought'),(1474012186.8076,57673,319,5000,1,'bought'),(1474012200.80501,54875,320,5100,1,'bought'),(1474012203.26081,54875,321,1700,1,'bought'),(1474012208.62212,54867,322,1700,1,'bought'),(1474012213.708,54869,323,1700,2,'sold'),(1474012256.27835,54355,324,1100,1,'bought'),(1474012467.20792,37531,325,3000,1,'bought'),(1474012479.5505,57673,326,5000,1,'bought'),(1474012514.59632,57162,327,7000,2,'sold'),(1474012521.86181,45097,328,3000,2,'sold'),(1474012531.70949,45115,329,5000,2,'sold'),(1474012546.73407,54869,330,1700,1,'bought'),(1474012550.75074,53513,331,3000,1,'bought'),(1474012568.71583,56955,332,3000,1,'bought'),(1474012574.16206,53519,333,3000,1,'bought'),(1474012574.16211,53519,334,3000,1,'bought'),(1474012692.72362,57162,335,7000,1,'bought'),(1474012940.07189,37515,336,7000,2,'sold'),(1474012943.69689,37515,337,7000,2,'sold'),(1474012951.79107,37515,338,7000,2,'sold'),(1474012971.03447,44918,339,6000,2,'sold'),(1474012977.52447,56954,340,3000,1,'bought'),(1474012987.0342,45097,341,3000,1,'bought'),(1474013001.6061,56266,342,12000,2,'sold'),(1474013036.66011,57158,343,7000,1,'bought'),(1474013111.24143,57673,344,5000,2,'sold'),(1474013111.24192,57673,345,10000,2,'sold'),(1474013123.33328,57158,346,7000,1,'bought'),(1474013129.71008,57159,347,7000,1,'bought'),(1474013129.71046,57159,348,7000,1,'bought'),(1474013133.8219,54866,349,5100,1,'bought'),(1474013135.23228,44918,350,3000,2,'sold'),(1474013135.91437,44918,351,3000,2,'sold'),(1474013135.95985,37531,352,3000,2,'sold'),(1474013137.32415,37531,353,3000,1,'bought'),(1474013153.60071,53519,354,3000,1,'bought'),(1474013158.81325,53519,355,3000,2,'sold'),(1474013159.8845,53519,356,3000,2,'sold'),(1474013176.26611,42666,357,3000,1,'bought'),(1474013176.26648,53519,358,3000,2,'sold'),(1474013176.26715,53513,359,3000,2,'sold'),(1474013338.17779,42666,360,6000,1,'bought'),(1474013358.43523,45097,361,3000,2,'sold'),(1474013383.57299,54869,362,1700,1,'bought'),(1474013396.08135,53519,363,3000,2,'sold'),(1474013601.87933,57158,364,7000,2,'sold'),(1474013610.06412,57158,365,14000,2,'sold'),(1474013612.12603,57158,366,7000,2,'sold'),(1474013634.76315,54869,367,1700,2,'sold'),(1474013634.7636,54866,368,1700,1,'bought'),(1474013652.75087,45113,369,7000,1,'bought'),(1474013762.15807,57158,370,14000,1,'bought'),(1474013762.1584,57158,371,7000,1,'bought'),(1474013831.25282,54870,372,1700,2,'sold'),(1474013831.25478,54866,373,1700,1,'bought'),(1474013888.45139,35440,374,3500,1,'bought'),(1474013888.45169,37515,375,3500,2,'sold'),(1474013905.13387,57162,376,7000,2,'sold'),(1474013909.76886,57158,377,14000,2,'sold'),(1474013909.76909,57160,378,7000,2,'sold'),(1474013909.76933,57158,379,7000,2,'sold'),(1474013921.68982,45113,380,7000,1,'bought'),(1474013969.00485,57683,381,10000,1,'bought'),(1474013969.00575,57683,382,5000,1,'bought'),(1474013969.88574,57673,383,5000,2,'sold'),(1474013972.17121,45115,384,5000,1,'bought'),(1474013975.77996,42666,385,3000,1,'bought'),(1474013984.27448,57683,386,5000,1,'bought'),(1474013984.43806,54355,387,1100,2,'sold'),(1474013984.43841,54355,388,1100,2,'sold'),(1474013984.43845,54352,389,1100,1,'bought'),(1474013990.06375,54352,390,1100,1,'bought'),(1474013993.11408,45100,391,1100,1,'bought'),(1474013999.47981,45097,392,3000,2,'sold'),(1474014020.58655,54355,393,1100,2,'sold'),(1474014025.64212,57158,394,7000,1,'bought'),(1474014044.24886,53519,395,3000,2,'sold'),(1474014044.24927,37531,396,3000,2,'sold'),(1474014060.17727,56950,397,3000,2,'sold'),(1474014092.03485,54572,398,1000,1,'bought'),(1474014139.44992,44918,399,3000,1,'bought'),(1474014143.85882,53200,400,3500,1,'bought'),(1474014143.85934,37515,401,3500,2,'sold'),(1474014171.1482,57683,402,10000,1,'bought'),(1474014237.84991,57673,403,5000,1,'bought'),(1474014254.26919,56950,404,3000,2,'sold'),(1474014386.45459,57162,405,7000,1,'bought'),(1474014388.53609,57160,406,7000,2,'sold'),(1474014450.51915,54866,407,1700,2,'sold'),(1474014481.81873,57673,408,5000,1,'bought'),(1474014523.03912,45115,409,5000,2,'sold'),(1474014559.37669,35440,410,3500,2,'sold'),(1474014589.44893,45095,411,3500,1,'bought'),(1474014651.86975,57159,412,7000,1,'bought'),(1474014655.677,54869,413,1700,1,'bought'),(1474014655.78994,54866,414,3400,2,'sold'),(1474014672.25738,57159,415,7000,2,'sold'),(1474014696.34675,57673,416,5000,1,'bought'),(1474014701.80334,54869,417,1700,2,'sold'),(1474014715.28372,57673,418,5000,2,'sold'),(1474014759.94714,57673,419,5000,2,'sold'),(1474014771.46257,57673,420,5000,2,'sold'),(1474014817.14011,54354,421,1100,2,'sold'),(1474014817.14217,54354,422,1100,2,'sold'),(1474014850.88394,35504,423,3000,1,'bought'),(1474014861.90541,54353,424,1100,1,'bought'),(1474014863.86474,35504,425,3000,1,'bought'),(1474014873.25126,45100,426,1100,2,'sold'),(1474014959.38008,57674,427,5000,2,'sold'),(1474014959.54524,57683,428,5000,1,'bought'),(1474014997.26525,54572,429,1000,1,'bought'),(1474015008.11681,54867,430,1700,1,'bought'),(1474015019.30273,54867,431,1700,1,'bought'),(1474015036.86115,53519,432,3000,1,'bought'),(1474015036.8618,53519,433,3000,1,'bought'),(1474015036.86288,44918,434,6000,2,'sold'),(1474015046.80331,37531,435,3000,1,'bought'),(1474015046.80392,44918,436,3000,2,'sold'),(1474015046.80406,44910,437,3000,2,'sold'),(1474015052.43064,54873,438,1700,1,'bought'),(1474015059.41232,57683,439,5000,1,'bought'),(1474015073.56999,45102,440,1000,2,'sold'),(1474015110.24411,53519,441,3000,1,'bought'),(1474015112.47992,45097,442,3000,1,'bought'),(1474015114.25674,44910,443,3000,2,'sold'),(1474015114.25683,53513,444,3000,1,'bought'),(1474015114.25802,44910,445,3000,2,'sold'),(1474015114.25814,42666,446,3000,2,'sold'),(1474015117.48967,45097,447,3000,1,'bought'),(1474015126.32276,56950,448,3000,2,'sold'),(1474015139.63883,56949,449,3000,2,'sold'),(1474015139.6395,45112,450,3000,2,'sold'),(1474015175.35141,54578,451,1000,2,'sold'),(1474015177.11258,53201,452,3500,1,'bought'),(1474015236.95343,56950,453,6000,2,'sold'),(1474015252.29012,54353,454,1100,2,'sold'),(1474015252.29517,54353,455,1100,2,'sold'),(1474015254.08931,45100,456,1100,1,'bought'),(1474015259.76209,53208,457,3500,1,'bought'),(1474015300.73034,53208,458,3500,1,'bought'),(1474015300.73135,53208,459,3500,1,'bought'),(1474015315.03457,57683,460,10000,1,'bought'),(1474015315.03479,57683,461,10000,1,'bought'),(1474015317.443,57674,462,5000,2,'sold'),(1474015325.46481,45103,463,1700,2,'sold'),(1474015339.62537,45095,464,3500,1,'bought'),(1474015412.4603,57673,465,5000,1,'bought'),(1474015440.90041,57673,466,5000,2,'sold'),(1474015441.87269,53519,467,3000,1,'bought'),(1474015442.62735,54352,468,2200,2,'sold'),(1474015459.79739,45100,469,1100,2,'sold'),(1474015541.54875,54873,470,1700,2,'sold'),(1474015541.55597,54869,471,1700,2,'sold'),(1474015553.71429,53519,472,3000,1,'bought'),(1474015566.07477,45097,473,3000,1,'bought'),(1474015611.01452,42666,474,3000,2,'sold'),(1474015613.50584,53513,475,3000,1,'bought'),(1474015710.34092,57673,476,5000,1,'bought'),(1474015738.37631,54572,477,1000,1,'bought'),(1474015821.54575,53513,478,3000,1,'bought'),(1474015834.99087,45097,479,3000,1,'bought'),(1474015913.79227,54867,480,1700,1,'bought'),(1474015959.38147,54871,481,1700,2,'sold'),(1474016028.85824,53200,482,3500,1,'bought'),(1474016100.2307,56951,483,3000,1,'bought'),(1474016100.23097,56951,484,3000,1,'bought'),(1474016100.23114,56951,485,3000,1,'bought'),(1474016100.2314,56951,486,3000,1,'bought'),(1474016100.2398,56949,487,3000,2,'sold'),(1474016103.50286,57673,488,5000,1,'bought'),(1474016120.72409,45115,489,5000,2,'sold'),(1474016152.54848,56951,490,3000,2,'sold'),(1474016154.5051,45112,491,3000,2,'sold'),(1474016158.90858,56951,492,3000,2,'sold'),(1474016207.13541,54354,493,1100,1,'bought'),(1474016208.95491,54574,494,1000,2,'sold'),(1474016220.17585,44910,495,3000,1,'bought'),(1474016333.63677,57159,496,7000,1,'bought'),(1474016400.69016,57158,497,7000,2,'sold'),(1474016478.06995,54867,498,1700,1,'bought'),(1474016559.94056,57159,499,7000,1,'bought'),(1474016559.94093,57158,500,7000,2,'sold'),(1474016703.98572,38891,501,3000,2,'sold'),(1474016707.88019,54865,502,1700,1,'bought'),(1474016713.90692,45113,503,14000,1,'bought'),(1474016731.68529,53513,504,3000,2,'sold'),(1474016821.56128,45103,505,1700,2,'sold'),(1474016883.9594,54355,506,1100,1,'bought'),(1474016895.36564,54572,507,1000,1,'bought'),(1474016940.80333,57159,508,7000,1,'bought'),(1474016953.62972,54350,509,1100,1,'bought'),(1474016959.12696,57158,510,7000,2,'sold'),(1474017046.33771,54350,511,1100,1,'bought'),(1474017077.26845,45100,512,1100,1,'bought'),(1474017103.52068,57159,513,7000,1,'bought'),(1474017150.90872,54866,514,1700,2,'sold'),(1474017151.65887,57155,515,7000,2,'sold'),(1474017163.64255,54871,516,1700,2,'sold'),(1474017180.20429,45113,517,7000,1,'bought'),(1474017185.54409,54866,518,1700,2,'sold'),(1474017213.16797,38891,519,3000,2,'sold'),(1474017277.32441,54866,520,1700,2,'sold'),(1474017280.92509,45103,521,1700,2,'sold'),(1474017314.91758,54867,522,1700,2,'sold'),(1474017321.7302,54867,523,5100,2,'sold'),(1474017323.77132,54871,524,3400,2,'sold'),(1474017357.48333,53200,525,3500,2,'sold'),(1474017357.48372,53200,526,3500,2,'sold'),(1474017370.72091,57159,527,7000,1,'bought'),(1474017370.72105,57159,528,7000,1,'bought'),(1474017384.29964,57673,529,5000,2,'sold'),(1474017385.11555,57155,530,7000,2,'sold'),(1474017386.73059,57159,531,7000,1,'bought'),(1474017386.73109,57159,532,7000,1,'bought'),(1474017400.9029,54867,533,1700,1,'bought'),(1474017400.90313,54867,534,5100,1,'bought'),(1474017402.37381,45113,535,7000,1,'bought'),(1474017407.5616,57159,536,7000,1,'bought'),(1474017424.88385,45113,537,14000,1,'bought'),(1474017424.88906,57158,538,7000,2,'sold'),(1474017471.1537,53208,539,3500,1,'bought'),(1474017560.49171,54571,540,1000,2,'sold'),(1474017582.09599,53208,541,3500,2,'sold'),(1474017634.59281,57155,542,7000,1,'bought'),(1474017634.65432,54865,543,1700,1,'bought'),(1474017659.91857,57158,544,7000,2,'sold'),(1474017659.91868,57158,545,7000,2,'sold'),(1474017697.22791,45113,546,7000,1,'bought'),(1474017748.02763,57158,547,7000,2,'sold'),(1474017748.02767,57158,548,7000,2,'sold'),(1474017748.03011,57159,549,7000,1,'bought'),(1474017748.03058,57155,550,7000,1,'bought'),(1474017755.15116,45113,551,7000,1,'bought'),(1474017759.50557,54871,552,1700,2,'sold'),(1474017785.90322,57673,553,5000,2,'sold'),(1474017825.18655,45113,554,7000,1,'bought'),(1474017851.57537,57673,555,5000,1,'bought'),(1474017884.19517,35504,556,3000,1,'bought'),(1474017884.19585,56949,557,3000,2,'sold'),(1474017980.14388,54866,558,1700,2,'sold'),(1474018032.08423,44910,559,3000,1,'bought'),(1474018079.34904,53519,560,3000,2,'sold'),(1474018100.72568,54355,561,1100,1,'bought'),(1474018174.74443,57158,562,7000,1,'bought'),(1474018245.88287,41417,563,3000,1,'bought'),(1474018245.88318,38891,564,3000,1,'bought'),(1474018246.15402,41417,565,3000,2,'sold'),(1474018249.60534,53514,566,3000,2,'sold'),(1474018250.26657,53519,567,3000,1,'bought'),(1474018250.26733,44918,568,3000,1,'bought'),(1474018250.26758,38891,569,3000,1,'bought'),(1474018250.4684,37531,570,3000,2,'sold'),(1474018253.80513,37531,571,3000,2,'sold'),(1474018286.67538,44918,572,3000,1,'bought'),(1474018300.18356,53514,573,3000,2,'sold'),(1474018303.52625,45097,574,3000,1,'bought'),(1474018308.05508,57673,575,5000,2,'sold'),(1474018361.10753,57158,576,7000,1,'bought'),(1474018381.48268,57159,577,7000,2,'sold'),(1474018395.08073,54862,578,1700,1,'bought'),(1474018410.5629,57159,579,7000,2,'sold'),(1474018411.61847,45113,580,7000,2,'sold'),(1474018413.31451,53519,581,3000,1,'bought'),(1474018423.10201,37531,582,3000,1,'bought'),(1474018423.90271,37531,583,3000,1,'bought'),(1474018546.60427,53198,584,3500,1,'bought'),(1474018572.33978,53212,585,3500,2,'sold'),(1474018580.72744,57158,586,7000,1,'bought'),(1474018583.91381,57157,587,7000,1,'bought'),(1474018758.60276,54869,588,1700,1,'bought'),(1474018758.60315,54869,589,5100,1,'bought'),(1474018758.60342,54869,590,1700,1,'bought'),(1474018792.46058,45103,591,1700,2,'sold'),(1474018842.20958,54871,592,1700,2,'sold'),(1474018880.25015,54871,593,3400,2,'sold'),(1474018884.79223,54867,594,1700,2,'sold'),(1474018964.68507,54867,595,1700,2,'sold'),(1474018983.0227,54867,596,1700,2,'sold'),(1474018997.9063,45103,597,1700,1,'bought'),(1474019127.06888,54869,598,1700,1,'bought'),(1474019132.95164,57673,599,10000,1,'bought'),(1474019132.95193,57673,600,5000,1,'bought'),(1474019229.57989,54357,601,1100,2,'sold'),(1474019252.99881,54357,602,1100,2,'sold'),(1474019437.09787,45115,603,5000,2,'sold'),(1474019456.43591,57158,604,7000,2,'sold'),(1474019594.08024,57160,605,7000,1,'bought'),(1474019615.15544,53198,606,3500,1,'bought'),(1474019690.28944,53513,607,3000,2,'sold'),(1474019765.29443,45102,608,1000,2,'sold'),(1474019797.9823,45097,609,3000,2,'sold'),(1474019806.12848,57158,610,7000,2,'sold'),(1474019816.64047,54571,611,1000,1,'bought'),(1474019872.2813,35504,612,3000,1,'bought'),(1474019924.40224,56949,613,3000,2,'sold'),(1474019946.46894,56953,614,3000,1,'bought');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-09 14:20:38
