-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-06-2020 a las 02:34:29
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id14060594_sistema`
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
  `Notas` mediumtext DEFAULT NULL,
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
  `Flete` double NOT NULL DEFAULT 0,
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
  `Foto` longblob DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `Discriminator` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `person`
--

INSERT INTO `person` (`Dni`, `Cargoid`, `Paterno`, `Materno`, `Nombre`, `Password`, `Fec_nac`, `Celular`, `Fec_reg`, `Fec_mod`, `Foto`, `email`, `sexo`, `Discriminator`) VALUES
('47455090', 12, 'Cardenas', 'Aquino', 'Anthony', 'develop321xD', '1992-10-16', '997852483', '2020-03-23 22:01:42', '2020-03-23 22:01:42', 0xffd8ffe000104a46494600010200000100010000ffed009c50686f746f73686f7020332e30003842494d04040000000000801c026700147a337a5a543933585067326873486876644250781c0228006246424d4430313030306162623033303030306332313230303030366331373030303062383137303030306638313730303030333431383030303061393334303030303862336130303030633333623030303038303364303030306563393130303030ffe2021c4943435f50524f46494c450001010000020c6c636d73021000006d6e74725247422058595a2007dc00010019000300290039616373704150504c0000000000000000000000000000000000000000000000000000f6d6000100000000d32d6c636d7300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a64657363000000fc0000005e637072740000015c0000000b777470740000016800000014626b70740000017c000000147258595a00000190000000146758595a000001a4000000146258595a000001b80000001472545243000001cc0000004067545243000001cc0000004062545243000001cc0000004064657363000000000000000363320000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074657874000000004642000058595a20000000000000f6d6000100000000d32d58595a20000000000000031600000333000002a458595a200000000000006fa2000038f50000039058595a2000000000000062990000b785000018da58595a2000000000000024a000000f840000b6cf63757276000000000000001a000000cb01c903630592086b0bf6103f15511b3421f1299032183b92460551775ded6b707a0589b19a7cac69bf7dd3c3e930ffffffdb00430006040506050406060506070706080a100a0a09090a140e0f0c1017141818171416161a1d251f1a1b231c1616202c20232627292a29191f2d302d283025282928ffdb0043010707070a080a130a0a13281a161a2828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828ffc200110802be02be03002200011101021101ffc4001a000101010101010100000000000000000001000203040506ffc40017010101010100000000000000000000000000010203ffc40017010101010100000000000000000000000000010203ffda000c03000001110211000001fca01cdb73b33a11a4cd20d5254674431aaceaa220d194a60d40845a2349a4cda17330268111a862118262a8cea9229444a2ad450925094c66d090ca0e53328a42512435094289e5cb957af1ea4d0d454154349650b584462cea39eed06842a2a8aa2d1a2050b4034b34908281a049234595d025661b21a00db9d2342dbca948b5280ca0c98d500848939d0321303479cd4a6e4860442627284c06c33a351554c291a02a5a64295a14901448a5a24d443509a02a2a0aa249610ce37ca1df1d9be9c7a59d6ce8a55c9b8c509ab3a3224b11628ad22541ad73d0c6834279e95a8a688910449ce8a932d194d91430954834ac28d26590b410a60d46560b519448d00b5b9b401aa4cab6e4df39318d73944a3aa6eb5be7dac9a52423414e42ca959d94c66d462de50b62c91a26b855292094520d4490d2091540b04c495935050289a73a0906812885090aa0681a58a4a9218ce3a6179e3ae2319dd0f5e5b3b75e3d346725515019df3822ad6b1a350a2ca94154852559396b313956728d03306a09340301ac9aa81a2a8482731ad73e81b34950a48848550d030882509468242b328390c6f1166235b77a3bc6937529552441cf580711bd613aeb1bb0b52e5885a018b089e789633ccedaf0ecf66bc9d0f4385348ac80c4510d03942a070f389c47ab7c7ad69142a0d65188ab55956326f2050d0360379257598a633694c3d3462d012ac51505326272b83549996b7b3454ad519d41a08b3a8f2e3a7331e6f4f0380e13a6b8e97dddbe77a93d5655dd849ca8d4b2455063780488d31aeb86b6e14d025300c5acecacd5bc388a83794019495336e0350684160b429481bca1281a833a97130ea91a9690aa2a8aa288f373eb831e6f4f23c79ebc89235db8eebd9d3c9b93d373e83bce96a4112cb02819d68c6d8a932b2511a0c2bbe783d2f2da6f00ae699acf36ba3e7d9dde3d53488d4552d51222305443054550b406a316a32d93a3cf649154081a18f2e6c8618c79bd9c8f25d031ade8c3d935eae1d0dd4289544900c5ace8a64125ab068e583bf0c714ef9f2697dbd3e7c9ef7c5aaf51e5e52fb79f904f5f5f0753dbd3c5d97d3bf2743d0f253a58d0d4a9035154519370952288484591c6c0d50b98d40512311e3ceba2f9bb750e5758f367d199396bae971693085747968e8e371354530114b8ca76d71c9d8e1d0d64f3ade5b8a6f24519b76e23a9cc4dd84d50aeb0c75ede4d1ee7c5a3d9d7e7f43e875f07a93b52452a50d40682a89924d165c92688a0a9244a95cc884c61c260d0b9d8872dc56e33a539e7a072360ef9e8e910968c9a0e5cfb7020c959ca6fce731cc5ac06b3a8c9a10a96729b729088b857a6b927639d1d7d1e4d27d7d7cdec7b6e5d1768a0d2d50a24882264de43784681203784d44311555e6d8468d461a1a4193291998cca66e919552a80d6573cfa879f9f6e29cf9dc94cc0d559109ca49222034a888d997450b9d25accaa09d7a71d47afd7f2fb9f4b5cbb834b0c290c44e744304823167419689244aad452f1189111829060636993518b42ea349910cd4a865359839797af957198473368949116b40eb3a4728142b10c44c1a88aa356749a729aebc3aafd0f5787dd1aa93422a50c4922ad030954420b9929972b2132f9d12486a284621a86a265060c9ac908b8cf40e7cfaf13cde7efe733250481a2c2658681a210a62a41a4065262241a1d1a47a63a4bebf6f9bd269c326aab6729398d543083030868862272d48c551e758ad462d465632da03516552454990b52f33a6433b0e79eb93e7797d9e432305266d558b592141442550d65245498124a6333289a1d6193aef877b7e8f7f3f7871a8b594d421a126929962869035154101a79ed1acaf364614cb4a9a932c9954cc85a15aa219010b3a0e6685f1f87dfe3389bc99a6b50c673b80eb9ae7aa4a60ad19cef05aca52114b485514a874ca7b3dbf2fe84774d2a8a0c848282e892a52a952048264c5a53374c9cf591776745a2475855ca15482248ad21120d1999319de0f3787e97857cc41443bc7450b29ac45150a22c46b0c646a292286442a59ce8d249d3d7e3f4cbf4358dc69cd4d21224d29bca46b2361341b45952a3291a84e520b951b28d44e51a549111968491098cc8639f4e29cfc5dbcebc4d64a90d6503519902a2d8965cd512310b9d054ad9d259d64b4689935ebe3ed8ebb156a298aa461597462d65336a33be69d73a02d0a428d2bcd64c965648d39d1a852a8aa1a96682a1a885339e81e0f3fb3c670e3db9068ecb1f4dc6fe39eff35cf0cf43533750c674259dc73b7561d06756ccdad470b78a914b443d39ecf5fafcbea8eb6134e745665dd88e81a34e748e7595b2919d5bb1a94cec0493412987259629815248b59d02896b28d2b54491ab123872bcbe7fbfc87971db999f579fd535f57b63d1cbaf8bc7f57ca7cac7bf9eb3e3bd359e33dbc6ce19f466b8e9e89cb1d79d675999d6b02d8d65286980dd277f6fceed27bae32fa2e7a1e877393b8ce8d1398d806f306e246258019805339422c1d0e5d0d242943a1a6424d21204c0328dcce873ca3e3f5f35f9e7a79472f6f9fdb37f43b73d73ea71edcedf29bcc96eda71f2fd0cd78f1f43cc9f377a358cf2ed8ac9ae89e63a1a9cf3d39a14d430b9d8b964e9dbcfea3b7ab1b3a5917450a49432c68a512a91a8242a89cab83592e7bc9c7af3d9d590340ef1a1891d67646c336939db0e5c7bf9d7072c9e8b9e8c98231eaf0e9afb37cc31bfa9783d135bb4c5d4d45a9b4f27b3cecfcecf4e5738cef1a73e99cd9a4d9cfcfe9f3dce46dc1987428303d3968f7fa7e5f78f7be7e8bd758d0d945cc9a71a5624d52a35409236620d282a633d70a342d2350c84316b29b7926ac839c655f3dc630193ad82b59ce60ca56ba71e92fb7af93a637ead7929af774f9fdcf5be7d475e5733970efc6ce39de3533523ae78b0e75bce654c6de8737a0736dc73b59ad39a5e9d7ce9efdfce93e8e7c31f4b7f2f47d3dfcbee7bb5e6ec74b31ab2ad11149325b953974e4308c68524ab26acc69c82672bac73e674e58e274e461741268012812188d6b9749aebd31d669e811d5e4c75ce739af1b96a4059a73cec78c6b34946b3d07af2e89be6e467060a5522d668d6b9eacedc9c4ba887435d3b7064fa5d3e6faedece58759da09a32a56e19719d6289a244d04914b4423931c37e7479e30bbce4379122062188a1208759977ae5b97be8e99b76e5b975c8e03cf26b3a8ac39458c6a9a1256b3bc0bd75991c046515d42808532c9269c26b596d5cd26baf9d5fa7d7e5744fa7787d12f7df2d1b331d2c6903593342eaa2450914ac8727817179010448545515055142121544857a37e5b37d57945ebcf15cae5ae864824b2d0d49a3439872c5a0028285d394d14954530368150902a2d6657a728f77a3e57793e8dcd57b78f67aaf2ecd39d1a6da61d04585ce2f3c3c2e74648a22a8842484a210a8188481a8b0855555022508c23994b595608db9d22591b3a0340322e5128a635d31b17281b8e56f086744b24ab96cefe8f0f48f43d3a2f1f4ef406a4b59d19c6f0af2de0e3e7ede52c02d42508305504c1214e44a1242818c89215aacc81495448824490c26c848a118a21a49ca311a73a35ae6cbad63566da302193401a01a96d194fbb52eac49a9d18732eb28671ae679fcfe8f31ccd00210c5510c0d04e4460a4cb4431912844b598e863545a24c88ac25514a08a38d055150ac2282686a292de75148b6f9b5e871a4ce7649ccd4b93404e4913edeb1a9514ce88d658b201cf5cce3e6efe7325024510945203454094540c350919aaaa8112a8612a8212a8441a92a05ccb345089496b28d25aceaba61cc514bbd736cdeb1a4195c61c2ad23447d6eb8d0a4bbc91398872678f4e31c78f4e74084300c1511a8062a0442a8aa03518aaaa8aa068aa248d1aa31369548232e87355301a01a2a89946124d294095669cb1b71a358302cac684843ed899acd59b41086644e7e6f479d7863780a82a28892188a4120682a42a2ce833555485455a32eb0301b72a439568161290a1b51106651a2a52a55732310854d24e6834228ab0b2092fd9995105cc54458e99ae5e7f4f9cf3e3a730a82a0a42a128a129824210aa218c8855548848551246b326b350554c25210a151688aa26a4aaa525d5952ceb31a229b3a34516b2ac80ca7d75224d18371cb56cb2c72e1e9e478b9fa3898494a9210aa2a889098480982a2180aa92110a9090a41912196a8a21a42a1850d108c55152532922420902e51a9584a946ca7da2a56cc6ca0684931cfbe0f271f679cf29d79808520521504c4515021a098cda8cc9434555939654d6528d2e6d4848b6852ceb2532db371c94429b6cea4cba0b59a36e75a19d1065a21cadaceac935052a3565acb2fdbce8336833491ac8d94e951cf87a39a78f9fa792f0cef214154541221484c1304c151675909aa35dcf3dbcc596a264510116452142835504c142e8aaa68c2e89a288c8c954b422e7490c5496b29f6c2951c86f294895264b22e65c71efc63cfcbb72acc8129990a90188a188d0455048145351446aca8c0aeb1a473ac93956d651a9284260989a2286b06cccaa08945aca06b269c69751230caa49f70a533d031a730d9c9d3386a242da73c76e6793977f39910aa210aa2a8aa288a503405264d6742a1aa2a8921891a16a8aa1a92a967326acc6a05d99d20299916a8a1172a43408d4d2c9249a3ed3cacdea62a72a65db1cdd86759ab79931cba708e3c7a72a242a8240906824846210a6034108664aaa2a81a2d6634500c5446b7cf4742e9672c7a732f9ee99336b249569cb1a288632ad673b2068cb03ac34d55251f6a759614aaa8b59a910d1491a0e5c7bf9e5e1cbaf3acda00909804290aa24862290aa224cd15a222aaaa8aa18d0509512a959ae9cb476d72d1acf48e38ef8391db31cd40d40a0315549994c34549242e58fb4894cb99d19b49912441b58931c3b657c99f460f3e7b738c4951259d0121484c1544910d55114852034155550c310c06a098aa2e9cdaebae49d2a90b6d62dc60e91c73db9af3a2419b5d694c73e988ccd68cc1357da9642d0a6f31bb28152545554b9cef2639762cf2f1f6715e06f261a2181a0901901961905833a12ce8b4184690b45a1aa0692a94a684513440d2dbc68d384d380eb72aba1811cc4a925a3a89ae69814c5d05c34954bf760168140086c51acbaac92541106797a04f1f3f4725e26f05510c508300d152051484680a8a92a90694aaca2599092491a928ad16b091490d056ab324ad49ade354f34946d11db9d7292286bfffc40023100002020105000301010100000000000000010211101220304050033160214113ffda00080100000105022ff12fa0ba962fc1aea50bd57ccbd3bf15732f25965e16e7d45ef278bdebf12c79595d5af75ec585c2f17f867b561703c5e6ff0012b0b957e15ec5c4cbf36c5dc6b2970b18f6ae4b2f1659658b2b9ef098b96ba1f650915c6f6ae6b24cd4291a85213e83ca171ad8fb6f725c8f0c966c4c8cb0b95ed5c6bc3a2b93fd18c96d8b22c5e0bcdf96f13dc9917b170d628ae17b9ecb2cbf29e18d6e46a13ecd89e2cbd8d8bcc78686b2b64362e958d9a8b1335178b2c72350a4265965e6fc47b1a1a28a28d3628f32dccb351ac721b351a8d46a358e46a351626262794cbf158b15868a28adb7d16499265ecb2cbc5e6f166a148d66a350a42f0923495b2b0b7ae16c45966a2cb2521be959658a42991974d74961f15f032cbcea1c893ec41ff62cbc2f12b82b0b7b2b6318f96f8ac4c5314c4fc07d1adcd61e2c6fb699190a5d47e1b18d97de8322fd3bc3648931f7e2418bcf7b5921f6d6d47c6c5e8bcb6487dd594405e9b18fc0a2243c75c35978689f81640861e5742b7d7659f2783022f6578d5c9f20c7c143def9d1062ea3deb72e9b263e27d6445907ea32489780b1f1be35b6fa57d26327e1408fa6c6c9f32e9a2047a2bc290c6bc0445114574570a1f624868635948d2692bb2888ba4bc264864b3023025f19280e256121ae2ac50d6f4418b178b2fcfb25f52d9f17dc3ea89449c4d25619456ca1adb63de88b13c589e6bcbb2f0c64b67c7f7f1e24490d1a4d2683495878a1f22cc58a459788a2b81f55657331a243cfc4887f30c63c5144915fd5124b0878a1ae5422284bb4cbdeb92cb2cb24345147c685963c2c559a0d24c799111e5f1c05db788ed5c8c65978658cbfec19ac7f223fea6ac50b6cd0f2f179971c59098bb4fea88f12dec90f099796291a8b121704890f7c87c764662989f9165e1b24cbcd96379b1322cb132cb2cbcb2431ee6f99314853358e67fd053148b177af2c6c6c6f8909966a350a6291658c6c93c3dadee48a2b8acb2cb350a6298a65f1d742f2d963637c965e28acd96597b9ed4216687c090d6d45919117beb6be836363637cc84278b2f2c6cbd8def586f2f86f8232a232bec318d8d9797cd6265962161b1bd8df0d9f797d1b22e88c84f2b73e56363ea2ca2c6c6cbcbe1ff3aaf166a14c52e9b1b1b1f51098e46a350e45962c3df5dd4c8cc4f37cbfe31b1bebd965f22ead15c364644596589e1f0b1b1bc3eb3f4232148b2c4cbcadac6c6c63f656e7c29e526456d7963197ecae8e814051e16487dca1f82b2faac90fb89e1f808587ccb7318c7ed2daba08bdcc90ff0002b9ab7b18ff000af74765ee6363fc12cbdeb898c7d77d85d56fa4c7d77d07e83243efaf5d921fe598c7ef3ec32435f935b2486baabf04c631f9b47d745f598d121aef3e7ba1f12e93e46490d0d7e017558c6865766343e5af2ab162786343fcb58c7f8a7c0cbc51434487f8fbc508ac3192fc7d62859658d92f2e8657351585d963f328ac578cc6325e4ac58b34515d75cac631f9962db435c95cf5c1218d79a84f6d628a28a2b7b456cae7bcbc5798b17c3637bdb1f55e2863f46f1658d97d87c4d0d61fb0863c515d7632868ae9bf19f73fc631f84b62ec3dbfffc4002111000300010304030000000000000000000001115010203002122190406070ffda0008010211013f01f6a9098a5a42108420f7af9ab8660fa59dc27c2f06994b8a5add97ea74bfa3f9f47bffc4001e11000202020203000000000000000000000111005010201290306070ffda0008010111013f01fa70ea19ce55472e38e3a63b3cba3222f10a238516c0548f555145d81fffc40017100101010100000000000000000000000021b090a0ffda0008010000063f02931bbeecb9de3fff00ffc40027100002020202020203010101010100000000011011213141715161208191a1b1c130d1e1f0ffda0008010000013f21ba5e8410ccecc9bd8ff05097ecc9d96703792ee33afb3816e2f26f51b5a16ec4a3a63657a3a138ae47b2ac5e8ac9e685929ee560ab33f672e1156b23422b431b3b363a2cbfa3e8565e3c0ff473917b199a13c1cdd0f2763c2878162cda1ff8597470711d950ae30315e2123232a5b8de8a31a13657e62caa2c741a3b39b16ce325fe2305ae4a1e235f88e7072705798a71474706cea1d1432b81d08c46e86f192ea3e866685879381d7b858f23866fc981e07f8322f67259ff00a605ee8e3222e9e4e7231a9eca3fa28cc314668e21efb13f2e1d967635ecf712a2a2b38f870213c7b8dac1c0ca1ee7933f0d1c9c43f71a5b3985acc5962d470685fd9bfa3b1c578382857623a0dfe4bc090f28cd7b162327816c7e86362165f308c1a9581b116d0fd0f1b42ecd9a392a3913f8771e4ac0b781a13a11d0c62cc5fe45182f07fa60dc606cb873e8e0b5659d458a37b17b2e94702ae4d9e123a19decd0c6ecbf051ce4a31e217e8ee35c8a37b1284517f811783276731b4661e74364ecb8a28a2b83839f8e22fc60e4e0e62fc4278c1a8fa14bc0ce47171792ef4686350bc8c8ecccae0a1e049d4b9c705becbcd1791bcc37e0e3027796705783e87ac8f05d4b62c6c45cc25167f0bc0bd974646cc9cf93a45cd28abd45991b1e7468ecd8d782ca57a28ea33e274a2cbf8e218d9f7f0e9979c9e46363cdde44fc9d19c237166c76343d8f30d1ed1456b26528e043158f3178c1c2392b1ece45f938355e0c588ba9fd967628e8e0df91fe87bb17a1b13945e47e8f13a8dcd64e0747e47ba8abdcd9f91ba370ca8d47f4d1bb29ecc11c4324b26d0b6379d959363d532f5515cb1e76518ae8b1ac607ec48dac1b3b2b83ee28ff00f114b6711c6143a28b8c6e2e2842dc247181af03e28f42d6067259c1fd1fece0bf0216b06d1d886c7ea5fb2f27072707ab848fe9f651e87943a951e46cb977a1d8b63e04bc1b7424752bdc6b6332e4b18451a1d1bfc59a28d42cec7a2ed8bd8b0eb47d9664ca8af3145f632f07319b8a1fea16b064a3a3f83bbf8fa16c5914d8bdc7470547668549c3d0b060d146f46a1fa3b8560ac0f673a8a7986ca86f0722593b8377d1fa422dc1d98fc1fe95f622b151ae8af02476279ff47bc0d7d468cf11d9a85fd8ea1c598fa87ecb9bfc0eda28d6a3f422c4ce87f0ece2391c318ffa3f43c1963e4ae851a18db36f031a1fbc193617a51b66964cc2470723d0f451d213f10e049335a2e8da8f4cd6a16c7742c6e2ff00263935d9e2ca325cad8d15150e1a3738ac8bf458ff00a5f93bc8b782ad1ce0d8cbc1b862fc9d9bd96cfd1658f47d646ae2fc9fb9b86ce8687937a12d893f1913c091684697b8786363f963f21bce8d898bd9457e0d6a160dbdc7a67f21e0fd94862f7939c9bd9a6213f268ab37d1c15f98a862f51b8bf06e59628539143a8c43f25fe0f42c60b8acc5ba39c9c457b3a3068e2cea1ebd0d4192bc3831650a39c338147610d0762168f638a6bcb1174c6236334b63a1817f93c18ed04a7ec5899eccac68ace79878d0d1e0ac60c9d0de07bf25e68db1bf26036e2c85ff00c160f71628ecf260ab3c50b2f85165a382c6cc3150d781ef2762d952aa9a3a28bcc5c3781ec7a932b884cf4468e543d1c1a42307057a1fa325798508b23d851bc96417e4e4e3673e8b3a38c945b28ecf7146a4d0992f518f0751485629f350d4550988d6a1af2c7a959798b8ad42108bb8bf0528e8c1d9588c8bf23582bcd94fb12282acee195e47b11c4aa32e07a341ed979131b0f45bb131af6262f65982ce0b86eb88ff00c1b546c64de7457a39d1ae4e3d89aa1fa3a168ec78e06bf07250c3a134b658f53431f963dd451eca8fa16e17811434543d2f62dd171913391a3c95a321251fe0c6a3a8ac9a3633020cd066cdc71c886416f30b6339171654228e61efc0eca11e0484736e2e964571f51c162d8d9b5a391e8f484e1765e7269153c8b6328e22a2de63954338fb16b4346c63cbc0c781213f4266c598c89b3b393f260f4238f03d43484c1c98f073985c0cb2c45fe4ce0b637812c1c0fd421cd2f23583613742591c564a6766f45d8decbc899cc77c980de0b2ecd323fcc42fcb1766cc42f87678391e17af835e8e70270b3a84bffa38a28d45e7d1bd43d9ce0ac0ed08ea15eb086ad89e07816c70d1791685e30263c2e3b160be0e3e0ef4770fb2dc2398f62eb32bd1bf45d0de059624f61a3ecc50c6f0590562621090b38339108ac9a85291fd18e28588c8f46be150997508a1d1669d421bc7d8d9ec350788af27505a158ae094723781311bf50e1efe0ee2cda8bc43b6ca47e5e0417661a71b29f898fca0b50bf41658120989fb1e43c993a2ca3b3a86d8b592cd4773c8d0ede6291f63caf82a2e2c5fb8ece21b05e4d8f4588c99d1e822bd050295099c8fd1ae851c1d8cc4267b58a3cc36363d8e8354b6347136f62a17158b2e5c96c31a64f233096099e0cb91586f9627351b35a9632d0b67a8f65798b70fc21ec45451a3a2ccd1b34213ad96b9325816d89161a96ad911af0570765e72248d981fa145c6f676275c89f82cb132c6497a3c2cca625e365ad97050370bf037f885882a09a562928637916743d0998ac8cbf3377a18f4ab709a36b0766f427170943a7b84cff4a303f42fd986a1646f22aa56510cc0d71a1e0e848d8a8afb2b032da636c5770a5d727188421b3ec780c2c85ec345b8ef632fe1737e4bb65c725e617b1172e772814bd0865948b3054a45157cd88ac88ae446bd8de0dc367072560c0b3b17a18a1ac1884a87a1bc9e44b31450e45bc42435c8d595b1afc098acc5af718197e8fa28f545931e25c594e339c42382bc8e6c4262de0a28509f92c4fc949f255684f0a021a8606c605ac8aa348c7915a50f6703350ee7118a8ac460ee2e3884cf087b12b35a2caf22159b28a1ab2a87ac0d2e0c8ac96ec47d950d3b29d0b63cb07432e46b8ac1717938c09791b2e6f42e45966e117fb3ecbad09e64f1180b85b8b18c79d9c89c703f47a1fec7ea35174b259c1db8bcf917b159c158d942f02c08419d9c8914854238c0cd95f04a8e79a10e47acc3dc59951b0c62c2e1a3bf938e8a1fc1ff0062c7ecbc98b1e213765054cba12b8599dc6d88ee5ba330ca1af0258b793579354275dcaf62285b8d8d59d89d2ee16a38f8347ecaf225460bc64b3fa31886a0ca27f07033f870618ce4ea5319d9658e7d427c8e85ec4cfe17ec718b2745a96727e8b8b3668f2628a3ea7e8e0a6f81c5f83f26109decac42d8b3fe8f7d188a28f62f50d607d15811c6a2a196e84c6947881ae06cc5f8189f88671e84f108ac8e1ea2cc7c2c5516294e13185417a8b371c1a7e8b3d97e0d968b383b878463171799491c0fa2af1fb115f82bc727021dc7a4314246d4d08a94f25788b2dc5c76fc1c43b39383f864dc2622f25f93237f0d1d1a8d54ad0c5c5b50f93c90ecc97f8846f82df0347257887a28d68cea36763be0e76647bcfc1170863ef11d8a115fb162521e65fa8ac462531c0d0a1ea5950918af85c6a350914ea52f1f15a3617b851752b3151c9f6707066179388cd8b233ea3c9dc5894659c605fb95bbe219622ce6160a36f31664d731dc73635af03d7dc562dbb10d8e10fe1ee2bc1bc8b1142563f85798b3a8d0af50964b706e2e302d1f62cc6458788e059ee382ff0011ad1dc7bd9cc3435375085fa160e0acfb342f4668d08c958388711d1e6c62ce61c8d096342685c8f07634723fa3f11431c5c702b2a1451ecaf033457c16f309d1a604c9a0acd0bce0b6e0b2387a108f53d8871cc30e16f264e04d9a6ca3f450cab2b0524579128e8b85ea28a8a1952fc9a0be471b96558fd18164c2371450e3468d8e8e845422a8d6c50b762f6350a6b71b1ac62159f42d8da151eb719a10f47460f1e4fa28c086fc9d1d31666c424efb3d0d1c1f4252e2a2843af853633343c8c7631307a8833916cc1a8cf06105b1146c6560b4f6387ea3914659dc2f631ee8afd0ae2a3984bd9dc50bd4fb303138617f4471191634364791659b715e61457af83c5d0853887150de23d22a87ea54d0aa291850ce61ac47a97d5951c7c150a5432f16446f621645dc2311b2ee2ae5d163ca2b25799a29595c0a35a84fc1bd08ae47477f0657c2e9c763ccb3146012be3cc350e87f0b28b2b060e7e0dc51b9b139599342664d958b1605162df23d1b0cd21167a0df10b2e1ef43a71c977c09c599b39a34c4c4cc8b4d1459a28e7e1c4b194aa1dd1b0b685c8c651c8bd98b1e4dec6336310bb3fa707d9c0ca16ca8f050e2a1142f422d6687660b1457997651adc6f5147f825f82915a87fb2bc42797ecc32e10fd1678393828424751d1d08b71c63e170de46a318f669c799b76362dc7264d9ea0d886ecbf838dc2946c4b25096ed88ef46032859853781588ab428a8b32d1ecbf26446a3d1cc7a87eb459887884713ee1e871ad47f21eb0343122cac8d4646773d0d7c121e07a346e2e16c71f674370ece44210cb4621505171d18fc14a17a2b3650f43c8d0c791a37c1a2b183d1cc2cec4f222a8e0b9747262367dc76772989474798ac16a337a15489f92cd96ad0c31a8455c58ff0002a1ac14731c08e61f53f6791428ad95a13e0e04f279b62d9793060d8bdf0265a6318d8fb1e3813383987a2e17919fb30376b43660b2cb9e8b9d1c1c9b8c4fd156cee3416b89595916d97ac09c942d19b231521c156ee285ecaf451d0850495983b138e8b8642a09c131610b1bc084f56a3a875c8fc0cafc885816ca9c788b160b1be062f22cc2ca322f6362cb9bf82389af22c18e750c662e34d942f6207e03baba2c47a4790dd0909f65865af450943c052a8ba934ab1152ad97237a8585976f02628aa48ace0ff45e8b13c5b1981f05f88c789ec7e9c7227e463ce63c1632b239d096bc8e16c4e3583e8b498b6365a0c4c60d322a63a285b16f0343810f319723c4d4bf03a2ca1879131911a0b43d6068d0cb1e86e6e18426565aacfc8415b3240ff6722f46f671f6596364e04d966fe6859f5f0b4b6cbf02cffecec5fb3bc7c08a8b2e18cc59d945070acb68c0bd414174653342f22942287e28d635054d0d6448508e0a1ebe284250ac6fd991735161171c1fa2cba3150d6322398469c60eca8583ccf1b18590a11885ac88765c21ac4554f3b1e872e8cc964b7486564669b4e8c59b4511e864acca0b8104a90ff020c84b1a1a1066845084bc4a132bd95ac19b2fc9b4707f91d1b30358c0d4604ef25791c57a8ab19562350e84c6c7b1bf2539459c73b8ecece06acef51451a7a1b231916dfa18dc743e03ce2412d941ab362a0823e8ac0cdc264691b16d19c093918b62606b2792e16e853cecb2870327c9d45e4ece8c0a8d1c623452115143f5a3b316791b10ff0043860c250b63c9d9c0a38af819421c3aa830d792fc99078431872627a328929d58a90ab91685432c6ccd0a65c8f1b87a28cfc0a1a36211c1588c16234ec4097c8b789c437e4b16542aba174703306345e32747674606353457064bce067812f07659bdb391313b63f45f8187b70378319f886131383b40c7d8833cfc704724506fc0de2298133883d163a10d9986c7a3884a15cd6c4fea150c4c715a373da2cc589f2241aa8b2d597e0ec4cb4cb3070267e858c17f650d7c59c9459c6450b6542182c6c1ed9e6c4cbcc363788c45204a5219204988360f61821c6522878170e8a12b12c9628bf62ac6a8c4605b62782fd8996d48bb1a0cb2d14d644ae5b30cde0fe476589d0b23287843f670595e4ece4df0343666e36cbfd0c5d0d98467d859c0d9781171e7e0cbc8b32df6250455d89e3620e0761d50ddc68c7238cd8f5246e0c7916030e36cc8bf4726c536292c14e2cfa2d42633896742cee6ac48616c49b147ac22a3d45ec6f98da1b1fa1bc0d8de0f043ed5031c5d4753a9e62a325026949c8c6fc88a1ec76c436601b1594702d9632b13fc162c1b865a1b8da51c0a1634c6cd6fe08457b132c1e40b912c09646f05f83a3b1619a298fe2b0378d8df137478b8d063d90b0dfb2cd06362b2df1f0e0e65509e4b15c1692314641bf6725c0db842d1a142e2085516360ec51d8eca12b160bcd9dc685ee2c70bc25ac96725f8659b17e711e8b2f1063f6742d6445e3508b19cc3d2dc4f7671b1b2f03391a2e146cf3464bc4f314674248ae4a1a4a31726fcce8f53434109d22ed16d28e451b9450f7828e8bf31e079d0f505bd8996989d1ee12fb13c17f82c5bf031bad1b1ea17885ecab8e4c1d8f038a2e18714319bf8d4a19a8f03187d9f9059e47ee30791693d21fa2859d9fc3a10f0c1c8e848432f381fb188fe9db848cd0f42f4a345422bce06533459c09b1e9ecf217f22bb39f42b6e28637e2363a39857a2b031be43995c2f3c8d8d9d0e2f3f045b3673437636725e06ce842782c3f61b0dfb86c5b2fc0dd9985ecb11e4cb1bcc2316370ec65c5b3b8d46a685e43142cfa1dd1ce7f059d9a3f021e610d1a78150409f985f81165632212ce47f81e06a4608db1a2ccfc6e789e8f1188e8b8f49d7cb2cb87a36e2ed1b5b138bfc45c57935162399d6da84bc0bd08581e51fc1a654e63ecd2131babcc55a3132966228adc3c1f63b1a8653a81b18d41bd0e32770fc998f5f07b1ba8d9d15816e1ea37ff0e2cb8b1e61a342542421e87af8690b73670334292cd9a306f828f250d64d46c62114f3f658f45cc1e51a1685b87c086e2f487f630f53b8b8b8e8c9d464ee5b8ccd9befe4cbcc39e713c9916e381e7a11c1f63c896465bb3466fe180b7c427e85ecd8c6706b466a158f592846f5a2d715054a2c656c6ad1ec6b8838771a3fc87f0f651d966be1fc15954c7a1ec576384519515f0e67b3d42bb3b865f82866639d4b8d885709dcd6b43425c31e0e707077a39c22a5604c6fe5791eb639da2ccfe0b346c4e19b393d9a866be2f06c7a2fe1a28e479935ff000f6e16c7af8711f72b50f50a160af1a383d0da8628f686adee1f11b1e0b96722c990d21991ea34343583f50e1bc15f8f8371b312e39f831fc51627918d0c78f9271fc2ebb9708d887428de38351ce0618f0e13f0332f1b1ec6a1ebd8f835a1bad0c48e0e4bce4ad958c21abd991c458d8d8c37e20c7b2f48b421e867a1fb43965e61bf0731850cc15f73d7cba391a399af033b8dc767f0d9c88ebe4ff03fe162c94329426cba7f47b1d143f4319bacd0964e05e382e15347a36843c191f66d1a98a857b8a971ccbd47e47b8a8d46e1eb10ce8ebe1a9e7e0b223f660471f1e44bc4731887c45533084e9e0e0651f627097b167256703d0c74561156793235ece045bb837e0bc8f432f0355c4e36cd1c7c3117e27623033a9ee196c7effe1d8d4596338f8711ce068a85e67e8dfc5550fc98bf4745d318fd8842fe0d92e9730c5d88ee33e8bc0945e6be1bd1f433a63f4741cf52cb1971a868bb19593b3508d45c59b3e8d22be35f1e84d5646b1f0dc2d8fd1d1b832e74aa16f455a1464c32fd19a85e85e8c17e0dc171d16879459fd1aec7dca8ecac1a18f82e3717ecbf388c9d4f1167f0581e8d543676767d97478197f3cdf654e7ec478132c3398cb2cca8b7c4bf828cb10a342382f065c2d45d19623ec5dd7c1fe8b975a2bf45085ef431e7ee3fb41af63373c1c147464af31598a32543664abf8a2994228443f82cc3d15098cc451d7c1767d1c64fe88ac0a57566468cce4d68e848638d1466b02cc5e4ecd899770bc7033d1a430388c9913f31a2e196b8d17f0c589f10c7896fe09d4622fe3ab10ddac471171835ee399599e4c42b9bfc8bd1b5818bf6313573791fb2cb9bc0aa8a851a459628a51f58346b7a8d42c7c5ec5167516771c0c66cc46b71b3d9c529e311a8c1c0e313d9c0c5d4d991fb28c72359c1d0a6bc0b7c8d88ded9a1f8b305fb366d59592cb1185e63c8878d1c0f6732d60d04a4601e8b39c8e19c8f472725c727627f0e8cb1ac21f832713a2b1151a8b3f11d1535f1d99363143d4711c189e4c97e67a85fa9ca53fb2e84e8a342b28e9472260e066fa926b07264e228ea3a97987a17b8a3a29c6c763f4773b9c946e383637e0d999af708a388d4768e85e8cb4742d8d15e04514750d5a567f0a35a119fc8e2ebece65e8d6cded96745b13a18964d28d9e91a8962e0da388d6a3143b87d60b33668fec21cb8a331f98e8f272771b179388ff234211588b14276c79647b8b7818a16f6284a1c742bb3e8ed371828508562fc1d1a3917b18b6557458960d2a42f881226bc15e62a3985767073179ccbd7c91af8f10b626214d7a3ec67d7c3816cf6206b71ce450fdc284f106f231c60b3421645ecd8d63e1b7846f084b43476791bae0cb670668bce4562fd0d088c91601ee5c752a388ececea343dcf0718968af03f46c6fe17987b28ba1b1da94e2cd23fc84e87638b2c473e0ece31cb1b3810d8f8b3d887939f877b160e6ccf43ce58c6bc1452f23c158d885b2fc978825e8d428e1c172ffe15f2e372ff000230e166f6a699dc5798654771b7928515e4f0791ea3d15651d89182b343d8bc9c7b2b1f062d88a8af02fd9ec4b22af06f93894514c493c95ea1c0f010f67026224388ac95718391b34560ecb54707228650f70e1e0e84eb9851b16a10b637181f71c9b8c72707a12be4ade4515e3470737c0b45606fc08e4b8e85b1b1a393db8a3057e0cc7068c8df6374f02dc5636711f63de86ac48b43b161791abbf8d097887ebe1a9e8b13a3250c7b2a371ee2e3b3a392a6851cc53871570bd8e391e86e2ef318e6368ea3f928decdf9108be0582bce47ea0d142d188ba45e3b18c0c9f48d567b181ef06cc0f3a85b1fc59c965d43c952ce214560f51e4458ff00a7a632e568508b85e1966ce0431e8b3b2bc4f0762e859ca3e8ee3268f069886e38f65363fd9bcc606fc0dd8996f06c6c27a187469061e0ecb373a28e4e44e72c742f659658baccf7191cdd0a51fd2cc17c45fd4e5091c64b2cca2f058a5c3431b9b2cbf2765e731bf50a1316cbf07b1bc2a86f067424d9ec51c98c686ec4f03907e8dcf068ecaf226771431a122a34514691438e0c38f03dfc31b865147ecdf22c09150474319b2a57f45b2ce46725595ecaf307e11b4763325e06f8302c895ea698c7b8af62d0c74560637e0bf03d0f83434fccd798c5efe0ce0c1d98b9c1cc3c9e8f43c0f45183a2fcfc6bc4dd6843f6508b131660c35fb1d18f1f05d89d963f43331c6470966508ce87e4db287ac1591a2b2542f709e8b859f514686868683fd1af677163b371cfa38e6370a5be5450cd4319e07d1c462ea3b84c43f476699bd9c5a964418da1e861e10ac47259c60b8b1e87458fd8f12cee350aa3d87a84e8d2c17885835884fdc7b104c15348e0659690bc1658a98bc999432cff00616bd8a2f31c0b3a3451fd8b6a3a9e8636311fb84f02106c9b8653e11a1f4158c097ab3a3839351b3b2a34c946f2a2a8b2e36f072644acd6c657816563546858f6560b327d42ed9b381ac1433e87735cc687bb33c1a3a9ac8a1ac1a363c0f3146468d32f0711d4711470234255c945886ce4622d9cd992bcc12fc0907fd94c8c3f2145605bd895959300e88a16f651b091bec45fe85a1b17f0c0bac98657e23c549bc0d36221af230c637e21fa8a771f4723d96336659d385fa8a97379f5f05853799f6cff004b8af836456e5cec5437ecc4b1a64c181fa3fd9484b064d8cc7e84fc88ea139b17a17916713656302a50947a0d723ec2793d07b28e0a1fe062a8e4e6194a68e8a95818a8747886359287ebe1435e4e656c68456217842d644fc426c50e03382e0d942ae8ed09647543d0c6514acc1c95b2b0515f91781abd0ab42d46542c6578c886fc8dd8dbe0da1a559661330f6fc4b23f07259ee35142c1b168514559c952b66047928dbf85142d0bd15e4b8798a657817bf026718f25fb3d4707dd1fc84b02a308afc0a52b237bcc20d3c95e0784514210de447381ab3a33464d9686fc08b7f6659e2584636e60744560687c5337ac1581ddce78382f11479329454b93b37a351cc7b9cbd1fc85ac51a17c14ab131722f266fc17f81f81c76228f625e4af658b62de4424fecf714e2dec792e8e61ad0ffd13cb4b1421b6257b10d6e50f66ce60b462215432c52c658ce450c6e8c527e6151b1c5798769471091cd1a1ea350e19583486bcc78363d2f65e4d1782b1916dae1095a6cd9e8a2921651c89d60bf432ae16eb816a381645e0755593ffda000c0300000111021100001013ab9a3a03a2d32d821a63be4fa3823924be58e9caa2439a2960fa163a179775c76388b219e88e33a6a28be082abf4f8c563dbdc668a8a47e4bf21de243af3aff635322e8228ad323863f74a728b3c37bf7554ed77f83ed80cdfcba943fb9cbbce33e3bb41aab8aaaae8a692cbb0f9141fc7e6bd60c3722303ba0f0b64827cb0d2d73fd57a66a64ae2aa7b20b58ee7c1fc1ec0ed98f625b5ea211bceca23a22305621baeaebc8b161a221252adb28b2abf085b710d9b4b3fb0a66aed0bab8094b18c707ae48b8baa8a9e6f8e7ac68a480ab78ab8c55c31510e2a82b63a404b6de2af99d808238eaba5ca3d21a1326e80b0a9932d34db763dd338b5df267c9a5ef0cea8f08288e0baf105a62399e2e0e5a8138fa3ec68bbea388a3f53f0faa4aa29efbe2a240abae19ed3cf28dbc2348b693cc3928e7b3e8f8562ff00caa0e799eeaee36f92dbe5202a2cf3bb6683d08b3c8a46b82610f61db91237f89ae928bfcf218af0099a58e2939eebdfadaa9a622d08e146a883eb5f3b6cb719e193ca60ae7e28728962a2cae9868860be93288a8aab9841f3ce8252ae2bebab1fe7ce49bcbf3d3ce6f06bba0b648e1af54e68e48a08bace6d7e1165aedaeee5ab2e6f8ed92dbf448f81510176da20928e20c2dbe88c2b24b30fba26426f9e5764be5b23877aa6b60c29abc8cf3a3b6ea63aca8ad32282632644364b9ec1e2923b668708339e3eb7aa2de7ba1bca03d9eeb618a2d29b73b3a6155e39bbcdf32cbea8602fff00b6e39fec92ce32d20e9154637b9e98efc708e0eadafece09a9899d808eaaff006e9a2ebaeb61da2aff00b633075ac94003e8239218b3637eedde78a0b6bc6f82aa39aa982bc7dd27df8d7bf60a6fca20d6615f2ffecc29906f3ffe89e09a2bca106b7f207d2e24f0fba31e3ca94d851ea401b93b2bdec9e734a2aa7fe8238f4be6a58ff9f7dcc498da6d9e3969f6598e3cf80697c9ec9a6205348aceab2f3f3495a9ac8f8ccb34c669f8d5bac8e9c20d60a789689dbcdd4a39e3a072a6dbdcfbfea14abfb6dc67a337f7ba1ed08810ab4e6a9abea452b024fa75613f17556ba436a61b07f53fda9c85dd79385337ccfbd318a3f75ebac5496763296218869369c3c955e61be323ee4546f7ae9dbdbeed7bdaba29c67b4c8c98b5c52b48b83d23b244c94f18fbcbfea2aaa22ef96faae11a527a2c74af3e4a5a46e486deb5ae3ca11a82c636fb6acad92f1b31fe374e58df4ef1ce69f3d3eca0fbabeff62ae63fe6a988a0edb28820b67bee9ac92abe1bb8be6cfee39cb4d7aa4daf5ee27bea647bdbca0c93a9a0c309be6ae1b2282e960b2b8e3fff00c3cef1cbb96bcc8779a749fefe0ac910c9a502896caaf8adaaa88bd60866ab6db78ebd16afdacc874f79efe124ba52ed16a9a796ea67bec1ef82a82caa29e582deed8a5abfd10c21cfab25c795452c12ae070dadb2fa6dbef9af8e8a20be0b09da93e5baaa3cfac9d459e6ef5f300694670d2aa8698e18619ef9afba29e9867ee3a78f85facb7587ecdecb3e22e7d14a24d2057d3bef999a2c96bbe7beeb6eae686f9e4925a2e875eabff6df5cafb2b72cb8300fa62969aa6b20b36926ae5befbedd659eebe7eb6e7ef2dd31cf792aeba3842443a19638728f9debba5aaaa634a0ceee24df0aa8fe5c7be554389fef20ee3a0e3c72637a68efa609ae86ebedb65827bf4eebdb3d7fcae02d82a2f182bc74e7604901ac31b2506686692b9e1beb8668e7c6ac78aace36fbddfdea8ebef76b35a3790ba622ca08116ef7bbf2cec92ae0faee8e7c64b67c6fff00d9bfeaaba3fb3f2ff3b2d71409c604547393c822821a2dca4aebbaa925ae3934ba3bef9e7a83829aee1a730020d07e66f74eb2fb6eac396f8aba269ac9a2eebefcfb1cb8ab8eda650f3beb86ca4444c04ca14bdb59efa6f6e02ec86baa09e6b2fb21a49df2ef38ff00b94d299e570b0845db92f7402e6a6be218289379e7d6d8ff008afd72a2386335d9afa3af22de70481800830671b31efbe2b688a3b6dbee8388b7a67babd6291cdbf831eaeb6e9affc4001e11000201050101010000000000000000000111001020303140215071ffda0008010211013f107476fb7bb9d5d0c191dce79c861d4172a182cf2e5f1d66561df088445158ac51611815cb08cae87bc987757478863551a83e43f8cb3283a0f11df68cc7a0601c860e057be5541c9af84e18332e75f21732e55c8f10cc75f05f2ba3b164304d6148445155515c3b37828348d7028238ea683ca2cd57dc1ab48f22a244ae312e51681106a0d0d17b0c57563220a2bc58ad067843e2970ee1866fd84c3edaae1d21a82048e131d04bb451d82860e611c1042612284c7f055a12971e6173c2be03a981d05aa0d5aa2879d506a0aa8be119e54c54f22ed36abfdc25f115476bcca0fa2aa3561f822ab9d61568c6077a8b2abdf43f842d10d1c781fcc599e706af2f97f9cffb3cea3af962f571115a317fffc4001e11000202020301010000000000000000000111001020302131405041ffda0008010111013f10c5dbf1ba7bc09cd73661ea0f2bc051c3be7330f58383bf21820cb9c4529d7115bf18869d1a10667071e92ac6f5462c87302f9c79d87216e2a0207429d8860d0f10e1a31c1808f110da8a1cbae20ae7054343c166ac52c9e43210d0a13f7254b50b54a2c5528b1593c1e906d6d78384c0e131c7828b1546c0b0228b4aa56441a9691a16c36f60c45aa56a86fe35aa14b354fc621c418296a76277ce43c460eb315c45b979d64f07e17f05571a56d1dfa8ad0370be34bd4a8f551ca38e3a71c71c071738b764c1a4606ce23dd0ac54e034b781a04180ea738187c60e03424a80fe4e10180ea3de3cd08b118bb514e2a916a84163152d42118bc0e4e0a22821168ee8414c802d462c5e1d71bd436a0500e01b152b5150c46c22130c0201140323a0c10e9306c57808b6983718228bd060b788cdd0f80e3c560bc0be02cd790bc0c1a1c16fc6350ee38e9fc6e06c1f29d8c8fa0c1460c9db1e01e03b07b160f40c9c307c454e38e953f88e3b7adf99e234ba7ec10e7d71420ef11a5ed7a1e971c306a763708772cd790c1aff00ffc4002610010002030002020301010101010100000100112131415161718191a1c1b110d1e1f0f1ffda0008010000013f10c03e84b8c971df2cff0020c278e4a49c5188e1cbbcc3470a804b34fdcdaeb59b8078eb1105e1a9775b3cf511a372dd9121641960c6658e4e42d845f0daca6e24b7359cc10acc4cc2a86db9a1e20c16dd106f38ccbbc559a9405e8c54a100df6586ff0029503da6a2df68857d1ec20af7c866981e9285dab861a317989dbf1046dd8a7931b9659501c667ff00c23a5fca52a5d9c818d5439c33c0540aad111cdf996c982ed391378ccb60417a8960fb659c1f172c174f1f3375b403176b9664878d7982f062c57e25a2310fdc1ed5ea65e0f1e61a173d88fc2650967490d13037962e2ff296c99f12da34ec80d04a25859e623617e20a2dec755ac4168cb408fb65a8adee374517e496b5a4b0359be4da078c92ad1294cddca0de6df3074a5788d33089bdc6ab5997a273629ea14f01e3b0c6fea17566e59bc7b978efccafe914e6b06a1ec13b30316f6616d3e552f038cfe62b9862826bcfb9e46288382c06980a25d830bbb1a9549765be116e811bdcc8a31c7b8b9ab87e5045a6790b55ebc449c5c6f3ec98c8dc650f8819457da0569d85bdb92fd61c4741a26f6e616d59ee5d9d432bcc3282669ff3c9286b1173f71a1473d8061d934c6a50cb0bcb5f12f8666171288bfa82f364af34fecdbbf10b0a68f30d9b11074c5c14cfd3930eefd41a2e5aa8f9dbcacb4cddc76b667912c63f880b76b02b0d7a8bc96a829a1e41585a6356ad5ca58032af04186db1ecdb2f22556477c94e5c0b5d8881cb1285a7e2506d8d4b27732b8fca64b65fa8dbac4f462a075f12cf52203062f2c52fcdcd197e7c4a448bed806877b60ac97c220e8878ddc3c6ae09c66235706ee8f264dd95d41359cc0a71aecc8cc0cdde088b348dba889f1a252fa83573bb62a977c9996b3d8255fb5eee0472c4508b72cc238b6a0262db74ca3665873297ee23816bdcba52fee38797b2f0573c217642db85f56fc4fc9c8b58a33e65d197c723764697b157365bd946cb5296dbccb69d4a0e199eccca96cfea652b78cc54d977005b7cc43377642c157fd4bb1d0ff65b9bec55c0e0d470b4dfcc0b4e711c2ee704099ec18c65e62340692d40b9d3b13e0fec0033ed076ea631ee50ab30765a9e13041798ab68bc5ca1aa99339f10c326a2b4372ab466a24d7dcbdb6c412bbe12f9e390cfb8001bfe44e3550239c63f312635733ae171016364a7b1fe42a96fc4ad06ae6e896114b41a98dbc837e0540ac98f328d8592c03fc97c344aaf6751b2831704bb63fb014a60345cf06202cca4ac36c76594ad56730416a662882a0bf68836cba1beea0f5b9d05a7cc1044ab12f40aa940d69dcba4dcb187b01d993599b8b79229b0d542ed8aa625dd2f533077059ac45c1c718039650c5c7790b4f3057349515190fcc4260d9af128055fa977a33e25df57e22d6df52cb550f7cc40f036cc19857b8d71142bddca05f87502cd6c82429589401b7dcc68bf12c889b661ad3dcf7de9127878882f87883c0af100b5c01e5ccf1c902f907b96b187fd80ec724d066e7545ad44de9a947ac3c888c03fecaa47f080aa88d06486cab0e4bd930f250edc789fb919a5d40aba5b788879a8d6109916e60ab0d128e8d9966f4d900c29a37032bd4aa1bfa9802b729565f7c4459661cd50cc3022d55e6638cca4caa88267128384bbf311a6c41f2bf3054102e5ab7b33e8bfe4b34cb2901fa99347dee79cbaf846ee5aeb72c00997b382d4c15f8825d15985af3fc985ae18840bbf3325e189e8c79839ae22139851cb102e71860b0562e582e33860d8016cb5869b8e694a586192aacefc4a597dca58b2a5e90b22d82537fa9e018dc5b083fe432655510d2af12c3c989a02a9944e7ea01188a79abeca6aac03cf67c99e7081d3880bb57fc07e3b14794401a0bf32d7fd4b38913f2e42cd45b0d65dcc966565d0ff00200ab51c835792016dc512af547f653ddf61d3730988d075d94587e2160b25d8983425e62e94cb014e6e5a6386e5ec4a343e65b4ff00932169fd9f6be4b4ae34c45df25dbc096fff00223baa98a17710c5f4c43c72789869ab62e2fbab8abe20afd41ce234d6e1edcf67eb28ac45bfe279cfe65d6731bac9445003033673e65871515987110d398e8864efc4b28a7c106faf89780d276799f2c2da658e614eb01cde1e4a16aa18ba0f4ca40a6db952d841141c942fdcb3c0f11d02cb83b1324440b54c1697062decb2ed2ae0451b94abe6643097f0760dabbf51396bb653b164419ea534ad76551173964bf110182a6c17f32efcd7ea6f710f2fb788a7e4d415c8c9a6256f399c2eea6f3cc4b1e653c7f111dba6a52c1698afd3acb0c3528abbbe24bed8fa83e1a96bc6bac7212c51cee01566c75ea60cdcb3799842ef92a96a03081806bb11e9f1056957ee40b7d946ae9052b14432e2abdcb6566b929758a85b51d03438861ce4f8882a9439d89642caccbbaddc0f8bf530de165565f8980d4c69364ac143e510c0834c1885f1c8a8dd403a59b5c540026cd4003cf61ccd7f658542b91772f0ddcf4086265e4adcaaf7ea643b1d1321460450ece16dc2287cb380ddc5496fa800a673282b544c07f338fb46851c6e5d670b9c5aefe620ed2f25ac55afd22089ab8a22aebcc2b78cf9856c3f101dae183acca391aa82f164055d842997658fc4a6bdd40a6cc86269ba964ce3fb30870293239ccbfb226d1ee0614647480727a8293fd979130e54342f72842ad1a96df5b26403c865e1119b9e2660a9e601c4a27b35036b86610ecadc6b988103f688556eb30c67d95815808a22a52e144808f9622d9b3647023f28149a6350079cf66bd0980b58d45d61250a57e600ad6e74765d8152aa9757d9734666cacff20d540fb4395b8e4b4157038e42eca9fa400c3730e931d311c689e4a9e304cfff00ae65657fc94dc59712d407e60b45fc4455edf130a4df89863decf27cccb4c43cbc970dabb2a97d311b4d129963e2680fccd85e4a5e7894451579cbd4788fb62644337053174b32acbe6361843db1020dbdc4c6b8605c0989a78cabc3f32b0c5195c4aa6fe08a81a35e1168c315e0afecf4b9606f0cbb4f0db04d8d8fdca2cb4477631b76897ce404b737c81777340364be9f71478263912b0957a834eee1e18f729bfca3a6dc4c7c2b32b01ecd10eca717e2a221a7d45c2ae5856c9757ee5a9a6042eff902983e61514eb897a5255806999e7db3462afb7103763552eff531b386e0b485d4cdaf2e4b15c9e45416945f99b5a404cb8bcf200add46dc3c44b70e4be0b4d44d63240a15a59299b68760dbbf6329ddf1962615369695673e529129b72638dba63e2762d4a1639e32cd05ca76fa4c87da0985225f856a0d9bff00d40dae19aa88f2d2a93cf995b7ee201c274cf2655a5ccee6252364b198c98f13556ac6e78accb579867bf50e1d4f0e752ef057a833df88db7f44bbdcc4f41f0f11012b12db3ee193494af896e9c220c1cecc264b616909ecae9ae473dccaf72d7cbd40d3c7257825655f70630ce17a8ab5a83ae2e615e3a891c2fdcb2cb9f1321e7b2c4608ddbc5c1466ee7c4b78fb8319ab95325d6a2a8825384b02075f4799c255188855c6ad23ee14d6fc41869a9a5ca0ec6fb1c6b712f51506225e630b4a82a959220c38949c3d460b083a891de619a25fa94178c432ff005114b8d51461dc5791cf5ae4ce4aae5a6d7ea2a06324a109bd4cd4793265f329dbf2ccb5b6792916b945c58df6515cca18351579ec4b2b72aabfc95db503641534973222bb85331c98a9960fb97e268cda4af0958ee262f78e12d0d988ba3e04a0166279d53a4a5828a75f2f10dac98d0bdf8942a9029534cc000a974b0d4339392dd82da3ede25a8f5c96fb2664ab4d4b5dc65dfb851a346d82c446fd1966c2524ab32cf45ccec3e5e25361bafd4c55328aa33db2af4454d46e518b0addcb30997cf23a5b4a42ace54fe2670ec306dd311a2d31832cc95ce4cace4ce07da197d7602ab983328b68f12cbb5fb800dbdcc7b7f27a9a8ab6ab852937e66053b6a5382d45528fb80d88a6047a85e8cbe6550255765558e56aa05555547ad7dcbbe33caa9ddc2e3c3d882a565b4826c60881c9b7c66607abb20392c02ae90323e93d9f885379ea559775532772ef3bf501874c47e515b68c5665b93aa87ce2223e752cfc7658e7c311e6140a7329d4fb9434bfc97638ec182aafb728c6eff50d32db72e969c7883a3b2656c753c9a650707a4ba1d094542e36d152fedf128a4d7498d4a05fd469c97110675b23ab31ebccc3793c95e58ec01f31ab6a61a36ee6b6c7625eaabb5052abcb12fbafb885628f31e345fe61968b948539f33c19666b4fd4393cc07cdc2adf825990ef72838a98c673f1155d522d6724060626e00c7589719bfd4414aa8a0ad6b511ab6b115b917e67cd7a255ffe4a56a94325a5d4a255c57b96ac3535739f312e2ee585748aa8e4a02d8b4a7494726a7030d4786ffe04d36c29db75286e9cc4a7e8853fd208488a3863b053ca68758cb1c942f3e665f26a5e18aa83760c7998559f3126193056464e414335001f7dc482efd4555c46adeca7ca2f051b4a272bc8ab91bd457a469b9b51918379315c9431416ac4b5863c33283fc225a52df6525db517cb0a64049a554f27208e5f528f8c445532116df3e20a032ea818531286d5ae405afea57c3ee21e3fc8262b504d607589c16c6d54532d6c6bb144b7b300c63ccb3cddca06225b1b88562e5791be93235882b1a3529a089fb96f8d4beaf51dd64392d497875ea39016c82f4aa62b17e6345032cbd07cc58ecd0bb7df8826859d94a5ca0c1ac4b0d618d8f0985818e41a969894055acc54b72f1328b53ccccd08cc82f1ac896b8527439e2591ceb906dbc2bb2ad39db36d6201699162bcd5c31bcaaf46234a593c3af66367128d538888fa8ceb73b888610075b85ab47fd8e9ebc4cbf314e4b30e08aaebf307bd65bdf304bf64177552bc0b96ae5bfe42c9b0caf8a9560ee226eaf9053442a8bace3dca44a71d89736612bb4f182ee494328f10056b703d8aae2f88d45811434900ac09dccac233154ae578451ff1288bfa8e0f5171a216b4675050631e679015d2782fc6e3b9317b8140d76534dc02f2c9b94177f5066f311876e4dc9918d5c34cce8fccb4c016f485f44f73c85c1957da0ac25a91324a390d540df1e452dea6d5f898575f88e2e8f70755c40ce3c4481e5301f04bcadb941d625b4483bce3fb05f389a0dafb179c392ef97e1280718d447cb92f0f3d8a5000ec4be1032a550be0f131fe92a2e2cb6b99752e2ad3e61c3660702d01318843e844116b04bb46609fac70ff00225c7737adc1aa34c53ffb15fcc3c32e082ac2fb2ba163fa9d3513a3d4b59e792b57b815fd4c159571be3702b85541419996d9a6803fd8741a9699f513679459034cd1bc97a949a3ea69826006278199f57b8039164a6010dc515d84455e331a000d2654f9258d99adcaa47dea25de467732e1fcca0836c2b665994f608366f1ee7801c42551bf12d43f52c14f897d2fdd4b96dffec5f376c1143157cf20abcf60a1572c7163fc8bd15adc4d944221ec5b56d5762b765c127de205dae182800bedc13b6ff935a2fa8a18d5cd9ffe300a7aed8581ece82a0af0c65ce7eb50d08f3529b42d72396625abdc4014cf7dc3378cdc73e4cc5b78c411a1c9e1345c039150ebb041537e7d4c8539892b695e7f101d941125671129ad4c95ae6347650094895ccc5b2aa9dc4f2e4cb0990f98e4dcba0a6f4cb04bec00db5ea668a2e5983cd4c9b2f1307a1a82fc6e0561b8a64f5b805576569e20c59cdca606a03d5df483405b7ea21b6b3a85a70f306fd4288eea5346aa5de6e64d3f511a758862ed8bc4a117f504cedeb90a5dd7c32c6e967ea075618c415b414f6e44b58cc47216f888bba1eca4a3c25ac367cc0cac7c4b017cc776a80c35042ed6215f4c92d1e1532555bd8869677d4ccc52b29a5ba96f94dd51000869dc028f8260750bcafdcc0f2c900f4b865790db3e1e625882cd6a6eb353054c7c92f46a6a0d8f08a16f998389603af7338dcbbda05996551d42406d35ea2d73505def619b3c8007558981a7da063d4d8e0ea1bbaea7e1fd9430ee61ff00e406e8ae7987c404598f1981634cde22594e42ac30509f0974be392fc1f3379aaa259fd406c5ab9028b943303d43c58fcc4301ae279239942e06e2de4b103cb32d3192e05d6860f70bd52975cdc176eb174a6228116925ef59975489f38b8b6608983ee56e50d3b72a2f8263b9aa8ae8c1b982ae41d6d98a0c0df999298f5ba7cc2c1d62e997c41b3880e2ee615fa4ce2d6199ac36cf8331f45798a887100b3d263415328b71cf3013266e0a1daff906b02e5de5df88ea9b658abb74cb5cdd54b5c55e6234abd4bf08ed57705fe66c68198379658223982cdb378990bf68391465134541b7a8cab905b4de224a473e58da1bcca5db0309304792cc6261b2ca9855188d92129c2b7103999b5d4f3533df13c9c95792a9bb9b615f3532e38867788d9f5e660c5c1e692618f3d96a1ce4cb23436ea00fb221ccff00226ad312f7bb351719ac6e183b1b3239f10234cf0b710716fb8a3058f22d1f9314acd547e253897d10b614dca3b5ff00262c434c7dccc831d6501f295ec4b1b33e65b2886cf8966ae168eb09c2d46ab0ea50a4961e06e6094bb18b963ff51a68aafec064826dd1a80556e0055cce2a67b3c04cbb72722cdf2099306ee2957a1fdc4525a6b73c046d19561e5ca2ae5d1e6095b2a2ac5fd42c19b7e67a1bf71d4455ec33a7e659b4c20ebe66933ea129681c4b324a4675154c078f710e09678ff67b6b97341290c46cf84557b9b7b85376ff008bf3b9c1a9e0cc7cd38c4b52501fb95e5b954089420dd5ca3c57f60586f5c965b0606a5364a1c36cba1d33165a719f99b75bcc2b52fa6962caeeee50ed7b963acfcc2c3b31be4e2cba6658dd61f30c62b936c3c2fea50866aa5094df65549c217b6fb0da4373899887e04158da794ecb705a28b5bfe4a29abb7505564cccb9c3df730d0c54d3caf2cf6f8441e732c065619fa88f1f136cefb03a941ad40bb3b16f65e3c40191cf89bc97731a666ab101351beeccaae69842f28034e66455b88b78608cdbcfa8376888b2f60c6f6625316a7f612b9fdcf33113ab2eec89d35a8584dee43dddb154c31128e5fc81e52dc90dc5b9cc10c9f7047bd864ab379e1076e45c33f71adbae46ab27c4a1a8ab19c92cab731655a8be1752eb2d7c4b4aa65d40379110745d401c144b322ee50ad019605179221b4fc4170dcc1cf89742d47ac7acb72e832aec29ab658c3f12f666332d6a7b647f533a8f895176bd47a17362a6221a171053e1d476ef0f8f3017df88570f331f04af66581c8353e48895942aad7fc960bf32ed6bcc1a6d8daaf0ff00b28ed2da96e4548d0d5c438fff0022db2b7936d89c597880ed98d323f332b6756f31259d600fc255b3e22bb4b0abb5dc1bfe12e1cae54eccb3d772846e3d2c574cbad4cbd25062e12515a26595a94bbc465bc4cc10bae08915e428979f04533f899de3c47669ea0017cc4034cba18568bf53322c5c3f550ab6eea3442e62e0e0cb10daf9665096c16c555c8ba17b82f420ecfccbb6c59f2cc6f6e3fb28da9057268ec593885396e8814abad43395a803ac3fec281fb83b1b69f28e4765064f12fc4566d280b266194177b9ea45557d25b430f30a8159dcc14b7060e83b29bab948158f51a6ed3d391652e8f70356e137ee34156f22ddaeeb52e1e03105547132ff00d990c39814e7a454b19351d182cf2c032a33897ca0828bb667cb5342d4829b7c31cc8969871c8e96dc58b65392fdadfea71bc4c5ff00653e65fbfa8b734459e42857265afb86cb658e10c855fa97e7113ec5c4000bf10d85c2b2584d0e4b7bfb8a5376fdcc75ea175acfa9833bf11cfd4c96c82a4f1005cae25158602dec35117e7f9001bb2f1ea0c53120a8535b9434dee64e7ea5591fb7888e0608b4f2722a0052a09919adcc162b3c9796bee72cf9f552f6266a130e3ee5b0d3fc94f87cc40076b1eaf260de2fdca0f3f5030e12a8a623b621b16f9980dd665018b6e2067f12cc1e40a88040acf981b73fc88e06e78f99f345bc7c265f6400bc3116d792c35dfe4cb27370186165cbe664dda3bd5d75f12807e49a82258e91b769f32efb4ffb0ca1632457ee2cab15b4087f611bac4de9f72d88406373dbb83e679174c59943a81b528ec6ddcc519f32d2efb2fc61fd9ad2e21288baec50e9ea3a563911c9a8a6cc159c902e6bee2f4d7b9674a8d7c9c9461297cc1a74d79e4305b3d291f919987501d5b52ac1af72d9bcfb81c4571736537997584dcc9ab58190f4c90f3c0c40596e220511b658483e6a9c0cb4e77a97808fd92975b39ea6569c928c37fc953cb3c9a8410fd4d8ef651053d8a6ed06ec2e16a1a942edbb85f2982586eaa50b519c3dc403a7274f3315d883e5cf512e3a720f725e4299225161b88b35ea1a18f72803ceca95b1d60756e7bc6cfd45c5d46de3f3176688fbfa6501587fd82d3506e1908d94d0dcc163100c77930cc54dea145c30a4a16d9614dee32b4b185516e6516fc4c3b6459ae392e328945793348861eca685e2582fcc103bf5175af12f5598fb045c5d4499bcf268155455c3f3034fe66077a963b24b5e16767cb23a9e0fca01f4e4ab5f240b5aef929724ac48ebb31294532cb5a2e5db8b33b663a168ab6cf3d45951642b250805543eff005e21f2712f434317dfdcb16f3fc94395fd949e8ca05589d0cfb966aa01b6617e7905d98ec58f715ea08db13c24ca9988de67b50053746a519a6bcca4c37ff020533054cab72e60e05dba8817655305db8c55776f89728351b2b8f96a0e71a9d22064621e4fa82718bee0d656210158dccd665dfa762b06aa607f60f865aae9f533d689434e60b7dc06073fcff8182b52acbdc5a1b83ace67673d8877d8fb717881ecdc35550966e60d97e0832e4ac019cca4bbdde0978798e6acd4b52a26bcd4e2fe12cc4bc35e6050ab1dc694b8252604bbb8337a1dcb3839dff89067732ae9440b0682cba0737a8000eb303cb6c1a726392c2f31eea5133938f88fc2c66030e4e46e7a304ef91b62057528cdd6e2db844b9bff008aebf5ff00139aecabaaff00e20b14cf26c265d42977321b130d7e25dffb8832131cd45ea616b5c953c5ca54ee09a7313398db76ebfe3a9765aab8ad6cfb8faf841f094809c844f52b2c6262b0a997b72ef9aff81bb97cdb901a9866acf1157a9798375612ecf2352d3c4c0db2c58359adc55f2d4214f30718eb12d8ba415538bdc1452f3b971469ccbbeffc14856e552752c71b7fb07c01f1e636955921e3b8e1acc721f3e2196c1bfb990b8657de41a0b4be6707f5ff0012f5f681c151a174ad7b82930dc4ec3ad1dc5babb3c974395ff271a00cb52ab4313c41f2601fc220ddca0f86528384c303be471f280e22159253815286723b294a3ea3a7552d06d7d88ebc7230b5f11e7589758ba8261bcfb98062954630b5c823235c8f8a8aa9b188aa13d3ee64c31d8f87b196bd37156c7c2002e59ba89bc4c979876541abb1980f10c6b730f9997cca0d4b1d090aeb64a580622f0a392c74e26037f5306d22dfc4aa97f18b7a68eca1cb3f0c505c414b9f111bfc2099322b73237752ccab531c3736310c83f1255716cc2d9c3c8f5c4c6cd450a4b94d0510f6cf655e887fb28a2b51055b834f0104b06a87b3650efb2aef12ac612af17d958573b05eedee03c15f94b1acbd96335e930ce9018561ec074b999b28a865de880adbbccb74b65aed2686514af2576c44bc5592af854d5890de3c450597338a98a6e25f846d8e623ab9670c5b1c8835f7101b72388e629fd96ed77fa992ec6b95161547fb1bf9799a08d5ee3e4f832d678cbe25544dbd82d8255cb1b57b8aaee988cbf3a99e32d9ecd9057494ed97fc82b764e9572da5713b640b08d47f283ea380765a25f6548c67c4b2b2099602ea67896b53c06a35ebfb30b976eb1b87b87f91132d2f656bb392caf431c6cbf240a28fa825f11836006a6b15f117ab1f32dd796e50df954d272ce7d44191b82d237ee0a0e2de4ceff24a4f862acfd4175cca5965cb8949b35e8897a2e5f9fd417bba82ed77a89d78cc3657ca06952da6e0d993e18979a310787dc4751a0cc0a301e59445fe660ee7b2831b8d45477bd7221668271adf60b3104f6622257dca83dcf0f103c4037d9901e42f32d37a8d315acd4bbd3f501da55c0b53f52ac4afb96353105f894e47510129cf889b977931c95e3f101eb535a60550302d90ac1c896b711e35d97339cc0edcb6ef041432c720f082aa880f3e4431b5cbb16fd4b4b7a2556462b6cd2f60fcb32d5bc513a11396997e971b142c930577c92ef0babcbe2263a99b0b0f12daab886eef84444bc40b2a8feca5168172edb8e4097e79282156d4b39b89afb94dd52c5c5d6651cc764662b315ab91a177050a5fa834b79f1ea34ed7b8ab5925aa9db92804bb8956e12e93389bc9b9658db5050c46187ac4440a8546db2334e45e7711cf099793e21e0af996c5f98376f61bcfd40cb50ee33e62ae1b94d67b01e911c8ce84c82c01bccb16b5e2606ee5e4c473822d1ee61a6201c852503957b855e72412c1d957a4a4ec4b372aa535d8045e73155637a81328947f88d5e489abc7a8a359ccb265f042dd54caaf66e532e370cbb732f4b8256e28d7195441b9a03821c4d46cc92dfa834aa6505f3283ee25b6fd4a5d6e5a194bf52d4cadc7140544aa0d9c8e96cf4981cfcc001728dafda55131a8281d2b334214c0b65c72229e4be3f33209b89b565892866681c825d24bc86d1c9ec9674ea59658e46d20c65c8db4f310070b01d4f0096ccc2cc809e0602fb7270f116f0e44b19b844e9057732f054fff0019f17043960358dcb0c3cc01b7ea5b2dc4c6e64cd4c1b77c85adbb04be515f7e653a6e5a9bdc04cb3dee05867ea14b455f67231b41eb9af70341cc616a25154f9982dbf90c8f113dd44ac32c665a6cdcd0983b157afec0381ba957a6e380be6276c7101c302dadc1414d445caebb06c77130ade4bfc445335e196bdfdc540473325622e898817b54e06529546584bc90339f81e63620e101b34f988a2665831986cf9407e200eab1e234156cc7c095a5df256f8888a85ac15dbf89e7a945957f24362cc7980739c4b8d989669fcc41d6bb2940f31de930aedc83278a975a8d0a3ee51a2ee674e7d4073f1307c4b1e70f2af64a6d0d93f4862e60dcc920bd32afe652882acea3f84aaab5d9a80e1d3294a95fd9471cf8965af1303ee07c9c82f640f5880b42cc06da7500d83d41114c51f997b5f2081570c816ef90365683395fdce67e60f05b87a58d7a9459789a3f715300af37288301b45f128361edecbbbd9f31e6eae7cbe653ce2518466097859d6529777f2255ae665ab69ec02b572abb480658ddd416af04bb4a7c415d066441c188e9a94977af32af194dc4bafc404963b33a9468e9006fb310635988a67f12b22f62cc8a789a780d4b437503824b7aa96056a534b06d0643c627711539fcc55551a650e8fb855a39c404f87660f703d31396884c266fb32b59a19c4da860a97071c9bd61961b3ee61818c4aa4622a1cd12a94c25f931382625ac18d905386e2d95146bf081d5c48b4f8115311d52d54c345c33a3e65202ac7be25d5d4c9c30b1ac9e4d5c28ab9f52c83854f8abf3701255160b7502d7d996daf701322115aec0af71566039a29623a1f2c2ea9bd41c03c40c0297a8ccb4115178fecbb0f5295c39a86ded2f4266b92f9b6bd4cb54fec44ac31e66bdcc59d7cca7c08ad0c6a2b2b52f2faecf70322b2cb40c67b2cb02badcc1ad7f66c605a294622521b582fcc23690517f84e2b771f89979969b8f96287041c4a270655e89e0838f53068d1b97748b58622aa5558ee187aa8fff00897651896aa60d31bbe4abde2b91c8bfa8fcd7b86f7f70effb3cdb82da1c4c1f31539cca06e881ab281a7330ce6d99921ec068db0155f62019a62ab6e2ecf8982a9b3fc9623d4e99a85440b3916fb0a34e660bbf994b2b5d894af32f9df251cf1293afa20b703798f354c707505b88a9bc1178dcb775b947fa9a102df64f76587ed085acb8f10cb9fcc12eabee0ad6480dbf8816e2e18cf88bdc7d4b25dd411d10b834f012af97ee55612129af30c12ebaa977066a2e7cbfe4638652ef1981962f3b83ac6a15bfe4108814ba9b817922d6997f9973631314c43ca20159956f7e250a71897635c8ac37980188521e65bc9f71f97f218cdee58ca161ff000b2a8cd4c1dd403ac27ee523aadcaf2e58793f04b76682511a5fee2cab5160be4bf588963e0a44785fee6d944c4d17988bcb5e278dc6fe9d9e16583c4ae4e87d44f0dba8abc9150bb391a33e664b0e3c4a0b1290045c5914d10a620214d12812e76221513aca71e60ad52a252847328adc434636cee65daaa176d972c11fd47197f11a05198d9dab9549d66c5cd9f1044f67a660671116d5721c088466a2bb6eae36ff00d99697c853c0e4f26bcc56c7d7fc10476f3ea393b80d1b96d30fb113efa856dae4bf19789795b98b27c46983b1657b9a0ca987228ff621cf20c6f12bdccae9a977ccf982d2f0c6dad7586b6ccdcb66a2eb50091dc40db3c85aad832fd698ebe655e982a7f9853894d813229589822bf50bc3a9c11b9d22ab730d64aed44714f7033d74c44b42adbb9661cfa8e0aea9c11b736618acf6dca6b8815d95648ac2f21b95692903915dff00b38a59d8d3446d2d16b296229a7ccc0ce560adb53267232af03510faec54ca836794f69e433c9796e19b06bb16caa974117199452a2db551fc2a006cb3c42c0c107ca63045c9f33fa95702fba8e03f510ccd96e188561b9d631c9a671e19626f3ee0536e6a0accc5b8ab513d260a55be67b1eea2dde3373165dfd4d3d7b9ade25d878765dee6d92374f881599b5b3c8d1284f9851a97144065626004bbfd44a6087e53c1899a04fb81df4d45789ee6d17a45184016bc4c82dec2c3ee041860436e20b55498969d1fa82144a1966db1c8ed587fd82a7da0d03844a5eafb2f0c5ee0555f8d40b3200ec285d80365e655d27507c3645f1f296e66b6c38f330faf5e60063f106e20759968318975f73889a835974c4bb49b3e6031d8ddeb3d81fd25deb5d9f1f08fc4b53a88eb70671848cddef8cbb8cc7c12508df21672d41e194f1f72b2ee060b888c50a9b8fee67370bdd65d4073103310e47c448a80bdc6cee2f98d68446961db2bfb1cebe90cbe92c35922157d9f820de39f33d9a88053f3318ddce4328164c84baa9fc4df9c416ae55e3a44e4571b868166652fca09b8bbe4a2b454000ba7ccc8760fb180396c7ffc44b00c5e6599a6db8264a3fb14c0371008d6c290db3f500f0c703c75c9497f998358209c5cf4289615847fd974912a7a41fb765f4370cdb6d1c8202b7283688868cd4aaab6784d795bf8894946273ccb0ddfbf103772bcb2a978ecafca0042d9401c10ec1f086c53f52a11ac6fcc6aef84c1089a6082f4f1284bc460775718d8fc40157aa835fe4cdeaa606e3bfe3ccb0c97387f132225665cc2ff007c41b565d6a654540b172835b828b3ed1c5e3fe74fd25e7295bbec0b732cfcf278766229788001e720162f04b1c9c4046e886d74d4a185cc95a907a6bfb3d9c4b3631e622049778200175e62bd3f1170db184f154c4bacbc458190ee2f82e05502df1002f38bcfa8ec671705a1aaecf0de7ccdada7b102596bb8378349863c65860e43ee51ac4b0e3ee7b389451ab095faf1282aa155e5889e7ea577aa86fd4b1dea5f12f05251695c167887a3ea1b5619a0ff00634fcc7c39799d040af098735753656fc4116c22f77fc88317bcc43365e3c4ac6af3b8789b60300dc2c1695505268965950f2201a228e89434494047a200f33d8abc40191533d6dd8e15528d7e10e7bf701c0146e15780885494295280699e4b2bc10ad9b86722535750a35f98045dc605d467d310dd5403883484b00d44172a69cc1a59f715e5b9403a6e5196b1734bc70941485798acdb31601c96729c942bd3300b6e40d402734789413666029af32b3afb8d3f32c2ecca34375999637d8bcc251bb77a8390ea2bc98afdccb2db041809a0ac01bba96fe231f3d9682a4168bd4a402e8752e89aedbd9b6eff00908746655789b2e950192de37e6203f0435fe4740ac47ba50ff90942ecf3307841ff00d413096507211ab543d1f533b769a958f12c3188b59ba9797543be254eb0c4318c7888747f62cd9ff1e31002fca582bee503b83a543e331a1ee5da69f31d64afecdc41719e4a18fcc02e7ea38e1f3307ccdb350cb3a8b5f0ec6b5e4941a3b70ad8e983a94ae239ec166b73e625b0dc955a7da2ad88a894c8ba8f22fe261bec00f8417d2082fbdcf0a63b0472f65ab42c1adb11542dc6fe636acc1d9b81cdeef12d48baf6caaa6cefa88d6a7b7e6081e22ae45b32fd4cf0cca138a8185dbdcc8ad3e65568b982ff0027a258eda26528af5e65d795440ac798853732813037566ae29f37fa89713b115708a5a7dcac56b332d7d416adc9c940e97980333b31a798157d963e5c822a5bcc4b156bc416091e0a1dca4fc90c3503806669894c54f0461988022af1104b497803b89dd9e261bd458378982c96ee2b8e46cb5f982a045ec3e6b10363962d2de4c21202857e5e22355446167e6780b850de792864ab6e5daac6373430f98242c30ed21edda8fc771777132fb72522a619588e06d8dd7b8df9671bdc2daf113cca787dcb7527a22b02f655e9c78961b8158531e5d9c3c7e506dcbf12870ea50db130e2f9715dd973c32d58730aa73f32825221e4319f33d21ecaf9f32ff313e2a58abcfa864fd931e51a1479838fa88797d9b46d806038dca08dd7982dc2f301abc6600063db5150f10198299418370d6c438a546021b87da00eb2c35e14e4a5c35982ef30553f30cc22b73381b8114a7cc181ea57985719f38feceb69ea536b899ea64dcaaa1d9a62192385edf698ab86c96c6f0e2082566ee568fb89358962365c2b669e40aa8a3ffb000ac4bc8e1ff65fbc4a01e500d262bb12862e63a62e7adb0a4acbfe4bb13bb9432d5b2b8b70172f74e182f6f9800e5d9575575d234bf312856112902d95656e3f1118de3c40b795fb82b17a83a3b989a214ba940751b057e22628e6e0a372d065ae112ca6be3b3214d1e62784f99475b885bf49858948d7dc70c661ec8ce1fb60303ee5cd9ee2b6eef92b1a1847b6e02b1b88b880b6ee6215877388524e6f30514ddca4d33c89b6a060b8d193241e65b8391008055a41bf729cd63ccb14c0bf88e251ea61d6631f7126dc7889b175ea0bf1fd94a40c936aec62ba85badcba756c196b9b223bd4b30f1bf128091be415e0f6648a8398d4322a0145e23a78bdc6b36c5e66d56e20271cdb309cfd445cb52b2172d6573115208ca82da35d8d19d5fee28c9f68f3198502b550ec355b990dea019b39c4b1ac5fa999d1885476acc27fea2ad7db32ccae79365313053a9436cedaa9adc5c363fc8a7ff60536a01805aea5a8a2501eb1176be2257312c67bc82cbe625b1f0886454a2c5dea66e4a167ff00512b2ca1ed2936725005566a1896372a61d314b5b9655b89991c4db1a602ce4956bf1064955e1fd856cb501c3ebccf3aa0dc71fd952ef71cb3e312c20069e65c5545e19a673096996b5aece8bd7d4b068e6616ae63cf730f44b9ac31bdf7ccbfcc17c1296ed3b131c43b704140f896f0332266dff27b3336571b816d2980216b12c266568b4434bb1c7bf32bcaa00dae62f1a9966fea23565dbe665ba976815c4b7acaca0ab3e48a34338fc4a32f481e1006abc26c726db7ba6234e46bf5530711f440e41a8855e172b0a2e0cf89e988029a9eaa08d5e082b55f2c1ca0bf1d946506115b3100bae4415c61dc40cc1d931da13679a850a8a892c9b3ee05edbfd4456fc45587504eef31b14ddee2ee3f900651943846714429cb019f13f4820ba85a02ea299cef44b5b03fd9d3674798f948769677be405558f70a4a0b8e8e7c4a5aad1e20377440b717328421bd9982b35064c0d54db8610706a6af5322cdbab8fe8b1c132f1182b188aecdcb3e3cc514d5dcb794b79f5128eb90ca2a1fec6a2c82aa593f4628644439392d66b32e9e93e85cba0854f6e4b47c3b07819e847aaf31056d95bb7e239850d12a5d352b0f04cbe085c98c40a3ca12b4a89416c4c37a8ffe098c0cfa94eff1060ce31d6572265ba73d89b3f296833ffb00158a8abaae3dc6b6a08e73ea2391a891c3cccc24c92cf7fc8eed39b88bf0e91dd32c09b4eaf3b37bf32dfc40e96160f50160ea0817996617d4168e22bf8f309cb52940df6588ac6731a7cc1f63900e2ea00add563e612bfd96658000336a5d6a3d3711d5620d3bd8a8032b164cacddca7661fb965618badc436e7b06e5b8362ddfea040c13f89934953a3b121749c0efb07c9019dee5996214bb4b06d4f04e8c3105277b147cb3181b205d2c2871b4b79201ed88eb6ef904ccde5eea19bcdcaadbf50c2f8f1304ff00267285013ee1420b92807cdf6278dc00adfa94462f82c773da92c0ab126b5028dc04a29382fdc14330ef706f72a23ccb339cf60b5fec1a1717a6a52d7dc2818d05c05bbc409b951862536cc42f9367a254cb350ab97e25b957d43f2c72023bea28dd3f532de3110186519bcc41aeccac46ab598b6d0e020b633e6516aeab52c39fb8dec1c889e2f5287ccabc3d402cebcca78791747c41cd0dcc1318bcc4fd989465b859a292a5169ff62801d7b97eac052f67be16815984b6a3d0b9405ee336242b8998575c407e08b654b00315112b9ce371696b72cc00cf898255f89ee44e30cbd98f12f635f3159a42a944cb1f52cd28c620de612ad627b974bb35f8992f5284a8ab08fb8ba1c7624c6a3ffe90c906f1d9652c9c370157049f19cf729bcd47037ea51f4ffb308aa0b52dd37f31becab82aee68dcb82bc47141b95d466b396092fc4a96f744ea704516915c0e7cc5779f51c9ff002307151686d969a7ea668c40f47f92e9e50e83915df88bc18a8a8cabd10346221acf652be30ca067ea52e100af49835a995c6ca4cb1bc957e260577b326cd616a4ac457c250de4b72b5e4a35de4a79f0c69545416b3b3b9c10956f226ecac1e4df11386dc97969badcb1d011546ec66a53501dfd419d6bb34b50631ce441c30d7b4cb76c58ab8f4b2813307395576378d07fb046d8b9832dcbe9aecba2fea64ab8aee3007f333d1170583b4627b7310bc1fec55f31f7b12e6f7336663650fccb05b7102f69ebb3e63b56495935f13df9c474d789dcfd4c5962856e61d99969700e576ca2bf3030ccf4bb8c6d7ca18542c863ad0f22a6db60844d196db7920b632f886d5f88ad2f90df12978e412a71d81b36d42c881c32dec23960dca2ef52cb1bb97602aa66dccd007736de60e2972e220e4f106d5896de7171f99759227698843b52898a4a2a9d1b8dd5ecb59b3b3d44bb6392c5b9c52ccaac8656b0ee00a5b928a7aec1604d0cd4a2d1c799cdb99bbc9290a6addc1af0fa95759a82d57701159788816cd4bd7f92f0f2702f3325b6e4bf0dc422ca946df894ae910de65acb887c79d89db516ad982fc4583b3c4c9e1d265c3589e06585831306555a38ecc1a8039dca16712a0ad44587e60eadccb0a29c97adb8c5cca9bd44673d8abb62394a2da37fa9ba6eb93569acce433cec4b5665d20a15301b60131b88e6e26872e1865c5e20f2c4b31bc31ae8afecb3da2b7f09cea7cd474fb62790a21d59362e7b21913b837c12ba16c38a47cc3617b941851f1ea615e22edee58f67889b28a99220e20c6a6a0572dba2dec590e9dc45553d3ccc288d5155e65e723132db5365b2c365541f8e448d88b7ac162910d42ba18da668b9e13269abeca3d85aadc1046eaa5658f881757a9ae7b2d72a4a6fb321552c6cbf52fac40afb88af39967ff22bf9ececf2f128304f62590b2e88b60f862dc7dca08f98454f31db3312502e791a85e87e65462a0e51ccbc13bb8d933062b225a40cbf32c85130d4d8defb280108d2fe2590f3ff0022d61aec68062deee50a9960d7650a675ff01b060191cc618d7a94bb373085bb3d583b28265f30a7575ee015a3170a60699cc5415b893d915bc3d9445fdca6ae90c6b301873b29cbf094003932588a5ee35afb8d8cb05ed056c96aa3ae4ed39fe4b5474bd4ac5b799ac35301c532a82d1031b62e71342c7e79280e6bf529ba8ab3d8a2db2d4a44b56456c6e8bc9bedd47659359e4b1ecc85bb25d6c97e7ea58f888eb895c41735b67a34f8f32d5e655b50824aefb28016d6e539b3c253668f22b4e20a9575117e620d3983971f71285a1967ca3631b80f04a3057a316bda13c2dee280c7d4ff0006678abdc4744b2d44060a3bee61e49e0b7067d4c04bdc2f5f68630d9e4cf35132dc0d10280f198af1f232d06039554c295cf252672c4bb6a2b68fea07e4887b180a0bbf7e2603f3b96b930805584c3684a2cb308f1ea2b1c5799855be92d1f8306d69b7cf98d8c99f1e20bbb12a0016c765f6e51a7e62dbb00b0766f14b00b0587ea614ac91688479390f7ab8541bf3180cdc40b3e92c5ccb0bf04e0c61f2c7c1c8bcbc4bfcc53c6635dd41749c9810a8ae99f31bcd9acfc4d8941a98c0ef216a5441cea5b5709e83729f0f51fa2239c2a5829fb886e96c5f19b89de723a1f1331e3b1306780623ebee32fc27ff00c45e6761b8f3cff814e65972cf2ea704cd4a9c554bac13a12d56d450b5b94fdcc8537fc95b3a940a5dd4ce094f20f2cb6362f04b54d1f3d9bddccb09ad44410b5282eeaa2ab5cbb83acab0798a8b42b4c1b4e0302387a823bd7896f747fb069bb853cfd472aefdcc32bdc2b81014f1280dc171854457a7b3807dca76015cdc12110572259c20a33ffd41f23c4c45843eb2464112c8b597b30917a37d836f01d8b4c15fd8aa1737c9f101f8943587fd8abbc130602ea18c3f1153dca7ad4dab90ec95c7e26337e628ab948aba8673906c9ed894722e466fccbfff009ff03752eb71dde2bdcbd6df5c869cd41e993516969f72ed261c45417ea661b1b8af01327980adcb087d25dcc0752ef552c7b723c1d82b6788a4390a72e082b250e4dc568cdca72b1c26762ff2255fda5b1856c86e9bc8cb60a662a0f1111e6189a09a2c8ac73172c738bf33620d7b94aab352d75f70df0f88e0377d8964255803301bacb2ca3e6eab30154bcc63d18fc481ecdc482cadca9d1857a5f2788fb94018ef626ccfccb68aa13e2e5da6488ea7c137a53dc760cc1a80fc455869822d71e2520597707f0e42e0dc7d45b6713809699a9f0987114b5b08f52b38dc5f697f98d646e23e6e35c3e638c39bd4fbaf50fcfa861cfe263635ea7b370a39b63464cff21e5962d85f880ddb82007f6785ddcd0089bcc070cca2af1341cf331654f398e582507679a61d6ee674cd8255829c443a1956c90deb50d6a18d3f315955e655324a48bd822ab2798723f112278a896b6a2699f9975999d9a3ccc3ca188af2f67aea54e3fd4f4c9c89c3c7222bd4b0cb1d9e16ea129662568f180974c4a12c3b8b55644e45c11ecbb4d4cf8db353050c4a3316d03647dcbea65d38962c8958b9e046eb7d8e695a94a52eda61775d89c4d63a974a3055a5c1136765f9dcfc897422d2ccb9b10864c52cfda3f535a94bb95ee55ea0a3dce8f60e5d57fc6f52f8ea660a5b92640bd436744c06fe99682eb915a6603273c425e5f822d89f14f3159eca2844b860882a2b83b6568cd414f9f1290351ba8965c489c8f0c6f20d2f88b7b0f98af7814727a98544b561283d3b178438662d65a5f100f4f21a1fb4a0e2b32ebebb0ae114aae4b33f984ec2638f3c943b802fbec550a17b9908b75af51ca2a33a81558a5e2d50e371c6339f130610f7d8dbacf981d172974d4578fb6691f895cf1c8940d5cde0ef92cee1630e1898da565adc6b999aff00c957fe251bd470370260d330c1cc09540f59519cac338a967e6024b3ca86715f73d7fcdedc9bc10335d829852ac3c255e8976335a4bc7ab96e189c1f6982266052bf5286a3747980a16cb0b2dd4d856fb1229713478ecab1052993ee0a7af32eb50052d7b853dfb9fc6e1a1a63f32ede7f9134990c647505fcf880c39d9c4206fdcca14b2f12b08283757053b06cd53feccd2d72ebc6e0d59df333bdb5988bff0092af3c35399d72392987930441851b8956e6e53653d456b45ca62ff12ecdea1f063e4b7ea5bd60fccb339977d9f97a97a5d544a55f985bf28ba3b66b4cf9662c05c0f751d27ee05b45cf26e1939fa9a1f11a41ed4698d71ccbae5ccd0a17114cdb019f32e92e2191fa858b7a83ef116d3c4f898ec2bccf8988596dfd4cb36bc33359fb867b332f2e26b6a9d3b897437f4834e7ea5978dc5c7dcfa8ac2157378bc9324ccc3d70c0e16d39600818a5ddcbbd353dac4caf3342e1712f7859ab95955fa96956fe40bc2e60f2d90c765980ea2c4bdcc32ea5a6965865e6225452af5ee645716c8622b29a952bb2d4f8616c2eb516076355920009b97a3550aab7b002872506b8980ce7308e90941ed9801106062835b979f704ec4b298bc7644d3c4407b98b955a71d80d89172e6bdc7ec72052cde25528726463ee2af72af4fd4ad9d959332ff505e47ea685ec9d500f2032d7894c39d82ae689f3f98539f131e221e2a02d5c73d262cbf8468a3e52cef62853b8b237f510d973f08569f98af04b34e660e660eee1a5b0d4f234c12edc1e66b06fb12aa51f17060f31a31e602e58ecc2089a5fd2725c303472067c7d43d9b65828d263c9ea07c9c8be313a329a54c033be4744147c23e01ff62516edfa8e04e725dd9d4dd3d352db7b303f13098e4b6d744172186a3a576f7d4da937005bea20a3928d9101ea2b1e20acb5f71a70bbdfa94c1f6405fa98e12f4bd8449428116c81ac22d582fccbeea792206423c620d30666065852d2a6e635155a6bdcf1797fe12f12c52316b2c975517efc44a87dcdd51888c691851f9639cf10c38979725527fb29a41bec2be9b8ba06a5d61f7019336cc52474b897ad472639302592c69f105d669e3ccb2d3aea59aaac4d7e636bf50a85b9ecf26e62806a50a4bf11d0b5fd26410aead322d1c760cba1d9a057dca514d317064ff6009acffb12860ccc7d1a942a93302bff00ec54994259d6a5d55b80f0a3b2828ad32980ee5d33f5286fe914d91564f6680950659b6cff0027a94a7396056d8967a82f4e6551bcceb1f71cc0f328586079d9a8971d15c4f66bccf0bdca351f7c4aebd81f3089e4ab812ca02ed993881562f995500b9f3283e639dc4301dffcb7cca1fa6651ab959f5ff303502ef510adff00e2275017bc42b858ebf916e38c7995ee514b713c899eb7702937f5383ee36ee6e003b3ee00eafb01502512e1a1773109ccb056ed88702e2140a605670621b7ee564eca03f482182161dc359302e8d720694d74942cd4426a55d3c10a022e4898aa9542bf31668fb822a750c15ec53fdca290a8a864fb8adc5cc05ee6803ea226d7f9286d621c8d7997b11692ea36947219f98950568f98ebd457047341860393dee369ec09dfa9742aee0bc5c4c78765786bdcc75fb8656d33744b24f0458d26392e2d4bb4bfa896541f1285cb069ea68cd10bba196d1f70b1e520bcf9e4a698c4f5a863ff0067bf50d9598e4319be6057aecf6d4b2f06094d0cb293ef929eb5ea0de1b7b8e4bcf11e137e37348b2af0688c64c438698517e11d4092ddc5a7515354f98aed7ea601db265a7e112ee1bf31a1d7822a5e53e62ba724b01660171c69f70a2aa00ba7285325fa969bfcca345e21bcca76372f06331e22b8da2ea554a37679f51de9f72d9bb7b9525e7f9288f1d946fccb5345302d5b730ce32c31909593d976366250e351546b13d09d3b308c53b4badc4ba8bf694cf7332a7a4b7697462d10e47d42bc4f2fd4c688e494d173f53cbf7ff4ccba5977d57b950025c2550e217d26e374c6225bf13c24c4a1a83960740cca1a22bb2a658a9ad1286ee001485709e4b4a05618537a98f138ad4bd1299dbdcbc064ff0021ef7a986857620c0c3a83d3511656e0b6570720f2865973f9814022d74853a15df30edb25031ee2928310ff00ea5baea054c8f511bdcb5ce88a8b2fe62a93c7132496e65382d12d5ba79ee36f51d90d12a376c4abc0456b0986d6e45befdcb5a713e915eea1870e270dc5f3551a6e27872d416af33c92cc1b85ee58625aa183c81606be66b548ac12afb2dd15b9d3929bdcf899ec71b99e66575df88e0ad4595949bd4a04ac3347f2658bc5b12ed65d6a355622e3113c4f7336cca616622bc533c0cbadd6629b417152deb5ee75d86744b5fa80b96b332a96b714096043bb983ee3786fea552eeff917658c2915c97908d9bdcb51b99555311a372d6ef3d8136dc4bd65e21783d3ccdb95b3a46e9b4a858e1c5445e6fc26002d372947c5ee55daba8b468dc026b11677a9ecb7d884cbd2246eae0a1e7af106ff00d8319f94c1a7b30354349382aca9e292aecc540ab96615528a5332d4aa5da6cd7e2648d22260ec582f32b0e6bd40018cf9894f514ee7c3589451b65ad9dc4a6cfd44293599e435e606770537af3057c3d966ef1a96cc17b8786a7dc8446ab0f669c09fe4c036cc73702a7aec2ed0a6e52e6b26a70772de710cb07cb05ca76581733dc1b3af88ff00f89adcf27e045b281f32b0a512fab94dccc29b540f2c7fd9454abc3896a7440db9fe44636c0ca4f99973d26df53213ed2d768b6bd81c65ae459b392ef65328d9c4b00d90a783b3cb51ca6268a1460b652defa9659757a802ed2534cbfe4ce712d40d1c45583ce65834c2762bcf57b96ac4c9a974b1b66a791a82aa8dcb216c3c4438bf530e7d4b0d14c575792f24516b56d5ea61e8e43bfec321bf997588d32cdca3070723882f65c2d29a992ba722bd9461cd72585d62f907cc2fbf512c79978108be1f30acd6661da96bb7fe9973318a2b6e0510745cc1bdaa67c5c2da352fed9fb789560530c40f50ce5c854dad4f36e53d0a23464cdc0a59bf7e21961f980f5cf2602a176f9954979802fdb2443055021e554a50de1b9966015a5cbbc9a86737b8e8ab816bf49961fa9862b52d3542c7d9704698806504d18189781cc4b86881ebee551d8036d46ddcf221edb1d62cf88a645bf7038f10fb55e65737a81b1c788865b3515f1f1320c763a5ec052f750f70e47051d8d342eb902206ae27496799a4ce3c7fc20d31778cc038ec759679352ac4caa95f8965c87f6393172b094b898818c8dff25991b2066959dcc03254dfbfe4beba25288a2b1995ff00c4ab85b7b98a66bdcc95bc1d98e33db730ea0a286195dfca15b19e3156665ba7f651585274cdc13b28dcaf2dea0d5abdcc3d8b03d0cd8b7ccf94fda5e57c4a1f32d65ea1c92cb11015eef72f004c0d110c3630250fa40154db365696ea09952d468012c6530d4b5db821ad0d7995b20bd6e66126e072c0ec551e38c17e53b51c4abf45ee053f5b9b04c80b99b0b9b0b77a828622a80dcf4332aad4de1602c216af5a967262e957ea75789b67ea2e35b99b4cd3a4a1a2ebcc5bd4337e60fea5fd3b300dc6c1f72ceda85b5999e1b9f1f701770fb4a53cbc954b329bb8f1bb8e0dd46867f312ab88de285f5c9f84cb72a826e6580d41fcf89f12db22d1788fa40d8d103a3332b2ae646ea57bff0081b65465f306967317096e689a3c302d62e6887e261a117a188798a46a5b7be8978384c8be2a6053c99b13ee2d98fb834de3d27b2e2fff00c4a5e4fb9938df601ad726556caa1c87674b2ff912dae420aadee087db334cefa4d30fa12fbbd4c15c95e1a895b5cd9a7ea7b450d39963296789a1d0ecc1bf11074c4f4ef913e9990ff67ab990a8834bf5117789a3b9aeabb2c0a8885151051e47168bf5323865462357899c9fa94e23779883e258deb93f6954e598297770d318947a1b9f841597e9957f32bddd4c96be90c7ccc36dcf24af128a67329e3995a1b7b0170f2163b3dc429d877ea0ced5d808bff81491cca11bcc69fea0f3572d6dea5cd4aa8ab1f31301b97c1bb6218056e60348037c81d40b7ca725576bd4c05b7e1e252587ea294591a75f8890789985f80f219aee9a865849c332ae7b6258bc7985e0596a9cc4bffea3d0c1b6175732bd38a3f3176d4007e26b07622e5379b99d998af25214b718312deee213f031e390305e0e4beb504defa97776a7c4558129983154c4471589ec63cc05d4b226234aaf11b3e667694fd41744bb0a5799ac18162d82b8d261e470f88a2bf29572e2d6a8ccbcae247d417a8deeb9955acfa8ad2e3c442d55fa855d69ec4cddd6a070278311b2f9fd9c1966b8e725899cc4d2e91a523f70117a7222b7894bb6e795388b685626c78ec4a831bc1b798bbb3c839ecbb73f50a2efea2af4afdc6d48eb714ad316700f9a98da3516ec6aa3a17e261c41af710a34fecf6802b9335f0ec299bdea5ed71d057854b69b9b9a9407d8c06051b1b9a30df674a8a79f2657a7a824ca201ee677f13f5323c798a0ba722a60d45baf3e63909dfc45a5accb713a2357b8945dccad7197825af31044a3379f109935b879408d64399782f730f0f73671f24f9b8bd63fe254b3b5f512f8ff00c8bc975306ad0d18fa9ad7e27b2e0a2bdf215ca25e50c62268db2eb1ce46c40d414e9957bee20cd53c661e335fa894b082b771304c44f22365dc5786f1d94ac5dc6fba8dbc572e2fa37cf10b575176ae627641f6352e9e658335980819bf10f8cc71876ccf82dca72abb3f8b12037e51298415446680d87ea582bbdf985bff00a8252b3c89630078884a6fc1678aa106ccc415118de459561a39304d199907c454de5ec4fe791bc59479976a6de667497ea3ac627b55ca34e89475f1391b75c79940109645520375fa95c798163d7fcf627e48616c87b81b1b9e8f982fe10559afb9c33fc859bd3282378c621808b022965b9605ea59e89a069ec1ce330570fe27820db9330b5d950362fa9975b82edce6261e601c96e7dc53073b1c2b905c8140bd4b70affd4e9957a89e07f24d95e724bd374c1661fa8b001b3b510cda8625d99ccb72f2ea794b69cf60ddf9b98b0bcc0a728b2da9072f28b42be9e664614f03e8946c276f92c0ea68fd2644bb0258fd04b3db8d1e027b33d94f58b01575282e86c879066e6457775528baf3a94d5f895418e188a1f2cc955572c2f988be189cba66bff676acc4f9f11e78948ade2340b622e4e47de5f13e3f100372ff00110157d27c7dccf9c4f840f7700687cf928aa29d5723a7516eab188f0ef65722bf105e1f4cbaf30599d4cbe25716e55a5225e784418243433f88339fa815a659f6e4bb30ff008f93ea380d67f32ff086c2da7311f05e0950384954c3f3107c10542ab4ef44c3b574c2d67bfb8966b10a3b7fc89458c1697a81b54b503be4a697529e6a23c838c175d1b65719bdbe266e621bb41d9f810068b89e5ba4c12f0d5fb65bbf529bec7860827eccab92838f9822dba744b0cf30405a5427cb8c42cd59e209e10aee6ead763e5dd4775365ca69772abb9888a800b37efc4052f5e623b46c1ab99d0bfe4a34940377d9aa2d8688addd9282ef52978d403ea790b08da388b346bb1016b5c83ca5e4c2bb713441d392efb32738947af99b14e261979982f3283b82d3134b8977f11b557dca5b4be2692f39d46859acc53a88191dca1174bf532e4dc4c1c0352c6100c5fe60025242d7a5b5e618daff0091a468f50061f98e0625a52bb32c0e56a2222cb1adcf91712ccc17597a9e4fc4e13c92c0555ca1be930b63771b69fa96ab5ee3471f19566b5f304d9aecb1056a5e0f9816c6496656de25816a72c54b1c95701d0619a5541c8f0d4abbbeb532e84b7e094969772afae400d99ec2b2fdc44a6d9905d4bbd1f7292f75c84d4296b0aef4ecdee06b8839a7f31debee145dea1e1899dfee71bbb82d0a732c694f2cf91045a024cbe5e415e6e6cb9e4fd4ac99662d52f0fa8e6bcbfe704c8371f318f38656ee5b7712edf12b0c34b258c10bbd42ad7a8d562e18115252e53504313d1032de4e43f6e11510b3ad4ab0dbb8d697d8fdba8b8bbc42ce22e5bbf98533b725a6896d8c2bf097597c4c3bcc26f29e26cc63fb1dbec9755d9c13db4c449ab89766214c8d6a7a18b52d4ff2055b1f13802988e6d2ba4d8d388b01e432ceb9045dd1e607c84763a81d0cb7c22d9f0c587ff8c6959bccc4555b3032ccb2a34665ec60ea5805b9ed0d32976e773c12c62eee6d28a98eb306b2cabbbdf880ee8825877c990e200150ce8c7628a5a56a57ea79c7dc5b9581e27a19e98f303ebfb05b6a34fc255cbac0c455a21b71b83166fa8d632d4f0ba8f1fb8cbbc3be47593729ba96a286589a43ee160bc9e22de2e88af26a16f825ecf20b45eea2658c789808d2537ed0517e657ee66841bc0cf2680c53c0e9287c9837e0917bc63433a869511ab6a009999036a4038c1b5b3e26695f2858af305be9b95a085aff0023429262b035e606d63fa8a5f89618dbb1bae335365fa8ae1b57668c4496c2602897dd5c0ab7bc96d255674802eccf2636d414bc7c4553c7b88d04b22b0d6784c59433316a315988b8392c46da8a5525f88bb0a3c44b2115e930c27c4474a94e9f0ce13d8cb69c4b7b2de3fe7e92dd8beaeb90abb70412bf3a8922b5a96e20bd61828165f52d4e25acb76c6e08d69ff99688ac95ddb2b70f06221b252602141a25cc39a9780d789ab1987ac5da976ea1f132704442bcc453b12bfc89aac4b9768bd96d12f61571f10bcf516cc3e264a31651514c1c4ec2ae813dcb79c41bbb41e5c441a5e7a8f2c4395a97609dc486c06b12d155f30b58e4f45ee67a2cadd860c4a146d88e12a0830dcf06254d053c805db97532435fd82ac0d1b67b3644c986bfe714416069f2753a7e903010b7d66b241dc1f389654a2d5ec3a35363676558ad4cb2934c6bc4aa2bb2d6352d363e67151e1b9ea3aa7dcab9689d777c9ccee05e83ee605869d789415e3c4fd25a9793e128ebff00898c9a3c21b3984ef328b6bae4d0f0c001fa8810a2a8832fdc6e167620a7b0ea99ccdb25d7255274417b73c94da6262f5499dfe0cc91ac1d89460c0572eb932f84d8d19ec54dbea0b7d4a08b40cd050c41f4e4518adea016310b40c15b5b15c4bb0afb621a7702d5cca95b957be620b948145baec281e3cca3e614cb7d96c0e088db87f62aafed2ad01c43d3771a75988d17f94c0346628e53730ff12ef7f50a3bb3fe46b34f6552db0b5c6220e29da814b207ee6494f219f0fecb5959535a2b3af32846bec80aaf10720fcc72e2793111283a855aae0a21a990a6bdc6ded9412e3a84459d2af52d3232ebe65db492d88a532d7b975dfb96b1b79894c6e2a2ba80350665f9b995bb8b0f51b4adb0b94da17d7a881769fe4069e66295d5cc6f9073ea6fb7c4e05962882c8b2e66cdfd42ef8fa9f82f515188a5066d99006a651996c4c79896ea590cadbf887074dc5d7e6642f50190884418af13d3473dce6e288dd730ae1f712f613d55bc8a1954b176ee0e3bf2107b7a3d95585b7b11aad449e0f23517f9ff0092bd2e60145f1ea56cb15d12c7f132d99ece812ec5d47c4ce1f58962b294083788b47188b4944a194dcc6c94378cf99c053b3e31361bcc14b738c21046e9b8132bf52db33fc96395c672d0edc4bbc1a982578946c19955cab53ffd53c9d8b1ac4c8b1691c5539a9b28660a731708642d2bfb17c92fa2fc442b10ea912e2819ba82d0906cc3ae4f0b1fb9b699952b4cde0974bccc32ddb2d452999554a4423c76e21186e2584651abc56a6591bece9c65a6cb3c41c19b2e5aec98514e214599cb88f00bea15765876792ea15d258d0fecd2d45431b89b55be6262b79f5280b965a376eaa3d2c2ff0032dfe90c5b17b9760d72fdc32d8dcedc955dcde88814b97353a735296c0d415d094ac7dc03a9d0ee536df264d111de4e89814ec5d8252e8bf305dbce5c16e73fc83e88dbc63b07c95fea3468ccc2cfca236372c4705fb992103e2209b96e9c94d199efa9b634c01d4566cd93405b976bfb8e578ec2ddc2ef045e0c72667965955ce44adbd94e6e6f6da6b644421a873657b88060a658aa0d8a3328f9fe446b77982e4711ed4799425061c8b6c1076c4c10a356ff00c9587ccd5bdcbcb1ddcbbd300db72af6b80765788e400fb9d34882de5c7a6bdc1b476b896c1d5c5602658d2317545caba93596e58cde225dbdcc041f72c6f50be98ec4569170abb94245ab2006a280447d429d0f5155683c7894aa387982be26412bc444c368a052ec8d9c1c96fc415dda0a7179ea5796a227b234c0dc6dde25745c4eca5d4bb20bb94e419949a46fee375a97563502edaa8fccb36af7328ec7c8ccf2545b561898cca0b9943512c42229a96b40b1547966eeb31ac5331a7711d2567382a00ba2e299565983823c055c05581d9f90cb0b5138c99942b17c820f18a85217d6552dbcd42c15ab8584a6f1043497ea03b0a68948759dc07c31769d8b4519eccd8405032a86b2c0029a3b00708a9acca61ceca952658886e34a319e40be8e4cb247c85c4dddd4af13ca64ebb3c2aed716578eee05585a92cef20fc4f81f71704f5e25806bccbd7e92c06b2d41bb706a676930cd198ce063b3d112957e18a5a6e0d167c434dd6e6a56676b6791c19dc4d97350a947a333a6aa2d99b7865d8d7c4d953cadb6796d83b178d9103059153ffcd46df6cb557d20ee9d4b19d455e5c15c554406ed80a19fa97497a982f0c91d1bce639d13349fa9a1d66b5f72acbf30b0c7371b511cb15aa653404068f102fa22f6888e1b8b8c115c5a9f12de0adf65084d45f46c8265a69b3b2f8a1c25ceafdc5bc0f88942b7f13c93779253c0b094a13bea5c01a8800da5b9f31e29f9255259f12a326e23c542383e250cecdb0557ed029b0cb14a3f514c61f0cb5d55cab72c7afc47952daa7ea50538f339f29d04c72333b131c6340ebd9635f12f0cf2ca2920ad2cec07a07770ab383af106ea05976614479e47bbcf8b8e55ca683505e6da73cccb28b5286d1941f1316c31290986078e4a5695f10c0b88099bf8822e4fb9977101fb4cb9f32f2e22215589f29ee22bdf9946bee0412c29dee67a4d1127cd625162eea594b8315a760671017098f328353c979367a45c0a6837371417198b2b18038dce8a6e5a31619ba950384b08a67cc0432aef8825b4660321030d7cc1bbce3c4a7a5413217714a0cb2df46e13f1c94336cfa1fec010c0f99ef54141c371565a9e4def1159f7362509accf653dcaaf2392997668998602b19ecc12fe510fc26c2c765996c8dc82b91ce075b9745164a6ed0770a564af711bcff21e4a75f11276118ea150118cc0ec078d767147902894c6b54381438600c99957c8bc6a10f4db136e3286f7c8b7a198beab9132a795980dddbafa94e6d9833a8d8c4b19134aad462363996ca2b6bc9e25366198287b2b1920b4f89fb4a2df89dc29ee616cdc293167094215899d444dcc0009edb82f060a183a52854ac975ea74f13540ee012cc60968a3e2a148b6369a261985d16bbec2cbb712e81c65dff8798b428fa32ecc3f713673c816b7e61d1941b3e12cbdea506d9e13c0bc823774253bf33cbcccc61a5e61b6d0343b608df6658b6cdd41f1f7106a02b18ec181ac4d2063b174d763ac143641b28fa83d105ff72c5b94e04486aa2da5a6e3b5d90309db1bd0188598029dcc1543ea235823048cd5ea3204502b110dfe600363b1e97fea03673e65806aeb71321df30b56e16da252b2fcc453fc991a08203356c0e9cdcc2f1057752ce57113238a60b31888fd3b2978b81f0765f516971895c682ea39ceee6550fd416f1f73263c4a4458372bce9a99723b99416aaa59d2b59823afcc0bc5c04f89905f219db880dedf52cd32833983346a52eecf261e3ccb39b2da89e8a9471d2669194fd09fa4f2b89e1773427104d5d3d5c54ce7d468dd416b24e04165958e441fb4aab4ee5fb9666f3d83d39b9461d983304b10721d7a99a6aabdcb28d40b83108e04a51b4c26fdcc208d756a3cc03e900000d4bbfb894176b98a92e730eb8726d3e2059af31ea8dc3b004edd63926df71a73b1dcecd44b936c0959c3b86416ee60b9772ed3134d4a5db051f5045e594aa7b12934d1e270ac9d8e14f20099e6e64e4c40e5ca04aa95d8d16730717cf105cfea6fc2c44b98acdcce29a203d419f989831b824534cb497313e2e474b0b6d2ba582a8f947a788966f3663d4296990d975ea02e6784a81aa8656638ceb1a3586621597b322e64018bf73685cab0d75821b3a4aa2dcc46b8065c39066ef1e265636cb5bc788f7c3150b4f13fffd9, 'anthony_rk_al_tlv@hotmail.com', 'M', '');

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
  `PrecioUnitario` double NOT NULL DEFAULT 0,
  `UnidadesEnStock` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UnidadesEnPedido` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `NivelReorden` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Descontinuado` enum('s','n') NOT NULL DEFAULT 'n',
  `preciopaquete` decimal(10,2) NOT NULL,
  `unidadesporpaquete` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`IdProducto`, `NombreProducto`, `IdProveedor`, `IdCategoria`, `CantidadPorUnidad`, `PrecioUnitario`, `UnidadesEnStock`, `UnidadesEnPedido`, `NivelReorden`, `Descontinuado`, `preciopaquete`, `unidadesporpaquete`) VALUES
(3, 'Leche Gloria Grande Azul', 2, 4, '', 3.5, 13, 0, 0, 'n', 72.00, 24),
(4, 'Leche Gloria Grande Rojo', 2, 4, '', 3.6, 14, 0, 0, 'n', 74.00, 24),
(5, 'Aceite Deli Litro', 1, 8, '', 6, 13, 0, 0, 'n', 50.00, 12),
(6, 'Leche Gloria Chica Azul', 2, 4, '', 1.8, 14, 0, 0, 'n', 44.00, 44),
(7, 'Arroz Cacerita', 2, 9, '', 3.2, 49, 0, 0, 'n', 140.00, 49),
(8, 'Azucar Rubia', 2, 9, '', 3, 59, 0, 0, 'n', 120.00, 49),
(9, 'Ajinomen Gallina', 2, 10, '', 1.2, 14, 0, 0, 'n', 22.00, 24),
(10, 'Fideos Tallarín delgado anita', 2, 9, '', 1.5, 3, 0, 0, 'n', 26.00, 20),
(11, 'Fideos Tallarín Grueso anita', 2, 9, '', 1.5, 8, 0, 0, 'n', 26.00, 20),
(12, 'Sal Grande', 2, 9, '', 1.5, 18, 0, 0, 'n', 28.00, 24),
(13, 'Sal Chica', 2, 9, '', 0.8, 42, 0, 0, 'n', 25.00, 50),
(14, 'Aceite Real chico 200ml', 2, 9, '', 1.5, 13, 0, 0, 'n', 26.00, 24),
(15, 'Papel higienico', 2, 11, '', 0.8, 31, 0, 0, 'n', 9.00, 20),
(16, 'Papel toalla Nova', 2, 11, '', 2, 21, 0, 0, 'n', 20.00, 12),
(17, 'Galleta soda  comida', 2, 3, '', 1.7, 2, 0, 0, 'n', 17.00, 12),
(18, 'soda d comida', 1, 3, '', 1.5, 1, 0, 0, 'n', 15.00, 2),
(19, 'Galleta soda transparente comida', 2, 3, '', 1.5, 12, 0, 0, 'n', 15.00, 12),
(20, 'Galleta cragner', 2, 3, '', 1.7, 24, 0, 0, 'n', 8.50, 12),
(21, 'Quaquer suelto', 2, 9, '', 6, 10, 0, 0, 'n', 40.00, 10),
(22, 'Fideos sopa lenysol', 3, 9, '', 3, 20, 0, 0, 'n', 13.50, 5),
(23, 'Frugos de litro', 2, 1, '', 4, 12, 0, 0, 'n', 41.00, 12),
(24, 'Coca-Cola litro y medio', 2, 9, '', 5, 12, 0, 0, 'n', 54.00, 12),
(25, 'INCA COLA  LITRO', 2, 1, '', 3.5, 12, 0, 0, 'n', 34.00, 12),
(26, 'KR  1 -7', 3, 1, '', 3, 12, 0, 0, 'n', 15.00, 6),
(27, 'Atún filete', 3, 9, '', 4, 12, 0, 0, 'n', 34.00, 12);

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
(45, '2020-06-20', '01:49:37');

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
(6, 11, 1.000, NULL, NULL, NULL, 8),
(7, 13, 2.000, NULL, NULL, NULL, 6),
(8, 13, 1.000, NULL, NULL, NULL, 10),
(9, 15, 2.000, NULL, NULL, NULL, 6),
(10, 15, 3.000, NULL, NULL, NULL, 20),
(16, 17, 1.000, NULL, NULL, NULL, 5),
(21, 20, 3.500, NULL, NULL, NULL, 8),
(22, 21, 1.500, NULL, NULL, NULL, 7),
(23, 21, 1.250, NULL, NULL, NULL, 8),
(26, 20, 0.500, NULL, NULL, NULL, 7),
(27, 29, 1.000, NULL, NULL, NULL, 6),
(28, 29, 0.250, NULL, NULL, NULL, 21),
(29, 30, 0.500, NULL, NULL, NULL, 7),
(30, 30, 0.250, NULL, NULL, NULL, 8),
(31, 31, 0.250, NULL, NULL, NULL, 7),
(32, 31, 0.500, NULL, NULL, NULL, 8),
(33, 35, 1.000, NULL, NULL, NULL, 5),
(35, 36, 4.000, NULL, NULL, NULL, 9),
(36, 37, 2.000, NULL, NULL, NULL, 5),
(37, 39, 1.000, NULL, NULL, NULL, 5),
(38, 40, 1.000, NULL, NULL, NULL, 5),
(39, 40, 1.000, NULL, NULL, NULL, 3),
(40, 40, 0.250, NULL, NULL, NULL, 21),
(41, 40, 1.000, NULL, NULL, NULL, 8),
(42, 40, 1.000, NULL, NULL, NULL, 7),
(43, 40, 0.250, NULL, NULL, NULL, 22),
(44, 40, 1.000, NULL, NULL, NULL, 9),
(45, 40, 1.000, NULL, NULL, NULL, 17),
(46, 40, 1.000, NULL, NULL, NULL, 23),
(47, 44, 1.000, NULL, NULL, NULL, 5);

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
  MODIFY `IdProducto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `idventas` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

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
