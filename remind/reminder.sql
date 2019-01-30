-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jan 2019 pada 05.10
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reminder`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `No` int(4) NOT NULL,
  `No_table` int(100) NOT NULL,
  `kode_MK` varchar(10) NOT NULL,
  `namaMK_kelas` varchar(100) NOT NULL,
  `sks` varchar(3) NOT NULL,
  `namaDosen` varchar(30) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `ruang` varchar(10) NOT NULL,
  `jam` varchar(100) NOT NULL,
  `kurikulum` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_kuliah`
--

CREATE TABLE `jadwal_kuliah` (
  `id_jadwal_kuliah` int(11) NOT NULL,
  `id_schedule` int(11) NOT NULL,
  `nama_dosen` varchar(200) DEFAULT NULL,
  `mata_kuliah` varchar(200) DEFAULT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `hari` varchar(50) DEFAULT NULL,
  `mulai` time DEFAULT NULL,
  `selesai` time DEFAULT NULL,
  `sks` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal_kuliah`
--

INSERT INTO `jadwal_kuliah` (`id_jadwal_kuliah`, `id_schedule`, `nama_dosen`, `mata_kuliah`, `nip`, `hari`, `mulai`, `selesai`, `sks`, `created_at`, `updated_at`) VALUES
(951, 1, 'Muhammad Irsyad, ST, MT', 'PIF1311 - Teori Bahasa dan Otomata/3/E/3/IRS', '197805082007101007', 'Senin', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(952, 1, 'Muhammad Irsyad, ST, MT', 'PIF1311 - Teori Bahasa dan Otomata/3/E/3/IRS', '197805082007101007', 'Senin', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(953, 1, 'Muhammad Irsyad, ST, MT', 'PIF1311 - Teori Bahasa dan Otomata/3/E/3/IRS', '197805082007101007', 'Senin', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(954, 2, 'Muhammad Irsyad, ST, MT', 'PIF1526 - Disain Interaksi dan Antarmuka/5/C/3/IRS', '197805082007101007', 'Kamis', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(955, 2, 'Muhammad Irsyad, ST, MT', 'PIF1526 - Disain Interaksi dan Antarmuka/5/C/3/IRS', '197805082007101007', 'Kamis', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(956, 2, 'Muhammad Irsyad, ST, MT', 'PIF1526 - Disain Interaksi dan Antarmuka/5/C/3/IRS', '197805082007101007', 'Kamis', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(957, 3, 'Muhammad Irsyad, ST, MT', 'PIF1526 - Disain Interaksi dan Antarmuka/5/D/3/IRS', '197805082007101007', 'Kamis', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(958, 3, 'Muhammad Irsyad, ST, MT', 'PIF1526 - Disain Interaksi dan Antarmuka/5/D/3/IRS', '197805082007101007', 'Kamis', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(959, 3, 'Muhammad Irsyad, ST, MT', 'PIF1526 - Disain Interaksi dan Antarmuka/5/D/3/IRS', '197805082007101007', 'Kamis', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(960, 4, 'Muhammad Fikry, ST, MSc', 'PIF1315 - Teknologi Web/3/A/2/FIK', '198010182007101002', 'Senin', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(961, 4, 'Muhammad Fikry, ST, MSc', 'PIF1315 - Teknologi Web/3/A/2/FIK', '198010182007101002', 'Senin', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(962, 5, 'Muhammad Fikry, ST, MSc', 'TIF4063 - Natural Language Processing/0/B/3/FIK', '198010182007101002', 'Kamis', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(963, 5, 'Muhammad Fikry, ST, MSc', 'TIF4063 - Natural Language Processing/0/B/3/FIK', '198010182007101002', 'Kamis', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(964, 5, 'Muhammad Fikry, ST, MSc', 'TIF4063 - Natural Language Processing/0/B/3/FIK', '198010182007101002', 'Kamis', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(965, 6, 'Muhammad Fikry, ST, MSc', 'PIF1524 - Rekayasa Perangkat Lunak Berorientasi Objek/5/A/3/FIK', '198010182007101002', 'Selasa', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(966, 6, 'Muhammad Fikry, ST, MSc', 'PIF1524 - Rekayasa Perangkat Lunak Berorientasi Objek/5/A/3/FIK', '198010182007101002', 'Selasa', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(967, 6, 'Muhammad Fikry, ST, MSc', 'PIF1524 - Rekayasa Perangkat Lunak Berorientasi Objek/5/A/3/FIK', '198010182007101002', 'Selasa', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(968, 7, 'Iwan Iskandar, MT', 'PIF1522 - Jaringan Komputer/5/A/3/IWN', '198212162015031003', 'Rabu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(969, 7, 'Iwan Iskandar, MT', 'PIF1522 - Jaringan Komputer/5/A/3/IWN', '198212162015031003', 'Rabu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(970, 7, 'Iwan Iskandar, MT', 'PIF1522 - Jaringan Komputer/5/A/3/IWN', '198212162015031003', 'Rabu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(971, 8, 'Iwan Iskandar, MT', 'PIF1522 - Jaringan Komputer/5/B/3/IWN', '198212162015031003', 'Selasa', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(972, 8, 'Iwan Iskandar, MT', 'PIF1522 - Jaringan Komputer/5/B/3/IWN', '198212162015031003', 'Selasa', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(973, 8, 'Iwan Iskandar, MT', 'PIF1522 - Jaringan Komputer/5/B/3/IWN', '198212162015031003', 'Selasa', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(974, 9, 'Iwan Iskandar, MT', 'PIF1522 - Jaringan Komputer/5/C/3/IWN', '198212162015031003', 'Kamis', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(975, 9, 'Iwan Iskandar, MT', 'PIF1522 - Jaringan Komputer/5/C/3/IWN', '198212162015031003', 'Kamis', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(976, 9, 'Iwan Iskandar, MT', 'PIF1522 - Jaringan Komputer/5/C/3/IWN', '198212162015031003', 'Kamis', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(977, 11, 'Dr. Alwis Nazir, M.Kom', 'PIF1732 - Data Mining/7/A/3/ALW', '197408072009011007', 'Senin', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(978, 11, 'Dr. Alwis Nazir, M.Kom', 'PIF1732 - Data Mining/7/A/3/ALW', '197408072009011007', 'Senin', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(979, 11, 'Dr. Alwis Nazir, M.Kom', 'PIF1732 - Data Mining/7/A/3/ALW', '197408072009011007', 'Senin', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(980, 13, 'Benny Sukma Negara, MT', 'PIF1733 - Tata Kelola Teknologi Informasi/7/A/3/BSN', '198203132009011009', 'Rabu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(981, 13, 'Benny Sukma Negara, MT', 'PIF1733 - Tata Kelola Teknologi Informasi/7/A/3/BSN', '198203132009011009', 'Rabu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(982, 13, 'Benny Sukma Negara, MT', 'PIF1733 - Tata Kelola Teknologi Informasi/7/A/3/BSN', '198203132009011009', 'Rabu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(983, 14, 'Benny Sukma Negara, MT', 'PIF1733 - Tata Kelola Teknologi Informasi/7/B/3/BSN', '198203132009011009', 'Rabu', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(984, 14, 'Benny Sukma Negara, MT', 'PIF1733 - Tata Kelola Teknologi Informasi/7/B/3/BSN', '198203132009011009', 'Rabu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(985, 14, 'Benny Sukma Negara, MT', 'PIF1733 - Tata Kelola Teknologi Informasi/7/B/3/BSN', '198203132009011009', 'Rabu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(986, 15, 'Novi Yanti, ST. M.Kom', 'PIF1102 - Pengantar Teknologi Informasi dan Komunikasi/1/A/2/NVY', '198111252007102004', 'Rabu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(987, 15, 'Novi Yanti, ST. M.Kom', 'PIF1102 - Pengantar Teknologi Informasi dan Komunikasi/1/A/2/NVY', '198111252007102004', 'Rabu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(988, 16, 'Novi Yanti, ST. M.Kom', 'PIF1102 - Pengantar Teknologi Informasi dan Komunikasi/1/B/2/NVY', '198111252007102004', 'Rabu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(989, 16, 'Novi Yanti, ST. M.Kom', 'PIF1102 - Pengantar Teknologi Informasi dan Komunikasi/1/B/2/NVY', '198111252007102004', 'Rabu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(990, 18, 'Dr. Okfalisa, ST, M.Sc', 'PIF1523 - Sistem Informasi/5/C/3/OKF', '197710282003122004', 'Selasa', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(991, 18, 'Dr. Okfalisa, ST, M.Sc', 'PIF1523 - Sistem Informasi/5/C/3/OKF', '197710282003122004', 'Selasa', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(992, 18, 'Dr. Okfalisa, ST, M.Sc', 'PIF1523 - Sistem Informasi/5/C/3/OKF', '197710282003122004', 'Selasa', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(993, 19, 'Dr. Okfalisa, ST, M.Sc', 'PIF1523 - Sistem Informasi/5/D/3/OKF', '197710282003122004', 'Selasa', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(994, 19, 'Dr. Okfalisa, ST, M.Sc', 'PIF1523 - Sistem Informasi/5/D/3/OKF', '197710282003122004', 'Selasa', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(995, 19, 'Dr. Okfalisa, ST, M.Sc', 'PIF1523 - Sistem Informasi/5/D/3/OKF', '197710282003122004', 'Selasa', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(996, 20, 'Dr. Okfalisa, ST, M.Sc', 'PIF1628 - Tugas Akhir 1/7/D/2/OKF', '197710282003122004', 'Senin', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(997, 20, 'Dr. Okfalisa, ST, M.Sc', 'PIF1628 - Tugas Akhir 1/7/D/2/OKF', '197710282003122004', 'Senin', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(998, 21, 'Dr. Okfalisa, ST, M.Sc', 'PIF3005 - Sistem Pendukung Keputusan/0/A/3/OKF', '197710282003122004', 'Senin', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(999, 21, 'Dr. Okfalisa, ST, M.Sc', 'PIF3005 - Sistem Pendukung Keputusan/0/A/3/OKF', '197710282003122004', 'Senin', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(1000, 21, 'Dr. Okfalisa, ST, M.Sc', 'PIF3005 - Sistem Pendukung Keputusan/0/A/3/OKF', '197710282003122004', 'Senin', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(1001, 22, 'Elin Haerani, ST, M.Kom', 'PIF1628 - Tugas Akhir 1/7/F/2/ELN', '198105232007102003', 'Rabu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(1002, 22, 'Elin Haerani, ST, M.Kom', 'PIF1628 - Tugas Akhir 1/7/F/2/ELN', '198105232007102003', 'Rabu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(1003, 23, 'Elin Haerani, ST, M.Kom', 'PIF1628 - Tugas Akhir 1/7/G/2/ELN', '198105232007102003', 'Selasa', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(1004, 23, 'Elin Haerani, ST, M.Kom', 'PIF1628 - Tugas Akhir 1/7/G/2/ELN', '198105232007102003', 'Selasa', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(1005, 25, 'Elin Haerani, ST, M.Kom', 'PIF3025 - Logika Fuzzy/0/A/3/ELN', '198105232007102003', 'Kamis', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(1006, 25, 'Elin Haerani, ST, M.Kom', 'PIF3025 - Logika Fuzzy/0/A/3/ELN', '198105232007102003', 'Kamis', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(1007, 25, 'Elin Haerani, ST, M.Kom', 'PIF3025 - Logika Fuzzy/0/A/3/ELN', '198105232007102003', 'Kamis', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(1008, 26, 'Elin Haerani, ST, M.Kom', 'TIF4113 - JST dan Sistem Fuzzy/0/A/3/ELN', '198105232007102003', 'Selasa', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(1009, 26, 'Elin Haerani, ST, M.Kom', 'TIF4113 - JST dan Sistem Fuzzy/0/A/3/ELN', '198105232007102003', 'Selasa', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(1010, 26, 'Elin Haerani, ST, M.Kom', 'TIF4113 - JST dan Sistem Fuzzy/0/A/3/ELN', '198105232007102003', 'Selasa', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(1011, 27, 'Elvia Budianita, ST, M.Cs', 'PIF1732 - Data Mining/7/C/3/ELV', '198606292015032007', 'Senin', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(1012, 27, 'Elvia Budianita, ST, M.Cs', 'PIF1732 - Data Mining/7/C/3/ELV', '198606292015032007', 'Senin', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(1013, 27, 'Elvia Budianita, ST, M.Cs', 'PIF1732 - Data Mining/7/C/3/ELV', '198606292015032007', 'Senin', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(1014, 28, 'Elvia Budianita, ST, M.Cs', 'PIF1732 - Data Mining/7/D/3/ELV', '198606292015032007', 'Rabu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:46', '2018-10-11 04:33:46'),
(1015, 28, 'Elvia Budianita, ST, M.Cs', 'PIF1732 - Data Mining/7/D/3/ELV', '198606292015032007', 'Rabu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1016, 28, 'Elvia Budianita, ST, M.Cs', 'PIF1732 - Data Mining/7/D/3/ELV', '198606292015032007', 'Rabu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1017, 29, 'Elvia Budianita, ST, M.Cs', 'PIF1732 - Data Mining/7/E/3/ELV', '198606292015032007', 'Kamis', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1018, 29, 'Elvia Budianita, ST, M.Cs', 'PIF1732 - Data Mining/7/E/3/ELV', '198606292015032007', 'Kamis', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1019, 29, 'Elvia Budianita, ST, M.Cs', 'PIF1732 - Data Mining/7/E/3/ELV', '198606292015032007', 'Kamis', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1020, 30, 'Elvia Budianita, ST, M.Cs', 'PIF1732 - Data Mining/7/F/3/ELV', '198606292015032007', 'Selasa', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1021, 30, 'Elvia Budianita, ST, M.Cs', 'PIF1732 - Data Mining/7/F/3/ELV', '198606292015032007', 'Selasa', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1022, 30, 'Elvia Budianita, ST, M.Cs', 'PIF1732 - Data Mining/7/F/3/ELV', '198606292015032007', 'Selasa', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1023, 31, 'Febi Yanto, M.Kom', 'PIF1104 - Sistem Digital/1/A/3/FBI', '198102062009121003', 'Selasa', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1024, 31, 'Febi Yanto, M.Kom', 'PIF1104 - Sistem Digital/1/A/3/FBI', '198102062009121003', 'Selasa', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1025, 31, 'Febi Yanto, M.Kom', 'PIF1104 - Sistem Digital/1/A/3/FBI', '198102062009121003', 'Selasa', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1026, 32, 'Febi Yanto, M.Kom', 'PIF1104 - Sistem Digital/1/B/3/FBI', '198102062009121003', 'Selasa', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1027, 32, 'Febi Yanto, M.Kom', 'PIF1104 - Sistem Digital/1/B/3/FBI', '198102062009121003', 'Selasa', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1028, 32, 'Febi Yanto, M.Kom', 'PIF1104 - Sistem Digital/1/B/3/FBI', '198102062009121003', 'Selasa', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1029, 33, 'Febi Yanto, M.Kom', 'PIF1104 - Sistem Digital/1/C/3/FBI', '198102062009121003', 'Rabu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1030, 33, 'Febi Yanto, M.Kom', 'PIF1104 - Sistem Digital/1/C/3/FBI', '198102062009121003', 'Rabu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1031, 33, 'Febi Yanto, M.Kom', 'PIF1104 - Sistem Digital/1/C/3/FBI', '198102062009121003', 'Rabu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1032, 35, 'Fitra Kurnia, M.Kom', 'PIF1313 - Arsitektur Komputer/3/A/3/FTR', '198108142006042002', 'Rabu', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1033, 35, 'Fitra Kurnia, M.Kom', 'PIF1313 - Arsitektur Komputer/3/A/3/FTR', '198108142006042002', 'Rabu', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1034, 35, 'Fitra Kurnia, M.Kom', 'PIF1313 - Arsitektur Komputer/3/A/3/FTR', '198108142006042002', 'Rabu', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1035, 36, 'Fitra Kurnia, M.Kom', 'PIF1313 - Arsitektur Komputer/3/B/3/FTR', '198108142006042002', 'Senin', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1036, 36, 'Fitra Kurnia, M.Kom', 'PIF1313 - Arsitektur Komputer/3/B/3/FTR', '198108142006042002', 'Senin', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1037, 36, 'Fitra Kurnia, M.Kom', 'PIF1313 - Arsitektur Komputer/3/B/3/FTR', '198108142006042002', 'Senin', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1038, 37, 'Fitra Kurnia, M.Kom', 'PIF1313 - Arsitektur Komputer/3/C/3/FTR', '198108142006042002', 'Senin', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1039, 37, 'Fitra Kurnia, M.Kom', 'PIF1313 - Arsitektur Komputer/3/C/3/FTR', '198108142006042002', 'Senin', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1040, 37, 'Fitra Kurnia, M.Kom', 'PIF1313 - Arsitektur Komputer/3/C/3/FTR', '198108142006042002', 'Senin', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1041, 38, 'Fitra Kurnia, M.Kom', 'PIF1523 - Sistem Informasi/5/E/3/FTR', '198108142006042002', 'Rabu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1042, 38, 'Fitra Kurnia, M.Kom', 'PIF1523 - Sistem Informasi/5/E/3/FTR', '198108142006042002', 'Rabu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1043, 38, 'Fitra Kurnia, M.Kom', 'PIF1523 - Sistem Informasi/5/E/3/FTR', '198108142006042002', 'Rabu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1044, 39, 'Jasril, S.Si, MSc', 'PIF1312 - Basis Data/3/A/3/JAY', '197102152000031002', 'Rabu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1045, 39, 'Jasril, S.Si, MSc', 'PIF1312 - Basis Data/3/A/3/JAY', '197102152000031002', 'Rabu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1046, 39, 'Jasril, S.Si, MSc', 'PIF1312 - Basis Data/3/A/3/JAY', '197102152000031002', 'Rabu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1047, 40, 'Jasril, S.Si, MSc', 'PIF1312 - Basis Data/3/B/3/JAY', '197102152000031002', 'Rabu', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1048, 40, 'Jasril, S.Si, MSc', 'PIF1312 - Basis Data/3/B/3/JAY', '197102152000031002', 'Rabu', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1049, 40, 'Jasril, S.Si, MSc', 'PIF1312 - Basis Data/3/B/3/JAY', '197102152000031002', 'Rabu', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1050, 41, 'Jasril, S.Si, MSc', 'PIF1312 - Basis Data/3/C/3/JAY', '197102152000031002', 'Selasa', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1051, 41, 'Jasril, S.Si, MSc', 'PIF1312 - Basis Data/3/C/3/JAY', '197102152000031002', 'Selasa', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1052, 41, 'Jasril, S.Si, MSc', 'PIF1312 - Basis Data/3/C/3/JAY', '197102152000031002', 'Selasa', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1053, 42, 'Jasril, S.Si, MSc', 'PIF1628 - Tugas Akhir 1/7/B/2/JAY', '197102152000031002', 'Kamis', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1054, 42, 'Jasril, S.Si, MSc', 'PIF1628 - Tugas Akhir 1/7/B/2/JAY', '197102152000031002', 'Kamis', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1055, 43, 'Jasril, S.Si, MSc', 'PIF1628 - Tugas Akhir 1/7/C/2/JAY', '197102152000031002', 'Selasa', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1056, 43, 'Jasril, S.Si, MSc', 'PIF1628 - Tugas Akhir 1/7/C/2/JAY', '197102152000031002', 'Selasa', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1057, 44, 'Lestari Handayani, ST, M.Kom', 'PIF1311 - Teori Bahasa dan Otomata/3/F/3/TAR', '198111132007102003', 'Sabtu', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1058, 44, 'Lestari Handayani, ST, M.Kom', 'PIF1311 - Teori Bahasa dan Otomata/3/F/3/TAR', '198111132007102003', 'Sabtu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1059, 44, 'Lestari Handayani, ST, M.Kom', 'PIF1311 - Teori Bahasa dan Otomata/3/F/3/TAR', '198111132007102003', 'Sabtu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1060, 45, 'Lestari Handayani, ST, M.Kom', 'PIF1311 - Teori Bahasa dan Otomata/3/G/3/TAR', '198111132007102003', 'Sabtu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1061, 45, 'Lestari Handayani, ST, M.Kom', 'PIF1311 - Teori Bahasa dan Otomata/3/G/3/TAR', '198111132007102003', 'Sabtu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1062, 45, 'Lestari Handayani, ST, M.Kom', 'PIF1311 - Teori Bahasa dan Otomata/3/G/3/TAR', '198111132007102003', 'Sabtu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1063, 46, 'Muhammad Affandes, MT', 'PIF1103 - Dasar Pemrograman/1/E/3/AFF', '198612062015031004', 'Selasa', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1064, 46, 'Muhammad Affandes, MT', 'PIF1103 - Dasar Pemrograman/1/E/3/AFF', '198612062015031004', 'Selasa', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1065, 46, 'Muhammad Affandes, MT', 'PIF1103 - Dasar Pemrograman/1/E/3/AFF', '198612062015031004', 'Selasa', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1066, 47, 'Muhammad Affandes, MT', 'PIF1314 - Struktur Data/3/A/3/AFF', '198612062015031004', 'Senin', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1067, 47, 'Muhammad Affandes, MT', 'PIF1314 - Struktur Data/3/A/3/AFF', '198612062015031004', 'Senin', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1068, 47, 'Muhammad Affandes, MT', 'PIF1314 - Struktur Data/3/A/3/AFF', '198612062015031004', 'Senin', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1069, 48, 'Muhammad Affandes, MT', 'PIF1314 - Struktur Data/3/B/3/AFF', '198612062015031004', 'Senin', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1070, 48, 'Muhammad Affandes, MT', 'PIF1314 - Struktur Data/3/B/3/AFF', '198612062015031004', 'Senin', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1071, 48, 'Muhammad Affandes, MT', 'PIF1314 - Struktur Data/3/B/3/AFF', '198612062015031004', 'Senin', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1072, 49, 'Muhammad Affandes, MT', 'PIF1314 - Struktur Data/3/C/3/AFF', '198612062015031004', 'Selasa', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1073, 49, 'Muhammad Affandes, MT', 'PIF1314 - Struktur Data/3/C/3/AFF', '198612062015031004', 'Selasa', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1074, 49, 'Muhammad Affandes, MT', 'PIF1314 - Struktur Data/3/C/3/AFF', '198612062015031004', 'Selasa', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1075, 50, 'Novriyanto, ST, M.Sc', 'PIF1102 - Pengantar Teknologi Informasi dan Komunikasi/1/D/2/NOV', '197711282007101003', 'Jumat', '08:00:00', '08:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1076, 50, 'Novriyanto, ST, M.Sc', 'PIF1102 - Pengantar Teknologi Informasi dan Komunikasi/1/D/2/NOV', '197711282007101003', 'Jumat', '08:50:00', '09:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1077, 51, 'Novriyanto, ST, M.Sc', 'PIF1102 - Pengantar Teknologi Informasi dan Komunikasi/1/E/2/NOV', '197711282007101003', 'Jumat', '09:40:00', '10:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1078, 51, 'Novriyanto, ST, M.Sc', 'PIF1102 - Pengantar Teknologi Informasi dan Komunikasi/1/E/2/NOV', '197711282007101003', 'Jumat', '10:30:00', '11:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1079, 52, 'Novriyanto, ST, M.Sc', 'PIF1733 - Tata Kelola Teknologi Informasi/7/C/3/NOV', '197711282007101003', 'Selasa', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1080, 52, 'Novriyanto, ST, M.Sc', 'PIF1733 - Tata Kelola Teknologi Informasi/7/C/3/NOV', '197711282007101003', 'Selasa', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1081, 52, 'Novriyanto, ST, M.Sc', 'PIF1733 - Tata Kelola Teknologi Informasi/7/C/3/NOV', '197711282007101003', 'Selasa', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1082, 53, 'Novriyanto, ST, M.Sc', 'PIF1733 - Tata Kelola Teknologi Informasi/7/D/3/NOV', '197711282007101003', 'Selasa', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1083, 53, 'Novriyanto, ST, M.Sc', 'PIF1733 - Tata Kelola Teknologi Informasi/7/D/3/NOV', '197711282007101003', 'Selasa', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1084, 53, 'Novriyanto, ST, M.Sc', 'PIF1733 - Tata Kelola Teknologi Informasi/7/D/3/NOV', '197711282007101003', 'Selasa', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1085, 54, 'Novriyanto, ST, M.Sc', 'PIF1628 - Tugas Akhir 1/7/E/2/NOV', '197711282007101003', 'Senin', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1086, 54, 'Novriyanto, ST, M.Sc', 'PIF1628 - Tugas Akhir 1/7/E/2/NOV', '197711282007101003', 'Senin', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1087, 55, 'Reski Mai Candra, ST, M.Sc', 'PIF1526 - Disain Interaksi dan Antarmuka/5/A/3/RES', '198605052015031006', 'Kamis', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1088, 55, 'Reski Mai Candra, ST, M.Sc', 'PIF1526 - Disain Interaksi dan Antarmuka/5/A/3/RES', '198605052015031006', 'Kamis', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1089, 55, 'Reski Mai Candra, ST, M.Sc', 'PIF1526 - Disain Interaksi dan Antarmuka/5/A/3/RES', '198605052015031006', 'Kamis', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1090, 56, 'Reski Mai Candra, ST, M.Sc', 'PIF1526 - Disain Interaksi dan Antarmuka/5/B/3/RES', '198605052015031006', 'Kamis', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1091, 56, 'Reski Mai Candra, ST, M.Sc', 'PIF1526 - Disain Interaksi dan Antarmuka/5/B/3/RES', '198605052015031006', 'Kamis', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1092, 56, 'Reski Mai Candra, ST, M.Sc', 'PIF1526 - Disain Interaksi dan Antarmuka/5/B/3/RES', '198605052015031006', 'Kamis', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1093, 57, 'Reski Mai Candra, ST, M.Sc', 'PIF1526 - Disain Interaksi dan Antarmuka/5/E/3/RES', '198605052015031006', 'Jumat', '07:10:00', '08:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1094, 57, 'Reski Mai Candra, ST, M.Sc', 'PIF1526 - Disain Interaksi dan Antarmuka/5/E/3/RES', '198605052015031006', 'Jumat', '08:00:00', '08:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1095, 57, 'Reski Mai Candra, ST, M.Sc', 'PIF1526 - Disain Interaksi dan Antarmuka/5/E/3/RES', '198605052015031006', 'Jumat', '08:50:00', '09:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1096, 58, 'Reski Mai Candra, ST, M.Sc', 'PIF1525 - Keamanan Informasi/5/C/3/RES', '198605052015031006', 'Jumat', '09:40:00', '10:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1097, 58, 'Reski Mai Candra, ST, M.Sc', 'PIF1525 - Keamanan Informasi/5/C/3/RES', '198605052015031006', 'Jumat', '10:30:00', '11:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1098, 58, 'Reski Mai Candra, ST, M.Sc', 'PIF1525 - Keamanan Informasi/5/C/3/RES', '198605052015031006', 'Jumat', '11:20:00', '12:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1099, 59, 'Syarifuddin, M.Ag', 'UIN2007 - Fiqih/5/A/2/SYF', '197103132007011023', 'Senin', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1100, 59, 'Syarifuddin, M.Ag', 'UIN2007 - Fiqih/5/A/2/SYF', '197103132007011023', 'Senin', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1101, 60, 'Syarifuddin, M.Ag', 'UIN2007 - Fiqih/5/B/2/SYF', '197103132007011023', 'Senin', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1102, 60, 'Syarifuddin, M.Ag', 'UIN2007 - Fiqih/5/B/2/SYF', '197103132007011023', 'Senin', '15:30:00', '16:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1103, 61, 'Syarifuddin, M.Ag', 'UIN2007 - Fiqih/5/C/2/SYF', '197103132007011023', 'Selasa', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1104, 61, 'Syarifuddin, M.Ag', 'UIN2007 - Fiqih/5/C/2/SYF', '197103132007011023', 'Selasa', '15:30:00', '16:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1105, 62, 'Syarifuddin, M.Ag', 'UIN2007 - Fiqih/5/D/2/SYF', '197103132007011023', 'Kamis', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1106, 62, 'Syarifuddin, M.Ag', 'UIN2007 - Fiqih/5/D/2/SYF', '197103132007011023', 'Kamis', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1107, 63, 'Syarifuddin, M.Ag', 'UIN2007 - Fiqih/5/E/2/SYF', '197103132007011023', 'Kamis', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1108, 63, 'Syarifuddin, M.Ag', 'UIN2007 - Fiqih/5/E/2/SYF', '197103132007011023', 'Kamis', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1109, 64, 'Syarifuddin, M.Ag', 'UIN2005 - Studi Hadits/3/A/2/SYF', '197103132007011023', 'Selasa', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1110, 64, 'Syarifuddin, M.Ag', 'UIN2005 - Studi Hadits/3/A/2/SYF', '197103132007011023', 'Selasa', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1111, 65, 'Teddie, D, M.T.I', 'PIF1733 - Tata Kelola Teknologi Informasi/7/E/3/TED', '198705242015031006', 'Rabu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1112, 65, 'Teddie, D, M.T.I', 'PIF1733 - Tata Kelola Teknologi Informasi/7/E/3/TED', '198705242015031006', 'Rabu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1113, 65, 'Teddie, D, M.T.I', 'PIF1733 - Tata Kelola Teknologi Informasi/7/E/3/TED', '198705242015031006', 'Rabu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1114, 66, 'Teddie, D, M.T.I', 'PIF1733 - Tata Kelola Teknologi Informasi/7/F/3/TED', '198705242015031006', 'Selasa', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1115, 66, 'Teddie, D, M.T.I', 'PIF1733 - Tata Kelola Teknologi Informasi/7/F/3/TED', '198705242015031006', 'Selasa', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1116, 66, 'Teddie, D, M.T.I', 'PIF1733 - Tata Kelola Teknologi Informasi/7/F/3/TED', '198705242015031006', 'Selasa', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1117, 67, 'Teddie, D, M.T.I', 'PIF1733 - Tata Kelola Teknologi Informasi/7/G/3/TED', '198705242015031006', 'Selasa', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1118, 67, 'Teddie, D, M.T.I', 'PIF1733 - Tata Kelola Teknologi Informasi/7/G/3/TED', '198705242015031006', 'Selasa', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1119, 67, 'Teddie, D, M.T.I', 'PIF1733 - Tata Kelola Teknologi Informasi/7/G/3/TED', '198705242015031006', 'Selasa', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1120, 68, 'Teddie, D, M.T.I', 'PIF3035 - IT Policy and Law/0/A/3/TED', '198705242015031006', 'Kamis', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1121, 68, 'Teddie, D, M.T.I', 'PIF3035 - IT Policy and Law/0/A/3/TED', '198705242015031006', 'Kamis', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1122, 68, 'Teddie, D, M.T.I', 'PIF3035 - IT Policy and Law/0/A/3/TED', '198705242015031006', 'Kamis', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1123, 69, 'Yelfi Vitriani, MMSi', 'PIF1523 - Sistem Informasi/5/A/3/YLV', '197403192008012015', 'Kamis', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1124, 69, 'Yelfi Vitriani, MMSi', 'PIF1523 - Sistem Informasi/5/A/3/YLV', '197403192008012015', 'Kamis', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1125, 69, 'Yelfi Vitriani, MMSi', 'PIF1523 - Sistem Informasi/5/A/3/YLV', '197403192008012015', 'Kamis', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1126, 70, 'Yelfi Vitriani, MMSi', 'PIF1523 - Sistem Informasi/5/B/3/YLV', '197403192008012015', 'Kamis', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1127, 70, 'Yelfi Vitriani, MMSi', 'PIF1523 - Sistem Informasi/5/B/3/YLV', '197403192008012015', 'Kamis', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1128, 70, 'Yelfi Vitriani, MMSi', 'PIF1523 - Sistem Informasi/5/B/3/YLV', '197403192008012015', 'Kamis', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1129, 71, 'Yelfi Vitriani, MMSi', 'PIF1102 - Pengantar Teknologi Informasi dan Komunikasi/1/C/2/YLV', '197403192008012015', 'Selasa', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1130, 71, 'Yelfi Vitriani, MMSi', 'PIF1102 - Pengantar Teknologi Informasi dan Komunikasi/1/C/2/YLV', '197403192008012015', 'Selasa', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1131, 73, 'Yusra, ST, MT', 'PIF1311 - Teori Bahasa dan Otomata/3/A/3/YSR', '198401232015032001', 'Senin', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1132, 73, 'Yusra, ST, MT', 'PIF1311 - Teori Bahasa dan Otomata/3/A/3/YSR', '198401232015032001', 'Senin', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1133, 73, 'Yusra, ST, MT', 'PIF1311 - Teori Bahasa dan Otomata/3/A/3/YSR', '198401232015032001', 'Senin', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1134, 74, 'Yusra, ST, MT', 'PIF1311 - Teori Bahasa dan Otomata/3/B/3/YSR', '198401232015032001', 'Selasa', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1135, 74, 'Yusra, ST, MT', 'PIF1311 - Teori Bahasa dan Otomata/3/B/3/YSR', '198401232015032001', 'Selasa', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1136, 74, 'Yusra, ST, MT', 'PIF1311 - Teori Bahasa dan Otomata/3/B/3/YSR', '198401232015032001', 'Selasa', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1137, 75, 'Yusra, ST, MT', 'PIF1311 - Teori Bahasa dan Otomata/3/C/3/YSR', '198401232015032001', 'Rabu', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1138, 75, 'Yusra, ST, MT', 'PIF1311 - Teori Bahasa dan Otomata/3/C/3/YSR', '198401232015032001', 'Rabu', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1139, 75, 'Yusra, ST, MT', 'PIF1311 - Teori Bahasa dan Otomata/3/C/3/YSR', '198401232015032001', 'Rabu', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1140, 76, 'Yusra, ST, MT', 'PIF3024 - Natural Language Processing/0/A/3/YSR', '198401232015032001', 'Jumat', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1141, 76, 'Yusra, ST, MT', 'PIF3024 - Natural Language Processing/0/A/3/YSR', '198401232015032001', 'Jumat', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1142, 76, 'Yusra, ST, MT', 'PIF3024 - Natural Language Processing/0/A/3/YSR', '198401232015032001', 'Jumat', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1143, 77, 'Eka Pandu Cynthia, ST, M.Kom', 'PIF1527 - Metode Numerik/5/D/3/EKA', '129517044', 'Selasa', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1144, 77, 'Eka Pandu Cynthia, ST, M.Kom', 'PIF1527 - Metode Numerik/5/D/3/EKA', '129517044', 'Selasa', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1145, 77, 'Eka Pandu Cynthia, ST, M.Kom', 'PIF1527 - Metode Numerik/5/D/3/EKA', '129517044', 'Selasa', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1146, 79, 'Eka Pandu Cynthia, ST, M.Kom', 'PIF1313 - Arsitektur Komputer/3/F/3/EKA', '129517044', 'Senin', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1147, 79, 'Eka Pandu Cynthia, ST, M.Kom', 'PIF1313 - Arsitektur Komputer/3/F/3/EKA', '129517044', 'Senin', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1148, 79, 'Eka Pandu Cynthia, ST, M.Kom', 'PIF1313 - Arsitektur Komputer/3/F/3/EKA', '129517044', 'Senin', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1149, 80, 'Eka Pandu Cynthia, ST, M.Kom', 'PIF1313 - Arsitektur Komputer/3/G/3/EKA', '129517044', 'Senin', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1150, 80, 'Eka Pandu Cynthia, ST, M.Kom', 'PIF1313 - Arsitektur Komputer/3/G/3/EKA', '129517044', 'Senin', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1151, 80, 'Eka Pandu Cynthia, ST, M.Kom', 'PIF1313 - Arsitektur Komputer/3/G/3/EKA', '129517044', 'Senin', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1152, 81, 'Fadhilah Syafria, ST, M.Kom', 'PIF3026 - Jaringan Syaraf Tiruan/0/A/3/FDL', '130517102', 'Jumat', '07:10:00', '08:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1153, 81, 'Fadhilah Syafria, ST, M.Kom', 'PIF3026 - Jaringan Syaraf Tiruan/0/A/3/FDL', '130517102', 'Jumat', '08:00:00', '08:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1154, 81, 'Fadhilah Syafria, ST, M.Kom', 'PIF3026 - Jaringan Syaraf Tiruan/0/A/3/FDL', '130517102', 'Jumat', '08:50:00', '09:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1155, 85, 'Fitri Insani, ST, M.Kom', 'PIF1101 - Kalkulus/1/A/3/FIN', '130510024', 'Selasa', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1156, 85, 'Fitri Insani, ST, M.Kom', 'PIF1101 - Kalkulus/1/A/3/FIN', '130510024', 'Selasa', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1157, 85, 'Fitri Insani, ST, M.Kom', 'PIF1101 - Kalkulus/1/A/3/FIN', '130510024', 'Selasa', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1158, 86, 'Fitri Insani, ST, M.Kom', 'PIF1101 - Kalkulus/1/B/3/FIN', '130510024', 'Selasa', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1159, 86, 'Fitri Insani, ST, M.Kom', 'PIF1101 - Kalkulus/1/B/3/FIN', '130510024', 'Selasa', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1160, 86, 'Fitri Insani, ST, M.Kom', 'PIF1101 - Kalkulus/1/B/3/FIN', '130510024', 'Selasa', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1161, 88, 'Fitri Insani, ST, M.Kom', 'PIF1104 - Sistem Digital/1/E/3/FIN', '130510024', 'Rabu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1162, 88, 'Fitri Insani, ST, M.Kom', 'PIF1104 - Sistem Digital/1/E/3/FIN', '130510024', 'Rabu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1163, 88, 'Fitri Insani, ST, M.Kom', 'PIF1104 - Sistem Digital/1/E/3/FIN', '130510024', 'Rabu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1164, 89, 'Iis Afrianty, ST, M.Sc', 'PIF1524 - Rekayasa Perangkat Lunak Berorientasi Objek/5/C/3/IIS', '130517101', 'Jumat', '07:10:00', '08:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1165, 89, 'Iis Afrianty, ST, M.Sc', 'PIF1524 - Rekayasa Perangkat Lunak Berorientasi Objek/5/C/3/IIS', '130517101', 'Jumat', '08:00:00', '08:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1166, 89, 'Iis Afrianty, ST, M.Sc', 'PIF1524 - Rekayasa Perangkat Lunak Berorientasi Objek/5/C/3/IIS', '130517101', 'Jumat', '08:50:00', '09:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1167, 90, 'Iis Afrianty, ST, M.Sc', 'PIF1524 - Rekayasa Perangkat Lunak Berorientasi Objek/5/D/3/IIS', '130517101', 'Kamis', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1168, 90, 'Iis Afrianty, ST, M.Sc', 'PIF1524 - Rekayasa Perangkat Lunak Berorientasi Objek/5/D/3/IIS', '130517101', 'Kamis', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1169, 90, 'Iis Afrianty, ST, M.Sc', 'PIF1524 - Rekayasa Perangkat Lunak Berorientasi Objek/5/D/3/IIS', '130517101', 'Kamis', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1170, 93, 'Lola Oktavia, S.S.T, M.T.I', 'PIF1314 - Struktur Data/3/D/3/LOL', '130517104', 'Selasa', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1171, 93, 'Lola Oktavia, S.S.T, M.T.I', 'PIF1314 - Struktur Data/3/D/3/LOL', '130517104', 'Selasa', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1172, 93, 'Lola Oktavia, S.S.T, M.T.I', 'PIF1314 - Struktur Data/3/D/3/LOL', '130517104', 'Selasa', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1173, 94, 'Lola Oktavia, S.S.T, M.T.I', 'PIF1314 - Struktur Data/3/E/3/LOL', '130517104', 'Selasa', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1174, 94, 'Lola Oktavia, S.S.T, M.T.I', 'PIF1314 - Struktur Data/3/E/3/LOL', '130517104', 'Selasa', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1175, 94, 'Lola Oktavia, S.S.T, M.T.I', 'PIF1314 - Struktur Data/3/E/3/LOL', '130517104', 'Selasa', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1176, 95, 'Lola Oktavia, S.S.T, M.T.I', 'PIF1103 - Dasar Pemrograman/1/K/3/LOL', '130517104', 'Rabu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1177, 95, 'Lola Oktavia, S.S.T, M.T.I', 'PIF1103 - Dasar Pemrograman/1/K/3/LOL', '130517104', 'Rabu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1178, 95, 'Lola Oktavia, S.S.T, M.T.I', 'PIF1103 - Dasar Pemrograman/1/K/3/LOL', '130517104', 'Rabu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1179, 97, 'Nazruddin Safaat H., MT', 'PIF1103 - Dasar Pemrograman/1/C/3/NAZ', '130517100', 'Senin', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1180, 97, 'Nazruddin Safaat H., MT', 'PIF1103 - Dasar Pemrograman/1/C/3/NAZ', '130517100', 'Senin', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1181, 97, 'Nazruddin Safaat H., MT', 'PIF1103 - Dasar Pemrograman/1/C/3/NAZ', '130517100', 'Senin', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1182, 98, 'Nazruddin Safaat H., MT', 'PIF1525 - Keamanan Informasi/5/A/3/NAZ', '130517100', 'Selasa', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1183, 98, 'Nazruddin Safaat H., MT', 'PIF1525 - Keamanan Informasi/5/A/3/NAZ', '130517100', 'Selasa', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1184, 98, 'Nazruddin Safaat H., MT', 'PIF1525 - Keamanan Informasi/5/A/3/NAZ', '130517100', 'Selasa', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1185, 99, 'Nazruddin Safaat H., MT', 'PIF1525 - Keamanan Informasi/5/B/3/NAZ', '130517100', 'Rabu', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1186, 99, 'Nazruddin Safaat H., MT', 'PIF1525 - Keamanan Informasi/5/B/3/NAZ', '130517100', 'Rabu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1187, 99, 'Nazruddin Safaat H., MT', 'PIF1525 - Keamanan Informasi/5/B/3/NAZ', '130517100', 'Rabu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1188, 100, 'Nazruddin Safaat H., MT', 'PIF1103 - Dasar Pemrograman/1/D/3/NAZ', '130517100', 'Selasa', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1189, 100, 'Nazruddin Safaat H., MT', 'PIF1103 - Dasar Pemrograman/1/D/3/NAZ', '130517100', 'Selasa', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1190, 100, 'Nazruddin Safaat H., MT', 'PIF1103 - Dasar Pemrograman/1/D/3/NAZ', '130517100', 'Selasa', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1191, 101, 'Pizaini, ST, M.Kom', 'PIF1103 - Dasar Pemrograman/1/A/3/PIZ', '130517107', 'Senin', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1192, 101, 'Pizaini, ST, M.Kom', 'PIF1103 - Dasar Pemrograman/1/A/3/PIZ', '130517107', 'Senin', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1193, 101, 'Pizaini, ST, M.Kom', 'PIF1103 - Dasar Pemrograman/1/A/3/PIZ', '130517107', 'Senin', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1194, 102, 'Pizaini, ST, M.Kom', 'PIF1103 - Dasar Pemrograman/1/B/3/PIZ', '130517107', 'Senin', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1195, 102, 'Pizaini, ST, M.Kom', 'PIF1103 - Dasar Pemrograman/1/B/3/PIZ', '130517107', 'Senin', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1196, 102, 'Pizaini, ST, M.Kom', 'PIF1103 - Dasar Pemrograman/1/B/3/PIZ', '130517107', 'Senin', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1197, 103, 'Pizaini, ST, M.Kom', 'PIF1315 - Teknologi Web/3/C/2/PIZ', '130517107', 'Rabu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1198, 103, 'Pizaini, ST, M.Kom', 'PIF1315 - Teknologi Web/3/C/2/PIZ', '130517107', 'Rabu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1199, 104, 'Pizaini, ST, M.Kom', 'PIF1315 - Teknologi Web/3/D/2/PIZ', '130517107', 'Rabu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1200, 104, 'Pizaini, ST, M.Kom', 'PIF1315 - Teknologi Web/3/D/2/PIZ', '130517107', 'Rabu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:47', '2018-10-11 04:33:47'),
(1201, 105, 'Pizaini, ST, M.Kom', 'PIF1315 - Teknologi Web/3/E/2/PIZ', '130517107', 'Selasa', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1202, 105, 'Pizaini, ST, M.Kom', 'PIF1315 - Teknologi Web/3/E/2/PIZ', '130517107', 'Selasa', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1203, 106, 'Rahmad Abdillah, ST, MT', 'PIF1525 - Keamanan Informasi/5/D/3/RMA', '130517106', 'Sabtu', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1204, 106, 'Rahmad Abdillah, ST, MT', 'PIF1525 - Keamanan Informasi/5/D/3/RMA', '130517106', 'Sabtu', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1205, 106, 'Rahmad Abdillah, ST, MT', 'PIF1525 - Keamanan Informasi/5/D/3/RMA', '130517106', 'Sabtu', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1206, 107, 'Rahmad Abdillah, ST, MT', 'PIF1525 - Keamanan Informasi/5/E/3/RMA', '130517106', 'Sabtu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1207, 107, 'Rahmad Abdillah, ST, MT', 'PIF1525 - Keamanan Informasi/5/E/3/RMA', '130517106', 'Sabtu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1208, 107, 'Rahmad Abdillah, ST, MT', 'PIF1525 - Keamanan Informasi/5/E/3/RMA', '130517106', 'Sabtu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1209, 108, 'Siska Kurnia Gusti, ST, M.Sc', 'PIF1101 - Kalkulus/1/C/3/SIS', '130517105', 'Senin', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1210, 108, 'Siska Kurnia Gusti, ST, M.Sc', 'PIF1101 - Kalkulus/1/C/3/SIS', '130517105', 'Senin', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1211, 108, 'Siska Kurnia Gusti, ST, M.Sc', 'PIF1101 - Kalkulus/1/C/3/SIS', '130517105', 'Senin', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1212, 109, 'Siska Kurnia Gusti, ST, M.Sc', 'PIF1101 - Kalkulus/1/D/3/SIS', '130517105', 'Senin', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1213, 109, 'Siska Kurnia Gusti, ST, M.Sc', 'PIF1101 - Kalkulus/1/D/3/SIS', '130517105', 'Senin', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1214, 109, 'Siska Kurnia Gusti, ST, M.Sc', 'PIF1101 - Kalkulus/1/D/3/SIS', '130517105', 'Senin', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1215, 112, 'Siti Ramadhani, S.Pd, M.Kom', 'PIF1527 - Metode Numerik/5/A/3/STR', '130517045', 'Kamis', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1216, 112, 'Siti Ramadhani, S.Pd, M.Kom', 'PIF1527 - Metode Numerik/5/A/3/STR', '130517045', 'Kamis', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1217, 112, 'Siti Ramadhani, S.Pd, M.Kom', 'PIF1527 - Metode Numerik/5/A/3/STR', '130517045', 'Kamis', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1218, 114, 'Siti Ramadhani, S.Pd, M.Kom', 'PIF1313 - Arsitektur Komputer/3/D/3/STR', '130517045', 'Senin', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1219, 114, 'Siti Ramadhani, S.Pd, M.Kom', 'PIF1313 - Arsitektur Komputer/3/D/3/STR', '130517045', 'Senin', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1220, 114, 'Siti Ramadhani, S.Pd, M.Kom', 'PIF1313 - Arsitektur Komputer/3/D/3/STR', '130517045', 'Senin', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1221, 115, 'Siti Ramadhani, S.Pd, M.Kom', 'PIF1313 - Arsitektur Komputer/3/E/3/STR', '130517045', 'Senin', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1222, 115, 'Siti Ramadhani, S.Pd, M.Kom', 'PIF1313 - Arsitektur Komputer/3/E/3/STR', '130517045', 'Senin', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48');
INSERT INTO `jadwal_kuliah` (`id_jadwal_kuliah`, `id_schedule`, `nama_dosen`, `mata_kuliah`, `nip`, `hari`, `mulai`, `selesai`, `sks`, `created_at`, `updated_at`) VALUES
(1223, 115, 'Siti Ramadhani, S.Pd, M.Kom', 'PIF1313 - Arsitektur Komputer/3/E/3/STR', '130517045', 'Senin', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1224, 116, 'Suwanto Sanjaya, ST, M.Kom', 'PIF1312 - Basis Data/3/D/3/SUW', '130517103', 'Senin', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1225, 116, 'Suwanto Sanjaya, ST, M.Kom', 'PIF1312 - Basis Data/3/D/3/SUW', '130517103', 'Senin', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1226, 116, 'Suwanto Sanjaya, ST, M.Kom', 'PIF1312 - Basis Data/3/D/3/SUW', '130517103', 'Senin', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1227, 117, 'Suwanto Sanjaya, ST, M.Kom', 'PIF1312 - Basis Data/3/E/3/SUW', '130517103', 'Selasa', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1228, 117, 'Suwanto Sanjaya, ST, M.Kom', 'PIF1312 - Basis Data/3/E/3/SUW', '130517103', 'Selasa', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1229, 117, 'Suwanto Sanjaya, ST, M.Kom', 'PIF1312 - Basis Data/3/E/3/SUW', '130517103', 'Selasa', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1230, 118, 'Suwanto Sanjaya, ST, M.Kom', 'PIF1312 - Basis Data/3/F/3/SUW', '130517103', 'Senin', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1231, 118, 'Suwanto Sanjaya, ST, M.Kom', 'PIF1312 - Basis Data/3/F/3/SUW', '130517103', 'Senin', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1232, 118, 'Suwanto Sanjaya, ST, M.Kom', 'PIF1312 - Basis Data/3/F/3/SUW', '130517103', 'Senin', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1233, 119, 'Suwanto Sanjaya, ST, M.Kom', 'PIF1315 - Teknologi Web/3/F/2/SUW', '130517103', 'Rabu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1234, 119, 'Suwanto Sanjaya, ST, M.Kom', 'PIF1315 - Teknologi Web/3/F/2/SUW', '130517103', 'Rabu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1235, 120, 'Suwanto Sanjaya, ST, M.Kom', 'PIF1315 - Teknologi Web/3/G/2/SUW', '130517103', 'Rabu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1236, 120, 'Suwanto Sanjaya, ST, M.Kom', 'PIF1315 - Teknologi Web/3/G/2/SUW', '130517103', 'Rabu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1237, 124, 'Lestari Handayani, ST, M.Kom', 'PIF1314 - Struktur Data/3/F/3/TAR', '198111132007102003', 'Sabtu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1238, 124, 'Lestari Handayani, ST, M.Kom', 'PIF1314 - Struktur Data/3/F/3/TAR', '198111132007102003', 'Sabtu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1239, 124, 'Lestari Handayani, ST, M.Kom', 'PIF1314 - Struktur Data/3/F/3/TAR', '198111132007102003', 'Sabtu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1240, 126, 'Dr. Roza Linda, M.Si', 'PIF1732 - Data Mining/7/G/3/RZL', '-', 'Rabu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1241, 126, 'Dr. Roza Linda, M.Si', 'PIF1732 - Data Mining/7/G/3/RZL', '-', 'Rabu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1242, 126, 'Dr. Roza Linda, M.Si', 'PIF1732 - Data Mining/7/G/3/RZL', '-', 'Rabu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1243, 132, 'Edriansyah, M.Kom', 'PIF1522 - Jaringan Komputer/5/D/3/EDR', '-', 'Kamis', '15:30:00', '16:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1244, 132, 'Edriansyah, M.Kom', 'PIF1522 - Jaringan Komputer/5/D/3/EDR', '-', 'Kamis', '16:20:00', '17:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1245, 132, 'Edriansyah, M.Kom', 'PIF1522 - Jaringan Komputer/5/D/3/EDR', '-', 'Kamis', '17:10:00', '18:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1246, 133, 'Edriansyah, M.Kom', 'PIF1522 - Jaringan Komputer/5/E/3/EDR', '-', 'Kamis', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1247, 133, 'Edriansyah, M.Kom', 'PIF1522 - Jaringan Komputer/5/E/3/EDR', '-', 'Kamis', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1248, 133, 'Edriansyah, M.Kom', 'PIF1522 - Jaringan Komputer/5/E/3/EDR', '-', 'Kamis', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1249, 134, 'Gery Iswanto, SH, M.Hum', 'UIN2001 - Pancasila/1/A/2/GER', '-', 'Jumat', '08:50:00', '09:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1250, 134, 'Gery Iswanto, SH, M.Hum', 'UIN2001 - Pancasila/1/A/2/GER', '-', 'Jumat', '09:40:00', '10:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1251, 135, 'Gery Iswanto, SH, M.Hum', 'UIN2001 - Pancasila/1/B/2/GER', '-', 'Jumat', '10:30:00', '11:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1252, 135, 'Gery Iswanto, SH, M.Hum', 'UIN2001 - Pancasila/1/B/2/GER', '-', 'Jumat', '11:20:00', '12:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1253, 136, 'Gery Iswanto, SH, M.Hum', 'UIN2001 - Pancasila/1/C/2/GER', '-', 'Jumat', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1254, 136, 'Gery Iswanto, SH, M.Hum', 'UIN2001 - Pancasila/1/C/2/GER', '-', 'Jumat', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1255, 137, 'Bunga Cynthia Utami, S.IP, ME', 'UIN2001 - Pancasila/1/D/2/BCU', '-', 'Senin', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1256, 137, 'Bunga Cynthia Utami, S.IP, ME', 'UIN2001 - Pancasila/1/D/2/BCU', '-', 'Senin', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1257, 138, 'Bunga Cynthia Utami, S.IP, ME', 'UIN2001 - Pancasila/1/E/2/BCU', '-', 'Senin', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1258, 138, 'Bunga Cynthia Utami, S.IP, ME', 'UIN2001 - Pancasila/1/E/2/BCU', '-', 'Senin', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1259, 139, 'Iki Munica Kasmy, M.Sy', 'UIN2003 - Metodologi Studi Islam/1/A/2/IKI', '-', 'Senin', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1260, 139, 'Iki Munica Kasmy, M.Sy', 'UIN2003 - Metodologi Studi Islam/1/A/2/IKI', '-', 'Senin', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1261, 140, 'Iki Munica Kasmy, M.Sy', 'UIN2003 - Metodologi Studi Islam/1/B/2/IKI', '-', 'Senin', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1262, 140, 'Iki Munica Kasmy, M.Sy', 'UIN2003 - Metodologi Studi Islam/1/B/2/IKI', '-', 'Senin', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1263, 141, 'Iki Munica Kasmy, M.Sy', 'UIN2003 - Metodologi Studi Islam/1/C/2/IKI', '-', 'Jumat', '08:00:00', '08:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1264, 141, 'Iki Munica Kasmy, M.Sy', 'UIN2003 - Metodologi Studi Islam/1/C/2/IKI', '-', 'Jumat', '08:50:00', '09:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1265, 142, 'Iki Munica Kasmy, M.Sy', 'UIN2003 - Metodologi Studi Islam/1/D/2/IKI', '-', 'Jumat', '09:40:00', '10:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1266, 142, 'Iki Munica Kasmy, M.Sy', 'UIN2003 - Metodologi Studi Islam/1/D/2/IKI', '-', 'Jumat', '10:30:00', '11:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1267, 143, 'Abuzar Alghifari, S.Ud, M.Ag', 'UIN2005 - Studi Hadits/3/F/2/ABZ', '-', 'Jumat', '08:00:00', '08:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1268, 143, 'Abuzar Alghifari, S.Ud, M.Ag', 'UIN2005 - Studi Hadits/3/F/2/ABZ', '-', 'Jumat', '08:50:00', '09:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1269, 144, 'Abuzar Alghifari, S.Ud, M.Ag', 'UIN2005 - Studi Hadits/3/G/2/ABZ', '-', 'Jumat', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1270, 144, 'Abuzar Alghifari, S.Ud, M.Ag', 'UIN2005 - Studi Hadits/3/G/2/ABZ', '-', 'Jumat', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1271, 145, 'Roza Afifah, S.Pd, M.Hum', 'UIN2008 - Bahasa Indonesia/1/A/2/RZA', '-', 'Rabu', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1272, 145, 'Roza Afifah, S.Pd, M.Hum', 'UIN2008 - Bahasa Indonesia/1/A/2/RZA', '-', 'Rabu', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1273, 146, 'Roza Afifah, S.Pd, M.Hum', 'UIN2008 - Bahasa Indonesia/1/B/2/RZA', '-', 'Rabu', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1274, 146, 'Roza Afifah, S.Pd, M.Hum', 'UIN2008 - Bahasa Indonesia/1/B/2/RZA', '-', 'Rabu', '15:30:00', '16:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1275, 147, 'Roza Afifah, S.Pd, M.Hum', 'UIN2008 - Bahasa Indonesia/1/C/2/RZA', '-', 'Jumat', '10:30:00', '11:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1276, 147, 'Roza Afifah, S.Pd, M.Hum', 'UIN2008 - Bahasa Indonesia/1/C/2/RZA', '-', 'Jumat', '11:20:00', '12:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1277, 148, 'Elvina, M.Pd', 'UIN2008 - Bahasa Indonesia/1/D/2/EVN', '-', 'Senin', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1278, 148, 'Elvina, M.Pd', 'UIN2008 - Bahasa Indonesia/1/D/2/EVN', '-', 'Senin', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1279, 149, 'Elvina, M.Pd', 'UIN2008 - Bahasa Indonesia/1/E/2/EVN', '-', 'Senin', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1280, 149, 'Elvina, M.Pd', 'UIN2008 - Bahasa Indonesia/1/E/2/EVN', '-', 'Senin', '15:30:00', '16:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1281, 150, 'Atik Fikri Ilyas, Lc. M.A.', 'UIN2005 - Studi Hadits/3/B/2/AFI', '-', 'Rabu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1282, 150, 'Atik Fikri Ilyas, Lc. M.A.', 'UIN2005 - Studi Hadits/3/B/2/AFI', '-', 'Rabu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1283, 151, 'Atik Fikri Ilyas, Lc. M.A.', 'UIN2005 - Studi Hadits/3/C/2/AFI', '-', 'Jumat', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1284, 151, 'Atik Fikri Ilyas, Lc. M.A.', 'UIN2005 - Studi Hadits/3/C/2/AFI', '-', 'Jumat', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1285, 152, 'Atik Fikri Ilyas, Lc. M.A.', 'UIN2005 - Studi Hadits/3/D/2/AFI', '-', 'Jumat', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1286, 152, 'Atik Fikri Ilyas, Lc. M.A.', 'UIN2005 - Studi Hadits/3/D/2/AFI', '-', 'Jumat', '15:30:00', '16:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1287, 153, 'Atik Fikri Ilyas, Lc. M.A.', 'UIN2005 - Studi Hadits/3/E/2/AFI', '-', 'Rabu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1288, 153, 'Atik Fikri Ilyas, Lc. M.A.', 'UIN2005 - Studi Hadits/3/E/2/AFI', '-', 'Rabu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1289, 154, 'Dr. Yahanan, M.Sy', 'UIN2016 - SIAT dan Tamaddun Melayu/7/A/2/YHN', '1610052107740001', 'Selasa', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1290, 154, 'Dr. Yahanan, M.Sy', 'UIN2016 - SIAT dan Tamaddun Melayu/7/A/2/YHN', '1610052107740001', 'Selasa', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1291, 155, 'Dr. Yahanan, M.Sy', 'UIN2016 - SIAT dan Tamaddun Melayu/7/B/2/YHN', '1610052107740001', 'Selasa', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1292, 155, 'Dr. Yahanan, M.Sy', 'UIN2016 - SIAT dan Tamaddun Melayu/7/B/2/YHN', '1610052107740001', 'Selasa', '15:30:00', '16:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1293, 156, 'Solehuddin Harahap, S.HI, M.SY', 'UIN2016 - SIAT dan Tamaddun Melayu/7/C/2/SLH', '1471090704850022', 'Kamis', '15:30:00', '16:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1294, 156, 'Solehuddin Harahap, S.HI, M.SY', 'UIN2016 - SIAT dan Tamaddun Melayu/7/C/2/SLH', '1471090704850022', 'Kamis', '16:20:00', '17:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1295, 157, 'Bambang Supradi, M.Pd.I', 'UIN2016 - SIAT dan Tamaddun Melayu/7/D/2/BSP', '-', 'Selasa', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1296, 157, 'Bambang Supradi, M.Pd.I', 'UIN2016 - SIAT dan Tamaddun Melayu/7/D/2/BSP', '-', 'Selasa', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1297, 158, 'Bambang Supradi, M.Pd.I', 'UIN2016 - SIAT dan Tamaddun Melayu/7/E/2/BSP', '-', 'Selasa', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1298, 158, 'Bambang Supradi, M.Pd.I', 'UIN2016 - SIAT dan Tamaddun Melayu/7/E/2/BSP', '-', 'Selasa', '15:30:00', '16:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1299, 159, 'Bambang Supradi, M.Pd.I', 'UIN2016 - SIAT dan Tamaddun Melayu/7/F/2/BSP', '-', 'Senin', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1300, 159, 'Bambang Supradi, M.Pd.I', 'UIN2016 - SIAT dan Tamaddun Melayu/7/F/2/BSP', '-', 'Senin', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1301, 160, 'Bambang Supradi, M.Pd.I', 'UIN2016 - SIAT dan Tamaddun Melayu/7/G/2/BSP', '-', 'Senin', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1302, 160, 'Bambang Supradi, M.Pd.I', 'UIN2016 - SIAT dan Tamaddun Melayu/7/G/2/BSP', '-', 'Senin', '15:30:00', '16:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1303, 161, 'Lydia Afritalia, S.Pd, M.Si', 'PIF1527 - Metode Numerik/5/K/3/LYD', '-', 'Jumat', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1304, 161, 'Lydia Afritalia, S.Pd, M.Si', 'PIF1527 - Metode Numerik/5/K/3/LYD', '-', 'Jumat', '15:30:00', '16:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1305, 161, 'Lydia Afritalia, S.Pd, M.Si', 'PIF1527 - Metode Numerik/5/K/3/LYD', '-', 'Jumat', '16:20:00', '17:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1306, 167, 'Solehuddin Harahap, S.HI, M.SY', 'UIN2003 - Metodologi Studi Islam/1/E/2/SLH', '1471090704850022', 'Sabtu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1307, 167, 'Solehuddin Harahap, S.HI, M.SY', 'UIN2003 - Metodologi Studi Islam/1/E/2/SLH', '1471090704850022', 'Sabtu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1308, 168, 'Dr. Alwis Nazir, M.Kom', 'PIF1628 - Tugas Akhir 1/7/A/2/ALW', '197408072009011007', 'Selasa', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1309, 168, 'Dr. Alwis Nazir, M.Kom', 'PIF1628 - Tugas Akhir 1/7/A/2/ALW', '197408072009011007', 'Selasa', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1310, 170, 'Lestari Handayani, ST, M.Kom', 'PIF1314 - Struktur Data/3/G/3/TAR', '198111132007102003', 'Sabtu', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1311, 170, 'Lestari Handayani, ST, M.Kom', 'PIF1314 - Struktur Data/3/G/3/TAR', '198111132007102003', 'Sabtu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1312, 170, 'Lestari Handayani, ST, M.Kom', 'PIF1314 - Struktur Data/3/G/3/TAR', '198111132007102003', 'Sabtu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1313, 172, 'Al Aminuddin, ST, M.Sc', 'PIF3006 - Information Retrieval/0/A/3/AMN', '130514002', 'Jumat', '15:30:00', '16:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1314, 172, 'Al Aminuddin, ST, M.Sc', 'PIF3006 - Information Retrieval/0/A/3/AMN', '130514002', 'Jumat', '16:20:00', '17:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1315, 172, 'Al Aminuddin, ST, M.Sc', 'PIF3006 - Information Retrieval/0/A/3/AMN', '130514002', 'Jumat', '17:10:00', '18:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1316, 177, 'Sonya Maiterice, ST, M.S.Eng', 'PIF1524 - Rekayasa Perangkat Lunak Berorientasi Objek/5/E/3/SON', '130512060', 'Rabu', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1317, 177, 'Sonya Maiterice, ST, M.S.Eng', 'PIF1524 - Rekayasa Perangkat Lunak Berorientasi Objek/5/E/3/SON', '130512060', 'Rabu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1318, 177, 'Sonya Maiterice, ST, M.S.Eng', 'PIF1524 - Rekayasa Perangkat Lunak Berorientasi Objek/5/E/3/SON', '130512060', 'Rabu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1319, 182, 'Fathurahma, ST, M.Kom', 'PIF3021 - Pengembangan Aplikasi Mobile/0/A/3/FTH', '-', 'Kamis', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1320, 182, 'Fathurahma, ST, M.Kom', 'PIF3021 - Pengembangan Aplikasi Mobile/0/A/3/FTH', '-', 'Kamis', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1321, 182, 'Fathurahma, ST, M.Kom', 'PIF3021 - Pengembangan Aplikasi Mobile/0/A/3/FTH', '-', 'Kamis', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1322, 184, 'Priyo Puji Nugroho, S.Kom, M.Kom', 'PIF1104 - Sistem Digital/1/D/3/PPN', '-', 'Rabu', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1323, 184, 'Priyo Puji Nugroho, S.Kom, M.Kom', 'PIF1104 - Sistem Digital/1/D/3/PPN', '-', 'Rabu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1324, 184, 'Priyo Puji Nugroho, S.Kom, M.Kom', 'PIF1104 - Sistem Digital/1/D/3/PPN', '-', 'Rabu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1325, 189, 'Nazwita, M.Kom', 'PIF1101 - Kalkulus/1/K/3/NWT', '-', 'Senin', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1326, 189, 'Nazwita, M.Kom', 'PIF1101 - Kalkulus/1/K/3/NWT', '-', 'Senin', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1327, 189, 'Nazwita, M.Kom', 'PIF1101 - Kalkulus/1/K/3/NWT', '-', 'Senin', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1328, 192, 'Muhammad Fikry, ST, MSc', 'PIF1315 - Teknologi Web/3/B/2/FIK', '198010182007101002', 'Senin', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1329, 192, 'Muhammad Fikry, ST, MSc', 'PIF1315 - Teknologi Web/3/B/2/FIK', '198010182007101002', 'Senin', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1330, 196, 'Fadhilah Syafria, ST, M.Kom', 'TIF4253 - Machine Learning/0/B/3/FDL', '130517102', 'Kamis', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1331, 196, 'Fadhilah Syafria, ST, M.Kom', 'TIF4253 - Machine Learning/0/B/3/FDL', '130517102', 'Kamis', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1332, 196, 'Fadhilah Syafria, ST, M.Kom', 'TIF4253 - Machine Learning/0/B/3/FDL', '130517102', 'Kamis', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1333, 201, 'Kiki Ameliza, S.Pd, M.Kom', 'PIF1314 - Struktur Data/3/K/3/KIK', '-', 'Kamis', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1334, 201, 'Kiki Ameliza, S.Pd, M.Kom', 'PIF1314 - Struktur Data/3/K/3/KIK', '-', 'Kamis', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1335, 201, 'Kiki Ameliza, S.Pd, M.Kom', 'PIF1314 - Struktur Data/3/K/3/KIK', '-', 'Kamis', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1336, 202, 'Kiki Ameliza, S.Pd, M.Kom', 'PIF1314 - Struktur Data/3/L/3/KIK', '-', 'Kamis', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1337, 202, 'Kiki Ameliza, S.Pd, M.Kom', 'PIF1314 - Struktur Data/3/L/3/KIK', '-', 'Kamis', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1338, 202, 'Kiki Ameliza, S.Pd, M.Kom', 'PIF1314 - Struktur Data/3/L/3/KIK', '-', 'Kamis', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1339, 205, 'Khairni Sukmawati, ST, M.Kom', 'PIF1315 - Teknologi Web/3/K/2/KHA', '-', 'Sabtu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1340, 205, 'Khairni Sukmawati, ST, M.Kom', 'PIF1315 - Teknologi Web/3/K/2/KHA', '-', 'Sabtu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1341, 206, 'Khairni Sukmawati, ST, M.Kom', 'PIF1525 - Keamanan Informasi/5/K/3/KHA', '-', 'Sabtu', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1342, 206, 'Khairni Sukmawati, ST, M.Kom', 'PIF1525 - Keamanan Informasi/5/K/3/KHA', '-', 'Sabtu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1343, 206, 'Khairni Sukmawati, ST, M.Kom', 'PIF1525 - Keamanan Informasi/5/K/3/KHA', '-', 'Sabtu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1344, 207, 'Sonya Maiterice, ST, M.S.Eng', 'TIF3710 - Analisis dan Perancangan Berorientasi Objek/5/A/3/SON', '130512060', 'Senin', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1345, 207, 'Sonya Maiterice, ST, M.S.Eng', 'TIF3710 - Analisis dan Perancangan Berorientasi Objek/5/A/3/SON', '130512060', 'Senin', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1346, 207, 'Sonya Maiterice, ST, M.S.Eng', 'TIF3710 - Analisis dan Perancangan Berorientasi Objek/5/A/3/SON', '130512060', 'Senin', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1347, 208, 'Al Aminuddin, ST, M.Sc', 'PIF3006 - Information Retrieval/0/B/3/AMN', '130514002', 'Rabu', '15:30:00', '16:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1348, 208, 'Al Aminuddin, ST, M.Sc', 'PIF3006 - Information Retrieval/0/B/3/AMN', '130514002', 'Rabu', '16:20:00', '17:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1349, 208, 'Al Aminuddin, ST, M.Sc', 'PIF3006 - Information Retrieval/0/B/3/AMN', '130514002', 'Rabu', '17:10:00', '18:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1350, 209, 'Iis Afrianty, ST, M.Sc', 'PIF1311 - Teori Bahasa dan Otomata/3/D/3/IIS', '130517101', 'Rabu', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1351, 209, 'Iis Afrianty, ST, M.Sc', 'PIF1311 - Teori Bahasa dan Otomata/3/D/3/IIS', '130517101', 'Rabu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1352, 209, 'Iis Afrianty, ST, M.Sc', 'PIF1311 - Teori Bahasa dan Otomata/3/D/3/IIS', '130517101', 'Rabu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1353, 210, 'Fadhilah Syafria, ST, M.Kom', 'TIF2304 - Aljabar Linear/3/A/3/FDL', '130517102', 'Rabu', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1354, 210, 'Fadhilah Syafria, ST, M.Kom', 'TIF2304 - Aljabar Linear/3/A/3/FDL', '130517102', 'Rabu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1355, 210, 'Fadhilah Syafria, ST, M.Kom', 'TIF2304 - Aljabar Linear/3/A/3/FDL', '130517102', 'Rabu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1356, 215, 'Finanta Okmayura, S.T, M.Kom', 'PIF1103 - Dasar Pemrograman/1/L/3/FIO', '-', 'Jumat', '07:10:00', '08:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1357, 215, 'Finanta Okmayura, S.T, M.Kom', 'PIF1103 - Dasar Pemrograman/1/L/3/FIO', '-', 'Jumat', '08:00:00', '08:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1358, 215, 'Finanta Okmayura, S.T, M.Kom', 'PIF1103 - Dasar Pemrograman/1/L/3/FIO', '-', 'Jumat', '08:50:00', '09:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1359, 218, 'Septika Khairunnisa, M.Pd.', 'PIF1101 - Kalkulus/1/E/3/SEP', '-', 'Sabtu', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1360, 218, 'Septika Khairunnisa, M.Pd.', 'PIF1101 - Kalkulus/1/E/3/SEP', '-', 'Sabtu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1361, 218, 'Septika Khairunnisa, M.Pd.', 'PIF1101 - Kalkulus/1/E/3/SEP', '-', 'Sabtu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1362, 220, 'Siska Kurnia Gusti, ST, M.Sc', 'PIF1312 - Basis Data/3/K/3/SIS', '130517105', 'Selasa', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1363, 220, 'Siska Kurnia Gusti, ST, M.Sc', 'PIF1312 - Basis Data/3/K/3/SIS', '130517105', 'Selasa', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1364, 220, 'Siska Kurnia Gusti, ST, M.Sc', 'PIF1312 - Basis Data/3/K/3/SIS', '130517105', 'Selasa', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1365, 222, 'Siska Kurnia Gusti, ST, M.Sc', 'PIF1312 - Basis Data/3/G/3/SIS', '130517105', 'Rabu', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1366, 222, 'Siska Kurnia Gusti, ST, M.Sc', 'PIF1312 - Basis Data/3/G/3/SIS', '130517105', 'Rabu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1367, 222, 'Siska Kurnia Gusti, ST, M.Sc', 'PIF1312 - Basis Data/3/G/3/SIS', '130517105', 'Rabu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1368, 223, 'Lola Oktavia, S.S.T, M.T.I', 'TIF4071A - TOPIK KHUSUS (IT Service Management)/0/C/3/LOL', '130517104', 'Kamis', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1369, 223, 'Lola Oktavia, S.S.T, M.T.I', 'TIF4071A - TOPIK KHUSUS (IT Service Management)/0/C/3/LOL', '130517104', 'Kamis', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1370, 223, 'Lola Oktavia, S.S.T, M.T.I', 'TIF4071A - TOPIK KHUSUS (IT Service Management)/0/C/3/LOL', '130517104', 'Kamis', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1371, 225, 'Edi Ismanto, ST, M.Kom', 'PIF3028 - Information Technology Service Management/0/A/3/EDI', '-', 'Sabtu', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1372, 225, 'Edi Ismanto, ST, M.Kom', 'PIF3028 - Information Technology Service Management/0/A/3/EDI', '-', 'Sabtu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1373, 225, 'Edi Ismanto, ST, M.Kom', 'PIF3028 - Information Technology Service Management/0/A/3/EDI', '-', 'Sabtu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1374, 226, 'Edi Ismanto, ST, M.Kom', 'PIF3028 - Information Technology Service Management/0/B/3/EDI', '-', 'Sabtu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1375, 226, 'Edi Ismanto, ST, M.Kom', 'PIF3028 - Information Technology Service Management/0/B/3/EDI', '-', 'Sabtu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1376, 226, 'Edi Ismanto, ST, M.Kom', 'PIF3028 - Information Technology Service Management/0/B/3/EDI', '-', 'Sabtu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1377, 228, 'Dr. Roza Linda, M.Si', 'PIF1732 - Data Mining/7/B/3/RZL', '-', 'Jumat', '09:40:00', '10:30:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1378, 228, 'Dr. Roza Linda, M.Si', 'PIF1732 - Data Mining/7/B/3/RZL', '-', 'Jumat', '10:30:00', '11:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1379, 228, 'Dr. Roza Linda, M.Si', 'PIF1732 - Data Mining/7/B/3/RZL', '-', 'Jumat', '11:20:00', '12:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1380, 229, 'Dr. Alwis Nazir, M.Kom', 'PIF1524 - Rekayasa Perangkat Lunak Berorientasi Objek/5/B/3/ALW', '197408072009011007', 'Selasa', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1381, 229, 'Dr. Alwis Nazir, M.Kom', 'PIF1524 - Rekayasa Perangkat Lunak Berorientasi Objek/5/B/3/ALW', '197408072009011007', 'Selasa', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1382, 229, 'Dr. Alwis Nazir, M.Kom', 'PIF1524 - Rekayasa Perangkat Lunak Berorientasi Objek/5/B/3/ALW', '197408072009011007', 'Selasa', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1383, 230, 'Fathurahma, ST, M.Kom', 'TIF4071 - Topik Khusus Teknologi Informasi/0/PAMA/3/FTH', '-', 'Senin', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1384, 230, 'Fathurahma, ST, M.Kom', 'TIF4071 - Topik Khusus Teknologi Informasi/0/PAMA/3/FTH', '-', 'Senin', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:48', '2018-10-11 04:33:48'),
(1385, 230, 'Fathurahma, ST, M.Kom', 'TIF4071 - Topik Khusus Teknologi Informasi/0/PAMA/3/FTH', '-', 'Senin', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1386, 231, 'Yelfi Vitriani, MMSi', 'TIF4701 - Solusi Teknologi Informasi/7/A/2/YLV', '197403192008012015', 'Rabu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1387, 231, 'Yelfi Vitriani, MMSi', 'TIF4701 - Solusi Teknologi Informasi/7/A/2/YLV', '197403192008012015', 'Rabu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1388, 233, 'Iis Afrianty, ST, M.Sc', 'PIF1311 - Teori Bahasa dan Otomata/3/K/3/IIS', '130517101', 'Jumat', '09:40:00', '10:30:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1389, 233, 'Iis Afrianty, ST, M.Sc', 'PIF1311 - Teori Bahasa dan Otomata/3/K/3/IIS', '130517101', 'Jumat', '10:30:00', '11:20:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1390, 233, 'Iis Afrianty, ST, M.Sc', 'PIF1311 - Teori Bahasa dan Otomata/3/K/3/IIS', '130517101', 'Jumat', '11:20:00', '12:10:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1391, 235, 'Finanta Okmayura, S.T, M.Kom', 'PIF1103 - Dasar Pemrograman/1/M/3/FIO', '-', 'Jumat', '09:40:00', '10:30:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1392, 235, 'Finanta Okmayura, S.T, M.Kom', 'PIF1103 - Dasar Pemrograman/1/M/3/FIO', '-', 'Jumat', '10:30:00', '11:20:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1393, 235, 'Finanta Okmayura, S.T, M.Kom', 'PIF1103 - Dasar Pemrograman/1/M/3/FIO', '-', 'Jumat', '11:20:00', '12:10:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1394, 236, 'Elin Haerani, ST, M.Kom', 'TIF3518 - Riset Teknologi Informasi/5/K/2/ELN', '198105232007102003', 'Rabu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1395, 236, 'Elin Haerani, ST, M.Kom', 'TIF3518 - Riset Teknologi Informasi/5/K/2/ELN', '198105232007102003', 'Rabu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1396, 237, 'Fitri Insani, ST, M.Kom', 'PIF1101 - Kalkulus/1/L/3/FIN', '130510024', 'Jumat', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1397, 237, 'Fitri Insani, ST, M.Kom', 'PIF1101 - Kalkulus/1/L/3/FIN', '130510024', 'Jumat', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1398, 237, 'Fitri Insani, ST, M.Kom', 'PIF1101 - Kalkulus/1/L/3/FIN', '130510024', 'Jumat', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1399, 238, 'Siti Ramadhani, S.Pd, M.Kom', 'PIF3016 - e-Commerce/0/A/3/STR', '130517045', 'Jumat', '07:10:00', '08:00:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1400, 238, 'Siti Ramadhani, S.Pd, M.Kom', 'PIF3016 - e-Commerce/0/A/3/STR', '130517045', 'Jumat', '08:00:00', '08:50:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1401, 238, 'Siti Ramadhani, S.Pd, M.Kom', 'PIF3016 - e-Commerce/0/A/3/STR', '130517045', 'Jumat', '08:50:00', '09:40:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1402, 239, 'Fadhilah Syafria, ST, M.Kom', 'TIF4113 - JST dan Sistem Fuzzy/0/B/3/FDL', '130517102', 'Jumat', '09:40:00', '10:30:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1403, 239, 'Fadhilah Syafria, ST, M.Kom', 'TIF4113 - JST dan Sistem Fuzzy/0/B/3/FDL', '130517102', 'Jumat', '10:30:00', '11:20:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1404, 239, 'Fadhilah Syafria, ST, M.Kom', 'TIF4113 - JST dan Sistem Fuzzy/0/B/3/FDL', '130517102', 'Jumat', '11:20:00', '12:10:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1405, 240, 'Arabiatul Adawiyah, M.Kom', 'TIF3508 - Rekayasa Perangkat Lunak/5/A/3/ARA', '-', 'Selasa', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1406, 240, 'Arabiatul Adawiyah, M.Kom', 'TIF3508 - Rekayasa Perangkat Lunak/5/A/3/ARA', '-', 'Selasa', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1407, 240, 'Arabiatul Adawiyah, M.Kom', 'TIF3508 - Rekayasa Perangkat Lunak/5/A/3/ARA', '-', 'Selasa', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1408, 241, 'Septika Khairunnisa, M.Pd.', 'PIF1527 - Metode Numerik/5/L/3/SEP', '-', 'Sabtu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1409, 241, 'Septika Khairunnisa, M.Pd.', 'PIF1527 - Metode Numerik/5/L/3/SEP', '-', 'Sabtu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1410, 241, 'Septika Khairunnisa, M.Pd.', 'PIF1527 - Metode Numerik/5/L/3/SEP', '-', 'Sabtu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1411, 242, 'Lydia Afritalia, S.Pd, M.Si', 'PIF1527 - Metode Numerik/5/M/3/LYD', '-', 'Sabtu', '13:00:00', '13:50:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1412, 242, 'Lydia Afritalia, S.Pd, M.Si', 'PIF1527 - Metode Numerik/5/M/3/LYD', '-', 'Sabtu', '13:50:00', '14:40:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1413, 242, 'Lydia Afritalia, S.Pd, M.Si', 'PIF1527 - Metode Numerik/5/M/3/LYD', '-', 'Sabtu', '14:40:00', '15:30:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1414, 244, 'Eka Pandu Cynthia, ST, M.Kom', 'TIF3507 - Teknologi Informasi Web/3/K/3/EKA', '129517044', 'Rabu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1415, 244, 'Eka Pandu Cynthia, ST, M.Kom', 'TIF3507 - Teknologi Informasi Web/3/K/3/EKA', '129517044', 'Rabu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1416, 244, 'Eka Pandu Cynthia, ST, M.Kom', 'TIF3507 - Teknologi Informasi Web/3/K/3/EKA', '129517044', 'Rabu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1417, 245, 'Febi Yanto, M.Kom', 'PIF1104 - Sistem Digital/1/K/3/FBI', '198102062009121003', 'Sabtu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1418, 245, 'Febi Yanto, M.Kom', 'PIF1104 - Sistem Digital/1/K/3/FBI', '198102062009121003', 'Sabtu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1419, 245, 'Febi Yanto, M.Kom', 'PIF1104 - Sistem Digital/1/K/3/FBI', '198102062009121003', 'Sabtu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1420, 246, 'Zul Afwan, M.Kom', 'TIF4112 - Information Retrieval/0/C/3/ZUL', '-', 'Sabtu', '10:00:00', '10:50:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1421, 246, 'Zul Afwan, M.Kom', 'TIF4112 - Information Retrieval/0/C/3/ZUL', '-', 'Sabtu', '10:50:00', '11:40:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1422, 246, 'Zul Afwan, M.Kom', 'TIF4112 - Information Retrieval/0/C/3/ZUL', '-', 'Sabtu', '11:40:00', '12:30:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1423, 247, 'Zul Afwan, M.Kom', 'TIF3506 - Keamanan Informasi/5/L/3/ZUL', '-', 'Sabtu', '07:30:00', '08:20:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1424, 247, 'Zul Afwan, M.Kom', 'TIF3506 - Keamanan Informasi/5/L/3/ZUL', '-', 'Sabtu', '08:20:00', '09:10:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49'),
(1425, 247, 'Zul Afwan, M.Kom', 'TIF3506 - Keamanan Informasi/5/L/3/ZUL', '-', 'Sabtu', '09:10:00', '10:00:00', NULL, '2018-10-11 04:33:49', '2018-10-11 04:33:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_kuliah2`
--

CREATE TABLE `jadwal_kuliah2` (
  `kodeJadwalkuliah` int(4) NOT NULL,
  `mataKuliah` varchar(50) NOT NULL,
  `dosen` varchar(25) NOT NULL,
  `ruangan` varchar(20) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `tanggalWaktu` time NOT NULL,
  `idTelegram` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal_kuliah2`
--

INSERT INTO `jadwal_kuliah2` (`kodeJadwalkuliah`, `mataKuliah`, `dosen`, `ruangan`, `hari`, `tanggalWaktu`, `idTelegram`) VALUES
(2, 'KEAMANAN INFORMASI', 'RAHMAD ABDILLAH', '302', 'Monday', '10:00:00', 560083216),
(3, 'DESAIN INTERAKSI ANTARMUKA', 'PAK IRSYAD', '303', 'Tuesday', '10:00:00', 560083216),
(4, 'SISTEM INFORMASI', 'BUK OKFA', '303', 'Monday', '10:00:00', 560083216),
(5, 'REKAYASA PERANGKAT LUNAK', 'BU IIS', '302', 'Thursday', '08:00:00', 560083216),
(6, 'FIQIH', 'PAK SYAFRUDDIN', 'GB 202', 'Tuesday', '16:00:00', 560083216),
(7, 'JARINGAN KOMPUTER', 'PAK EDRY', '302', 'Thursday', '16:00:00', 560083216),
(8, 'INFORMATION RETRIEVAL', 'PAK AL AMINUDDIN', '303', 'Friday', '16:00:00', 560083216),
(10, 'sbd', 'pak yaz', '304', 'Friday', '03:23:00', 363674612),
(11, 'DIA', 'PAK IRSYAD', '302', 'Thursday', '10:00:00', 363674612),
(13, 'DIA', 'PAK IRSYAD', '302', 'Monday', '08:00:00', 560083216);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_tambahan`
--

CREATE TABLE `jadwal_tambahan` (
  `idJkt` int(3) NOT NULL,
  `mataKuliah` varchar(20) NOT NULL,
  `dosen` varchar(30) NOT NULL,
  `ruangan` varchar(6) NOT NULL,
  `tanggalWaktu` datetime NOT NULL,
  `hari` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas_kuliah`
--

CREATE TABLE `tugas_kuliah` (
  `idTugas` int(11) NOT NULL,
  `mataKuliah` varchar(50) NOT NULL,
  `jadwalWaktu` datetime NOT NULL,
  `Desc` text NOT NULL,
  `idTelegram` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tugas_kuliah`
--

INSERT INTO `tugas_kuliah` (`idTugas`, `mataKuliah`, `jadwalWaktu`, `Desc`, `idTelegram`) VALUES
(2, 'Keamanan Informasi', '2019-01-25 00:00:00', 'Membangun Keamanan Informasi Pada Sistem Manajemen Apotek', 560083216),
(3, 'Desain Interaksi Antarmuka', '2019-01-14 12:00:00', 'Project KUY Ontime ', 560083216),
(4, 'Keamanan Informasi', '2019-01-19 04:00:00', 'Materi Email Forensik', 560083216),
(7, 'FIQIH', '0000-00-00 00:00:00', 'Laporan Tentang Seluruh Bab minimal 100 Halaman', 363674612);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(8) NOT NULL,
  `idTelegram` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`idUser`, `username`, `password`, `idTelegram`) VALUES
(1, 'imam', 'imam', 560083216),
(3, 'fauzan', 'fauzan', 363674612);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`No`);

--
-- Indeks untuk tabel `jadwal_kuliah`
--
ALTER TABLE `jadwal_kuliah`
  ADD PRIMARY KEY (`id_jadwal_kuliah`);

--
-- Indeks untuk tabel `jadwal_kuliah2`
--
ALTER TABLE `jadwal_kuliah2`
  ADD PRIMARY KEY (`kodeJadwalkuliah`);

--
-- Indeks untuk tabel `jadwal_tambahan`
--
ALTER TABLE `jadwal_tambahan`
  ADD PRIMARY KEY (`idJkt`);

--
-- Indeks untuk tabel `tugas_kuliah`
--
ALTER TABLE `tugas_kuliah`
  ADD PRIMARY KEY (`idTugas`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `No` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwal_kuliah`
--
ALTER TABLE `jadwal_kuliah`
  MODIFY `id_jadwal_kuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1426;

--
-- AUTO_INCREMENT untuk tabel `jadwal_kuliah2`
--
ALTER TABLE `jadwal_kuliah2`
  MODIFY `kodeJadwalkuliah` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `jadwal_tambahan`
--
ALTER TABLE `jadwal_tambahan`
  MODIFY `idJkt` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tugas_kuliah`
--
ALTER TABLE `tugas_kuliah`
  MODIFY `idTugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
