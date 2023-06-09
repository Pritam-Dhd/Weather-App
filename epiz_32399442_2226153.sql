-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql112.infinityfree.com
-- Generation Time: Jun 07, 2023 at 04:26 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_32399442_2226153`
--

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE `weather` (
  `name` varchar(255) DEFAULT NULL,
  `dt` datetime DEFAULT NULL,
  `lat` decimal(10,4) DEFAULT NULL,
  `lon` decimal(10,4) DEFAULT NULL,
  `con` varchar(255) DEFAULT NULL,
  `speed` decimal(10,3) DEFAULT NULL,
  `direction` int(11) DEFAULT NULL,
  `temp` decimal(10,3) DEFAULT NULL,
  `humidity` int(11) DEFAULT NULL,
  `pressure` int(11) DEFAULT NULL,
  `sunrise` int(11) DEFAULT NULL,
  `sunset` int(11) DEFAULT NULL,
  `W_Main` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`name`, `dt`, `lat`, `lon`, `con`, `speed`, `direction`, `temp`, `humidity`, `pressure`, `sunrise`, `sunset`, `W_Main`) VALUES
('Doncaster', '2022-09-02 07:44:04', '53.5233', '-1.1369', 'few clouds', '3.090', 40, '20.240', 72, 1015, 1662095717, 1662144824, 'Clouds'),
('Doncaster', '2022-09-02 07:44:08', '53.5233', '-1.1369', 'few clouds', '3.090', 40, '20.240', 72, 1015, 1662095717, 1662144824, 'Clouds'),
('Doncaster', '2022-09-02 07:46:17', '53.5233', '-1.1369', 'few clouds', '3.090', 40, '20.240', 72, 1015, 1662095717, 1662144824, 'Clouds'),
('Doncaster', '2022-09-02 07:46:20', '53.5233', '-1.1369', 'few clouds', '3.090', 40, '20.240', 72, 1015, 1662095717, 1662144824, 'Clouds'),
('Doncaster', '2022-09-02 07:47:43', '53.5233', '-1.1369', 'few clouds', '3.090', 40, '20.240', 72, 1015, 1662095717, 1662144824, 'Clouds'),
('Doncaster', '2022-09-02 07:47:44', '53.5233', '-1.1369', 'few clouds', '3.090', 40, '20.240', 72, 1015, 1662095717, 1662144824, 'Clouds'),
('Doncaster', '2022-09-02 07:48:10', '53.5233', '-1.1369', 'few clouds', '3.090', 40, '20.240', 72, 1015, 1662095717, 1662144824, 'Clouds'),
('Doncaster', '2022-09-02 07:48:12', '53.5233', '-1.1369', 'few clouds', '3.090', 40, '20.240', 72, 1015, 1662095717, 1662144824, 'Clouds'),
('Doncaster', '2022-09-02 07:48:41', '53.5233', '-1.1369', 'few clouds', '3.090', 40, '20.240', 72, 1015, 1662095717, 1662144824, 'Clouds'),
('Doncaster', '2022-09-02 07:48:43', '53.5233', '-1.1369', 'few clouds', '3.090', 40, '20.240', 72, 1015, 1662095717, 1662144824, 'Clouds'),
('Doncaster', '2022-09-02 07:49:33', '53.5233', '-1.1369', 'few clouds', '3.090', 40, '20.240', 72, 1015, 1662095717, 1662144824, 'Clouds'),
('Doncaster', '2022-09-02 07:49:57', '53.5233', '-1.1369', 'few clouds', '3.090', 40, '20.240', 72, 1015, 1662095717, 1662144824, 'Clouds'),
('Kathmandu', '2022-09-02 07:57:18', '27.7167', '85.3167', 'scattered clouds', '4.630', 290, '25.120', 69, 1013, 1662076679, 1662122374, 'Clouds'),
('Doncaster', '2022-09-02 07:57:28', '53.5233', '-1.1369', 'few clouds', '3.090', 40, '20.300', 72, 1015, 1662095717, 1662144824, 'Clouds'),
('Doncaster', '2022-09-02 08:18:07', '53.5233', '-1.1369', 'few clouds', '3.090', 50, '21.040', 68, 1015, 1662095717, 1662144824, 'Clouds'),
('Doncaster', '2022-09-02 08:19:52', '53.5233', '-1.1369', 'few clouds', '3.090', 50, '21.040', 68, 1015, 1662095717, 1662144824, 'Clouds'),
('Doncaster', '2022-09-02 13:44:22', '53.5233', '-1.1369', 'light rain', '2.570', 70, '20.860', 62, 1012, 1662095717, 1662144824, 'Rain'),
('Doncaster', '2022-09-02 20:57:41', '53.5233', '-1.1369', 'clear sky', '1.030', 50, '16.440', 89, 1010, 1662182222, 1662231081, 'Clear'),
('Doncaster', '2022-09-03 02:47:32', '53.5233', '-1.1369', 'overcast clouds', '2.060', 240, '16.250', 92, 1009, 1662182222, 1662231081, 'Clouds'),
('Doncaster', '2022-09-05 02:49:12', '53.5233', '-1.1369', 'scattered clouds', '1.540', 140, '15.710', 98, 1016, 1662355230, 1662403592, 'Clouds'),
('Doncaster', '2022-09-05 02:49:36', '53.5233', '-1.1369', 'scattered clouds', '1.540', 140, '15.710', 98, 1016, 1662355230, 1662403592, 'Clouds'),
('Doncaster', '2022-09-07 03:11:08', '53.5233', '-1.1369', 'broken clouds', '2.570', 140, '15.400', 93, 1008, 1662528238, 1662576102, 'Clouds'),
('Doncaster', '2022-09-07 21:04:08', '53.5233', '-1.1369', 'overcast clouds', '0.510', 0, '13.640', 94, 1006, 1662614742, 1662662356, 'Clouds'),
('Doncaster', '2022-09-07 22:31:28', '53.5233', '-1.1369', 'clear sky', '1.030', 120, '13.450', 94, 1006, 1662614742, 1662662356, 'Clear'),
('Doncaster', '2022-09-09 08:46:28', '53.5233', '-1.1369', 'scattered clouds', '4.120', 340, '18.380', 82, 1007, 1662701246, 1662748609, 'Clouds'),
('Doncaster', '2022-09-09 08:48:09', '53.5233', '-1.1369', 'scattered clouds', '4.120', 340, '18.380', 82, 1007, 1662701246, 1662748609, 'Clouds'),
('Doncaster', '2022-09-09 23:40:07', '53.5233', '-1.1369', 'broken clouds', '3.600', 310, '15.020', 91, 1013, 1662787750, 1662834863, 'Clouds'),
('Doncaster', '2022-09-11 00:18:51', '53.5233', '-1.1369', 'broken clouds', '0.510', 0, '13.110', 94, 1020, 1662874254, 1662921116, 'Clouds'),
('Doncaster', '2022-09-11 06:20:34', '53.5233', '-1.1369', 'broken clouds', '2.060', 190, '16.510', 85, 1020, 1662874254, 1662921116, 'Clouds'),
('Doncaster', '2022-09-12 00:03:36', '53.5233', '-1.1369', 'broken clouds', '4.630', 190, '15.970', 91, 1011, 1662960758, 1663007368, 'Clouds'),
('Doncaster', '2022-09-17 11:22:12', '53.5233', '-1.1369', 'clear sky', '4.630', 320, '16.720', 49, 1022, 1663393277, 1663438629, 'Clear'),
('Doncaster', '2022-09-17 11:22:27', '53.5233', '-1.1369', 'clear sky', '4.630', 320, '16.720', 49, 1022, 1663393277, 1663438629, 'Clear'),
('Doncaster', '2022-09-19 10:50:15', '53.5233', '-1.1369', 'scattered clouds', '1.540', 0, '15.380', 65, 1025, 1663566285, 1663611132, 'Clouds'),
('Doncaster', '2022-09-21 11:56:09', '53.5233', '-1.1369', 'clear sky', '5.140', 210, '18.690', 55, 1024, 1663739293, 1663783635, 'Clear'),
('Doncaster', '2022-09-23 01:14:17', '53.5233', '-1.1369', 'broken clouds', '3.600', 310, '13.130', 90, 1016, 1663912302, 1663956138, 'Clouds'),
('Doncaster', '2022-10-11 22:27:13', '53.5233', '-1.1369', 'overcast clouds', '3.560', 192, '7.680', 86, 1021, 1665555932, 1665594977, 'Clouds'),
('Doncaster', '2022-11-06 01:35:18', '53.5233', '-1.1369', 'fog', '2.060', 170, '7.340', 97, 1001, 1667718776, 1667751804, 'Fog'),
('Doncaster', '2022-12-01 22:47:18', '53.5233', '-1.1369', 'overcast clouds', '0.740', 138, '2.750', 95, 1028, 1669967944, 1669996147, 'Clouds'),
('Doncaster', '2022-12-22 00:56:43', '53.5233', '-1.1369', 'overcast clouds', '2.930', 227, '3.400', 92, 1001, 1671697152, 1671724010, 'Clouds'),
('Doncaster', '2022-12-22 07:24:09', '53.5233', '-1.1369', 'light rain', '0.210', 124, '6.840', 94, 1001, 1671697152, 1671724010, 'Rain'),
('Doncaster', '2023-02-18 07:01:27', '53.5233', '-1.1369', 'overcast clouds', '6.250', 270, '12.770', 75, 1017, 1676704681, 1676740758, 'Clouds'),
('Doncaster', '2023-02-19 06:28:25', '53.5233', '-1.1369', 'broken clouds', '4.680', 283, '9.990', 73, 1026, 1676790953, 1676827276, 'Clouds'),
('Doncaster', '2023-02-22 06:26:18', '53.5233', '-1.1369', 'overcast clouds', '3.260', 275, '8.380', 83, 1009, 1677049762, 1677086830, 'Clouds'),
('Doncaster', '2023-04-05 22:42:26', '53.5233', '-1.1369', 'light rain', '2.160', 217, '9.160', 94, 1010, 1680758797, 1680806827, 'Rain'),
('Doncaster', '2023-05-12 21:48:27', '53.5233', '-1.1369', 'few clouds', '3.480', 343, '8.610', 87, 1029, 1683950879, 1684007636, 'Clouds'),
('Doncaster', '2023-05-15 23:20:45', '53.5233', '-1.1369', 'few clouds', '2.950', 297, '6.730', 89, 1023, 1684209782, 1684267138, 'Clouds'),
('Doncaster', '2023-05-17 04:48:40', '53.5233', '-1.1369', 'overcast clouds', '1.570', 343, '14.590', 79, 1029, 1684296087, 1684353637, 'Clouds'),
('Doncaster', '2023-06-07 04:23:12', '53.5233', '-1.1369', 'scattered clouds', '3.550', 66, '11.800', 79, 1025, 1686109082, 1686169735, 'Clouds');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
