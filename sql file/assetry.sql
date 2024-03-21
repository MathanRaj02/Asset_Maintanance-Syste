-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 06, 2023 at 08:53 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assetry`
--

-- --------------------------------------------------------

--
-- Table structure for table `assettable`
--

DROP TABLE IF EXISTS `assettable`;
CREATE TABLE IF NOT EXISTS `assettable` (
  `value` varchar(500) NOT NULL,
  `asset_name` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `assettable`
--

INSERT INTO `assettable` (`value`, `asset_name`) VALUES
(' Office Table', ' Office Table'),
(' Silver Water Doctor', ' Silver Water Doctor'),
(' Water Doctor', ' Water Doctor'),
('0db antenna ', '0db antenna '),
('1 ohm coil', '1 ohm coil'),
('1/2 H.P. motorised power blower', '1/2 H.P. motorised power blower'),
('10 SQ mm Copper Socket (Lugs)', '10 SQ mm Copper Socket (Lugs)'),
('10*10 Steel Fram', '10*10 Steel Fram'),
('10*12 Steel Fram', '10*12 Steel Fram'),
('10*6 Steel fram', '10*6 Steel fram'),
('100 ml Beaker Borosil ® (\'BR\')', '100 ml Beaker Borosil ® (\'BR\')'),
('100 ml SMF Borosil ® \'BR\'', '100 ml SMF Borosil ® \'BR\''),
('1000 ltr Sintex Water Tank', '1000 ltr Sintex Water Tank'),
('1000 ml PVC Beaker', '1000 ml PVC Beaker'),
('18” Dia test Sieve', '18” Dia test Sieve'),
('2000 ltr Sintex Water Tank', '2000 ltr Sintex Water Tank'),
('24 v smf battery', '24 v smf battery'),
('250 ml Beaker Borosil ® \'BR\'', '250 ml Beaker Borosil ® \'BR\''),
('250 ml SMF Borosil ® \'BR\'', '250 ml SMF Borosil ® \'BR\''),
('250W Metal Holied (MH fitting) focus light ', '250W Metal Holied (MH fitting) focus light '),
('3 Pin Socket', '3 Pin Socket'),
('3000 ltr Sintex Water Tank', '3000 ltr Sintex Water Tank'),
('3ph , 440V, 15 Amps Auto Transformer AE make ', '3ph , 440V, 15 Amps Auto Transformer AE make '),
('3ph Auto Transformer 15 Amps', '3ph Auto Transformer 15 Amps'),
('3ph Auto Transformer AE make 15 Amps', '3ph Auto Transformer AE make 15 Amps'),
('4 mm wire Sleeve', '4 mm wire Sleeve'),
('4*4 Steel fram', '4*4 Steel fram'),
('4+1 Gang Box', '4+1 Gang Box'),
('5 HP DC 3 point starter', '5 HP DC 3 point starter'),
('5 HP DC 4 point starter', '5 HP DC 4 point starter'),
('500 kva transformer ', '500 kva transformer '),
('500 ml PVC Beaker', '500 ml PVC Beaker'),
('8 Channel ADC Standalone', '8 Channel ADC Standalone'),
('8*6 Steel Pipe', '8*6 Steel Pipe'),
('8” brass test Sieve size', '8” brass test Sieve size'),
('8” dia Brass test Sieves', '8” dia Brass test Sieves'),
('800 A main Switch Panel', '800 A main Switch Panel'),
('8051 Microcontroller trainer Kit', '8051 Microcontroller trainer Kit'),
('A.E Make 1 ph, 10A Auto Transformer', 'A.E Make 1 ph, 10A Auto Transformer'),
('A.E Make 1 ph, 10A Indoor type Auto Transformer', 'A.E Make 1 ph, 10A Indoor type Auto Transformer'),
('A.E Make 1 ph, 230V/115V Transformer', 'A.E Make 1 ph, 230V/115V Transformer'),
('A.E Make 1 ph, Double Wound, 1 KVA air cooled Transformer', 'A.E Make 1 ph, Double Wound, 1 KVA air cooled Transformer'),
('A.E Make 3 ph, 440V/220V Transformer', 'A.E Make 3 ph, 440V/220V Transformer'),
('Abdomen Bench', 'Abdomen Bench'),
('Abdomen Vibrator', 'Abdomen Vibrator'),
('AC', 'AC'),
('AC ', 'AC '),
('AC 2 Ton', 'AC 2 Ton'),
('AC 3 Ton', 'AC 3 Ton'),
('AC 3Ton', 'AC 3Ton'),
('AC position control system', 'AC position control system'),
('AC stabilizer', 'AC stabilizer'),
('AC with Steblizer', 'AC with Steblizer'),
('Accelerometers-Vibration Pickup,Displacement Meter & Vibration shaker', 'Accelerometers-Vibration Pickup,Displacement Meter & Vibration shaker'),
('Acetylene Cylinder', 'Acetylene Cylinder'),
('Acetylene Regulator', 'Acetylene Regulator'),
('Adjustable Open Channel flow Apparatus', 'Adjustable Open Channel flow Apparatus'),
('Advanced Fiber Optical Trainer Kit Scientech Make, ST2502A', 'Advanced Fiber Optical Trainer Kit Scientech Make, ST2502A'),
('AE make 1ph Single Element Wattmeter ( 150/300/600V), 5/10A) LPF', 'AE make 1ph Single Element Wattmeter ( 150/300/600V), 5/10A) LPF'),
('AE make 1ph Single Element Wattmeter ( 150/300V, 0-10A) LPF', 'AE make 1ph Single Element Wattmeter ( 150/300V, 0-10A) LPF'),
('AE make 1ph Single Element Wattmeter (300/600V,5/10A) LPF', 'AE make 1ph Single Element Wattmeter (300/600V,5/10A) LPF'),
('AE make 1ph Single Element Wattmeter (300/600V,5A) UPF', 'AE make 1ph Single Element Wattmeter (300/600V,5A) UPF'),
('AE make 1ph Wattmeter ( 300/600V, 0.5A) UPF', 'AE make 1ph Wattmeter ( 300/600V, 0.5A) UPF'),
('AE Make Inductive Load , 10 Amps 3 Phase', 'AE Make Inductive Load , 10 Amps 3 Phase'),
('AE make Portable type  Ammeter (0-2)A', 'AE make Portable type  Ammeter (0-2)A'),
('AE make Portable Type  Ammeter MI (0-2.5/5A)', 'AE make Portable Type  Ammeter MI (0-2.5/5A)'),
('AE make Portable Type  Ammeter MI (0-5/10A)', 'AE make Portable Type  Ammeter MI (0-5/10A)'),
('AE make Portable Type  Wattmeter ( 150/300/600V), 5/10A) LPF', 'AE make Portable Type  Wattmeter ( 150/300/600V), 5/10A) LPF'),
('AE make Portable Type  Wattmeter (0-600V), 10/20A) UPF', 'AE make Portable Type  Wattmeter (0-600V), 10/20A) UPF'),
('AE make Portable type MC  Ammeter (0-10)A', 'AE make Portable type MC  Ammeter (0-10)A'),
('AE make Portable type MC Ammeter (0-2)A', 'AE make Portable type MC Ammeter (0-2)A'),
('AE make Portable type MC Ammeter (0-30)A', 'AE make Portable type MC Ammeter (0-30)A'),
('AE make Portable type MC Ammeter (0-5)A', 'AE make Portable type MC Ammeter (0-5)A'),
('AE make Portable type MC Voltmeter (0-300)V', 'AE make Portable type MC Voltmeter (0-300)V'),
('AE make Portable type MC Voltmeter (0-75)V', 'AE make Portable type MC Voltmeter (0-75)V'),
('AE make Portable type MI  Voltmeter (0-300/600)V', 'AE make Portable type MI  Voltmeter (0-300/600)V'),
('AE make Portable type Watt meter MI (0-600)AC', 'AE make Portable type Watt meter MI (0-600)AC'),
('AE make Portable type Wattmeter UPF (0-150/300V; 5V/10A)', 'AE make Portable type Wattmeter UPF (0-150/300V; 5V/10A)'),
('AE make Portable type Wattmeter UPF (0-300V; 5V/10A)', 'AE make Portable type Wattmeter UPF (0-300V; 5V/10A)'),
('Aggregate impact testing machine', 'Aggregate impact testing machine'),
('Air Conditioner', 'Air Conditioner'),
('Air conditioner trainer (duct type)', 'Air conditioner trainer (duct type)'),
('Air wedge app. Set with Travelling Microscope (full set)', 'Air wedge app. Set with Travelling Microscope (full set)'),
('Air wedge plane glass plate', 'Air wedge plane glass plate'),
('Airwedge Newton\'s ring apparatus (45°  glass plate)', 'Airwedge Newton\'s ring apparatus (45°  glass plate)'),
('All Geared-BANKA Lathe ', 'All Geared-BANKA Lathe '),
('Allen key', 'Allen key'),
('ALS - SDA -FPGA -01 SPARTAN 3E UNIVERSAL FPGA TRAINER KIT', 'ALS - SDA -FPGA -01 SPARTAN 3E UNIVERSAL FPGA TRAINER KIT'),
('ALS - SDA -FPGA -03 UNIVERSAL FPGA TRAINER KIT', 'ALS - SDA -FPGA -03 UNIVERSAL FPGA TRAINER KIT'),
('Altera Quartus', 'Altera Quartus'),
('Aluminium bouvl', 'Aluminium bouvl'),
('Aluminium Mug', 'Aluminium Mug'),
('Aluminium plate', 'Aluminium plate'),
('AMP with Table', 'AMP with Table'),
('Analog IC tester', 'Analog IC tester'),
('Analog simulation of type-0 and type-1 system', 'Analog simulation of type-0 and type-1 system'),
('Angle Grinder', 'Angle Grinder'),
('Make\"', '\"Angle Lamp holder \"\"ANCHOR\"\" ');

-- --------------------------------------------------------

--
-- Table structure for table `asset_entry`
--

DROP TABLE IF EXISTS `asset_entry`;
CREATE TABLE IF NOT EXISTS `asset_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset_name` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `asset_loc` varchar(500) NOT NULL,
  `dop` varchar(500) NOT NULL,
  `remarks` varchar(500) NOT NULL,
  `cost` varchar(30) NOT NULL,
  `insert_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `asset_entry`
