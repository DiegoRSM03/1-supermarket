-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: supermarket
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `PRODUCTS`
--

DROP TABLE IF EXISTS `PRODUCTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCTS` (
  `id` decimal(3,1) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `provider` varchar(38) DEFAULT NULL,
  `category` varchar(15) DEFAULT NULL,
  `unit_quantity` varchar(20) DEFAULT NULL,
  `unit_price` decimal(5,2) DEFAULT NULL,
  `unit_exist` decimal(4,1) DEFAULT NULL,
  `unit_demand` decimal(4,1) DEFAULT NULL,
  `new_order_level` decimal(3,1) DEFAULT NULL,
  `discontinued` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCTS`
--

LOCK TABLES `PRODUCTS` WRITE;
/*!40000 ALTER TABLE `PRODUCTS` DISABLE KEYS */;
INSERT INTO `PRODUCTS` VALUES (1.0,'Té Dharamsala','Exotic Liquids','Bebidas','10 cajas x 20 bolsas',18.00,39.0,0.0,10.0,'FALSE'),(2.0,'Cerveza tibetana Barley','Exotic Liquids','Bebidas','24 - bot. 12 l',19.00,17.0,40.0,25.0,'FALSE'),(3.0,'Sirope de regaliz','Exotic Liquids','Condimentos','12 - bot. 550 ml',10.00,13.0,70.0,25.0,'FALSE'),(4.0,'Especias Cajun del chef Anton','New Orleans Cajun Delights','Condimentos','48 - frascos 6 l',22.00,53.0,0.0,0.0,'FALSE'),(5.0,'Mezcla Gumbo del chef Anton','New Orleans Cajun Delights','Condimentos','36 cajas',21.35,0.0,0.0,0.0,'TRUE'),(6.0,'Mermelada de grosellas de la abuela','Grandma Kelly\'s Homestead','Condimentos','12 - frascos 8 l',25.00,120.0,0.0,25.0,'FALSE'),(7.0,'Peras secas orgánicas del tío Bob','Grandma Kelly\'s Homestead','Frutas/Verduras','12 - paq. 1 kg',30.00,15.0,0.0,10.0,'FALSE'),(8.0,'Salsa de arándanos Northwoods','Grandma Kelly\'s Homestead','Condimentos','12 - frascos 12 l',40.00,6.0,0.0,0.0,'FALSE'),(9.0,'Buey Mishi Kobe','Tokyo Traders','Carnes','18 - paq. 500 g',97.00,29.0,0.0,0.0,'TRUE'),(10.0,'Pez espada','Tokyo Traders','Pescado/Marisco','12 - frascos 200 ml',31.00,31.0,0.0,0.0,'FALSE'),(11.0,'Queso Cabrales','Cooperativa de Quesos \'Las Cabras\'','Lácteos','paq. 1 kg',21.00,22.0,30.0,30.0,'FALSE'),(12.0,'Queso Manchego La Pastora','Cooperativa de Quesos \'Las Cabras\'','Lácteos','10 - paq. 500 g',38.00,86.0,0.0,0.0,'FALSE'),(13.0,'Algas Konbu','Mayumi\'s','Pescado/Marisco','caja 2 kg',6.00,24.0,0.0,5.0,'FALSE'),(14.0,'Cuajada de judías','Mayumi\'s','Frutas/Verduras','40 - paq. 100 g',23.25,35.0,0.0,0.0,'FALSE'),(15.0,'Salsa de soja baja en sodio','Mayumi\'s','Condimentos','24 - bot. 250 ml',15.50,39.0,0.0,5.0,'FALSE'),(16.0,'Postre de merengue Pavlova','Pavlova, Ltd.','Repostería','32 - cajas 500 g',17.45,29.0,0.0,10.0,'FALSE'),(17.0,'Cordero Alice Springs','Pavlova, Ltd.','Carnes','20 - latas 1 kg',39.00,0.0,0.0,0.0,'TRUE'),(18.0,'Langostinos tigre Carnarvon','Pavlova, Ltd.','Pescado/Marisco','paq. 16 kg',62.50,42.0,0.0,0.0,'FALSE'),(19.0,'Pastas de té de chocolate','Specialty Biscuits, Ltd.','Repostería','10 cajas x 12 piezas',9.20,25.0,0.0,5.0,'FALSE'),(20.0,'Mermelada de Sir Rodney\'s','Specialty Biscuits, Ltd.','Repostería','30 cajas regalo',81.00,40.0,0.0,0.0,'FALSE'),(21.0,'Bollos de Sir Rodney\'s','Specialty Biscuits, Ltd.','Repostería','24 paq. x 4 piezas',10.00,3.0,40.0,5.0,'FALSE'),(22.0,'Pan de centeno crujiente estilo Gustaf\'s','PB Knäckebröd AB','Granos/Cereales','24 - paq. 500 g',21.00,104.0,0.0,25.0,'FALSE'),(23.0,'Pan fino','PB Knäckebröd AB','Granos/Cereales','12 - paq. 250 g',9.00,61.0,0.0,25.0,'FALSE'),(24.0,'Refresco Guaraná Fantástica','Refrescos Americanas LTDA','Bebidas','12 - latas 355 ml',4.50,20.0,0.0,0.0,'TRUE'),(25.0,'Crema de chocolate y nueces NuNuCa','Heli Süßwaren GmbH & Co. KG','Repostería','20 - vasos  450 g',14.00,76.0,0.0,30.0,'FALSE'),(26.0,'Ositos de goma Gumbär','Heli Süßwaren GmbH & Co. KG','Repostería','100 - bolsas 250 g',31.23,15.0,0.0,0.0,'FALSE'),(27.0,'Chocolate Schoggi','Heli Süßwaren GmbH & Co. KG','Repostería','100 - piezas 100 g',43.90,49.0,0.0,30.0,'FALSE'),(28.0,'Col fermentada Rössle','Plutzer Lebensmittelgroßmärkte AG','Frutas/Verduras','25 - latas 825 g',45.60,26.0,0.0,0.0,'TRUE'),(29.0,'Salchicha Thüringer','Plutzer Lebensmittelgroßmärkte AG','Carnes','50 bolsas x 30 salch',123.79,0.0,0.0,0.0,'TRUE'),(30.0,'Arenque blanco del noroeste','Nord-Ost-Fisch Handelsgesellschaft mbH','Pescado/Marisco','10 - vasos 200 g',25.89,10.0,0.0,15.0,'FALSE'),(31.0,'Queso gorgonzola Telino','Formaggi Fortini s.r.l.','Lácteos','12 - paq. 100 g',12.50,0.0,70.0,20.0,'FALSE'),(32.0,'Queso Mascarpone Fabioli','Formaggi Fortini s.r.l.','Lácteos','24 - paq. 200 g',32.00,9.0,40.0,25.0,'FALSE'),(33.0,'Queso de cabra','Norske Meierier','Lácteos','500 g',2.50,112.0,0.0,20.0,'FALSE'),(34.0,'Cerveza Sasquatch','Bigfoot Breweries','Bebidas','24 - bot. 12 l',14.00,111.0,0.0,15.0,'FALSE'),(35.0,'Cerveza negra Steeleye','Bigfoot Breweries','Bebidas','24 - bot. 12 l',18.00,20.0,0.0,15.0,'FALSE'),(36.0,'Escabeche de arenque','Svensk Sjöföda AB','Pescado/Marisco','24 - frascos 250 g',19.00,112.0,0.0,20.0,'FALSE'),(37.0,'Salmón ahumado Gravad','Svensk Sjöföda AB','Pescado/Marisco','12 - paq. 500 g',26.00,11.0,50.0,25.0,'FALSE'),(38.0,'Vino Côte de Blaye','Aux joyeux ecclésiastiques','Bebidas','12 - bot. 75 cl',263.50,17.0,0.0,15.0,'FALSE'),(39.0,'Licor verde Chartreuse','Aux joyeux ecclésiastiques','Bebidas','750 cc por bot.',18.00,69.0,0.0,5.0,'FALSE'),(40.0,'Carne de cangrejo de Boston','New England Seafood Cannery','Pescado/Marisco','24 - latas 4 l',18.40,123.0,0.0,30.0,'FALSE'),(41.0,'Crema de almejas estilo Nueva Inglaterra','New England Seafood Cannery','Pescado/Marisco','12 - latas 12 l',9.65,85.0,0.0,10.0,'FALSE'),(42.0,'Tallarines de Singapur','Leka Trading','Granos/Cereales','32 - 1 kg paq.',14.00,26.0,0.0,0.0,'TRUE'),(43.0,'Café de Malasia','Leka Trading','Bebidas','16 - latas 500 g',46.00,17.0,10.0,25.0,'FALSE'),(44.0,'Azúcar negra Malacca','Leka Trading','Condimentos','20 - bolsas 2 kg',19.45,27.0,0.0,15.0,'FALSE'),(45.0,'Arenque ahumado','Lyngbysild','Pescado/Marisco','paq. 1k',9.50,5.0,70.0,15.0,'FALSE'),(46.0,'Arenque salado','Lyngbysild','Pescado/Marisco','4 - vasos 450 g',12.00,95.0,0.0,0.0,'FALSE'),(47.0,'Galletas Zaanse','Zaanse Snoepfabriek','Repostería','10 - cajas 4 l',9.50,36.0,0.0,0.0,'FALSE'),(48.0,'Chocolate holandés','Zaanse Snoepfabriek','Repostería','10 paq.',12.75,15.0,70.0,25.0,'FALSE'),(49.0,'Regaliz','Karkki Oy','Repostería','24 - paq. 50 g',20.00,10.0,60.0,15.0,'FALSE'),(50.0,'Chocolate blanco','Karkki Oy','Repostería','12 - barras 100 g',16.25,65.0,0.0,30.0,'FALSE'),(51.0,'Manzanas secas Manjimup','G\'day, Mate','Frutas/Verduras','50 - paq. 300 g',53.00,20.0,0.0,10.0,'FALSE'),(52.0,'Cereales para Filo','G\'day, Mate','Granos/Cereales','16 - cajas 2 kg',7.00,38.0,0.0,25.0,'FALSE'),(53.0,'Empanada de carne','G\'day, Mate','Carnes','48 porc.',32.80,0.0,0.0,0.0,'TRUE'),(54.0,'Empanada de cerdo','Ma Maison','Carnes','16 tartas',7.45,21.0,0.0,10.0,'FALSE'),(55.0,'Paté chino','Ma Maison','Carnes','24 cajas x 2 tartas',24.00,115.0,0.0,20.0,'FALSE'),(56.0,'Gnocchi de la abuela Alicia','Pasta Buttini s.r.l.','Granos/Cereales','24 - paq. 250 g',38.00,21.0,10.0,30.0,'FALSE'),(57.0,'Raviolis Angelo','Pasta Buttini s.r.l.','Granos/Cereales','24 - paq. 250 g',19.50,36.0,0.0,20.0,'FALSE'),(58.0,'Caracoles de Borgoña','Escargots Nouveaux','Pescado/Marisco','24 porc.',13.25,62.0,0.0,20.0,'FALSE'),(59.0,'Raclet de queso Courdavault','Gai pâturage','Lácteos','paq. 5 kg',55.00,79.0,0.0,0.0,'FALSE'),(60.0,'Camembert Pierrot','Gai pâturage','Lácteos','15 - paq. 300 g',34.00,19.0,0.0,0.0,'FALSE'),(61.0,'Sirope de arce','Forêts d\'érables','Condimentos','24 - bot. 500 ml',28.50,113.0,0.0,25.0,'FALSE'),(62.0,'Tarta de azúcar','Forêts d\'érables','Repostería','48 tartas',49.30,17.0,0.0,0.0,'FALSE'),(63.0,'Sandwich de vegetales','Pavlova, Ltd.','Condimentos','15 - frascos 625 g',43.90,24.0,0.0,5.0,'FALSE'),(64.0,'Bollos de pan de Wimmer','Plutzer Lebensmittelgroßmärkte AG','Granos/Cereales','20 bolsas x 4 porc.',33.25,22.0,80.0,30.0,'FALSE'),(65.0,'Salsa de pimiento picante de Luisiana','New Orleans Cajun Delights','Condimentos','32 - bot. 8 l',21.05,76.0,0.0,0.0,'FALSE'),(66.0,'Especias picantes de Luisiana','New Orleans Cajun Delights','Condimentos','24 - frascos 8 l',17.00,4.0,100.0,20.0,'FALSE'),(67.0,'Cerveza Laughing Lumberjack','Bigfoot Breweries','Bebidas','24 - bot. 12 l',14.00,52.0,0.0,10.0,'FALSE'),(68.0,'Barras de pan de Escocia','Specialty Biscuits, Ltd.','Repostería','10 cajas x 8 porc.',12.50,6.0,10.0,15.0,'FALSE'),(69.0,'Queso Gudbrandsdals','Norske Meierier','Lácteos','paq. 10 kg',36.00,26.0,0.0,15.0,'FALSE'),(70.0,'Cerveza Outback','Pavlova, Ltd.','Bebidas','24 - bot. 355 ml',15.00,15.0,10.0,30.0,'FALSE'),(71.0,'Crema de queso Fløtemys','Norske Meierier','Lácteos','10 - paq. 500 g',21.50,26.0,0.0,0.0,'FALSE'),(72.0,'Queso Mozzarella Giovanni','Formaggi Fortini s.r.l.','Lácteos','24 - paq. 200 g',34.80,14.0,0.0,0.0,'FALSE'),(73.0,'Caviar rojo','Svensk Sjöföda AB','Pescado/Marisco','24 - frascos150 g',15.00,101.0,0.0,5.0,'FALSE'),(74.0,'Queso de soja Longlife','Tokyo Traders','Frutas/Verduras','paq. 5 kg',10.00,4.0,20.0,5.0,'FALSE'),(75.0,'Cerveza Klosterbier Rhönbräu','Plutzer Lebensmittelgroßmärkte AG','Bebidas','24 - bot. 0,5 l',7.75,125.0,0.0,25.0,'FALSE');
/*!40000 ALTER TABLE `PRODUCTS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-11 17:33:54
