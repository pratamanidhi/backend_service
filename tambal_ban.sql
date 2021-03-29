-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2021 at 04:46 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tambal_ban`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_tambal_ban` int(11) NOT NULL,
  `namauser` varchar(255) NOT NULL,
  `tanggal_booking` varchar(255) NOT NULL,
  `jam_booking` varchar(255) NOT NULL,
  `jenis_kendaraan` varchar(255) NOT NULL,
  `request` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `id_user`, `id_tambal_ban`, `namauser`, `tanggal_booking`, `jam_booking`, `jenis_kendaraan`, `request`) VALUES
(2, 1, 0, 'Ewek', '', '2021-01-20 02:00:00', '', 'Mau ++ Ceuenya!!!'),
(3, 1, 0, '12345678', '', 'adhit', '', 'adhit'),
(4, 1, 1, '12345678', '', 'adhit', '', 'adhit'),
(5, 1, 1, '12345678', '12345678', 'adhit', '12345678', 'adhit'),
(6, 1, 1, '12345678', '12345678', 'adhit', '12345678', 'adhit'),
(7, 2, 1, 'nidhi', '03/29/2021', '21:5', 'mobil', 'tidak ada');

-- --------------------------------------------------------

--
-- Table structure for table `list_tambal_ban`
--

CREATE TABLE `list_tambal_ban` (
  `id_tambal_ban` int(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `nama_tambal_ban` varchar(255) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `jam_operasi` varchar(255) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `detail_harga` varchar(1000) NOT NULL,
  `harga` int(255) NOT NULL,
  `no_telepon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_tambal_ban`
--

INSERT INTO `list_tambal_ban` (`id_tambal_ban`, `latitude`, `longitude`, `nama_tambal_ban`, `deskripsi`, `jam_operasi`, `alamat`, `detail_harga`, `harga`, `no_telepon`) VALUES
(1, '-7.351158', '110.4815954', 'Tambal Ban', 'Jasa :\r\n - Tambal Ban Dalam Motor\r\n - Tubles Ban Motor\r\n', '08.00 - 16.00', 'Jl. Somba, Dukuh', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(2, '-7.3422706', '110.4939005', 'Tambal Ban \"Sidomulyo\"', 'Jasa : \r\n - Tambal Ban Dalam Motor\r\n - Tubles Ban Motor\r\n - Sedia Ban Dalam Baru/Bekas Motor', '08.00 - 16.00', 'Jl. Sidomulyo, Dukuh', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(3, '-7.3410931', '110.4900431', 'Tambal Ban Qili Qili', 'Jasa : \r\n - Tambal Ban Dalam Motor\r\n - Tubles Ban Motor\r\n - Sedia Ban Dalam Baru/Bekas Motor', '08.00 - 16.00', 'Jl. Somba, Dukuh', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(4, '-7.3376321', '110.4962146', 'Tambal Ban \" Pak Bagor \"', 'Jasa : \r\n - Tambal Ban Dalam Motor/Mobil\r\n - Tubles Ban Motor/Mobil\r\n - Sedia Ban Dalam Baru/Bekas Motor/Mobil', '08.00 - 16.00', 'Jl. Hasanudin, Mangunsari', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(5, '-7.3364876', '110.4942247', 'Tambal Ban Pak Kemat', 'Jasa : \r\n - Tambal Ban Dalam(Press) Motor\r\n - Tubles Ban Motor\r\n - Sedia Ban Dalam Baru/Bekas Motor', '08.00 - 16.00', 'Jl. Nakula Sadewa 4, Pengilon, Mangunsari\r\n', ' - Tambal Ban Dalam Rp. 10.000  \r\n - Tambal Ban Tubles Rp. 15.000', 15000, '081229298480'),
(6, '-7.3391065', '110.5009293', 'Tambal Ban', 'Jasa : \r\n - Tambal Ban Dalam(Press) Motor/Mobil\r\n - Tubles Ban Motor/Mobil\r\n - Sedia Ban Dalam Baru/Bekas Motor\r\n', '08.00 - 16.00', 'Jl veteran rt 2 rw 10 pasar sapi, Mangunsari\r\n', ' - Tambal Ban Dalam Rp. 10.000  \r\n - Tambal Ban Tubles Rp. 15.000', 15000, '085740897925'),
(7, '-7.3345319', '110.5019202', 'Tambal Ban \"Pak Min\"', 'Jasa : \r\n - Tambal Ban Dalam(Press) Motor\r\n - Tubles Ban Motor\r\n - Sedia Ban Dalam Baru/Bekas Motor', '08.00 - 16.00', 'Pasar Sapi, Jl. Ahmad Yani No.58, Kalicacing\r\n', ' - Tambal Ban Dalam Rp. 10.000  \r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(8, '-7.3312642', '110.4904586', 'Tambal ban pak Budi', 'Jasa : \r\n - Tambal Ban Dalam(Press) Motor\r\n - Tubles Ban Motor\r\n - Sedia Ban Dalam Bekas Motor', '24 jam', 'Jl. Bangau No.22, Mangunsari', ' - Tambal Ban Dalam Rp. 10.000  \r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(9, '-7.330699', '110.4936161', 'Tambal ban \"mas mat\"', 'Jasa : \r\n - Tambal Ban Dalam(Press) Motor\r\n - Tubles Ban Motor\r\n - Sedia Ban Dalam Bekas Motor', '09.00 - 17.00', 'Jl. Merak No.29, Mangunsari\r\n\r\n', ' - Tambal Ban Dalam Rp. 10.000  \r\n - Tambal Ban Tubles Rp. 15.000', 15000, '083879523985'),
(10, '-7.3283814', '110.5031017', 'Tambal Ban Motor', 'Jasa : \r\n - Tambal Ban Dalam(Press) Motor\r\n - Tubles Ban Motor\r\n - Sedia Ban Dalam Baru/Bekas Motor', '08.00 - 16.00', 'Jl. Pemotongan No.48, Kalicacing', ' - Tambal Ban Dalam Rp. 10.000  \r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(11, '-7.3194442', '110.4928359', 'Tambal Ban', 'Jasa : \r\n - Tambal Ban Dalam(Press) Motor\r\n - Tubles Ban Motor\r\n - Sedia Ban Dalam Baru/Bekas Motor', '08.00 - 16.00', 'Jl. Sinoman Tempel, Sidorejo Lor\r\n', ' - Tambal Ban Dalam Rp. 10.000  \r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(12, '-7.3191005', '110.4860525', 'Tambal Ban', 'Jasa : \r\n - Tambal Ban Dalam(Press) Motor\r\n - Tubles Ban Motor\r\n', '08.00 - 16.00', 'Jl. Imam Bonjol No.Km. 1, RT.1 /RW4, Sidorejo Lor', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(13, '-7.3229526', '110.5019976', 'TAMBAL BAN 27', 'Jasa : \r\n - Tambal Ban Dalam Motor\r\n - Tubles Ban Motor\r\n', '08.00 - 21.00', 'Jl. Diponegoro No.27', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(14, '-7.2974659', '110.4818171', 'Bengkel Tambal Ban Tubles', 'Jasa : \r\n - Tambal Ban Dalam Motor\r\n - Tubles Ban Motor/Mobil\r\n', '08.00 - 16.00', 'Jl. Fatmawati, Blotongan', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(15, '-7.3082157', '110.4897634', 'Tambal Ban Nawawi', 'Jasa : \r\n - Tambal Ban Dalam(Press) Motor/Mobil\r\n - Tubles Ban Motor/Mobil\r\n - Sedia Ban Dalam Baru/Bekas Motor', '09.00 - 17.00', 'Jl. Diponegoro, Sidorejo Lor', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000\r\n - Ban Dalam Motor Rp. 20.000 - Rp. 30.000', 15000, '-'),
(16, '-7.3167222', '110.5054557', 'Tambal Ban Domas', 'Jasa : \r\n - Tambal Ban Dalam Motor/Mobil\r\n - Tubles Ban Motor/Mobil\r\n', '08.00 - 20.00', 'Jl. Patimura No.87', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '082115638339'),
(17, '-7.3098688', '110.5071117', 'Tambal ban Lengkong', 'Jasa : \r\n - Tambal Ban Dalam Motor/Mobil\r\n - Tubles Ban Motor/Mobil\r\n', '07.00 - 16.00', 'Jl. Patimura, Bugel', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '081775454549'),
(18, '-7.3659733', '110.5142091', 'A-dewe ban', 'Jasa : \r\n - Tambal Ban Dalam Motor/Mobil\r\n - Tubles Ban Motor/Mobil\r\n - Sedia Ban Dalam Baru/Bekas Mobil\r\n - Sedia Ban Baru/Bekas Mobil\r\n - Sedia Velg Mobil Baru/Bekas Variasi', '07.00 - 23.00', 'Jl. Sukarno Hatta KM.5 , Cebongan, Tigkir', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000\r\n - Ban Dalam Mobil Rp. 50.000 - Rp.70.000\r\n - Ban Baru Ring 13-14 Rp. 500.000 - Rp. 750.000\r\n - Ban Baru Ring 16-17-18 Rp. 650.000 - 950.000\r\n - Ban Bekas Ring 13-18 Rp. 200.000 - Rp. 500.000', 15000, '081328502849\r\n'),
(19, '-7.3707', '110.5147898', 'Sinar Semarang Ban', 'Jasa : \r\n - Tambal Ban Dalam Motor/Mobil\r\n - Tubles Ban Motor/Mobil\r\n - Sedia Ban Dalam Baru/Bekas Mobil\r\n - Sedia Ban Baru/Bekas ', '08.00 - 17.00', 'Jl. Soekarno-Hatta Km. 4, Noborejo, Argomulyo, Noborejo', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000\r\n - Ban Dalam Mobil Rp. 50.000 - Rp.70.000\r\n - Ban Baru Ring 13-14 Rp. 500.000 - Rp. 750.000\r\n - Ban Baru Ring 16-17-18 Rp. 650.000 - 950.000\r\n - Ban Bekas Ring 13-18 Rp. 200.000 - Rp. 500.000', 15000, '081213812321'),
(20, '-7.379317', '110.5150878', 'Acong Jaya Tyre', 'Jasa : \r\n - Tambal Ban Dalam Motor/Mobil\r\n - Tubles Ban Motor/Mobil\r\n - Ban Dalam Baru/Bekas Mobil\r\n - Ban Baru/Bekas \r\n - Velg Variasi', '09.00 - 20.00', 'Jl. raya desa bener km 6, Krajan Dua, Bener', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000\r\n - Ban Dalam Mobil Rp. 50.000 - Rp.70.000\r\n - Ban Baru Ring 13-14 Rp. 500.000 - Rp. 750.000\r\n - Ban Baru Ring 16-17-18 Rp. 650.000 - 950.000\r\n - Ban Bekas Ring 13-18 Rp. 200.000 - Rp. 500.000', 15000, ' 089686757706'),
(21, '-7.370008', '110.5147114', 'Cipto Ban', 'Jasa : \r\n - Tambal Ban Dalam Motor/Mobil\r\n - Tubles Ban Motor/Mobil\r\n - Ban Dalam Baru/Bekas Mobil\r\n - Ban Baru/Bekas \r\n - Velg Variasi', '08.00 - 20.00', 'Jl. Sukarno Hatta No.111, Cebongan', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000\r\n - Ban Dalam Mobil Rp. 50.000 - Rp.70.000\r\n - Ban Baru Ring 13-14 Rp. 500.000 - Rp. 750.000\r\n - Ban Baru Ring 16-17-18 Rp. 650.000 - 950.000\r\n - Ban Bekas Ring 13-18 Rp. 200.000 - Rp. 500.000', 15000, '085641630616'),
(22, '-7.3712778', '110.514857', 'Jakarta Ban', 'Jasa : \r\n - Tambal Ban Dalam Motor/Mobil\r\n - Tubles Ban Motor/Mobil\r\n - Ban Dalam Baru/Bekas Mobil\r\n - Ban Baru/Bekas \r\n - Velg Variasi', '08.00 - 20.00', 'Jl. Raya Salatiga-Solo No.Km 05, Noborejo', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000\r\n - Ban Dalam Mobil Rp. 50.000 - Rp.70.000\r\n - Ban Baru Ring 13-14 Rp. 500.000 - Rp. 750.000\r\n - Ban Baru Ring 16-17-18 Rp. 650.000 - 950.000\r\n - Ban Bekas Ring 13-18 Rp. 200.000 - Rp. 500.000', 15000, '085728250867'),
(23, '-7.3719495', '110.5149298', 'Tambal Ban', 'Jasa : \r\n - Tambal Ban Dalam Motor/Mobil/Truk\r\n - Tubles Ban Motor/Mobil/Truk\r\n - Ban Dalam Motor/Mobil/Truk\r\n - Ban Baru/Bekas Motor/Mobil/Truk', '08.00 - 17.00', 'Jl. Sukarno Hatta No.Km. 4, Noborejo', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000\r\n - Ban Dalam Motor Rp. 20.000 - Rp. 30.000\r\n - Ban Dalam Mobil Rp. 50.000 - Rp.70.000\r\n - Ban Baru Ring 13-14 Rp. 500.000 - Rp. 750.000\r\n - Ban Baru Ring 16-17-18 Rp. 650.000 - 950.000\r\n - Ban Bekas Ring 13-18 Rp. 200.000 - Rp. 500.000\r\n - Ban Baru Isuzu - Truk Sedang Rp. 800.000 - Rp 1.300.000\r\n - Ban Bekas Isuzu - Truk Sedang Rp. 300.000 - Rp. 600.000', 15000, '-'),
(24, '-7.3618536', '110.5238809', 'Tegal Ban', 'Jasa : \r\n - Tubles Ban Motor/Mobil/Truk\r\n - Ban Dalam Motor/Mobil/Truk\r\n - Ban Baru/Bekas Motor/Mobil/Truk\r\n - Velg Variasi', '08.00 - 18.00', 'Jalan Raya Suruh-Salatiga Tingkir Tengah', ' - Tambal Ban Tubles Rp. 15.000\r\n - Ban Dalam Mobil Rp. 50.000 - Rp.70.000\r\n - Ban Baru Ring 13-14 Rp. 500.000 - Rp. 750.000\r\n - Ban Baru Ring 16-17-18 Rp. 650.000 - 950.000\r\n - Ban Bekas Ring 13-18 Rp. 200.000 - Rp. 500.000\r\n - Ban Baru Isuzu - Truk Sedang Rp. 800.000 - Rp 1.300.000\r\n - Ban Bekas Isuzu - Truk Sedang Rp. 300.000 - Rp. 600.000', 15000, '081515298215'),
(25, '-7.3410667', '110.5092103', 'Tambal Ban', 'Jasa : \r\n - Tambal Ban Motor\r\n - Tubles Ban Motor', '09.00 - 16.00', 'Jl. Nasional, Ledok', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(26, '-7.3376436', '110.5072315', 'Tambal Ban', 'Jasa : \r\n - Tambal Ban Motor\r\n - Tubles Ban Motor', '09.00 - 17.00', 'Jl. Nasional, Ledok', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(27, '-7.3607104', '110.5134978', 'N2 Pom Bensin', 'Jasa :\r\n - Tubles Ban Motor/Mobil', '08.00 - 20.00', 'Jl. Sukarno-Hatta, Cebongan, Argomulyo', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(28, '-7.3620341', '110.5288539', 'N2 Pom Bensin', 'Jasa :\r\n - Tubles Ban Motor/Mobil', '08.00 - 20.00', 'Jalan Raya Suruh-Salatiga, Barukan', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(29, '-7.3320183', '110.4990375', 'N2 Pom Bensin', 'Jasa :\r\n - Tubles Ban Motor/Mobil', '08.00 - 20.00', 'Jl. Brigjen Sudiarto, Mangunsari ', 'Tubles Sepeda Motor Rp. 10.000\r\nTubles Mobil Rp. 15.000 - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000 - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(30, '-7.3301183', '110.4959888', 'N2 Pom Bensin', 'Jasa :\r\n - Tubles Ban Motor/Mobil', '08.00 - 20.00', 'Jl. Osamaliki, Mangunsar ', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(31, '-7.3305291', '110.4960159', 'Tambal Ban', 'Jasa :\r\n - Tambal Ban Motor\r\n - Tubles Ban Motor\r\n - Ban Dalam Motor', '08.00 - 20.00', 'Jl. Osamaliki, Mangunsar ', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000\r\n - Ban Dalam Motor Rp. 20.000 - Rp. 30.000', 15000, '-'),
(32, '-7.3319196', '110.5034668', 'Bintang Jaya Ban', 'Jasa : \r\n - Tubles Ban Mobil\r\n - Sedia Ban Bekas Mobil\r\n - Sedia Velg Mobil Baru/Bekas Variasi', '07.30 - 16.30', 'Jl. Semeru No.1, Kalicacing ', ' - Tambal Ban Tubles Rp. 15.000\r\n - Ban Dalam Mobil Rp. 50.000 - Rp.70.000\r\n - Ban Baru Ring 13-14 Rp. 500.000 - Rp. 750.000\r\n - Ban Baru Ring 16-17-18 Rp. 650.000 - 950.000\r\n - Ban Bekas Ring 13-18 Rp. 200.000 - Rp. 500.000', 15000, '0298325418'),
(33, '-7.3520624', '110.5124159', 'Bintang jaya ban', 'Jasa : \r\n - Tubles Ban Mobil\r\n - Sedia Ban Bekas Mobil\r\n - Sedia Velg Mobil Baru/Bekas Variasi', '08.00 - 18.00', 'Jl. Sukarno Hatta No.11, Cebongan ', ' - Tambal Ban Tubles Rp. 15.000\r\n - Ban Dalam Mobil Rp. 50.000 - Rp.70.000\r\n - Ban Baru Ring 13-14 Rp. 500.000 - Rp. 750.000\r\n - Ban Baru Ring 16-17-18 Rp. 650.000 - 950.000\r\n - Ban Bekas Ring 13-18 Rp. 200.000 - Rp. 500.000', 15000, '08164244384'),
(34, '-7.3517837', '110.512378', 'Tambal Ban', 'Jasa : \r\n - Tambal Ban Motor/Mobil\r\n - Tubles Ban Motor/Mobil', '09.00 - 17.00', 'Jl Sukarno Hatta (selatan Damatex, Cebongan, Argomulyo, Salatiga ', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(35, '-7.3205484', '110.4944781', 'N2 Pom Bensin', 'Jasa :\r\n - Tubles Ban Motor/Mobil', '24 jam', 'SPBU Pertamina 4450711, Jalan Imam Bonjol No. 43, Sidorejo Lor, Sidorejo, Sidorejo Lor ', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(36, '-7.3198631', '110.4797488', 'Tambal Ban', 'Jasa :\r\n - Tubles Ban Motor/Mobil', '08.00 - 18.00', 'Jl. Imam Bonjol No.119, RW.Km.2, Kecandran ', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(37, '-7.3198812', '110.4795659', 'Toko Ban', 'Jasa : \r\n - Tubles Ban Motor/Mobil\r\n - Sedia Ban Dalam Baru/Bekas Mobil\r\n - Sedia Ban Baru/Bekas Mobil\r\n - Sedia Velg Mobil Baru/Bekas Variasi', '08.00 - 18.00', 'Jl. Imam Bonjol, Kecandran, Sidomukti, Kecandran ', ' - Tambal Ban Tubles Rp. 15.000\r\n - Ban Dalam Mobil Rp. 50.000 - Rp.70.000\r\n - Ban Baru Ring 13-14 Rp. 500.000 - Rp. 750.000\r\n - Ban Baru Ring 16-17-18 Rp. 650.000 - 950.000\r\n - Ban Bekas Ring 13-18 Rp. 200.000 - Rp. 500.000', 15000, '-'),
(38, '-7.3243536', '110.4785781', 'Timor Ban', 'Jasa : \r\n - Tubles Ban Motor/Mobil\r\n - Sedia Ban Dalam Baru/Bekas Mobil\r\n - Sedia Ban Baru/Bekas Mobil\r\n - Sedia Velg Mobil Baru/Bekas Variasi', '08.00 - 17.00', 'Jl. Lkr. Sel. Salatiga, Kecandran ', ' - Tambal Ban Tubles Rp. 15.000\r\n - Ban Dalam Mobil Rp. 50.000 - Rp.70.000\r\n - Ban Baru Ring 13-14 Rp. 500.000 - Rp. 750.000\r\n - Ban Baru Ring 16-17-18 Rp. 650.000 - 950.000\r\n - Ban Bekas Ring 13-18 Rp. 200.000 - Rp. 500.000', 15000, '-'),
(39, '-7.3369053', '110.4776021', 'N2 Pom Bensin', 'Jasa :\r\n - Tubles Ban Motor/Mobil', '24 jam', 'Jl. Lkr. Sel. Salatiga, Kecandran ', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '-'),
(40, '-7.3174627', '110.4777875', 'SMB Sumber Makmur Ban', 'Jasa : \r\n - Tambal Ban Dalam\r\n - Tubles Ban Motor\r\n - Ban Baru/Bekas Motor', '07.00 - 21.00', 'Jl. Lingkar Salatiga, Kecandran ', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000\r\n - Ban Dalam Motor Rp. 20.000 - Rp. 30.000', 15000, ' 082242516403'),
(41, '-7.3154492', '110.5059773', 'Fajar Ban', 'Jasa :\r\n - Tambal Ban Tubles/ Ban Dalam Motor/Mobil\r\n - Ban Baru/Bekas Mobil\r\n - Bengkel/Service Mobil', '06.30 - 17.00', 'Jl. Patimura Jl. Domas No.105, RT.04/RW.08', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '02298325940'),
(42, '-7.3008111', '110.5107787', 'Tambal Ban Konco Dewe', 'Jasa : \r\n - Tambal Ban Tubles/Ban Dalam Motor/Mobil\r\n - Sedia Ban Mobil Baru/Bekas', '07.00 - 17.00', 'Jalan Raya Salatiga-Beringin Km.5 Kauman Kidul Pabelan, Area Sawah, Pabelan', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000', 15000, '0281575671573'),
(43, '-7.3618559', '110.5148303', 'Tambal Ban Sepeda Motor Am Pm', 'Jasa : \r\n - Tambal Ban Tubles/Ban Dalam Motor', '24 Jaam', 'Jalan Raya Suruh - Salatiga, Tingkir Tengah, Tingkir, Tingkir Tengah', 'Tubles Sepeda Motor Rp. 10.000\r\nTubles Mobil Rp. 15.000', 15000, '081575852110'),
(44, '-7.3341741', '110.5027473', 'Sumber Sejati Motor', 'Jasa : \r\n - Tambal Ban Dalam Motor\r\n - Tubles Ban Motor\r\n - Seida Ban Baru Motor\r\n - Sedia Ban Dalam Motor', '08.30 - 17.00', 'JL. Jenderal Ahmad Yani, Sidomukti, Pert Pandawa 31, Kalicacing', ' - Tambal Ban Dalam Rp. 10.000\r\n - Tambal Ban Tubles Rp. 15.000\r\n - Ban Dalam Motor Rp. 20.000 - Rp. 30.000\r\n - Ban Motor Rp. 150.000 - Rp. 500.000', 15000, '0298315967'),
(45, '-7.3359172', '110.5060822', 'Anugrah Ban', 'Jasa :\r\n - Tubles Ban Mobil\r\n - Sedia Baru Ban Mobil ', '08.00 - 17.00', 'Jl. Jenderal Sudirman No. 239 Pertokoan Makutarama No 37 B, Gendongan', ' - Tambal Ban Tubles Rp. 15.000\r\n - Ban Baru Ring 13-14 Rp. 500.000 - Rp. 750.000\r\n - Ban Baru Ring 16-17-18 Rp. 650.000 - 950.000', 15000, '-');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id_user` int(255) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `namauser` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id_user`, `username`, `password`, `namauser`) VALUES
(1, 'user1', 'user1', 'MEWEK'),
(2, 'nidhi', 'nidhi1989', 'nidhi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `list_tambal_ban`
--
ALTER TABLE `list_tambal_ban`
  ADD PRIMARY KEY (`id_tambal_ban`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `list_tambal_ban`
--
ALTER TABLE `list_tambal_ban`
  MODIFY `id_tambal_ban` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
