-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.40-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para bdyura
CREATE DATABASE IF NOT EXISTS `bdyura` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bdyura`;

-- Volcando estructura para tabla bdyura.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `Id_Cli` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT '0',
  `Dir` varchar(50) DEFAULT '0',
  `Telefono` varchar(50) DEFAULT '0',
  `Edad` varchar(4) DEFAULT '0',
  `Correo` varchar(50) NOT NULL DEFAULT '0',
  `Contraseña` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id_Cli`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bdyura.cliente: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`Id_Cli`, `Nombre`, `Dir`, `Telefono`, `Edad`, `Correo`, `Contraseña`) VALUES
	(1, 'Luis Andre Jimenez Castillo ', 'Jr Los Helechos #180 - Los Olivos', '6765849', '22', 'andreson561@hotmail.com', 'CODIGO123'),
	(2, 'Jesus Isabel Castillo ', 'Av. Las Palmeras Los- Olivos ', '7634852', '45', 'franros_61@hotmail.com', 'CODIGO1');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Volcando estructura para tabla bdyura.detallepedido
CREATE TABLE IF NOT EXISTS `detallepedido` (
  `Id_Pedido` int(11) NOT NULL AUTO_INCREMENT,
  `Id_cliente` int(11) DEFAULT NULL,
  `Id_Medic` int(11) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `FechaPedido` date DEFAULT NULL,
  PRIMARY KEY (`Id_Pedido`),
  KEY `FKId_Cliente` (`Id_cliente`),
  KEY `FKId_Medic` (`Id_Medic`),
  CONSTRAINT `FKId_Cliente` FOREIGN KEY (`Id_cliente`) REFERENCES `cliente` (`Id_Cli`),
  CONSTRAINT `FKId_Medic` FOREIGN KEY (`Id_Medic`) REFERENCES `medicamentos` (`idmedic`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bdyura.detallepedido: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `detallepedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallepedido` ENABLE KEYS */;

-- Volcando estructura para tabla bdyura.medicamentos
CREATE TABLE IF NOT EXISTS `medicamentos` (
  `idmedic` int(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `sintomas` varchar(50) NOT NULL,
  `stock` int(6) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  PRIMARY KEY (`idmedic`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bdyura.medicamentos: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
INSERT INTO `medicamentos` (`idmedic`, `nombre`, `marca`, `sintomas`, `stock`, `descripcion`, `precio`) VALUES
	(102, 'Plantita 3', 'Manzanilla', 'Bronquitis', 35, 'Antiflamatorio posee buenas ventajas digestiva.', 30),
	(104, 'Plantita 5', 'Aniz', 'Vista Irritada', 45, 'el años tiene efecto sedante y carminativo', 16),
	(105, 'Plantita 6', 'eucalipto', 'Ulceras Estomacales', 45, 'Lo que sea.', 60),
	(106, 'asdasd', 'Mate de coca', 'Muscular', 80, 'Descripcion', 11);
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
