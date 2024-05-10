/*
SQLyog v4.0
Host - localhost : Database - empresa
**************************************************************
Server version 4.0.20a
*/

create database if not exists `empresa`;

use `empresa`;

/*
Table structure for cliente
*/

drop table if exists `cliente`;
CREATE TABLE `cliente` (
  `codigo_cliente` int(5) NOT NULL auto_increment,
  `codigo_lista` int(5) NOT NULL default '0',
  `razon_social` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`codigo_cliente`)
) TYPE=InnoDB;

/*
Table data for empresa.cliente
*/

INSERT INTO `cliente` VALUES 
(1,1,'Luis Garcia Anton'),
(2,1,'Jaime LLorens'),
(3,1,'El Triangulo'),
(4,1,'Bujes y Pernos'),
(5,1,'Carlos Tena'),
(6,2,'La manivela'),
(7,2,'Juan Bolto'),
(8,2,'Alvarez Hnos.'),
(9,1,'ORNSNA S.A.'),
(10,2,'Cristobal Garcia'),
(11,1,'La Fontella'),
(12,1,'Sunshine Ready'),
(13,2,'Fontella'),
(14,2,'Castelnuovo S.A.'),
(15,1,'BlueMoon'),
(16,1,'Las Cabañas'),
(17,2,'Electrosur');

/*
Table structure for datos_contrato
*/

drop table if exists `datos_contrato`;
CREATE TABLE `datos_contrato` (
  `codigo_contrato` int(5) NOT NULL default '0',
  `fecha_contrato` date NOT NULL default '0000-00-00',
  `cuota` decimal(10,2) NOT NULL default '0.00',
  `ventas` decimal(10,2) default NULL,
  PRIMARY KEY  (`codigo_contrato`)
) TYPE=InnoDB;

/*
Table data for empresa.datos_contrato
*/

INSERT INTO `datos_contrato` VALUES 
(101,'1998-01-20',57000,NULL),
(102,'1998-03-18',57000,NULL),
(103,'1999-06-10',57000,NULL),
(104,'1997-04-21',45000,NULL),
(105,'1998-05-13',45000,NULL),
(106,'1999-06-21',45000,NULL),
(107,'1997-06-14',45000,NULL),
(108,'1995-03-15',120000,NULL),
(109,'1987-03-12',120000,NULL),
(110,'1988-06-15',90000,NULL);

/*
Table structure for detalle_pedido
*/

drop table if exists `detalle_pedido`;
CREATE TABLE `detalle_pedido` (
  `codigo_pedido` int(5) NOT NULL default '0',
  `numero_linea` int(5) NOT NULL default '0',
  `codigo_producto` int(5) NOT NULL default '0',
  PRIMARY KEY  (`codigo_pedido`,`numero_linea`)
) TYPE=InnoDB;

/*
Table data for empresa.detalle_pedido
*/

INSERT INTO `detalle_pedido` VALUES 
(1,1,3),
(1,2,5),
(1,3,7),
(2,1,1),
(3,1,8),
(3,2,9),
(3,3,3),
(4,1,4),
(4,2,5),
(5,1,2),
(6,1,7),
(6,2,8),
(7,1,6),
(7,2,5),
(7,3,4),
(8,1,4),
(8,2,6),
(9,1,9),
(9,2,3),
(10,1,4),
(10,2,1),
(11,1,3),
(11,2,8),
(11,3,9),
(12,1,5),
(12,2,1),
(12,3,9),
(12,4,4),
(12,5,3),
(13,1,11),
(13,2,12),
(14,1,13),
(14,2,14),
(14,3,10),
(15,1,9),
(15,2,12),
(16,1,14),
(17,1,11),
(17,2,1);

/*
Table structure for documento
*/

drop table if exists `documento`;
CREATE TABLE `documento` (
  `codigo_documento` int(5) NOT NULL auto_increment,
  `descripcion` varchar(30) default NULL,
  PRIMARY KEY  (`codigo_documento`)
) TYPE=InnoDB;

