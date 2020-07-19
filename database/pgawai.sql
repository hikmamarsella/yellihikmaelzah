-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2018 at 03:52 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `hukuman`
--

CREATE TABLE `hukuman` (
  `id_hukuman` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `tgl_hukuman` date NOT NULL,
  `nm_hukuman` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hukuman`
--

INSERT INTO `hukuman` (`id_hukuman`, `nip`, `tgl_hukuman`, `nm_hukuman`) VALUES
('HKM/ZT/10/15/0001', '11251200759', '2015-07-29', 'Pegawai Terlambat 2015'),
('HKM/ZT/10/15/0002', '11251200759', '2015-10-18', 'Mangkir Kerja 1 minggu'),
('HKM/ZT/10/15/0003', '11212200420', '2015-08-23', 'mangkir kerja 3 hari'),
('HKM/ZT/10/15/0004', '11251100701', '2015-08-23', 'mangkir kerja 3 hari'),
('HKM/ZT/10/15/0005', '11251100702', '2015-09-23', 'mangkir kerja 3 hari'),
('HKM/ZT/10/15/0006', '11212200430', '2015-07-23', 'mangkir kerja 3 hari'),
('HKM/ZT/10/15/008', '11251100701', '2015-07-12', 'mangkir kerja 1 hari'),
('HKM/ZT/10/15/009', '11251100702', '2015-10-22', 'mangkir kerja 1 hari'),
('HKM/ZT/10/15/010', '11251100704', '2015-07-30', 'mangkir kerja 1 hari'),
('HKM/ZT/10/15/011', '11251100704', '2015-06-30', 'mangkir kerja 1 hari'),
('HKM/ZT/10/15/012', '11251100704', '2015-10-20', 'mangkir kerja 1 hari'),
('HKM/ZT/10/15/013', '11251100759', '2015-08-02', 'mangkir kerja 1 hari'),
('HKM/ZT/10/15/014', '11251100701', '2015-07-11', 'mangkir kerja 1 hari'),
('HKM/ZT/10/15/015', '11251100701', '2015-06-11', 'mangkir kerja 1 hari'),
('HKM/ZT/10/15/016', '11251100704', '2015-09-20', 'mangkir kerja 1 hari'),
('HKM/ZT/10/15/017', '11251100704', '2015-06-22', 'mangkir kerja 1 hari');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` varchar(20) NOT NULL,
  `nm_jabatan` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nm_jabatan`) VALUES
('JAB001', 'Rektor'),
('JAB003', 'Keuangan'),
('JAB004', 'Staff'),
('JAB005', 'Coordinator'),
('JAB006', 'Akademik');

-- --------------------------------------------------------

--
-- Table structure for table `jjg`
--

CREATE TABLE `jjg` (
  `id` int(10) NOT NULL,
  `nm_jjg` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jjg`
--

INSERT INTO `jjg` (`id`, `nm_jjg`) VALUES
(1, 'SD'),
(2, 'SDIT'),
(3, 'SMP'),
(4, 'MTs'),
(5, 'SMA'),
(6, 'SMK'),
(7, 'MAN'),
(8, 'D-2'),
(9, 'D-3'),
(10, 'D-4'),
(11, 'S-1'),
(12, 'S-2'),
(13, 'S-3');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi_krj`
--

CREATE TABLE `lokasi_krj` (
  `id_lokasi` varchar(20) NOT NULL,
  `nm_lokasi` varchar(32) NOT NULL,
  `alamat_lokasi` varchar(128) NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi_krj`
--

INSERT INTO `lokasi_krj` (`id_lokasi`, `nm_lokasi`, `alamat_lokasi`, `no_hp`) VALUES
('LOK001', 'Jawa Barat', 'Jawa Barat', '0266');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `ID` int(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jurusan` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`ID`, `nama`, `jurusan`, `email`) VALUES
(4, 'Susilo rahmawati', 'TI', 'xxxsusilo@yahoo.com'),
(9, 'testoke', 'Akuntansi', 'testoke3'),
(10, 'okelah xx', 'Akuntansi', 'begituxx'),
(18, 'painem', 'TK', 'Email@Emal.com'),
(26, 'norman', 'TI', 'email@emal.com'),
(27, 'Hogna', 'TI', 'email2');

-- --------------------------------------------------------

--
-- Table structure for table `pangkat`
--

CREATE TABLE `pangkat` (
  `id_pangkat` varchar(20) NOT NULL,
  `nm_pangkat` varchar(32) NOT NULL,
  `gaji` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pangkat`
--

INSERT INTO `pangkat` (`id_pangkat`, `nm_pangkat`, `gaji`) VALUES
('PKT001', '001', 500000),
('PKT002', '002', 750000),
('PKT003', '003', 1000000),
('PKT004', '004', 1500000),
('PKT005', '005', 1750000),
('PKT006', '006', 2000000),
('PKT007', '007', 2500000),
('PKT008', '008', 3000000),
('PKT009', '009', 3500000),
('PKT010', '010', 4000000),
('PKT011', '011', 4500000),
('PKT012', '012', 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` varchar(20) NOT NULL,
  `nm_pegawai` varchar(32) NOT NULL,
  `jk` enum('Laki-laki','Perempuan') NOT NULL,
  `tpt_lhr` varchar(32) NOT NULL,
  `tgl_lhr` date NOT NULL,
  `agama` varchar(20) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(32) NOT NULL,
  `alamat` varchar(64) NOT NULL,
  `tgl_msk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nm_pegawai`, `jk`, `tpt_lhr`, `tgl_lhr`, `agama`, `no_hp`, `email`, `alamat`, `tgl_msk`) VALUES
('11212200420', 'Amelia Pratiwi', 'Perempuan', 'rumbai', '1994-03-21', 'Islam', '085277882934', 'amel@gmail.com', 'jalan by pass', '2014-10-23'),
('11212200421', 'Rifda Ariqah', 'Perempuan', 'Kampar', '1993-01-09', 'Islam', '081382719291', 'ariqah@gmaik.com', 'jalan manunggal no. 18', '2013-10-23'),
('11212200430', 'Husna Luthfiyah', 'Perempuan', 'Pekanbaru', '1998-05-23', 'Islam', '08526577819', 'husna.luthfiyah@gmail.com', 'Jalan Sukajadi', '2012-10-16'),
('11251100701', 'Rusli Simatupang', 'Laki-laki', 'Bagan Api', '1994-10-03', 'Islam', '081224923350', 'tupang.rusli@gmail.com', 'Jalan Yuda Karya Panam', '2013-10-23'),
('11251100702', 'Novfriyanto JS', 'Laki-laki', 'Kuansing', '1992-11-02', 'Islam', '081224923351', 'nofri.js@gmail.com', 'jalan arengka', '2014-10-12'),
('11251100703', 'Yehezkiel Saputra', 'Laki-laki', 'bagan api', '1994-12-01', 'Kristen Katolik', '081224923353', 'bibe.putra@gmail.com', 'jalan cipta karya', '2012-09-22'),
('11251100704', 'Minggus Awit Pangestu', 'Laki-laki', 'pasir pengarayan', '1994-07-23', 'Islam', '081224923359', 'minggus@gmail.com', 'jalan manunggal', '2013-07-23'),
('11251100705', 'Yossy Suryani', 'Perempuan', 'perawang', '1991-01-01', 'Islam', '082198371293', 'yossy@gmail.com', 'jalan manunggal', '2012-10-23'),
('11251100712', 'M. Firdaus', 'Laki-laki', 'kota tengah', '1992-12-12', 'Islam', '081224923360', 'daus.kece@gmail.com', 'jalan cipta karya', '1993-10-09'),
('11251100753', 'Muhammad Fadhli Ihsan', 'Laki-laki', 'Pekanbaru', '1994-09-03', 'Islam', '081224923354', 'Fadhly.Ihsan@gmail.com', 'Jalan Tiung Nomor 12 Pekanbaru', '2011-10-16'),
('11251100759', 'Susilo Bambang', 'Laki-laki', 'Bekasi', '1970-03-12', 'Islam', '813655902272', 'susilo.sby@gmail.com', 'Jalan Sudirman no. 12 pekanbaru', '2010-01-02'),
('11251200759', 'Akhbar Setiawan', 'Laki-laki', 'Pekanbaru', '1994-02-02', 'Islam', '081224927618', 'akhbar@gmail.com', 'jalan cimpedak', '2012-10-17');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pend` int(10) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `thn_pend` varchar(10) NOT NULL,
  `jenjang` varchar(10) NOT NULL,
  `nm_pendidikan` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id_pend`, `nip`, `thn_pend`, `jenjang`, `nm_pendidikan`) VALUES
(1, '11251100753', '2000-2006', 'SD', 'SDN 002 Arindo 2'),
(2, '11251100753', '2006-2009', 'MTs', 'MTs Darul Hikmah Pekanbaru'),
(3, '11251100753', '2009-2012', 'MAN', 'MAN 2 Model Pekanbaru'),
(4, '11251100753', '2012-2016', 'S-1', 'Teknik Informatika UIN SUSKA RIa'),
(5, '11212200430', '2004-2010', 'SD', 'SDN 002 Arindo 2'),
(6, '11212200430', '2010-2013', 'MTs', 'Mts Darul Hikmah'),
(7, '11212200430', '2013-2016', 'SMA', 'SMK 2 Tandun'),
(11, '11251100759', '1980-1987', 'SD', 'SDN 01 Jakarta'),
(12, '11251100759', '1987-1990', 'SMP', 'SMP 01 Jakarta'),
(13, '11251100759', '1990-1993', 'SMK', 'SMK 03 Jakarta'),
(20, '11251100701', '2000-2006', 'SD', 'SDN 01 Bagan Api'),
(21, '11251100701', '2006-2009', 'SMP', 'SMPN 01 Bagan Api'),
(22, '11251100701', '2009-2012', 'SMA', 'SMAN 01 Bagan APi'),
(23, '11251100701', '2012-2015', 'S-1', 'Teknik Informatika UIN SUSKA'),
(24, '11251100702', '2000-2006', 'SD', 'SDN 022 Kuansing'),
(25, '11251100702', '2006-2009', 'SMP', 'SMPN 022 Kuansing'),
(26, '11251100702', '2009-2012', 'MAN', 'MAN Model Kuansing'),
(27, '11251100702', '2012-2015', 'S-1', 'Teknik Informatika'),
(28, '11251100703', '2000-2006', 'SD', 'SDN 038 Kampar'),
(29, '11251100703', '2006-2009', 'SMP', 'SMPN 038 Kampar'),
(30, '11251100703', '2009-2012', 'SMA', 'SMAN 038 Kampar'),
(31, '11251100704', '2000-2006', 'SD', 'SDN 012 Rohul'),
(32, '11251100704', '2006-2009', 'MTs', 'MTs Darul Hikmah Pekanbaru'),
(33, '11251100704', '2009-2012', 'SMA', 'SMAN 012 Rohul'),
(34, '11251100712', '1998-2004', 'SD', 'SDN 048 Koteng'),
(35, '11251100712', '200042007', 'SMP', 'SMPN 048 Koteng'),
(36, '11251100712', '2007-2010', 'SMA', 'SMAN 048 Koteng'),
(37, '11212200420', '2000-2006', 'SD', 'SD 012 Rumbai'),
(38, '11212200420', '2006-2009', 'SMP', 'SMP 012 Rumbai'),
(39, '11212200420', '2009-2012', 'SMK', 'SMA 012 Rumbai'),
(40, '11212200421', '2000-2006', 'SD', 'SDN 001 Kampar'),
(41, '11212200421', '2006-2009', 'SMP', 'SMP 001 Kampar'),
(42, '11212200421', '2009-2012', 'SMA', 'SMA 001 Kampar'),
(43, '11251100705', '1998-2004', 'SD', 'SDN 02 Perawang'),
(44, '11251100705', '2004-2007', 'SMP', 'SMP 03 Perawang'),
(45, '11251100705', '2007-2010', 'SMK', 'SMK 05 Perawang'),
(46, '11251100704', '2000-2006', 'SD', 'SDN 022 Kampar'),
(47, '11251100704', '2006-2009', 'SMP', 'SMP 022 Kampar'),
(48, '11251100704', '2009-2012', 'SMK', 'SMK 022 Kampar'),
(49, '11212200430', '2000-2006', 'SD', 'SDN 003 Pekanbaru'),
(50, '11212200430', '2006-2009', 'SMP', 'SMP 004 Pekanbaru'),
(51, '11212200430', '2009-2012', 'MAN', 'MAN 1 Pekanbaru'),
(52, '11212200430', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengalaman_krj`
--

CREATE TABLE `pengalaman_krj` (
  `id_peng_krj` int(10) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `thn_krj` varchar(10) NOT NULL,
  `nm_krj` varchar(32) NOT NULL,
  `nm_pt` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengalaman_krj`
--

INSERT INTO `pengalaman_krj` (`id_peng_krj`, `nip`, `thn_krj`, `nm_krj`, `nm_pt`) VALUES
(1, '11251100753', '2013', 'Staff seo planner', 'KUDASEO'),
(4, '11251100701', '2013-2014', 'PT. Timun Emas', 'Karyawan'),
(5, '11251100702', '', '', ''),
(6, '11251100703', '', '', ''),
(7, '11251100704', '', '', ''),
(8, '11251100712', '', '', ''),
(9, '11212200420', '', '', ''),
(10, '11212200421', '', '', ''),
(11, '11251100705', '', '', ''),
(12, '11251100704', '', '', ''),
(13, '11212200430', '', '', ''),
(14, '11251100701', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `tgl_prestasi` date NOT NULL,
  `nm_prestasi` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`id_prestasi`, `nip`, `tgl_prestasi`, `nm_prestasi`) VALUES
('PRE/ZT/10/15/0001', '11251100753', '2015-09-29', 'Pegawai Terdisiplin 2015'),
('PRE/ZT/10/15/0002', '11212200430', '2015-06-29', 'Pegawai Terdisiplin 2015'),
('PRE/ZT/10/15/0004', '11251100753', '2015-06-17', 'Inovasi Bidang IT untuk perusahaan'),
('PRE/ZT/10/15/0007', '11251100701', '2015-10-23', 'a'),
('PRE/ZT/10/15/0008', '11212200421', '2015-08-02', 'disiplin masuk kerja'),
('PRE/ZT/10/15/010', '11251100701', '2015-09-02', 'disiplin masuk kerja'),
('PRE/ZT/10/15/011', '11251100705', '2015-08-02', 'disiplin masuk kerja'),
('PRE/ZT/10/15/012', '11251100701', '2015-07-02', 'disiplin masuk kerja'),
('PRE/ZT/10/15/013', '11251100702', '2015-08-02', 'disiplin masuk kerja'),
('PRE/ZT/10/15/014', '11251100704', '2015-10-02', 'disiplin masuk kerja'),
('PRE/ZT/10/15/015', '11251100759', '2015-09-02', 'disiplin masuk kerja'),
('PRE/ZT/10/15/016', '11251100701', '2015-07-02', 'disiplin masuk kerja'),
('PRE/ZT/10/15/017', '11251100702', '2015-10-02', 'disiplin masuk kerja'),
('PRE/ZT/10/15/018', '11251100704', '2015-07-02', 'disiplin masuk kerja'),
('PRE/ZT/10/15/019', '11251100759', '2015-07-02', 'disiplin masuk kerja');

-- --------------------------------------------------------

--
-- Table structure for table `sk_krj`
--

CREATE TABLE `sk_krj` (
  `no_sk` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `tgl_sk` date NOT NULL,
  `id_jabatan` varchar(20) NOT NULL,
  `id_lokasi` varchar(20) NOT NULL,
  `id_pangkat` varchar(20) NOT NULL,
  `id_unit_krj` varchar(20) NOT NULL,
  `status_sk` enum('aktif','nonaktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sk_krj`
--

INSERT INTO `sk_krj` (`no_sk`, `nip`, `tgl_sk`, `id_jabatan`, `id_lokasi`, `id_pangkat`, `id_unit_krj`, `status_sk`) VALUES
('SK/ZT/10/15/00001', '11251100753', '2011-10-16', 'JAB004', 'LOK001', 'PKT003', 'UKJ009', 'nonaktif'),
('SK/ZT/10/15/00003', '11251100759', '2010-01-02', 'JAB001', 'LOK001', 'PKT012', 'UKJ12', 'aktif'),
('SK/ZT/10/15/00004', '11212200430', '2015-10-16', 'JAB004', 'LOK001', 'PKT003', 'UKJ003', 'nonaktif'),
('SK/ZT/10/15/00005', '11251100753', '2011-10-16', 'JAB003', 'LOK001', 'PKT006', 'UKJ005', 'aktif'),
('SK/ZT/10/15/00020', '11251100704', '2014-10-23', 'JAB004', 'LOK001', 'PKT006', 'UKJ003', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `unit_krj`
--

CREATE TABLE `unit_krj` (
  `id_unit_krj` varchar(20) NOT NULL,
  `nm_unit_krj` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit_krj`
--

INSERT INTO `unit_krj` (`id_unit_krj`, `nm_unit_krj`) VALUES
('UKJ003', 'HRD'),
('UKJ004', 'Team Support & Security'),
('UKJ005', 'Team Maintenance'),
('UKJ006', 'Koordinator Cluster'),
('UKJ007', 'Bag. Administasi'),
('UKJ009', 'Administrasi Umum'),
('UKJ010', 'Logistik'),
('UKJ011', 'Administrasi Keuangan'),
('UKJ12', '-');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(10) NOT NULL,
  `user` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `level` enum('admin','hrd','gm') NOT NULL,
  `blokir` enum('N','Y') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `user`, `pass`, `nama`, `no_hp`, `level`, `blokir`) VALUES
('USR001', 'admin', 'admin', 'Bapak Admin', '08123456789', 'admin', 'N'),
('USR002', 'HRD', 'hrd', 'Bapak Hrd', '081234741233', 'hrd', 'N'),
('USR003', 'pimpinan', 'pimpinan', 'Bapak Pimpinan', '081529373782', 'gm', 'N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hukuman`
--
ALTER TABLE `hukuman`
  ADD PRIMARY KEY (`id_hukuman`),
  ADD KEY `nik` (`nip`),
  ADD KEY `nip` (`nip`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`),
  ADD KEY `id_jabatan` (`id_jabatan`);

--
-- Indexes for table `jjg`
--
ALTER TABLE `jjg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi_krj`
--
ALTER TABLE `lokasi_krj`
  ADD PRIMARY KEY (`id_lokasi`),
  ADD KEY `id_lokasi` (`id_lokasi`),
  ADD KEY `id_lokasi_2` (`id_lokasi`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pangkat`
--
ALTER TABLE `pangkat`
  ADD PRIMARY KEY (`id_pangkat`),
  ADD KEY `id_pangkat` (`id_pangkat`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `nip` (`nip`),
  ADD KEY `nip_2` (`nip`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id_pend`),
  ADD KEY `nip` (`nip`),
  ADD KEY `nip_2` (`nip`);

--
-- Indexes for table `pengalaman_krj`
--
ALTER TABLE `pengalaman_krj`
  ADD PRIMARY KEY (`id_peng_krj`),
  ADD KEY `nip` (`nip`),
  ADD KEY `nip_2` (`nip`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`),
  ADD KEY `nik` (`nip`),
  ADD KEY `nip` (`nip`);

--
-- Indexes for table `sk_krj`
--
ALTER TABLE `sk_krj`
  ADD PRIMARY KEY (`no_sk`),
  ADD KEY `nip` (`nip`),
  ADD KEY `id_jabatan` (`id_jabatan`),
  ADD KEY `id_lokasi` (`id_lokasi`),
  ADD KEY `id_pangkat` (`id_pangkat`),
  ADD KEY `id_unit_krj` (`id_unit_krj`);

--
-- Indexes for table `unit_krj`
--
ALTER TABLE `unit_krj`
  ADD PRIMARY KEY (`id_unit_krj`),
  ADD KEY `id_unit_krj` (`id_unit_krj`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jjg`
--
ALTER TABLE `jjg`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id_pend` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `pengalaman_krj`
--
ALTER TABLE `pengalaman_krj`
  MODIFY `id_peng_krj` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hukuman`
--
ALTER TABLE `hukuman`
  ADD CONSTRAINT `hukuman_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD CONSTRAINT `pendidikan_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD CONSTRAINT `prestasi_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sk_krj`
--
ALTER TABLE `sk_krj`
  ADD CONSTRAINT `sk_krj_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sk_krj_ibfk_2` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sk_krj_ibfk_3` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi_krj` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sk_krj_ibfk_4` FOREIGN KEY (`id_pangkat`) REFERENCES `pangkat` (`id_pangkat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sk_krj_ibfk_5` FOREIGN KEY (`id_unit_krj`) REFERENCES `unit_krj` (`id_unit_krj`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
