-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-07-2020 a las 04:42:37
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bodega`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `Cargoid` int(10) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`Cargoid`, `Nombre`) VALUES
(12, 'administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `IdCategoria` tinyint(5) UNSIGNED NOT NULL,
  `NombreCategoria` varchar(15) NOT NULL DEFAULT '',
  `Descripcion` mediumtext NOT NULL,
  `Imagen` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`IdCategoria`, `NombreCategoria`, `Descripcion`, `Imagen`) VALUES
(1, 'Bebidas', 'Gaseosas, café, té, cervezas y maltas', 'beverages.gif'),
(2, 'Condimentos', 'Salsas dulces y picantes, delicias, comida para untar y aderezos', 'condiments.gif'),
(3, 'Repostería', 'Postres, dulces y pan dulce', 'confections.gif'),
(4, 'Lácteos', 'Quesos', 'diary.gif'),
(5, 'Granos/Cereales', 'Pan, galletas, pasta y cereales', 'cereals.gif'),
(6, 'Carnes', 'Carnes preparadas', 'meat.gif'),
(7, 'Frutas/Verduras', 'Frutas secas y queso de soja', 'produce.gif'),
(8, 'Pescado/Marisco', 'Pescados, mariscos y algas', 'seafood.gif'),
(9, 'Abarrotes', 'Abarrotes', ''),
(10, 'Comida instantá', 'Comida rapida', ''),
(11, 'Limpieza', 'Artículos de limpieza, aseo', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `IdCliente` varchar(5) NOT NULL DEFAULT '',
  `NombreCompania` varchar(40) NOT NULL DEFAULT '',
  `NombreContacto` varchar(30) NOT NULL DEFAULT 'Unknown',
  `CargoContacto` varchar(30) NOT NULL DEFAULT '',
  `Direccion` varchar(60) NOT NULL DEFAULT '',
  `Ciudad` varchar(15) NOT NULL DEFAULT '',
  `Region` varchar(15) NOT NULL DEFAULT '',
  `CodigoPostal` varchar(10) NOT NULL DEFAULT '',
  `Pais` varchar(15) NOT NULL DEFAULT '',
  `Telefono` varchar(24) NOT NULL DEFAULT '',
  `Fax` varchar(24) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`IdCliente`, `NombreCompania`, `NombreContacto`, `CargoContacto`, `Direccion`, `Ciudad`, `Region`, `CodigoPostal`, `Pais`, `Telefono`, `Fax`) VALUES
('ALFAA', 'Alfreds Futterkiste', 'Maria Anders', 'Representante de ventas', 'Obere Str. 57', 'Berlín', '', '12209', 'Alemania', '030-0074321', '030-0076545'),
('ANATR', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Propietario', 'Avda. de la Constitución 2222', 'México D.F.', '', '05021', 'México', '(5) 555-4729', '(5) 555-3745'),
('ANTON', 'Antonio Moreno Taquería', 'Antonio Moreno', 'Propietario', 'Mataderos  2312', 'México D.F.', '', '05023', 'México', '(5) 555-3932', ''),
('AROUT', 'Around the Horn', 'Thomas Hardy', 'Representante de ventas', '120 Hanover Sq.', 'Londres', '', 'WA1 1DP', 'Reino Unido', '(171) 555-7788', '(171) 555-6750'),
('BERGS', 'Berglunds snabbköp', 'Christina Berglund', 'Administrador de pedidos', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia', '0921-12 34 65', '0921-12 34 67'),
('BLAUS', 'Blauer See Delikatessen', 'Hanna Moos', 'Representante de ventas', 'Forsterstr. 57', 'Mannheim', '', '68306', 'Alemania', '0621-08460', '0621-08924'),
('BLONP', 'Blondel père et fils', 'Frédérique Citeaux', 'Gerente de marketing', '24, place Kléber', 'Estrasburgo', '', '67000', 'Francia', '88.60.15.31', '88.60.15.32'),
('BOLID', 'Bólido Comidas preparadas', 'Martín Sommer', 'Propietario', 'C/ Araquil, 67', 'Madrid', '', '28023', 'España', '(91) 555 22 82', '(91) 555 91 99'),
('BONAP', 'Bon app\'', 'Laurence Lebihan', 'Propietario', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia', '91.24.45.40', '91.24.45.41'),
('BOTTM', 'Bottom-Dollar Markets', 'Elizabeth Lincoln', 'Gerente de contabilidad', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá', '(604) 555-4729', '(604) 555-3745'),
('BSBEV', 'B\'s Beverages', 'Victoria Ashworth', 'Representante de ventas', 'Fauntleroy Circus', 'Londres', '', 'EC2 5NT', 'Reino Unido', '(171) 555-1212', ''),
('CACTU', 'Cactus Comidas para llevar', 'Patricio Simpson', 'Agente de ventas', 'Cerrito 333', 'Buenos Aires', '', '1010', 'Argentina', '(1) 135-5555', '(1) 135-4892'),
('CENTC', 'Centro comercial Moctezuma', 'Francisco Chang', 'Gerente de marketing', 'Sierras de Granada 9993', 'México D.F.', '', '05022', 'México', '(5) 555-3392', '(5) 555-7293'),
('CHOPS', 'Chop-suey Chinese', 'Yang Wang', 'Propietario', 'Hauptstr. 29', 'Berna', '', '3012', 'Suiza', '0452-076545', ''),
('COMMI', 'Comércio Mineiro', 'Pedro Afonso', 'Asistente de ventas', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brasil', '(11) 555-7647', ''),
('CONSH', 'Consolidated Holdings', 'Elizabeth Brown', 'Representante de ventas', 'Berkeley Gardens\r\n12  Brewery ', 'Londres', '', 'WX1 6LT', 'Reino Unido', '(171) 555-2282', '(171) 555-9199'),
('DRACD', 'Drachenblut Delikatessen', 'Sven Ottlieb', 'Administrador de pedidos', 'Walserweg 21', 'Aachen', '', '52066', 'Alemania', '0241-039123', '0241-059428'),
('DUMON', 'Du monde entier', 'Janine Labrune', 'Propietario', '67, rue des Cinquante Otages', 'Nantes', '', '44000', 'Francia', '40.67.88.88', '40.67.89.89'),
('EASTC', 'Eastern Connection', 'Ann Devon', 'Agente de ventas', '35 King George', 'Londres', '', 'WX3 6FW', 'Reino Unido', '(171) 555-0297', '(171) 555-3373'),
('ERNSH', 'Ernst Handel', 'Roland Mendel', 'Gerente de ventas', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria', '7675-3425', '7675-3426'),
('FAMIA', 'Familia Arquibaldo', 'Aria Cruz', 'Asistente de marketing', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brasil', '(11) 555-9857', ''),
('FISSA', 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'Gerente de contabilidad', 'C/ Moralzarzal, 86', 'Madrid', '', '28034', 'España', '(91) 555 94 44', '(91) 555 55 93'),
('FOLIG', 'Folies gourmandes', 'Martine Rancé', 'Asistente de agente de ventas', '184, chaussée de Tournai', 'Lille', '', '59000', 'Francia', '20.16.10.16', '20.16.10.17'),
('FOLKO', 'Folk och fä HB', 'Maria Larsson', 'Propietario', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia', '0695-34 67 21', ''),
('FRANK', 'Frankenversand', 'Peter Franken', 'Gerente de marketing', 'Berliner Platz 43', 'München', '', '80805', 'Alemania', '089-0877310', '089-0877451'),
('FRANR', 'France restauration', 'Carine Schmitt', 'Gerente de marketing', '54, rue Royale', 'Nantes', '', '44000', 'Francia', '40.32.21.21', '40.32.21.20'),
('FRANS', 'Franchi S.p.A.', 'Paolo Accorti', 'Representante de ventas', 'Via Monte Bianco 34', 'Torino', '', '10100', 'Italia', '011-4988260', '011-4988261'),
('FURIB', 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez ', 'Gerente de ventas', 'Jardim das rosas n. 32', 'Lisboa', '', '1675', 'Portugal', '(1) 354-2534', '(1) 354-2535'),
('GALED', 'Galería del gastrónomo', 'Eduardo Saavedra', 'Gerente de marketing', 'Rambla de Cataluña, 23', 'Barcelona', '', '08022', 'España', '(93) 203 4560', '(93) 203 4561'),
('GODOS', 'Godos Cocina Típica', 'José Pedro Freyre', 'Gerente de ventas', 'C/ Romero, 33', 'Sevilla', '', '41101', 'España', '(95) 555 82 82', ''),
('GOURL', 'Gourmet Lanchonetes', 'André Fonseca', 'Asistente de ventas', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brasil', '(11) 555-9482', ''),
('GREAL', 'Great Lakes Food Market', 'Howard Snyder', 'Gerente de marketing', '2732 Baker Blvd.', 'Eugenia', 'OR', '97403', 'Estados Unidos', '(503) 555-7555', ''),
('GROSR', 'GROSELLA-Restaurante', 'Manuel Pereira', 'Propietario', '5ª Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela', '(2) 283-2951', '(2) 283-3397'),
('HANAR', 'Hanari Carnes', 'Mario Pontes', 'Gerente de contabilidad', 'Rua do Paço, 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil', '(21) 555-0091', '(21) 555-8765'),
('HILAA', 'HILARIÓN-Abastos', 'Carlos Hernández', 'Representante de ventas', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela', '(5) 555-1340', '(5) 555-1948'),
('HUNGC', 'Hungry Coyote Import Store', 'Yoshi Latimer', 'Representante de ventas', 'Ciudad Center Plaza\r\n516 Main St.', 'Elgin', 'OR', '97827', 'Estados Unidos', '(503) 555-6874', '(503) 555-2376'),
('HUNGO', 'Hungry Owl All-Night Grocers', 'Patricia McKenna', 'Asistente de ventas', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda', '2967 542', '2967 3333'),
('ISLAT', 'Island Trading', 'Helen Bennett', 'Gerente de marketing', 'Garden House\r\nCrowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'Reino Unido', '(198) 555-8888', ''),
('KOENE', 'Königlich Essen', 'Philip Cramer', 'Asistente de ventas', 'Maubelstr. 90', 'Brandenburg', '', '14776', 'Alemania', '0555-09876', ''),
('LACOR', 'La corne d\'abondance', 'Daniel Tonini', 'Representante de ventas', '67, avenue de l\'Europe', 'Versalles', '', '78000', 'Francia', '30.59.84.10', '30.59.85.11'),
('LAMAI', 'La maison d\'Asie', 'Annette Roulet', 'Gerente de ventas', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'Francia', '61.77.61.10', '61.77.61.11'),
('LAUGB', 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', 'Asistente de marketing', '1900 Oak St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canadá', '(604) 555-3392', '(604) 555-7293'),
('LAZYK', 'Lazy K Kountry Store', 'John Steel', 'Gerente de marketing', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'Estados Unidos', '(509) 555-7969', '(509) 555-6221'),
('LEHMS', 'Lehmanns Marktstand', 'Renate Messner', 'Representante de ventas', 'Magazinweg 7', 'Frankfurt a.M. ', '', '60528', 'Alemania', '069-0245984', '069-0245874'),
('LETSS', 'Let\'s Stop N Shop', 'Jaime Yorres', 'Propietario', '87 Polk St.\r\nSuite 5', 'San Francisco', 'CA', '94117', 'Estados Unidos', '(415) 555-5938', ''),
('LILAS', 'LILA-Supermercado', 'Carlos González', 'Gerente de contabilidad', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', '(9) 331-6954', '(9) 331-7256'),
('LINOD', 'LINO-Delicateses', 'Felipe Izquierdo', 'Propietario', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', '(8) 34-56-12', '(8) 34-93-93'),
('LONEP', 'Lonesome Pine Restaurant', 'Fran Wilson', 'Gerente de ventas', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos', '(503) 555-9573', '(503) 555-9646'),
('MAGAA', 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Gerente de marketing', 'Via Ludovico il Moro 22', 'Bergamo', '', '24100', 'Italia', '035-640230', '035-640231'),
('MAISD', 'Maison Dewey', 'Catherine Dewey', 'Agente de ventas', 'Rue Joseph-Bens 532', 'Bruselas', '', 'B-1180', 'Bélgica', '(02) 201 24 67', '(02) 201 24 68'),
('MEREP', 'Mère Paillarde', 'Jean Fresnière', 'Asistente de marketing', '43 rue St. Laurent', 'Montreal', 'Québec', 'H1J 1C3', 'Canadá', '(514) 555-8054', '(514) 555-8055'),
('MORGK', 'Morgenstern Gesundkost', 'Alexander Feuer', 'Asistente de marketing', 'Heerstr. 22', 'Leipzig', '', '04179', 'Alemania', '0342-023176', ''),
('NORTS', 'North/South', 'Simon Crowther', 'Asistente de ventas', 'South House\r\n300 Queensbridge', 'Londres', '', 'SW7 1RZ', 'Reino Unido', '(171) 555-7733', '(171) 555-2530'),
('OCEAN', 'Océano Atlántico Ltda.', 'Yvonne Moncada', 'Agente de ventas', 'Ing. Gustavo Moncada 8585\r\nPiso 20-A', 'Buenos Aires', '', '1010', 'Argentina', '(1) 135-5333', '(1) 135-5535'),
('OLDWO', 'Old World Delicatessen', 'Rene Phillips', 'Representante de ventas', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos', '(907) 555-7584', '(907) 555-2880'),
('OTTIK', 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Propietario', 'Mehrheimerstr. 369', 'Köln', '', '50739', 'Alemania', '0221-0644327', '0221-0765721'),
('PARIS', 'Paris spécialités', 'Marie Bertrand', 'Propietario', '265, boulevard Charonne', 'París', '', '75012', 'Francia', '(1) 42.34.22.66', '(1) 42.34.22.77'),
('PERIC', 'Pericles Comidas clásicas', 'Guillermo Fernández', 'Representante de ventas', 'Calle Dr. Jorge Cash 321', 'México D.F.', '', '05033', 'México', '(5) 552-3745', '(5) 545-3745'),
('PICCO', 'Piccolo und mehr', 'Georg Pipps', 'Gerente de ventas', 'Geislweg 14', 'Salzburgo', '', '5020', 'Austria', '6562-9722', '6562-9723'),
('PRINI', 'Princesa Isabel Vinhos', 'Isabel de Castro', 'Representante de ventas', 'Estrada da saúde n. 58', 'Lisboa', '', '1756', 'Portugal', '(1) 356-5634', ''),
('QUEDE', 'Que Delícia', 'Bernardo Batista', 'Gerente de contabilidad', 'Rua da Panificadora, 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil', '(21) 555-4252', '(21) 555-4545'),
('QUEEN', 'Queen Cozinha', 'Lúcia Carvalho', 'Asistente de marketing', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brasil', '(11) 555-1189', ''),
('QUICK', 'QUICK-Stop', 'Horst Kloss', 'Gerente de contabilidad', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania', '0372-035188', ''),
('RANCH', 'Rancho grande', 'Sergio Gutiérrez', 'Representante de ventas', 'Av. del Libertador 900', 'Buenos Aires', '', '1010', 'Argentina', '(1) 123-5555', '(1) 123-5556'),
('RATTC', 'Rattlesnake Canyon Grocery', 'Paula Wilson', 'Representante agente ventas', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos', '(505) 555-5939', '(505) 555-3620'),
('REGGC', 'Reggiani Caseifici', 'Maurizio Moroni', 'Asistente de ventas', 'Strada Provinciale 124', 'Reggio Emilia', '', '42100', 'Italia', '0522-556721', '0522-556722'),
('RICAR', 'Ricardo Adocicados', 'Janete Limeira', 'Asistente de agente de ventas', 'Av. Copacabana, 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil', '(21) 555-3412', ''),
('RICSU', 'Richter Supermarkt', 'Michael Holz', 'Gerente de ventas', 'Grenzacherweg 237', 'Génova', '', '1203', 'Suiza', '0897-034214', ''),
('ROMEY', 'Romero y tomillo', 'Alejandra Camino', 'Gerente de contabilidad', 'Gran Vía, 1', 'Madrid', '', '28001', 'España', '(91) 745 6200', '(91) 745 6210'),
('SANTG', 'Santé Gourmet', 'Jonas Bergulfsen', 'Propietario', 'Erling Skakkes gate 78', 'Stavern', '', '4110', 'Noruega', '07-98 92 35', '07-98 92 47'),
('SAVEA', 'Save-a-lot Markets', 'Jose Pavarotti', 'Representante de ventas', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos', '(208) 555-8097', ''),
('SEVES', 'Seven Seas Imports', 'Hari Kumar', 'Gerente de ventas', '90 Wadhurst Rd.', 'Londres', '', 'OX15 4NB', 'Reino Unido', '(171) 555-1717', '(171) 555-5646'),
('SIMOB', 'Simons bistro', 'Jytte Petersen', 'Propietario', 'Vinbæltet 34', 'København', '', '1734', 'Dinamarca', '31 12 34 56', '31 13 35 57'),
('SPECD', 'Spécialités du monde', 'Dominique Perrier', 'Gerente de marketing', '25, rue Lauriston', 'París', '', '75016', 'Francia', '(1) 47.55.60.10', '(1) 47.55.60.20'),
('SPLIR', 'Split Rail Beer & Ale', 'Art Braunschweiger', 'Gerente de ventas', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos', '(307) 555-4680', '(307) 555-6525'),
('SUPRD', 'Suprêmes délices', 'Pascale Cartrain', 'Gerente de contabilidad', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Bélgica', '(071) 23 67 22 20', '(071) 23 67 22 21'),
('THEBI', 'The Big Cheese', 'Liz Nixon', 'Gerente de marketing', '89 Jefferson Way\r\nSuite 2', 'Portland', 'OR', '97201', 'Estados Unidos', '(503) 555-3612', ''),
('THECR', 'The Cracker Box', 'Liu Wong', 'Asistente de marketing', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'Estados Unidos', '(406) 555-5834', '(406) 555-8083'),
('TOMSP', 'Toms Spezialitäten', 'Karin Josephs', 'Gerente de marketing', 'Luisenstr. 48', 'Münster', '', '44087', 'Alemania', '0251-031259', '0251-035695'),
('TORTU', 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Propietario', 'Avda. Azteca 123', 'México D.F.', '', '05033', 'México', '(5) 555-2933', ''),
('TRADH', 'Tradição Hipermercados', 'Anabela Domingues', 'Representante de ventas', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brasil', '(11) 555-2167', '(11) 555-2168'),
('TRAIH', 'Trail\'s Head Gourmet Provisioners', 'Helvetius Nagy', 'Asistente de ventas', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'Estados Unidos', '(206) 555-8257', '(206) 555-2174'),
('VAFFE', 'Vaffeljernet', 'Palle Ibsen', 'Gerente de ventas', 'Smagsløget 45', 'Århus', '', '8200', 'Dinamarca', '86 21 32 43', '86 22 33 44'),
('VICTE', 'Victuailles en stock', 'Mary Saveley', 'Agente de ventas', '2, rue du Commerce', 'Lyon', '', '69004', 'Francia', '78.32.54.86', '78.32.54.87'),
('VINET', 'Vins et alcools Chevalier', 'Paul Henriot', 'Gerente de contabilidad', '59 rue de l\'Abbaye', 'Reims', '', '51100', 'Francia', '26.47.15.10', '26.47.15.11'),
('WANDK', 'Die Wandernde Kuh', 'Rita Müller', 'Representante de ventas', 'Adenauerallee 900', 'Stuttgart', '', '70563', 'Alemania', '0711-020361', '0711-035428'),
('WARTH', 'Wartian Herkku', 'Pirkko Koskitalo', 'Gerente de contabilidad', 'Torikatu 38', 'Oulu', '', '90110', 'Finlandia', '981-443655', '981-443655'),
('WELLI', 'Wellington Importadora', 'Paula Parente', 'Gerente de ventas', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brasil', '(14) 555-8122', ''),
('WHITC', 'White Clover Markets', 'Karl Jablonski', 'Propietario', '305 - 14th Ave. S.\r\nSuite 3B', 'Seattle', 'WA', '98128', 'Estados Unidos', '(206) 555-4112', '(206) 555-4115'),
('WILMK', 'Wilman Kala', 'Matti Karttunen', 'Propietario/Asistente marketin', 'Keskuskatu 45', 'Helsinki', '', '21240', 'Finlandia', '90-224 8858', '90-224 8858'),
('WOLZA', 'Wolski  Zajazd', 'Zbyszek Piestrzeniewicz', 'Propietario', 'ul. Filtrowa 68', 'Warszawa', '', '01-012', 'Polonia', '(26) 642-7012', '(26) 642-7012');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companiasenvio`
--

CREATE TABLE `companiasenvio` (
  `IdCompaniaEnvio` int(10) UNSIGNED NOT NULL,
  `NombreCompania` varchar(40) NOT NULL DEFAULT '',
  `Telefono` varchar(24) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `companiasenvio`
--

INSERT INTO `companiasenvio` (`IdCompaniaEnvio`, `NombreCompania`, `Telefono`) VALUES
(1, 'Speedy Express', '(503) 555-9831'),
(2, 'United Package', '(503) 555-3199'),
(3, 'Federal Shipping', '(503) 555-9931');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `IdEmpleado` int(10) UNSIGNED NOT NULL,
  `Apellido` varchar(20) NOT NULL DEFAULT '',
  `Nombre` varchar(10) NOT NULL DEFAULT '',
  `Cargo` varchar(30) NOT NULL DEFAULT '',
  `Tratamiento` varchar(25) NOT NULL DEFAULT '',
  `FechaNacimiento` datetime NOT NULL,
  `FechaContratacion` datetime NOT NULL,
  `Direccion` varchar(60) NOT NULL DEFAULT '',
  `Ciudad` varchar(15) NOT NULL DEFAULT '',
  `Region` varchar(15) NOT NULL DEFAULT '',
  `CodigoPostal` varchar(10) NOT NULL DEFAULT '',
  `Pais` varchar(15) NOT NULL DEFAULT '',
  `TelefonoDomicilio` varchar(24) NOT NULL DEFAULT '',
  `Extension` varchar(4) NOT NULL DEFAULT '',
  `Foto` varchar(50) NOT NULL DEFAULT '',
  `Notas` mediumtext,
  `Jefe` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`IdEmpleado`, `Apellido`, `Nombre`, `Cargo`, `Tratamiento`, `FechaNacimiento`, `FechaContratacion`, `Direccion`, `Ciudad`, `Region`, `CodigoPostal`, `Pais`, `TelefonoDomicilio`, `Extension`, `Foto`, `Notas`, `Jefe`) VALUES
(1, 'Davolio', 'Nancy', 'Representante de ventas', 'Srta.', '1968-12-08 00:00:00', '1992-05-01 00:00:00', '507 - 20th Ave. E.\r\nApt. 2A', 'Seattle', 'WA', '98122', 'Estados Unidos', '(206) 555-9857', '5467', 'nancy.jpg', 'Su formación incluye una licenciatura en Psicología por la Universidad del Estado de Colorado. También escribió \"El arte de la llamada en frío\". Nancy es miembro de Toastmasters International.', 2),
(2, 'Fuller', 'Andrew', 'Vicepresidente comercial', 'Dr.', '1952-02-19 00:00:00', '1992-08-14 00:00:00', '908 W. Capital Way', 'Tacoma', 'WA', '98401', 'Estados Unidos', '(206) 555-9482', '3457', 'andrew.jpg', 'Andrew completó su licenciatura en Comercio y un doctorado en Marketing Internacional de la Universidad de Dallas. Habla con fluidez en francés e italiano y lee el alemán. Ingresó en la empresa como representante de ventas, fue ascendido a gerente de cuentas y después fue nombrado vicepresidente comercial.', NULL),
(3, 'Leverling', 'Janet', 'Representante de ventas', 'Srta.', '1963-08-30 00:00:00', '1992-04-01 00:00:00', '722 Moss Bay Blvd.', 'Kirkland', 'WA', '98033', 'Estados Unidos', '(206) 555-3412', '3355', 'janet.jpg', 'Janet has a BS degree in chemistry from Boston College).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate and was promoted to sales representative.', 2),
(4, 'Peacock', 'Margaret', 'Representante de ventas', 'Sra.', '1958-09-19 00:00:00', '1993-05-03 00:00:00', '4110 Old Redmond Rd.', 'Redmond', 'WA', '98052', 'Estados Unidos', '(206) 555-8122', '5176', 'margaret.jpg', 'Margaret es licenciada en Literatura inglesa por el Colegio Universitario Concordia, y tiene un máster del Instituto Americano de Artes Culinarias. Estuvo asignada temporalmente a la oficina de Londres antes de regresar a su puesto permanente en Seattle.a como vendedora asociada y fue ascendida a representante de ventas.', 2),
(5, 'Buchanan', 'Steven', 'Gerente de ventas', 'Sr.', '1955-03-04 00:00:00', '1993-10-17 00:00:00', '14 Garrett Hill', 'Londres', '', 'SW1 8JR', 'Reino Unido', '(71) 555-4848', '3453', 'steven.jpg', 'Steven Buchanan se graduó en la Universidad de St. Andrews, Escocia. Tras su ingreso en la empresa dedicó 6 meses a un programa de orientación en la oficina de Seattle y luego volvió a su puesto permanente en Londres, donde fue ascendido a gerente de ventas. Completó con éxito los cursos de Telemarketing y Gestión de ventas ', 2),
(6, 'Suyama', 'Michael', 'Representante de ventas', 'Sr.', '1963-07-02 00:00:00', '1993-10-17 00:00:00', 'Coventry House\r\nMiner Rd.', 'Londres', '', 'EC2 7JR', 'Reino Unido', '(71) 555-7773', '428', 'michael.jpg', 'Michael se graduó en la Universidad de Sussex (MA, economía) y la Universidad de California en Los Angeles (MBA, marketing). También ha asistido a cursos de Ventas multiculturales y Administración del tiempo para profesionales de ventas. Habla', 5),
(7, 'King', 'Robert', 'Representante de ventas', 'Sr.', '1960-05-29 00:00:00', '1994-01-02 00:00:00', 'Edgeham Hollow\r\nWinchester Way', 'Londres', '', 'RG1 9SP', 'Reino Unido', '(71) 555-5598', '465', 'robert.jpg', 'Robert King colaboró en la organización Peace Corps y viajó extensamente antes de completar su licenciatura en inglés en la Universidad de Michigan, el año en que ingresó en la empresa. Después de completar un curso denominado \"Ventas en Europa\", fue', 5),
(8, 'Callahan', 'Laura', 'Coordinador ventas interno', 'Srta.', '1958-01-09 00:00:00', '1994-03-05 00:00:00', '4726 - 11th Ave. N.E.', 'Seattle', 'WA', '98105', 'Estados Unidos', '(206) 555-1189', '2344', 'laura.jpg', 'Laura se graduó en Psicología por la Universidad de Washington. También completó un curso de francés de negocios. Lee y escribe en francés.', 2),
(9, 'Dodsworth', 'Anne', 'Representante de ventas', 'Srta.', '1969-07-02 00:00:00', '1994-11-15 00:00:00', '7 Houndstooth Rd.', 'Londres', '', 'WG2 7LT', 'Reino Unido', '(71) 555-4444', '452', 'anne.jpg', 'Anne tiene una licenciatura en inglés por el  St. Lawrence College.  Habla con fluidez el francés y el alemán.', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_territorio`
--

CREATE TABLE `empleado_territorio` (
  `IdEmpleado` int(10) UNSIGNED NOT NULL,
  `IdTerritorio` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleado_territorio`
--

INSERT INTO `empleado_territorio` (`IdEmpleado`, `IdTerritorio`) VALUES
(1, '19713'),
(2, '01581'),
(2, '01730'),
(2, '01833'),
(2, '02116'),
(2, '02139'),
(2, '02184'),
(2, '40222'),
(3, '30346'),
(3, '31406'),
(3, '32859'),
(3, '33607'),
(4, '20852'),
(4, '27403'),
(4, '27511'),
(5, '02903'),
(5, '07960'),
(5, '08837'),
(5, '10019'),
(5, '10038'),
(5, '11747'),
(5, '14450'),
(6, '85014'),
(6, '85251'),
(6, '98004'),
(6, '98052'),
(6, '98104'),
(7, '60179'),
(7, '60601'),
(7, '80202'),
(7, '80909'),
(7, '90405'),
(7, '94025'),
(7, '94105'),
(7, '95008'),
(7, '95054'),
(7, '95060'),
(8, '19428'),
(8, '44122'),
(8, '45839'),
(8, '53404'),
(9, '03049'),
(9, '03801'),
(9, '48075'),
(9, '48084'),
(9, '48304'),
(9, '55113'),
(9, '55439');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `IdPedido` int(10) UNSIGNED NOT NULL,
  `IdCliente` varchar(5) NOT NULL DEFAULT '',
  `IdEmpleado` int(10) UNSIGNED NOT NULL,
  `FechaPedido` datetime NOT NULL,
  `FechaEntrega` datetime DEFAULT NULL,
  `FechaEnvio` datetime DEFAULT NULL,
  `EnviadoVia` int(10) UNSIGNED NOT NULL,
  `Flete` double NOT NULL DEFAULT '0',
  `NombreDestinatario` varchar(40) NOT NULL DEFAULT '',
  `DireccionDestinatario` varchar(60) NOT NULL DEFAULT '',
  `CiudadDestino` varchar(15) NOT NULL DEFAULT '',
  `RegionDestino` varchar(15) NOT NULL DEFAULT '',
  `CodigoPostalDestinatario` varchar(10) NOT NULL DEFAULT '',
  `PaisDestino` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`IdPedido`, `IdCliente`, `IdEmpleado`, `FechaPedido`, `FechaEntrega`, `FechaEnvio`, `EnviadoVia`, `Flete`, `NombreDestinatario`, `DireccionDestinatario`, `CiudadDestino`, `RegionDestino`, `CodigoPostalDestinatario`, `PaisDestino`) VALUES
(10248, 'VINET', 5, '1996-07-04 00:00:00', '1996-08-01 00:00:00', '1996-07-16 00:00:00', 3, 32.38, 'Vins et alcools Chevalier', '59 rue de l\'Abbaye', 'Reims', '', '51100', 'Francia'),
(10249, 'TOMSP', 6, '1996-07-05 00:00:00', '1996-08-16 00:00:00', '1996-07-10 00:00:00', 1, 11.61, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', '', '44087', 'Alemania'),
(10250, 'HANAR', 4, '1996-07-08 00:00:00', '1996-08-05 00:00:00', '1996-07-12 00:00:00', 2, 65.83, 'Hanari Carnes', 'Rua do Paço, 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10251, 'VICTE', 3, '1996-07-08 00:00:00', '1996-08-05 00:00:00', '1996-07-15 00:00:00', 1, 41.34, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', '', '69004', 'Francia'),
(10252, 'SUPRD', 4, '1996-07-09 00:00:00', '1996-08-06 00:00:00', '1996-07-11 00:00:00', 2, 51.3, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Bélgica'),
(10253, 'HANAR', 3, '1996-07-10 00:00:00', '1996-07-24 00:00:00', '1996-07-16 00:00:00', 2, 58.17, 'Hanari Carnes', 'Rua do Paço, 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10254, 'CHOPS', 5, '1996-07-11 00:00:00', '1996-08-08 00:00:00', '1996-07-23 00:00:00', 2, 22.98, 'Chop-suey Chinese', 'Hauptstr. 31', 'Berna', '', '3012', 'Suiza'),
(10255, 'RICSU', 9, '1996-07-12 00:00:00', '1996-08-09 00:00:00', '1996-07-15 00:00:00', 3, 148.33, 'Richter Supermarkt', 'Starenweg 5', 'Génova', '', '1204', 'Suiza'),
(10256, 'WELLI', 3, '1996-07-15 00:00:00', '1996-08-12 00:00:00', '1996-07-17 00:00:00', 2, 13.97, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10257, 'HILAA', 4, '1996-07-16 00:00:00', '1996-08-13 00:00:00', '1996-07-22 00:00:00', 3, 81.91, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10258, 'ERNSH', 1, '1996-07-17 00:00:00', '1996-08-14 00:00:00', '1996-07-23 00:00:00', 1, 140.51, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10259, 'CENTC', 4, '1996-07-18 00:00:00', '1996-08-15 00:00:00', '1996-07-25 00:00:00', 3, 3.25, 'Centro comercial Moctezuma', 'Sierras de Granada 9993', 'México D.F.', '', '05022', 'México'),
(10260, 'OTTIK', 4, '1996-07-19 00:00:00', '1996-08-16 00:00:00', '1996-07-29 00:00:00', 1, 55.09, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', '', '50739', 'Alemania'),
(10261, 'QUEDE', 4, '1996-07-19 00:00:00', '1996-08-16 00:00:00', '1996-07-30 00:00:00', 2, 3.05, 'Que Delícia', 'Rua da Panificadora, 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10262, 'RATTC', 8, '1996-07-22 00:00:00', '1996-08-19 00:00:00', '1996-07-25 00:00:00', 3, 48.29, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10263, 'ERNSH', 9, '1996-07-23 00:00:00', '1996-08-20 00:00:00', '1996-07-31 00:00:00', 3, 146.06, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10264, 'FOLKO', 6, '1996-07-24 00:00:00', '1996-08-21 00:00:00', '1996-08-23 00:00:00', 3, 3.67, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(10265, 'BLONP', 2, '1996-07-25 00:00:00', '1996-08-22 00:00:00', '1996-08-12 00:00:00', 1, 55.28, 'Blondel père et fils', '24, place Kléber', 'Estrasburgo', '', '67000', 'Francia'),
(10266, 'WARTH', 3, '1996-07-26 00:00:00', '1996-09-06 00:00:00', '1996-07-31 00:00:00', 3, 25.73, 'Wartian Herkku', 'Torikatu 38', 'Oulu', '', '90110', 'Finlandia'),
(10267, 'FRANK', 4, '1996-07-29 00:00:00', '1996-08-26 00:00:00', '1996-08-06 00:00:00', 1, 208.58, 'Frankenversand', 'Berliner Platz 43', 'München', '', '80805', 'Alemania'),
(10268, 'GROSR', 8, '1996-07-30 00:00:00', '1996-08-27 00:00:00', '1996-08-02 00:00:00', 3, 66.29, 'GROSELLA-Restaurante', '5ª Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela'),
(10269, 'WHITC', 5, '1996-07-31 00:00:00', '1996-08-14 00:00:00', '1996-08-09 00:00:00', 1, 4.56, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10270, 'WARTH', 1, '1996-08-01 00:00:00', '1996-08-29 00:00:00', '1996-08-02 00:00:00', 1, 136.54, 'Wartian Herkku', 'Torikatu 38', 'Oulu', '', '90110', 'Finlandia'),
(10271, 'SPLIR', 6, '1996-08-01 00:00:00', '1996-08-29 00:00:00', '1996-08-30 00:00:00', 2, 4.54, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10272, 'RATTC', 6, '1996-08-02 00:00:00', '1996-08-30 00:00:00', '1996-08-06 00:00:00', 2, 98.03, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10273, 'QUICK', 3, '1996-08-05 00:00:00', '1996-09-02 00:00:00', '1996-08-12 00:00:00', 3, 76.07, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10274, 'VINET', 6, '1996-08-06 00:00:00', '1996-09-03 00:00:00', '1996-08-16 00:00:00', 1, 6.01, 'Vins et alcools Chevalier', '59 rue de l\'Abbaye', 'Reims', '', '51100', 'Francia'),
(10275, 'MAGAA', 1, '1996-08-07 00:00:00', '1996-09-04 00:00:00', '1996-08-09 00:00:00', 1, 26.93, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', '', '24100', 'Italia'),
(10276, 'TORTU', 8, '1996-08-08 00:00:00', '1996-08-22 00:00:00', '1996-08-14 00:00:00', 3, 13.84, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', '', '05033', 'México'),
(10277, 'MORGK', 2, '1996-08-09 00:00:00', '1996-09-06 00:00:00', '1996-08-13 00:00:00', 3, 125.77, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', '', '04179', 'Alemania'),
(10278, 'BERGS', 8, '1996-08-12 00:00:00', '1996-09-09 00:00:00', '1996-08-16 00:00:00', 2, 92.69, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10279, 'LEHMS', 8, '1996-08-13 00:00:00', '1996-09-10 00:00:00', '1996-08-16 00:00:00', 2, 25.83, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', '', '60528', 'Alemania'),
(10280, 'BERGS', 2, '1996-08-14 00:00:00', '1996-09-11 00:00:00', '1996-09-12 00:00:00', 1, 8.98, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10281, 'ROMEY', 4, '1996-08-14 00:00:00', '1996-08-28 00:00:00', '1996-08-21 00:00:00', 1, 2.94, 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', '', '28001', 'España'),
(10282, 'ROMEY', 4, '1996-08-15 00:00:00', '1996-09-12 00:00:00', '1996-08-21 00:00:00', 1, 12.69, 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', '', '28001', 'España'),
(10283, 'LILAS', 3, '1996-08-16 00:00:00', '1996-09-13 00:00:00', '1996-08-23 00:00:00', 3, 84.81, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10284, 'LEHMS', 4, '1996-08-19 00:00:00', '1996-09-16 00:00:00', '1996-08-27 00:00:00', 1, 76.56, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', '', '60528', 'Alemania'),
(10285, 'QUICK', 1, '1996-08-20 00:00:00', '1996-09-17 00:00:00', '1996-08-26 00:00:00', 2, 76.83, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10286, 'QUICK', 8, '1996-08-21 00:00:00', '1996-09-18 00:00:00', '1996-08-30 00:00:00', 3, 229.24, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10287, 'RICAR', 8, '1996-08-22 00:00:00', '1996-09-19 00:00:00', '1996-08-28 00:00:00', 3, 12.76, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10288, 'REGGC', 4, '1996-08-23 00:00:00', '1996-09-20 00:00:00', '1996-09-03 00:00:00', 1, 7.45, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', '', '42100', 'Italia'),
(10289, 'BSBEV', 7, '1996-08-26 00:00:00', '1996-09-23 00:00:00', '1996-08-28 00:00:00', 3, 22.77, 'B\'s Beverages', 'Fauntleroy Circus', 'Londres', '', 'EC2 5NT', 'Reino Unido'),
(10290, 'COMMI', 8, '1996-08-27 00:00:00', '1996-09-24 00:00:00', '1996-09-03 00:00:00', 1, 79.7, 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brasil'),
(10291, 'QUEDE', 6, '1996-08-27 00:00:00', '1996-09-24 00:00:00', '1996-09-04 00:00:00', 2, 6.4, 'Que Delícia', 'Rua da Panificadora, 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10292, 'TRADH', 1, '1996-08-28 00:00:00', '1996-09-25 00:00:00', '1996-09-02 00:00:00', 2, 1.35, 'Tradição Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brasil'),
(10293, 'TORTU', 1, '1996-08-29 00:00:00', '1996-09-26 00:00:00', '1996-09-11 00:00:00', 3, 21.18, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', '', '05033', 'México'),
(10294, 'RATTC', 4, '1996-08-30 00:00:00', '1996-09-27 00:00:00', '1996-09-05 00:00:00', 2, 147.26, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10295, 'VINET', 2, '1996-09-02 00:00:00', '1996-09-30 00:00:00', '1996-09-10 00:00:00', 2, 1.15, 'Vins et alcools Chevalier', '59 rue de l\'Abbaye', 'Reims', '', '51100', 'Francia'),
(10296, 'LILAS', 6, '1996-09-03 00:00:00', '1996-10-01 00:00:00', '1996-09-11 00:00:00', 1, 0.12, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10297, 'BLONP', 5, '1996-09-04 00:00:00', '1996-10-16 00:00:00', '1996-09-10 00:00:00', 2, 5.74, 'Blondel père et fils', '24, place Kléber', 'Estrasburgo', '', '67000', 'Francia'),
(10298, 'HUNGO', 6, '1996-09-05 00:00:00', '1996-10-03 00:00:00', '1996-09-11 00:00:00', 2, 168.22, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10299, 'RICAR', 4, '1996-09-06 00:00:00', '1996-10-04 00:00:00', '1996-09-13 00:00:00', 2, 29.76, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10300, 'MAGAA', 2, '1996-09-09 00:00:00', '1996-10-07 00:00:00', '1996-09-18 00:00:00', 2, 17.68, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', '', '24100', 'Italia'),
(10301, 'WANDK', 8, '1996-09-09 00:00:00', '1996-10-07 00:00:00', '1996-09-17 00:00:00', 2, 45.08, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', '', '70563', 'Alemania'),
(10302, 'SUPRD', 4, '1996-09-10 00:00:00', '1996-10-08 00:00:00', '1996-10-09 00:00:00', 2, 6.27, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Bélgica'),
(10303, 'GODOS', 7, '1996-09-11 00:00:00', '1996-10-09 00:00:00', '1996-09-18 00:00:00', 2, 107.83, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', '', '41101', 'España'),
(10304, 'TORTU', 1, '1996-09-12 00:00:00', '1996-10-10 00:00:00', '1996-09-17 00:00:00', 2, 63.79, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', '', '05033', 'México'),
(10305, 'OLDWO', 8, '1996-09-13 00:00:00', '1996-10-11 00:00:00', '1996-10-09 00:00:00', 3, 257.62, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10306, 'ROMEY', 1, '1996-09-16 00:00:00', '1996-10-14 00:00:00', '1996-09-23 00:00:00', 3, 7.56, 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', '', '28001', 'España'),
(10307, 'LONEP', 2, '1996-09-17 00:00:00', '1996-10-15 00:00:00', '1996-09-25 00:00:00', 2, 0.56, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos'),
(10308, 'ANATR', 7, '1996-09-18 00:00:00', '1996-10-16 00:00:00', '1996-09-24 00:00:00', 3, 1.61, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', '', '05021', 'México'),
(10309, 'HUNGO', 3, '1996-09-19 00:00:00', '1996-10-17 00:00:00', '1996-10-23 00:00:00', 1, 47.3, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10310, 'THEBI', 8, '1996-09-20 00:00:00', '1996-10-18 00:00:00', '1996-09-27 00:00:00', 2, 17.52, 'The Big Cheese', '89 Jefferson Way\r\nSuite 2', 'Portland', 'OR', '97201', 'Estados Unidos'),
(10311, 'DUMON', 1, '1996-09-20 00:00:00', '1996-10-04 00:00:00', '1996-09-26 00:00:00', 3, 24.69, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', '', '44000', 'Francia'),
(10312, 'WANDK', 2, '1996-09-23 00:00:00', '1996-10-21 00:00:00', '1996-10-03 00:00:00', 2, 40.26, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', '', '70563', 'Alemania'),
(10313, 'QUICK', 2, '1996-09-24 00:00:00', '1996-10-22 00:00:00', '1996-10-04 00:00:00', 2, 1.96, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10314, 'RATTC', 1, '1996-09-25 00:00:00', '1996-10-23 00:00:00', '1996-10-04 00:00:00', 2, 74.16, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10315, 'ISLAT', 4, '1996-09-26 00:00:00', '1996-10-24 00:00:00', '1996-10-03 00:00:00', 2, 41.76, 'Island Trading', 'Garden House\r\nCrowther Way', 'Cowes', 'Isla de Wight', 'PO31 7PJ', 'Reino Unido'),
(10316, 'RATTC', 1, '1996-09-27 00:00:00', '1996-10-25 00:00:00', '1996-10-08 00:00:00', 3, 150.15, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10317, 'LONEP', 6, '1996-09-30 00:00:00', '1996-10-28 00:00:00', '1996-10-10 00:00:00', 1, 12.69, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos'),
(10318, 'ISLAT', 8, '1996-10-01 00:00:00', '1996-10-29 00:00:00', '1996-10-04 00:00:00', 2, 4.73, 'Island Trading', 'Garden House\r\nCrowther Way', 'Cowes', 'Isla de Wight', 'PO31 7PJ', 'Reino Unido'),
(10319, 'TORTU', 7, '1996-10-02 00:00:00', '1996-10-30 00:00:00', '1996-10-11 00:00:00', 3, 64.5, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', '', '05033', 'México'),
(10320, 'WARTH', 5, '1996-10-03 00:00:00', '1996-10-17 00:00:00', '1996-10-18 00:00:00', 3, 34.57, 'Wartian Herkku', 'Torikatu 38', 'Oulu', '', '90110', 'Finlandia'),
(10321, 'ISLAT', 3, '1996-10-03 00:00:00', '1996-10-31 00:00:00', '1996-10-11 00:00:00', 2, 3.43, 'Island Trading', 'Garden House\r\nCrowther Way', 'Cowes', 'Isla de Wight', 'PO31 7PJ', 'Reino Unido'),
(10322, 'PERIC', 7, '1996-10-04 00:00:00', '1996-11-01 00:00:00', '1996-10-23 00:00:00', 3, 0.4, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', '', '05033', 'México'),
(10323, 'KOENE', 4, '1996-10-07 00:00:00', '1996-11-04 00:00:00', '1996-10-14 00:00:00', 1, 4.88, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburgo', '', '14776', 'Alemania'),
(10324, 'SAVEA', 9, '1996-10-08 00:00:00', '1996-11-05 00:00:00', '1996-10-10 00:00:00', 1, 214.27, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10325, 'KOENE', 1, '1996-10-09 00:00:00', '1996-10-23 00:00:00', '1996-10-14 00:00:00', 3, 64.86, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburgo', '', '14776', 'Alemania'),
(10326, 'BOLID', 4, '1996-10-10 00:00:00', '1996-11-07 00:00:00', '1996-10-14 00:00:00', 2, 77.92, 'Bólido Comidas preparadas', 'C/ Araquil, 67', 'Madrid', '', '28023', 'España'),
(10327, 'FOLKO', 2, '1996-10-11 00:00:00', '1996-11-08 00:00:00', '1996-10-14 00:00:00', 1, 63.36, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(10328, 'FURIB', 4, '1996-10-14 00:00:00', '1996-11-11 00:00:00', '1996-10-17 00:00:00', 3, 87.03, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', '', '1675', 'Portugal'),
(10329, 'SPLIR', 4, '1996-10-15 00:00:00', '1996-11-26 00:00:00', '1996-10-23 00:00:00', 2, 191.67, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10330, 'LILAS', 3, '1996-10-16 00:00:00', '1996-11-13 00:00:00', '1996-10-28 00:00:00', 1, 12.75, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10331, 'BONAP', 9, '1996-10-16 00:00:00', '1996-11-27 00:00:00', '1996-10-21 00:00:00', 1, 10.19, 'Bon app\'', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia'),
(10332, 'MEREP', 3, '1996-10-17 00:00:00', '1996-11-28 00:00:00', '1996-10-21 00:00:00', 2, 52.84, 'Mère Paillarde', '43 rue St. Laurent', 'Montreal', 'Québec', 'H1J 1C3', 'Canadá'),
(10333, 'WARTH', 5, '1996-10-18 00:00:00', '1996-11-15 00:00:00', '1996-10-25 00:00:00', 3, 0.59, 'Wartian Herkku', 'Torikatu 38', 'Oulu', '', '90110', 'Finlandia'),
(10334, 'VICTE', 8, '1996-10-21 00:00:00', '1996-11-18 00:00:00', '1996-10-28 00:00:00', 2, 8.56, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', '', '69004', 'Francia'),
(10335, 'HUNGO', 7, '1996-10-22 00:00:00', '1996-11-19 00:00:00', '1996-10-24 00:00:00', 2, 42.11, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10336, 'PRINI', 7, '1996-10-23 00:00:00', '1996-11-20 00:00:00', '1996-10-25 00:00:00', 2, 15.51, 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', '', '1756', 'Portugal'),
(10337, 'FRANK', 4, '1996-10-24 00:00:00', '1996-11-21 00:00:00', '1996-10-29 00:00:00', 3, 108.26, 'Frankenversand', 'Berliner Platz 43', 'München', '', '80805', 'Alemania'),
(10338, 'OLDWO', 4, '1996-10-25 00:00:00', '1996-11-22 00:00:00', '1996-10-29 00:00:00', 3, 84.21, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10339, 'MEREP', 2, '1996-10-28 00:00:00', '1996-11-25 00:00:00', '1996-11-04 00:00:00', 2, 15.66, 'Mère Paillarde', '43 rue St. Laurent', 'Montreal', 'Québec', 'H1J 1C3', 'Canadá'),
(10340, 'BONAP', 1, '1996-10-29 00:00:00', '1996-11-26 00:00:00', '1996-11-08 00:00:00', 3, 166.31, 'Bon app\'', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia'),
(10341, 'SIMOB', 7, '1996-10-29 00:00:00', '1996-11-26 00:00:00', '1996-11-05 00:00:00', 3, 26.78, 'Simons bistro', 'Vinbæltet 34', 'København', '', '1734', 'Dinamarca'),
(10342, 'FRANK', 4, '1996-10-30 00:00:00', '1996-11-13 00:00:00', '1996-11-04 00:00:00', 2, 54.83, 'Frankenversand', 'Berliner Platz 43', 'München', '', '80805', 'Alemania'),
(10343, 'LEHMS', 4, '1996-10-31 00:00:00', '1996-11-28 00:00:00', '1996-11-06 00:00:00', 1, 110.37, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', '', '60528', 'Alemania'),
(10344, 'WHITC', 4, '1996-11-01 00:00:00', '1996-11-29 00:00:00', '1996-11-05 00:00:00', 2, 23.29, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10345, 'QUICK', 2, '1996-11-04 00:00:00', '1996-12-02 00:00:00', '1996-11-11 00:00:00', 2, 249.06, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10346, 'RATTC', 3, '1996-11-05 00:00:00', '1996-12-17 00:00:00', '1996-11-08 00:00:00', 3, 142.08, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10347, 'FAMIA', 4, '1996-11-06 00:00:00', '1996-12-04 00:00:00', '1996-11-08 00:00:00', 3, 3.1, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brasil'),
(10348, 'WANDK', 4, '1996-11-07 00:00:00', '1996-12-05 00:00:00', '1996-11-15 00:00:00', 2, 0.78, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', '', '70563', 'Alemania'),
(10349, 'SPLIR', 7, '1996-11-08 00:00:00', '1996-12-06 00:00:00', '1996-11-15 00:00:00', 1, 8.63, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10350, 'LAMAI', 6, '1996-11-11 00:00:00', '1996-12-09 00:00:00', '1996-12-03 00:00:00', 2, 64.19, 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'Francia'),
(10351, 'ERNSH', 1, '1996-11-11 00:00:00', '1996-12-09 00:00:00', '1996-11-20 00:00:00', 1, 162.33, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10352, 'FURIB', 3, '1996-11-12 00:00:00', '1996-11-26 00:00:00', '1996-11-18 00:00:00', 3, 1.3, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', '', '1675', 'Portugal'),
(10353, 'PICCO', 7, '1996-11-13 00:00:00', '1996-12-11 00:00:00', '1996-11-25 00:00:00', 3, 360.63, 'Piccolo und mehr', 'Geislweg 14', 'Salzburgo', '', '5020', 'Austria'),
(10354, 'PERIC', 8, '1996-11-14 00:00:00', '1996-12-12 00:00:00', '1996-11-20 00:00:00', 3, 53.8, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', '', '05033', 'México'),
(10355, 'AROUT', 6, '1996-11-15 00:00:00', '1996-12-13 00:00:00', '1996-11-20 00:00:00', 1, 41.95, 'Around the Horn', 'Brook Farm\r\nStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10356, 'WANDK', 6, '1996-11-18 00:00:00', '1996-12-16 00:00:00', '1996-11-27 00:00:00', 2, 36.71, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', '', '70563', 'Alemania'),
(10357, 'LILAS', 1, '1996-11-19 00:00:00', '1996-12-17 00:00:00', '1996-12-02 00:00:00', 3, 34.88, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10358, 'LAMAI', 5, '1996-11-20 00:00:00', '1996-12-18 00:00:00', '1996-11-27 00:00:00', 1, 19.64, 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'Francia'),
(10359, 'SEVES', 5, '1996-11-21 00:00:00', '1996-12-19 00:00:00', '1996-11-26 00:00:00', 3, 288.43, 'Seven Seas Imports', '90 Wadhurst Rd.', 'Londres', '', 'OX15 4NB', 'Reino Unido'),
(10360, 'BLONP', 4, '1996-11-22 00:00:00', '1996-12-20 00:00:00', '1996-12-02 00:00:00', 3, 131.7, 'Blondel père et fils', '24, place Kléber', 'Estrasburgo', '', '67000', 'Francia'),
(10361, 'QUICK', 1, '1996-11-22 00:00:00', '1996-12-20 00:00:00', '1996-12-03 00:00:00', 2, 183.17, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10362, 'BONAP', 3, '1996-11-25 00:00:00', '1996-12-23 00:00:00', '1996-11-28 00:00:00', 1, 96.04, 'Bon app\'', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia'),
(10363, 'DRACD', 4, '1996-11-26 00:00:00', '1996-12-24 00:00:00', '1996-12-04 00:00:00', 3, 30.54, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', '', '52066', 'Alemania'),
(10364, 'EASTC', 1, '1996-11-26 00:00:00', '1997-01-07 00:00:00', '1996-12-04 00:00:00', 1, 71.97, 'Eastern Connection', '35 King George', 'Londres', '', 'WX3 6FW', 'Reino Unido'),
(10365, 'ANTON', 3, '1996-11-27 00:00:00', '1996-12-25 00:00:00', '1996-12-02 00:00:00', 2, 22, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', '', '05023', 'México'),
(10366, 'GALED', 8, '1996-11-28 00:00:00', '1997-01-09 00:00:00', '1996-12-30 00:00:00', 2, 10.14, 'Galería del gastronómo', 'Rambla de Cataluña, 23', 'Barcelona', '', '8022', 'España'),
(10367, 'VAFFE', 7, '1996-11-28 00:00:00', '1996-12-26 00:00:00', '1996-12-02 00:00:00', 3, 13.55, 'Vaffeljernet', 'Smagsløget 45', 'Århus', '', '8200', 'Dinamarca'),
(10368, 'ERNSH', 2, '1996-11-29 00:00:00', '1996-12-27 00:00:00', '1996-12-02 00:00:00', 2, 101.95, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10369, 'SPLIR', 8, '1996-12-02 00:00:00', '1996-12-30 00:00:00', '1996-12-09 00:00:00', 2, 195.68, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10370, 'CHOPS', 6, '1996-12-03 00:00:00', '1996-12-31 00:00:00', '1996-12-27 00:00:00', 2, 1.17, 'Chop-suey Chinese', 'Hauptstr. 31', 'Berna', '', '3012', 'Suiza'),
(10371, 'LAMAI', 1, '1996-12-03 00:00:00', '1996-12-31 00:00:00', '1996-12-24 00:00:00', 1, 0.45, 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'Francia'),
(10372, 'QUEEN', 5, '1996-12-04 00:00:00', '1997-01-01 00:00:00', '1996-12-09 00:00:00', 2, 890.78, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brasil'),
(10373, 'HUNGO', 4, '1996-12-05 00:00:00', '1997-01-02 00:00:00', '1996-12-11 00:00:00', 3, 124.12, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10374, 'WOLZA', 1, '1996-12-05 00:00:00', '1997-01-02 00:00:00', '1996-12-09 00:00:00', 3, 3.94, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', '', '01-012', 'Polonia'),
(10375, 'HUNGC', 3, '1996-12-06 00:00:00', '1997-01-03 00:00:00', '1996-12-09 00:00:00', 2, 20.12, 'Hungry Coyote Import Store', 'Ciudad Center Plaza\r\n516 Main St.', 'Elgin', 'OR', '97827', 'Estados Unidos'),
(10376, 'MEREP', 1, '1996-12-09 00:00:00', '1997-01-06 00:00:00', '1996-12-13 00:00:00', 2, 20.39, 'Mère Paillarde', '43 rue St. Laurent', 'Montreal', 'Québec', 'H1J 1C3', 'Canadá'),
(10377, 'SEVES', 1, '1996-12-09 00:00:00', '1997-01-06 00:00:00', '1996-12-13 00:00:00', 3, 22.21, 'Seven Seas Imports', '90 Wadhurst Rd.', 'Londres', '', 'OX15 4NB', 'Reino Unido'),
(10378, 'FOLKO', 5, '1996-12-10 00:00:00', '1997-01-07 00:00:00', '1996-12-19 00:00:00', 3, 5.44, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(10379, 'QUEDE', 2, '1996-12-11 00:00:00', '1997-01-08 00:00:00', '1996-12-13 00:00:00', 1, 45.03, 'Que Delícia', 'Rua da Panificadora, 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10380, 'HUNGO', 8, '1996-12-12 00:00:00', '1997-01-09 00:00:00', '1997-01-16 00:00:00', 3, 35.03, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10381, 'LILAS', 3, '1996-12-12 00:00:00', '1997-01-09 00:00:00', '1996-12-13 00:00:00', 3, 7.99, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10382, 'ERNSH', 4, '1996-12-13 00:00:00', '1997-01-10 00:00:00', '1996-12-16 00:00:00', 1, 94.77, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10383, 'AROUT', 8, '1996-12-16 00:00:00', '1997-01-13 00:00:00', '1996-12-18 00:00:00', 3, 34.24, 'Around the Horn', 'Brook Farm\r\nStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10384, 'BERGS', 3, '1996-12-16 00:00:00', '1997-01-13 00:00:00', '1996-12-20 00:00:00', 3, 168.64, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10385, 'SPLIR', 1, '1996-12-17 00:00:00', '1997-01-14 00:00:00', '1996-12-23 00:00:00', 2, 30.96, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10386, 'FAMIA', 9, '1996-12-18 00:00:00', '1997-01-01 00:00:00', '1996-12-25 00:00:00', 3, 13.99, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brasil'),
(10387, 'SANTG', 1, '1996-12-18 00:00:00', '1997-01-15 00:00:00', '1996-12-20 00:00:00', 2, 93.63, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', '', '4110', 'Noruega'),
(10388, 'SEVES', 2, '1996-12-19 00:00:00', '1997-01-16 00:00:00', '1996-12-20 00:00:00', 1, 34.86, 'Seven Seas Imports', '90 Wadhurst Rd.', 'Londres', '', 'OX15 4NB', 'Reino Unido'),
(10389, 'BOTTM', 4, '1996-12-20 00:00:00', '1997-01-17 00:00:00', '1996-12-24 00:00:00', 2, 47.42, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10390, 'ERNSH', 6, '1996-12-23 00:00:00', '1997-01-20 00:00:00', '1996-12-26 00:00:00', 1, 126.38, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10391, 'DRACD', 3, '1996-12-23 00:00:00', '1997-01-20 00:00:00', '1996-12-31 00:00:00', 3, 5.45, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', '', '52066', 'Alemania'),
(10392, 'PICCO', 2, '1996-12-24 00:00:00', '1997-01-21 00:00:00', '1997-01-01 00:00:00', 3, 122.46, 'Piccolo und mehr', 'Geislweg 14', 'Salzburgo', '', '5020', 'Austria'),
(10393, 'SAVEA', 1, '1996-12-25 00:00:00', '1997-01-22 00:00:00', '1997-01-03 00:00:00', 3, 126.56, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10394, 'HUNGC', 1, '1996-12-25 00:00:00', '1997-01-22 00:00:00', '1997-01-03 00:00:00', 3, 30.34, 'Hungry Coyote Import Store', 'Ciudad Center Plaza\r\n516 Main St.', 'Elgin', 'OR', '97827', 'Estados Unidos'),
(10395, 'HILAA', 6, '1996-12-26 00:00:00', '1997-01-23 00:00:00', '1997-01-03 00:00:00', 1, 184.41, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10396, 'FRANK', 1, '1996-12-27 00:00:00', '1997-01-10 00:00:00', '1997-01-06 00:00:00', 3, 135.35, 'Frankenversand', 'Berliner Platz 43', 'München', '', '80805', 'Alemania'),
(10397, 'PRINI', 5, '1996-12-27 00:00:00', '1997-01-24 00:00:00', '1997-01-02 00:00:00', 1, 60.26, 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', '', '1756', 'Portugal'),
(10398, 'SAVEA', 2, '1996-12-30 00:00:00', '1997-01-27 00:00:00', '1997-01-09 00:00:00', 3, 89.16, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10399, 'VAFFE', 8, '1996-12-31 00:00:00', '1997-01-14 00:00:00', '1997-01-08 00:00:00', 3, 27.36, 'Vaffeljernet', 'Smagsløget 45', 'Århus', '', '8200', 'Dinamarca'),
(10400, 'EASTC', 1, '1997-01-01 00:00:00', '1997-01-29 00:00:00', '1997-01-16 00:00:00', 3, 83.93, 'Eastern Connection', '35 King George', 'Londres', '', 'WX3 6FW', 'Reino Unido'),
(10401, 'RATTC', 1, '1997-01-01 00:00:00', '1997-01-29 00:00:00', '1997-01-10 00:00:00', 1, 12.51, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10402, 'ERNSH', 8, '1997-01-02 00:00:00', '1997-02-13 00:00:00', '1997-01-10 00:00:00', 2, 67.88, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10403, 'ERNSH', 4, '1997-01-03 00:00:00', '1997-01-31 00:00:00', '1997-01-09 00:00:00', 3, 73.79, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10404, 'MAGAA', 2, '1997-01-03 00:00:00', '1997-01-31 00:00:00', '1997-01-08 00:00:00', 1, 155.97, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', '', '24100', 'Italia'),
(10405, 'LINOD', 1, '1997-01-06 00:00:00', '1997-02-03 00:00:00', '1997-01-22 00:00:00', 1, 34.82, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10406, 'QUEEN', 7, '1997-01-07 00:00:00', '1997-02-18 00:00:00', '1997-01-13 00:00:00', 1, 108.04, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brasil'),
(10407, 'OTTIK', 2, '1997-01-07 00:00:00', '1997-02-04 00:00:00', '1997-01-30 00:00:00', 2, 91.48, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', '', '50739', 'Alemania'),
(10408, 'FOLIG', 8, '1997-01-08 00:00:00', '1997-02-05 00:00:00', '1997-01-14 00:00:00', 1, 11.26, 'Folies gourmandes', '184, chaussée de Tournai', 'Lille', '', '59000', 'Francia'),
(10409, 'OCEAN', 3, '1997-01-09 00:00:00', '1997-02-06 00:00:00', '1997-01-14 00:00:00', 1, 29.83, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585\r\nPiso 20-A', 'Buenos Aires', '', '1010', 'Argentina'),
(10410, 'BOTTM', 3, '1997-01-10 00:00:00', '1997-02-07 00:00:00', '1997-01-15 00:00:00', 3, 2.4, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10411, 'BOTTM', 9, '1997-01-10 00:00:00', '1997-02-07 00:00:00', '1997-01-21 00:00:00', 3, 23.65, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10412, 'WARTH', 8, '1997-01-13 00:00:00', '1997-02-10 00:00:00', '1997-01-15 00:00:00', 2, 3.77, 'Wartian Herkku', 'Torikatu 38', 'Oulu', '', '90110', 'Finlandia'),
(10413, 'LAMAI', 3, '1997-01-14 00:00:00', '1997-02-11 00:00:00', '1997-01-16 00:00:00', 2, 95.66, 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'Francia'),
(10414, 'FAMIA', 2, '1997-01-14 00:00:00', '1997-02-11 00:00:00', '1997-01-17 00:00:00', 3, 21.48, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brasil'),
(10415, 'HUNGC', 3, '1997-01-15 00:00:00', '1997-02-12 00:00:00', '1997-01-24 00:00:00', 1, 0.2, 'Hungry Coyote Import Store', 'Ciudad Center Plaza\r\n516 Main St.', 'Elgin', 'OR', '97827', 'Estados Unidos'),
(10416, 'WARTH', 8, '1997-01-16 00:00:00', '1997-02-13 00:00:00', '1997-01-27 00:00:00', 3, 22.72, 'Wartian Herkku', 'Torikatu 38', 'Oulu', '', '90110', 'Finlandia'),
(10417, 'SIMOB', 4, '1997-01-16 00:00:00', '1997-02-13 00:00:00', '1997-01-28 00:00:00', 3, 70.29, 'Simons bistro', 'Vinbæltet 34', 'København', '', '1734', 'Dinamarca'),
(10418, 'QUICK', 4, '1997-01-17 00:00:00', '1997-02-14 00:00:00', '1997-01-24 00:00:00', 1, 17.55, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10419, 'RICSU', 4, '1997-01-20 00:00:00', '1997-02-17 00:00:00', '1997-01-30 00:00:00', 2, 137.35, 'Richter Supermarkt', 'Starenweg 5', 'Génova', '', '1204', 'Suiza'),
(10420, 'WELLI', 3, '1997-01-21 00:00:00', '1997-02-18 00:00:00', '1997-01-27 00:00:00', 1, 44.12, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10421, 'QUEDE', 8, '1997-01-21 00:00:00', '1997-03-04 00:00:00', '1997-01-27 00:00:00', 1, 99.23, 'Que Delícia', 'Rua da Panificadora, 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10422, 'FRANS', 2, '1997-01-22 00:00:00', '1997-02-19 00:00:00', '1997-01-31 00:00:00', 1, 3.02, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', '', '10100', 'Italia'),
(10423, 'GOURL', 6, '1997-01-23 00:00:00', '1997-02-06 00:00:00', '1997-02-24 00:00:00', 3, 24.5, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(10424, 'MEREP', 7, '1997-01-23 00:00:00', '1997-02-20 00:00:00', '1997-01-27 00:00:00', 2, 370.61, 'Mère Paillarde', '43 rue St. Laurent', 'Montreal', 'Québec', 'H1J 1C3', 'Canadá'),
(10425, 'LAMAI', 6, '1997-01-24 00:00:00', '1997-02-21 00:00:00', '1997-02-14 00:00:00', 2, 7.93, 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'Francia'),
(10426, 'GALED', 4, '1997-01-27 00:00:00', '1997-02-24 00:00:00', '1997-02-06 00:00:00', 1, 18.69, 'Galería del gastronómo', 'Rambla de Cataluña, 23', 'Barcelona', '', '8022', 'España'),
(10427, 'PICCO', 4, '1997-01-27 00:00:00', '1997-02-24 00:00:00', '1997-03-03 00:00:00', 2, 31.29, 'Piccolo und mehr', 'Geislweg 14', 'Salzburgo', '', '5020', 'Austria'),
(10428, 'REGGC', 7, '1997-01-28 00:00:00', '1997-02-25 00:00:00', '1997-02-04 00:00:00', 1, 11.09, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', '', '42100', 'Italia'),
(10429, 'HUNGO', 3, '1997-01-29 00:00:00', '1997-03-12 00:00:00', '1997-02-07 00:00:00', 2, 56.63, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10430, 'ERNSH', 4, '1997-01-30 00:00:00', '1997-02-13 00:00:00', '1997-02-03 00:00:00', 1, 458.78, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10431, 'BOTTM', 4, '1997-01-30 00:00:00', '1997-02-13 00:00:00', '1997-02-07 00:00:00', 2, 44.17, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10432, 'SPLIR', 3, '1997-01-31 00:00:00', '1997-02-14 00:00:00', '1997-02-07 00:00:00', 2, 4.34, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10433, 'PRINI', 3, '1997-02-03 00:00:00', '1997-03-03 00:00:00', '1997-03-04 00:00:00', 3, 73.83, 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', '', '1756', 'Portugal'),
(10434, 'FOLKO', 3, '1997-02-03 00:00:00', '1997-03-03 00:00:00', '1997-02-13 00:00:00', 2, 17.92, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(10435, 'CONSH', 8, '1997-02-04 00:00:00', '1997-03-18 00:00:00', '1997-02-07 00:00:00', 2, 9.21, 'Consolidated Holdings', 'Berkeley Gardens\r\n12  Brewery ', 'Londres', '', 'WX1 6LT', 'Reino Unido'),
(10436, 'BLONP', 3, '1997-02-05 00:00:00', '1997-03-05 00:00:00', '1997-02-11 00:00:00', 2, 156.66, 'Blondel père et fils', '24, place Kléber', 'Estrasburgo', '', '67000', 'Francia'),
(10437, 'WARTH', 8, '1997-02-05 00:00:00', '1997-03-05 00:00:00', '1997-02-12 00:00:00', 1, 19.97, 'Wartian Herkku', 'Torikatu 38', 'Oulu', '', '90110', 'Finlandia'),
(10438, 'TOMSP', 3, '1997-02-06 00:00:00', '1997-03-06 00:00:00', '1997-02-14 00:00:00', 2, 8.24, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', '', '44087', 'Alemania'),
(10439, 'MEREP', 6, '1997-02-07 00:00:00', '1997-03-07 00:00:00', '1997-02-10 00:00:00', 3, 4.07, 'Mère Paillarde', '43 rue St. Laurent', 'Montreal', 'Québec', 'H1J 1C3', 'Canadá'),
(10440, 'SAVEA', 4, '1997-02-10 00:00:00', '1997-03-10 00:00:00', '1997-02-28 00:00:00', 2, 86.53, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10441, 'OLDWO', 3, '1997-02-10 00:00:00', '1997-03-24 00:00:00', '1997-03-14 00:00:00', 2, 73.02, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10442, 'ERNSH', 3, '1997-02-11 00:00:00', '1997-03-11 00:00:00', '1997-02-18 00:00:00', 2, 47.94, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10443, 'REGGC', 8, '1997-02-12 00:00:00', '1997-03-12 00:00:00', '1997-02-14 00:00:00', 1, 13.95, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', '', '42100', 'Italia'),
(10444, 'BERGS', 3, '1997-02-12 00:00:00', '1997-03-12 00:00:00', '1997-02-21 00:00:00', 3, 3.5, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10445, 'BERGS', 3, '1997-02-13 00:00:00', '1997-03-13 00:00:00', '1997-02-20 00:00:00', 1, 9.3, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10446, 'TOMSP', 6, '1997-02-14 00:00:00', '1997-03-14 00:00:00', '1997-02-19 00:00:00', 1, 14.68, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', '', '44087', 'Alemania'),
(10447, 'RICAR', 4, '1997-02-14 00:00:00', '1997-03-14 00:00:00', '1997-03-07 00:00:00', 2, 68.66, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10448, 'RANCH', 4, '1997-02-17 00:00:00', '1997-03-17 00:00:00', '1997-02-24 00:00:00', 2, 38.82, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', '', '1010', 'Argentina'),
(10449, 'BLONP', 3, '1997-02-18 00:00:00', '1997-03-18 00:00:00', '1997-02-27 00:00:00', 2, 53.3, 'Blondel père et fils', '24, place Kléber', 'Estrasburgo', '', '67000', 'Francia'),
(10450, 'VICTE', 8, '1997-02-19 00:00:00', '1997-03-19 00:00:00', '1997-03-11 00:00:00', 2, 7.23, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', '', '69004', 'Francia'),
(10451, 'QUICK', 4, '1997-02-19 00:00:00', '1997-03-05 00:00:00', '1997-03-12 00:00:00', 3, 189.09, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10452, 'SAVEA', 8, '1997-02-20 00:00:00', '1997-03-20 00:00:00', '1997-02-26 00:00:00', 1, 140.26, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10453, 'AROUT', 1, '1997-02-21 00:00:00', '1997-03-21 00:00:00', '1997-02-26 00:00:00', 2, 25.36, 'Around the Horn', 'Brook Farm\r\nStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10454, 'LAMAI', 4, '1997-02-21 00:00:00', '1997-03-21 00:00:00', '1997-02-25 00:00:00', 3, 2.74, 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'Francia'),
(10455, 'WARTH', 8, '1997-02-24 00:00:00', '1997-04-07 00:00:00', '1997-03-03 00:00:00', 2, 180.45, 'Wartian Herkku', 'Torikatu 38', 'Oulu', '', '90110', 'Finlandia'),
(10456, 'KOENE', 8, '1997-02-25 00:00:00', '1997-04-08 00:00:00', '1997-02-28 00:00:00', 2, 8.12, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburgo', '', '14776', 'Alemania'),
(10457, 'KOENE', 2, '1997-02-25 00:00:00', '1997-03-25 00:00:00', '1997-03-03 00:00:00', 1, 11.57, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburgo', '', '14776', 'Alemania'),
(10458, 'SUPRD', 7, '1997-02-26 00:00:00', '1997-03-26 00:00:00', '1997-03-04 00:00:00', 3, 147.06, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Bélgica'),
(10459, 'VICTE', 4, '1997-02-27 00:00:00', '1997-03-27 00:00:00', '1997-02-28 00:00:00', 2, 25.09, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', '', '69004', 'Francia'),
(10460, 'FOLKO', 8, '1997-02-28 00:00:00', '1997-03-28 00:00:00', '1997-03-03 00:00:00', 1, 16.27, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(10461, 'LILAS', 1, '1997-02-28 00:00:00', '1997-03-28 00:00:00', '1997-03-05 00:00:00', 3, 148.61, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10462, 'CONSH', 2, '1997-03-03 00:00:00', '1997-03-31 00:00:00', '1997-03-18 00:00:00', 1, 6.17, 'Consolidated Holdings', 'Berkeley Gardens\r\n12  Brewery ', 'Londres', '', 'WX1 6LT', 'Reino Unido'),
(10463, 'SUPRD', 5, '1997-03-04 00:00:00', '1997-04-01 00:00:00', '1997-03-06 00:00:00', 3, 14.78, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Bélgica'),
(10464, 'FURIB', 4, '1997-03-04 00:00:00', '1997-04-01 00:00:00', '1997-03-14 00:00:00', 2, 89, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', '', '1675', 'Portugal'),
(10465, 'VAFFE', 1, '1997-03-05 00:00:00', '1997-04-02 00:00:00', '1997-03-14 00:00:00', 3, 145.04, 'Vaffeljernet', 'Smagsløget 45', 'Århus', '', '8200', 'Dinamarca'),
(10466, 'COMMI', 4, '1997-03-06 00:00:00', '1997-04-03 00:00:00', '1997-03-13 00:00:00', 1, 11.93, 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brasil'),
(10467, 'MAGAA', 8, '1997-03-06 00:00:00', '1997-04-03 00:00:00', '1997-03-11 00:00:00', 2, 4.93, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', '', '24100', 'Italia'),
(10468, 'KOENE', 3, '1997-03-07 00:00:00', '1997-04-04 00:00:00', '1997-03-12 00:00:00', 3, 44.12, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburgo', '', '14776', 'Alemania'),
(10469, 'WHITC', 1, '1997-03-10 00:00:00', '1997-04-07 00:00:00', '1997-03-14 00:00:00', 1, 60.18, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10470, 'BONAP', 4, '1997-03-11 00:00:00', '1997-04-08 00:00:00', '1997-03-14 00:00:00', 2, 64.56, 'Bon app\'', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia'),
(10471, 'BSBEV', 2, '1997-03-11 00:00:00', '1997-04-08 00:00:00', '1997-03-18 00:00:00', 3, 45.59, 'B\'s Beverages', 'Fauntleroy Circus', 'Londres', '', 'EC2 5NT', 'Reino Unido'),
(10472, 'SEVES', 8, '1997-03-12 00:00:00', '1997-04-09 00:00:00', '1997-03-19 00:00:00', 1, 4.2, 'Seven Seas Imports', '90 Wadhurst Rd.', 'Londres', '', 'OX15 4NB', 'Reino Unido'),
(10473, 'ISLAT', 1, '1997-03-13 00:00:00', '1997-03-27 00:00:00', '1997-03-21 00:00:00', 3, 16.37, 'Island Trading', 'Garden House\r\nCrowther Way', 'Cowes', 'Isla de Wight', 'PO31 7PJ', 'Reino Unido'),
(10474, 'PERIC', 5, '1997-03-13 00:00:00', '1997-04-10 00:00:00', '1997-03-21 00:00:00', 2, 83.49, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', '', '05033', 'México'),
(10475, 'SUPRD', 9, '1997-03-14 00:00:00', '1997-04-11 00:00:00', '1997-04-04 00:00:00', 1, 68.52, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Bélgica'),
(10476, 'HILAA', 8, '1997-03-17 00:00:00', '1997-04-14 00:00:00', '1997-03-24 00:00:00', 3, 4.41, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10477, 'PRINI', 5, '1997-03-17 00:00:00', '1997-04-14 00:00:00', '1997-03-25 00:00:00', 2, 13.02, 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', '', '1756', 'Portugal'),
(10478, 'VICTE', 2, '1997-03-18 00:00:00', '1997-04-01 00:00:00', '1997-03-26 00:00:00', 3, 4.81, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', '', '69004', 'Francia'),
(10479, 'RATTC', 3, '1997-03-19 00:00:00', '1997-04-16 00:00:00', '1997-03-21 00:00:00', 3, 708.95, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10480, 'FOLIG', 6, '1997-03-20 00:00:00', '1997-04-17 00:00:00', '1997-03-24 00:00:00', 2, 1.35, 'Folies gourmandes', '184, chaussée de Tournai', 'Lille', '', '59000', 'Francia'),
(10481, 'RICAR', 8, '1997-03-20 00:00:00', '1997-04-17 00:00:00', '1997-03-25 00:00:00', 2, 64.33, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10482, 'LAZYK', 1, '1997-03-21 00:00:00', '1997-04-18 00:00:00', '1997-04-10 00:00:00', 3, 7.48, 'Lazy K Kountry Store', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'Estados Unidos'),
(10483, 'WHITC', 7, '1997-03-24 00:00:00', '1997-04-21 00:00:00', '1997-04-25 00:00:00', 2, 15.28, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10484, 'BSBEV', 3, '1997-03-24 00:00:00', '1997-04-21 00:00:00', '1997-04-01 00:00:00', 3, 6.88, 'B\'s Beverages', 'Fauntleroy Circus', 'Londres', '', 'EC2 5NT', 'Reino Unido'),
(10485, 'LINOD', 4, '1997-03-25 00:00:00', '1997-04-08 00:00:00', '1997-03-31 00:00:00', 2, 64.45, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10486, 'HILAA', 1, '1997-03-26 00:00:00', '1997-04-23 00:00:00', '1997-04-02 00:00:00', 2, 30.53, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10487, 'QUEEN', 2, '1997-03-26 00:00:00', '1997-04-23 00:00:00', '1997-03-28 00:00:00', 2, 71.07, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brasil'),
(10488, 'FRANK', 8, '1997-03-27 00:00:00', '1997-04-24 00:00:00', '1997-04-02 00:00:00', 2, 4.93, 'Frankenversand', 'Berliner Platz 43', 'München', '', '80805', 'Alemania'),
(10489, 'PICCO', 6, '1997-03-28 00:00:00', '1997-04-25 00:00:00', '1997-04-09 00:00:00', 2, 5.29, 'Piccolo und mehr', 'Geislweg 14', 'Salzburgo', '', '5020', 'Austria'),
(10490, 'HILAA', 7, '1997-03-31 00:00:00', '1997-04-28 00:00:00', '1997-04-03 00:00:00', 2, 210.19, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10491, 'FURIB', 8, '1997-03-31 00:00:00', '1997-04-28 00:00:00', '1997-04-08 00:00:00', 3, 16.96, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', '', '1675', 'Portugal'),
(10492, 'BOTTM', 3, '1997-04-01 00:00:00', '1997-04-29 00:00:00', '1997-04-11 00:00:00', 1, 62.89, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10493, 'LAMAI', 4, '1997-04-02 00:00:00', '1997-04-30 00:00:00', '1997-04-10 00:00:00', 3, 10.64, 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'Francia'),
(10494, 'COMMI', 4, '1997-04-02 00:00:00', '1997-04-30 00:00:00', '1997-04-09 00:00:00', 2, 65.99, 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brasil'),
(10495, 'LAUGB', 3, '1997-04-03 00:00:00', '1997-05-01 00:00:00', '1997-04-11 00:00:00', 3, 4.65, 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canadá'),
(10496, 'TRADH', 7, '1997-04-04 00:00:00', '1997-05-02 00:00:00', '1997-04-07 00:00:00', 2, 46.77, 'Tradição Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brasil'),
(10497, 'LEHMS', 7, '1997-04-04 00:00:00', '1997-05-02 00:00:00', '1997-04-07 00:00:00', 1, 36.21, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', '', '60528', 'Alemania'),
(10498, 'HILAA', 8, '1997-04-07 00:00:00', '1997-05-05 00:00:00', '1997-04-11 00:00:00', 2, 29.75, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10499, 'LILAS', 4, '1997-04-08 00:00:00', '1997-05-06 00:00:00', '1997-04-16 00:00:00', 2, 102.02, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10500, 'LAMAI', 6, '1997-04-09 00:00:00', '1997-05-07 00:00:00', '1997-04-17 00:00:00', 1, 42.68, 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'Francia'),
(10501, 'BLAUS', 9, '1997-04-09 00:00:00', '1997-05-07 00:00:00', '1997-04-16 00:00:00', 3, 8.85, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', '', '68306', 'Alemania'),
(10502, 'PERIC', 2, '1997-04-10 00:00:00', '1997-05-08 00:00:00', '1997-04-29 00:00:00', 1, 69.32, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', '', '05033', 'México'),
(10503, 'HUNGO', 6, '1997-04-11 00:00:00', '1997-05-09 00:00:00', '1997-04-16 00:00:00', 2, 16.74, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10504, 'WHITC', 4, '1997-04-11 00:00:00', '1997-05-09 00:00:00', '1997-04-18 00:00:00', 3, 59.13, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10505, 'MEREP', 3, '1997-04-14 00:00:00', '1997-05-12 00:00:00', '1997-04-21 00:00:00', 3, 7.13, 'Mère Paillarde', '43 rue St. Laurent', 'Montreal', 'Québec', 'H1J 1C3', 'Canadá'),
(10506, 'KOENE', 9, '1997-04-15 00:00:00', '1997-05-13 00:00:00', '1997-05-02 00:00:00', 2, 21.19, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburgo', '', '14776', 'Alemania'),
(10507, 'ANTON', 7, '1997-04-15 00:00:00', '1997-05-13 00:00:00', '1997-04-22 00:00:00', 1, 47.45, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', '', '05023', 'México'),
(10508, 'OTTIK', 1, '1997-04-16 00:00:00', '1997-05-14 00:00:00', '1997-05-13 00:00:00', 2, 4.99, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', '', '50739', 'Alemania'),
(10509, 'BLAUS', 4, '1997-04-17 00:00:00', '1997-05-15 00:00:00', '1997-04-29 00:00:00', 1, 0.15, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', '', '68306', 'Alemania'),
(10510, 'SAVEA', 6, '1997-04-18 00:00:00', '1997-05-16 00:00:00', '1997-04-28 00:00:00', 3, 367.63, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10511, 'BONAP', 4, '1997-04-18 00:00:00', '1997-05-16 00:00:00', '1997-04-21 00:00:00', 3, 350.64, 'Bon app\'', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia'),
(10512, 'FAMIA', 7, '1997-04-21 00:00:00', '1997-05-19 00:00:00', '1997-04-24 00:00:00', 2, 3.53, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brasil'),
(10513, 'WANDK', 7, '1997-04-22 00:00:00', '1997-06-03 00:00:00', '1997-04-28 00:00:00', 1, 105.65, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', '', '70563', 'Alemania'),
(10514, 'ERNSH', 3, '1997-04-22 00:00:00', '1997-05-20 00:00:00', '1997-05-16 00:00:00', 2, 789.95, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10515, 'QUICK', 2, '1997-04-23 00:00:00', '1997-05-07 00:00:00', '1997-05-23 00:00:00', 1, 204.47, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10516, 'HUNGO', 2, '1997-04-24 00:00:00', '1997-05-22 00:00:00', '1997-05-01 00:00:00', 3, 62.78, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10517, 'NORTS', 3, '1997-04-24 00:00:00', '1997-05-22 00:00:00', '1997-04-29 00:00:00', 3, 32.07, 'North/South', 'South House\r\n300 Queensbridge', 'Londres', '', 'SW7 1RZ', 'Reino Unido'),
(10518, 'TORTU', 4, '1997-04-25 00:00:00', '1997-05-09 00:00:00', '1997-05-05 00:00:00', 2, 218.15, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', '', '05033', 'México'),
(10519, 'CHOPS', 6, '1997-04-28 00:00:00', '1997-05-26 00:00:00', '1997-05-01 00:00:00', 3, 91.76, 'Chop-suey Chinese', 'Hauptstr. 31', 'Berna', '', '3012', 'Suiza'),
(10520, 'SANTG', 7, '1997-04-29 00:00:00', '1997-05-27 00:00:00', '1997-05-01 00:00:00', 1, 13.37, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', '', '4110', 'Noruega');
INSERT INTO `pedidos` (`IdPedido`, `IdCliente`, `IdEmpleado`, `FechaPedido`, `FechaEntrega`, `FechaEnvio`, `EnviadoVia`, `Flete`, `NombreDestinatario`, `DireccionDestinatario`, `CiudadDestino`, `RegionDestino`, `CodigoPostalDestinatario`, `PaisDestino`) VALUES
(10521, 'CACTU', 8, '1997-04-29 00:00:00', '1997-05-27 00:00:00', '1997-05-02 00:00:00', 2, 17.22, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', '', '1010', 'Argentina'),
(10522, 'LEHMS', 4, '1997-04-30 00:00:00', '1997-05-28 00:00:00', '1997-05-06 00:00:00', 1, 45.33, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', '', '60528', 'Alemania'),
(10523, 'SEVES', 7, '1997-05-01 00:00:00', '1997-05-29 00:00:00', '1997-05-30 00:00:00', 2, 77.63, 'Seven Seas Imports', '90 Wadhurst Rd.', 'Londres', '', 'OX15 4NB', 'Reino Unido'),
(10524, 'BERGS', 1, '1997-05-01 00:00:00', '1997-05-29 00:00:00', '1997-05-07 00:00:00', 2, 244.79, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10525, 'BONAP', 1, '1997-05-02 00:00:00', '1997-05-30 00:00:00', '1997-05-23 00:00:00', 2, 11.06, 'Bon app\'', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia'),
(10526, 'WARTH', 4, '1997-05-05 00:00:00', '1997-06-02 00:00:00', '1997-05-15 00:00:00', 2, 58.59, 'Wartian Herkku', 'Torikatu 38', 'Oulu', '', '90110', 'Finlandia'),
(10527, 'QUICK', 7, '1997-05-05 00:00:00', '1997-06-02 00:00:00', '1997-05-07 00:00:00', 1, 41.9, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10528, 'GREAL', 6, '1997-05-06 00:00:00', '1997-05-20 00:00:00', '1997-05-09 00:00:00', 2, 3.35, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugenia', 'OR', '97403', 'Estados Unidos'),
(10529, 'MAISD', 5, '1997-05-07 00:00:00', '1997-06-04 00:00:00', '1997-05-09 00:00:00', 2, 66.69, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruselas', '', 'B-1180', 'Bélgica'),
(10530, 'PICCO', 3, '1997-05-08 00:00:00', '1997-06-05 00:00:00', '1997-05-12 00:00:00', 2, 339.22, 'Piccolo und mehr', 'Geislweg 14', 'Salzburgo', '', '5020', 'Austria'),
(10531, 'OCEAN', 7, '1997-05-08 00:00:00', '1997-06-05 00:00:00', '1997-05-19 00:00:00', 1, 8.12, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585\r\nPiso 20-A', 'Buenos Aires', '', '1010', 'Argentina'),
(10532, 'EASTC', 7, '1997-05-09 00:00:00', '1997-06-06 00:00:00', '1997-05-12 00:00:00', 3, 74.46, 'Eastern Connection', '35 King George', 'Londres', '', 'WX3 6FW', 'Reino Unido'),
(10533, 'FOLKO', 8, '1997-05-12 00:00:00', '1997-06-09 00:00:00', '1997-05-22 00:00:00', 1, 188.04, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(10534, 'LEHMS', 8, '1997-05-12 00:00:00', '1997-06-09 00:00:00', '1997-05-14 00:00:00', 2, 27.94, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', '', '60528', 'Alemania'),
(10535, 'ANTON', 4, '1997-05-13 00:00:00', '1997-06-10 00:00:00', '1997-05-21 00:00:00', 1, 15.64, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', '', '05023', 'México'),
(10536, 'LEHMS', 3, '1997-05-14 00:00:00', '1997-06-11 00:00:00', '1997-06-06 00:00:00', 2, 58.88, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', '', '60528', 'Alemania'),
(10537, 'RICSU', 1, '1997-05-14 00:00:00', '1997-05-28 00:00:00', '1997-05-19 00:00:00', 1, 78.85, 'Richter Supermarkt', 'Starenweg 5', 'Génova', '', '1204', 'Suiza'),
(10538, 'BSBEV', 9, '1997-05-15 00:00:00', '1997-06-12 00:00:00', '1997-05-16 00:00:00', 3, 4.87, 'B\'s Beverages', 'Fauntleroy Circus', 'Londres', '', 'EC2 5NT', 'Reino Unido'),
(10539, 'BSBEV', 6, '1997-05-16 00:00:00', '1997-06-13 00:00:00', '1997-05-23 00:00:00', 3, 12.36, 'B\'s Beverages', 'Fauntleroy Circus', 'Londres', '', 'EC2 5NT', 'Reino Unido'),
(10540, 'QUICK', 3, '1997-05-19 00:00:00', '1997-06-16 00:00:00', '1997-06-13 00:00:00', 3, 1007.64, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10541, 'HANAR', 2, '1997-05-19 00:00:00', '1997-06-16 00:00:00', '1997-05-29 00:00:00', 1, 68.65, 'Hanari Carnes', 'Rua do Paço, 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10542, 'KOENE', 1, '1997-05-20 00:00:00', '1997-06-17 00:00:00', '1997-05-26 00:00:00', 3, 10.95, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburgo', '', '14776', 'Alemania'),
(10543, 'LILAS', 8, '1997-05-21 00:00:00', '1997-06-18 00:00:00', '1997-05-23 00:00:00', 2, 48.17, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10544, 'LONEP', 4, '1997-05-21 00:00:00', '1997-06-18 00:00:00', '1997-05-30 00:00:00', 1, 24.91, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos'),
(10545, 'LAZYK', 8, '1997-05-22 00:00:00', '1997-06-19 00:00:00', '1997-06-26 00:00:00', 2, 11.92, 'Lazy K Kountry Store', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'Estados Unidos'),
(10546, 'VICTE', 1, '1997-05-23 00:00:00', '1997-06-20 00:00:00', '1997-05-27 00:00:00', 3, 194.72, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', '', '69004', 'Francia'),
(10547, 'SEVES', 3, '1997-05-23 00:00:00', '1997-06-20 00:00:00', '1997-06-02 00:00:00', 2, 178.43, 'Seven Seas Imports', '90 Wadhurst Rd.', 'Londres', '', 'OX15 4NB', 'Reino Unido'),
(10548, 'TOMSP', 3, '1997-05-26 00:00:00', '1997-06-23 00:00:00', '1997-06-02 00:00:00', 2, 1.43, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', '', '44087', 'Alemania'),
(10549, 'QUICK', 5, '1997-05-27 00:00:00', '1997-06-10 00:00:00', '1997-05-30 00:00:00', 1, 171.24, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10550, 'GODOS', 7, '1997-05-28 00:00:00', '1997-06-25 00:00:00', '1997-06-06 00:00:00', 3, 4.32, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', '', '41101', 'España'),
(10551, 'FURIB', 4, '1997-05-28 00:00:00', '1997-07-09 00:00:00', '1997-06-06 00:00:00', 3, 72.95, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', '', '1675', 'Portugal'),
(10552, 'HILAA', 2, '1997-05-29 00:00:00', '1997-06-26 00:00:00', '1997-06-05 00:00:00', 1, 83.22, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10553, 'WARTH', 2, '1997-05-30 00:00:00', '1997-06-27 00:00:00', '1997-06-03 00:00:00', 2, 149.49, 'Wartian Herkku', 'Torikatu 38', 'Oulu', '', '90110', 'Finlandia'),
(10554, 'OTTIK', 4, '1997-05-30 00:00:00', '1997-06-27 00:00:00', '1997-06-05 00:00:00', 3, 120.97, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', '', '50739', 'Alemania'),
(10555, 'SAVEA', 6, '1997-06-02 00:00:00', '1997-06-30 00:00:00', '1997-06-04 00:00:00', 3, 252.49, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10556, 'SIMOB', 2, '1997-06-03 00:00:00', '1997-07-15 00:00:00', '1997-06-13 00:00:00', 1, 9.8, 'Simons bistro', 'Vinbæltet 34', 'København', '', '1734', 'Dinamarca'),
(10557, 'LEHMS', 9, '1997-06-03 00:00:00', '1997-06-17 00:00:00', '1997-06-06 00:00:00', 2, 96.72, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', '', '60528', 'Alemania'),
(10558, 'AROUT', 1, '1997-06-04 00:00:00', '1997-07-02 00:00:00', '1997-06-10 00:00:00', 2, 72.97, 'Around the Horn', 'Brook Farm\r\nStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10559, 'BLONP', 6, '1997-06-05 00:00:00', '1997-07-03 00:00:00', '1997-06-13 00:00:00', 1, 8.05, 'Blondel père et fils', '24, place Kléber', 'Estrasburgo', '', '67000', 'Francia'),
(10560, 'FRANK', 8, '1997-06-06 00:00:00', '1997-07-04 00:00:00', '1997-06-09 00:00:00', 1, 36.65, 'Frankenversand', 'Berliner Platz 43', 'München', '', '80805', 'Alemania'),
(10561, 'FOLKO', 2, '1997-06-06 00:00:00', '1997-07-04 00:00:00', '1997-06-09 00:00:00', 2, 242.21, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(10562, 'REGGC', 1, '1997-06-09 00:00:00', '1997-07-07 00:00:00', '1997-06-12 00:00:00', 1, 22.95, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', '', '42100', 'Italia'),
(10563, 'RICAR', 2, '1997-06-10 00:00:00', '1997-07-22 00:00:00', '1997-06-24 00:00:00', 2, 60.43, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10564, 'RATTC', 4, '1997-06-10 00:00:00', '1997-07-08 00:00:00', '1997-06-16 00:00:00', 3, 13.75, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10565, 'MEREP', 8, '1997-06-11 00:00:00', '1997-07-09 00:00:00', '1997-06-18 00:00:00', 2, 7.15, 'Mère Paillarde', '43 rue St. Laurent', 'Montreal', 'Québec', 'H1J 1C3', 'Canadá'),
(10566, 'BLONP', 9, '1997-06-12 00:00:00', '1997-07-10 00:00:00', '1997-06-18 00:00:00', 1, 88.4, 'Blondel père et fils', '24, place Kléber', 'Estrasburgo', '', '67000', 'Francia'),
(10567, 'HUNGO', 1, '1997-06-12 00:00:00', '1997-07-10 00:00:00', '1997-06-17 00:00:00', 1, 33.97, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10568, 'GALED', 3, '1997-06-13 00:00:00', '1997-07-11 00:00:00', '1997-07-09 00:00:00', 3, 6.54, 'Galería del gastronómo', 'Rambla de Cataluña, 23', 'Barcelona', '', '8022', 'España'),
(10569, 'RATTC', 5, '1997-06-16 00:00:00', '1997-07-14 00:00:00', '1997-07-11 00:00:00', 1, 58.98, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10570, 'MEREP', 3, '1997-06-17 00:00:00', '1997-07-15 00:00:00', '1997-06-19 00:00:00', 3, 188.99, 'Mère Paillarde', '43 rue St. Laurent', 'Montreal', 'Québec', 'H1J 1C3', 'Canadá'),
(10571, 'ERNSH', 8, '1997-06-17 00:00:00', '1997-07-29 00:00:00', '1997-07-04 00:00:00', 3, 26.06, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10572, 'BERGS', 3, '1997-06-18 00:00:00', '1997-07-16 00:00:00', '1997-06-25 00:00:00', 2, 116.43, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10573, 'ANTON', 7, '1997-06-19 00:00:00', '1997-07-17 00:00:00', '1997-06-20 00:00:00', 3, 84.84, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', '', '05023', 'México'),
(10574, 'TRAIH', 4, '1997-06-19 00:00:00', '1997-07-17 00:00:00', '1997-06-30 00:00:00', 2, 37.6, 'Trail\'s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'Estados Unidos'),
(10575, 'MORGK', 5, '1997-06-20 00:00:00', '1997-07-04 00:00:00', '1997-06-30 00:00:00', 1, 127.34, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', '', '04179', 'Alemania'),
(10576, 'TORTU', 3, '1997-06-23 00:00:00', '1997-07-07 00:00:00', '1997-06-30 00:00:00', 3, 18.56, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', '', '05033', 'México'),
(10577, 'TRAIH', 9, '1997-06-23 00:00:00', '1997-08-04 00:00:00', '1997-06-30 00:00:00', 2, 25.41, 'Trail\'s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'Estados Unidos'),
(10578, 'BSBEV', 4, '1997-06-24 00:00:00', '1997-07-22 00:00:00', '1997-07-25 00:00:00', 3, 29.6, 'B\'s Beverages', 'Fauntleroy Circus', 'Londres', '', 'EC2 5NT', 'Reino Unido'),
(10579, 'LETSS', 1, '1997-06-25 00:00:00', '1997-07-23 00:00:00', '1997-07-04 00:00:00', 2, 13.73, 'Let\'s Stop N Shop', '87 Polk St.\r\nSuite 5', 'San Francisco', 'CA', '94117', 'Estados Unidos'),
(10580, 'OTTIK', 4, '1997-06-26 00:00:00', '1997-07-24 00:00:00', '1997-07-01 00:00:00', 3, 75.89, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', '', '50739', 'Alemania'),
(10581, 'FAMIA', 3, '1997-06-26 00:00:00', '1997-07-24 00:00:00', '1997-07-02 00:00:00', 1, 3.01, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brasil'),
(10582, 'BLAUS', 3, '1997-06-27 00:00:00', '1997-07-25 00:00:00', '1997-07-14 00:00:00', 2, 27.71, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', '', '68306', 'Alemania'),
(10583, 'WARTH', 2, '1997-06-30 00:00:00', '1997-07-28 00:00:00', '1997-07-04 00:00:00', 2, 7.28, 'Wartian Herkku', 'Torikatu 38', 'Oulu', '', '90110', 'Finlandia'),
(10584, 'BLONP', 4, '1997-06-30 00:00:00', '1997-07-28 00:00:00', '1997-07-04 00:00:00', 1, 59.14, 'Blondel père et fils', '24, place Kléber', 'Estrasburgo', '', '67000', 'Francia'),
(10585, 'WELLI', 7, '1997-07-01 00:00:00', '1997-07-29 00:00:00', '1997-07-10 00:00:00', 1, 13.41, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10586, 'REGGC', 9, '1997-07-02 00:00:00', '1997-07-30 00:00:00', '1997-07-09 00:00:00', 1, 0.48, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', '', '42100', 'Italia'),
(10587, 'QUEDE', 1, '1997-07-02 00:00:00', '1997-07-30 00:00:00', '1997-07-09 00:00:00', 1, 62.52, 'Que Delícia', 'Rua da Panificadora, 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10588, 'QUICK', 2, '1997-07-03 00:00:00', '1997-07-31 00:00:00', '1997-07-10 00:00:00', 3, 194.67, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10589, 'GREAL', 8, '1997-07-04 00:00:00', '1997-08-01 00:00:00', '1997-07-14 00:00:00', 2, 4.42, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugenia', 'OR', '97403', 'Estados Unidos'),
(10590, 'MEREP', 4, '1997-07-07 00:00:00', '1997-08-04 00:00:00', '1997-07-14 00:00:00', 3, 44.77, 'Mère Paillarde', '43 rue St. Laurent', 'Montreal', 'Québec', 'H1J 1C3', 'Canadá'),
(10591, 'VAFFE', 1, '1997-07-07 00:00:00', '1997-07-21 00:00:00', '1997-07-16 00:00:00', 1, 55.92, 'Vaffeljernet', 'Smagsløget 45', 'Århus', '', '8200', 'Dinamarca'),
(10592, 'LEHMS', 3, '1997-07-08 00:00:00', '1997-08-05 00:00:00', '1997-07-16 00:00:00', 1, 32.1, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', '', '60528', 'Alemania'),
(10593, 'LEHMS', 7, '1997-07-09 00:00:00', '1997-08-06 00:00:00', '1997-08-13 00:00:00', 2, 174.2, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', '', '60528', 'Alemania'),
(10594, 'OLDWO', 3, '1997-07-09 00:00:00', '1997-08-06 00:00:00', '1997-07-16 00:00:00', 2, 5.24, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10595, 'ERNSH', 2, '1997-07-10 00:00:00', '1997-08-07 00:00:00', '1997-07-14 00:00:00', 1, 96.78, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10596, 'WHITC', 8, '1997-07-11 00:00:00', '1997-08-08 00:00:00', '1997-08-12 00:00:00', 1, 16.34, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10597, 'PICCO', 7, '1997-07-11 00:00:00', '1997-08-08 00:00:00', '1997-07-18 00:00:00', 3, 35.12, 'Piccolo und mehr', 'Geislweg 14', 'Salzburgo', '', '5020', 'Austria'),
(10598, 'RATTC', 1, '1997-07-14 00:00:00', '1997-08-11 00:00:00', '1997-07-18 00:00:00', 3, 44.42, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10599, 'BSBEV', 6, '1997-07-15 00:00:00', '1997-08-26 00:00:00', '1997-07-21 00:00:00', 3, 29.98, 'B\'s Beverages', 'Fauntleroy Circus', 'Londres', '', 'EC2 5NT', 'Reino Unido'),
(10600, 'HUNGC', 4, '1997-07-16 00:00:00', '1997-08-13 00:00:00', '1997-07-21 00:00:00', 1, 45.13, 'Hungry Coyote Import Store', 'Ciudad Center Plaza\r\n516 Main St.', 'Elgin', 'OR', '97827', 'Estados Unidos'),
(10601, 'HILAA', 7, '1997-07-16 00:00:00', '1997-08-27 00:00:00', '1997-07-22 00:00:00', 1, 58.3, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10602, 'VAFFE', 8, '1997-07-17 00:00:00', '1997-08-14 00:00:00', '1997-07-22 00:00:00', 2, 2.92, 'Vaffeljernet', 'Smagsløget 45', 'Århus', '', '8200', 'Dinamarca'),
(10603, 'SAVEA', 8, '1997-07-18 00:00:00', '1997-08-15 00:00:00', '1997-08-08 00:00:00', 2, 48.77, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10604, 'FURIB', 1, '1997-07-18 00:00:00', '1997-08-15 00:00:00', '1997-07-29 00:00:00', 1, 7.46, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', '', '1675', 'Portugal'),
(10605, 'MEREP', 1, '1997-07-21 00:00:00', '1997-08-18 00:00:00', '1997-07-29 00:00:00', 2, 379.13, 'Mère Paillarde', '43 rue St. Laurent', 'Montreal', 'Québec', 'H1J 1C3', 'Canadá'),
(10606, 'TRADH', 4, '1997-07-22 00:00:00', '1997-08-19 00:00:00', '1997-07-31 00:00:00', 3, 79.4, 'Tradição Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brasil'),
(10607, 'SAVEA', 5, '1997-07-22 00:00:00', '1997-08-19 00:00:00', '1997-07-25 00:00:00', 1, 200.24, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10608, 'TOMSP', 4, '1997-07-23 00:00:00', '1997-08-20 00:00:00', '1997-08-01 00:00:00', 2, 27.79, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', '', '44087', 'Alemania'),
(10609, 'DUMON', 7, '1997-07-24 00:00:00', '1997-08-21 00:00:00', '1997-07-30 00:00:00', 2, 1.85, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', '', '44000', 'Francia'),
(10610, 'LAMAI', 8, '1997-07-25 00:00:00', '1997-08-22 00:00:00', '1997-08-06 00:00:00', 1, 26.78, 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'Francia'),
(10611, 'WOLZA', 6, '1997-07-25 00:00:00', '1997-08-22 00:00:00', '1997-08-01 00:00:00', 2, 80.65, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', '', '01-012', 'Polonia'),
(10612, 'SAVEA', 1, '1997-07-28 00:00:00', '1997-08-25 00:00:00', '1997-08-01 00:00:00', 2, 544.08, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10613, 'HILAA', 4, '1997-07-29 00:00:00', '1997-08-26 00:00:00', '1997-08-01 00:00:00', 2, 8.11, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10614, 'BLAUS', 8, '1997-07-29 00:00:00', '1997-08-26 00:00:00', '1997-08-01 00:00:00', 3, 1.93, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', '', '68306', 'Alemania'),
(10615, 'WILMK', 2, '1997-07-30 00:00:00', '1997-08-27 00:00:00', '1997-08-06 00:00:00', 3, 0.75, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', '', '21240', 'Finlandia'),
(10616, 'GREAL', 1, '1997-07-31 00:00:00', '1997-08-28 00:00:00', '1997-08-05 00:00:00', 2, 116.53, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugenia', 'OR', '97403', 'Estados Unidos'),
(10617, 'GREAL', 4, '1997-07-31 00:00:00', '1997-08-28 00:00:00', '1997-08-04 00:00:00', 2, 18.53, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugenia', 'OR', '97403', 'Estados Unidos'),
(10618, 'MEREP', 1, '1997-08-01 00:00:00', '1997-09-12 00:00:00', '1997-08-08 00:00:00', 1, 154.68, 'Mère Paillarde', '43 rue St. Laurent', 'Montreal', 'Québec', 'H1J 1C3', 'Canadá'),
(10619, 'MEREP', 3, '1997-08-04 00:00:00', '1997-09-01 00:00:00', '1997-08-07 00:00:00', 3, 91.05, 'Mère Paillarde', '43 rue St. Laurent', 'Montreal', 'Québec', 'H1J 1C3', 'Canadá'),
(10620, 'LAUGB', 2, '1997-08-05 00:00:00', '1997-09-02 00:00:00', '1997-08-14 00:00:00', 3, 0.94, 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canadá'),
(10621, 'ISLAT', 4, '1997-08-05 00:00:00', '1997-09-02 00:00:00', '1997-08-11 00:00:00', 2, 23.73, 'Island Trading', 'Garden House\r\nCrowther Way', 'Cowes', 'Isla de Wight', 'PO31 7PJ', 'Reino Unido'),
(10622, 'RICAR', 4, '1997-08-06 00:00:00', '1997-09-03 00:00:00', '1997-08-11 00:00:00', 3, 50.97, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10623, 'FRANK', 8, '1997-08-07 00:00:00', '1997-09-04 00:00:00', '1997-08-12 00:00:00', 2, 97.18, 'Frankenversand', 'Berliner Platz 43', 'München', '', '80805', 'Alemania'),
(10624, 'THECR', 4, '1997-08-07 00:00:00', '1997-09-04 00:00:00', '1997-08-19 00:00:00', 2, 94.8, 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'Estados Unidos'),
(10625, 'ANATR', 3, '1997-08-08 00:00:00', '1997-09-05 00:00:00', '1997-08-14 00:00:00', 1, 43.9, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', '', '05021', 'México'),
(10626, 'BERGS', 1, '1997-08-11 00:00:00', '1997-09-08 00:00:00', '1997-08-20 00:00:00', 2, 138.69, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10627, 'SAVEA', 8, '1997-08-11 00:00:00', '1997-09-22 00:00:00', '1997-08-21 00:00:00', 3, 107.46, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10628, 'BLONP', 4, '1997-08-12 00:00:00', '1997-09-09 00:00:00', '1997-08-20 00:00:00', 3, 30.36, 'Blondel père et fils', '24, place Kléber', 'Estrasburgo', '', '67000', 'Francia'),
(10629, 'GODOS', 4, '1997-08-12 00:00:00', '1997-09-09 00:00:00', '1997-08-20 00:00:00', 3, 85.46, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', '', '41101', 'España'),
(10630, 'KOENE', 1, '1997-08-13 00:00:00', '1997-09-10 00:00:00', '1997-08-19 00:00:00', 2, 32.35, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburgo', '', '14776', 'Alemania'),
(10631, 'LAMAI', 8, '1997-08-14 00:00:00', '1997-09-11 00:00:00', '1997-08-15 00:00:00', 1, 0.87, 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'Francia'),
(10632, 'WANDK', 8, '1997-08-14 00:00:00', '1997-09-11 00:00:00', '1997-08-19 00:00:00', 1, 41.38, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', '', '70563', 'Alemania'),
(10633, 'ERNSH', 7, '1997-08-15 00:00:00', '1997-09-12 00:00:00', '1997-08-18 00:00:00', 3, 477.9, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10634, 'FOLIG', 4, '1997-08-15 00:00:00', '1997-09-12 00:00:00', '1997-08-21 00:00:00', 3, 487.38, 'Folies gourmandes', '184, chaussée de Tournai', 'Lille', '', '59000', 'Francia'),
(10635, 'MAGAA', 8, '1997-08-18 00:00:00', '1997-09-15 00:00:00', '1997-08-21 00:00:00', 3, 47.46, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', '', '24100', 'Italia'),
(10636, 'WARTH', 4, '1997-08-19 00:00:00', '1997-09-16 00:00:00', '1997-08-26 00:00:00', 1, 1.15, 'Wartian Herkku', 'Torikatu 38', 'Oulu', '', '90110', 'Finlandia'),
(10637, 'QUEEN', 6, '1997-08-19 00:00:00', '1997-09-16 00:00:00', '1997-08-26 00:00:00', 1, 201.29, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brasil'),
(10638, 'LINOD', 3, '1997-08-20 00:00:00', '1997-09-17 00:00:00', '1997-09-01 00:00:00', 1, 158.44, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10639, 'SANTG', 7, '1997-08-20 00:00:00', '1997-09-17 00:00:00', '1997-08-27 00:00:00', 3, 38.64, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', '', '4110', 'Noruega'),
(10640, 'WANDK', 4, '1997-08-21 00:00:00', '1997-09-18 00:00:00', '1997-08-28 00:00:00', 1, 23.55, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', '', '70563', 'Alemania'),
(10641, 'HILAA', 4, '1997-08-22 00:00:00', '1997-09-19 00:00:00', '1997-08-26 00:00:00', 2, 179.61, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10642, 'SIMOB', 7, '1997-08-22 00:00:00', '1997-09-19 00:00:00', '1997-09-05 00:00:00', 3, 41.89, 'Simons bistro', 'Vinbæltet 34', 'København', '', '1734', 'Dinamarca'),
(10643, 'WILMK', 6, '1997-08-25 00:00:00', '1997-09-22 00:00:00', '1997-09-02 00:00:00', 1, 29.46, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', '', '21240', 'Finlandia'),
(10644, 'WELLI', 3, '1997-08-25 00:00:00', '1997-09-22 00:00:00', '1997-09-01 00:00:00', 2, 0.14, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10645, 'HANAR', 4, '1997-08-26 00:00:00', '1997-09-23 00:00:00', '1997-09-02 00:00:00', 1, 12.41, 'Hanari Carnes', 'Rua do Paço, 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10646, 'HUNGO', 9, '1997-08-27 00:00:00', '1997-10-08 00:00:00', '1997-09-03 00:00:00', 3, 142.33, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10647, 'QUEDE', 4, '1997-08-27 00:00:00', '1997-09-10 00:00:00', '1997-09-03 00:00:00', 2, 45.54, 'Que Delícia', 'Rua da Panificadora, 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10648, 'RICAR', 5, '1997-08-28 00:00:00', '1997-10-09 00:00:00', '1997-09-09 00:00:00', 2, 14.25, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10649, 'MAISD', 5, '1997-08-28 00:00:00', '1997-09-25 00:00:00', '1997-08-29 00:00:00', 3, 6.2, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruselas', '', 'B-1180', 'Bélgica'),
(10650, 'FAMIA', 5, '1997-08-29 00:00:00', '1997-09-26 00:00:00', '1997-09-03 00:00:00', 3, 176.81, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brasil'),
(10651, 'WANDK', 8, '1997-09-01 00:00:00', '1997-09-29 00:00:00', '1997-09-11 00:00:00', 2, 20.6, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', '', '70563', 'Alemania'),
(10652, 'GOURL', 4, '1997-09-01 00:00:00', '1997-09-29 00:00:00', '1997-09-08 00:00:00', 2, 7.14, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(10653, 'FRANK', 1, '1997-09-02 00:00:00', '1997-09-30 00:00:00', '1997-09-19 00:00:00', 1, 93.25, 'Frankenversand', 'Berliner Platz 43', 'München', '', '80805', 'Alemania'),
(10654, 'BERGS', 5, '1997-09-02 00:00:00', '1997-09-30 00:00:00', '1997-09-11 00:00:00', 1, 55.26, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10655, 'REGGC', 1, '1997-09-03 00:00:00', '1997-10-01 00:00:00', '1997-09-11 00:00:00', 2, 4.41, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', '', '42100', 'Italia'),
(10656, 'GREAL', 6, '1997-09-04 00:00:00', '1997-10-02 00:00:00', '1997-09-10 00:00:00', 1, 57.15, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugenia', 'OR', '97403', 'Estados Unidos'),
(10657, 'SAVEA', 2, '1997-09-04 00:00:00', '1997-10-02 00:00:00', '1997-09-15 00:00:00', 2, 352.69, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10658, 'QUICK', 4, '1997-09-05 00:00:00', '1997-10-03 00:00:00', '1997-09-08 00:00:00', 1, 364.15, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10659, 'QUEEN', 7, '1997-09-05 00:00:00', '1997-10-03 00:00:00', '1997-09-10 00:00:00', 2, 105.81, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brasil'),
(10660, 'HUNGC', 8, '1997-09-08 00:00:00', '1997-10-06 00:00:00', '1997-10-15 00:00:00', 1, 111.29, 'Hungry Coyote Import Store', 'Ciudad Center Plaza\r\n516 Main St.', 'Elgin', 'OR', '97827', 'Estados Unidos'),
(10661, 'HUNGO', 7, '1997-09-09 00:00:00', '1997-10-07 00:00:00', '1997-09-15 00:00:00', 3, 17.55, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10662, 'LONEP', 3, '1997-09-09 00:00:00', '1997-10-07 00:00:00', '1997-09-18 00:00:00', 2, 1.28, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos'),
(10663, 'BONAP', 2, '1997-09-10 00:00:00', '1997-09-24 00:00:00', '1997-10-03 00:00:00', 2, 113.15, 'Bon app\'', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia'),
(10664, 'FURIB', 1, '1997-09-10 00:00:00', '1997-10-08 00:00:00', '1997-09-19 00:00:00', 3, 1.27, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', '', '1675', 'Portugal'),
(10665, 'LONEP', 1, '1997-09-11 00:00:00', '1997-10-09 00:00:00', '1997-09-17 00:00:00', 2, 26.31, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos'),
(10666, 'RICSU', 7, '1997-09-12 00:00:00', '1997-10-10 00:00:00', '1997-09-22 00:00:00', 2, 232.42, 'Richter Supermarkt', 'Starenweg 5', 'Génova', '', '1204', 'Suiza'),
(10667, 'ERNSH', 7, '1997-09-12 00:00:00', '1997-10-10 00:00:00', '1997-09-19 00:00:00', 1, 78.09, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10668, 'WANDK', 1, '1997-09-15 00:00:00', '1997-10-13 00:00:00', '1997-09-23 00:00:00', 2, 47.22, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', '', '70563', 'Alemania'),
(10669, 'SIMOB', 2, '1997-09-15 00:00:00', '1997-10-13 00:00:00', '1997-09-22 00:00:00', 1, 24.39, 'Simons bistro', 'Vinbæltet 34', 'København', '', '1734', 'Dinamarca'),
(10670, 'FRANK', 4, '1997-09-16 00:00:00', '1997-10-14 00:00:00', '1997-09-18 00:00:00', 1, 203.48, 'Frankenversand', 'Berliner Platz 43', 'München', '', '80805', 'Alemania'),
(10671, 'FRANR', 1, '1997-09-17 00:00:00', '1997-10-15 00:00:00', '1997-09-24 00:00:00', 1, 30.34, 'France restauration', '54, rue Royale', 'Nantes', '', '44000', 'Francia'),
(10672, 'BERGS', 9, '1997-09-17 00:00:00', '1997-10-01 00:00:00', '1997-09-26 00:00:00', 2, 95.75, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10673, 'WILMK', 2, '1997-09-18 00:00:00', '1997-10-16 00:00:00', '1997-09-19 00:00:00', 1, 22.76, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', '', '21240', 'Finlandia'),
(10674, 'ISLAT', 4, '1997-09-18 00:00:00', '1997-10-16 00:00:00', '1997-09-30 00:00:00', 2, 0.9, 'Island Trading', 'Garden House\r\nCrowther Way', 'Cowes', 'Isla de Wight', 'PO31 7PJ', 'Reino Unido'),
(10675, 'FRANK', 5, '1997-09-19 00:00:00', '1997-10-17 00:00:00', '1997-09-23 00:00:00', 2, 31.85, 'Frankenversand', 'Berliner Platz 43', 'München', '', '80805', 'Alemania'),
(10676, 'TORTU', 2, '1997-09-22 00:00:00', '1997-10-20 00:00:00', '1997-09-29 00:00:00', 2, 2.01, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', '', '05033', 'México'),
(10677, 'ANTON', 1, '1997-09-22 00:00:00', '1997-10-20 00:00:00', '1997-09-26 00:00:00', 3, 4.03, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', '', '05023', 'México'),
(10678, 'SAVEA', 7, '1997-09-23 00:00:00', '1997-10-21 00:00:00', '1997-10-16 00:00:00', 3, 388.98, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10679, 'BLONP', 8, '1997-09-23 00:00:00', '1997-10-21 00:00:00', '1997-09-30 00:00:00', 3, 27.94, 'Blondel père et fils', '24, place Kléber', 'Estrasburgo', '', '67000', 'Francia'),
(10680, 'OLDWO', 1, '1997-09-24 00:00:00', '1997-10-22 00:00:00', '1997-09-26 00:00:00', 1, 26.61, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10681, 'GREAL', 3, '1997-09-25 00:00:00', '1997-10-23 00:00:00', '1997-09-30 00:00:00', 3, 76.13, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugenia', 'OR', '97403', 'Estados Unidos'),
(10682, 'ANTON', 3, '1997-09-25 00:00:00', '1997-10-23 00:00:00', '1997-10-01 00:00:00', 2, 36.13, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', '', '05023', 'México'),
(10683, 'DUMON', 2, '1997-09-26 00:00:00', '1997-10-24 00:00:00', '1997-10-01 00:00:00', 1, 4.4, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', '', '44000', 'Francia'),
(10684, 'OTTIK', 3, '1997-09-26 00:00:00', '1997-10-24 00:00:00', '1997-09-30 00:00:00', 1, 145.63, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', '', '50739', 'Alemania'),
(10685, 'GOURL', 4, '1997-09-29 00:00:00', '1997-10-13 00:00:00', '1997-10-03 00:00:00', 2, 33.75, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(10686, 'PICCO', 2, '1997-09-30 00:00:00', '1997-10-28 00:00:00', '1997-10-08 00:00:00', 1, 96.5, 'Piccolo und mehr', 'Geislweg 14', 'Salzburgo', '', '5020', 'Austria'),
(10687, 'HUNGO', 9, '1997-09-30 00:00:00', '1997-10-28 00:00:00', '1997-10-30 00:00:00', 2, 296.43, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10688, 'VAFFE', 4, '1997-10-01 00:00:00', '1997-10-15 00:00:00', '1997-10-07 00:00:00', 2, 299.09, 'Vaffeljernet', 'Smagsløget 45', 'Århus', '', '8200', 'Dinamarca'),
(10689, 'BERGS', 1, '1997-10-01 00:00:00', '1997-10-29 00:00:00', '1997-10-07 00:00:00', 2, 13.42, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10690, 'HANAR', 1, '1997-10-02 00:00:00', '1997-10-30 00:00:00', '1997-10-03 00:00:00', 1, 15.8, 'Hanari Carnes', 'Rua do Paço, 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10691, 'QUICK', 2, '1997-10-03 00:00:00', '1997-11-14 00:00:00', '1997-10-22 00:00:00', 2, 810.05, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10692, 'WILMK', 4, '1997-10-03 00:00:00', '1997-10-31 00:00:00', '1997-10-13 00:00:00', 3, 61.02, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', '', '21240', 'Finlandia'),
(10693, 'WHITC', 3, '1997-10-06 00:00:00', '1997-10-20 00:00:00', '1997-10-10 00:00:00', 3, 139.34, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10694, 'QUICK', 8, '1997-10-06 00:00:00', '1997-11-03 00:00:00', '1997-10-09 00:00:00', 3, 398.36, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10695, 'WILMK', 7, '1997-10-07 00:00:00', '1997-11-18 00:00:00', '1997-10-14 00:00:00', 1, 16.72, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', '', '21240', 'Finlandia'),
(10696, 'WHITC', 8, '1997-10-08 00:00:00', '1997-11-19 00:00:00', '1997-10-14 00:00:00', 3, 102.55, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10697, 'LINOD', 3, '1997-10-08 00:00:00', '1997-11-05 00:00:00', '1997-10-14 00:00:00', 1, 45.52, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10698, 'ERNSH', 4, '1997-10-09 00:00:00', '1997-11-06 00:00:00', '1997-10-17 00:00:00', 1, 272.47, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10699, 'MORGK', 3, '1997-10-09 00:00:00', '1997-11-06 00:00:00', '1997-10-13 00:00:00', 3, 0.58, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', '', '04179', 'Alemania'),
(10700, 'SAVEA', 3, '1997-10-10 00:00:00', '1997-11-07 00:00:00', '1997-10-16 00:00:00', 1, 65.1, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10701, 'HUNGO', 6, '1997-10-13 00:00:00', '1997-10-27 00:00:00', '1997-10-15 00:00:00', 3, 220.31, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10702, 'WHITC', 4, '1997-10-13 00:00:00', '1997-11-24 00:00:00', '1997-10-21 00:00:00', 1, 23.94, 'White Clover Markets', '305 - 14th Ave. S.\r\nSuite 3B', 'Seattle', 'WA', '98128', 'Estados Unidos'),
(10703, 'FOLKO', 6, '1997-10-14 00:00:00', '1997-11-11 00:00:00', '1997-10-20 00:00:00', 2, 152.3, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(10704, 'QUEEN', 6, '1997-10-14 00:00:00', '1997-11-11 00:00:00', '1997-11-07 00:00:00', 1, 4.78, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brasil'),
(10705, 'HILAA', 9, '1997-10-15 00:00:00', '1997-11-12 00:00:00', '1997-11-18 00:00:00', 2, 3.52, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10706, 'OLDWO', 8, '1997-10-16 00:00:00', '1997-11-13 00:00:00', '1997-10-21 00:00:00', 3, 135.63, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10707, 'AROUT', 4, '1997-10-16 00:00:00', '1997-10-30 00:00:00', '1997-10-23 00:00:00', 3, 21.74, 'Around the Horn', 'Brook Farm\r\nStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10708, 'THEBI', 6, '1997-10-17 00:00:00', '1997-11-28 00:00:00', '1997-11-05 00:00:00', 2, 2.96, 'The Big Cheese', '89 Jefferson Way\r\nSuite 2', 'Portland', 'OR', '97201', 'Estados Unidos'),
(10709, 'GOURL', 1, '1997-10-17 00:00:00', '1997-11-14 00:00:00', '1997-11-20 00:00:00', 3, 210.8, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(10710, 'FRANS', 1, '1997-10-20 00:00:00', '1997-11-17 00:00:00', '1997-10-23 00:00:00', 1, 4.98, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', '', '10100', 'Italia'),
(10711, 'SAVEA', 5, '1997-10-21 00:00:00', '1997-12-02 00:00:00', '1997-10-29 00:00:00', 2, 52.41, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10712, 'HUNGO', 3, '1997-10-21 00:00:00', '1997-11-18 00:00:00', '1997-10-31 00:00:00', 1, 89.93, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10713, 'SAVEA', 1, '1997-10-22 00:00:00', '1997-11-19 00:00:00', '1997-10-24 00:00:00', 1, 167.05, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10714, 'SAVEA', 5, '1997-10-22 00:00:00', '1997-11-19 00:00:00', '1997-10-27 00:00:00', 3, 24.49, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10715, 'BONAP', 3, '1997-10-23 00:00:00', '1997-11-06 00:00:00', '1997-10-29 00:00:00', 1, 63.2, 'Bon app\'', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia'),
(10716, 'RANCH', 4, '1997-10-24 00:00:00', '1997-11-21 00:00:00', '1997-10-27 00:00:00', 2, 22.57, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', '', '1010', 'Argentina'),
(10717, 'FRANK', 1, '1997-10-24 00:00:00', '1997-11-21 00:00:00', '1997-10-29 00:00:00', 2, 59.25, 'Frankenversand', 'Berliner Platz 43', 'München', '', '80805', 'Alemania'),
(10718, 'KOENE', 1, '1997-10-27 00:00:00', '1997-11-24 00:00:00', '1997-10-29 00:00:00', 3, 170.88, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburgo', '', '14776', 'Alemania'),
(10719, 'LETSS', 8, '1997-10-27 00:00:00', '1997-11-24 00:00:00', '1997-11-05 00:00:00', 2, 51.44, 'Let\'s Stop N Shop', '87 Polk St.\r\nSuite 5', 'San Francisco', 'CA', '94117', 'Estados Unidos'),
(10720, 'QUEDE', 8, '1997-10-28 00:00:00', '1997-11-11 00:00:00', '1997-11-05 00:00:00', 2, 9.53, 'Que Delícia', 'Rua da Panificadora, 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10721, 'QUICK', 5, '1997-10-29 00:00:00', '1997-11-26 00:00:00', '1997-10-31 00:00:00', 3, 48.92, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10722, 'SAVEA', 8, '1997-10-29 00:00:00', '1997-12-10 00:00:00', '1997-11-04 00:00:00', 1, 74.58, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10723, 'WHITC', 3, '1997-10-30 00:00:00', '1997-11-27 00:00:00', '1997-11-25 00:00:00', 1, 21.72, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10724, 'MEREP', 8, '1997-10-30 00:00:00', '1997-12-11 00:00:00', '1997-11-05 00:00:00', 2, 57.75, 'Mère Paillarde', '43 rue St. Laurent', 'Montreal', 'Québec', 'H1J 1C3', 'Canadá'),
(10725, 'FAMIA', 4, '1997-10-31 00:00:00', '1997-11-28 00:00:00', '1997-11-05 00:00:00', 3, 10.83, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brasil'),
(10726, 'EASTC', 4, '1997-11-03 00:00:00', '1997-11-17 00:00:00', '1997-12-05 00:00:00', 1, 16.56, 'Eastern Connection', '35 King George', 'Londres', '', 'WX3 6FW', 'Reino Unido'),
(10727, 'REGGC', 2, '1997-11-03 00:00:00', '1997-12-01 00:00:00', '1997-12-05 00:00:00', 1, 89.9, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', '', '42100', 'Italia'),
(10728, 'QUEEN', 4, '1997-11-04 00:00:00', '1997-12-02 00:00:00', '1997-11-11 00:00:00', 2, 58.33, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brasil'),
(10729, 'LINOD', 8, '1997-11-04 00:00:00', '1997-12-16 00:00:00', '1997-11-14 00:00:00', 3, 141.06, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10730, 'BONAP', 5, '1997-11-05 00:00:00', '1997-12-03 00:00:00', '1997-11-14 00:00:00', 1, 20.12, 'Bon app\'', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia'),
(10731, 'CHOPS', 7, '1997-11-06 00:00:00', '1997-12-04 00:00:00', '1997-11-14 00:00:00', 1, 96.65, 'Chop-suey Chinese', 'Hauptstr. 31', 'Berna', '', '3012', 'Suiza'),
(10732, 'BONAP', 3, '1997-11-06 00:00:00', '1997-12-04 00:00:00', '1997-11-07 00:00:00', 1, 16.97, 'Bon app\'', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia'),
(10733, 'BERGS', 1, '1997-11-07 00:00:00', '1997-12-05 00:00:00', '1997-11-10 00:00:00', 3, 110.11, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10734, 'GOURL', 2, '1997-11-07 00:00:00', '1997-12-05 00:00:00', '1997-11-12 00:00:00', 3, 1.63, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(10735, 'LETSS', 6, '1997-11-10 00:00:00', '1997-12-08 00:00:00', '1997-11-21 00:00:00', 2, 45.97, 'Let\'s Stop N Shop', '87 Polk St.\r\nSuite 5', 'San Francisco', 'CA', '94117', 'Estados Unidos'),
(10736, 'HUNGO', 9, '1997-11-11 00:00:00', '1997-12-09 00:00:00', '1997-11-21 00:00:00', 2, 44.1, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10737, 'VINET', 2, '1997-11-11 00:00:00', '1997-12-09 00:00:00', '1997-11-18 00:00:00', 2, 7.79, 'Vins et alcools Chevalier', '59 rue de l\'Abbaye', 'Reims', '', '51100', 'Francia'),
(10738, 'SPECD', 2, '1997-11-12 00:00:00', '1997-12-10 00:00:00', '1997-11-18 00:00:00', 1, 2.91, 'Spécialités du monde', '25, rue Lauriston', 'París', '', '75016', 'Francia'),
(10739, 'VINET', 3, '1997-11-12 00:00:00', '1997-12-10 00:00:00', '1997-11-17 00:00:00', 3, 11.08, 'Vins et alcools Chevalier', '59 rue de l\'Abbaye', 'Reims', '', '51100', 'Francia'),
(10740, 'WHITC', 4, '1997-11-13 00:00:00', '1997-12-11 00:00:00', '1997-11-25 00:00:00', 2, 81.88, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10741, 'AROUT', 4, '1997-11-14 00:00:00', '1997-11-28 00:00:00', '1997-11-18 00:00:00', 3, 10.96, 'Around the Horn', 'Brook Farm\r\nStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10742, 'BOTTM', 3, '1997-11-14 00:00:00', '1997-12-12 00:00:00', '1997-11-18 00:00:00', 3, 243.73, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10743, 'AROUT', 1, '1997-11-17 00:00:00', '1997-12-15 00:00:00', '1997-11-21 00:00:00', 2, 23.72, 'Around the Horn', 'Brook Farm\r\nStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10744, 'VAFFE', 6, '1997-11-17 00:00:00', '1997-12-15 00:00:00', '1997-11-24 00:00:00', 1, 69.19, 'Vaffeljernet', 'Smagsløget 45', 'Århus', '', '8200', 'Dinamarca'),
(10745, 'QUICK', 9, '1997-11-18 00:00:00', '1997-12-16 00:00:00', '1997-11-27 00:00:00', 1, 3.52, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10746, 'CHOPS', 1, '1997-11-19 00:00:00', '1997-12-17 00:00:00', '1997-11-21 00:00:00', 3, 31.43, 'Chop-suey Chinese', 'Hauptstr. 31', 'Berna', '', '3012', 'Suiza'),
(10747, 'PICCO', 6, '1997-11-19 00:00:00', '1997-12-17 00:00:00', '1997-11-26 00:00:00', 1, 117.33, 'Piccolo und mehr', 'Geislweg 14', 'Salzburgo', '', '5020', 'Austria'),
(10748, 'SAVEA', 3, '1997-11-20 00:00:00', '1997-12-18 00:00:00', '1997-11-28 00:00:00', 1, 232.55, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10749, 'ISLAT', 4, '1997-11-20 00:00:00', '1997-12-18 00:00:00', '1997-12-19 00:00:00', 2, 61.53, 'Island Trading', 'Garden House\r\nCrowther Way', 'Cowes', 'Isla de Wight', 'PO31 7PJ', 'Reino Unido'),
(10750, 'WARTH', 9, '1997-11-21 00:00:00', '1997-12-19 00:00:00', '1997-11-24 00:00:00', 1, 79.3, 'Wartian Herkku', 'Torikatu 38', 'Oulu', '', '90110', 'Finlandia'),
(10751, 'RICSU', 3, '1997-11-24 00:00:00', '1997-12-22 00:00:00', '1997-12-03 00:00:00', 3, 130.79, 'Richter Supermarkt', 'Starenweg 5', 'Génova', '', '1204', 'Suiza'),
(10752, 'NORTS', 2, '1997-11-24 00:00:00', '1997-12-22 00:00:00', '1997-11-28 00:00:00', 3, 1.39, 'North/South', 'South House\r\n300 Queensbridge', 'Londres', '', 'SW7 1RZ', 'Reino Unido'),
(10753, 'FRANS', 3, '1997-11-25 00:00:00', '1997-12-23 00:00:00', '1997-11-27 00:00:00', 1, 7.7, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', '', '10100', 'Italia'),
(10754, 'MAGAA', 6, '1997-11-25 00:00:00', '1997-12-23 00:00:00', '1997-11-27 00:00:00', 3, 2.38, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', '', '24100', 'Italia'),
(10755, 'BONAP', 4, '1997-11-26 00:00:00', '1997-12-24 00:00:00', '1997-11-28 00:00:00', 2, 16.71, 'Bon app\'', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia'),
(10756, 'SPLIR', 8, '1997-11-27 00:00:00', '1997-12-25 00:00:00', '1997-12-02 00:00:00', 2, 73.21, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10757, 'SAVEA', 6, '1997-11-27 00:00:00', '1997-12-25 00:00:00', '1997-12-15 00:00:00', 1, 8.19, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10758, 'RICSU', 3, '1997-11-28 00:00:00', '1997-12-26 00:00:00', '1997-12-04 00:00:00', 3, 138.17, 'Richter Supermarkt', 'Starenweg 5', 'Génova', '', '1204', 'Suiza'),
(10759, 'ANATR', 3, '1997-11-28 00:00:00', '1997-12-26 00:00:00', '1997-12-12 00:00:00', 3, 11.99, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', '', '05021', 'México'),
(10760, 'MAISD', 4, '1997-12-01 00:00:00', '1997-12-29 00:00:00', '1997-12-10 00:00:00', 1, 155.64, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruselas', '', 'B-1180', 'Bélgica'),
(10761, 'RATTC', 5, '1997-12-02 00:00:00', '1997-12-30 00:00:00', '1997-12-08 00:00:00', 2, 18.66, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10762, 'FOLKO', 3, '1997-12-02 00:00:00', '1997-12-30 00:00:00', '1997-12-09 00:00:00', 1, 328.74, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(10763, 'FOLIG', 3, '1997-12-03 00:00:00', '1997-12-31 00:00:00', '1997-12-08 00:00:00', 3, 37.35, 'Folies gourmandes', '184, chaussée de Tournai', 'Lille', '', '59000', 'Francia'),
(10764, 'ERNSH', 6, '1997-12-03 00:00:00', '1997-12-31 00:00:00', '1997-12-08 00:00:00', 3, 145.45, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10765, 'QUICK', 3, '1997-12-04 00:00:00', '1998-01-01 00:00:00', '1997-12-09 00:00:00', 3, 42.74, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10766, 'OTTIK', 4, '1997-12-05 00:00:00', '1998-01-02 00:00:00', '1997-12-09 00:00:00', 1, 157.55, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', '', '50739', 'Alemania'),
(10767, 'SUPRD', 4, '1997-12-05 00:00:00', '1998-01-02 00:00:00', '1997-12-15 00:00:00', 3, 1.59, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Bélgica'),
(10768, 'AROUT', 3, '1997-12-08 00:00:00', '1998-01-05 00:00:00', '1997-12-15 00:00:00', 2, 146.32, 'Around the Horn', 'Brook Farm\r\nStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10769, 'VAFFE', 3, '1997-12-08 00:00:00', '1998-01-05 00:00:00', '1997-12-12 00:00:00', 1, 65.06, 'Vaffeljernet', 'Smagsløget 45', 'Århus', '', '8200', 'Dinamarca'),
(10770, 'HANAR', 8, '1997-12-09 00:00:00', '1998-01-06 00:00:00', '1997-12-17 00:00:00', 3, 5.32, 'Hanari Carnes', 'Rua do Paço, 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10771, 'ERNSH', 9, '1997-12-10 00:00:00', '1998-01-07 00:00:00', '1998-01-02 00:00:00', 2, 11.19, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10772, 'LEHMS', 3, '1997-12-10 00:00:00', '1998-01-07 00:00:00', '1997-12-19 00:00:00', 2, 91.28, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', '', '60528', 'Alemania'),
(10773, 'ERNSH', 1, '1997-12-11 00:00:00', '1998-01-08 00:00:00', '1997-12-16 00:00:00', 3, 96.43, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10774, 'FOLKO', 4, '1997-12-11 00:00:00', '1997-12-25 00:00:00', '1997-12-12 00:00:00', 1, 48.2, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(10775, 'THECR', 7, '1997-12-12 00:00:00', '1998-01-09 00:00:00', '1997-12-26 00:00:00', 1, 20.25, 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'Estados Unidos'),
(10776, 'ERNSH', 1, '1997-12-15 00:00:00', '1998-01-12 00:00:00', '1997-12-18 00:00:00', 3, 351.53, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10777, 'GOURL', 7, '1997-12-15 00:00:00', '1997-12-29 00:00:00', '1998-01-21 00:00:00', 2, 3.01, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(10778, 'BERGS', 3, '1997-12-16 00:00:00', '1998-01-13 00:00:00', '1997-12-24 00:00:00', 1, 6.79, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10779, 'MORGK', 3, '1997-12-16 00:00:00', '1998-01-13 00:00:00', '1998-01-14 00:00:00', 2, 58.13, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', '', '04179', 'Alemania'),
(10780, 'LILAS', 2, '1997-12-16 00:00:00', '1997-12-30 00:00:00', '1997-12-25 00:00:00', 1, 42.13, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10781, 'WARTH', 2, '1997-12-17 00:00:00', '1998-01-14 00:00:00', '1997-12-19 00:00:00', 3, 73.16, 'Wartian Herkku', 'Torikatu 38', 'Oulu', '', '90110', 'Finlandia'),
(10782, 'CACTU', 9, '1997-12-17 00:00:00', '1998-01-14 00:00:00', '1997-12-22 00:00:00', 3, 1.1, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', '', '1010', 'Argentina'),
(10783, 'HANAR', 4, '1997-12-18 00:00:00', '1998-01-15 00:00:00', '1997-12-19 00:00:00', 2, 124.98, 'Hanari Carnes', 'Rua do Paço, 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10784, 'MAGAA', 4, '1997-12-18 00:00:00', '1998-01-15 00:00:00', '1997-12-22 00:00:00', 3, 70.09, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', '', '24100', 'Italia'),
(10785, 'GROSR', 1, '1997-12-18 00:00:00', '1998-01-15 00:00:00', '1997-12-24 00:00:00', 3, 1.51, 'GROSELLA-Restaurante', '5ª Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela'),
(10786, 'QUEEN', 8, '1997-12-19 00:00:00', '1998-01-16 00:00:00', '1997-12-23 00:00:00', 1, 110.87, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brasil'),
(10787, 'LAMAI', 2, '1997-12-19 00:00:00', '1998-01-02 00:00:00', '1997-12-26 00:00:00', 1, 249.93, 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'Francia'),
(10788, 'QUICK', 1, '1997-12-22 00:00:00', '1998-01-19 00:00:00', '1998-01-19 00:00:00', 2, 42.7, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10789, 'FOLIG', 1, '1997-12-22 00:00:00', '1998-01-19 00:00:00', '1997-12-31 00:00:00', 2, 100.6, 'Folies gourmandes', '184, chaussée de Tournai', 'Lille', '', '59000', 'Francia'),
(10790, 'GOURL', 6, '1997-12-22 00:00:00', '1998-01-19 00:00:00', '1997-12-26 00:00:00', 1, 28.23, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(10791, 'FRANK', 6, '1997-12-23 00:00:00', '1998-01-20 00:00:00', '1998-01-01 00:00:00', 2, 16.85, 'Frankenversand', 'Berliner Platz 43', 'München', '', '80805', 'Alemania'),
(10792, 'WOLZA', 1, '1997-12-23 00:00:00', '1998-01-20 00:00:00', '1997-12-31 00:00:00', 3, 23.79, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', '', '01-012', 'Polonia'),
(10793, 'AROUT', 3, '1997-12-24 00:00:00', '1998-01-21 00:00:00', '1998-01-08 00:00:00', 3, 4.52, 'Around the Horn', 'Brook Farm\r\nStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10794, 'QUEDE', 6, '1997-12-24 00:00:00', '1998-01-21 00:00:00', '1998-01-02 00:00:00', 1, 21.49, 'Que Delícia', 'Rua da Panificadora, 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil');
INSERT INTO `pedidos` (`IdPedido`, `IdCliente`, `IdEmpleado`, `FechaPedido`, `FechaEntrega`, `FechaEnvio`, `EnviadoVia`, `Flete`, `NombreDestinatario`, `DireccionDestinatario`, `CiudadDestino`, `RegionDestino`, `CodigoPostalDestinatario`, `PaisDestino`) VALUES
(10795, 'ERNSH', 8, '1997-12-24 00:00:00', '1998-01-21 00:00:00', '1998-01-20 00:00:00', 2, 126.66, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10796, 'HILAA', 3, '1997-12-25 00:00:00', '1998-01-22 00:00:00', '1998-01-14 00:00:00', 1, 26.52, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10797, 'DRACD', 7, '1997-12-25 00:00:00', '1998-01-22 00:00:00', '1998-01-05 00:00:00', 2, 33.35, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', '', '52066', 'Alemania'),
(10798, 'ISLAT', 2, '1997-12-26 00:00:00', '1998-01-23 00:00:00', '1998-01-05 00:00:00', 1, 2.33, 'Island Trading', 'Garden House\r\nCrowther Way', 'Cowes', 'Isla de Wight', 'PO31 7PJ', 'Reino Unido'),
(10799, 'KOENE', 9, '1997-12-26 00:00:00', '1998-02-06 00:00:00', '1998-01-05 00:00:00', 3, 30.76, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburgo', '', '14776', 'Alemania'),
(10800, 'SEVES', 1, '1997-12-26 00:00:00', '1998-01-23 00:00:00', '1998-01-05 00:00:00', 3, 137.44, 'Seven Seas Imports', '90 Wadhurst Rd.', 'Londres', '', 'OX15 4NB', 'Reino Unido'),
(10801, 'BOLID', 4, '1997-12-29 00:00:00', '1998-01-26 00:00:00', '1997-12-31 00:00:00', 2, 97.09, 'Bólido Comidas preparadas', 'C/ Araquil, 67', 'Madrid', '', '28023', 'España'),
(10802, 'SIMOB', 4, '1997-12-29 00:00:00', '1998-01-26 00:00:00', '1998-01-02 00:00:00', 2, 257.26, 'Simons bistro', 'Vinbæltet 34', 'København', '', '1734', 'Dinamarca'),
(10803, 'WELLI', 4, '1997-12-30 00:00:00', '1998-01-27 00:00:00', '1998-01-06 00:00:00', 1, 55.23, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10804, 'SEVES', 6, '1997-12-30 00:00:00', '1998-01-27 00:00:00', '1998-01-07 00:00:00', 2, 27.33, 'Seven Seas Imports', '90 Wadhurst Rd.', 'Londres', '', 'OX15 4NB', 'Reino Unido'),
(10805, 'THEBI', 2, '1997-12-30 00:00:00', '1998-01-27 00:00:00', '1998-01-09 00:00:00', 3, 237.34, 'The Big Cheese', '89 Jefferson Way\r\nSuite 2', 'Portland', 'OR', '97201', 'Estados Unidos'),
(10806, 'VICTE', 3, '1997-12-31 00:00:00', '1998-01-28 00:00:00', '1998-01-05 00:00:00', 2, 22.11, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', '', '69004', 'Francia'),
(10807, 'FRANS', 4, '1997-12-31 00:00:00', '1998-01-28 00:00:00', '1998-01-30 00:00:00', 1, 1.36, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', '', '10100', 'Italia'),
(10808, 'OLDWO', 2, '1998-01-01 00:00:00', '1998-01-29 00:00:00', '1998-01-09 00:00:00', 3, 45.53, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10809, 'WELLI', 7, '1998-01-01 00:00:00', '1998-01-29 00:00:00', '1998-01-07 00:00:00', 1, 4.87, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10810, 'LAUGB', 2, '1998-01-01 00:00:00', '1998-01-29 00:00:00', '1998-01-07 00:00:00', 3, 4.33, 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canadá'),
(10811, 'LINOD', 8, '1998-01-02 00:00:00', '1998-01-30 00:00:00', '1998-01-08 00:00:00', 1, 31.22, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10812, 'REGGC', 5, '1998-01-02 00:00:00', '1998-01-30 00:00:00', '1998-01-12 00:00:00', 1, 59.78, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', '', '42100', 'Italia'),
(10813, 'RICAR', 1, '1998-01-05 00:00:00', '1998-02-02 00:00:00', '1998-01-09 00:00:00', 1, 47.38, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10814, 'VICTE', 3, '1998-01-05 00:00:00', '1998-02-02 00:00:00', '1998-01-14 00:00:00', 3, 130.94, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', '', '69004', 'Francia'),
(10815, 'SAVEA', 2, '1998-01-05 00:00:00', '1998-02-02 00:00:00', '1998-01-14 00:00:00', 3, 14.62, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10816, 'GREAL', 4, '1998-01-06 00:00:00', '1998-02-03 00:00:00', '1998-02-04 00:00:00', 2, 719.78, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugenia', 'OR', '97403', 'Estados Unidos'),
(10817, 'KOENE', 3, '1998-01-06 00:00:00', '1998-01-20 00:00:00', '1998-01-13 00:00:00', 2, 306.07, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburgo', '', '14776', 'Alemania'),
(10818, 'MAGAA', 7, '1998-01-07 00:00:00', '1998-02-04 00:00:00', '1998-01-12 00:00:00', 3, 65.48, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', '', '24100', 'Italia'),
(10819, 'CACTU', 2, '1998-01-07 00:00:00', '1998-02-04 00:00:00', '1998-01-16 00:00:00', 3, 19.76, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', '', '1010', 'Argentina'),
(10820, 'RATTC', 3, '1998-01-07 00:00:00', '1998-02-04 00:00:00', '1998-01-13 00:00:00', 2, 37.52, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10821, 'SPLIR', 1, '1998-01-08 00:00:00', '1998-02-05 00:00:00', '1998-01-15 00:00:00', 1, 36.68, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10822, 'TRAIH', 6, '1998-01-08 00:00:00', '1998-02-05 00:00:00', '1998-01-16 00:00:00', 3, 7, 'Trail\'s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'Estados Unidos'),
(10823, 'LILAS', 5, '1998-01-09 00:00:00', '1998-02-06 00:00:00', '1998-01-13 00:00:00', 2, 163.97, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10824, 'FOLKO', 8, '1998-01-09 00:00:00', '1998-02-06 00:00:00', '1998-01-30 00:00:00', 1, 1.23, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(10825, 'DRACD', 1, '1998-01-09 00:00:00', '1998-02-06 00:00:00', '1998-01-14 00:00:00', 1, 79.25, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', '', '52066', 'Alemania'),
(10826, 'BLONP', 6, '1998-01-12 00:00:00', '1998-02-09 00:00:00', '1998-02-06 00:00:00', 1, 7.09, 'Blondel père et fils', '24, place Kléber', 'Estrasburgo', '', '67000', 'Francia'),
(10827, 'BONAP', 1, '1998-01-12 00:00:00', '1998-01-26 00:00:00', '1998-02-06 00:00:00', 2, 63.54, 'Bon app\'', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia'),
(10828, 'RANCH', 9, '1998-01-13 00:00:00', '1998-01-27 00:00:00', '1998-02-04 00:00:00', 1, 90.85, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', '', '1010', 'Argentina'),
(10829, 'ISLAT', 9, '1998-01-13 00:00:00', '1998-02-10 00:00:00', '1998-01-23 00:00:00', 1, 154.72, 'Island Trading', 'Garden House\r\nCrowther Way', 'Cowes', 'Isla de Wight', 'PO31 7PJ', 'Reino Unido'),
(10830, 'TRADH', 4, '1998-01-13 00:00:00', '1998-02-24 00:00:00', '1998-01-21 00:00:00', 2, 81.83, 'Tradição Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brasil'),
(10831, 'SANTG', 3, '1998-01-14 00:00:00', '1998-02-11 00:00:00', '1998-01-23 00:00:00', 2, 72.19, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', '', '4110', 'Noruega'),
(10832, 'LAMAI', 2, '1998-01-14 00:00:00', '1998-02-11 00:00:00', '1998-01-19 00:00:00', 2, 43.26, 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'Francia'),
(10833, 'OTTIK', 6, '1998-01-15 00:00:00', '1998-02-12 00:00:00', '1998-01-23 00:00:00', 2, 71.49, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', '', '50739', 'Alemania'),
(10834, 'TRADH', 1, '1998-01-15 00:00:00', '1998-02-12 00:00:00', '1998-01-19 00:00:00', 3, 29.78, 'Tradição Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brasil'),
(10835, 'TRAIH', 1, '1998-01-15 00:00:00', '1998-02-12 00:00:00', '1998-01-21 00:00:00', 3, 69.53, 'Trail\'s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'Estados Unidos'),
(10836, 'ERNSH', 7, '1998-01-16 00:00:00', '1998-02-13 00:00:00', '1998-01-21 00:00:00', 1, 411.88, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10837, 'BERGS', 9, '1998-01-16 00:00:00', '1998-02-13 00:00:00', '1998-01-23 00:00:00', 3, 13.32, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10838, 'LINOD', 3, '1998-01-19 00:00:00', '1998-02-16 00:00:00', '1998-01-23 00:00:00', 3, 59.28, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10839, 'TRADH', 3, '1998-01-19 00:00:00', '1998-02-16 00:00:00', '1998-01-22 00:00:00', 3, 35.43, 'Tradição Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brasil'),
(10840, 'LINOD', 4, '1998-01-19 00:00:00', '1998-03-02 00:00:00', '1998-02-16 00:00:00', 2, 2.71, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10841, 'SUPRD', 5, '1998-01-20 00:00:00', '1998-02-17 00:00:00', '1998-01-29 00:00:00', 2, 424.3, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Bélgica'),
(10842, 'TORTU', 1, '1998-01-20 00:00:00', '1998-02-17 00:00:00', '1998-01-29 00:00:00', 3, 54.42, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', '', '05033', 'México'),
(10843, 'VICTE', 4, '1998-01-21 00:00:00', '1998-02-18 00:00:00', '1998-01-26 00:00:00', 2, 9.26, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', '', '69004', 'Francia'),
(10844, 'PICCO', 8, '1998-01-21 00:00:00', '1998-02-18 00:00:00', '1998-01-26 00:00:00', 2, 25.22, 'Piccolo und mehr', 'Geislweg 14', 'Salzburgo', '', '5020', 'Austria'),
(10845, 'QUICK', 8, '1998-01-21 00:00:00', '1998-02-04 00:00:00', '1998-01-30 00:00:00', 1, 212.98, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10846, 'SUPRD', 2, '1998-01-22 00:00:00', '1998-03-05 00:00:00', '1998-01-23 00:00:00', 3, 56.46, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Bélgica'),
(10847, 'SAVEA', 4, '1998-01-22 00:00:00', '1998-02-05 00:00:00', '1998-02-10 00:00:00', 3, 487.57, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10848, 'CONSH', 7, '1998-01-23 00:00:00', '1998-02-20 00:00:00', '1998-01-29 00:00:00', 2, 38.24, 'Consolidated Holdings', 'Berkeley Gardens\r\n12  Brewery ', 'Londres', '', 'WX1 6LT', 'Reino Unido'),
(10849, 'KOENE', 9, '1998-01-23 00:00:00', '1998-02-20 00:00:00', '1998-01-30 00:00:00', 2, 0.56, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburgo', '', '14776', 'Alemania'),
(10850, 'VICTE', 1, '1998-01-23 00:00:00', '1998-03-06 00:00:00', '1998-01-30 00:00:00', 1, 49.19, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', '', '69004', 'Francia'),
(10851, 'RICAR', 5, '1998-01-26 00:00:00', '1998-02-23 00:00:00', '1998-02-02 00:00:00', 1, 160.55, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10852, 'RATTC', 8, '1998-01-26 00:00:00', '1998-02-09 00:00:00', '1998-01-30 00:00:00', 1, 174.05, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10853, 'BLAUS', 9, '1998-01-27 00:00:00', '1998-02-24 00:00:00', '1998-02-03 00:00:00', 2, 53.83, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', '', '68306', 'Alemania'),
(10854, 'ERNSH', 3, '1998-01-27 00:00:00', '1998-02-24 00:00:00', '1998-02-05 00:00:00', 2, 100.22, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10855, 'OLDWO', 3, '1998-01-27 00:00:00', '1998-02-24 00:00:00', '1998-02-04 00:00:00', 1, 170.97, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10856, 'ANTON', 3, '1998-01-28 00:00:00', '1998-02-25 00:00:00', '1998-02-10 00:00:00', 2, 58.43, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', '', '05023', 'México'),
(10857, 'BERGS', 8, '1998-01-28 00:00:00', '1998-02-25 00:00:00', '1998-02-06 00:00:00', 2, 188.85, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10858, 'LACOR', 2, '1998-01-29 00:00:00', '1998-02-26 00:00:00', '1998-02-03 00:00:00', 1, 52.51, 'La corne d\'abondance', '67, avenue de l\'Europe', 'Versalles', '', '78000', 'Francia'),
(10859, 'FRANK', 1, '1998-01-29 00:00:00', '1998-02-26 00:00:00', '1998-02-02 00:00:00', 2, 76.1, 'Frankenversand', 'Berliner Platz 43', 'München', '', '80805', 'Alemania'),
(10860, 'FRANR', 3, '1998-01-29 00:00:00', '1998-02-26 00:00:00', '1998-02-04 00:00:00', 3, 19.26, 'France restauration', '54, rue Royale', 'Nantes', '', '44000', 'Francia'),
(10861, 'WHITC', 4, '1998-01-30 00:00:00', '1998-02-27 00:00:00', '1998-02-17 00:00:00', 2, 14.93, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10862, 'LEHMS', 8, '1998-01-30 00:00:00', '1998-03-13 00:00:00', '1998-02-02 00:00:00', 2, 53.23, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', '', '60528', 'Alemania'),
(10863, 'HILAA', 4, '1998-02-02 00:00:00', '1998-03-02 00:00:00', '1998-02-17 00:00:00', 2, 30.26, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10864, 'AROUT', 4, '1998-02-02 00:00:00', '1998-03-02 00:00:00', '1998-02-09 00:00:00', 2, 3.04, 'Around the Horn', 'Brook Farm\r\nStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10865, 'QUICK', 2, '1998-02-02 00:00:00', '1998-02-16 00:00:00', '1998-02-12 00:00:00', 1, 348.14, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10866, 'BERGS', 5, '1998-02-03 00:00:00', '1998-03-03 00:00:00', '1998-02-12 00:00:00', 1, 109.11, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10867, 'LONEP', 6, '1998-02-03 00:00:00', '1998-03-17 00:00:00', '1998-02-11 00:00:00', 1, 1.93, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos'),
(10868, 'QUEEN', 7, '1998-02-04 00:00:00', '1998-03-04 00:00:00', '1998-02-23 00:00:00', 2, 191.27, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brasil'),
(10869, 'SEVES', 5, '1998-02-04 00:00:00', '1998-03-04 00:00:00', '1998-02-09 00:00:00', 1, 143.28, 'Seven Seas Imports', '90 Wadhurst Rd.', 'Londres', '', 'OX15 4NB', 'Reino Unido'),
(10870, 'WOLZA', 5, '1998-02-04 00:00:00', '1998-03-04 00:00:00', '1998-02-13 00:00:00', 3, 12.04, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', '', '01-012', 'Polonia'),
(10871, 'BONAP', 9, '1998-02-05 00:00:00', '1998-03-05 00:00:00', '1998-02-10 00:00:00', 2, 112.27, 'Bon app\'', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia'),
(10872, 'GODOS', 5, '1998-02-05 00:00:00', '1998-03-05 00:00:00', '1998-02-09 00:00:00', 2, 175.32, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', '', '41101', 'España'),
(10873, 'WILMK', 4, '1998-02-06 00:00:00', '1998-03-06 00:00:00', '1998-02-09 00:00:00', 1, 0.82, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', '', '21240', 'Finlandia'),
(10874, 'GODOS', 5, '1998-02-06 00:00:00', '1998-03-06 00:00:00', '1998-02-11 00:00:00', 2, 19.58, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', '', '41101', 'España'),
(10875, 'BERGS', 4, '1998-02-06 00:00:00', '1998-03-06 00:00:00', '1998-03-03 00:00:00', 2, 32.37, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10876, 'BONAP', 7, '1998-02-09 00:00:00', '1998-03-09 00:00:00', '1998-02-12 00:00:00', 3, 60.42, 'Bon app\'', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia'),
(10877, 'RICAR', 1, '1998-02-09 00:00:00', '1998-03-09 00:00:00', '1998-02-19 00:00:00', 1, 38.06, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10878, 'QUICK', 4, '1998-02-10 00:00:00', '1998-03-10 00:00:00', '1998-02-12 00:00:00', 1, 46.69, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10879, 'WILMK', 3, '1998-02-10 00:00:00', '1998-03-10 00:00:00', '1998-02-12 00:00:00', 3, 8.5, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', '', '21240', 'Finlandia'),
(10880, 'FOLKO', 7, '1998-02-10 00:00:00', '1998-03-24 00:00:00', '1998-02-18 00:00:00', 1, 88.01, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(10881, 'CACTU', 4, '1998-02-11 00:00:00', '1998-03-11 00:00:00', '1998-02-18 00:00:00', 1, 2.84, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', '', '1010', 'Argentina'),
(10882, 'SAVEA', 4, '1998-02-11 00:00:00', '1998-03-11 00:00:00', '1998-02-20 00:00:00', 3, 23.1, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10883, 'LONEP', 8, '1998-02-12 00:00:00', '1998-03-12 00:00:00', '1998-02-20 00:00:00', 3, 0.53, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos'),
(10884, 'LETSS', 4, '1998-02-12 00:00:00', '1998-03-12 00:00:00', '1998-02-13 00:00:00', 2, 90.97, 'Let\'s Stop N Shop', '87 Polk St.\r\nSuite 5', 'San Francisco', 'CA', '94117', 'Estados Unidos'),
(10885, 'SUPRD', 6, '1998-02-12 00:00:00', '1998-03-12 00:00:00', '1998-02-18 00:00:00', 3, 5.64, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Bélgica'),
(10886, 'HANAR', 1, '1998-02-13 00:00:00', '1998-03-13 00:00:00', '1998-03-02 00:00:00', 1, 4.99, 'Hanari Carnes', 'Rua do Paço, 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10887, 'GALED', 8, '1998-02-13 00:00:00', '1998-03-13 00:00:00', '1998-02-16 00:00:00', 3, 1.25, 'Galería del gastronómo', 'Rambla de Cataluña, 23', 'Barcelona', '', '8022', 'España'),
(10888, 'GODOS', 1, '1998-02-16 00:00:00', '1998-03-16 00:00:00', '1998-02-23 00:00:00', 2, 51.87, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', '', '41101', 'España'),
(10889, 'RATTC', 9, '1998-02-16 00:00:00', '1998-03-16 00:00:00', '1998-02-23 00:00:00', 3, 280.61, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10890, 'DUMON', 7, '1998-02-16 00:00:00', '1998-03-16 00:00:00', '1998-02-18 00:00:00', 1, 32.76, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', '', '44000', 'Francia'),
(10891, 'LEHMS', 7, '1998-02-17 00:00:00', '1998-03-17 00:00:00', '1998-02-19 00:00:00', 2, 20.37, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', '', '60528', 'Alemania'),
(10892, 'MAISD', 4, '1998-02-17 00:00:00', '1998-03-17 00:00:00', '1998-02-19 00:00:00', 2, 120.27, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruselas', '', 'B-1180', 'Bélgica'),
(10893, 'KOENE', 9, '1998-02-18 00:00:00', '1998-03-18 00:00:00', '1998-02-20 00:00:00', 2, 77.78, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburgo', '', '14776', 'Alemania'),
(10894, 'SAVEA', 1, '1998-02-18 00:00:00', '1998-03-18 00:00:00', '1998-02-20 00:00:00', 1, 116.13, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10895, 'ERNSH', 3, '1998-02-18 00:00:00', '1998-03-18 00:00:00', '1998-02-23 00:00:00', 1, 162.75, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10896, 'MAISD', 7, '1998-02-19 00:00:00', '1998-03-19 00:00:00', '1998-02-27 00:00:00', 3, 32.45, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruselas', '', 'B-1180', 'Bélgica'),
(10897, 'HUNGO', 3, '1998-02-19 00:00:00', '1998-03-19 00:00:00', '1998-02-25 00:00:00', 2, 603.54, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10898, 'OCEAN', 4, '1998-02-20 00:00:00', '1998-03-20 00:00:00', '1998-03-06 00:00:00', 2, 1.27, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585\r\nPiso 20-A', 'Buenos Aires', '', '1010', 'Argentina'),
(10899, 'LILAS', 5, '1998-02-20 00:00:00', '1998-03-20 00:00:00', '1998-02-26 00:00:00', 3, 1.21, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10900, 'WELLI', 1, '1998-02-20 00:00:00', '1998-03-20 00:00:00', '1998-03-04 00:00:00', 2, 1.66, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10901, 'HILAA', 4, '1998-02-23 00:00:00', '1998-03-23 00:00:00', '1998-02-26 00:00:00', 1, 62.09, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10902, 'FOLKO', 1, '1998-02-23 00:00:00', '1998-03-23 00:00:00', '1998-03-03 00:00:00', 1, 44.15, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(10903, 'HANAR', 3, '1998-02-24 00:00:00', '1998-03-24 00:00:00', '1998-03-04 00:00:00', 3, 36.71, 'Hanari Carnes', 'Rua do Paço, 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10904, 'WHITC', 3, '1998-02-24 00:00:00', '1998-03-24 00:00:00', '1998-02-27 00:00:00', 3, 162.95, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10905, 'WELLI', 9, '1998-02-24 00:00:00', '1998-03-24 00:00:00', '1998-03-06 00:00:00', 2, 13.72, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10906, 'WOLZA', 4, '1998-02-25 00:00:00', '1998-03-11 00:00:00', '1998-03-03 00:00:00', 3, 26.29, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', '', '01-012', 'Polonia'),
(10907, 'SPECD', 6, '1998-02-25 00:00:00', '1998-03-25 00:00:00', '1998-02-27 00:00:00', 3, 9.19, 'Spécialités du monde', '25, rue Lauriston', 'París', '', '75016', 'Francia'),
(10908, 'REGGC', 4, '1998-02-26 00:00:00', '1998-03-26 00:00:00', '1998-03-06 00:00:00', 2, 32.96, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', '', '42100', 'Italia'),
(10909, 'SANTG', 1, '1998-02-26 00:00:00', '1998-03-26 00:00:00', '1998-03-10 00:00:00', 2, 53.05, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', '', '4110', 'Noruega'),
(10910, 'WILMK', 1, '1998-02-26 00:00:00', '1998-03-26 00:00:00', '1998-03-04 00:00:00', 3, 38.11, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', '', '21240', 'Finlandia'),
(10911, 'GODOS', 3, '1998-02-26 00:00:00', '1998-03-26 00:00:00', '1998-03-05 00:00:00', 1, 38.19, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', '', '41101', 'España'),
(10912, 'HUNGO', 2, '1998-02-26 00:00:00', '1998-03-26 00:00:00', '1998-03-18 00:00:00', 2, 580.91, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10913, 'QUEEN', 4, '1998-02-26 00:00:00', '1998-03-26 00:00:00', '1998-03-04 00:00:00', 1, 33.05, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brasil'),
(10914, 'QUEEN', 6, '1998-02-27 00:00:00', '1998-03-27 00:00:00', '1998-03-02 00:00:00', 1, 21.19, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brasil'),
(10915, 'TORTU', 2, '1998-02-27 00:00:00', '1998-03-27 00:00:00', '1998-03-02 00:00:00', 2, 3.51, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', '', '05033', 'México'),
(10916, 'RANCH', 1, '1998-02-27 00:00:00', '1998-03-27 00:00:00', '1998-03-09 00:00:00', 2, 63.77, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', '', '1010', 'Argentina'),
(10917, 'ROMEY', 4, '1998-03-02 00:00:00', '1998-03-30 00:00:00', '1998-03-11 00:00:00', 2, 8.29, 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', '', '28001', 'España'),
(10918, 'BOTTM', 3, '1998-03-02 00:00:00', '1998-03-30 00:00:00', '1998-03-11 00:00:00', 3, 48.83, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10919, 'LINOD', 2, '1998-03-02 00:00:00', '1998-03-30 00:00:00', '1998-03-04 00:00:00', 2, 19.8, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10920, 'AROUT', 4, '1998-03-03 00:00:00', '1998-03-31 00:00:00', '1998-03-09 00:00:00', 2, 29.61, 'Around the Horn', 'Brook Farm\r\nStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10921, 'VAFFE', 1, '1998-03-03 00:00:00', '1998-04-14 00:00:00', '1998-03-09 00:00:00', 1, 176.48, 'Vaffeljernet', 'Smagsløget 45', 'Århus', '', '8200', 'Dinamarca'),
(10922, 'HANAR', 5, '1998-03-03 00:00:00', '1998-03-31 00:00:00', '1998-03-05 00:00:00', 3, 62.74, 'Hanari Carnes', 'Rua do Paço, 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10923, 'LAMAI', 7, '1998-03-03 00:00:00', '1998-04-14 00:00:00', '1998-03-13 00:00:00', 3, 68.26, 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'Francia'),
(10924, 'BERGS', 3, '1998-03-04 00:00:00', '1998-04-01 00:00:00', '1998-04-08 00:00:00', 2, 151.52, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', '', 'S-958 22', 'Suecia'),
(10925, 'HANAR', 3, '1998-03-04 00:00:00', '1998-04-01 00:00:00', '1998-03-13 00:00:00', 1, 2.27, 'Hanari Carnes', 'Rua do Paço, 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10926, 'ANATR', 4, '1998-03-04 00:00:00', '1998-04-01 00:00:00', '1998-03-11 00:00:00', 3, 39.92, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', '', '05021', 'México'),
(10927, 'LACOR', 4, '1998-03-05 00:00:00', '1998-04-02 00:00:00', '1998-04-08 00:00:00', 1, 19.79, 'La corne d\'abondance', '67, avenue de l\'Europe', 'Versalles', '', '78000', 'Francia'),
(10928, 'GALED', 1, '1998-03-05 00:00:00', '1998-04-02 00:00:00', '1998-03-18 00:00:00', 1, 1.36, 'Galería del gastronómo', 'Rambla de Cataluña, 23', 'Barcelona', '', '8022', 'España'),
(10929, 'FRANK', 6, '1998-03-05 00:00:00', '1998-04-02 00:00:00', '1998-03-12 00:00:00', 1, 33.93, 'Frankenversand', 'Berliner Platz 43', 'München', '', '80805', 'Alemania'),
(10930, 'SUPRD', 4, '1998-03-06 00:00:00', '1998-04-17 00:00:00', '1998-03-18 00:00:00', 3, 15.55, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Bélgica'),
(10931, 'RICSU', 4, '1998-03-06 00:00:00', '1998-03-20 00:00:00', '1998-03-19 00:00:00', 2, 13.6, 'Richter Supermarkt', 'Starenweg 5', 'Génova', '', '1204', 'Suiza'),
(10932, 'BONAP', 8, '1998-03-06 00:00:00', '1998-04-03 00:00:00', '1998-03-24 00:00:00', 1, 134.64, 'Bon app\'', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia'),
(10933, 'ISLAT', 6, '1998-03-06 00:00:00', '1998-04-03 00:00:00', '1998-03-16 00:00:00', 3, 54.15, 'Island Trading', 'Garden House\r\nCrowther Way', 'Cowes', 'Isla de Wight', 'PO31 7PJ', 'Reino Unido'),
(10934, 'LEHMS', 3, '1998-03-09 00:00:00', '1998-04-06 00:00:00', '1998-03-12 00:00:00', 3, 32.01, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', '', '60528', 'Alemania'),
(10935, 'WELLI', 4, '1998-03-09 00:00:00', '1998-04-06 00:00:00', '1998-03-18 00:00:00', 3, 47.59, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10936, 'GREAL', 3, '1998-03-09 00:00:00', '1998-04-06 00:00:00', '1998-03-18 00:00:00', 2, 33.68, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugenia', 'OR', '97403', 'Estados Unidos'),
(10937, 'CACTU', 7, '1998-03-10 00:00:00', '1998-03-24 00:00:00', '1998-03-13 00:00:00', 3, 31.51, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', '', '1010', 'Argentina'),
(10938, 'QUICK', 3, '1998-03-10 00:00:00', '1998-04-07 00:00:00', '1998-03-16 00:00:00', 2, 31.89, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10939, 'MAGAA', 2, '1998-03-10 00:00:00', '1998-04-07 00:00:00', '1998-03-13 00:00:00', 2, 76.33, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', '', '24100', 'Italia'),
(10940, 'BONAP', 8, '1998-03-11 00:00:00', '1998-04-08 00:00:00', '1998-03-23 00:00:00', 3, 19.77, 'Bon app\'', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia'),
(10941, 'SAVEA', 7, '1998-03-11 00:00:00', '1998-04-08 00:00:00', '1998-03-20 00:00:00', 2, 400.81, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10942, 'REGGC', 9, '1998-03-11 00:00:00', '1998-04-08 00:00:00', '1998-03-18 00:00:00', 3, 17.95, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', '', '42100', 'Italia'),
(10943, 'BSBEV', 4, '1998-03-11 00:00:00', '1998-04-08 00:00:00', '1998-03-19 00:00:00', 2, 2.17, 'B\'s Beverages', 'Fauntleroy Circus', 'Londres', '', 'EC2 5NT', 'Reino Unido'),
(10944, 'BOTTM', 6, '1998-03-12 00:00:00', '1998-03-26 00:00:00', '1998-03-13 00:00:00', 3, 52.92, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10945, 'MORGK', 4, '1998-03-12 00:00:00', '1998-04-09 00:00:00', '1998-03-18 00:00:00', 1, 10.22, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', '', '04179', 'Alemania'),
(10946, 'VAFFE', 1, '1998-03-12 00:00:00', '1998-04-09 00:00:00', '1998-03-19 00:00:00', 2, 27.2, 'Vaffeljernet', 'Smagsløget 45', 'Århus', '', '8200', 'Dinamarca'),
(10947, 'BSBEV', 3, '1998-03-13 00:00:00', '1998-04-10 00:00:00', '1998-03-16 00:00:00', 2, 3.26, 'B\'s Beverages', 'Fauntleroy Circus', 'Londres', '', 'EC2 5NT', 'Reino Unido'),
(10948, 'GODOS', 3, '1998-03-13 00:00:00', '1998-04-10 00:00:00', '1998-03-19 00:00:00', 3, 23.39, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', '', '41101', 'España'),
(10949, 'BOTTM', 2, '1998-03-13 00:00:00', '1998-04-10 00:00:00', '1998-03-17 00:00:00', 3, 74.44, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10950, 'MAGAA', 1, '1998-03-16 00:00:00', '1998-04-13 00:00:00', '1998-03-23 00:00:00', 2, 2.5, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', '', '24100', 'Italia'),
(10951, 'RICSU', 9, '1998-03-16 00:00:00', '1998-04-27 00:00:00', '1998-04-07 00:00:00', 2, 30.85, 'Richter Supermarkt', 'Starenweg 5', 'Génova', '', '1204', 'Suiza'),
(10952, 'ALFAA', 1, '1998-03-16 00:00:00', '1998-04-27 00:00:00', '1998-03-24 00:00:00', 1, 40.42, 'Alfreds Futterkiste', 'Obere Str. 57', 'Berlín', '', '12209', 'Alemania'),
(10953, 'AROUT', 9, '1998-03-16 00:00:00', '1998-03-30 00:00:00', '1998-03-25 00:00:00', 2, 23.72, 'Around the Horn', 'Brook Farm\r\nStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10954, 'LINOD', 5, '1998-03-17 00:00:00', '1998-04-28 00:00:00', '1998-03-20 00:00:00', 1, 27.91, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10955, 'FOLKO', 8, '1998-03-17 00:00:00', '1998-04-14 00:00:00', '1998-03-20 00:00:00', 2, 3.26, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(10956, 'BLAUS', 6, '1998-03-17 00:00:00', '1998-04-28 00:00:00', '1998-03-20 00:00:00', 2, 44.65, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', '', '68306', 'Alemania'),
(10957, 'HILAA', 8, '1998-03-18 00:00:00', '1998-04-15 00:00:00', '1998-03-27 00:00:00', 3, 105.36, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10958, 'OCEAN', 7, '1998-03-18 00:00:00', '1998-04-15 00:00:00', '1998-03-27 00:00:00', 2, 49.56, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585\r\nPiso 20-A', 'Buenos Aires', '', '1010', 'Argentina'),
(10959, 'GOURL', 6, '1998-03-18 00:00:00', '1998-04-29 00:00:00', '1998-03-23 00:00:00', 2, 4.98, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(10960, 'HILAA', 3, '1998-03-19 00:00:00', '1998-04-02 00:00:00', '1998-04-08 00:00:00', 1, 2.08, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10961, 'QUEEN', 8, '1998-03-19 00:00:00', '1998-04-16 00:00:00', '1998-03-30 00:00:00', 1, 104.47, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brasil'),
(10962, 'QUICK', 8, '1998-03-19 00:00:00', '1998-04-16 00:00:00', '1998-03-23 00:00:00', 2, 275.79, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10963, 'FURIB', 9, '1998-03-19 00:00:00', '1998-04-16 00:00:00', '1998-03-26 00:00:00', 3, 2.7, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', '', '1675', 'Portugal'),
(10964, 'SPECD', 3, '1998-03-20 00:00:00', '1998-04-17 00:00:00', '1998-03-24 00:00:00', 2, 87.38, 'Spécialités du monde', '25, rue Lauriston', 'París', '', '75016', 'Francia'),
(10965, 'OLDWO', 6, '1998-03-20 00:00:00', '1998-04-17 00:00:00', '1998-03-30 00:00:00', 3, 144.38, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10966, 'CHOPS', 4, '1998-03-20 00:00:00', '1998-04-17 00:00:00', '1998-04-08 00:00:00', 1, 27.19, 'Chop-suey Chinese', 'Hauptstr. 31', 'Berna', '', '3012', 'Suiza'),
(10967, 'TOMSP', 2, '1998-03-23 00:00:00', '1998-04-20 00:00:00', '1998-04-02 00:00:00', 2, 62.22, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', '', '44087', 'Alemania'),
(10968, 'ERNSH', 1, '1998-03-23 00:00:00', '1998-04-20 00:00:00', '1998-04-01 00:00:00', 3, 74.6, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10969, 'COMMI', 1, '1998-03-23 00:00:00', '1998-04-20 00:00:00', '1998-03-30 00:00:00', 2, 0.21, 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brasil'),
(10970, 'BOLID', 9, '1998-03-24 00:00:00', '1998-04-07 00:00:00', '1998-04-24 00:00:00', 1, 16.16, 'Bólido Comidas preparadas', 'C/ Araquil, 67', 'Madrid', '', '28023', 'España'),
(10971, 'FRANR', 2, '1998-03-24 00:00:00', '1998-04-21 00:00:00', '1998-04-02 00:00:00', 2, 121.82, 'France restauration', '54, rue Royale', 'Nantes', '', '44000', 'Francia'),
(10972, 'LACOR', 4, '1998-03-24 00:00:00', '1998-04-21 00:00:00', '1998-03-26 00:00:00', 2, 0.02, 'La corne d\'abondance', '67, avenue de l\'Europe', 'Versalles', '', '78000', 'Francia'),
(10973, 'LACOR', 6, '1998-03-24 00:00:00', '1998-04-21 00:00:00', '1998-03-27 00:00:00', 2, 15.17, 'La corne d\'abondance', '67, avenue de l\'Europe', 'Versalles', '', '78000', 'Francia'),
(10974, 'SPLIR', 3, '1998-03-25 00:00:00', '1998-04-08 00:00:00', '1998-04-03 00:00:00', 3, 12.96, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10975, 'BOTTM', 1, '1998-03-25 00:00:00', '1998-04-22 00:00:00', '1998-03-27 00:00:00', 3, 32.27, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10976, 'HILAA', 1, '1998-03-25 00:00:00', '1998-05-06 00:00:00', '1998-04-03 00:00:00', 1, 37.97, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10977, 'FOLKO', 8, '1998-03-26 00:00:00', '1998-04-23 00:00:00', '1998-04-10 00:00:00', 3, 208.5, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(10978, 'MAISD', 9, '1998-03-26 00:00:00', '1998-04-23 00:00:00', '1998-04-23 00:00:00', 2, 32.82, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruselas', '', 'B-1180', 'Bélgica'),
(10979, 'ERNSH', 8, '1998-03-26 00:00:00', '1998-04-23 00:00:00', '1998-03-31 00:00:00', 2, 353.07, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10980, 'FOLKO', 4, '1998-03-27 00:00:00', '1998-05-08 00:00:00', '1998-04-17 00:00:00', 1, 1.26, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(10981, 'HANAR', 1, '1998-03-27 00:00:00', '1998-04-24 00:00:00', '1998-04-02 00:00:00', 2, 193.37, 'Hanari Carnes', 'Rua do Paço, 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10982, 'BOTTM', 2, '1998-03-27 00:00:00', '1998-04-24 00:00:00', '1998-04-08 00:00:00', 1, 14.01, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10983, 'SAVEA', 2, '1998-03-27 00:00:00', '1998-04-24 00:00:00', '1998-04-06 00:00:00', 2, 657.54, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10984, 'SAVEA', 1, '1998-03-30 00:00:00', '1998-04-27 00:00:00', '1998-04-03 00:00:00', 3, 211.22, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10985, 'HUNGO', 2, '1998-03-30 00:00:00', '1998-04-27 00:00:00', '1998-04-02 00:00:00', 1, 91.51, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(10986, 'OCEAN', 8, '1998-03-30 00:00:00', '1998-04-27 00:00:00', '1998-04-21 00:00:00', 2, 217.86, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585\r\nPiso 20-A', 'Buenos Aires', '', '1010', 'Argentina'),
(10987, 'EASTC', 8, '1998-03-31 00:00:00', '1998-04-28 00:00:00', '1998-04-06 00:00:00', 1, 185.48, 'Eastern Connection', '35 King George', 'Londres', '', 'WX3 6FW', 'Reino Unido'),
(10988, 'RATTC', 3, '1998-03-31 00:00:00', '1998-04-28 00:00:00', '1998-04-10 00:00:00', 2, 61.14, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10989, 'QUEDE', 2, '1998-03-31 00:00:00', '1998-04-28 00:00:00', '1998-04-02 00:00:00', 1, 34.76, 'Que Delícia', 'Rua da Panificadora, 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10990, 'ERNSH', 2, '1998-04-01 00:00:00', '1998-05-13 00:00:00', '1998-04-07 00:00:00', 3, 117.61, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(10991, 'QUICK', 1, '1998-04-01 00:00:00', '1998-04-29 00:00:00', '1998-04-07 00:00:00', 1, 38.51, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10992, 'THEBI', 1, '1998-04-01 00:00:00', '1998-04-29 00:00:00', '1998-04-03 00:00:00', 3, 4.27, 'The Big Cheese', '89 Jefferson Way\r\nSuite 2', 'Portland', 'OR', '97201', 'Estados Unidos'),
(10993, 'FOLKO', 7, '1998-04-01 00:00:00', '1998-04-29 00:00:00', '1998-04-10 00:00:00', 3, 8.81, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(10994, 'VAFFE', 2, '1998-04-02 00:00:00', '1998-04-16 00:00:00', '1998-04-09 00:00:00', 3, 65.53, 'Vaffeljernet', 'Smagsløget 45', 'Århus', '', '8200', 'Dinamarca'),
(10995, 'PERIC', 1, '1998-04-02 00:00:00', '1998-04-30 00:00:00', '1998-04-06 00:00:00', 3, 46, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', '', '05033', 'México'),
(10996, 'QUICK', 4, '1998-04-02 00:00:00', '1998-04-30 00:00:00', '1998-04-10 00:00:00', 2, 1.12, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(10997, 'LILAS', 8, '1998-04-03 00:00:00', '1998-05-15 00:00:00', '1998-04-13 00:00:00', 2, 73.91, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10998, 'WOLZA', 8, '1998-04-03 00:00:00', '1998-04-17 00:00:00', '1998-04-17 00:00:00', 2, 20.31, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', '', '01-012', 'Polonia'),
(10999, 'OTTIK', 6, '1998-04-03 00:00:00', '1998-05-01 00:00:00', '1998-04-10 00:00:00', 2, 96.35, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', '', '50739', 'Alemania'),
(11000, 'RATTC', 2, '1998-04-06 00:00:00', '1998-05-04 00:00:00', '1998-04-14 00:00:00', 3, 55.12, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(11001, 'FOLKO', 2, '1998-04-06 00:00:00', '1998-05-04 00:00:00', '1998-04-14 00:00:00', 2, 197.3, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(11002, 'SAVEA', 4, '1998-04-06 00:00:00', '1998-05-04 00:00:00', '1998-04-16 00:00:00', 1, 141.16, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(11003, 'THECR', 3, '1998-04-06 00:00:00', '1998-05-04 00:00:00', '1998-04-08 00:00:00', 3, 14.91, 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'Estados Unidos'),
(11004, 'MAISD', 3, '1998-04-07 00:00:00', '1998-05-05 00:00:00', '1998-04-20 00:00:00', 1, 44.84, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruselas', '', 'B-1180', 'Bélgica'),
(11005, 'WILMK', 2, '1998-04-07 00:00:00', '1998-05-05 00:00:00', '1998-04-10 00:00:00', 1, 0.75, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', '', '21240', 'Finlandia'),
(11006, 'GREAL', 3, '1998-04-07 00:00:00', '1998-05-05 00:00:00', '1998-04-15 00:00:00', 2, 25.19, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugenia', 'OR', '97403', 'Estados Unidos'),
(11007, 'PRINI', 8, '1998-04-08 00:00:00', '1998-05-06 00:00:00', '1998-04-13 00:00:00', 2, 202.24, 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', '', '1756', 'Portugal'),
(11008, 'ERNSH', 7, '1998-04-08 00:00:00', '1998-05-06 00:00:00', NULL, 3, 79.46, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(11009, 'GODOS', 2, '1998-04-08 00:00:00', '1998-05-06 00:00:00', '1998-04-10 00:00:00', 1, 59.11, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', '', '41101', 'España'),
(11010, 'REGGC', 2, '1998-04-09 00:00:00', '1998-05-07 00:00:00', '1998-04-21 00:00:00', 2, 28.71, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', '', '42100', 'Italia'),
(11011, 'ALFAA', 3, '1998-04-09 00:00:00', '1998-05-07 00:00:00', '1998-04-13 00:00:00', 1, 1.21, 'Alfreds Futterkiste', 'Obere Str. 57', 'Berlín', '', '12209', 'Alemania'),
(11012, 'FRANK', 1, '1998-04-09 00:00:00', '1998-04-23 00:00:00', '1998-04-17 00:00:00', 3, 242.95, 'Frankenversand', 'Berliner Platz 43', 'München', '', '80805', 'Alemania'),
(11013, 'ROMEY', 2, '1998-04-09 00:00:00', '1998-05-07 00:00:00', '1998-04-10 00:00:00', 1, 32.99, 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', '', '28001', 'España'),
(11014, 'LINOD', 2, '1998-04-10 00:00:00', '1998-05-08 00:00:00', '1998-04-15 00:00:00', 3, 23.6, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(11015, 'SANTG', 2, '1998-04-10 00:00:00', '1998-04-24 00:00:00', '1998-04-20 00:00:00', 2, 4.62, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', '', '4110', 'Noruega'),
(11016, 'AROUT', 9, '1998-04-10 00:00:00', '1998-05-08 00:00:00', '1998-04-13 00:00:00', 2, 33.8, 'Around the Horn', 'Brook Farm\r\nStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(11017, 'ERNSH', 9, '1998-04-13 00:00:00', '1998-05-11 00:00:00', '1998-04-20 00:00:00', 2, 754.26, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(11018, 'LONEP', 4, '1998-04-13 00:00:00', '1998-05-11 00:00:00', '1998-04-16 00:00:00', 2, 11.65, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos'),
(11019, 'RANCH', 6, '1998-04-13 00:00:00', '1998-05-11 00:00:00', NULL, 3, 3.17, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', '', '1010', 'Argentina'),
(11020, 'OTTIK', 2, '1998-04-14 00:00:00', '1998-05-12 00:00:00', '1998-04-16 00:00:00', 2, 43.3, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', '', '50739', 'Alemania'),
(11021, 'QUICK', 3, '1998-04-14 00:00:00', '1998-05-12 00:00:00', '1998-04-21 00:00:00', 1, 297.18, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', '', '01307', 'Alemania'),
(11022, 'HANAR', 9, '1998-04-14 00:00:00', '1998-05-12 00:00:00', '1998-05-04 00:00:00', 2, 6.27, 'Hanari Carnes', 'Rua do Paço, 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(11023, 'BSBEV', 1, '1998-04-14 00:00:00', '1998-04-28 00:00:00', '1998-04-24 00:00:00', 2, 123.83, 'B\'s Beverages', 'Fauntleroy Circus', 'Londres', '', 'EC2 5NT', 'Reino Unido'),
(11024, 'EASTC', 4, '1998-04-15 00:00:00', '1998-05-13 00:00:00', '1998-04-20 00:00:00', 1, 74.36, 'Eastern Connection', '35 King George', 'Londres', '', 'WX3 6FW', 'Reino Unido'),
(11025, 'WARTH', 6, '1998-04-15 00:00:00', '1998-05-13 00:00:00', '1998-04-24 00:00:00', 3, 29.17, 'Wartian Herkku', 'Torikatu 38', 'Oulu', '', '90110', 'Finlandia'),
(11026, 'FRANS', 4, '1998-04-15 00:00:00', '1998-05-13 00:00:00', '1998-04-28 00:00:00', 1, 47.09, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', '', '10100', 'Italia'),
(11027, 'BOTTM', 1, '1998-04-16 00:00:00', '1998-05-14 00:00:00', '1998-04-20 00:00:00', 1, 52.52, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(11028, 'KOENE', 2, '1998-04-16 00:00:00', '1998-05-14 00:00:00', '1998-04-22 00:00:00', 1, 29.59, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburgo', '', '14776', 'Alemania'),
(11029, 'CHOPS', 4, '1998-04-16 00:00:00', '1998-05-14 00:00:00', '1998-04-27 00:00:00', 1, 47.84, 'Chop-suey Chinese', 'Hauptstr. 31', 'Berna', '', '3012', 'Suiza'),
(11030, 'SAVEA', 7, '1998-04-17 00:00:00', '1998-05-15 00:00:00', '1998-04-27 00:00:00', 2, 830.75, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(11031, 'SAVEA', 6, '1998-04-17 00:00:00', '1998-05-15 00:00:00', '1998-04-24 00:00:00', 2, 227.22, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(11032, 'WHITC', 2, '1998-04-17 00:00:00', '1998-05-15 00:00:00', '1998-04-23 00:00:00', 3, 606.19, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(11033, 'RICSU', 7, '1998-04-17 00:00:00', '1998-05-15 00:00:00', '1998-04-23 00:00:00', 3, 84.74, 'Richter Supermarkt', 'Starenweg 5', 'Génova', '', '1204', 'Suiza'),
(11034, 'OLDWO', 8, '1998-04-20 00:00:00', '1998-06-01 00:00:00', '1998-04-27 00:00:00', 1, 40.32, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(11035, 'SUPRD', 2, '1998-04-20 00:00:00', '1998-05-18 00:00:00', '1998-04-24 00:00:00', 2, 0.17, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Bélgica'),
(11036, 'DRACD', 8, '1998-04-20 00:00:00', '1998-05-18 00:00:00', '1998-04-22 00:00:00', 3, 149.47, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', '', '52066', 'Alemania'),
(11037, 'GODOS', 7, '1998-04-21 00:00:00', '1998-05-19 00:00:00', '1998-04-27 00:00:00', 1, 3.2, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', '', '41101', 'España'),
(11038, 'SUPRD', 1, '1998-04-21 00:00:00', '1998-05-19 00:00:00', '1998-04-30 00:00:00', 2, 29.59, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Bélgica'),
(11039, 'LINOD', 1, '1998-04-21 00:00:00', '1998-05-19 00:00:00', NULL, 2, 65, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(11040, 'GREAL', 4, '1998-04-22 00:00:00', '1998-05-20 00:00:00', NULL, 3, 18.84, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugenia', 'OR', '97403', 'Estados Unidos'),
(11041, 'CHOPS', 3, '1998-04-22 00:00:00', '1998-05-20 00:00:00', '1998-04-28 00:00:00', 2, 48.22, 'Chop-suey Chinese', 'Hauptstr. 31', 'Berna', '', '3012', 'Suiza'),
(11042, 'COMMI', 2, '1998-04-22 00:00:00', '1998-05-06 00:00:00', '1998-05-01 00:00:00', 1, 29.99, 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brasil'),
(11043, 'SPECD', 5, '1998-04-22 00:00:00', '1998-05-20 00:00:00', '1998-04-29 00:00:00', 2, 8.8, 'Spécialités du monde', '25, rue Lauriston', 'París', '', '75016', 'Francia'),
(11044, 'WOLZA', 4, '1998-04-23 00:00:00', '1998-05-21 00:00:00', '1998-05-01 00:00:00', 1, 8.72, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', '', '01-012', 'Polonia'),
(11045, 'BOTTM', 6, '1998-04-23 00:00:00', '1998-05-21 00:00:00', NULL, 2, 70.58, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(11046, 'WANDK', 8, '1998-04-23 00:00:00', '1998-05-21 00:00:00', '1998-04-24 00:00:00', 2, 71.64, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', '', '70563', 'Alemania'),
(11047, 'EASTC', 7, '1998-04-24 00:00:00', '1998-05-22 00:00:00', '1998-05-01 00:00:00', 3, 46.62, 'Eastern Connection', '35 King George', 'Londres', '', 'WX3 6FW', 'Reino Unido'),
(11048, 'BOTTM', 7, '1998-04-24 00:00:00', '1998-05-22 00:00:00', '1998-04-30 00:00:00', 3, 24.12, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(11049, 'GOURL', 3, '1998-04-24 00:00:00', '1998-05-22 00:00:00', '1998-05-04 00:00:00', 1, 8.34, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(11050, 'FOLKO', 8, '1998-04-27 00:00:00', '1998-05-25 00:00:00', '1998-05-05 00:00:00', 2, 59.41, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', '', 'S-844 67', 'Suecia'),
(11051, 'LAMAI', 7, '1998-04-27 00:00:00', '1998-05-25 00:00:00', NULL, 3, 2.79, 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'Francia'),
(11052, 'HANAR', 3, '1998-04-27 00:00:00', '1998-05-25 00:00:00', '1998-05-01 00:00:00', 1, 67.26, 'Hanari Carnes', 'Rua do Paço, 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(11053, 'PICCO', 2, '1998-04-27 00:00:00', '1998-05-25 00:00:00', '1998-04-29 00:00:00', 2, 53.05, 'Piccolo und mehr', 'Geislweg 14', 'Salzburgo', '', '5020', 'Austria'),
(11054, 'CACTU', 8, '1998-04-28 00:00:00', '1998-05-26 00:00:00', NULL, 1, 0.33, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', '', '1010', 'Argentina'),
(11055, 'HILAA', 7, '1998-04-28 00:00:00', '1998-05-26 00:00:00', '1998-05-05 00:00:00', 2, 120.92, 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(11056, 'EASTC', 8, '1998-04-28 00:00:00', '1998-05-12 00:00:00', '1998-05-01 00:00:00', 2, 278.96, 'Eastern Connection', '35 King George', 'Londres', '', 'WX3 6FW', 'Reino Unido'),
(11057, 'NORTS', 3, '1998-04-29 00:00:00', '1998-05-27 00:00:00', '1998-05-01 00:00:00', 3, 4.13, 'North/South', 'South House\r\n300 Queensbridge', 'Londres', '', 'SW7 1RZ', 'Reino Unido'),
(11058, 'BLAUS', 9, '1998-04-29 00:00:00', '1998-05-27 00:00:00', NULL, 3, 31.14, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', '', '68306', 'Alemania'),
(11059, 'RICAR', 2, '1998-04-29 00:00:00', '1998-06-10 00:00:00', NULL, 2, 85.8, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(11060, 'FRANS', 2, '1998-04-30 00:00:00', '1998-05-28 00:00:00', '1998-05-04 00:00:00', 2, 10.98, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', '', '10100', 'Italia'),
(11061, 'GREAL', 4, '1998-04-30 00:00:00', '1998-06-11 00:00:00', NULL, 3, 14.01, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugenia', 'OR', '97403', 'Estados Unidos'),
(11062, 'REGGC', 4, '1998-04-30 00:00:00', '1998-05-28 00:00:00', NULL, 2, 29.93, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', '', '42100', 'Italia'),
(11063, 'HUNGO', 3, '1998-04-30 00:00:00', '1998-05-28 00:00:00', '1998-05-06 00:00:00', 2, 81.73, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Irlanda'),
(11064, 'SAVEA', 1, '1998-05-01 00:00:00', '1998-05-29 00:00:00', '1998-05-04 00:00:00', 1, 30.09, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(11065, 'LILAS', 8, '1998-05-01 00:00:00', '1998-05-29 00:00:00', NULL, 1, 12.91, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(11066, 'WHITC', 7, '1998-05-01 00:00:00', '1998-05-29 00:00:00', '1998-05-04 00:00:00', 2, 44.72, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(11067, 'DRACD', 1, '1998-05-04 00:00:00', '1998-05-18 00:00:00', '1998-05-06 00:00:00', 2, 7.98, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', '', '52066', 'Alemania'),
(11068, 'QUEEN', 8, '1998-05-04 00:00:00', '1998-06-01 00:00:00', NULL, 2, 81.75, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brasil');
INSERT INTO `pedidos` (`IdPedido`, `IdCliente`, `IdEmpleado`, `FechaPedido`, `FechaEntrega`, `FechaEnvio`, `EnviadoVia`, `Flete`, `NombreDestinatario`, `DireccionDestinatario`, `CiudadDestino`, `RegionDestino`, `CodigoPostalDestinatario`, `PaisDestino`) VALUES
(11069, 'TORTU', 1, '1998-05-04 00:00:00', '1998-06-01 00:00:00', '1998-05-06 00:00:00', 2, 15.67, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', '', '05033', 'México'),
(11070, 'LEHMS', 2, '1998-05-05 00:00:00', '1998-06-02 00:00:00', NULL, 1, 136, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', '', '60528', 'Alemania'),
(11071, 'LILAS', 1, '1998-05-05 00:00:00', '1998-06-02 00:00:00', NULL, 1, 0.93, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(11072, 'ERNSH', 4, '1998-05-05 00:00:00', '1998-06-02 00:00:00', NULL, 2, 258.64, 'Ernst Handel', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria'),
(11073, 'PERIC', 2, '1998-05-05 00:00:00', '1998-06-02 00:00:00', NULL, 2, 24.95, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', '', '05033', 'México'),
(11074, 'SIMOB', 7, '1998-05-06 00:00:00', '1998-06-03 00:00:00', NULL, 2, 18.44, 'Simons bistro', 'Vinbæltet 34', 'København', '', '1734', 'Dinamarca'),
(11075, 'RICSU', 8, '1998-05-06 00:00:00', '1998-06-03 00:00:00', NULL, 2, 6.19, 'Richter Supermarkt', 'Starenweg 5', 'Génova', '', '1204', 'Suiza'),
(11076, 'BONAP', 4, '1998-05-06 00:00:00', '1998-06-03 00:00:00', NULL, 2, 38.28, 'Bon app\'', '12, rue des Bouchers', 'Marsella', '', '13008', 'Francia'),
(11077, 'RATTC', 1, '1998-05-06 00:00:00', '1998-06-03 00:00:00', NULL, 2, 8.53, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE `person` (
  `Dni` varchar(255) NOT NULL,
  `Cargoid` int(10) NOT NULL,
  `Paterno` varchar(255) DEFAULT NULL,
  `Materno` varchar(255) DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Fec_nac` date DEFAULT NULL,
  `Celular` varchar(255) DEFAULT NULL,
  `Fec_reg` datetime DEFAULT NULL,
  `Fec_mod` datetime DEFAULT NULL,
  `Foto` longblob,
  `email` varchar(150) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `Discriminator` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `person`
--

INSERT INTO `person` (`Dni`, `Cargoid`, `Paterno`, `Materno`, `Nombre`, `Password`, `Fec_nac`, `Celular`, `Fec_reg`, `Fec_mod`, `Foto`, `email`, `sexo`, `Discriminator`) VALUES
('47455090', 12, 'Cardenas', 'Aquino', 'Anthony', 'develop321xD', '1992-10-16', '997852483', '2020-03-23 22:01:42', '2020-03-23 22:01:42', '', 'anthony_rk_al_tlv@hotmail.com', 'M', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `IdProducto` int(10) UNSIGNED NOT NULL,
  `NombreProducto` varchar(40) NOT NULL DEFAULT '',
  `IdProveedor` int(10) UNSIGNED NOT NULL,
  `IdCategoria` tinyint(5) UNSIGNED NOT NULL,
  `CantidadPorUnidad` varchar(20) NOT NULL DEFAULT '',
  `PrecioUnitario` double NOT NULL DEFAULT '0',
  `UnidadesEnStock` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `UnidadesEnPedido` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `NivelReorden` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `Descontinuado` enum('s','n') NOT NULL DEFAULT 'n',
  `preciopaquete` decimal(10,2) NOT NULL,
  `unidadesporpaquete` bigint(20) DEFAULT NULL,
  `foto` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`IdProducto`, `NombreProducto`, `IdProveedor`, `IdCategoria`, `CantidadPorUnidad`, `PrecioUnitario`, `UnidadesEnStock`, `UnidadesEnPedido`, `NivelReorden`, `Descontinuado`, `preciopaquete`, `unidadesporpaquete`, `foto`) VALUES
(3, 'Leche Gloria Grande Azul', 2, 4, '', 3.5, 13, 0, 0, 'n', '72.00', 24, NULL),
(4, 'Leche Gloria Grande Rojo', 2, 4, '', 3.6, 14, 0, 0, 'n', '74.00', 24, NULL),
(5, 'Aceite Deli Litro', 1, 8, '', 6, 13, 0, 0, 'n', '50.00', 12, NULL),
(6, 'Leche Gloria Chica Azul', 2, 4, '', 1.8, 14, 0, 0, 'n', '44.00', 44, NULL),
(7, 'Arroz Cacerita', 2, 9, '', 3.2, 49, 0, 0, 'n', '140.00', 49, NULL),
(8, 'Azucar Rubia', 2, 9, '', 3, 59, 0, 0, 'n', '120.00', 49, NULL),
(9, 'Ajinomen Gallina', 2, 10, '', 1.2, 14, 0, 0, 'n', '22.00', 24, NULL),
(10, 'Fideos Tallarín delgado anita', 2, 9, '', 1.5, 3, 0, 0, 'n', '26.00', 20, NULL),
(11, 'Fideos Tallarín Grueso anita', 2, 9, '', 1.5, 8, 0, 0, 'n', '26.00', 20, NULL),
(12, 'Sal Grande', 2, 9, '', 1.5, 18, 0, 0, 'n', '28.00', 24, NULL),
(13, 'Sal Chica', 2, 9, '', 0.8, 42, 0, 0, 'n', '25.00', 50, NULL),
(14, 'Aceite Real chico 200ml', 2, 9, '', 1.5, 13, 0, 0, 'n', '26.00', 24, NULL),
(15, 'Papel higienico', 2, 11, '', 0.8, 31, 0, 0, 'n', '9.00', 20, NULL),
(16, 'Papel toalla Nova', 2, 11, '', 2, 21, 0, 0, 'n', '20.00', 12, NULL),
(17, 'Galleta soda  comida', 2, 3, '', 1.7, 2, 0, 0, 'n', '17.00', 12, NULL),
(18, 'soda d comida', 1, 3, '', 1.5, 1, 0, 0, 'n', '15.00', 2, NULL),
(19, 'Galleta soda transparente comida', 2, 3, '', 1.5, 12, 0, 0, 'n', '15.00', 12, NULL),
(20, 'Galleta cragner', 2, 3, '', 1.7, 24, 0, 0, 'n', '8.50', 12, NULL),
(21, 'Quaquer suelto', 2, 9, '', 6, 10, 0, 0, 'n', '40.00', 10, NULL),
(22, 'Fideos sopa lenysol', 3, 9, '', 3, 20, 0, 0, 'n', '13.50', 5, NULL),
(23, 'Frugos de litro', 2, 1, '', 4, 12, 0, 0, 'n', '41.00', 12, NULL),
(24, 'Coca-Cola litro y medio', 2, 9, '', 5, 12, 0, 0, 'n', '54.00', 12, NULL),
(25, 'INCA COLA  LITRO', 2, 1, '', 3.5, 12, 0, 0, 'n', '34.00', 12, NULL),
(26, 'KR  1 -7', 3, 1, '', 3, 12, 0, 0, 'n', '15.00', 6, NULL),
(27, 'Atún filete', 3, 9, '', 4, 12, 0, 0, 'n', '34.00', 12, NULL);
INSERT INTO `productos` (`IdProducto`, `NombreProducto`, `IdProveedor`, `IdCategoria`, `CantidadPorUnidad`, `PrecioUnitario`, `UnidadesEnStock`, `UnidadesEnPedido`, `NivelReorden`, `Descontinuado`, `preciopaquete`, `unidadesporpaquete`, `foto`) VALUES
(31, '2', 3, 9, '', 2, 2, 0, 0, 'n', '2.00', 2, 0xffd8ffe000104a46494600010101012c012c0000ffe100164578696600004d4d002a00000008000000000000ffdb004300030202020202030202020303030304060404040404080606050609080a0a090809090a0c0f0c0a0b0e0b09090d110d0e0f101011100a0c12131210130f101010ffdb00430103030304030408040408100b090b1010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010ffc00011080500050003012200021101031101ffc4001d000100010403010000000000000000000000060304050801020907ffc4006410010001010307040c0c0501030709040b0001020304050611153141515212142162070809133257617195a1b4d31934373842737476819192b11822367593d256a2d12333557282c1d4242526535483b2c2e11685a3b31728434445476594a4c4f0ffc4001b01010003010101010000000000000000000004050607030102ffc4003c11010001010307080a020301000301000000010203040515345271a1b1d106111416335372911221313541516181c1f013922232e142234362f1ffda000c03010002110311003f00f54c0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001c4ce6033c19e37ba80ed9e3799e37bab8e5403be78de678dea7ca9700ab9e37c19e37c2900ab9e37c19e37c2900ab9e37c19e37c2919e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a59e3799e3782ae78df0678df0a402ae78df0678df0a402ae78df0678dea4e73c82a678de678dea7ca739e01df3c6f33c6f7501dc7589cce7583900000000000000000000000000000000000000000000007133b8099cceae96d6d6561655dbdbdad36767674cd75d75d5114d34c46799999e888f2be29979db95daff00907696b73b5cb3a71dbf58ccd355d302b19bed513d3d13694e6b2a673c66e9ae333dac6ef6d799f46c699aa7e90f3b4b5a2ca39eb9e67db9c4d5b9a578e7749f0aa2d2d2cf26bb11e2178b3cff00f276b88e2d65779fc68b2a2d3ff891aabba47969354f23b13e0511b22719b7cfff00e52d29e4fe215473ff001ed8e28b3895da3ff5b25bf19f3b8683cf748b2df67629c07d3178f74e3e121cb89fff00953807a62f1ee9faeaee21a11e71c5f329ddb4b64b7e73c6f713544341a7ba4196fe2a700f4c5e3dd38f847f2dfc54e01e98bc7ba3abb8868479c71329ddbe7b25bf3cb7135b41fe11ecb6f151807a62f1ee9c7c23d96de2a700f4bde3dd9d5dc43423ce38994aeda5b25bf1df3cae396d08f847b2dfc54e01e97bc7bb3e11ecb7f153807a5ef1eeceaee21a11e71c4ca576d2d92df7e5f90e5f91a11f08ee5b78a9c03d3178f767c23b96de2a700f4c5e3dd9d5dc43423ce38994aeda5b25befcbf238e5cb427e11dcb6f151807a62f1eecf84732dbc54601e97bc7bb3abb8868479c713295db4b64b7db97272e5a13f08e65b78a8c03d2f78f767c23996de2a300f4bde3dd9d5dc43423ce38994aeda5b25befcb9dce3972d09f84732dbc54601e97bc7bb3e11ccb6f151807a5ef1eeceaee21a11e71c4ca576d2d92df6e5c9cb9684fc23996de2a300f4bde3dd9f08e65b78a8c03d2f78f76757710d08f38e2652bb696c96fb72e4e5cb427e11ccb6f151807a5ef1eecf84732dbc54601e97bc7bb3abb8868479c713295db4b64b7db97272e5a13f08e65b78a8c03d2f78f767c23996de2a300f4bde3dd9d5dc43423ce38994aeda5b25bedcb93972d09f84732dbc54601e97bc7bb3e11ccb6f151807a5ef1eeceaee21a11e71c4ca576d2d92df6e5c9cb9684fc23996de2a300f4bde3dd9f08e65b78a8c03d2f78f76757710d08f38e2652bb696c96fb72e4e5cb427e11ccb6f151807a5ef1eecf84732dbc54601e97bc7bb3abb8868479c713295db4b64b7db97272e5a13f08e65b78a8c03d2f78f767c23996de2a300f4bde3dd9d5dc43423ce38994aeda5b25bedcb93972d09f84732dbc54601e97bc7bb3e11ccb6f151807a5ef1eeceaee21a11e71c4ca576d2d92df6e5c9cb9684fc23996de2a300f4bde3dd9f08e65b78a8c03d2f78f76757710d08f38e2652bb696c96fb72e4e5cb427e11ccb6f151807a5ef1eecf84732dbc54601e97bc7bb3abb8868479c713295db4b64b7db97272e5a13f08e65b78a8c03d2f78f767c23996de2a300f4bde3dd9d5dc43423ce38994aeda5b25bedcb93972d09f84732dbc54601e97bc7bb3e11ccb6f151807a5ef1eeceaee21a11e71c4ca576d2d92df6e5c9cb9684fc23996de2a300f4bde3dd9f08e65b78a8c03d2f78f76757710d08f38e2652bb696c96fb72e4e5cb427e11ccb6f151807a5ef1eecf84732dbc54601e97bc7bb3abb8868479c713295db4b64b7db97272e5a13f08e65b78a8c03d2f78f767c23996de2a300f4bde3dd9d5dc43423ce38994aeda5b25bedcb93972d09f84732dbc54601e97bc7bb3e11ccb6f151807a5ef1eeceaee21a11e71c4ca576d2d92df6e5c9cb9684fc23996de2a300f4bde3dd9f08e65b78a8c03d2f78f76757710d08f38e2652bb696c96fb72e4e5cb427e11ccb6f151807a5ef1eecf84732dbc54601e97bc7bb3abb8868479c713295db4b64b7db97272e5a13f08e65b78a8c03d2f78f767c23996de2a300f4bde3dd9d5dc43423ce38994aeda5b25bedcb93972d09f84732dbc54601e97bc7bb3e11ccb6f151807a5ef1eeceaee21a11e71c4ca576d2d92df6e5c9cb9684fc23996de2a300f4bde3dd9f08e65b78a8c03d2f78f76757710d08f38e2652bb696c96fb72e4e5cb427e11ccb6f151807a5ef1eecf84732dbc54601e97bc7bb3abb8868479c713295db4b64b7db97272e5a13f08e65b78a8c03d2f78f767c23996de2a300f4bde3dd9d5dc43423ce38994aeda5b25bedcb93972d09f84732dbc54601e97bc7bb3e11ccb6f151807a5ef1eeceaee21a11e71c4ca576d2d92df6e5c9cb9684fc23996de2a300f4bde3dd9f08e65b78a8c03d2f78f76757710d08f38e2652bb696c96fb72e4e5cb427e11ccb6f151807a5ef1eecf84732dbc54601e97bc7bb3abb8868479c713295db4b64b7db97272e5a13f08e65b78a8c03d2f78f767c23996de2a300f4bde3dd9d5dc43423ce38994aeda5b25bedcb93972d09f84732dbc54601e97bc7bb3e11ccb6f151807a5ef1eeceaee21a11e71c4ca576d2d92df6e5c9cb9684fc23996de2a300f4bde3dd9f08e65b78a8c03d2f78f76757710d08f38e2652bb696c96fb72e4e5cb427e11ccb6f151807a5ef1eecf84732dbc54601e97bc7bb3abb8868479c713295db4b64b7db97272e5a13f08e65b78a8c03d2f78f767c23996de2a300f4bde3dd9d5dc43423ce38994aeda5b25bedcb93972d09f84732dbc54601e97bc7bb3e11ccb6f151807a5ef1eeceaee21a11e71c4ca576d2d92df6e5c9cb9684fc23996de2a300f4bde3dd9f08e65b78a8c03d2f78f76757710d08f38e2652bb696c96fb72e4e5cb427e11ccb6f151807a5ef1eecf84732dbc54601e97bc7bb3abb8868479c713295db4b64b7db97272e5a13f08e65b78a8c03d2f78f767c23996de2a300f4bde3dd9d5dc43423ce38994aeda5b25bedcb93972d09f84732dbc54601e97bc7bb3e11ccb6f151807a5ef1eeceaee21a11e71c4ca576d2d92df6e5c9cb9684fc23996de2a300f4bde3dd9f08e65b78a8c03d2f78f76757710d08f38e2652bb696c96fb72e4e5cb427e11ccb6f151807a5ef1eecf84732dbc54601e97bc7bb3abb8868479c713295db4b64b7db97272e5a13f08e65b78a8c03d2f78f767c23996de2a300f4bde3dd9d5dc43423ce38994aeda5b25bedcb93972d09f84732dbc54601e97bc7bb3e11ccb6f151807a5ef1eeceaee21a11e71c4ca576d2d92df6e5c9cb9684fc23996de2a300f4bde3dd9f08e65b78a8c03d2f78f76757710d08f38e2652bb696c96fb72e4e5cb427e11ccb6f151807a5ef1eecf84732dbc54601e97bc7bb3abb8868479c713295db4b64b7db97272e5a13f08e65b78a8c03d2f78f767c23996de2a300f4bde3dd9d5dc43423ce38994aeda5b25bedcb93972d09f84732dbc54601e97bc7bb3e11ccb6f151807a5ef1eeceaee21a11e71c4ca576d2d92df6e5c9cb9684fc23996de2a300f4bde3dd9f08e65b78a8c03d2f78f76757710d08f38e2652bb696c96fb72e4e5cb427e11ccb6f151807a5ef1eecf84732dbc54601e97bc7bb3abb8868479c713295db4b64b7df973b8ef93b9a11f08e65b78a8c03d2f78f76bfc37ba418bd157fe79ec3d72b5a676dcf1cae998fd76330f93c9ec4223fd36c713295db4b64b7a397e4397e46af6497740bb0ce375d9ddf29f0eca1c97b5aa73556b78bad37bbb53ff006ec26aaa23cb3443ef992197d91dd9030dd2f9119538663b748cdcbb4b85e69b5ef733b2ba63f9a89e8d55444abef171bcdd7b6a2623e7f0f3f624d9de2cadbfd2a894979672d6fdf67c9f99df511ecb9ef9e57315adbbeb98b48da0b9e5c39e52de2b8deed15f9415f3c0a515bb4560a91330e6273ba45512e41dc89cceb156f7607689cee5d22733b44e70720000000000000000000000000000000000000000eb3204cbe23db01db57907d82ec6bc1ea89c732aed2ca2bb0c1eed6914f7a89f06bbc5a74c58d1b62334d756ca7374c443b6ebb6b29ec4775abb1fe415e6c6db2cefd6315db5bcc457461161547f2da5513d136d5474d144ea8fe6aa337262af39af97cbe6237cbc62388df2def77bbddad56f78bc5e2d26d2d6dad2a9cf5575d53d355533ae65a7c1b01e951178bcfaa8f847cffe6f555f710fe19fe3b2f6fcfe5ff5f41ecb5db05d953b34dead272cf28ad29c326acf65835c73d85c2ca33e7889b389cf6b31c569354eecda9f38888a698a6988888e8888e88806e2caca8b0a228b388888f84286baeab49f4aa9e79007a3f20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002fb03c731bc98c56cb1dc9ac66fd84e256139ecef771b7aac6da9f272a998998f24e78f22c47c988aa39a4f67ae1b99d843b7caf345ad864df671b2a2bb2aa69b3b3ca3ba58f2668f2deac698cd31bed2ce2336da76b72ee38a5cb12b9d862586df6c2f773bd59d36d6178bbdac5a595b59cc678ae8aa3a2a89df0f1a73e67db7b5bfb65b1bec2d8a59e058ddade310c8abe5ae7bcdce3f9ebb85754f4de2ef1b37d7671d1546798cd574ce5316e4ed169136d738e6ab47e13abe53f4f66a5bdcf12aa998a2da79e3e7c5e9845bc6f9778b7f2b018763787e2d70bae2d855fac6fb71bed8d178bb5e6c2be559db595519e9ae99db131fff00d9d774defcac44c737aa57ded65e9b6cfb9de9b5f2b154de637aad379f283294dacbbd36912c7536f1bd5a8b689f282fe2b77a6b59d16b9f54ab535c482e6273b989cca34d6a9154482a44e71d5cc4e707789cee5d1da27383900000000000000000000000000000000007133980997cbfb627b33dc7b06f634bf656d7459de315b79e6583dd2b9e8b7be5713c9e56de4511135d5d5a6635cc3e9d2f327b783b2a5af641eccf7ac9bb9de66ac1f22a2ac2ac28899e4d57c9cd37ab4cdbe2a8a6cbff00753be56d835c22ff007a8a2aff0058f5cf0fba1dfaf1d1eca6a8f6cfaa1f05c5f16c531fc56f98ee39885b5ff11c42debbcdeef56d39ebb6b5aa73d554ff00c36444447442d01d32222239a196f6fb401f40000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006d2f699766dbc60d8a53d87b286f733876235d76b81da573f17bd4ff3577789d945a444d54c6cae263e937328bf759e495def17ab9de2c6f971bcd777bcddad28b6b0b6a2735567694cc554d713be26227f07a45d8cbb23597643c85c172c68e4d36b885da39d59d3ff00ecef344f22da8fd74d531e49861394d708b1b58bd59c7aaaf6ebff00bf8faaff000abc4d74cd955ed8f66aff008fa9517df2ae2cef99f6a276788f5979638867cdd2cbad929b3bd44ed5d59de7ca8cd8dfbcabfb1be44e6e90482cedf3ed5cd16b9f33096379cfb57b656f9f3032b45a6f56a6b63eced617345a02ee9ab3bbade9abcaad4d59c1522738eba9da27383b44e772e91399db3e7072000000000000000000000000000003899ccea4eb0185cb5ca5bb646647e3995f7c88aac304c3af3885a53339b9516567557c9f3cf2737e2f18ef17dbe62578b6c4b11b59b5be5f6d6bbcde2b99cfcab5b4aa6bae7f5552f533b72f13ab0ced6acb7b4b3ae69aef375bbdca26375bde6cace7d554bcafaba6a998dedc7252ca22c2d2d7e333cde51cff0095062f5f3da5347ca39fcfff00e3801ab548000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d9eed41cadae9c1b287246dad3a2e97ab2c4aef133aa9b5a791691faace99ff00b4d617d57b5bb13af0fec856f614d5314df30ab7a2ae9e0aeceb8fd9518ed945adc2d39fe1ebf29e1ce9987d7345e29fafa9ba9638a67fa4c858625139bf99f3eb0c5bacc9ddb15cf9bf99ccda94feef8867cdd2ca5dafd9f6a0774c4f3fd2f5b3374c473e6e904deed7bcfb593bbde73ed43ee97ecf9ba599badef574824f636faba57b656ac0ddaf11311d2c9585b67cc0cad9d7e557a2a58595a675dd9d59c173139dda273295152a03b91399c533b1c83b6b72eb4bb00000000000000000000000000003a4eb7132e675baceb07c0fb797e6d394df6ac2bdbec1e613d3dede5f9b56537dab0af6fb07984e81c97ccaaf14eea59dc5bb78d51be401a35600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009d7616bc736cbdb1b5cf9bff0020bdc7fbb4a0a94f635b7e6f959656babff25bc47e714abb16cc6d7c33b922e79c51ae1b3576c5baecb5d315d5fccf9b5db1599fa5eb666e78a6afe672d6b5f4bb96279f37f333f71c4b3e6fe67ccee189e7cdfcc9261f88f4c4f281f48b8dff00574a4172bee7cdd2f9ee1d7fd5fcc9361f7dcf9ba4139ba5e73e6e9662ed6d9f374a2371bd6ae967ae76f9e233c82456168bdb2ad87bb5ae764ac6bd520bfa2adaaf4ce75a5955b1714482aea767476a41da97675a5d80000000000000000000000000001d2a9cce8ed57fdeea0f81f6f2cfff00ab56537daf0af6fb17986f4efb793e6d594df6bc2bdbec5e6237fc96ccaaf14eea59dc5bb78d51be401a4560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000cd6485b778c76ced33e6ff91b68fce21855f60d6bde711b3afa95c7a95f8b6636be19dc9173ce28d70faa5d712d5fcccddcb119e8fe67cfee97fd5d2cddcaff003d1d2e58d6be8d87e23abf9926c37109e8fe67cd70ebf6ae94a70cbf6ae907d330cbf4ce6e94b30cbe67cdd2f9ae177ccfc9e94c30bbde7e4f483e87875e73c474a4771b7cf9ba507c36f3aba528c3edf3e6e904b6e96b9f332b615ea47ee56bd11d2ccddabd40cb5955d10b9a2563635675dd9cf402e69d4ed139a5d28976054a5d9d6976000000000000000000000000000053ab5baccf439abc2975a81f02ede3f9b5e53fdaf0af6fb1798d2f4e3b78a73f6b5e537daf0af6fb1798cdff0025b32abc53ba967716ede3546f900691580000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a5dabef778b3abfeb7eca6e9695f22aa2af2cfecafc5b31b5f0cee48b9e7146b848eeb7bd5d2cd5caf9aa33a1f75bc6ae9666e578d5d2e58d6a73875efa63a52bc32f7aba5f3ec3af1aba52ac2ef1aa7383e8f855ee7f97a533c26f3e0f4be7184de3a69e94d708b7cfc9e907d170ab7cf9ba52cc3adba23a503c26db3f2530c32d35026571b5e88e9672e9574423587da6a67ee95ea066ac2ad4bdb29d8c75deae85fd94f4c02eace5514a8558d40ef44eb7774b3daee0000000000000000000000000000a557852eb5bb55e14ba560f80f6f0fcdaf29bed9857b7d8bcc77a71dbc5f36cca6fb6615edf62f31dbfe4b665578a7752cee2ddbc6a8df200d22b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050be55c9a289eb7fdcaeb5c467358d13d7ffba55f8b6636be19dc9373ce28d70ab76b5d4ccdced7574a3976af533373af539635895e1f6d3d1d295e176daba50ac3ed3525585da744027d845b6ae94df07b5f07a5f3dc22d3a6138c1ed3c107d0708b4f0533c2ed3c141308b4f0534c2ebe8a7a4132c3ebd4915caae884630eab5247729e880672ef3a97f633a98dbb4ea646c673e605dd1ad5a3528d1d0ab482a59ed7774b3daee0000000000000000000000000000a557852a768a957852a7680f8176f0fcdaf29bed7857b7d8bcc77a6fdbc3f36cca5fb5e15edd62f321bfe4b665578a7752cee2ddbc6a8df200d22b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005a629f17a7febff00dd2bb59e2bf16a3eb23f695762d98daf867724dcfb7a35c2deed56a662e956ae9612efb198ba4ea72d6b123c3eacd309561756a4470f9e9884a70bab50271845739e94e306abc140b08abc14e7069f0413ec1eaf0535c2aa8cd08360f57839e536c2a7c104c70e9e88492e539e2119c367524b719e880672ed3a991b0636ebaa191b2dc0bca762b53a942cf62bd1a8152cf6bbba59ed77000000000000000000000000000052abc2953b454abc2953b407c07b787e6d994bf6cc2bdbac5e643d37ede1f9b6652fdb30af6eb17990dff25b32abc53ba967716ede3546f900691580000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e629aa7a62999fc1c55553474d75534ff00d69880052aaf972a7c2bedda3cf6d4ff00c5d6711c3a35e2175ff3d3ff00139a5f39e15c50d2187ffedf76ff002d3ff171a470e9ff00f88dd7fcf4ff00c4e6939e17028690c3ff00e90baff9a9ff008b98bf5c6755faed3ffbea7fe27349cf0ac29c5eae93aaf7779f35ad3ff176a6d2caaf06d6ce7cd5c49cc3b0e79354ea89973c8af82afc87d751ccd3546b8987000000000000000000000000000000000002cb17f8b51f591fb4af5658bfc5a8fac8fda55f8b6636be1949b9f6f46b85a5de7532f74ab530f77d71e765ee8e58d624187d5d3094e193aa115c3f5c253866c04d3089d49ce0f39f9282e11ae139c1a63f9413bc1fe8a6d84cf453f8211834f4d29b615f47f004c70cd892dc757e48ce19b125b8ce6880672ed3d110c8d8b1b76d8c95802f2cf62bd1a942cf62bd1a8152cf6bbba59ed77000000000000000000000000000052abc2953b454abc2953b407c07b787e6d994bf6cc2bdbac5e643d37ede1f9b6652fdb30af6eb17990dff0025b32abc53ba967716ede3546f9006915800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002ef08c2316ca0c52cb03c9fc2afb8a6256f3116573b8ddebb7b7ae7c9451133f8cf4795f2662239e4f6ad1cc44ceae96ca7639ed07eccf9611657dcaeb5c3b232e1699a669bdcf3abef2676c58d9cf2299f2576913be1b31907da13d8272529b3b7ca3b962195f7da6226aaf16bc4c5de2adf4ddecb93466f255ca53de71eb8ddbd5e97a53ff00e7d7b7d9b536cb0fb7b5f5f37347d7f79de6ce1771bfe397da70dc0b0fbde297baa7345dee177aef369fa6ce265f5cc94ed41ed8ccae8a6d6edd8d6f185585539bbf6377ab3b972637cd9ccd56bfee3d47c0326326f256e34e1b9318061d845d298888b0b8dd68b0a3a3ab44443279a37286df9576b3eab1b388d73cfbb9bf2b0b3c2298ed2ae7d5fb2d03c9bee6e65cdee29af2bbb286098644c679b3c330eb5bdd51e4e5dad5671feebe9780f738fb12dca22aca1cb2caec5eb8d7145e2c6e9673f859d9f2b37fda6d90abb5c7aff6bffd9cdaa223f1ce97461f76a3ff003cfadf09c2bb487b59b0ba698b4ec714e215d3d3df2ff895eef133e78aad3933f925f85f6b87604c1a73e1dd87323e89df5e1163693f9d74cbe8e20d77ebd5a7fbda553f797bd377b1a7fd698f2846ee9d8d3b1d61f11170c81c9bbb446aef38558519bf2a192b2c9cc9fb18e4d8e0587d9c6ea6eb671ff73243c26d2babdb32f48a698f642cb4260fab455cff00fede8ff83ad5806075c66af06b8cc796ed44ff00dcbf1f9f4a7e6fbcd0c4d792792f69ff003993785d5ff5ae7673ff00cab6b5ec7f9096f9fbfe45603699f8f0db19fde967c7ea2d2b8f64cbe7a313f044edbb12762abc4e7bc7633c93b59ebe0b76abf7a18fbd7605ec237d898bcf621c8caf3ebffcc7768fda84f07ee2f16b1ecaa7ce5f26ce89f843e5778ed59ed74bccccdaf617c92cf3b68c368a27fddccc65ebb4dbb592f7ff003bd88708a3ea6d6decbff82d21f671e917ebd53ecb4abfb4f17e26ef633eda63ca1f02be768bf6b35eb3f7ac82bcdd3ecf8d5f68cdff00e2cb0b7cee7bf6be5e6279b46555cbcb618dda559bfc915365c7ad38adfa9f65ad5e72fccdd2c27ff11e4d4cbff7383b11db53318765be5add2764d779bb5b66fd5628edfbb9a583d539f0becc98ad8c6c8bd60f616d3f9d3550dd51ed4e398851ecb49f289df0f39b85da7ff3bda0b88f73632dece66707ecb381de623545ef07b6b199f3cd16b566fc916c53b9ebd9eae34f2ae38ae46625e4b3bfde2c27fdfb198f5bd231268e525fe9f6d513f68fc733ce70bbbcfb2263eef213b28f601ecadd866eb72bff00643c9dbb5c2e988de66e975bc586216579a6d6d628aab9a73533caa7f969aa73cc46a7cf1bf1dd2a8ffd04c86fbc36bec56cd076cf0abdd77ebad36f6911cf3cfecfa4a8ef7634ddeda6ce9f6002c9180000000000000000000005962ff16a3eb23f695eacb17f8b51f591fb4abf16cc6d7c329373ede8d70b3bbeb8f3b2f74622efae3cecbdd1cb1ac67f0fd7094e19b115c3f6255866c04cb099d49c60de1420d84eba7cc9ce0dae904ef06d74a6f857d1fc108c1b5d29be15f47f004c30dd50925c51ac37547e092dc419cbb6c64ac18dbb6c64ac017967b15e8d4a167b15e8d40a967b5ddd2cf6bb80000000000000000000000000002955e14a9da2a55e14a9da03e03dbc3f36cca5fb6615edd62f321e9bf6f0fcdb3297ed9857b758bcc86ff92d9955e29dd4b3b8b76f1aa37c80348ac00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001cc45535534534d55555d514514d313555555339a29888e99999d511d320e197c94c90caacbbc6ecf26b22b276ff8de29699a62ed73b2e5cd14f15a55d14d9d3d6ae621b2bd82bb4372c32de9bbe51f65bb6bd64b60b5e6ae8c2ece22313bd53d799cf176a6774e7b4f251adbdb905d8e3223b186056793790793572c1b0fa3a6ab3bbd1fcd6b571da5739eab4abad54ccb3b88728ac2e9cf458ff9d5b23eff001fb79acaed86da5b7f957fe31b5a7bd893b9db7ab78b0c63b35e5277989cd5ce0782da74ff00d5b6bd4c67f3c5944792b6e06427633c81ec6585460b9039278760775e8e5c5d6c622bb598db696939ebb49f2d5332938c6df312bcdfa7ff009aaf57cbd91e5c7d6bbb1bad95dffd23d7f3f8b888cce410120000000000000000000000000000000001a73dd2afe84c86fbc36bec56cd076fc774abfa1321bef0dafb15b341dd1f93beefa35cef966312ce6afb6e005e208000000000000000000000b2c5fe2d47d647ed2bd5962ff16a3eb23f6957e2d98daf86526e7dbd1ae16777d71e765aeac4ddf5c32d74d8e58d633f704a70c9d48b61fad28c2f67e0099e15ae94e705d74a0d84eba7cc9ce0bae904ef06d74a6f857d1fc108c1b5d29be15f47f004bf0dd9f824b714670dd8935c419cbb6c64ac18dbb6c64ac017967b15e8d4a167b15e8d40a967b5ddd2cf6bb80000000000000000000000000002955e14a9da2a55e14a9da03e03dbc3f36cca5fb6615edd62f321e9bf6f0fcdb3297ed9857b758bcc86ff0092d9955e29dd4b3b8b76f1aa37c80348ac00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001f4bec15d80b2d7b3d652ce1193b4f31c26e75d3a571ab6b3e558dce99e9e4d31d1df2da63c1b389dd354c46bf3b5b6a2c289b4b49e688f8bf545155a5514d31cf328bf63fec77967d94b29ac724320f03b5c4f12b588b4b4889e4d8ddacb3e69b6b7b4d567671be7a667a29899e87a3ddaf3da8990fd852cac7283169b2ca2cb09a226bc4edaca3bd5d2663a68ba59ce7ef71b39739ebab6cc44f263e8fd897b0f6437616c97a325b21f0b8b0b2aa62d2f77ab598aef37db6cd9a6d6dad337f355ba3a2223a29888e84d980c571db4beccd958ff008d1b675fd3e9e6d0dcf0fa6c3fcebf5d5b9c6688720cfac8000000000000000000000000000000000000001a73dd2afe84c86fbc36bec56cd076fc774abfa1321bef0dafb15b341dd1f93beefa35cef966312ce6afb6e005e208000000000000000000000b1c63e2b47d647ed2be58e31f15a3eb23f695762d98daf867724dcfb7a35c2ceefd19996ba6c626efb196ba6c72d6b19fb86b84a70bd9f822d70d894e17b3f004cf09d74f9939c175d283613ae9f327382eba413bc1b5d29b615b3f042706d74a6d856a804bf0dd8935c519c37624d710672edb192b0636edb192b005e59ec57a352859ec57a3502a59ed7774b3daee0000000000000000000000000000a557852a768a957852a7680f80f6f0fcdb3297ed9857b758bcc87a6fdbc3f36cca5fb6615edd62f321bfe4b665578a7752cee2ddbc6a8df200d22b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004e3b0df621ca8ecdb97574c89c9989b1a6a88b7c4710aacf956787dd2273556b546daa7c1a28fa557922a98fc5a5a516344da573cd11ed7da699aea8a69f6cb37daf7d803297b3ee574e1387556970c070eaa8ab19c5b939e2ef4cf4c58d9e7e8aadea8d51aa98fe6ab6455ea5e42e4264af636c96b8e47646e136587e1770a3936765474d55553e1575d53d35d754f4d554f4cccadfb1b7638c94ec5191f87e43e4661f175c36e146689aa7956b6f693d35db5ad5f4ed2b9e9aaafc233444444a1cdf16c5abc4ad39a3d5447b23f33f5dcd3dcee74dd69e79ff69f68029d34000000000000000000000000000000000000000001a73dd2afe84c86fbc36bec56cd076fc774abfa1321bef0dafb15b341dd1f93beefa35cef966312ce6afb6e005e208000000000000000000000b1c63e2b47d647ed2be58e31f15a3eb23f695762d98daf867724dcfb7a35c2caeecbdd363117765ee9b1cb5ac67ee1b129c2f67e08b5c3625385ecfc0133c275d3e64e705d74a0d84eba7cc9ce0bae904ef06d74a6d856a842706fa29b6153d14825f86ec49ae28ce1bb126b8833976d8c95831b76d8c95802f2cf62bd1a942cf62bd1a8152cf6bbba59ed77000000000000000000000000000052abc2953b454abc2953b407c07b787e6d994bf6cc2bdbac5e643d37ede1f9b6652fdb30af6eb17990dff25b32abc53ba967716ede3546f9006915800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001e7988f382fb02c0f18ca7c6f0fc9bc9ec3ed2fd8a62b79a2e973bb51d136b6b54f4467d911d33333d1111333d10f583b5e3b06609d81f206c726ae73657ac5ef934deb1ac469a734deef59b34e6cfd3167447f2d14ec8e9d755533f09ed07ec0518160dff00e9c32aae3c9c4f19b1aacb01b1b5a3a6ed70abc2bc669d55db66e8db16711c72dc660f9458a748b4e8b653fe34fb7eb3c237fd9a0c36e9fc74ff00357ed9f66aff00a00cc2d4000000000000000000000000000000000000000000001a73dd2afe84c86fbc36bec56cd076fc774abfa1321bef0dafb15b341dd1f93beefa35cef966312ce6afb6e005e208000000000000000000000b1c63e2b47d647ed2be58e31f15a3eb23f695762d98daf867724dcfb7a35c2caeecbdd363117765ee9b1cb5ac67ee1b129c2f67e08b5c3625385ecfc0133c275d3e64e705d74a0d84eba7cc9ce0bae904ef07fa29ae13aa9f321583ec4d709d54f98130c37624d714670dd8935c419cbb6c64ac18dbb6c64ac017967b15e8d4a167b15e8d40a967b5ddd2cf6bb80000000000000000000000000002955e14a9da2a55e14a9da03e03dbc3f36cca5fb6615edd62f321e9bf6f0fcdb3297ed9857b758bcc86ff0092d9955e29dd4b3b8b76f1aa37c80348ac0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001f55ed69ec2f6bd9cbb29dc7266f7635ce01875318963d691d11cd69ab353619f8adabfe4dfc98b49d8f94d555345355a5739a9a626aaa77443d48ed38ec3557624ec4775b7c5ee7de728f29e68c57158aa3f9ecb954ff00c85de7eaece622638eaaf7aa31abff0040baccd33fe557aa3f33f6dfcc9971bbf48b5889f647ae5f73bbddec2eb616776bb58d9d8d8d8d11676767674c534d14c4668a6223a22223a221501ccda900000000000000000000000000000000000000000000000069cf74abfa1321bef0dafb15b341dbf1dd2afe84c86fbc36bec56cd07747e4efbbe8d73be598c4b39abedb80178820000000000000000000002c718f8ad1f591fb4af9638c7c568fac8fda55d8b6636be19dc9373ede8d70b2bbb2f74d8c45dd97ba6c72d6b19fb86c4a70bd9f822d70d894e17b3f004cf09d74f9939c175d283613ae9f3273837d104eb07d709b613aa9f3213836c4db09d54f98130c37624d714670dd8935c419cbb6c64ac18dbb6c64ac017967b15e8d4a167b15e8d40a967b5ddd2cf6bb80000000000000000000000000002955e14a9da2a55e14a9da03e03dbc3f36cca5fb6615edd62f321e9bf6f0fcdb3297ed9857b758bcc86ff92d9955e29dd4b3b8b76f1aa37c80348ac00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001cc4679cc0fb176a6f628a7b2df669c270cc42ebdfb05c0a231bc562633d35d9d9551de6ca77f2ed791131b69a6b7ab4d61ed00ec6b1927d882d32e2fb77e462196979e794cd5ae2e3659e8bbd3e489ff0094b4f2f7c86cfb9c7282f9d2af934c7fad1ea8d7f1dbb9a6c3ac7f8ac6267db3ebe000a34f00000000000000000000000000000000000000000000000069cf74abfa1321bef0dafb15b341dbf1dd2afe84c86fbc36bec56cd07747e4efbbe8d73be598c4b39abedb80178820000000000000000000002c718f8ad1f591fb4af9638c7c568fac8fda55d8b6636be19dc9373ede8d70b2bbb2f74d8c45dd97ba6c72d6b19fb86c4a70bd9f822d70d894e17b3f004cf09d74f9939c1be8f9906c275d3e64e706fa3e604eb06d9f826d84eaa7cc84e0db3f04db09d54f98130c37624d714670dd8935c419cbb6c64ac18dbb6c64ac017967b15e8d4a167b15e8d40a967b5ddd2cf6bb80000000000000000000000000002955e14a9da2a55e14a9da03e03dbc3f36cca5fb6615edd62f321e9bf6f0fcdb3297ed9857b758bcc86ff92d9955e29dd4b3b8b76f1aa37c80348ac000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000196c93c96bfe5ce5560b91385ce6bde506216186d9d51f43bed711557e6a68e5553ff55896cc773ff21e3297b37de32a6f363cabb6486156978a2a9a73c73bbcccd959fe316716f3f922df6f1d12ef5db7ca36fc36bd6c2cff009ad29a3e72f46302c1b0fc9dc16e193f8558f79b961975b2b9ddacf82cace88a288fc22217ce21cb93cccd53cf2d844737aa001f000000000000000000000000000000000000000000000000069cf74abfa1321bef0dafb15b341dbf1dd2afe84c86fbc36bec56cd07747e4efbbe8d73be598c4b39abedb80178820000000000000000000002c718f8ad1f591fb4af9638c7c568fac8fda55d8b6636be19dc9373ede8d70b2bbb2f74d8c45dd97ba6c72d6b19fb86c4a70bd9f822d70d894e17b3f004cf09d74f9939c1be8f9906c275d3e64e706fa3e604eb06d9f826d84eaa7cc84e0db3f04db09d54f98130c37624d714670dd8935c419cbb6c64ac18dbb6c64ac017967b15e8d4a167b15e8d40a967b5ddd2cf6bb80000000000000000000000000002955e14a9da2a55e14a9da03e03dbc3f36cca5fb6615edd62f321e9bf6f0fcdb3297ed9857b758bcc86ff0092d9955e29dd4b3b8b76f1aa37c80348ac0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ccf453b9db91d183761fc4f2c6dac669b7ca8c62daba2b9fa576bb445859ff00bf4db4ff00da79d36b6bde2c6d2df367ef54555e6df9a33e67b09d81f2429c83ec35919927c89a2d30fc16eb4dbc4ffebeaa22bb5ff7eaa99ae545bff1dd29b28ffd4ec8f5efe659e1567e95b4d5f28dff00b29e00c0b44000000000000000000000000000038cf00e441b2efb37f624ec673367973d90b05c26de3ffddad2f315de67cd63472ad27f4be2194bdd12ec3185d55d964ee059538fd74e7e4da595ca8bad8d5bbf9adeba6acdff006532c30fbd5e639ecace663e7cdeaf3f63c2d2f36365eaaea886d40d13c5fba578cda67a727fb0edd6c636557fc726a9fd367639bfde462f3dd1aeccb6b9e2eb9159156113ab9717bb598fff001295853c9dc42af6d311f78fc4ca3ce27768f64ec97a263cdcafba1bd9f2af0309c89a7ffbb6f33fff00b0ebf085f67fff00a3b227d1779ffc43d3ab37efa79bf1956eff005f27a4a3cdaf842fb3ff00fd1d913e8bbcff00e20f842fb3ff00fd1d913e8bbcff00e21f7ab37efa799956eff5f27a4a3cdaf842fb3fff00d1d913e8bbcffe21c55dd0aed809d587e44c7ff755e7ff0012f9d59bf7d3cffe1956eff5f27a4c3cd8f8427b60bff62c89f44de3ff00127c213db05ffb1644fa26f1ff00893ab37efa79ff00c32addfebe4f49c79b1f084f6c17fec5913e89bc7fe24f8427b60bff0062c89f44de3ff127566fdf4f3ff8655bbfd7c9f61ee957f426437de1b5f62b6683beabd993b657b24f676c270cc1b2eaed93f6777c26f955faef386dcad6c6b9b49b2aace62a9aed6bcf4f26b9e8888e9cdd2f95361845d6d2e574a6c6d7db1cfecd6a5be5b536f6d35d1ec0059a30000000000000000000000b1c63e2b47d647ed2be58e31f15a3eb23f695762d98daf867724dcfb7a35c2caeecbdd363117765ee9b1cb5ac67ee1b129c2f67e08b5c3625385ecfc0133c275d3e64e706fa3e641b09d74f9939c1be8f9813ac1b67e09b613aa9f3213836c4db09d54f98130c37624d714670dd8935c419cbb6c64ac18dbb6c64ac017967b15e8d4a167b15e8d40a967b5ddd2cf6bb80000000000000000000000000002955e14a9da2a55e14a9da03e03dbc3f36cca5fb6615edd62f321e9bf6f0fcdb3297ed9857b758bcc86ff92d9955e29dd4b3b8b76f1aa37c80348ac00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000067720f272acb0cbac9ac92a69e569ac6ae371aa263a391696f44579fc9c9e567f2677b414d314c4534c44447444443ca8ed3ac0e8c7fb64f22ec6d69cf6770b5bde255793bcddad3933faeba1eabc7444430dcabb5e7b7b3b3f9473f9cff00c5f61147359d557ce7f77b901955b8000000000000000000000000e1cb52fb6fbb6e6d7b1d5578ec5dd8c2fb6739535d9c462589c44574e1145519e28a2273c5578aa99cf113d1444c4ce799884ab9dced6fd6b163631ebd911f39795b5b5177a3d3adf4beceddb5bd8d7b06c5584dfadad31cca6aa88aecf04b8574f7da2275556f5cff002d8533d6cf54c6aa65a27d94bb6f3b377652b4b5bb5b6525793783da678a70cc0ebaac22699e8cd696ff00f3b69d1afa69a7ab0f8cdbdbdbdeaf16d7cbdde2d6f178bcda556d6f6f6d693696b6d6954e7aabaebaba6aaa675ccf4ba3a05c303badca22663d2abe73f88f86ff00ab3978bfdadbcf373f347ca1c534d14555574d3115d739ebabe9553be675cfe2e4172840000000000000000000000000000000000000000000002c718f8ad1f591fb4af9638c7c568fac8fda55d8b6636be19dc9373ede8d70b2bbb2f74d8c45dd97ba6c72d6b19fb86c4a70bd9f822d70d894e17b3f004cf09d74f9939c1be8f9906c275d3e64e706fa3e604eb06d54a6d84eaa7cc84e0daa94db09d54f98130c37624d714670dd8935c419cbb6c64ac18dbb6c64ac017967b15e8d4a167b15e8d40a967b5ddd2cf6bb80000000000000000000000000002955e14a9da2a55e14a9da03e03dbc3f36cca5fb6615edd62f321e9bf6f0fcdb3297ed9857b758bcc86ff92d9955e29dd4b3b8b76f1aa37c80348ac0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006d0f73bf08a2fdd9c315c4ed28cf18664d5bd544f0d76b78b1a23fdda6b7a3ad0eee6b61916b941d90318cdd36174c32e913e4aebbc5731feec37c5ce79475fa588551f2888d9cff0096970ca79aef13f3e700512c000000000000000000000007120f9176d0766eb3ec19d8c2f58f5c6ab2af28312af47e076169113155eaaa6666d6aa76d1654c555d5b279314fd2879497abd5eefd7ab7bfdfef76d7bbddead6bb7bc5e2dab9aad2dad6baa6aaed2b99d755554ccccf95f7ceddfec9b6bd903b38dfb02bb5e26ac2b22ace707bb53133c99bd4e6aef5699b7f2b9167ffbaf3b5f9d2301b8c5ceeb15cc7f957eb9fc4796d966310bc4dbdacc47b23d5c40176820000000000000000000000000000000000000000000000002c718f8ad1f591fb4af9638c7c568fac8fda55d8b6636be19dc9373ede8d70b2bbb2f74d8c45dd97ba6c72d6b19fb86c4a70bd9f822d70d894e17b3f004cf09d74f9939c1be8f9906c275d3e64e706fa3e604eb06d54a6d84eaa7cc84e0ff004536c27553e604c30dd8935c519c37624d710672edb192b0636edb192b005e59ec57a352859ec57a3502a59ed7774b3daee0000000000000000000000000000a557852a768a957852a7680f80f6f0fcdb3297ed9857b758bcc87a6fdbc3f36cca5fb6615edd62f321bfe4b665578a7752cee2ddbc6a8df200d22b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001bd7dcd3bbc4605d906f99ba6d312b858e7f25161555ff00cedd369f77366c228ec7d96779cdff0039941453fa6eb65ff16e0b9963b3cf885a7db7435387c735da9fdf8802a5300000000000000000000006232bb282ed92792b8c654df73737c1ee178bfdae79fa165675573ffc2cbbe1ddba98fd58076b66584d9d75516b88d8d861944c4e69ff0097b7a2cea8fd1353deeb63d22de8b2d2988f3979db57fc767557f28796f79c42fb8bde6df18c4ad2ab4be6236d697dbcd754e79aad6d6a9b4ae67cbcaaa549cd5e14e6dee1d6e3d5ec63801f40000000000000000000000000000000000000000000000001638c7c568fac8fda57cb1c63e2b47d647ed2aec5b31b5f0cee49b9f6f46b8595dd97ba6c622eecbdd36396b58cfdc3625385ecfc116b86c4a70bd9f8026784eba7cc9ce0df47cc83613ae9f3273837d1f3027383fd14df09d54f9908c1fe8a6f84eaa7cc09861bb126b8a3386ec49ae20ce5db632560c6ddb6325600bcb3d8af46a50b3d8af46a054b3daeee967b5dc00000000000000000000000000014aaf0a54ed152af0a54ed01f01ede1f9b6652fdb30af6eb17990f4dfb787e6d994bf6cc2bdbac5e6437fc96ccaaf14eea59dc5bb78d51be401a4560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d05ee6ed311d8b72aaadb394b57b2d836e5a8fdcddf92ccaafbcb5fb2d836e1cc31acfed75fe21aab866f4802ad2c0000000000000000000006ad77456fd177ec1d85dc62bcd37eca7b9519b8a9a2cadad27ff821b4ad3dee935e269ec7f91975cfd1699415da66ff00ab74b58ffe65a60b4fa57fb28faee44bf4f35debd4d0301d3d950000000000000000000000000000000000000000000000000001638c7c568fac8fda57cb1c63e2b47d647ed2aec5b31b5f0cee49b9f6f46b8595dd97ba6c622eecbdd36396b58cfdc3625385ecfc116b86c4a70bd9f8026784eba7cc9ce0df47cc83613ae9f3273837d1f3027383fd14df09d54f9908c1fe8a6f84eaa7cc09861bb126b8a3386ec49ae20ce5db632560c6ddb6325600bcb3d8af46a50b3d8af46a054b3daeee967b5dc00000000000000000000000000014aaf0a54ed152af0a54ed01f01ede1f9b6652fdb30af6eb17990f4dfb787e6d994bf6cc2bdbac5e6437fc96ccaaf14eea59dc5bb78d51be401a4560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d06ee6efc966557de5afd96c1b70d47ee6efc966557de5afd96c1b70e618de7f6baff0010d55c337a401569600000000000000000000034d7ba533ffa2190b1ff00f59bcfb34b729a6bdd2afe91c85fef379f6695b605ef0b3fbee943c4336abf7e2d0b01d35960000000000000000000000000000000000000000000000000001638c7c568fac8fda57cb1c63e2b47d647ed2aec5b31b5f0cee49b9f6f46b8595dd97ba6c622eecbdd36396b58cfdc3625385ecfc116b86c4a70bd9f8026784eba7cc9ce0df47cc83613ae9f3273837d1f3027383fd14df09d54f9908c1fe8a6f84eaa7cc09861bb126b8a3386ec49ae20ce5db632560c6ddb6325600bcb3d8af46a50b3d8af46a054b3daeee967b5dc00000000000000000000000000014aaf0a54ed152af0a54ed01f01ede1f9b6652fdb30af6eb17990f4dfb787e6d994bf6cc2bdbac5e6437fc96ccaaf14eea59dc5bb78d51be401a4560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d06ee6efc966557de5afd96c1b70d47ee6efc966557de5afd96c1b70e618de7f6baff10d55c337a401569600000000000000000000034d7ba55fd2390bfde6f3ecd2dca69af74abfa47217fbcde7d9a56d817bc2cfefba50f10cdaafdf8b42c074d65800000000000000000000000000000000000000000000000000058e31f15a3eb23f695f2c718f8ad1f591fb4abb16cc6d7c33b926e7dbd1ae1657765ee9b188bbb2f74d8e5ad633f70d894e17b3f045ae1b129c2f67e0099e13ae9f3273837d141b09d74f9939c175d209d60fae94db09d54f9909c1f5d3e74db09d54f98130c37624d714670dd8935c419cbb6c64ac18dbb6c64ac017967b15e8d4a167b15e8d40a967b5ddd2cf6bb80000000000000000000000000002955e14a9da2a55e14a9da03e03dbc3f36cca5fb6615edd62f321e9bf6f0fcdb3297ed9857b758bcc86ff0092d9955e29dd4b3b8b76f1aa37c80348ac0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007a0ddcddf92ccaafbcb5fb2d836e1a8fdcddf92ccaafbcb5fb2d836e1cc31bcfed75fe21aab866f4802ad2c00000000000000000000069af74abfa47217fbcde7d9a5b94d35ee957f48e42ff79bcfb34adb02f7859fdf74a1e219b55fbf168580e9acb0000000000000000000000000000000000000000000000000000b1c63e2b47d647ed2be58e31f15a3eb23f695762d98daf867724dcfb7a35c2caeecbdd363117765ee9b1cb5ac67ee1b129c2f67e08b5c3625385ecfc0133c275d3e64e705d74a0d84eb84e705d74827583fd1f3a6d84eaa7cc84e0ff47ce9b613aa9f3026186ec49ae28ce1bb126b8833976d8c95831b76d8c95802f2cf62bd1a942cf62bd1a8152cf6bbba59ed77000000000000000000000000000052abc2953b454abc2953b407c07b787e6d994bf6cc2bdbac5e643d37ede1f9b6652fdb30af6eb17990dff25b32abc53ba967716ede3546f90069158000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f41bb9bbf259955f796bf65b06dc351fb9bbf259955f796bf65b06dc3986379fdaebfc435570cde90055a58000000000000000000000d35ee957f48e42ff0079bcfb34b729a6bdd2afe91c85fef379f6695b605ef0b3fbee943c4336abf7e2d0b01d35960000000000000000000000000000000000000000000000000001638c7c568fac8fda57cb1c63e2b47d647ed2aec5b31b5f0cee49b9f6f46b8595dd97ba6c622eecbdd36396b58cfdc3625385ecfc116b86c4a70bd9f8026784eb84e705d74a0d84eb84e705d74827583fd1f3a6d84eaa7cc84e0ff47ce9b613aa9f3026186ec49ae28ce1bb126b8833976d8c95831b76d8c95802f2cf62bd1a942cf62bd1a8152cf6bbba59ed77000000000000000000000000000052abc2953b454abc2953b407c07b787e6d994bf6cc2bdbac5e643d37ede1f9b6652fdb30af6eb17990dff25b32abc53ba967716ede3546f90069158000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f41bb9bbf259955f796bf65b06dc351fb9bbf259955f796bf65b06dc3986379fdaebfc435570cde90055a58000000000000000000000d35ee957f48e42ff0079bcfb34b729a6bdd2afe91c85fef379f6695b605ef0b3fbee943c4336abf7e2d0b01d35960000000000000000000000000000000000000000000000000001638c7c568fac8fda57cb1c63e2b47d647ed2aec5b31b5f0cee49b9f6f46b8595dd97ba6c622eecbdd36396b58cfdc3625385ecfc116b86c4a70bd9f8026784eb84e705d74a0d84eb84e705d74827583fd14db09d54f9909c1f5509b613aa9f3026186ec49ae28ce1bb126b8833976d8c95831b76d8c95802f2cf62bd1a942cf62bd1a8152cf6bbba59ed77000000000000000000000000000052abc2953b454abc2953b407c07b787e6d994bf6cc2bdbac5e643d37ede1f9b6652fdb30af6eb17990dff25b32abc53ba967716ede3546f900691580000000000000000000000000000000000000000000000000000000000000000000000e734cea8334ee907039cd3ba4cd3ba47c7039cd3ba4cd3ba41c0e734ee9334ee907039cd3ba4cd3ba41c0e734ee9334ee907039cd3ba4cd3ba41c0e734ee9334ee907a0bdcddf92ccaafbcb5fb2d836e1a91dcde898ec5995513fed2d7ecb60db7730c6b3fb5d7f886aee19bd200ab4b0000000000000000000001a6bdd2afe91c85fef379f6696e534d7ba53d392390b9bfe99bcfb34adb02f7859fdf74a1e219b55fbf16858e7933ba4cd3ba5d35967039cd3ba4cd3ba47c7039cd3ba4cd3ba41c0e734ee9334ee907039cd3ba4cd3ba41c0e734ee9334ee907039cd3ba4cd3ba41c0e734ee9334ee907039cd3ba4e4d5ba5f1f5c00fa0000000000000000000000000b1c63e2b47d647ed2be58e31f15a3eb23f695762d98daf867724dcfb7a35c2caeecbdd363117765ee9b1cb5ac67ee1b129c2f67e08b5c3625385ecfc0133c275d3e64e705d74a0d84eba7cc9ce0bae904eb07d5426d84eaa7cc84e0ff004536c27553e604c30dd8935c519c37624d710672edb192b0636edb192b005e59ec57a352859ec57a3502a59ed7774b3daee0000000000000000000000000000a557852a768a957852a7680f80f6f0fcdb3297ed9857b758bcc87a6fdbc3f36cca5fb6615edd62f321bfe4b665578a7752cee2ddbc6a8df200d22b0000000000000000000000000000000000000000000000000000000000000000000731adc398d60dceed29ed7eec3fd96bb18e318ff00642c8bb2c5f10bae50dbdcacadebbdde2ca69b0a6ef77ae28cd67694c74555d739f367e96c0ff057dac7e2b6efe93befbe403b9c7f233941f7aef3ec9756d6b9ce2d7dbcd9df6d28a2d2a8889f644cf1696e761655d8533553133cdf287c47f82bed63f15b77f495f7df1fc15f6b1f8adbbfa4afbef9f6e15d946f9ded5fda78a4f46b0d08f287c47f82bed63f15b77f495f7df1fc15f6b1f8adbbfa4afbef9f6e0ca37cef6afed3c4e8d61a11e50f88ff00057dac7e2b6efe92befbe3f82bed63f15b77f495f7df3edc1946f9ded5fda789d1ac3423ca1f11fe0afb58fc56ddfd257df7c7f057dac7e2b6efe92befbe7db8328df3bdabfb4f13a3586847943e23fc15f6b1f8adbbfa4afbef8fe0afb58fc56ddfd257df7cfb70651be77b57f69e2746b0d08f287c47f82bed63f15b77f495f7df1fc15f6b1f8adbbfa4afbef9f6e0ca37cef6afed3c4e8d61a11e50f88ff057dac7e2b6efe92befbe3f82bed63f15b77f49df7df3edc1946f9ded5fda789d1ac3423ca111ec71d8a3b1f7624c2ef582f63cc9da307b95f6f337cb7b2a2f16b6bcbb6e453472b3da5554c7f2d34c6689cdd097023575d56b54d75cf3ccfc65ed4d314c73531cd000fc3e800000000000000000000086f649ec3dd8e3b2f5cee370ec8b933678cd861b6d55e2eb45778b6b2ef769553c99ab3d9574ccff002f474e74c87eeced2bb2aa2ba266263e31ea7e6aa62b8f46a8e787c47f82bed63f15b77f49df7df1fc15f6b1f8adbbfa4afbef9f6e12728df3bdabfb4f179746b0d08f287c47f82bed63f15b77f495f7df1fc15f6b1f8adbbfa4afbef9f6e0ca37cef6afed3c4e8d61a11e50f88ff057dac7e2b6efe92befbe3f82bed63f15b77f495f7df3edc1946f9ded5fda789d1ac3423ca1f11fe0afb58fc56ddfd257df7c7f057dac7e2b6efe92befbe7db8328df3bdabfb4f13a3586847943e23fc15f6b1f8adbbfa4afbef8fe0afb58fc56ddfd257df7cfb70651be77b57f69e2746b0d08f287c47f82bed63f15b77f495f7df1fc15f6b1f8adbbfa4afbef9f6e0ca37cef6afed3c4e8d61a11e50f88ff00057dac7e2b6efe92befbe3f82bed63f15b77f495f7df3edc1946f9ded5fda789d1ac3423ca1f11fe0afb58fc56ddfd257df7c7f057dac7e2b6efe92befbe7db8328df3bdabfb4f13a3586847943e23fc15f6b1f8adbbfa4afbef917eca5daa5dad5917d8d32af2b6e9d8caed6578c1f05bedf6c2b9c46f939ad6cec6aaa8e89b6cd3fcd10d967c47b747168c23b5a72d6a8af93697cbb585c28e9d736d78b3b398fd35549174be5eedaf1676736b57ae623fda7e33ade76d6163459d557a11ea89f843cadb2e5c5959c5a4e7af914f2a77ce6e97673578539b7b874f650007d0000000000000000000001638c7c568fac8fda57cb1c63e2b47d647ed2aec5b31b5f0cee49b9f6f46b8595dd97ba6c622eecbdd36396b58cfdc3625385ecfc116b86c4a70bd9f8026784eba7cc9ce0bae941b09d74f9939c175d209ce0ff4537c27553e642307fa29be13aa9f3026186ec49ae28ce1bb126b8833976d8c95831b76d8c95802f2cf62bd1a942cf62bd1a8152cf6bbba59ed77000000000000000000000000000052abc2953b454abc2953b407c07b787e6d994bf6cc2bdbac5e643d37ede1f9b6652fdb30af6eb17990dff25b32abc53ba967716ede3546f90069158000000000000000000000000000000000000000000000000000000000000000000398d6e1cc6b07a21dce3f919ca0fbd779f64bab6b5aa5dce3f919ca0fbd779f64bab6b5cbf19cfed75b5571cde8d400ac4b0000000000000000000000000000000000000000000000000000000000000000000000001ab5dd13c5e2e7d8470cc269af3578ae51dd2ce69cfae8b2b3b5b69ff7a8a3f36d2b483ba578bc727b1f64fd3574cdae237fae33f0d165674fff009952d703a3f9310b28faf3f944ca1dfeaf46ed54b485c03a732c0000000000000000000000002c718f8ad1f591fb4af9638c7c568fac8fda55d8b6636be19dc9373ede8d70b2bbb2f74d8c45dd97ba6c72d6b19fb86c4a70bd9f822d70d894e17b3f004cf09d74f9939c175d283613ae9f327382eba4139c1fe8a6f84eaa7cc8460ff4537c27553e604c30dd8935c519c37624d710672edb192b0636edb192b005e59ec57a352859ec57a3502a59ed7774b3daee0000000000000000000000000000a557852a768a957852a7680f80f6f0fcdb3297ed9857b758bcc87a6fdbc3f36cca5fb6615edd62f321bfe4b665578a7752cee2ddbc6a8df200d22b0000000000000000000000000000000000000000000000000000000000000000000731adc398d60f443b9c7f233941f7aef3ec9756d6b54bb9c7f233941f7aef3ec9756d6b97e339fdaeb6aae39bd1a80158960000000000000000000000000000000000000000000000000000000000000000000000003ce6ee89e3145fbb3560984d9d79e30bc9bb39aa386d2def16b54c7e9b3a27f17a313d1132f2bbb73f17a718ed95cb09b3ab3d1708b8dc29e9cfff003775b3aaaff7ad2a68b93167e9df66af95333ba3f2acc56ae6b0e6f9cbe2603a0b3a0000000000000000000000002c718f8ad1f591fb4af9638c7c568fac8fda55d8b6636be19dc9373ede8d70b2bbb2f74d8c45dd97ba6c72d6b19fb86c4a70bd9f822d70d894e17b3f004cf09d74f9939c175d283613ae9f327382eba4139c1fe8a6f84eaa7cc8460ff4537c27553e604c30dd8935c519c37624d710672edb192b0636edb192b005e59ec57a352859ec57a3502a59ed7774b3daee0000000000000000000000000000a557852a768a957852a7680f80f6f0fcdb3297ed9857b758bcc87a6fdbc3f36cca5fb6615edd62f321bfe4b665578a7752cee2ddbc6a8df200d22b0000000000000000000000000000000000000000000000000000000000000000000731adc398d60f443b9c7f233941f7aef3ec9756d6b54bb9c7f233941f7aef3ec9756d6b97e339fdaeb6aae39bd1a8015896000000000000000000000000000000000000000000000000000000000000000000000000e25e3af669c628ca1ecc59778dd9d5cab3bde52621559d59f3e7b3a2daab3a3fddb3a5ec0e277eb2c330ebd6236f3116575b1aedeb99d514d14cd53fb3c4caaf76988555e216b3fcf7caebbcd5e7b4aa6b9f5d4d7f24ecf9eab5b4d51e7cfc14d8c55eaa29d6e006d1460000000000000000000000002c718f8ad1f591fb4af9638c7c568fac8fda55d8b6636be19dc9373ede8d70b2bbb2f74d8c45dd97ba6c72d6b19fb86c4a70bd9f822d70d894e17b3f004cf09d74f9939c1b5d283613ae9f3273837d104e707fa29be13aa9f3211837d1fc137c27553e604c30dd8935c519c37624d710672edb192b0636edb192b005e59ec57a352859ec57a3502a59ed7774b3daee0000000000000000000000000000a557852a768a957852a7680f80f6f0fcdb3297ed9857b758bcc87a6fdbc3f36cca5fb6615edd62f321bfe4b665578a7752cee2ddbc6a8df200d22b0000000000000000000000000000000000000000000000000000000000000000000731adc398d60f443b9c7f233941f7aef3ec9756d6b54bb9c7f233941f7aef3ec9756d6b97e339fdaeb6aae39bd1a8015896000000000000000000000000000000000000000000000000000000000000000000000000f9f76c1e3b1935d8372f71ae5726abbe4edfe2ce73e6ff0094aac6aa28ff007aa87903676716367458d3aace9a688f34466ffb9ea0f6f463118576b5e535df9511562b6d71c3a9cfb7be5eacf9511ff669a9e60553caaa677cb79c95b3e6bad75fceadd11c59fc5aae7b58a7e50e0069d540000000000000000000000002c718f8ad1f591fb4af9638c7c568fac8fda55d8b6636be19dc9373ede8d70b2bbb2f74d8c45dd97ba6c72d6b19fb86c4a70bd9f822d70d894e17b3f004cf09d74f9939c1be8f9906c275d3e64e706fa3e604e706fa3f826f84eaa7cc8460df47f04df09d54f98130c37624d714670dd8935c419cbb6c64ac18dbb6c64ac017967b15e8d4a167b15e8d40a967b5ddd2cf6bb80000000000000000000000000002955e14a9da2a55e14a9da03e03dbc3f36cca5fb6615edd62f321e9bf6f0fcdb3297ed9857b758bcc86ff0092d9955e29dd4b3b8b76f1aa37c80348ac0000000000000000000000000000000000000000000000000000000000000000001cc6b70e63583d10ee71fc8ce507debbcfb25d5b5ad52ee71fc8ce507debbcfb25d5b5ae5f8ce7f6badaab8e6f46a0056258000000000000000000000000000000000000000000000000000000000000000000000003527ba3f8d45d7b1564ce01131cbc4b292ceda637d16177b6ae7fdeaa879eedceee95635df32832032722b8ff00c9eeb896215d3b7f9aab1b2a67d55b4c5d2393d67e861f44fcf9e76cf066311abd2bcd5f4e6dc00bb410000000000000000000000001638c7c568fac8fda57cb1c63e2b47d647ed2aec5b31b5f0cee49b9f6f46b8595dd97ba6c622eecbdd36396b58cfdc3625385ecfc116b86c4a70bd9f8026784eba7cc9ce0df47cc83613ae9f327183fd104eb06fa3f826f84eaa7cc84e0ff004536c27553e604c30dd8935c519c37624d710672edb192b0636edb192b005e59ec57a352859ec57a3502a59ed7774b3daee0000000000000000000000000000a557852a768a957852a7680f80f6f0fcdb3297ed9857b758bcc87a6fdbc3f36cca5fb6615edd62f321bfe4b665578a7752cee2ddbc6a8df200d22b0000000000000000000000000000000000000000000000000000000000000000000731adc398d60f443b9c7f233941f7aef3ec9756d6b54bb9c7f233941f7aef3ec9756d6b97e339fdaeb6aae39bd1a80158960000000000000000000000000000000000000000000000000000000000000000000000389d40f363ba0b8d4627d9fec70da6a898c1b272e97798dd5dadb5b5acfab90d697d73b6d71ad3bdb239797a8aa2aa6ed7db0c3e998dd6176b2a263f5729f23755c36cff8ae7654ff00f98db1cec8deaaf4adeb9fac80273c000000000000000000000000058e31f15a3eb23f695f2c718f8ad1f591fb4abb16cc6d7c33b926e7dbd1ae1657765ee9b188bbb2f74d8e5ad633f70d894e17b3f045ae1b129c2f67e0099e13ae138c1fe8a0f84eb84e307fa209de0ff4536c27553e642707fa29b613aa9f3026186ec49ae28ce1bb126b8833976d8c95831b76d8c95802f2cf62bd1a942cf62bd1a8152cf6bbba59ed77000000000000000000000000000052abc2953b454abc2953b407c07b787e6d994bf6cc2bdbac5e643d37ede1f9b6652fdb30af6eb17990dff25b32abc53ba967716ede3546f90069158000000000000000000000000000000000000000000000000000000000000000000398d6e1cc6b07a21dce3f919ca0fbd779f64bab6b5aa5dce3f919ca0fbd779f64bab6b5cbf19cfed75b5571cde8d400ac4b0000000000000000000000000000000000000000000000000000000000000000000001c4b96332a316a301c9bc5b1cb4aa29a30eb8dbdeeaaa76459d9d554cfa9f6989aa6221f2679a39de3c764ac6bffb47d9272c328795154627943895e6998d534cde6b8a7fdda611b74bbdad76f77b3b7b59cf5db5316b54efaaafe69f5ccbbbb0514c514c531f063267d29e7007e9f000000000000000000000000058e31f15a3eb23f695f2c718f8ad1f591fb4abb16cc6d7c33b926e7dbd1ae1657765ee9b188bbb2f74d8e5ad633f70d894e17b3f045ae1b129c2f67e0099e13ae138c1fe8a0f84eb84e307fa209de0ff004536c27553e642707d5426d84eaa7cc09861bb126b8a3386ec49ae20ce5db632560c6ddb6325600bcb3d8af46a50b3d8af46a054b3daeee967b5dc00000000000000000000000000014aaf0a54ed152af0a54ed01f01ede1f9b6652fdb30af6eb17990f4dfb787e6d994bf6cc2bdbac5e6437fc96ccaaf14eea59dc5bb78d51be401a4560000000000000000000000000000000000000000000000000000000000000000000e635b8731ac1e887738fe467283ef5de7d92eadad6a97738fe467283ef5de7d92eadad72fc673fb5d6d55c737a35002b12c0000000000000000000000000000000000000000000000000000000000000000000007cbfb67b1cab273b5efb20629675c535c6037abbd133c56d4f7a8f5d70fa835d7b7df199c2fb5cf15b94579a719c4b0fc3f37144dbd369547e9b294cc3ecff96f76547cea8def1bcd5e858d53f49799714459d31671aa888a63f0e81ccce7999dee1d5d900000000000000000000000000001638c7c568fac8fda57cb1c63e2b47d647ed2aec5b31b5f0cee49b9f6f46b8595dd97ba6c622eecbdd36396b58cfdc3625385ecfc116b86c4a70bd9f8026784eb84e705d74a0d84eb84e705d74827583eaa136c27553e642707d5426d84eaa7cc09861bb126b8a3386ec49ae20ce5db632560c6ddb6325600bcb3d8af46a50b3d8af46a054b3daeee967b5dc00000000000000000000000000014aaf0a54ed152af0a54ed01f01ede1f9b6652fdb30af6eb17990f4dfb787e6d994bf6cc2bdbac5e6437fc96ccaaf14eea59dc5bb78d51be401a4560000000000000000000000000000000000000000000000000000000000000000000003753b493b3c7621ec57d8bb19c0bb2065d5c705c42f59456f7cb2bbdbd169555558d577bbd315ff2d3319a6aa2a8d7b1b09fc63f6b378ddc27fc36ff00e8795115551aa661cf2ebe29fcd417ae4eddaf56d55b57555cf3f2e6e0b0b2c4ad6c688a2988e68fdf9bd56fe31fb59bc6ee13fe1b7ff41fc63f6b378ddc27fc36ff00e87953cbaf8a7f33975f14fe68fd56ba6955e71c1e995edbe51b78bd56fe31fb59bc6ee13fe1b7ff0041fc63f6b378ddc27fc36ffe87953cbaf8a7f33975f14fe6755ae9a5579c7032bdb7ca36f17aadfc63f6b378ddc27fc36ffe83f8c7ed66f1bb84ff0086dffd0f2a7975f14fe672ebe29fcceab5d34aaf38e0657b6f946de2f55bf8c7ed66f1bb84ff0086dffd07f18fdacde37709ff000dbffa1e54f2ebe29fcce5d7c53f99d56ba6955e71c0caf6df28dbc5eab7f18fdacde37709ff000dbffa0fe31fb59bc6ee13fe1b7ff43ca9e5d7c53f99cbaf8a7f33aad74d2abce38195edbe51b78bd56fe31fb59bc6ee13fe1b7ff41fc63f6b378ddc27fc36ff00e87953cbaf8a7f33975f14fe6755ae9a5579c7032bdb7ca36f17aadfc63f6b378ddc27fc36ff00e83f8c7ed66f1bb84ff86dff00d0f2a7975f14fe672ebe29fcceab5d34aaf38e0657b6f946de2f64bb1ef652c80ecad865e718ec7b94d76c6ee573bc4dd2dedac29ae228b6e4d357227951139f935533f8a54d48ee6f4ccf62ccaacf333ffa4b5fb2d836dd8fc42ed4dd2f35d8d13cf113f15d5dad66daca2babdb20086f7000000000000000000000110ec89d96bb1d7627ba5cafdd9132aaeb81d86236d5585d6bb7a2b98b5b4a69e54d31c9a67674f4a5ed35ee94ccc648e42e6998ff00cf379f6694ec36ed4df2f5458573cd13f2d5ce8f7ab59b0b29b4a7db0fb27f18fdacde37709ff0dbff00a0fe31fb59bc6ee13fe1b7ff0043ca9e5d7c53f99cbaf8a7f36bbaab74d2abce3829b2bdb7ca36f17aadfc63f6b378ddc27fc36ffe83f8c7ed66f1bb84ff0086dffd0f2a7975f14fe672ebe29fcceab5d34aaf38e0657b6f946de2f55bf8c7ed66f1bb84ff0086dffd07f18fdacde37709ff000dbffa1e54f2ebe29fcce5d7c53f99d56ba6955e71c0caf6df28dbc5eab7f18fdacde37709ff000dbffa0fe31fb59bc6ee13fe1b7ff43ca9e5d7c53f99cbaf8a7f33aad74d2abce38195edbe51b78bd56fe31fb59bc6ee13fe1b7ff41fc63f6b378ddc27fc36ff00e87953cbaf8a7f33975f14fe6755ae9a5579c7032bdb7ca36f17aadfc63f6b378ddc27fc36ff00e83f8c7ed66f1bb84ff86dff00d0f2a7975f14fe672ebe29fcceab5d34aaf38e0657b6f946de2f55bf8c7ed66f1bb84ff86dff00d07f18fdacde37709ff0dbff00a1e54f2ebe29fcce5d7c53f99d56ba6955e71c0caf6df28dbc5eab7f18fdacde37709ff0dbff00a1adfdbc1d9ffb19f652c85c9cc9aec7196973c6eab2c6f9f5fa8b0a2d23bd516761694d133caa63e95a34e7975f14fe6e26a99d73329175e4f5dae96d4db53555331f3e6e0f3b6c4ad6da89b3988e69fdf9b8017eaf0000000000000000000000000001638c7c568fac8fda57cb1c63e2b47d647ed2aec5b31b5f0cee49b9f6f46b8595dd97ba6c622eecbdd36396b58cfdc3625385ecfc116b86c4a70bd9f8026784eb84e705d74a0d84eb84e705d74827583eaa136c27553e642707d5426d84eaa7cc09861bb126b8a3386ec49ae20ce5db632560c6ddb6325600bcb3d8af46a50b3d8af46a054b3daeee967b5dc00000000000000000000000000014aaf0a54ed152af0a54ed01f01ede1f9b6652fdb30af6eb17990f4dfb787e6d994bf6cc2bdbac5e6437fc96ccaaf14eea59dc5bb78d51be401a4560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d06ee6efc966557de5afd96c1b70d47ee6efc966557de5afd96c1b70e618de7f6baff0010d55c337a401569600000000000000000000034d7ba55fd2390bfde6f3ecd2dca69af74abfa47217fbcde7d9a56d817bc2cfefba50f10cdaafdf8b42c074d65800000000000000000000000000000000000000000000000000058e31f15a3eb23f695f2c718f8ad1f591fb4abb16cc6d7c33b926e7dbd1ae1657765ee9b188bbb2f74d8e5ad633f70d894e17b3f045ae1b129c2f67e0099e11ae139c1b5d283613ae139c175d209d60faa84db09d54f9908c1fe8a6f84eaa7cc09861bb126b8a3386ec49ae20ce5db632560c6ddb6325600bcb3d8af46a50b3d8af46a054b3daeee967b5dc00000000000000000000000000014aaf0a54ed152af0a54ed01f01ede1f9b6652fdb30af6eb17990f4dfb787e6d994bf6cc2bdbac5e6437fc96ccaaf14eea59dc5bb78d51be401a4560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d06ee6efc966557de5afd96c1b70d47ee6efc966557de5afd96c1b70e618de7f6baff0010d55c337a401569600000000000000000000034d7ba55fd2390bfde6f3ecd2dca69af74abfa47217fbcde7d9a56d817bc2cfefba50f10cdaafdf8b42c074d65800000000000000000000000000000000000000000000000000058e31f15a3eb23f695f2c718f8ad1f591fb4abb16cc6d7c33b926e7dbd1ae1657765ee9b188bbb2f74d8e5ad633f70d894e17b3f045ae1b129c2f67e0099e13ae139c175d283613ae94e705d74827383fd14df09d54f9908c1fe8a6f84eaa7cc09861bb126b8a3386ec49ae20ce5db632560c6ddb6325600bcb3d8af46a50b3d8af46a054b3daeee967b5dc00000000000000000000000000014aaf0a54ed152af0a54ed01f01ede1f9b6652fdb30af6eb17990f4dfb787e6d994bf6cc2bdbac5e6437fc96ccaaf14eea59dc5bb78d51be401a4560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d06ee6efc966557de5afd96c1b70d47ee6efc966557de5afd96c1b70e618de7f6baff0010d55c337a401569600000000000000000000034d7ba55fd2390bfde6f3ecd2dca69af74abfa47217fbcde7d9a56d817bc2cfefba50f10cdaafdf8b42c074d65800000000000000000000000000000000000000000000000000058e31f15a3eb23f695f2c718f8ad1f591fb4abb16cc6d7c33b926e7dbd1ae1657765ee9b188bbb2f74d8e5ad633f70d894e17b3f045ae1b129c2f67e0099e13ae9f327382eba506c275d3e64e705d74827383fd14df09d54f9908c1fe8a6f84eaa7cc09861bb126b8a3386ec49ae20ce5db632560c6ddb6325600bcb3d8af46a50b3d8af46a054b3daeee967b5dc00000000000000000000000000014aaf0a54ed152af0a54ed01f01ede1f9b6652fdb30af6eb17990f4dfb787e6d994bf6cc2bdbac5e6437fc96ccaaf14eea59dc5bb78d51be401a4560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d06ee6efc966557de5afd96c1b70d47ee6efc966557de5afd96c1b70e618de7f6baff10d55c337a401569600000000000000000000034d7ba55fd2390bfde6f3ecd2dca69af74abfa47217fbcde7d9a56d817bc2cfefba50f10cdaafdf8b42c074d65800000000000000000000000000000000000000000000000000058e31f15a3eb23f695f2c718f8ad1f591fb4abb16cc6d7c33b926e7dbd1ae1657765ee9b188bbb2f74d8e5ad633f70d894e17b3f045ae1b129c2f67e0099e13ae9f327382eba506c275d3e64e705d74827383fd14df09d54f9908c1fe8a6f84eaa7cc09861bb126b8a3386ec49ae20ce5db632560c6ddb6325600bcb3d8af46a50b3d8af46a054b3daeee967b5dc00000000000000000000000000014aaf0a54ed152af0a54ed01f01ede1f9b6652fdb30af6eb17990f4dfb787e6d994bf6cc2bdbac5e6437fc96ccaaf14eea59dc5bb78d51be401a4560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d06ee6efc966557de5afd96c1b70d47ee6efc966557de5afd96c1b70e618de7f6baff0010d55c337a401569600000000000000000000034d7ba55fd2390bfde6f3ecd2dca69af74abfa47217fbcde7d9a56d817bc2cfefba50f10cdaafdf8b42c074d65800000000000000000000000000000000000000000000000000058e31f15a3eb23f695f2c718f8ad1f591fb4abb16cc6d7c33b926e7dbd1ae1657765ee9b188bbb2f74d8e5ad633f70d894e17b3f045ae1b129c2f67e0099e13ae139c175d283613ae139c175d209ce0ff4537c27553e642307fa29be13aa9f3026186ec49ae28ce1bb126b8833976d8c95831b76d8c95802f2cf62bd1a942cf62bd1a8152cf6bbba59ed77000000000000000000000000000052abc2953b454abc2953b407c07b787e6d994bf6cc2bdbac5e643d37ede1f9b6652fdb30af6eb17990dff25b32abc53ba967716ede3546f90069158000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f41bb9bbf259955f796bf65b06dc351fb9bbf259955f796bf65b06dc3986379fdaebfc435570cde90055a58000000000000000000000d35ee957f48e42ff0079bcfb34b729a6bdd2afe91c85fef379f6695b605ef0b3fbee943c4336abf7e2d0b01d35960000000000000000000000000000000000000000000000000001638c7c568fac8fda57cb1c63e2b47d647ed2aec5b31b5f0cee49b9f6f46b8595dd97ba6c622eecbdd36396b58cfdc3625385ecfc116b86c4a70bd9f8026784eb84e705d74a0d84eb84e705d74827383fd14df09d54f9908c1fe8a6f84eaa7cc09861bb126b8a3386ec49ae20ce5db632560c6ddb6325600bcb3d8af46a50b3d8af46a054b3daeee967b5dc00000000000000000000000000014aaf0a54ed152af0a54ed01f01ede1f9b6652fdb30af6eb17990f4dfb787e6d994bf6cc2bdbac5e6437fc96ccaaf14eea59dc5bb78d51be401a4560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d06ee6efc966557de5afd96c1b70d47ee6efc966557de5afd96c1b70e618de7f6baff10d55c337a401569600000000000000000000034d7ba55fd2390bfde6f3ecd2dca69af74abfa47217fbcde7d9a56d817bc2cfefba50f10cdaafdf8b42c074d65800000000000000000000000000000000000000000000000000058e31f15a3eb23f695f2c718f8ad1f591fb4abb16cc6d7c33b926e7dbd1ae1657765ee9b188bbb2f74d8e5ad633f70d894e17b3f045ae1b129c2f67e0099e13ae139c175d283613ae139c175d209ce0ff004537c27553e642307fa29be13aa9f3026186ec49ae28ce1bb126b8833976d8c95831b76d8c95802f2cf62bd1a942cf62bd1a8152cf6bbba59ed77000000000000000000000000000052abc2953b454abc2953b407c07b787e6d994bf6cc2bdbac5e643d37ede1f9b6652fdb30af6eb17990dff0025b32abc53ba967716ede3546f90069158000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f41bb9bbf259955f796bf65b06dc351fb9bbf259955f796bf65b06dc3986379fdaebfc435570cde90055a58000000000000000000000d35ee957f48e42ff79bcfb34b729a6bdd2afe91c85fef379f6695b605ef0b3fbee943c4336abf7e2d0b01d35960000000000000000000000000000000000000000000000000001638c7c568fac8fda57cb1c63e2b47d647ed2aec5b31b5f0cee49b9f6f46b8595dd97ba6c622eecbdd36396b58cfdc3625385ecfc116b86c4a70bd9f8026784eb84e705d74a0d84eba7cc9ce0bae904eb07d709b613aa9f321383eb8f3a6d84eaa7cc09861bb126b8a3386ec49ae20ce5db632560c6ddb6325600bcb3d8af46a50b3d8af46a054b3daeee967b5dc00000000000000000000000000014aaf0a54ed152af0a54ed01f01ede1f9b6652fdb30af6eb17990f4dfb787e6d994bf6cc2bdbac5e6437fc96ccaaf14eea59dc5bb78d51be401a4560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d06ee6efc966557de5afd96c1b70d47ee6efc966557de5afd96c1b70e618de7f6baff10d55c337a401569600000000000000000000034d7ba55fd2390bfde6f3ecd2dca69af74abfa47217fbcde7d9a56d817bc2cfefba50f10cdaafdf8b42c074d65800000000000000000000000000000000000000000000000000058e31f15a3eb23f695f2c718f8ad1f591fb4abb16cc6d7c33b926e7dbd1ae1657765ee9b188bbb2f74d8e5ad633f70d894e17b3f045ae1b129c2f67e0099e13ae9f327382eba506c275d3e64e705d74827583eb8f3a6d84eaa7cc84e0fae3ce9b613aa9f3026186ec49ae28ce1bb126b8833976d8c95831b76d8c95802f2cf62bd1a942cf62bd1a8152cf6bbba59ed77000000000000000000000000000052abc2953b454abc2953b407c07b787e6d994bf6cc2bdbac5e643d37ede1f9b6652fdb30af6eb17990dff0025b32abc53ba967716ede3546f90069158000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f41bb9bbf259955f796bf65b06dc351fb9bbf259955f796bf65b06dc3986379fdaebfc435570cde90055a58000000000000000000000d35ee957f48e42ff79bcfb34b729a6bdd2afe91c85fef379f6695b605ef0b3fbee943c4336abf7e2d0b01d35960000000000000000000000000000000000000000000000000001638c7c568fac8fda57cb1c63e2b47d647ed2aec5b31b5f0cee49b9f6f46b8595dd97ba6c622eecbdd36396b58cfdc3625385ecfc116b86c4a70bd9f8026784eba7cc9ce0bae941b09d709ce0bae904eb07d71e74db09d54f9909c1f5c79d36c27553e604c30dd8935c519c37624d710672edb192b0636edb192b005e59ec57a352859ec57a3502a59ed7774b3daee0000000000000000000000000000a557852a768a957852a7680f80f6f0fcdb3297ed9857b758bcc87a6fdbc3f36cca5fb6615edd62f321bfe4b665578a7752cee2ddbc6a8df200d22b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001e8377377e4b32abef2d7ecb60db86a3f7377e4b32abef2d7ecb60db8730c6f3fb5d7f886aae19bd200ab4b0000000000000000000001a6bdd2afe91c85fef379f6696e534d7ba55fd2390bfde6f3ecd2b6c0bde167f7dd2878866d57efc5a1603a6b2c0000000000000000000000000000000000000000000000000002c718f8ad1f591fb4af9638c7c568fac8fda55d8b6636be19dc9373ede8d70b2bbb2f74d8c45dd97ba6c72d6b19fb86c4a70bd9f822d70d894e17b3f004cf09d709ce0bae941b09d709ce0bae904eb07d71e74db09d54f9908c1fe8a6f84eaa7cc09861bb126b8a3386ec49ae20ce5db632560c6ddb6325600bcb3d8af46a50b3d8af46a054b3daeee967b5dc00000000000000000000000000014aaf0a54ed152af0a54ed01f01ede1f9b6652fdb30af6eb17990f4dfb787e6d994bf6cc2bdbac5e6437fc96ccaaf14eea59dc5bb78d51be401a4560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d06ee6efc966557de5afd96c1b70d47ee6efc966557de5afd96c1b70e618de7f6baff10d55c337a401569600000000000000000000034d7ba55fd2390bfde6f3ecd2dca69af74abfa47217fbcde7d9a56d817bc2cfefba50f10cdaafdf8b42c074d65800000000000000000000000000000000000000000000000000058e31f15a3eb23f695f2c718f8ad1f591fb4abb16cc6d7c33b926e7dbd1ae1657765ee9b188bbb2f74d8e5ad633f70d894e17b3f045ae1b129c2f67e0099e13ae139c175d283613ae139c175d209ce0ff004537c27553e642307fa29be13aa9f3026186ec49ae28ce1bb126b8833976d8c95831b76d8c95802f2cf62bd1a942cf62bd1a8152cf6bbba59ed77000000000000000000000000000052abc2953b454abc2953b407c07b787e6d994bf6cc2bdbac5e643d37ede1f9b6652fdb30af6eb17990dff0025b32abc53ba967716ede3546f90069158000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f41bb9bbf259955f796bf65b06dc351fb9bbf259955f796bf65b06dc3986379fdaebfc435570cde90055a58000000000000000000000d35ee957f48e42ff79bcfb34b729a6bdd2afe91c85fef379f6695b605ef0b3fbee943c4336abf7e2d0b01d35960000000000000000000000000000000000000000000000000001638c7c568fac8fda57cb1c63e2b47d647ed2aec5b31b5f0cee49b9f6f46b8595dd97ba6c622eecbdd36396b58cfdc3625385ecfc116b86c4a70bd9f8026784eba7cc9ce0bae941b09d74f9939c175d209ce0ff4537c27553e642307fa29be13aa9f3026186ec49ae28ce1bb126b8833976d8c95831b76d8c95802f2cf62bd1a942cf62bd1a8152cf6bbba59ed77000000000000000000000000000052abc2953b454abc2953b407c07b787e6d994bf6cc2bdbac5e643d37ede1f9b6652fdb30af6eb17990dff25b32abc53ba967716ede3546f90069158000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f41bb9bbf259955f796bf65b06dc351fb9bbf259955f796bf65b06dc3986379fdaebfc435570cde90055a58000000000000000000000d35ee957f48e42ff0079bcfb34b729a6bdd2afe91c85fef379f6695b605ef0b3fbee943c4336abf7e2d0b01d35960000000000000000000000000000000000000000000000000001638c7c568fac8fda57cb1c63e2b47d647ed2aec5b31b5f0cee49b9f6f46b8595dd97ba6c622eecbdd36396b58cfdc3625385ecfc116b86c4a70bd9f8026784eba7cc9ce0bae941b09d74f9939c175d209ce0ff004537c27553e6427078cdc94db09d54f98130c37624d714670dd8935c419cbb6c64ac18dbb6c64ac017967b15e8d4a167b15e8d40a967b5ddd2cf6bb80000000000000000000000000002955e14a9da2a55e14a9da03e03dbc3f36cca5fb6615edd62f321e9bf6f0fcdb3297ed9857b758bcc86ff0092d9955e29dd4b3b8b76f1aa37c80348ac0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007a0ddcddf92ccaafbcb5fb2d836e1a8fdcddf92ccaafbcb5fb2d836e1cc31bcfed75fe21aab866f4802ad2c00000000000000000000069af74abfa47217fbcde7d9a5b94d35ee957f48e42ff79bcfb34adb02f7859fdf74a1e219b55fbf168580e9acb0000000000000000000000000000000000000000000000000000b1c63e2b47d647ed2be58e31f15a3eb23f695762d98daf867724dcfb7a35c2caeecbdd363117765ee9b1cb5ac67ee1b129c2f67e08b5c3625385ecfc0133c275d3e64e705d74a0d84eba7cc9ce0bae904eb08fa3e74db09d54f9909c23e8f9d36c27553e604c30dd8935c519c37624d710672edb192b0636edb192b005e59ec57a352859ec57a3502a59ed7774b3daee0000000000000000000000000000a557852a768a957852a7680f80f6f0fcdb3297ed9857b758bcc87a6fdbc3f36cca5fb6615edd62f321bfe4b665578a7752cee2ddbc6a8df200d22b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001e8377377e4b32abef2d7ecb60db86a3f7377e4b32abef2d7ecb60db8730c6f3fb5d7f886aae19bd200ab4b0000000000000000000001a6bdd2afe91c85fef379f6696e534d7ba55fd2390bfde6f3ecd2b6c0bde167f7dd2878866d57efc5a1603a6b2c0000000000000000000000000000000000000000000000000002c718f8ad1f591fb4af9638c7c568fac8fda55d8b6636be19dc9373ede8d70b2bbb2f74d8c45dd97ba6c72d6b19fb86c4a70bd9f822d70d894e17b3f004cf09d74f9939c175d283613ae9f327382eba413bc23e8a6b84eaa7cc8560ff4536c27552097e1bb126b8a3386ec49ae20ce5db632560c6ddb6325600bcb3d8af46a50b3d8af46a054b3daeee967b5dc00000000000000000000000000014aaf0a54ed152af0a54ed01f01ede1f9b6652fdb30af6eb17990f4dfb787e6d994bf6cc2bdbac5e6437fc96ccaaf14eea59dc5bb78d51be401a4560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d06ee6efc966557de5afd96c1b70d47ee6efc966557de5afd96c1b70e618de7f6baff10d55c337a401569600000000000000000000034d7ba55fd2390bfde6f3ecd2dca69af74abfa47217fbcde7d9a56d817bc2cfefba50f10cdaafdf8b42c074d65800000000000000000000000000000000000000000000000000058e31f15a3eb23f695f2c718f8ad1f591fb4abb16cc6d7c33b926e7dbd1ae1657765ee9b189bbb2d74d8e5ad633f70d894e17b3f045ae1b129c2f67e0099e13ae9f327382eba506c275d3e64e705d74827783fd14db0ad884e0ff004536c2b54025f86ec49ae28ce1bb126b8833976d8c95831b76d8c95802f2cf62bd1a942cf62bd1a8152cf6bbba59ed77000000000000000000000000000052abc2953b454abc2953b407c07b787e6d994bf6cc2bdbac5e643d37ede1f9b6652fdb30af6eb17990dff25b32abc53ba967716ede3546f90069158000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f41bb9bbf259955f796bf65b06dc351fb9bbf259955f796bf65b06dc3986379fdaebfc435570cde90055a58000000000000000000000d35ee957f48e42ff0079bcfb34b729a6bdd2afe91c85fef379f6695b605ef0b3fbee943c4336abf7e2d0b01d35960000000000000000000000000000000000000000000000000001638c7c568fac8fda57cb2c63e2d47d647ed2afc5b31b5f0ca4dcfb7a35c2caefff007b2d74d8c4ddd96ba6c72c6b19fb86c4a70bd9f822d87eb84a70bd9f8026784eba7cc9ce0bae941b09d74f9939c175d209de0dae94db0ad5084e0dae94db0ad50097e1bb126b8a3386ec49ae20ce5db632560c6ddb6325600bcb3d8af46a50b3d8af46a054b3daeee967b5dc00000000000000000000000000014aaf0a54ed152af0a54ed01f01ede1f9b6652fdb30af6eb17990f4dfb787e6d994bf6cc2bdbac5e6437fc96ccaaf14eea59dc5bb78d51be401a4560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d06ee6efc966557de5afd96c1b70d47ee6efc966557de5afd96c1b70e618de7f6baff10d55c337a401569600000000000000000000034d7ba55fd2390bfde6f3ecd2dca69af74abfa47217fbcde7d9a56d817bc2cfefba50f10cdaafdf8b42c074d6580000000000000000000000000000000000000000000000000005962ff16a3eb23f695eacb17f8b51f591fb4abf16cc6d7c329373ede8d70b3bbebfc596ba6b8626efae3cecbdd1cb1ac67ae11d3094617b3f045ee1ae128c3367e0099e13ae9f327382eba506c275d3e64e705d748277836ba536c2b67e084e0dae94df0afa3f8025f86ec496e28d61bb125b8833976d8c95831b76d8c95802f2cf62bd1a942cf62bd1a8152cf6bbba59ed77000000000000000000000000000052abc2953b454abc2953b407c07b787e6d994bf6cc2bdbac5e643d37ede1899ed6bca6e8d57bc2a7ff00f3ac5e6437fc96ccaaf14eea59dc5bb78d51be401a4560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d06ee6efc966557de5afd96c1b70d47ee6efc966557de5afd96c1b70e618de7f6baff0010d55c337a401569600000000000000000000034d7ba55fd2390bfde6f3ecd2dca69af74abfa47217fbcde7d9a56d817bc2cfefba50f10cdaafdf8b42c074d6580000000000000000000000000000000000000000000000000005962ff0016a3eb23f695eacb179ffc9a8f2da47ed2afc5b31b5f0ca4dcfb7a35c2ceefae3cecbdd188bbeb8f3b2f7472c6b19eb86b84a70c8d5f822f87eb84a70cd9e604c709d74f9939c175d283e131d34a71836ba413bc1b5d29be15f47f042306d74a6f857d1fc012fc37547e092dc51bc3754249710672edb192b0636edb192b005e59ec57a352859ec57a3502a59ed7774b3daee0000000000000000000000000000a557852a768a957852a7680f8df6dce13698d76b8e5ddd6c6cbbe5a5861d45fa9888d5cdedaced667f2a65e57d59b3ce6d59fa1ecf650e0d72ca3c1310c9dc4a9e55d316ba5b5c2f11beceda8aaceaf5552f1b319c1310c99c62ff9358b515517ec1ef76d87de69aa334c5ad8d736757e734e7fc5b7e4a5b44d95a58fc6279fce39bf0a1c5e8e6ae9afe71cdfbe6b301ac540000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d06ee6efc966557de5afd96c1b70d47ee6efc966557de5afd96c1b70e618de7f6baff0010d55c337a401569600000000000000000000034d7ba55fd2390bfde6f3ecd2dca69af74abfa47217fbcde7d9a56d817bc2cfefba50f10cdaafdf8b42c074d65800000000000000000000000000000000000000000000000000063b19aa3936167b66baaafc22337fdec8b0d8adac5a5fbbdc4e78b2a629e8df3d33ff729b1fb68b1b857f39e68f39e1ce9b87d1e9de29fa7acbbeb8f3b2f74626ef1a996ba44b9ab50cfe1fae129c33622d87c4e784ab0b8d4099611ae139c1a3c141f0889cf09c60df44139c1b5d29be15f47f042b07fa29b6134f4539bc8097e19b125b8c678846b0cd8935c757e40cd5db632560c75da3a22591b005e59ec57a352859ec57a3502a59ed7774b3daee0000000000000000000000000000a557852a768a957852a7680b7b5cd9ba5e7876f9762ab5c93ec9361d9270ebb4c6159614c45e6aa63f96cb12b2a222b89cdabbe59c515c6f9a6d1e885a4746741bb2df636c0bb2d64262b9099419ecec6fd6715585e69a7955dd2f3474d95bd3e5a6ad71b699aa36acb09bf64fbcc5acffacfaa757fcf6a2df2efd26ca688f6fc1e450cde5a646651763dcaac4722f2aee3cd714c2ed7bd5b511e05713d345ad9cfd2b3ae9cd5533ba77c4b08e9f4d54d74c554cf3c4b293134cf34803f40000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003d06ee6efc966557de5afd96c1b70d47ee6efc966557de5afd96c1b70e618de7f6baff10d55c337a401569600000000000000000000034d7ba55fd2390bfde6f3ecd2dca69af74abfa47217fbcde7d9a56d817bc2cfefba50f10cdaafdf8b42c074d6580000000000000000000000000000000000000000000000000739814ededa8bb58d76f69e0d119f36f9d91f8ca3b45555a573695ce7aaa9e555e795ce2b7e8bcdac5dacabcf65673d331aaaaffe10b7b28f2301ca3c462f56d161673fe346d9ff009ecf368b0cbb4d951fc957b6772f6efb198ba46a62aef4b2f73a75336b36770f8e9894a70b8e884670fa7a612ac2e9d5f8025f8453d34a718344ff002a178453d309ce0d478209ae0f1e0a6f85466e4fe08660f4f829b6154f45209661bb124b8c6684770e8d4925c7a22019abaea8646c77b1f768cd10c8d8f482eacf62bd1a9429d8af46a054b3daeee967b5dc00000000000000000000000000014aaf0a5d2b77abc2975ac16f69e0cacade35caf6bd52b3b6807c3fb643b5ef06ece38159db585ad8e1d95385d9d54e1988d74ff25744f4cddadf374cd94cf4c4eba2673c744cc4f9c59559299479118fdef25f2b308b7c3314b8d5c9b6bbdac6cd95d354745744eb8aa9cf130f5eef51adf34ecb3d897223b2d6114e1596385f7caeef13ccefd6131677bba4cebef7699a7f9676d1567a6776d68308c72bb87ff0dafaecf6c6afa7d3cbeb5b7db845e3fce8f555bde5c8fb5764fed51ec939056b6d7dc06c272af07a33d516f70b2cd7ab2a63ff005b77e9abf1b3e54799f16aa268b5aec2b89a6d6ce669aecea8cd5d331ae2699e989f3b7777bd58dee9f4ec6a8aa3f7db1ed8fba82d6cabb19f46d2399c0e5c243cc000000000000000000000000000000000000000000000000000000000000000000000000000000000000001e8377377e4b32abef2d7ecb60db86a3f7377e4b32abef2d7ecb60db8730c6f3fb5d7f886aae19bd200ab4b0000000000000000000001a6bdd2afe91c85fef379f6696e534d7ba55fd2390bfde6f3ecd2b6c0bde167f7dd2878866d57efc5a1603a6b2c0000000000000000000000000000000000000000000000e7367d5d2b6bce2374bac4f2ed62aae3e851d33ff08fc5e7696b458d3e9da4c447ce7d4fb4d35573e8d31cf2b988cf2c3e278b4554d574b9573d3fcb5dad33d1e6a7fe3f92def9895e6f913671ff0023653f4227a6af3cedf32d68b3d910c7e2dca28ae26c6e7ecf8d5c38f97cd7573c37d19fe4b7f2e3c1c59d19b542eeca8d8e9676739d776365d2c82e97176a198b9d1a98fbb594f433373b2d40cbe1f46a4ab0bb3d48fe1d6539e12bc2ec757402538459f4d29be0f47828961165a937c1ecbc104bf07a3c14d70aa2335289e1167e0a6785d9f45209361d4ea48ee51d10c0e1d46a948ae54ea065aed1aa191b18cd9961778d4c858c6a05cd119d5a952b3d6ad1a81decf6bbba59ed77000000000000000000000000000052abc2975ab53bd5add663a016f5c6b5adb4742f2b8e95adad3ac18bbcd39f3b0d7da75b3d78a75b117cb3e89045b10a273f2a2734c74c4c6c97ce32e320b2332c69aa32a725b0cc4ebd516b6f778efd4f9ad69cd5c7ea7d42ff0065d128be27639f3bf5457559d5e9513cd3f47caa98aa39aa8e76b7e3fdad7d8d6d2aaed30fb3c5f0e99d54d8dfbbe511e68b4a6afdd0dbf76bde4c5d73f7bc7f1b9ffadde3fd0d92c56efd128662d76f0ba13e9c5efd447345acf9f3ef469b95de7ff10d7fbef61dc12eb9f918c62939b8a2c7fd2c1defb1e61f7799e46237d9cdbe2cff00d2fb4e2b75d7d08862774d7d0fd65abff7b3b383e741bbe83e5979c97bbd867e4deede736fa68ff831b6f85f7af06dab9f3d34ff00c13dbfdd273cf423f7cba4f4f41966ff00decece0741bbe842296b656967d115e7f3d30b5aedaf14cf44d3fa59ebcdd673cf431d6d74e9d4659bff007b3b383ef41bbe8431955f2f54ff00eaff004a9ce237c8d967fa579697598d8a155da771966ffdecece0741bbe84284e277ce1b3fd2e2714be6eb2fd2a9376d999d79b4ee932cdff00bd9d9c0e8377d0874d2b7ce1b2fd2695be70d97e976e6b56ef51cda777a8cb37fef6763e741bbe843ae95be70d97e934adf386cbf4bb736f27a8e6de4f51966ffdecec3a0ddf421d74adf386cbf49a56fbc363fa5db9b793d4e39b4ee32cdffbd9d9c0e8377d0871a56fbc163fa4d2b7de0b2fd3ff00d5cf369dc735ea9966ff00decece0741bbe843ae96bef0597e934b5f782cbf4bb735f238e6d1ba0cb37fef676703a0ddf421c696bef0597e934b5f782cbf4b9e6d1ba0e6d1ba0cb37fef676703a0ddf421c696bef0597e934b5f782cbf4b9e6d1ba0e6d1ba0cb37fef676703a0ddf421c696bef0597e934b5f782cbf4b9e6d1ba0e6d1ba0cb37fef676703a0ddf421c696bef0597e934b5f782cbf4b9e6d1ba0e6d1ba0cb37fef676703a0ddf421c696bef0597e934b5f782cbf4b9e6d1ba0e6d1ba0cb37fef676703a0ddf421c696bef0597e934b5f782cbf4b9e6d1ba0e6d1ba0cb37fef676703a0ddf421c696bef0597e934b5f782cbf4b9e6d1ba0e6d1ba0cb37fef676703a0ddf421c696bef0597e934b5f782cbf4b9e6d1ba0e6d1ba0cb37fef676703a0ddf421c696bef0597e934b5f782cbf4b9e6de4839b46e832cdff00bd9d9c0e8377d0871a5afbc165fa4d2d7de0b2fd2e79b46e839b46e832cdff00bd9d9c0e8377d0871a5afbc165fa4d2d7de0b2fd2e79b46e839b46e832cdff00bd9d9c0e8377d0871a5afbc165fa4d2d7de0b2fd2e79b46e839b46e832cdff00bd9d9c0e8377d0871a5afbc165fa4d2d7de0b2fd2e79b46e839b46e832cdff00bd9d9c0e8377d0871a5afbc165fa4d2d7de0b2fd2e79b46e839b46e832cdff00bd9d9c0e8377d0871a5afbc165fa4d2d7de0b2fd2e79b46e839b46e832cdff00bd9d9c0e8377d0871a5afbc165fa4d2d7de0b2fd2e79b46e839b46e832cdff00bd9d9c0e8377d0871a5afbc165fa4d2d7de0b2fd2e79b46e839b46e832cdff00bd9d9c0e8377d0871a5afbc165fa4d2d7de0b2fd2e79b46e839b46e832cdff00bd9d9c0e8377d0871a5afbc165fa4d2d7de0b2fd3ffd5cf368dd07368dd0659bff007b3b381d06efa10fb27611edbcec95d81727b10c9bc92c9dc99bfddf11bfce216b6989595e26d29ae6ce8b3e4c77bb4a63939a889d59fa65f45f84c3b3affb13907fe0befbf6ab73539aa05adad76f5cda5a4f3ccfc5268a29b3a7d1a639a1b53f0987675ff62720ff00c17df7e7c261d9d7fd89c83ff05f7dfb55b9b7920e6cf37e9b53f0987675ff0062720ffc17df7e7c261d9d7fd89c83ff0005f7dfb55b9b46e839b036a7e130ecebfec4e41ff82fbefcf84c3b3aff00b13907fe0befbf6ab73639b46e806d4fc261d9d7fd89c83ff05f7df9f0987675ff0062720ffc17df7ed56e6de439a836a7e130ecebfec4e41ff82fbefcf84c3b3aff00b13907fe0befbf6ab73539a836a7e130ecebfec4e41ff82fbefcf84c3b3aff00b13907fe0befbf6ab73539a836a7e130ecebfec4e41ff82fbefcf84c3b3aff00b13907fe0befbf6ab73539a836a7e130ecebfec4e41ff82fbefcf84c3b3aff00b13907fe0befbf6ab73539a836a7e130ecebfec4e41ff82fbefdf32ece3db61d91bb3f61984e1795f93f93770b3c1af55deec6bc36cede2aaeaaece6898abbe5a5519b34ec7c8f9a9cd5e9636d5d857169673cd31f17e2ba29b4a7d1aa39e1c696bef0597e934b5f782cbf4b9e6a7354fcb37fef6767047e8377d0871a5afbc165fa4d2d7de0b2fd2e79a9cd4cb37fef676703a0ddf421c696bef0597e934b5f782cbf4b9e6de4839b790cb37fef676703a0ddf421c696bef0597e934b5f782cbf4b9e6a7368dd0659bff7b3b381d06efa10e34b5f782cbf49a5afbc165fa5cf3539b7920cb37fef676703a0ddf421c696bef0597e934b5f782cbf4b9e6a73532cdffbd9d9c0e8377d0871a5afbc165fa4d2d7de0b2fd2e79b7920e6d1ba0cb37fef676703a0ddf421c696bef0597e934b5f782cbf4b9e6d1ba0e6d1ba0cb37fef676703a0ddf421c696bef0597e934b5f782cbf4b9e6d1ba0e6d1ba0cb37fef676703a0ddf421c696bef0597e934b5f782cbf4b9e6d1ba0e6d1ba0cb37fef676703a0ddf421c696bef0597e934b5f782cbf4b9e6d1ba0e6de4832cdff00bd9d9c0e8377d0871a5afbc165fa4d2d7de0b2fd2e79b7920e6de4832cdffbd9d9c0e8377d0871a5afbc165fa7ff00ab9d2b7de0b2fd3ffd5cf35f21cda771966ffdecece0741bbe8438d2b7de1b2fd2695be70d97e973cda7739e6de4f51966ff00decec3a0ddf421d74adf386cbf49a56f9c365fa5db9b793d4736f27a8cb37fef6761d06efa10eba56f9c365fa5d6ac46ff0056ab5a29f3510a9cdbc9ea39b4ee7c9c62ff003eafe597d8b95de3ff0010b4b4b5bddb745ade6d2a8dd9f347e50a51611119a9e88f24323cda77398bb4ee42b5b6b5b79f4ad6a9aa7eb3cef7a28a6ce39a88e6d4b08b1f22a5363e45f45db3ec54a2ed3b9e4fdad2cec1776161aba17167759dcbcb0bace78e8075bb586ae8666e777d5d0a575ba7919bb95d273c7402f30fbbeae84af0bbbeae862b0eba6ae84ab0bba6ae8067709b0f07a136c22c3c1e84770abacff2f426984ddfc1cf0092613639b93d098e1967e0a3b8558783d096e1b65d100cf61f46a67ee74f4431170b3e88676e946a0646ef4f42feca3a6169614ea5ed9402bd1ad563529d9c2a03bd9ed7774a36bb800000000000000000000000000029d4eb2ef546774052ae36aded61755c285a53d00c7dbd2c55eecf5b356d4e7d8c75e6cc11abf5967ce8de23619f3a637cb1cf9d1fbfddf3e7e8040f14bb67cfd087e2b74f0ba1f46c4aeb339fa114c4ee59f3f403e698a5cb5f4225895ca7a7f95f4cc4ee1afa115c470fd7fca0f9ae2171e99e8602f971d7d0fa25ff000ee99fe5602f9876bfe5040af371d7d0c6db5c7c929b5e70de9f058db6c3a78410fb4b979142ab96e84aed70de9f056f561d33f44118aae53b9d39975525ab0ef23ace1d3c208e732eab89b9f91229c3e784d1d3c208e733f249ccfc929168e9e1346cee047799f9249b9cec848b474f09a3a770239cceadc733ab7247a3a774fe4e3474eef5023bcce771cca78522d1dbe9347470823bcca784e653c309168e8e1347470823bcca784e653c29168e8e1347470823bcca784e653c29168e8e1347470823bcca784e653c29168e8e1347470823bcca784e653c29168e8e1347470823bcca784e653c29168e8e1347470823bcca784e653c29168e8e1347470823bcca784e653c29168e8e1347470823bccbc8732f2245a3a384d1d1c208ef329e13994f0a45a3a384d1d1c208ef329e13994f0a45a3a384d1d1c208ef329e13994f0a45a3a384d1d1c208ef329e13994f0a45a3a384d1d1c208ef329e13994f0a45a3a384d1d1c208ef329e13994f0a45a3a384d1d1c208ef329e13994f0a45a3a384d1d1c208ef329e13994f0a45a3a384d1d1c208ef329e13994f0a45a3a384d1d1c208ef329e13994f0a45a3a384d1d1c208ef329e13994f0a45a3a384d1d1c208ef329e13994f0a45a3a384d1d1c208ef329e139975522d1d1c268e8e1047799790e65e448b474709a3a38411de65e439979122d1d1c268e8e1047799790e65e448b474709a3a38411de65e439979122d1d1c268e8e1047799790e65e448b474709a3a38411de65e439979122d1d1c268e8e1047799790e65e448b474709a3a38411de65e439979122d1d1c268e8e1047799790e65e448b474709a3a38411de65e439979122d1d1c268e8e1047799790e653c29168e8e1347470823bcca784e653c29168e8e1347470823bcca784e653c29168e8e1347470823bcca784e653c29168e8e1347470823bcca784e653c29168e8e1347470823bcca784e653c29168e8e1347470823bcca784e653c29168e8e1347470823bcca784e653c29168e8e1347470823bcca784e653b922d1fd5934775411de6756e399d5b922d1d3c32e7474ee9fc811d8b9ced8399f92522d1d3ba4d1b3b811de67e49399f92522d1d3c268d9dc08ef33f24b9e67e4487474f0b9d1d3c208f45cbc8e62e5d548630e9e1731874f083014dcbc8a945cbc8cf53874ee56a30dea8309657199fa2beb0b8ce7d4cb5961b3c2beb0c3676520c75d6e3aba19ab95c75742eaeb874f47f2b3772c3757f283a61f71d5d09561972d59e1470fc3b54e649f0db84c66fe505f61573cd9ba130c2eeb9b93d0c661971cd9ba12cc32e79b374032d865df3446684a70fb0cd9ba18ac3aedaba125b8d86688e8064ae567d10cd5da8e8585d2cb36665eef402eac69f52eece3a142ca9e885d5100ab443b38a63a1da23383bd2eceb4bb00000000000000000000000000003a4eb759d6ed3adc4c03a551d0a35c6f5753ae9059dad3ae1636f679fa593b4a73ad2da80612f5659f3b097dbbe7cfd093de2cb3ec62af5619f3f4021b885d33e7e846b11b96789e84f6f974cf9f3c3017eb8e7cfd00f9d62387ebe846b10c373e7fe57d2afd87cce7e847afd86e7cffca0f99dfb0ce99fe560af785cf4ff002cbe977dc2f3e7fe5616f784f541f36bce173c2c75be15d57d12f1846bfe563edb08ea83e7d69854f4ff0022debc2ba89eda60fd55bd783f50105ab0ae9f05d2ac2ba7c1f5271560fd574ab07e8f001089c2b37d134575535d0fd59343f57d408568aea9a2baa9a6878e18fc8d0f1c30085e8aea9a2baa9a688ea438d11d48042e70a9d944b8d173c09ae87ea1a1fa808568b9e1345cf0a6ba1faa687ea8213a2a7865ce8b9e14d343f523f273a1e7863f20427454f0c9a2a786535d0fd48fc8d0fd48fc810ad153c3268a9e194d743f523f2343f523f2042b454f0c9a2a786535d0fd48fc8d0fd48fc810ad153c3268a9e194d743f523f2343f523f2042b454f0c9a2a786535d0fd48fc8d0fd48fc810ad153c3268a9e194d743f523f2343f523f2042b454f0c9a2a786535d0fd48fc8d0fd48fc810ad153c3268a9e194d743f523f2343f523f2042b454f0c9a2a786535d0fd48fc8d0fd48fc810ad153c3268a9e194d743f523f2343f523f2042b454f0c9a2a786535d0fd48fc8d0fd48fc810ad153c3268a9e194d743f523f2343f523f2042b454f0c9a2a786535d0fd48fc8d0fd48fc810ad153c3268a9e194d743f523f2343f523f2042b454f0c9a2a786535d0fd48fc8d0fd48fc810ad153c3268a9e194d743f523f2343f523f2042b454f0c9a2a786535d0fd48fc8d0fd48fc810ad153c3268b9e194d743f523f273a1fa91f90215a2e784d173c29ae87ea9a1faa08568b9e1345cf0a6ba1e7861c6879e18fc810ad173c3268a9e194d743f523f2343f523f2042b454f0c9a2a786535d0fd48fc8d0fd48fc810ad153c3268a9e194d743f523f2343f523f2042b454f0c9a2a786535d0fd4f51a1fa9ea042b454f0c9a2a786535d0fd4f51a1fa9ea042b454f0c9a2a786535d0fd4f51a1fa9ea042b454f0c9a2a786535d0fd4f51a1fa9ea042b454f0c9a2a786535d0fd4f51a1fa9ea042b454f0c9a2a786535d0fd4f51a1fa9ea042b454f0c9a2a786535d0fd48fc8d0fd48fc810ad153c3268a9e194d743f523f2343f523f2042b454f0c9a2e786535d0fd48fc8d0fd48fc810ad173c32e745cf0a6ba1e7863f2343cf0c0215a2e784d173c29ae87ea9a1faa08568b9e171a2a786536d0fd4871a1fa91f90215a2a7864d153c329ae87ea47e4687ea47e408568a9e193454f0ca6ba1fa91f91a1fa91f90215a2a7864d153c329ae87ea47e4687ea47e408568a9e193454f0ca6ba1fa91f91a1fa91f90217a2e784d173c29ae87ea41a1fa9008568b9e1731854f0269a1faa687ea8219a2baa68aeaa69183efa60d11d48042f45754d15d54d343c70c1a1e386010bd15d534575534d0f1c3ea73a1faa085c615d5768c2babea4ca307eabb460fd4043a9c2a78655a8c2baa975383f555e8c1fa8089d9615d55f58615d31fca9359611d55f58611abf97d408f5d70a9e8fe5666e785ce7f0599bb613abf97d4cc5d30ad5fca0c75c30cd5fca91e1f8766cdfcab9b9619abf959fb8e1d9b37f2838c3ae1aba126c3ee79b37429dc6e19b37424372b9e6cdd00af71bae6cdd0cfdcec33665b5ceeb9b37433376b0cd9ba017376b2d5d0c95851a942c2cb32faca8055b2a76abd10e9453b15a8807676a5c6b760734bb3ad2ec0000000000000000000000000000e93ac76987507598cd2eb546785498cee80a35d2b7b4a1795d39d46ba73f4031b6d679f631f78b0cf9fa19ab5b359dad944ec0476f576cf1a988bddcf3c4f42576f61e4636f175cfb010cbe5c33e7cd0c25f30ecf9ff00953bbcdcb3ec62af370cf9e3920805ef0ceab1179c2b3e7fe57d0af18767fa2c6dbe19aff941f3db7c23aab0b6c235ff002be856d85679f03d4b3b4c27aa0f9f5a60fd450af07eafa93faf088e151ab08ea0203560fd5749c1babea4f67078e1749c1f7d31f90209a1ba9ea71a1ba9ea4ef43c70fa9c688eafa8105d0d9fe87a8d0b1c1ea4e743f57d4687ea820ba1a380d0d1c09d687ea9a1faa082e868e0343470275a1fabea343750105d0dd4834375213bd0d1c06868e00413437520d0dd484eb43751ce86ea0209a1ba90686ea4275a1ba90686ea4020ba1ba90686ea4275a1ba90686ea4020ba1ba90686ea4275a1ba90686ea4020ba1ba90686ea4275a1ba90686ea4020ba1ba90686ea4275a1ba90686ea4020ba1ba90686ea4275a1ba90686ea4020ba1ba90686ea4275a1ba90686ea4020ba1ba90686ea4275a1fa8687ea020ba1ba90686ea4275a1ba90686ea4020ba1ba90686ea4275a1ba90686ea4020ba1ba90686ea4275a1ba90686ea4020ba1ba90686ea4275a1ba90686ea4020ba1ba90686ea4275a1ba90686ea4020ba1ba90686ea4275a1ba90686ea4020ba1ba90686ea4275a1ba90686ea4020ba1ba90686ea4275a1ba90686ea4020ba1ba90686ea4275a1ba90686ea4020ba1ba90686ea4275a1ba90686ea4020ba1ba90686ea4277a1a380d0d1c0082686ea41a1ba909d4e0fd4343f50105d0dd4834375213a9c1fa8686ea020ba1ba90e3437553bd0fd4f51a1fa9ea041342f54d0bd54ef43f53d4687ea7a8104d0bd5342f553bd0fd4f51a1fa9ea041342f54d0bd54ef43f53d4687ea7a8104d0bd5342f553bd0fd4f51a1fa9ea041342f54d0bd54ef43f53d4687ea7a8104d0bd5342f553bd0fd4f51a1fa9ea041342f54d0bd54ef43f53d4687ea7a8104d0bd5342f553bd0fd4f51a1fa9ea041342f55ce86ea4275a1fa9ea343f53d4082e86ea41a1ba909d687ea7a8d0fd4f5020ba1ba90686ea4275383f50d0fd4f5020ba1ba90686ea4277a1a380d0d1c0082686ea41a1ba909de86ea38d0dd480417437520d0dd484eb437520d0dd480417437520d0dd484eb437520d0dd480417437520d0dd484eb437520d0dd480417437520d0dd484eb437520d0fd4f5020ba1ba90686ea4277a1a380d0d1c0082686ea41a1a3813bd0d1c0e343f57d4082e868e0343470275a1faa687ea820da16383d46858e0f5273a1faa687ea820da1b37d0f51a1fa9ea4eb43f57d4688eafa81068c1a783d4ed18375538d0f1c2e6307ea02154e0dd4f52ad18375134a707eaaa5184470fa810fb3c1faabcb1c23aa95d9e11d45d5961319fa690466ef84f4f82ca5db0ad5fcacfd8e179be8b2177c3357f2830f74c33366e866ae98766cdfcac85db0ecd9bf9595bb5c223602d6e77188cdfcaccdd2e99b3742addae79b37432777bb66d80e2ed76cd9ba194bbd8e6d8e2c2c33665f59596a076b1b385d59d39ba5d6ce8fc95e9a41da8a553538a63343b44670734c6d721119c1cd2ece33667200000000000000000000000000003898dce40747131b5da63738074d6a75d2ab30e263382daba33aded2cf3af6aa14aaa33831b6b639f62cedaef13b198b4b2d92b7b4b1f203036d75cfb1616f7289cfd0925a58791696b76f202316d7189e8ccb1b5c3a2762576974f22dad2e59f602256b86c4fd15ad78667fa297d771eaa85770ea82215e17d553ab0be9e9a52eab0feaa9d587f541119c2babea759c2b7d2974e1dd5759c37aa088ce15d53457552dd1d1c268e8ddea044b45754d15d54b74746ef51a3a370225a2baa68aeaa5ba3a371a3a384112d15d53457552dd1d1b8d1d1c2088e8a8e0f51a2a383d49768e8e13474708223a2a383d468a8e0f525da3a384d1d1c2088e8a8e0f51a2a383d49768e8e13474708223a2a383d468a8e0f525da3a384d1d1c2088e8a8e0f51a2a383d49768e8e13474708223a2a383d468a8e0f525da3a384d1d1c2088e8a8e0f51a2a383d49768e8e13474708223a2a383d468a8e0f525da3a384d1d1c2088e8a8e0f51a2a383d49768e8e13474708223a2a383d468a8e0f525da3a3864d1d1c32088e8a8e0f51a2a383d49768e8e13474708223a2a383d468a8e0f525da3a384d1d1c2088e8a8e0f51a2a383d49768e8e13474708223a2a383d468a8e0f525da3a384d1d1c2088e8a8e0f51a2a383d49768e8e13474708223a2a383d468a8e0f525da3a384d1d1c2088e8a8e0f51a2a383d49768e8e13474708223a2a383d468a8e0f525da3a384d1d1c2088e8a8e0f51a2a383d49768e8e13474708223a2a383d468a8e0f525da3a384d1d1c2088e8a8e0f51a2a383d49768e8e13474708223a2a383d468a8e0f525ba3a3864d1d1c3208968a8e0f51a2a383d496e8e8e19347470c8225a2ba9ea345753d496e8e8e19347470c8225a2ba9ea345757d496e8e8e19347470c8225a2babea345757d496e8e8e19347470c8225a2babea345757d496e8e8e19347470c8225a2babea345757d496e8e8e19347470c8225a2babea345757d496e8e8e19347470c8225a2babea345757d496e8e8e19347470c8225a2babea345757d496e8e8e19347470c8225a2babea345757d496e8e8e19347470c8225a2ba9ea3454707a92dd1d1c3268e8e19044b454707a8d151c1ea4b747470c9a3a3864112d151c1ea3454707a92ed1d1c32e347470c8225a2a383d468a8e0f525da3a384d1d1c2088e8a8e0f51a2a383d49768e8e13474708223a2a383d468a8e0f525da3a384d1d1c2088e8a8e0f51a2a383d49768e8e13474708223a2a383d468a8e0f525da3a384d1d1c2088e8a8e0f51a2a383d49768e8e1971a3a3864112d151c1ea3454707a92ed1d1c268e8e1044b454709a2baa96e8e8e13474708225a2baa68aeaa5ba3a371a3a370225a2baa68aeaa5ba3a371a3a370225a2baa68aeaa5ba3a377a8d1d1b81138c2b7d2e630aeaa57187470bb68e8e004569c2e387d4a94e17d549e30eeabbd387c47d1046a8c33abea5c59e19d54869c3faaad45c3c80c0d961d9be8af6c70f88d8cc5171f22e6cee79b60317617188d8bfb1b9e6d8beb3ba791756576cd9ba016d637588d8beb1bbf915acec22362e6cecb36c074b2b2ccb9b3b373459ab534814d3b9569a60a69ccec0e5da2333888cce4088ceed119888cce400000000000000000000000000000000007598daec03a3acc667798dce01d2633ba5542acd3b9d4142aa37a955650bb9a73a9cd00b2aeca27c8a35d879190aa8cfad4eab2dc0c6577789d50a355da3732b559791d26c4188aaeb1af32955748dccc5561e4749b0f24830f3738dce9372f23333619dc4ddbc80c34dca373acdcf37d16679bc6e39b4030d372a67638e651b999e6de439bc6e061b9946e39946e6679bc6e39bc6e061b9946ef51cca377a999e6f1b8e6f1b8186e651b8e651b999e6f1b8e6f1b8186e651b8e651b999e6fe439bf90186e651b8e651b999e6e737061b9946e39946e6679b9cdc186e651b8e651b999e6e737061b9946e39946e6679b9cdc186e651b8e651b999e6e737061b9946e39946e6679b9cdc186e651b8e651b999e6e737061b9946e39946e6679b9cdc186e651b8e651b999e6e737061b9946e39946e6679b9cdc186e651b8e651b999e6e737061b9946e39946e6679b9cdc186e651b8e651b999e6e737061b9946e39946e6679b9cdc186e651b8e651b999e6e737061b9946e39946e6679b9cdc186e651b8e651b999e6e737061b9946e39946e6679b9cdc186e651b8e651b999e6e737061b9946e39946e6679bc6e39bf90186e651b8e651b999e6e737f2030dcca371cca37333cdce6e0c37328dc7328dcccf3739b830dcca371cca37333cdce6e0c37328dc7328dcccf37f21cdc186e651b8e651b999e6e737f2030dcca371cca37333cdfc8737f2030dcca371cca37333cdfc8737f2030dcca371cca37333cdfc8737061b9946e39946e6679b9cdfc80c37328dc7328dcccf3739b830dcca371cca37333cdce6e0c37328dc7328dcccf37f21cdc186e651b8e651b999e6fe439b830dcca371cca37333cdfc87378dc0c37328dc7328dcccf37f21cdc186e651b8e651b999e6e737061b9946e39946e6679b9cdc186e651b8e651b999e6e737061b9946e39946e6679b9cdc186e651b8e651b999e6e737061b9946e39946e6679b9cdfc80c37328dc7328dcccf378dc7378dc0c37328dc7328dcccf378dc7378dc0c37328dc732a77333cde371cde37030fcce236398b944ec6639b793d6736806222e51b9da2e79b632dcde374398bbf9018b8b9c6e54a6e91b9928b0768b0f24831f4dd736c56a2ed1b97b4d87e0a91620b4a2c215e8b1f26657a6cb742a459c40295164ad4d9e6d6ef146e77a68075a68558a7311199da2338387688cc44667203b446622333900000000000000000000000000000000000000001d6636bb00e8e2633bb4c6d8700eb3199c4c67777134ee0539a1d66854014668749a236c2e3930e3900b6ef70e3bd2e66871defc80b69b2713653b973c83913bc16bdebc9077af22e7912722416bde7c90779f242eb912722416bde7c90779f242eb912722416bde7c90779f242eb912722416bde7c90779f242eb912722416bde7c90779f242eb912722416bde6371de2372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde7c90779f242eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde7c90779f242eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de6372eb912722416bde6371de63742eb912722416bde6371de7c90bae449c8905af79f241de7c90bae449c8905af79f241de7c90bae449c8905af79f241de7c90bae449c8905af79f2439ef5e45cf224e4482dbbd7921cc5979171c8973c8f282de2c9cc596f57e439ef60a3dee1da28f22b450e6290528a1da2854cd00388a621cb9cd32e623303888ceed9b30446701da23311199c80000000000000000000000000000000000000000000000e261c80e83b66833403ab8e4bbe68334029e6970ab9a0e4c6e052153914ee3914ee0533346e54e453b8e453b814f346e3346e54e453b8e453b814f346e3346e54e453b8e453b814f346e3342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e683342a7229dc7229dc0a79a0cd0a9c8a771c8a77029e68dc668dca9c8a771c8a77029e68dc668dca9c8a771c8a77029e68dc668dca9c8a771c8a770298a9c8a771c8a770298a9c9a7739cd00a7c9973c9877cd06680751db3419a01d6233bb44663366720000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffd9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `IdProveedor` int(10) UNSIGNED NOT NULL,
  `NombreCompania` varchar(40) NOT NULL DEFAULT '',
  `NombreContacto` varchar(30) NOT NULL DEFAULT '',
  `CargoContacto` varchar(30) NOT NULL DEFAULT '',
  `Direccion` varchar(60) NOT NULL DEFAULT '',
  `Ciudad` varchar(15) NOT NULL DEFAULT '',
  `Region` varchar(15) NOT NULL DEFAULT '',
  `CodigoPostal` varchar(10) NOT NULL DEFAULT '',
  `Pais` varchar(15) NOT NULL DEFAULT '',
  `Telefono` varchar(24) NOT NULL DEFAULT '',
  `Fax` varchar(24) NOT NULL DEFAULT '',
  `HomePage` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`IdProveedor`, `NombreCompania`, `NombreContacto`, `CargoContacto`, `Direccion`, `Ciudad`, `Region`, `CodigoPostal`, `Pais`, `Telefono`, `Fax`, `HomePage`) VALUES
(1, 'Mama de Dani', '', '', 'Santa Maria', '', '', '', '', '', '', ''),
(2, 'Mercado Bayovar', '', '', 'Bayobar', '', '', '', '', '', '', ''),
(3, 'Cuzqueñito ', '', '', '1. Septiembre', '', '', '', '', '910117964', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `IdRegion` int(11) NOT NULL,
  `DescripcionRegion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`IdRegion`, `DescripcionRegion`) VALUES
(1, 'Este'),
(2, 'Oeste'),
(3, 'Norte'),
(4, 'Sur');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `territorios`
--

CREATE TABLE `territorios` (
  `IdTerritorio` varchar(5) NOT NULL,
  `DescripcionTerritorio` varchar(50) NOT NULL,
  `IdRegion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `territorios`
--

INSERT INTO `territorios` (`IdTerritorio`, `DescripcionTerritorio`, `IdRegion`) VALUES
('01581', 'Westboro', 1),
('01730', 'Bedford', 1),
('01833', 'Georgetow', 1),
('02116', 'Boston', 1),
('02139', 'Cambridge', 1),
('02184', 'Braintree', 1),
('02903', 'Providence', 1),
('03049', 'Hollis', 3),
('03801', 'Portsmouth', 3),
('06897', 'Wilton', 1),
('07960', 'Morristown', 1),
('08837', 'Edison', 1),
('10019', 'New York', 1),
('10038', 'New York', 1),
('11747', 'Mellvile', 1),
('14450', 'Fairport', 1),
('19428', 'Philadelphia', 3),
('19713', 'Neward', 1),
('20852', 'Rockville', 1),
('27403', 'Greensboro', 1),
('27511', 'Cary', 1),
('29202', 'Columbia', 4),
('30346', 'Atlanta', 4),
('31406', 'Savannah', 4),
('32859', 'Orlando', 4),
('33607', 'Tampa', 4),
('40222', 'Louisville', 1),
('44122', 'Beachwood', 3),
('45839', 'Findlay', 3),
('48075', 'Southfield', 3),
('48084', 'Troy', 3),
('48304', 'Bloomfield Hills', 3),
('53404', 'Racine', 3),
('55113', 'Roseville', 3),
('55439', 'Minneapolis', 3),
('60179', 'Hoffman Estates', 2),
('60601', 'Chicago', 2),
('72716', 'Bentonville', 4),
('75234', 'Dallas', 4),
('78759', 'Austin', 4),
('80202', 'Denver', 2),
('80909', 'Colorado Springs', 2),
('85014', 'Phoenix', 2),
('85251', 'Scottsdale', 2),
('90405', 'Santa Monica', 2),
('94025', 'Menlo Park', 2),
('94105', 'San Francisco', 2),
('95008', 'Campbell', 2),
('95054', 'Santa Clara', 2),
('95060', 'Santa Cruz', 2),
('98004', 'Bellevue', 2),
('98052', 'Redmond', 2),
('98104', 'Seattle', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idventas` bigint(20) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idventas`, `fecha`, `hora`) VALUES
(11, '2020-06-07', '12:03:46'),
(13, '2020-06-07', '14:14:06'),
(14, '2020-06-07', '14:18:01'),
(15, '2020-06-08', '18:24:04'),
(16, '2020-06-08', '18:28:01'),
(17, '2020-06-10', '13:47:34'),
(20, '2020-06-11', '01:02:55'),
(21, '2020-06-11', '12:14:45'),
(28, '2020-06-11', '18:35:50'),
(29, '2020-06-11', '18:36:27'),
(30, '2020-06-11', '20:07:45'),
(31, '2020-06-11', '22:51:41'),
(32, '2020-06-12', '22:32:53'),
(35, '2020-06-13', '22:35:17'),
(36, '2020-06-13', '23:11:51'),
(37, '2020-06-14', '00:40:10'),
(38, '2020-06-14', '17:12:40'),
(39, '2020-06-15', '00:20:05'),
(40, '2020-06-15', '02:08:50'),
(41, '2020-06-17', '20:38:05'),
(42, '2020-06-17', '20:38:38'),
(43, '2020-06-17', '20:38:39'),
(44, '2020-06-19', '23:56:33'),
(45, '2020-06-20', '01:49:37'),
(46, '2020-07-04', '19:15:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_detalle`
--

CREATE TABLE `ventas_detalle` (
  `idventas_detalle` bigint(20) NOT NULL,
  `idventas` bigint(20) DEFAULT NULL,
  `cantidad` decimal(10,3) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `igv` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `IdProducto` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas_detalle`
--

INSERT INTO `ventas_detalle` (`idventas_detalle`, `idventas`, `cantidad`, `subtotal`, `igv`, `total`, `IdProducto`) VALUES
(6, 11, '1.000', NULL, NULL, NULL, 8),
(7, 13, '2.000', NULL, NULL, NULL, 6),
(8, 13, '1.000', NULL, NULL, NULL, 10),
(9, 15, '2.000', NULL, NULL, NULL, 6),
(10, 15, '3.000', NULL, NULL, NULL, 20),
(16, 17, '1.000', NULL, NULL, NULL, 5),
(21, 20, '3.500', NULL, NULL, NULL, 8),
(22, 21, '1.500', NULL, NULL, NULL, 7),
(23, 21, '1.250', NULL, NULL, NULL, 8),
(26, 20, '0.500', NULL, NULL, NULL, 7),
(27, 29, '1.000', NULL, NULL, NULL, 6),
(28, 29, '0.250', NULL, NULL, NULL, 21),
(29, 30, '0.500', NULL, NULL, NULL, 7),
(30, 30, '0.250', NULL, NULL, NULL, 8),
(31, 31, '0.250', NULL, NULL, NULL, 7),
(32, 31, '0.500', NULL, NULL, NULL, 8),
(33, 35, '1.000', NULL, NULL, NULL, 5),
(35, 36, '4.000', NULL, NULL, NULL, 9),
(36, 37, '2.000', NULL, NULL, NULL, 5),
(37, 39, '1.000', NULL, NULL, NULL, 5),
(38, 40, '1.000', NULL, NULL, NULL, 5),
(39, 40, '1.000', NULL, NULL, NULL, 3),
(40, 40, '0.250', NULL, NULL, NULL, 21),
(41, 40, '1.000', NULL, NULL, NULL, 8),
(42, 40, '1.000', NULL, NULL, NULL, 7),
(43, 40, '0.250', NULL, NULL, NULL, 22),
(44, 40, '1.000', NULL, NULL, NULL, 9),
(45, 40, '1.000', NULL, NULL, NULL, 17),
(46, 40, '1.000', NULL, NULL, NULL, 23),
(47, 44, '1.000', NULL, NULL, NULL, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`Cargoid`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`IdCategoria`),
  ADD UNIQUE KEY `Uidx_categorias_category_name` (`NombreCategoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`IdCliente`),
  ADD KEY `idx_clientes_company_name` (`NombreCompania`),
  ADD KEY `idx_clientes_Ciudad` (`Ciudad`),
  ADD KEY `idx_clientes_region` (`Region`),
  ADD KEY `idx_clientes_CodigoPostal` (`CodigoPostal`);

--
-- Indices de la tabla `companiasenvio`
--
ALTER TABLE `companiasenvio`
  ADD PRIMARY KEY (`IdCompaniaEnvio`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`IdEmpleado`),
  ADD KEY `idx_empleados_Apellido` (`Apellido`),
  ADD KEY `idx_empleados_CodigoPostal` (`CodigoPostal`),
  ADD KEY `idx_Jefe` (`Jefe`);

--
-- Indices de la tabla `empleado_territorio`
--
ALTER TABLE `empleado_territorio`
  ADD PRIMARY KEY (`IdEmpleado`,`IdTerritorio`),
  ADD KEY `fk_table1_empleados_idx` (`IdEmpleado`),
  ADD KEY `fk_table1_territorio1_idx` (`IdTerritorio`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`IdPedido`),
  ADD KEY `FK_pedidos_ViaEmbarcacion` (`EnviadoVia`),
  ADD KEY `FK_pedidos_IdEmpleado` (`IdEmpleado`),
  ADD KEY `idx_pedidos_shipped_date` (`FechaEnvio`),
  ADD KEY `idx_pedidos_ship_CodigoPostal` (`CodigoPostalDestinatario`),
  ADD KEY `FK_pedidos_customer_id` (`IdCliente`);

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`Dni`),
  ADD KEY `Cargoid` (`Cargoid`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`IdProducto`),
  ADD KEY `FK_productos_IdCategoria` (`IdCategoria`),
  ADD KEY `FK_productos_IdProveedor` (`IdProveedor`),
  ADD KEY `idx_productos_product_name` (`NombreProducto`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`IdProveedor`),
  ADD KEY `idx_proveedores_product_name` (`NombreCompania`),
  ADD KEY `idx_proveedores_CodigoPostal` (`CodigoPostal`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`IdRegion`);

--
-- Indices de la tabla `territorios`
--
ALTER TABLE `territorios`
  ADD PRIMARY KEY (`IdTerritorio`),
  ADD KEY `fk_regio_idx` (`IdRegion`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idventas`);

--
-- Indices de la tabla `ventas_detalle`
--
ALTER TABLE `ventas_detalle`
  ADD PRIMARY KEY (`idventas_detalle`),
  ADD KEY `idventas` (`idventas`),
  ADD KEY `fk_ventas_detalle_productos1_idx` (`IdProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `Cargoid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `IdCategoria` tinyint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `companiasenvio`
--
ALTER TABLE `companiasenvio`
  MODIFY `IdCompaniaEnvio` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `IdEmpleado` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `IdPedido` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11078;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `IdProducto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `IdProveedor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `IdRegion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idventas` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `ventas_detalle`
--
ALTER TABLE `ventas_detalle`
  MODIFY `idventas_detalle` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `FK_empleados_reports_to` FOREIGN KEY (`Jefe`) REFERENCES `empleados` (`IdEmpleado`);

--
-- Filtros para la tabla `empleado_territorio`
--
ALTER TABLE `empleado_territorio`
  ADD CONSTRAINT `fk_empleado_et` FOREIGN KEY (`IdEmpleado`) REFERENCES `empleados` (`IdEmpleado`),
  ADD CONSTRAINT `fk_territorios_et` FOREIGN KEY (`IdTerritorio`) REFERENCES `territorios` (`IdTerritorio`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `FK_pedidos_IdEmpleado` FOREIGN KEY (`IdEmpleado`) REFERENCES `empleados` (`IdEmpleado`),
  ADD CONSTRAINT `FK_pedidos_ViaEmbarcacion` FOREIGN KEY (`EnviadoVia`) REFERENCES `companiasenvio` (`IdCompaniaEnvio`),
  ADD CONSTRAINT `FK_pedidos_customer_id` FOREIGN KEY (`IdCliente`) REFERENCES `clientes` (`IdCliente`);

--
-- Filtros para la tabla `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`Cargoid`) REFERENCES `cargo` (`Cargoid`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK_productos_IdCategoria` FOREIGN KEY (`IdCategoria`) REFERENCES `categorias` (`IdCategoria`),
  ADD CONSTRAINT `FK_productos_IdProveedor` FOREIGN KEY (`IdProveedor`) REFERENCES `proveedores` (`IdProveedor`);

--
-- Filtros para la tabla `territorios`
--
ALTER TABLE `territorios`
  ADD CONSTRAINT `fk_regio` FOREIGN KEY (`IdRegion`) REFERENCES `regiones` (`IdRegion`);

--
-- Filtros para la tabla `ventas_detalle`
--
ALTER TABLE `ventas_detalle`
  ADD CONSTRAINT `fk_ventas_detalle_productos1` FOREIGN KEY (`IdProducto`) REFERENCES `productos` (`IdProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