/*
Table data for empresa.documento
*/

INSERT INTO `documento` VALUES 
(1,'Documento Nacional de Identida'),
(2,'Cedula de Identidad'),
(3,'Pasaporte'),
(4,'Libreta de Enrolamiento');

/*
Table structure for empleado
*/

drop table if exists `empleado`;
CREATE TABLE `empleado` (
  `codigo_empleado` int(5) NOT NULL default '0',
  `apellido` varchar(20) NOT NULL default '',
  `nombre` varchar(30) NOT NULL default '',
  `fecha_nacimiento` date default NULL,
  `codigo_jefe` int(3) NOT NULL default '0',
  `codigo_oficina` int(3) NOT NULL default '0',
  `numero_documento` varchar(8) NOT NULL default '',
  `codigo_documento` int(1) NOT NULL default '0',
  PRIMARY KEY  (`codigo_empleado`)
) TYPE=InnoDB;

/*
Table data for empresa.empleado
*/

INSERT INTO `empleado` VALUES 
(101,'Viguer','Antonio','1956-05-20',0,1,'1245689',1),
(102,'Jaumer','Alvaro','1955-03-30',101,2,'1265489',1),
(103,'Rovira','Juan','1960-06-21',102,3,'15789546',1),
(104,'Gonzalez','Analia','1958-04-23',102,3,'1345689',1),
(105,'Pantalla','Marcela','1963-12-12',102,3,'1487987',1),
(106,'Bustamante','Jorge','1963-05-05',102,3,'475684',2),
(107,'Sunta','Maria','1970-06-21',101,2,'16789547',1),
(108,'Victor','Juan','1960-09-18',107,4,'13854789',1),
(109,'Alvarez','Adriana','1956-09-30',107,4,'1246579',1),
(110,'Clavel','Maria','0000-00-00',107,4,'99875987',3);

/*
Table structure for fabricante
*/

drop table if exists `fabricante`;
CREATE TABLE `fabricante` (
  `codigo_fabricante` int(5) NOT NULL auto_increment,
  `razon_social` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`codigo_fabricante`)
) TYPE=InnoDB;

/*
Table data for empresa.fabricante
*/

INSERT INTO `fabricante` VALUES 
(1,'ABC comercial'),
(2,'General de negocios SA'),
(3,'Tomasti hnos'),
(4,'Basic'),
(5,'Ferreteria Sudamericana'),
(6,'Pampas SRL');

/*
Table structure for lista
*/

drop table if exists `lista`;
CREATE TABLE `lista` (
  `codigo_lista` int(5) NOT NULL auto_increment,
  `descripcion` varchar(20) NOT NULL default '',
  `Ganancia_porcentaje` decimal(6,2) NOT NULL default '0.00',
  PRIMARY KEY  (`codigo_lista`)
) TYPE=InnoDB;

/*
Table data for empresa.lista
*/

INSERT INTO `lista` VALUES 
(1,'Mayorista',20.00),
(2,'Minorista',30.00);

/*
Table structure for oficina
*/

drop table if exists `oficina`;
CREATE TABLE `oficina` (
  `codigo_oficina` int(5) NOT NULL auto_increment,
  `Codigo_director` int(5) default NULL,
  `descripcion` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`codigo_oficina`)
) TYPE=InnoDB;

/*
Table data for empresa.oficina
*/

INSERT INTO `oficina` VALUES 
(1,101,'Presidencia'),
(2,102,'Gerencia'),
(3,104,'Ventas interior'),
(4,0,'Ventas exterior');

/*
Table structure for pedido
*/

drop table if exists `pedido`;
CREATE TABLE `pedido` (
  `codigo_pedido` int(5) NOT NULL auto_increment,
  `fecha_pedido` date NOT NULL default '0000-00-00',
  `codigo_empleado` int(5) NOT NULL default '0',
  `codigo_cliente` int(5) NOT NULL default '0',
  PRIMARY KEY  (`codigo_pedido`)
) TYPE=InnoDB;

