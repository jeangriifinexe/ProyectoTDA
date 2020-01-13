-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-12-2019 a las 16:00:20
-- Versión del servidor: 5.7.15-log
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdripley`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `habitaciones` (
  `id` varchar(8) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `lugar` varchar(30) DEFAULT NULL,
  `categoria` varchar(20) DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `precioantes` double DEFAULT NULL,
  `preciounitario` double DEFAULT NULL,
  `imagen` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `habitaciones` (`id`, `nombre`, `lugar`, `categoria`, `tipo`, `precioantes`, `preciounitario`, `imagen`) VALUES
('A0000001', 'HOTEL CASA ANDINA STANDARD PIURA ***', 'PIURA', 'STANDARD', 'HOTEL', 77, 69.30, 'HCASP.JPG'),
('B0000002', 'HOTEL CASA ANDINA PREMIUM AREQUIPA *****', 'AREQUIPA', 'PREMIUM', 'HOTEL', 133.00, 113.05, 'HCAPA.JPG'),
('C0000003', 'HOTEL CASA ANDINA PREMIUM SAN ISIDRO *****', 'LIMA', 'PREMIUM', 'HOTEL', 184, 115.92, 'HCAPSI.JPG'),
('D0000004', 'HOTEL CASA ANDINA STANDARD CUSCO CATEDRAL ***', 'CUSCO', 'STANDARD', 'HOTEL', 93, 74.40, 'HCASCC.JPG'),
('E0000005', 'HOTEL CASA ANDINA STANDARD CUSCO SAN BLAS ***', 'CUSCO', 'STANDARD', 'HOTEL', 100, 70, 'HCASCSB.JPG'),
('F0000006', 'HOTEL CASA ANDINA STANDARD PUNO ***', 'PUNO', 'STANDARD', 'HOTEL', 73, 54.75, 'HCASPU.JPG'),
('G0000007', 'HOTEL CASA ANDINA SELECT AREQUIPA PLAZA ****', 'AREQUIPA', 'SELECT', 'HOTEL', 110, 93.50, 'HCASAP.JPG'),
('H0000008', 'HOTEL CASA ANDINA STANDARD NASCA ***', 'NASCA', 'STANDARD', 'HOTEL', 80, 64, 'HCASN.JPG'),
('I0000009', 'HOTEL CASA ANDINA SELECT MOQUEGUA ****', 'MOQUEGUA', 'SELECT', 'HOTEL', 91, 68.25, 'HCASM.JPG'),
('J0000010', 'HOTEL CASA ANDINA STANDARD COLCA ***', 'CHIVAY', 'STANDARD', 'HOTEL', 80, 61.20, 'HCASCO.JPG'),
('K0000011', 'HOTEL CASA ANDINA STANDARD CUSCO KORICANCHA ***', 'CUSCO', 'STANDARD', 'HOTEL', 107, 74.90, 'HCASCK.JPG'),
('M0000013', 'HOTEL CASA ANDIDA PREMIUM VALLE SAGRADO *****', 'VALLE SAGRADO', 'PREMIUM', 'HOTEL', 160, 92.80, 'HCAPVS.JPG'),
('N0000014', 'HOTEL CASA ANDINA SELECT MIRAFLORES ****', 'LIMA', 'SELECT', 'HOTEL', 119, 95.20, 'HCASMI.JPG'),
('Ñ0000015', 'HOTEL CASA ANDINA PREMIUM PUNO *****', 'PUNO', 'PREMIUM', 'HOTEL', 125, 93.75, 'HCAPPU.JPG'),
('O0000016', 'HOTEL CASA ANDINA STANDARD MACHU PICCHU ***', 'CUSCO', 'STANDARD', 'HOTEL', 117, 84.94, 'HCASMP.JPG'),
('P0000017', 'HABITACION SUPERIOR MATRIMONIAL', 'TODO', 'PREMIUM', 'HABITACION', 143, 121.55, 'HSM.JPG'),
('Q0000018', 'HABITACION SUPERIOR TWIN', 'TODO', 'PREMIUM', 'HABITACION', 143, 121.55, 'HSTW.JPG'),
('R0000019', 'SUITE', 'TODO', 'SELECT', 'HABITACION', 203, 157.53, 'SUITE.JPG'),
('S0000020', 'SENIOR SUITE', 'TODO', 'STANDARD', 'HABITACION', 223, 178.40, 'SENIOR SUITE.JPG'),
('T0000021', 'SUITE MATRIMONIAL', 'TODO', 'SELECT', 'HABITACION', 174, 118.15, 'SMA.JPG'),
('U0000022', 'HABITACION SUPERIOR TWIN CON TERRAZA', 'TODO', 'PREMIUM', 'HABITACION', 160, 136, 'HSTCT.JPG'),
('V0000023', 'HABITACION TRADICIONAL TWIN', 'TODO', 'SELECT', 'HABITACION', 80, 64, 'HTT.JPG'),
('W0000024', 'HABITACION SUPERIOR MATRIMONIAL', 'TODO', 'PREMIUM', 'HABITACION', 95, 73.72, 'HSM.JPG');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
