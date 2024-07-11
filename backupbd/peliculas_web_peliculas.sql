CREATE DATABASE  IF NOT EXISTS `peliculas_web` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `peliculas_web`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: peliculas_web
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
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(1024) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `calificacion` varchar(40) NOT NULL,
  `anio` int NOT NULL,
  `estrellas` tinyint NOT NULL,
  `director` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (49,'Inception','Un thriller que dobla la mente','Sci-Fi','PG-13',2010,5,'Christopher Nolan'),(50,'El Padrino','La historia de una poderosa familia criminal italoamericana','Crimen','R',1972,5,'Francis Ford Coppola'),(51,'El Caballero Oscuro','Batman enfrenta al Joker en Ciudad Gótica','Acción','PG-13',2008,4,'Christopher Nolan'),(52,'Pulp Fiction','Múltiples historias de crimen en Los Ángeles','Crimen','R',1994,4,'Quentin Tarantino'),(53,'Sueño de Libertad','Un hombre encarcelado injustamente por asesinato forma un vínculo con un compañero de prisión','Drama','R',1994,5,'Frank Darabont'),(54,'Forrest Gump','Un hombre con un coeficiente intelectual bajo cuenta los primeros años de su vida','Drama','PG-13',1994,3,'Robert Zemeckis'),(55,'Titanic','Una historia de amor a bordo del desafortunado RMS Titanic','Romance','PG-13',1997,5,'James Cameron'),(56,'The Matrix','Un hacker aprende sobre la verdadera naturaleza de la realidad','Sci-Fi','R',1999,5,'The Wachowskis'),(57,'El Club de la Pelea','Un oficinista insomne y un vendedor de jabón forman un club de lucha clandestino','Drama','R',1999,4,'David Fincher'),(58,'Los Vengadores','Los héroes más poderosos de la Tierra deben unirse','Acción','PG-13',2012,4,'Joss Whedon'),(59,'Toy Story','Un muñeco vaquero se siente profundamente amenazado por la llegada de un guardián espacial','Animación','G',1995,5,'John Lasseter'),(60,'Jurassic Park','Un parque temático de dinosaurios cobra vida con consecuencias peligrosas','Aventura','PG-13',1993,4,'Steven Spielberg'),(61,'Star Wars: Una Nueva Esperanza','Un joven granjero se une a una lucha rebelde contra el Imperio','Sci-Fi','PG',1977,5,'George Lucas'),(62,'El Señor de los Anillos: La Comunidad del Anillo','Un hobbit se embarca en una misión para destruir un anillo poderoso','Fantasía','PG-13',2001,5,'Peter Jackson'),(63,'El Resplandor','Un escritor se vuelve loco mientras cuida un hotel aislado durante el invierno','Horror','R',1980,2,'Stanley Kubrick'),(64,'Gladiador','Un general romano busca venganza contra el emperador corrupto que mató a su familia','Acción','R',2000,5,'Ridley Scott'),(65,'Avatar','Un marine parapléjico se embarca en una misión en el planeta Pandora','Sci-Fi','PG-13',2009,4,'James Cameron'),(66,'El Rey León','Un joven león huye de su reino para descubrir su destino','Animación','G',1994,5,'Roger Allers, Rob Minkoff'),(67,'Volver al Futuro','Un adolescente viaja en el tiempo para asegurar que sus padres se enamoren','Sci-Fi','PG',1985,3,'Robert Zemeckis'),(68,'El Sexto Sentido','Un niño que ve gente muerta busca la ayuda de un psicólogo infantil','Suspenso','PG-13',1999,4,'M. Night Shyamalan'),(69,'Coco','Un joven músico entra en la Tierra de los Muertos para descubrir la historia de su familia','Animación','PG',2017,5,'Lee Unkrich'),(70,'Buscando a Nemo','Un pez payaso busca a su hijo desaparecido','Animación','G',2003,4,'Andrew Stanton'),(71,'La Vida es Bella','Un hombre usa el ingenio para proteger a su hijo durante el Holocausto','Drama','PG-13',1997,5,'Roberto Benigni'),(72,'El Gran Hotel Budapest','Las aventuras de un conserje de hotel legendario y su joven protegido','Comedia','R',2014,3,'Wes Anderson'),(73,'Intensamente','Las emociones dentro de la mente de una joven se enfrentan a un cambio de vida','Animación','PG',2015,5,'Pete Docter'),(74,'Interestelar','Un grupo de astronautas viaja a través de un agujero de gusano en busca de un nuevo hogar para la humanidad','Sci-Fi','PG-13',2014,4,'Christopher Nolan'),(75,'Mad Max: Furia en el Camino','En un futuro post-apocalíptico, una mujer rebelde se une a un prisionero en una huida a través del desierto','Acción','R',2015,5,'George Miller'),(76,'Spider-Man: Un Nuevo Universo','Un adolescente se convierte en el Spider-Man de su realidad mientras cruza caminos con sus contrapartes de otras dimensiones','Animación','PG',2018,5,'Peter Ramsey, Rodney Rothman'),(77,'El Origen','Un ladrón que roba secretos corporativos usando tecnología de sueños debe plantar una idea en la mente de un CEO','Sci-Fi','PG-13',2010,5,'Christopher Nolan'),(78,'Parasite','Una familia pobre se infiltra en la vida de una familia rica con consecuencias inesperadas','Drama','R',2019,5,'Bong Joon-ho'),(79,'1917','Dos soldados británicos durante la Primera Guerra Mundial reciben la misión de entregar un mensaje crucial','Bélica','R',2019,4,'Sam Mendes'),(80,'Jojo Rabbit','Un joven nazi cuya visión del mundo es puesta a prueba cuando descubre que su madre está escondiendo a una niña judía','Comedia','PG-13',2019,5,'Taika Waititi'),(81,'Joker','La transformación de un hombre solitario y perturbado en el infame villano del mismo nombre','Drama','R',2019,5,'Todd Phillips'),(82,'Misión Imposible: Repercusión','Ethan Hunt y su equipo deben detener un desastre nuclear mientras son cazados por asesinos','Acción','PG-13',2018,4,'Christopher McQuarrie'),(83,'Los Increíbles','Una familia de superhéroes se ve obligada a retomar la acción para salvar al mundo','Animación','PG',2004,5,'Brad Bird'),(84,'La La Land','Una historia de amor entre una aspirante a actriz y un músico de jazz en Los Ángeles','Romance','PG-13',2016,4,'Damien Chazelle'),(85,'Blade Runner 2049','Un nuevo blade runner descubre un secreto largamente enterrado que podría sumir a la sociedad en el caos','Sci-Fi','R',2017,3,'Denis Villeneuve'),(86,'Wonder Woman','Una guerrera amazona se aventura en el mundo exterior durante la Primera Guerra Mundial para detener un conflicto global','Acción','PG-13',2017,5,'Patty Jenkins'),(87,'La Forma del Agua','Una empleada de limpieza en un laboratorio gubernamental de alta seguridad forma una relación única con una criatura anfibia','Fantasía','R',2017,2,'Guillermo del Toro'),(88,'Logan','En un futuro cercano, un Wolverine cansado cuida de un enfermo Profesor X mientras intentan proteger a una joven mutante','Acción','R',2017,5,'James Mangold'),(89,'Black Panther','El rey T\'Challa regresa a Wakanda para asumir su lugar como rey, pero se enfrenta a un enemigo del pasado','Acción','PG-13',2018,5,'Ryan Coogler'),(90,'Rocketman','La historia de la vida de Elton John, desde sus años como prodigio en la Royal Academy of Music hasta su influyente y duradera carrera musical','Biografía','R',2019,5,'Dexter Fletcher'),(91,'Bohemian Rhapsody','La historia de la vida de Freddie Mercury y la formación de la banda Queen','Biografía','PG-13',2018,4,'Bryan Singer'),(92,'Dunkerque','La evacuación de las fuerzas aliadas de Dunkerque durante la Segunda Guerra Mundial','Bélica','PG-13',2017,4,'Christopher Nolan'),(93,'El Gran Truco','Dos magos rivales en la Londres victoriana compiten para crear la mejor ilusión','Drama','PG-13',2006,3,'Christopher Nolan'),(94,'Hasta el Último Hombre','La historia de Desmond Doss, un objetor de conciencia que sirvió como médico de combate en la Segunda Guerra Mundial','Bélica','R',2016,4,'Mel Gibson'),(95,'Rogue One: Una Historia de Star Wars','Un grupo de rebeldes roba los planos de la Estrella de la Muerte','Sci-Fi','PG-13',2016,5,'Gareth Edwards'),(96,'Frozen: Una Aventura Congelada','Una joven y su hermana se embarcan en un peligroso viaje para encontrar a sus padres desaparecidos','Animación','PG',2013,3,'Chris Buck, Jennifer Lee'),(98,'Prueba01','Descripcion 01','Drama','ATP',2024,5,'Director Prueba 01'),(99,'Prueba02','Descripcion 02','Drama','ATP',2010,3,'Director Prueba 02');
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-11 20:27:48