/*
Table data for empresa.pedido
*/

INSERT INTO `pedido` VALUES 
(1,'2002-03-15',101,1),
(2,'2002-03-15',101,2),
(3,'2002-03-15',102,3),
(4,'2002-03-16',104,4),
(5,'2002-03-16',104,1),
(6,'2002-03-16',104,5),
(7,'2002-03-16',105,4),
(8,'2002-03-21',108,7),
(9,'2002-03-22',108,6),
(10,'2002-03-22',104,6),
(11,'2002-03-22',101,1),
(12,'2002-03-22',110,4),
(13,'2002-04-01',110,12),
(14,'2002-04-01',102,12),
(15,'2002-04-12',104,15),
(16,'2002-04-12',108,15),
(17,'2002-04-14',101,12);

/*
Table structure for precio_venta
*/

drop table if exists `precio_venta`;
CREATE TABLE `precio_venta` (
  `codigo_producto` int(5) NOT NULL default '0',
  `codigo_lista` int(5) NOT NULL default '0',
  `precio` decimal(6,2) NOT NULL default '0.00',
  PRIMARY KEY  (`codigo_producto`,`codigo_lista`)
) TYPE=InnoDB;

/*
Table data for empresa.precio_venta
*/

INSERT INTO `precio_venta` VALUES 
(1,1,0.00),
(1,2,0.00),
(2,1,0.00),
(2,2,0.00),
(3,1,0.00),
(3,2,0.00),
(4,1,0.00),
(4,2,0.00),
(5,1,0.00),
(5,2,0.00),
(6,1,0.00),
(6,2,0.00),
(7,1,0.00),
(8,1,0.00),
(9,1,0.00),
(10,1,0.00),
(10,2,0.00),
(11,1,0.00),
(11,2,0.00),
(12,1,0.00),
(12,2,0.00),
(13,1,0.00),
(14,1,0.00);

/*
Table structure for producto
*/

drop table if exists `producto`;
CREATE TABLE `producto` (
  `codigo_producto` int(5) NOT NULL auto_increment,
  `descripcion` varchar(50) default NULL,
  `precio_costo` decimal(6,2) default '0.00',
  `Pto_reposición` int(5) default '0',
  `codigo_fabricante` int(3) default NULL,
  PRIMARY KEY  (`codigo_producto`)
) TYPE=InnoDB;

/*
Table data for empresa.producto
*/

INSERT INTO `producto` VALUES 
(1,'Arandela',0.50,0,1),
(2,'Bisagra',1.00,0,2),
(3,'Exractor',135.00,0,3),
(4,'Junta',21.00,0,2),
(5,'Cubo',350.00,0,4),
(6,'Perno',21.00,0,5),
(7,'Red',821.00,0,3),
(8,'Manivela',35.00,0,2),
(9,'Bomba I',1012.00,0,1),
(10,'Rele',35.00,0,3),
(11,'Bagueta A3',48.00,0,5),
(12,'Ventilador',289.00,0,1),
(13,'Linterna 2X',26.00,0,2),
(14,'Linterna 3X',38.00,0,2);

/*
Table structure for stock
*/

drop table if exists `stock`;
CREATE TABLE `stock` (
  `codigo_producto` int(5) NOT NULL default '0',
  `cantidad` int(5) NOT NULL default '0',
  PRIMARY KEY  (`codigo_producto`)
) TYPE=InnoDB;

/*
Table data for empresa.stock
*/

INSERT INTO `stock` VALUES 
(1,1000),
(2,1500),
(3,450),
(4,830),
(5,180),
(6,1000),
(7,500),
(8,300),
(9,450),
(10,320),
(11,750),
(12,450),
(13,150),
(14,300);