--

INSERT INTO `asset_entry` (`id`, `asset_name`, `asset_loc`, `dop`, `remarks`, `cost`, `insert_date`) VALUES
(6, 'Admin', 'B2CS2', '22/09/2003', 'good', '100000', '2023-12-06 06:57:02'),
(7, 'Admin', 'B2CS2', '22/09/2003', 'good', '100000', '2023-12-06 06:57:02'),
(8, 'Admin', 'B4CS4', '22/09/2003', 'good', '100000', '2023-12-06 06:57:02'),
(9, 'Admin', 'B1CS6', '22/09/2003', 'good', '100000', '2023-12-06 06:57:02'),
(20, 'steel bench', 'B3CS3', '22/09/2003', 'bad', '100000', '2023-12-06 06:57:02'),
(21, 'Chair', 'B3CS3', '21/09/2003', 'good', '100000', '2023-12-06 06:57:02'),
(22, 'Admin', 'B3CS3', '22/09/2003', 'good', '100000', '2023-12-06 06:57:02'),
(23, 'Admin', 'B3CS3', '22/09/2003', 'good', '100000', '2023-12-06 06:57:02'),
(24, 'Admin', 'B3CS3', '22/09/2003', 'good', '100000', '2023-12-06 06:57:02'),
(25, 'Admin', 'B2CS2', '22/09/2003', 'good', '100000', '2023-12-06 06:57:02'),
(26, 'Admin', 'B2CS2', '22/09/2003', 'good', '100000', '2023-12-06 06:57:02'),
(27, 'Admin', 'B4CS4', '22/09/2003', 'good', '100000', '2023-12-06 06:57:02'),
(28, 'Admin', 'B1CS6', '22/09/2003', 'good', '100000', '2023-12-06 06:57:02'),
(39, 'Admin', 'B4CS9', '22/09/2003', 'good', '100000', '2023-12-06 06:57:02'),
(40, 'Admin', 'B2CS2', '22/09/2003', 'good', '100000', '2023-12-06 06:57:02'),
(41, 'Admin', 'B1CS1', '22/09/2003', 'good', '100000', '2023-12-06 06:57:24'),
(42, 'Admin', 'B2CS2', '22/09/2003', 'good', '100000', '2023-12-06 06:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `loc_id` int NOT NULL AUTO_INCREMENT,
  `val_loc` varchar(500) NOT NULL,
  `asset_loc` varchar(500) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`loc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`loc_id`, `val_loc`, `asset_loc`, `description`) VALUES
(5, 'B5CS5', 'B5CS5', 'ejnvcjenvjke'),
(6, 'B1CS6', 'B1CS6', 'jdvbejdvbkjv'),
(7, 'B2CS7', 'B2CS7', 'rdjvkjebvev'),
(8, 'B1CS111', 'B1CS111', 'sample'),
(9, 'B4CS9', 'B4CS9', 'vjvbev'),
(10, 'B5CS10', 'B5CS10', 'jebnhjvbrehv'),
(11, 'B1CS11', 'B1CS11', NULL),
(12, 'B2CS12', 'B2CS12', NULL),
(13, 'B3CS13', 'B3CS13', NULL),
(14, 'B4CS14', 'B4CS14', NULL),
(15, 'B5CS15', 'B5CS15', NULL),
(16, 'B1CS16', 'B1CS16', NULL),
(17, 'B2CS17', 'B2CS17', NULL),
(18, 'B3CS18', 'B3CS18', NULL),
(19, 'B4CS19', 'B4CS19', NULL),
(20, 'B5CS20', 'B5CS20', NULL),
(21, 'B1CS21', 'B1CS21', NULL),
(22, 'B2CS22', 'B2CS22', NULL),
(23, 'B3CS23', 'B3CS23', NULL),
(24, 'B4CS24', 'B4CS24', NULL),
(25, 'B5CS25', 'B5CS25', NULL),
(26, 'B1CS26', 'B1CS26', NULL),
(27, 'B2CS27', 'B2CS27', NULL),
(28, 'B3CS28', 'B3CS28', NULL),
(29, 'B4CS29', 'B4CS29', NULL),
(30, 'B5CS30', 'B5CS30', NULL),
(31, 'B1CS31', 'B1CS31', NULL),
(32, 'B2CS32', 'B2CS32', NULL),
(33, 'B3CS33', 'B3CS33', NULL),
(34, 'B4CS34', 'B4CS34', NULL),
(35, 'B5CS35', 'B5CS35', NULL),
(36, 'B1CS36', 'B1CS36', NULL),
(37, 'B2CS37', 'B2CS37', NULL),
(38, 'B3CS38', 'B3CS38', NULL),
(39, 'B4CS39', 'B4CS39', NULL),
(40, 'B5CS40', 'B5CS40', NULL),
(41, 'sample location', 'sample location', 'checking phase 1 test');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
