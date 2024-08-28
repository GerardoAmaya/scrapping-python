-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: pk_data
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pk_card_type`
--

DROP TABLE IF EXISTS `pk_card_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pk_card_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ct_name1` varchar(200) DEFAULT NULL,
  `ct_name2` varchar(200) DEFAULT NULL,
  `ct_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pk_card_type_FK` (`ct_type`),
  CONSTRAINT `pk_card_type_FK` FOREIGN KEY (`ct_type`) REFERENCES `pk_card_type_main` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pk_card_type`
--

LOCK TABLES `pk_card_type` WRITE;
/*!40000 ALTER TABLE `pk_card_type` DISABLE KEYS */;
INSERT INTO `pk_card_type` VALUES (1,'Basic','Basico',1),(2,'Stage 1','Fase 1',1),(3,'Stage 2','Fase 2',1),(4,'Level up','Subir de nivel',1),(5,'EX','EX',1),(6,'ex','ex',1),(7,'Tetracrystal','Pokemon Teracristal',1),(8,'Mega','MEGA',1),(9,'SP','SP',1),(10,'Legend','LEYENDA',1),(11,'Recreate','Recreado',1),(12,'Turbo','TURBO',1),(13,'GX','GX',1),(14,'Releve','RELEVOS',1),(15,'V','V',1),(16,'VMAX','VMAX',1),(17,'V-UNION','V-UNION',1),(18,'V-ASTRO','V-ASTRO',1),(19,'Trainer - Item','Entrenador - Objeto',2),(20,'Pokemon Tool','Herramienta Pokemon',2),(21,'Trainer - Stadium','Entrenador - Estadio',2),(22,'Trainer - Supporter','Entrenador - Partidario',2),(23,'Tech Machine','Maquina Tecnica',2),(24,'Rocket secret Machine','Maquina Secreta de Rocket',2),(25,'Basic Energy','Energia Basica',3),(26,'Special Energy','Energia Especial',3);
/*!40000 ALTER TABLE `pk_card_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pk_card_type_main`
--

DROP TABLE IF EXISTS `pk_card_type_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pk_card_type_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ctm_name1` varchar(200) DEFAULT NULL,
  `ctm__name2` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pk_card_type_main`
--

LOCK TABLES `pk_card_type_main` WRITE;
/*!40000 ALTER TABLE `pk_card_type_main` DISABLE KEYS */;
INSERT INTO `pk_card_type_main` VALUES (1,'Pokemon','Pokemon'),(2,'Trainer','Entrenador'),(3,'Energy','Energia');
/*!40000 ALTER TABLE `pk_card_type_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pk_energy`
--

DROP TABLE IF EXISTS `pk_energy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pk_energy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name1` varchar(200) DEFAULT NULL,
  `type_name2` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pk_energy`
--

LOCK TABLES `pk_energy` WRITE;
/*!40000 ALTER TABLE `pk_energy` DISABLE KEYS */;
INSERT INTO `pk_energy` VALUES (0,'None','Ninguno'),(1,'Grass ','Planta'),(2,'Fire','Fuego'),(3,'Water','Agua'),(4,'Lightning','Rayo'),(5,'Psychic','Psiquico'),(6,'Fighting','Lucha'),(7,'Darkness','Oscura'),(8,'Metal','Metalica'),(9,'Colorless','Incolora'),(10,'Fairy','Hada'),(11,'Dragon','Dragon');
/*!40000 ALTER TABLE `pk_energy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pk_expansion`
--

DROP TABLE IF EXISTS `pk_expansion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pk_expansion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `e_code` varchar(200) DEFAULT NULL,
  `e_name1` varchar(200) DEFAULT NULL,
  `e_name2` varchar(200) DEFAULT NULL,
  `e_col_end` int(11) DEFAULT NULL,
  `e_main_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pk_expansion_FK` (`e_main_id`),
  CONSTRAINT `pk_expansion_FK` FOREIGN KEY (`e_main_id`) REFERENCES `pk_expansion_main` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pk_expansion`
--

LOCK TABLES `pk_expansion` WRITE;
/*!40000 ALTER TABLE `pk_expansion` DISABLE KEYS */;
INSERT INTO `pk_expansion` VALUES (0,'bc00','Energy Basic Cards','Cartas Basicas de Energia',0,0),(1,'sv02','Paldea Evolved','Evoluciones en Paldea',193,1),(2,'sv01','Scarlet & Violet','Escarlata y Purpura',198,1),(3,'swsh12pt5gg','Crown Zenith Galarian Gallery','Cenit Supremo Galeria de Galar',70,2),(4,'swsh12pt5','Crown Zenith','Cenit Supremo',159,2),(5,'swsh12tg','Silver Tempest: Trainer Gallery','Tempestad Plateada: Gal. de Entrenadores',30,2),(6,'swsh12','Silver Tempest','Tempestad Plateada',195,2),(7,'swsh11tg','Lost Origin Trainer Gallery','Origen Perdido: Galeria de Entrenadores',30,2),(8,'swsh11','Lost Origin','Origen Perdido',196,2),(9,'pgo','Pokemon GO','Pokemon GO de JCC Pokemon',78,2),(10,'swsh10tg','Astral Radiance Trainer Gallery','Resplandor Astral: Gal. de Entrenadores',30,2),(11,'swsh10','Astral Radiance','Resplandor Astral',189,2),(12,'swsh9tg','Brilliant Stars Trainer Gallery','Astros Brillantes Galeria de Entrenadores',30,2),(13,'swsh9','Brilliant Stars','Astros Brillantes',172,2),(14,'swsh8','Fusion Strike','Golpe Fusion',264,2),(15,'cel25c','Celebrations: Classic Collection','Celebraciones: Coleccion Clásica',25,2),(16,'cel25','Celebrations','Celebraciones',25,2),(17,'swsh7','Evolving Skies','Cielos Evolutivos',203,2),(18,'swsh6','Chilling Reign','Reinado Escalofriante',198,2),(19,'swsh5','Battle Styles','Estilos de Combate',163,2),(20,'swsh45sv','Shining Fates: Shiny Vault','Destinos Brillantes: Tesoro Variocolor',122,2),(21,'swsh45','Shining Fates','Destinos Brillantes',72,2),(22,'swsh4','Vivid Voltage','Voltaje Vivido',185,2),(23,'swsh35','Champion’s Path','Camino de Campeones',73,2),(24,'swsh3','Darkness Ablaze','Oscuridad Incandescente',189,2),(25,'swsh2','Rebel Clash','Choque Rebelde',192,2),(26,'swsh1','Sword & Shield','Espada y Escudo',202,2),(27,'swshp','Sword & Shield Promo','Cartas de promocion',250,2),(28,'sm12','Cosmic Eclipse','Eclipse Cosmico',236,3),(29,'sm115','Hidden Fates','Destinos Ocultos',68,3),(30,'sm11','Unified Minds','Mentes Unidas',236,3),(31,'sm10','Unbroken Bonds','Vinculos Indestructibles',234,3),(32,'det','Detective Pikachu','Detective Pikachu',18,3),(33,'sm9','Team Up','Union de Aliados',181,3),(34,'sm8','Lost Thunder','Truenos Perdidos',214,3),(35,'sm75','Dragon Majesty','Majestad De Dragones',70,3),(36,'sm7','Celestial Storm','Tormenta Celestial',168,3),(37,'sm6','Forbidden Light','Luz Prohibida',131,3),(38,'sm5','Ultra Prism','Ultraprisma',138,3),(39,'sm4','Crimson Invasion','Invasion Carmesi',111,3),(40,'sm35','Shining Legends','Leyendas Luminosas',73,3),(41,'sm3','Burning Shadows','Sombras Ardientes',147,3),(42,'sm2','Guardians Rising','Albor de Guardianes',145,3),(43,'sm1','Sun & Moon','Sol y Luna',149,3),(44,'sma','Yellow A Alternate','Cartas alternativas',94,3),(45,'smp','Sun & Moon Promo','Cartas de promocion',244,3),(46,'xy12','XY—Evolutions','Evoluciones',108,4),(47,'xy11','XY—Steam Siege','Asedio de Vapor',114,4),(48,'xy10','XY—Fates Collide','Destinos Enfrentados',124,4),(49,'g1','Generations','Generaciones',83,4),(50,'xy9','XY—BREAKpoint','TURBOlimite',122,4),(51,'xy8','XY–BREAKthrough','Turbo Impulso',162,4),(52,'xy7','XY—Ancient Origins','Antiguos Origenes',98,4),(53,'xy6','XY—Roaring Skies','Cielos Rugientes',108,4),(54,'dc1','Double Crisis','',34,4),(55,'xy5','XY—Primal Clash','Duelos Primigenios',160,4),(56,'xy4','XY—Phantom Forces','Fuerzas Fantasmales',119,4),(57,'xy3','XY—Furious Fists','Puños Furiosos',111,4),(58,'xy2','XY—Flashfire','Destellos de Fuego',106,4),(59,'xy1','XY','XY',146,4),(60,'xy0','XY—Kalos Starter Set','Bienvenidos a Kalos',39,4),(61,'xya','Yellow A Alternate','Cartas alternativas',94,4),(62,'xyp','XY—Promo','Cartas de promocion',178,4),(63,'bw11','BW—Legendary Treasures','none',113,5),(64,'bw10','BW—Plasma Blast','none',101,5),(65,'bw9','BW—Plasma Freeze','Glaciacion Plasma',116,5),(66,'bw8','BW—Plasma Storm','Tormenta Plasma',135,5),(67,'bw7','BW—Boundaries Crossed','Fronteras Cruzadas',149,5),(68,'dv1','Dragon Vault','none',20,5),(69,'bw6','BW—Dragons Exalted','Dragones Majestuosos',124,5),(70,'bw5','BW—Dark Explorers','none',108,5),(71,'bw4','BW—Next Destinies','Proximos Destinos',99,5),(72,'bw3','BW—Noble Victories','Nobles Victorias',101,5),(73,'bw2','BW—Emerging Powers','Fuerzas Emergentes',98,5),(74,'bw1','Black & White','Negro y Blanco',114,5),(75,'bwp','BW—Promo','Cartas de promocion',101,5),(76,'col1','Call of Legends','none',95,6),(77,'hgss4','Triumphant','Triumphant',103,6),(78,'hgss3','Undaunted','none',91,6),(79,'hgss2','Unleashed','Liberados',96,6),(80,'hgss1','HeartGold SoulSilver','HeartGold SoulSilver',123,6),(81,'hsp','HS—Promo','Cartas de promocion',25,6),(82,'pl4','Arceus','Arceus',111,7),(83,'pl3','Supreme Victors','none',153,7),(84,'pl2','Rising Rivals','none',120,7),(85,'pl1','Platinum','Platino',133,7),(86,'dp7','Stormfront','Frente Tormentoso',106,8),(87,'dp6','Legends Awakened','Despertar de las Leyendas',146,8),(88,'dp5','Majestic Dawn','none',100,8),(89,'dp4','Great Encounters','Grandes Encuentros',106,8),(90,'dp3','Secret Wonders','Maravillas Secretas',132,8),(91,'dp2','Mysterious Treasures','Tesoros Misteriosos',124,8),(92,'dp1','Diamond & Pearl','Diamante & Perla',130,8),(93,'ex16','Power Keepers','Power Keepers',108,9),(94,'ex15','Dragon Frontiers','Dragon Frontiers',101,9),(95,'ex14','Crystal Guardians','Crystal Guardians',100,9),(96,'ex13','Holon Phantoms','Holon Phantoms',111,9),(97,'ex12','Legend maker','Legend maker',93,9),(98,'ex11','Delta Species','Species Delta',114,9),(99,'ex10','Unseen Forces','Fuerzas Ocultas',144,9),(100,'ex9','Emerald','Esmeralda',106,9),(101,'ex8','Deoxys','Deoxys',106,9),(102,'ex7','Team Rocket Returns','Team Rocket Returns',109,9),(103,'ex6','Fire Red & Leaf Green','Firered/Leafgreen',112,9),(104,'ex5','Hidden Legends','Hidden Legends',101,9),(105,'ex4','Team Magma vs. Team Aqua','Magma vs Aqua',95,9),(106,'ex3','Dragon','Dragon',97,9),(107,'ex2','SandStorm','SandStorm',100,9),(108,'ex1','Ruby & Sapphire','Rubi & Zafiro',109,9);
/*!40000 ALTER TABLE `pk_expansion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pk_expansion_main`
--

DROP TABLE IF EXISTS `pk_expansion_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pk_expansion_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `em_name1` varchar(200) DEFAULT NULL,
  `em_name2` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pk_expansion_main`
--

LOCK TABLES `pk_expansion_main` WRITE;
/*!40000 ALTER TABLE `pk_expansion_main` DISABLE KEYS */;
INSERT INTO `pk_expansion_main` VALUES (0,'Energy Cards','Cartas de Energia'),(1,'Scarlet & Violet','Escarlata y Purpura'),(2,'Sword & Shield','Espada y Escudo'),(3,'Sun & Moon','Sol y Luna'),(4,'XY','Serie XY'),(5,'Black & White','Serie Negro y Blanco'),(6,'Call of Legends & HGSS Series','Serie HeartGold & SoulSilver'),(7,'Platinum','Serie Platino'),(8,'Diamond & Pearl','Serie Diamante & Perla'),(9,'EX','EX');
/*!40000 ALTER TABLE `pk_expansion_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pk_name`
--

DROP TABLE IF EXISTS `pk_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pk_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dex_num` int(11) DEFAULT NULL,
  `pk_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=734 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pk_name`
--

LOCK TABLES `pk_name` WRITE;
/*!40000 ALTER TABLE `pk_name` DISABLE KEYS */;
INSERT INTO `pk_name` VALUES (1,1,'Bulbasaur'),(2,2,'Ivysaur'),(3,3,'Venusaur'),(4,4,'Charmander'),(5,5,'Charmeleon'),(6,6,'Charizard'),(7,7,'Squirtle'),(8,8,'Wartortle'),(9,9,'Blastoise'),(10,10,'Caterpie'),(11,11,'Metapod'),(12,12,'Butterfree'),(13,13,'Weedle'),(14,14,'Kakuna'),(15,15,'Beedrill'),(16,16,'Pidgey'),(17,17,'Pidgeotto'),(18,18,'Pidgeot'),(19,19,'Rattata'),(20,20,'Raticate'),(21,21,'Spearow'),(22,22,'Fearow'),(23,23,'Ekans'),(24,24,'Arbok'),(25,25,'Pikachu'),(26,26,'Raichu'),(27,27,'Sandshrew'),(28,28,'Sandslash'),(29,29,'Nidoran♀'),(30,30,'Nidorina'),(31,31,'Nidoqueen'),(32,32,'Nidoran♂'),(33,33,'Nidorino'),(34,34,'Nidoking'),(35,35,'Clefairy'),(36,36,'Clefable'),(37,37,'Vulpix'),(38,38,'Ninetales'),(39,39,'Jigglypuff'),(40,40,'Wigglytuff'),(41,41,'Zubat'),(42,42,'Golbat'),(43,43,'Oddish'),(44,44,'Gloom'),(45,45,'Vileplume'),(46,46,'Paras'),(47,47,'Parasect'),(48,48,'Venonat'),(49,49,'Venomoth'),(50,50,'Diglett'),(51,51,'Dugtrio'),(52,52,'Meowth'),(53,53,'Persian'),(54,54,'Psyduck'),(55,55,'Golduck'),(56,56,'Mankey'),(57,57,'Primeape'),(58,58,'Growlithe'),(59,59,'Arcanine'),(60,60,'Poliwag'),(61,61,'Poliwhirl'),(62,62,'Poliwrath'),(63,63,'Abra'),(64,64,'Kadabra'),(65,65,'Alakazam'),(66,66,'Machop'),(67,67,'Machoke'),(68,68,'Machamp'),(69,69,'Bellsprout'),(70,70,'Weepinbell'),(71,71,'Victreebel'),(72,72,'Tentacool'),(73,73,'Tentacruel'),(74,74,'Geodude'),(75,75,'Graveler'),(76,76,'Golem'),(77,77,'Ponyta'),(78,78,'Rapidash'),(79,79,'Slowpoke'),(80,80,'Slowbro'),(81,81,'Magnemite'),(82,82,'Magneton'),(83,83,'Farfetch'),(84,84,'Doduo'),(85,85,'Dodrio'),(86,86,'Seel'),(87,87,'Dewgong'),(88,88,'Grimer'),(89,89,'Muk'),(90,90,'Shellder'),(91,91,'Cloyster'),(92,92,'Gastly'),(93,93,'Haunter'),(94,94,'Gengar'),(95,95,'Onix'),(96,96,'Drowzee'),(97,97,'Hypno'),(98,98,'Krabby'),(99,99,'Kingler'),(100,100,'Voltorb'),(101,101,'Electrode'),(102,102,'Exeggcute'),(103,103,'Exeggutor'),(104,104,'Cubone'),(105,105,'Marowak'),(106,106,'Hitmonlee'),(107,107,'Hitmonchan'),(108,108,'Lickitung'),(109,109,'Koffing'),(110,110,'Weezing'),(111,111,'Rhyhorn'),(112,112,'Rhydon'),(113,113,'Chansey'),(114,114,'Tangela'),(115,115,'Kangaskhan'),(116,116,'Horsea'),(117,117,'Seadra'),(118,118,'Goldeen'),(119,119,'Seaking'),(120,120,'Staryu'),(121,121,'Starmie'),(122,122,'Mr. Mime'),(123,123,'Scyther'),(124,124,'Jynx'),(125,125,'Electabuzz'),(126,126,'Magmar'),(127,127,'Pinsir'),(128,128,'Tauros'),(129,129,'Magikarp'),(130,130,'Gyarados'),(131,131,'Lapras'),(132,132,'Ditto'),(133,133,'Eevee'),(134,134,'Vaporeon'),(135,135,'Jolteon'),(136,136,'Flareon'),(137,137,'Porygon'),(138,138,'Omanyte'),(139,139,'Omastar'),(140,140,'Kabuto'),(141,141,'Kabutops'),(142,142,'Aerodactyl'),(143,143,'Snorlax'),(144,144,'Articuno'),(145,145,'Zapdos'),(146,146,'Moltres'),(147,147,'Dratini'),(148,148,'Dragonair'),(149,149,'Dragonite'),(150,150,'Mewtwo'),(151,151,'Mew'),(152,152,'Chikorita'),(153,153,'Bayleef'),(154,154,'Meganium'),(155,155,'Cyndaquil'),(156,156,'Quilava'),(157,157,'Typhlosion'),(158,158,'Totodile'),(159,159,'Croconaw'),(160,160,'Feraligatr'),(161,161,'Sentret'),(162,162,'Furret'),(163,163,'Hoothoot'),(164,164,'Noctowl'),(165,165,'Ledyba'),(166,166,'Ledian'),(167,167,'Spinarak'),(168,168,'Ariados'),(169,169,'Crobat'),(170,170,'Chinchou'),(171,171,'Lanturn'),(172,172,'Pichu'),(173,173,'Cleffa'),(174,174,'Igglybuff'),(175,175,'Togepi'),(176,176,'Togetic'),(177,177,'Natu'),(178,178,'Xatu'),(179,179,'Mareep'),(180,180,'Flaaffy'),(181,181,'Ampharos'),(182,182,'Bellossom'),(183,183,'Marill'),(184,184,'Azumarill'),(185,185,'Sudowoodo'),(186,186,'Politoed'),(187,187,'Hoppip'),(188,188,'Skiploom'),(189,189,'Jumpluff'),(190,190,'Aipom'),(191,191,'Sunkern'),(192,192,'Sunflora'),(193,193,'Yanma'),(194,194,'Wooper'),(195,195,'Quagsire'),(196,196,'Espeon'),(197,197,'Umbreon'),(198,198,'Murkrow'),(199,199,'Slowking'),(200,200,'Misdreavus'),(201,201,'Unown'),(202,202,'Wobbuffet'),(203,203,'Girafarig'),(204,204,'Pineco'),(205,205,'Forretress'),(206,206,'Dunsparce'),(207,207,'Gligar'),(208,208,'Steelix'),(209,209,'Snubbull'),(210,210,'Granbull'),(211,211,'Qwilfish'),(212,212,'Scizor'),(213,213,'Shuckle'),(214,214,'Heracross'),(215,215,'Sneasel'),(216,216,'Teddiursa'),(217,217,'Ursaring'),(218,218,'Slugma'),(219,219,'Magcargo'),(220,220,'Swinub'),(221,221,'Piloswine'),(222,222,'Corsola'),(223,223,'Remoraid'),(224,224,'Octillery'),(225,225,'Delibird'),(226,226,'Mantine'),(227,227,'Skarmory'),(228,228,'Houndour'),(229,229,'Houndoom'),(230,230,'Kingdra'),(231,231,'Phanpy'),(232,232,'Donphan'),(233,233,'Porygon2'),(234,234,'Stantler'),(235,235,'Smeargle'),(236,236,'Tyrogue'),(237,237,'Hitmontop'),(238,238,'Smoochum'),(239,239,'Elekid'),(240,240,'Magby'),(241,241,'Miltank'),(242,242,'Blissey'),(243,243,'Raikou'),(244,244,'Entei'),(245,245,'Suicune'),(246,246,'Larvitar'),(247,247,'Pupitar'),(248,248,'Tyranitar'),(249,249,'Lugia'),(250,250,'Ho-Oh'),(251,251,'Celebi'),(252,252,'Treecko'),(253,253,'Grovyle'),(254,254,'Sceptile'),(255,255,'Torchic'),(256,256,'Combusken'),(257,257,'Blaziken'),(258,258,'Mudkip'),(259,259,'Marshtomp'),(260,260,'Swampert'),(261,261,'Poochyena'),(262,262,'Mightyena'),(263,263,'Zigzagoon'),(264,264,'Linoone'),(265,265,'Wurmple'),(266,266,'Silcoon'),(267,267,'Beautifly'),(268,268,'Cascoon'),(269,269,'Dustox'),(270,270,'Lotad'),(271,271,'Lombre'),(272,272,'Ludicolo'),(273,273,'Seedot'),(274,274,'Nuzleaf'),(275,275,'Shiftry'),(276,276,'Taillow'),(277,277,'Swellow'),(278,278,'Wingull'),(279,279,'Pelipper'),(280,280,'Ralts'),(281,281,'Kirlia'),(282,282,'Gardevoir'),(283,283,'Surskit'),(284,284,'Masquerain'),(285,285,'Shroomish'),(286,286,'Breloom'),(287,287,'Slakoth'),(288,288,'Vigoroth'),(289,289,'Slaking'),(290,290,'Nincada'),(291,291,'Ninjask'),(292,292,'Shedinja'),(293,293,'Whismur'),(294,294,'Loudred'),(295,295,'Exploud'),(296,296,'Makuhita'),(297,297,'Hariyama'),(298,298,'Azurill'),(299,299,'Nosepass'),(300,300,'Skitty'),(301,301,'Delcatty'),(302,302,'Sableye'),(303,303,'Mawile'),(304,304,'Aron'),(305,305,'Lairon'),(306,306,'Aggron'),(307,307,'Meditite'),(308,308,'Medicham'),(309,309,'Electrike'),(310,310,'Manectric'),(311,311,'Plusle'),(312,312,'Minun'),(313,313,'Volbeat'),(314,314,'Illumise'),(315,315,'Roselia'),(316,316,'Gulpin'),(317,317,'Swalot'),(318,318,'Carvanha'),(319,319,'Sharpedo'),(320,320,'Wailmer'),(321,321,'Wailord'),(322,322,'Numel'),(323,323,'Camerupt'),(324,324,'Torkoal'),(325,325,'Spoink'),(326,326,'Grumpig'),(327,327,'Spinda'),(328,328,'Trapinch'),(329,329,'Vibrava'),(330,330,'Flygon'),(331,331,'Cacnea'),(332,332,'Cacturne'),(333,333,'Swablu'),(334,334,'Altaria'),(335,335,'Zangoose'),(336,336,'Seviper'),(337,337,'Lunatone'),(338,338,'Solrock'),(339,339,'Barboach'),(340,340,'Whiscash'),(341,341,'Corphish'),(342,342,'Crawdaunt'),(343,343,'Baltoy'),(344,344,'Claydol'),(345,345,'Lileep'),(346,346,'Cradily'),(347,347,'Anorith'),(348,348,'Armaldo'),(349,349,'Feebas'),(350,350,'Milotic'),(351,351,'Castform'),(352,352,'Kecleon'),(353,353,'Shuppet'),(354,354,'Banette'),(355,355,'Duskull'),(356,356,'Dusclops'),(357,357,'Tropius'),(358,358,'Chimecho'),(359,359,'Absol'),(360,360,'Wynaut'),(361,361,'Snorunt'),(362,362,'Glalie'),(363,363,'Spheal'),(364,364,'Sealeo'),(365,365,'Walrein'),(366,366,'Clamperl'),(367,367,'Huntail'),(368,368,'Gorebyss'),(369,369,'Relicanth'),(370,370,'Luvdisc'),(371,371,'Bagon'),(372,372,'Shelgon'),(373,373,'Salamence'),(374,374,'Beldum'),(375,375,'Metang'),(376,376,'Metagross'),(377,377,'Regirock'),(378,378,'Regice'),(379,379,'Registeel'),(380,380,'Latias'),(381,381,'Latios'),(382,382,'Kyogre'),(383,383,'Groudon'),(384,384,'Rayquaza'),(385,385,'Jirachi'),(386,386,'Deoxys'),(387,387,'Turtwig'),(388,388,'Grotle'),(389,389,'Torterra'),(390,390,'Chimchar'),(391,391,'Monferno'),(392,392,'Infernape'),(393,393,'Piplup'),(394,394,'Prinplup'),(395,395,'Empoleon'),(396,396,'Starly'),(397,397,'Staravia'),(398,398,'Staraptor'),(399,399,'Bidoof'),(400,400,'Bibarel'),(401,401,'Kricketot'),(402,402,'Kricketune'),(403,403,'Shinx'),(404,404,'Luxio'),(405,405,'Luxray'),(406,406,'Budew'),(407,407,'Roserade'),(408,408,'Cranidos'),(409,409,'Rampardos'),(410,410,'Shieldon'),(411,411,'Bastiodon'),(412,412,'Burmy'),(413,413,'Wormadam'),(414,414,'Mothim'),(415,415,'Combee'),(416,416,'Vespiquen'),(417,417,'Pachirisu'),(418,418,'Buizel'),(419,419,'Floatzel'),(420,420,'Cherubi'),(421,421,'Cherrim'),(422,422,'Shellos'),(423,423,'Gastrodon'),(424,424,'Ambipom'),(425,425,'Drifloon'),(426,426,'Drifblim'),(427,427,'Buneary'),(428,428,'Lopunny'),(429,429,'Mismagius'),(430,430,'Honchkrow'),(431,431,'Glameow'),(432,432,'Purugly'),(433,433,'Chingling'),(434,434,'Stunky'),(435,435,'Skuntank'),(436,436,'Bronzor'),(437,437,'Bronzong'),(438,438,'Bonsly'),(439,439,'Mime Jr.'),(440,440,'Happiny'),(441,441,'Chatot'),(442,442,'Spiritomb'),(443,443,'Gible'),(444,444,'Gabite'),(445,445,'Garchomp'),(446,446,'Munchlax'),(447,447,'Riolu'),(448,448,'Lucario'),(449,449,'Hippopotas'),(450,450,'Hippowdon'),(451,451,'Skorupi'),(452,452,'Drapion'),(453,453,'Croagunk'),(454,454,'Toxicroak'),(455,455,'Carnivine'),(456,456,'Finneon'),(457,457,'Lumineon'),(458,458,'Mantyke'),(459,459,'Snover'),(460,460,'Abomasnow'),(461,461,'Weavile'),(462,462,'Magnezone'),(463,463,'Lickilicky'),(464,464,'Rhyperior'),(465,465,'Tangrowth'),(466,466,'Electivire'),(467,467,'Magmortar'),(468,468,'Togekiss'),(469,469,'Yanmega'),(470,470,'Leafeon'),(471,471,'Glaceon'),(472,472,'Gliscor'),(473,473,'Mamoswine'),(474,474,'Porygon-Z'),(475,475,'Gallade'),(476,476,'Probopass'),(477,477,'Dusknoir'),(478,478,'Froslass'),(479,479,'Rotom'),(480,480,'Uxie'),(481,481,'Mesprit'),(482,482,'Azelf'),(483,483,'Dialga'),(484,484,'Palkia'),(485,485,'Heatran'),(486,486,'Regigigas'),(487,487,'Giratina'),(488,488,'Cresselia'),(489,489,'Phione'),(490,490,'Manaphy'),(491,491,'Darkrai'),(492,492,'Shaymin'),(493,493,'Arceus'),(494,494,'Victini'),(495,495,'Snivy'),(496,496,'Servine'),(497,497,'Serperior'),(498,498,'Tepig'),(499,499,'Pignite'),(500,500,'Emboar'),(501,501,'Oshawott'),(502,502,'Dewott'),(503,503,'Samurott'),(504,504,'Patrat'),(505,505,'Watchog'),(506,506,'Lillipup'),(507,507,'Herdier'),(508,508,'Stoutland'),(509,509,'Purrloin'),(510,510,'Liepard'),(511,511,'Pansage'),(512,512,'Simisage'),(513,513,'Pansear'),(514,514,'Simisear'),(515,515,'Panpour'),(516,516,'Simipour'),(517,517,'Munna'),(518,518,'Musharna'),(519,519,'Pidove'),(520,520,'Tranquill'),(521,521,'Unfezant'),(522,522,'Blitzle'),(523,523,'Zebstrika'),(524,524,'Roggenrola'),(525,525,'Boldore'),(526,526,'Gigalith'),(527,527,'Woobat'),(528,528,'Swoobat'),(529,529,'Drilbur'),(530,530,'Excadrill'),(531,531,'Audino'),(532,532,'Timburr'),(533,533,'Gurdurr'),(534,534,'Conkeldurr'),(535,535,'Tympole'),(536,536,'Palpitoad'),(537,537,'Seismitoad'),(538,538,'Throh'),(539,539,'Sawk'),(540,540,'Sewaddle'),(541,541,'Swadloon'),(542,542,'Leavanny'),(543,543,'Venipede'),(544,544,'Whirlipede'),(545,545,'Scolipede'),(546,546,'Cottonee'),(547,547,'Whimsicott'),(548,548,'Petilil'),(549,549,'Lilligant'),(550,550,'Basculin'),(551,551,'Sandile'),(552,552,'Krokorok'),(553,553,'Krookodile'),(554,554,'Darumaka'),(555,555,'Darmanitan'),(556,556,'Maractus'),(557,557,'Dwebble'),(558,558,'Crustle'),(559,559,'Scraggy'),(560,560,'Scrafty'),(561,561,'Sigilyph'),(562,562,'Yamask'),(563,563,'Cofagrigus'),(564,564,'Tirtouga'),(565,565,'Carracosta'),(566,566,'Archen'),(567,567,'Archeops'),(568,568,'Trubbish'),(569,569,'Garbodor'),(570,570,'Zorua'),(571,571,'Zoroark'),(572,572,'Minccino'),(573,573,'Cinccino'),(574,574,'Gothita'),(575,575,'Gothorita'),(576,576,'Gothitelle'),(577,577,'Solosis'),(578,578,'Duosion'),(579,579,'Reuniclus'),(580,580,'Ducklett'),(581,581,'Swanna'),(582,582,'Vanillite'),(583,583,'Vanillish'),(584,584,'Vanilluxe'),(585,585,'Deerling'),(586,586,'Sawsbuck'),(587,587,'Emolga'),(588,588,'Karrablast'),(589,589,'Escavalier'),(590,590,'Foongus'),(591,591,'Amoonguss'),(592,592,'Frillish'),(593,593,'Jellicent'),(594,594,'Alomomola'),(595,595,'Joltik'),(596,596,'Galvantula'),(597,597,'Ferroseed'),(598,598,'Ferrothorn'),(599,599,'Klink'),(600,600,'Klang'),(601,601,'Klinklang'),(602,602,'Tynamo'),(603,603,'Eelektrik'),(604,604,'Eelektross'),(605,605,'Elgyem'),(606,606,'Beheeyem'),(607,607,'Litwick'),(608,608,'Lampent'),(609,609,'Chandelure'),(610,610,'Axew'),(611,611,'Fraxure'),(612,612,'Haxorus'),(613,613,'Cubchoo'),(614,614,'Beartic'),(615,615,'Cryogonal'),(616,616,'Shelmet'),(617,617,'Accelgor'),(618,618,'Stunfisk'),(619,619,'Mienfoo'),(620,620,'Mienshao'),(621,621,'Druddigon'),(622,622,'Golett'),(623,623,'Golurk'),(624,624,'Pawniard'),(625,625,'Bisharp'),(626,626,'Bouffalant'),(627,627,'Rufflet'),(628,628,'Braviary'),(629,629,'Vullaby'),(630,630,'Mandibuzz'),(631,631,'Heatmor'),(632,632,'Durant'),(633,633,'Deino'),(634,634,'Zweilous'),(635,635,'Hydreigon'),(636,636,'Larvesta'),(637,637,'Volcarona'),(638,638,'Cobalion'),(639,639,'Terrakion'),(640,640,'Virizion'),(641,641,'Tornadus'),(642,642,'Thundurus'),(643,643,'Reshiram'),(644,644,'Zekrom'),(645,645,'Landorus'),(646,646,'Kyurem'),(647,647,'Keldeo'),(648,648,'Meloetta'),(649,649,'Genesect'),(650,650,'Chespin'),(651,651,'Quilladin'),(652,652,'Chesnaught'),(653,653,'Fennekin'),(654,654,'Braixen'),(655,655,'Delphox'),(656,656,'Froakie'),(657,657,'Frogadier'),(658,658,'Greninja'),(659,659,'Bunnelby'),(660,660,'Diggersby'),(661,661,'Fletchling'),(662,662,'Fletchinder'),(663,663,'Talonflame'),(664,664,'Scatterbug'),(665,665,'Spewpa'),(666,666,'Vivillon'),(667,667,'Litleo'),(668,668,'Pyroar'),(669,669,'Flabébé'),(670,670,'Floette'),(671,671,'Florges'),(672,672,'Skiddo'),(673,673,'Gogoat'),(674,674,'Pancham'),(675,675,'Pangoro'),(676,676,'Furfrou'),(677,677,'Espurr'),(678,678,'Meowstic'),(679,679,'Honedge'),(680,680,'Doublade'),(681,681,'Aegislash'),(682,682,'Spritzee'),(683,683,'Aromatisse'),(684,684,'Swirlix'),(685,685,'Slurpuff'),(686,686,'Inkay'),(687,687,'Malamar'),(688,688,'Binacle'),(689,689,'Barbaracle'),(690,690,'Skrelp'),(691,691,'Dragalge'),(692,692,'Clauncher'),(693,693,'Clawitzer'),(694,694,'Helioptile'),(695,695,'Heliolisk'),(696,696,'Tyrunt'),(697,697,'Tyrantrum'),(698,698,'Amaura'),(699,699,'Aurorus'),(700,700,'Sylveon'),(701,701,'Hawlucha'),(702,702,'Dedenne'),(703,703,'Carbink'),(704,704,'Goomy'),(705,705,'Sliggoo'),(706,706,'Goodra'),(707,707,'Klefki'),(708,708,'Phantump'),(709,709,'Trevenant'),(710,710,'Pumpkaboo'),(711,711,'Gourgeist'),(712,712,'Bergmite'),(713,713,'Avalugg'),(714,714,'Noibat'),(715,715,'Noivern'),(716,716,'Xerneas'),(717,717,'Yveltal'),(718,718,'Zygarde'),(719,719,'Diancie'),(720,720,'Hoopa'),(721,721,'Volcanion'),(722,722,'Rowlet'),(723,723,'Dartrix'),(724,724,'Decidueye'),(725,725,'Litten'),(726,726,'Torracat'),(727,727,'Incineroar'),(728,728,'Popplio'),(729,729,'Brionne'),(730,730,'Primarina'),(731,731,'Pikipek'),(732,732,'Trumbeak'),(733,733,'Toucannon');
/*!40000 ALTER TABLE `pk_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pk_rarity`
--

DROP TABLE IF EXISTS `pk_rarity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pk_rarity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rarity_name1` varchar(200) DEFAULT NULL,
  `rarity_name2` varchar(200) DEFAULT NULL,
  `found` varchar(500) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pk_rarity`
--

LOCK TABLES `pk_rarity` WRITE;
/*!40000 ALTER TABLE `pk_rarity` DISABLE KEYS */;
INSERT INTO `pk_rarity` VALUES (1,'Common','Comun','Presente de forma general en todas las expansiones. Los Pokémon Básicos con evolución suelen ser cartas comunes.','Rareza_Comun.svg'),(2,'Uncommon','Infrecuente','Presente de forma general en todas las expansiones. Los Pokémon de Fase 1 que pueden evolucionar a un Pokémon de Fase 2 suelen ser cartas infrecuentes. Todas las cartas de Entrenador son cartas infrecuentes.','Rareza_Infrecuente.svg'),(3,'Rare','Rara','Presente de forma general en todas las expansiones. Los Pokémon de Fase 2 y los Pokémon legendarios suelen ser cartas raras.','Rareza_Rara.svg'),(4,'Holo Rare','Rara Holo','Presente de forma general en todas las expansiones. Exclusiva de las cartas raras que presentan una imagen holográfica. Todas las cartas de Estrella Prisma también tienen rareza Rara Holo.','Rareza_Rara_Holo.svg'),(5,'Ultra Rare','Rara Ultra','Exclusiva de las cartas Full Art, versiones alternativas de cartas de Pokémon o de Partidario.','Rareza_Rara_Ultra.svg'),(6,'Secret Rare','Rara Secreta','Exclusiva de las cartas secretas, versiones alternativas de cartas de Pokémon o de Objeto. Su numeración sobrepasa el número de cartas de la expansión.','Rareza_Rara_Secreta.svg'),(7,'Rare Holo Multicolor','Rara Holo Variocolor','Exclusiva de las cartas de Pokémon ☆.','Rareza_Rara_Holo_Variocolor.svg'),(8,'Rare Holo EX','Rara Holo EX','Exclusiva de las cartas de Pokémon ex y Pokémon-EX.','Rareza_Rara_Holo_EX.svg'),(9,'Rare Holo Niv. X','Rara Holo Niv.X','Exclusiva de las cartas de Pokémon Niv.X.','Rareza_Rara_Holo_Niv.X.svg'),(10,'Rare Prime','Rara Prime','Exclusiva de las cartas de Pokémon Prime.','Rareza_Rara_Prime.svg'),(11,'Rare Legend','Rara LEYENDA','Exclusiva de las cartas de Pokémon LEYENDA.','Rareza_Leyenda.svg'),(12,'Rare ACE','Rara ACE','Exclusiva de las cartas de AS TACTICO.','Rareza_Leyenda.svg'),(13,'Rare GX','Rara GX','Exclusiva de las cartas de Pokémon-GX.','Rareza_Rara_Holo_Niv.X.svg'),(14,'Rare Holo V','Rara Holo V','Exclusiva de las cartas de Pokémon V.','Rareza_Rara_Holo_Niv.X.svg'),(15,'Rare Holo VMAX','Rara Holo VMAX','Exclusiva de las cartas de Pokémon VMAX.','Rareza_Rara_Holo_VMAX.svg'),(16,'Amazing Rare','Rara Increíble','Exclusiva de las cartas de Pokémon Increíbles.','Rareza_Rara_Increíble.svg'),(17,'Rare Holo V-ASTRO','Rara Holo V-ASTRO','Exclusiva de las cartas de Pokémon V-ASTRO.','Rareza_Rara_Holo_V-ASTRO.svg'),(18,'Rare Radiant','Rara Radiante','Exclusiva de las cartas de Pokémon Radiante.','Rareza_Rara_Radiante.svg'),(19,'Rare Double','Rara Doble','Exclusiva de las cartas de Pokémon ex lanzadas a partir de Escarlata y Púrpura.','Rareza_Rara_Doble.svg'),(20,'Illustration Rare','Rara Ilustración','Exclusiva de cartas comunes con una ilustración Full Art alternativa lanzadas a partir de Escarlata y Púrpura.','Rareza_Leyenda.svg'),(21,'Rare Special Illustration','Rara Ilustración Especial','Exclusiva de cartas de Pokémon ex y de Partidario con una ilustración Full Art especial lanzadas a partir de Escarlata y Púrpura.','Rareza_Rara_Ilustracion_Especial.svg'),(22,'Promo','Promo','Exclusiva de las cartas promocionales. Como su obtención es segura, puesto que no pertenecen a ninguna expansión concreta, realmente no tienen una rareza definida.','Rareza_Promo.svg'),(23,'Rare Rainbow','Rara Arcoiris',NULL,NULL);
/*!40000 ALTER TABLE `pk_rarity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pk_register`
--

DROP TABLE IF EXISTS `pk_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pk_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pk_name` int(11) DEFAULT NULL,
  `pk_card_type` int(11) DEFAULT NULL,
  `pk_evolves_from` varchar(200) DEFAULT NULL,
  `pk_hp` int(11) DEFAULT NULL,
  `pk_rarity` int(11) DEFAULT NULL,
  `pk_energy` int(11) DEFAULT NULL,
  `pk_abilities` varchar(2000) DEFAULT NULL,
  `pk_weakness` varchar(100) DEFAULT NULL,
  `pk_resistance` varchar(100) DEFAULT NULL,
  `pk_ret_cost` varchar(100) DEFAULT NULL,
  `pk_lang` varchar(2) DEFAULT NULL,
  `pk_format` int(11) DEFAULT NULL,
  `pk_card_num` int(11) DEFAULT NULL,
  `pk_expansion` int(11) DEFAULT NULL,
  `pk_illustrator` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pk_register_FK` (`pk_name`),
  KEY `pk_register_FK_1` (`pk_rarity`),
  KEY `pk_register_FK_2` (`pk_energy`),
  KEY `pk_register_FK_3` (`pk_card_type`),
  KEY `pk_register_FK_4` (`pk_expansion`),
  CONSTRAINT `pk_register_FK_1` FOREIGN KEY (`pk_rarity`) REFERENCES `pk_rarity` (`id`),
  CONSTRAINT `pk_register_FK_2` FOREIGN KEY (`pk_energy`) REFERENCES `pk_energy` (`id`),
  CONSTRAINT `pk_register_FK_3` FOREIGN KEY (`pk_card_type`) REFERENCES `pk_card_type` (`id`),
  CONSTRAINT `pk_register_FK_4` FOREIGN KEY (`pk_expansion`) REFERENCES `pk_expansion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pk_register`
--

LOCK TABLES `pk_register` WRITE;
/*!40000 ALTER TABLE `pk_register` DISABLE KEYS */;
/*!40000 ALTER TABLE `pk_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'pk_data'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-27 14:06:40
