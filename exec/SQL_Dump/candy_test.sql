-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: j8b105.p.ssafy.io    Database: candy
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

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
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `beer_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `abv` double NOT NULL,
  `appearance` double NOT NULL,
  `aroma` double NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `constructor` varchar(255) DEFAULT NULL,
  `is_delete` bit(1) NOT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `beer_en_name` varchar(255) DEFAULT NULL,
  `beer_kr_name` varchar(255) DEFAULT NULL,
  `flavor` double NOT NULL,
  `mouthfeel` double NOT NULL,
  `overall` double NOT NULL,
  `style` varchar(255) DEFAULT NULL,
  `beer_image` varchar(511) DEFAULT NULL,
  `country_id` bigint DEFAULT NULL,
  PRIMARY KEY (`beer_id`),
  KEY `FKeq88ugxvhmmiyc25xg1o2bf5k` (`country_id`),
  CONSTRAINT `FKeq88ugxvhmmiyc25xg1o2bf5k` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,3.6666666666666665,4,'8809546060316','admin@admin.com',_binary '\0','admin@admin.com','ARK Seoulite Ale','아크 광화문 서울라이트',4.333333333333333,2.6666666666666665,8,'Pale Ale - American','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_634182',1),(2,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,2.5657311669128506,3.8840472673559825,'4901004006813','admin@admin.com',_binary '\0','admin@admin.com','Asahi Super Dry','아사히 수퍼드라이',4.1698670605613,2.395125553914328,8.228951255539144,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_251',2),(3,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5.5,3.272727272727273,4.818181818181818,'4901004018137','admin@admin.com',_binary '\0','admin@admin.com','Asahi Super Dry Black','아사히 수퍼드라이 블랙',5.101010101010101,2.6666666666666665,10.393939393939394,'Dark Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_169964',2),(4,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.1,3,3,'8886002102070','admin@admin.com',_binary '\0','admin@admin.com','Bali Hai Premium Lager','발리 하이 프리미엄 라거',5,3,10,'Pilsener / Pils / Pilsner','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_778338',3),(5,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',8.6,2.7303754266211606,4.109215017064846,'8714800004114','admin@admin.com',_binary '\0','admin@admin.com','Bavaria 8.6 (Original)','바바리아 8.6 (오리지널)',4.279863481228669,2.419795221843003,8.215017064846416,'Pilsener - Imperial','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_5588',4),(6,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,2.612167300380228,3.96958174904943,'8714800007191','admin@admin.com',_binary '\0','admin@admin.com','Bavaria Pilsener / Premium Beer','바바리아 필스너 / 프리미엄 비어',4.282636248415716,2.38276299112801,8.357414448669202,'Pale Larger - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_5571',4),(7,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.8,2.6310741687979537,4.2148337595907925,'41001356','admin@admin.com',_binary '\0','admin@admin.com','Beck\'s','벡스',4.6138107416879794,2.5153452685421995,9.122122762148338,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_703',5),(8,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5.1,2.9672131147540983,4.995901639344262,'','admin@admin.com',_binary '\0','admin@admin.com','Berliner Kindl Jubil?ums Pilsener Premium','베를리너 킨들 유빌래움스 필스너 프리미엄',5.200819672131147,2.8114754098360657,10.315573770491802,'Pilsener / Pils / Pilsner','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_6668',5),(9,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.7,2.5325842696629213,3.7325842696629215,'8997206581193','admin@admin.com',_binary '\0','admin@admin.com','Bintang Pilsener','빈땅 필스너',3.9303370786516854,2.2404494382022473,7.597752808988764,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_7656',3),(10,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,2.045428407130535,2.66129959746981,'8801021213217','admin@admin.com',_binary '\0','admin@admin.com','Budweiser','버드와이저',2.9378953421506613,1.824036802760207,5.393329499712478,'Pale Lager - American','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_473',6),(11,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',0.5,3,4.5,'','admin@admin.com',_binary '\0','admin@admin.com','Burge Meester Shandy Lemon','버지 미스터 섄디 레몬',5,2,8.5,'Flavored - Fruit','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_394065',7),(12,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.6,2.6185064935064934,3.9983766233766236,'5740700992896','admin@admin.com',_binary '\0','admin@admin.com','Carlsberg Pilsner','칼스버그 필스너',4.372564935064935,2.4423701298701297,8.614448051948052,'Pilsener / Pils / Pilsner','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_709',8),(13,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.5,2.284865952548628,3.347801085260646,'8801858011024','admin@admin.com',_binary '\0','admin@admin.com','Cass Fresh','카스 프레시',3.408619705625918,2.0503598647116594,6.4493392070484585,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_12775',1),(14,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',3.5,2.503875968992248,3.3255813953488373,'','admin@admin.com',_binary '\0','admin@admin.com','Castlemaine XXXX Gold Lager','캐슬메인 XXXX 골드 라거',3.565891472868217,1.9844961240310077,6.953488372093023,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_1486',9),(15,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5.9,2.326984126984127,3.346031746031746,'3119780251889','admin@admin.com',_binary '\0','admin@admin.com','Desperados','데스페라도스',3.2793650793650793,1.946031746031746,6.006349206349206,'Flavored - Other','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_4007',15),(16,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.9,3.3098591549295775,6.48943661971831,'8809311399184','admin@admin.com',_binary '\0','admin@admin.com','Edelweiss Weissbier Snowfresh','에델바이스 바이스비어 스노우프레쉬',6.415492957746479,3.130281690140845,12.880281690140846,'Weissbier - Hefeweizen','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_72025',10),(17,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',2.5,2.6444444444444444,4.511111111111111,'9015180127332','admin@admin.com',_binary '\0','admin@admin.com','Egger Grapefruit Radler','예거 그레이프프루트 라들러',4.711111111111111,2.488888888888889,8.933333333333334,'Radler / Shandy','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_221535',10),(18,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,2.8354430379746836,4.89873417721519,'','admin@admin.com',_binary '\0','admin@admin.com','Egger Märzenbier','예거 메르쩬비어',5.069620253164557,2.6139240506329116,9.784810126582279,'M?rzen / Oktoberfest Bier','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_58275',10),(19,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5.1,3.111111111,5.222222222,'','admin@admin.com',_binary '\0','admin@admin.com','Egger Zwickl','예거 쯔비켈',5.444444444,3,10.44444444,'ZwickelBier / Kellerbier / Landbier','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_291276',10),(20,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,2.856060606060606,4.636363636363637,'','admin@admin.com',_binary '\0','admin@admin.com','Eichbaum Apostel Br?u','아이히바움 아포스텔 브로',4.734848484848484,2.5681818181818183,9.734848484848484,'Pilsener / Pils / Pilsner','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_75661',5),(21,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5.3,3.4950920245398773,5.865030674846626,'4002103003014','admin@admin.com',_binary '\0','admin@admin.com','Erdinger Weissbier','에딩거 바이스비어',6.093865030674847,3.1644171779141104,12.468711656441718,'Weissbier - Hefeweizen','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_2468',5),(22,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5.3,3.6868537666174297,5.99261447562777,'4002103003038','admin@admin.com',_binary '\0','admin@admin.com','Erdinger Weissbier Dunkel','에딩거 바이스비어 둔켈',6.259231905465288,3.2008862629246675,12.886262924667651,'Weissbier - Dunkelweizen','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_2469',5),(23,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.5,2.555555556,4,'8801119240514','admin@admin.com',_binary '\0','admin@admin.com','FiLite','필라이트',4.555555556,2.777777778,10,'International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_553454',1),(24,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,3.7895604395604394,6.889010989010989,'','admin@admin.com',_binary '\0','admin@admin.com','Franziskaner Hefe-Weissbier / Weissbier Naturtrub','프란치스카너 헤페바이스비어 / 바이스비어 나투르트륍',7.03021978021978,3.529120879120879,14.423076923076923,'Weissbier - Hefeweizen','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_1088',5),(25,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.3,3.0451807228915664,4.728915662650603,'8594404000459','admin@admin.com',_binary '\0','admin@admin.com','Gambrinus Originál 10° (Desítka)','감브리너쉬 오리지널 10°',4.909638554216867,2.683734939759036,9.810240963855422,'Pilsener - Bohemian / Czech','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_721',11),(26,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,2.9012933968686183,4.5500340367597,'83741150012','admin@admin.com',_binary '\0','admin@admin.com','Grolsch Premium Lager','그롤쉬 프리미엄 라거',4.987066031313819,2.7004765146358065,10.01565690946222,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_715',4),(27,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.2,4.327142857142857,5.941428571428571,'50213085','admin@admin.com',_binary '\0','admin@admin.com','Guinness Draught','기네스 드래프트',6.293333333333333,3.3319047619047617,13.175238095238095,'Stout - Dry / Irish','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_1267',12),(28,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.2,3.7517241379310344,6.066666666666666,'5000213018842','admin@admin.com',_binary '\0','admin@admin.com','Guinness Original 4.2% (Ireland/UK)','기네스 오리지널 4.2%',6.2620689655172415,3.193103448275862,12.705747126436782,'Stout','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_55',12),(29,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.8,2.383720930232558,3.802325581395349,'6948960108814','admin@admin.com',_binary '\0','admin@admin.com','Harbin Beer','하얼빈',3.992248062015504,2.2829457364341086,7.782945736434108,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_17334',13),(30,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,2.541730670762929,3.6682027649769586,'8712000900045','admin@admin.com',_binary '\0','admin@admin.com','Heineken','하이네켄',4.13773681515617,2.345622119815668,8.147977470558116,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_37',4),(31,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5.2,3.113861386138614,4.962871287128713,'8712000039653','admin@admin.com',_binary '\0','admin@admin.com','Heineken Dark Lager','하이네켄 다크 라거',5.215346534653466,2.74009900990099,10.547029702970297,'Dark Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_34662',4),(32,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.8,2.480769230769231,3.7884615384615383,'8801119664242','admin@admin.com',_binary '\0','admin@admin.com','Hite D (Dry Finish)','하이트 디',3.769230769230769,2.269230769230769,7.634615384615385,'Pale Lager - American','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_136165',1),(33,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.3,2.7567567567567566,3.972972972972973,'8801119807281','admin@admin.com',_binary '\0','admin@admin.com','Hite Extra Cold','하이트 엑스트라 콜드',4.027027027027027,2.5405405405405403,7.8108108108108105,'Pale Lager - American','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_500620',1),(34,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.5,2.3473684210526318,3.5157894736842104,'','admin@admin.com',_binary '\0','admin@admin.com','Hite Prime Max','하이트 프리미엄 맥스',3.705263157894737,2.0526315789473686,7.136842105263158,'Pale Lager - American','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_13833',1),(35,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.9,3.59228515625,6.71435546875,'5410228234258','admin@admin.com',_binary '\0','admin@admin.com','Hoegaarden','호가든',6.833984375,3.43408203125,14.052734375,'Wheat Ale','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_399',14),(36,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.9,3.6,6,'8801021216799','admin@admin.com',_binary '\0','admin@admin.com','Hoegaarden Cherry','호가든 체리',5.4,3.8,11,'Radler / Shandy','https://res.cloudinary.com/ratebeer/image/upload/w…imit,d_Default_Beer_qqrv7k.png,f_auto/beer_506847',14),(37,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',3,2.9463519313304722,5.094420600858369,'8801021229232','admin@admin.com',_binary '\0','admin@admin.com','Hoegaarden Ros?e','호가든 로제',4.736051502145923,2.5622317596566524,9.446351931330472,'Flavored - Fruit','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_73158',14),(38,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,2.6315789473684212,4.426592797783933,'40678924','admin@admin.com',_binary '\0','admin@admin.com','Holsten Premium Bier','홀스텐 프리미엄 비어',4.7368421052631575,2.484764542936288,9.11634349030471,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_3101',5),(39,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5.3,3,5.428571428571429,'8809556110001','admin@admin.com',_binary '\0','admin@admin.com','Jeju Wit Ale','제주 위트 에일',5.642857142857143,3.0714285714285716,11.642857142857142,'Witbier / Belgian White Ale','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_552713',1),(40,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.9,2.612807148175726,4.024571854058079,'4901411175317','admin@admin.com',_binary '\0','admin@admin.com','Kirin Ichiban','기린 이치방',4.307520476545048,2.451228592702904,8.442293373045421,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_268',2),(41,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.5,2.1904761904761907,3.5714285714285716,'','admin@admin.com',_binary '\0','admin@admin.com','Kloud Fitz Super Clear','클라우드 피즈',3.238095238095238,1.9047619047619047,6.761904761904762,'Pale Lager - American','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_550283',1),(42,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,2.8,4.3125,'8801030998075','admin@admin.com',_binary '\0','admin@admin.com','Kloud Original Gravity','클라우드 오리지널',4.45,2.475,8.8875,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_271470',1),(43,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',3.8,3.4552156788744823,5.774443416840576,'8594404008042','admin@admin.com',_binary '\0','admin@admin.com','Kozel Černý (Dark) 10°','코젤 체르니 (다크) 10°',5.877295211222363,2.9914794951045347,11.973936899862826,'Dark Lager - Dunkel / Tmavý','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_390',11),(44,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5.3,3.5247148288973382,6.173003802281369,'4008287762020','admin@admin.com',_binary '\0','admin@admin.com','Krombacher Weizen','크롬바커 바이젠',6.150190114068441,3.1311787072243344,12.416349809885931,'Weissbier - Hefeweizen','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_71469',5),(45,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,3.091988130563798,5.41246290801187,'3080216031811','admin@admin.com',_binary '\0','admin@admin.com','Kronenbourg 1664 Blanc','크로넨버그 1664 블랑',5.221068249258161,2.728486646884273,10.532640949554896,'Witbier / Belgian White Ale','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_35424',15),(46,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5.2,2.684375,4.146875,'6413600091233','admin@admin.com',_binary '\0','admin@admin.com','Lapin Kulta IV A','라핀 쿨타',4.365625,2.428125,8.4125,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_4701',16),(47,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',6.5,3.7737430167597767,6.578212290502793,'5410228201236','admin@admin.com',_binary '\0','admin@admin.com','Leffe Brune / Bruin / Brown','레페 브라운',6.78840782122905,3.4483240223463687,13.906424581005586,'Belgian Ale - Dark / Amber','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_2516',14),(48,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',6.5,2.090909090909091,3.727272727272727,'40786179','admin@admin.com',_binary '\0','admin@admin.com','Löwenbräu Original (4.2%)','뢰벤브로이 오리지널',3.909090909090909,2.0454545454545454,7.818181818181818,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_288954',17),(49,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,3.333333333,6.333333333,'','admin@admin.com',_binary '\0','admin@admin.com','Mallaskosken Kuohu Amber Lager Special Edition','말라스코스켄 코후 엠버 라거 스페셜 에디션',6.333333333,3,12.33333333,'Amber Lager - International / Vienna','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_108185',17),(50,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.7,2.142962962962963,2.708148148148148,'8801030953869','admin@admin.com',_binary '\0','admin@admin.com','Miller Genuine Draft (MGD)','밀러 제뉴인 드래프트',3.0725925925925925,1.9259259259259258,5.648888888888889,'Pale Lager - American','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_405',6),(51,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5.2,2.673469387755102,4.183673469387755,'8801021105024','admin@admin.com',_binary '\0','admin@admin.com','OB Premier Pilsner','오비 프리미엄 필스너',4.26530612244898,2.489795918367347,8.244897959183673,'Pale Lager - American','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_303473',1),(52,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5.5,3.7985611510791366,6.868289983397897,'4066600601920','admin@admin.com',_binary '\0','admin@admin.com','Paulaner Hefe-Weissbier','파울라너 헤페 바이스비어',6.999446596568899,3.5589374654122854,14.350304371887106,'Weissbier - Hefeweizen','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_647',5),(53,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5.1,2.496615905245347,3.9864636209813873,'8008440422019','admin@admin.com',_binary '\0','admin@admin.com','Peroni Nastro Azzurro','페로니 나스트라즈로',4.333333333333333,2.4357021996615904,8.422165820642977,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_3029',18),(54,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.4,3.4183919114106884,5.992296581608088,'8594404115115','admin@admin.com',_binary '\0','admin@admin.com','Pilsner Urquell','필스너 우르켈',6.479056331246991,3.3456909003370248,13.238805970149254,'Pilsener - Bohemian / Czech','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_717',11),(55,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5.2,3,5.666666667,'8809556440009','admin@admin.com',_binary '\0','admin@admin.com','Platinum Pale Ale','플래티넘 페일 에일',5.777777778,3,11.88888889,'Pale Ale - American','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_553245',1),(56,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5.4,4,7,'8809556440030','admin@admin.com',_binary '\0','admin@admin.com','Platinum White Ale','플래티넘 화이트 에일',9,5,16,'Witbier / Belgian White Ale','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_580686',1),(57,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,2.857142857142857,3.0714285714285716,'8801021216867','admin@admin.com',_binary '\0','admin@admin.com','Red Rock','레드 락',3.5714285714285716,2.2142857142857144,6.142857142857143,'Amber Lager - International / Vienna','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_21936',1),(58,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5.4,3.7,5.8,'4260556082028','admin@admin.com',_binary '\0','admin@admin.com','Reeper B. Blondes Weissbier','리퍼비 블론드 바이스비어',5,2.6,10.5,'Weissbier - Hefeweizen','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_667837',5),(59,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,2.8125,4.75,'4260556082004','admin@admin.com',_binary '\0','admin@admin.com','Reeper B. Exotisches IPA','리퍼비 인디아 페일 에일',4.8125,2.5,9.5,'IPA','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_632627',5),(60,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.8,2.4722222222222223,3.5,'4891032840438','admin@admin.com',_binary '\0','admin@admin.com','San Miguel','산미구엘',3.6805555555555554,2.1180555555555554,7.222222222222222,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_59353',19),(61,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.9,2.632458233890215,4.0485282418456645,'4901880851446','admin@admin.com',_binary '\0','admin@admin.com','Sapporo Premium Beer / Draft Beer','삿포로',4.440731901352426,2.4757358790771677,8.758154335719968,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_729',2),(62,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,2.7964912280701753,4.628070175438596,'4901880879891','admin@admin.com',_binary '\0','admin@admin.com','Sapporo Yebisu','삿포로 에비스',4.947368421052632,2.6526315789473682,9.75438596491228,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_221',2),(63,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',2.5,2.9715447154471546,5.6361788617886175,'4053400277691','admin@admin.com',_binary '\0','admin@admin.com','Sch?fferhofer Grapefruit','쉐퍼호퍼 그레이프프루트',5.491869918699187,2.8434959349593494,10.808943089430894,'Radler / Shandy','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_71458',5),(64,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,2.8551042810098792,4.3979143798024145,'786150000236','admin@admin.com',_binary '\0','admin@admin.com','Stella Artois','스텔라 아르투아',4.855104281009879,2.678375411635565,9.736004390779364,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_1478',14),(65,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',0.5,3,5.125,'','admin@admin.com',_binary '\0','admin@admin.com','Stephans Bräu Hefe-Weizen Naturtrüb','스테판 브로이 헤페-바이젠 나투르트륍',5.1875,2.6125,10.1375,'Weissbier - Hefeweizen','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_441671',5),(66,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.9,2.6153846153846154,3.8461538461538463,'101940131611','admin@admin.com',_binary '\0','admin@admin.com','Stephans Bräu Premium Lager','스테판 브로이 프리미엄 라거',4.0256410256410255,2.1538461538461537,7.82051282051282,'Pale Lager - American','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_146725',5),(67,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.2,2.547169811320755,3.9056603773584904,'','admin@admin.com',_binary '\0','admin@admin.com','Stephans Bräu Premium Pilsener','스테판 브로이 프리미엄 필스너',4.113207547169812,2.2830188679245285,8,'Pilsener / Pils / Pilsner','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_48093',5),(68,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5.5,2.9452054794520546,4.965753424657534,'4901777153325','admin@admin.com',_binary '\0','admin@admin.com','Suntory The Premium Malt\'s','산토리 더 프리미엄 몰트',5.335616438356165,2.8013698630136985,10.472602739726028,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_15747',2),(69,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,2.5315243415802073,3.908220271348763,'8809311399818','admin@admin.com',_binary '\0','admin@admin.com','Tiger Beer','타이거 비어',4.181963288108539,2.3447725458898643,8.209896249002394,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_3126',20),(70,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',2,2.45,4.05,'8888017220046','admin@admin.com',_binary '\0','admin@admin.com','Tiger Radler Lemon','타이거 라들러 레몬',4.05,2.4,7.15,'Radler / Shandy','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_268685',20),(71,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,2.3346534653465345,3.7115511551155116,'6901035609036','admin@admin.com',_binary '\0','admin@admin.com','Tsingtao','칭따오',4.031023102310231,2.285808580858086,7.787458745874588,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_730',13),(72,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.7,3.16,5.84,'6901035617222','admin@admin.com',_binary '\0','admin@admin.com','Tsingtao Wheat Beer','칭따오 윗비어',5.52,2.56,11.16,'Weissbier - Hefeweizen','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_621308',13),(73,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.9,2.4766536964980546,3.614785992217899,'','admin@admin.com',_binary '\0','admin@admin.com','Victoria Bitter','빅토리아 비터',3.9007782101167314,2.219844357976654,7.552529182879377,'Pale Lager - International / Premium','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_7580',9),(74,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',5,3.1,6.4,'4770301231958','admin@admin.com',_binary '\0','admin@admin.com','Volfas Engelman Grünberger Hefeweizen','볼파스 엔젤맨 그룬베르거 헤페바이젠',6.2,2.9,12,'Weissbier - Hefeweizen','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_615885',21),(75,'2023-03-22 09:56:24.198515','2023-03-22 09:56:24.198515',4.8,2.9443742098609356,4.99936788874842,'4000856000588','admin@admin.com',_binary '\0','admin@admin.com','Warsteiner Premium Verum','바르슈타이너 프리미엄 베룸',5.350189633375474,2.852718078381795,10.714917825537295,'Pilsener / Pils / Pilsner','https://res.cloudinary.com/ratebeer/image/upload/d_beer_img_default.png,f_auto/beer_1417',5);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-05  9:19:03