-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 01 Mar 2020 pada 10.32
-- Versi Server: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nscis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen`
--

CREATE TABLE `absen` (
  `member_id` varchar(12) NOT NULL,
  `learning_id` int(11) NOT NULL,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `announcement`
--

CREATE TABLE `announcement` (
  `id_announcement` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `description` text,
  `member_id_member` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `learning`
--

CREATE TABLE `learning` (
  `id_learning` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `trainer_id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi`
--

CREATE TABLE `materi` (
  `member_id` varchar(12) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `content` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `id_materi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` varchar(12) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `full_name` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `address` text,
  `no_phone` varchar(30) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `bio` text,
  `email` varchar(40) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `position_id` int(11) NOT NULL,
  `is_admin` tinyint(4) DEFAULT '0',
  `status` varchar(9) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `first_name`, `last_name`, `full_name`, `dob`, `address`, `no_phone`, `foto`, `bio`, `email`, `gender`, `religion`, `password`, `position_id`, `is_admin`, `status`, `create_date`) VALUES
('180625-18001', 'SASMITOH', 'RAHMAT RIADY', 'SASMITOH RAHMAT RIADY', '1988-09-14', 'Kp. Cijambe RT/03 RW/02 Desa Sukadami Kec. Cikarang Selatan Bekasi 17532', '081282463412', 'photo_2020-03-01_00-08-24.jpg', 'Melawan keadaan untuk hidupkan mimpi', 'sasmitohrr@gmail.com', 'Male', 'ISLAM', '$2y$10$AduBgbQ26vYDPPHSWeJG.OQmetNmzvlKUP1s.K.CwgQ4XD0R79cui', 1, 0, 'Active', '2020-03-01 00:34:41'),
('180625-18002', 'KHALIS', 'SHOFI', 'KHALIS SOFI', '1997-07-24', 'Kp. Cijambe RT/03 RW/02 Desa Sukadami Kec. Cikarang Selatan Bekasi 17532', '087829760975', 'photo_2020-03-01_00-39-59.jpg', 'Hidup untuk Bermimpi, dan Mimpi untuk Menghidupkan', 'sofikhalis7@gmail.com', 'Female', 'ISLAM', '$2y$10$8sNEqWebfI42Dv55cVlY7.KhWyNP0ajtG3eLnanxeTOci9xpBe45G', 7, 0, 'Active', '2020-03-01 00:40:18'),
('180625-18003', 'TULASI', 'AJA', 'TULASI', '1997-05-22', 'Perum TCI2 Blok E2 No. 12A Cikarang Selatan Bekasi', '085311204286', 'Tulasi.jpg', 'Melangkah ke depan tanpa menghapus yang baik yang telah ada', 'tulasi22ajah@gmail.com', 'Female', 'ISLAM', '$2y$10$1rgoeRM5CXOJv//TOy3e7uTckTetpfDyVyB/6sdmD2.MmTwMVzqMC', 6, 0, 'Active', '2020-03-01 00:43:28'),
('180625-18004', 'RIANTI', 'KINASIH', 'RIANTI KINASIH', '1998-08-06', 'Jalan Merak Raya No. 55 Cikarang Baru-Bekasi', '081219650253', 'Rianti.jpg', 'Manusia hebat itu adalah manusia yang berguna untuk orang lain', 'kinasihrianti@gmail.com', 'Female', 'ISLAM', '$2y$10$26Ufc8kHlCSkv7JITCU64O14vYYEv/zOCdIEEgzU/Nhb3D6zCJcNy', 8, 0, 'Active', '2020-03-01 00:45:21'),
('180625-19001', 'MELIA', 'IKO', 'MELIA IKO', '1995-12-25', 'Gg. Sukajadi Ds. Wwarung Bambu RT/004 RW/004 Kec. Karawang Timur-Karawang', '087804180967', 'photo_2020-03-01_00-47-24.jpg', 'Sukses adalah saat persiapan dan kesempatan bertemu', 'meliaiko101@gmail.com', 'Female', 'ISLAM', '$2y$10$AVowXZZwzrhk1uMLfS88s.Y9GGESXi9rjiHJZ54D34K6hbfqGqTwC', 8, 0, 'Active', '2020-03-01 00:47:46'),
('180625-19002', 'AGUS', 'SULISTIAWAN', 'AGUS SULISTIAWAN', '1995-08-15', 'Perumahan Puri Lestari Blok H8 No. 2 Desa Sukajaya RT/005 RW/016 Cibitung-Bekasi', '08128788538', 'agus.jpg', 'Mimpi tanpa aksi hanyalah imajinasi', 'agussulistiawan33@gmail.com', 'Male', 'ISLAM', '$2y$10$E6OJ.ihwCVWcH8FzKmDF3OcZacEQOHvnERIgbph583qRbaa7snyWu', 8, 0, 'Active', '2020-03-01 00:50:04'),
('180625-19003', 'ASEP', 'SUNARYA', 'ASEP SUNARYA', '1994-09-29', 'Desa Serang Cikarang Selatan, Bekasi', '083895148018', 'Asep.jpg', 'Belajar untuk menjadi lebih baik', 'sunarya209@gmail.com', 'Male', 'ISLAM', '$2y$10$cglMnIRtI.1WgyEV33HkbOW9GaLnTpUXbY0dxCFcTl5NHsSt55.Fy', 8, 0, 'Active', '2020-03-01 00:52:39'),
('180625-19004', 'MOH', 'KHAMIM', 'MOH KHAMIM', '1995-06-04', 'Karawang Pawitan, Karawang', '085814334877', 'photo_2020-03-01_00-55-37.jpg', 'Jangan takut mencoba hal baru', 'moh.khamim04@gmail.com', 'Male', 'ISLAM', '$2y$10$qmNbtEZVSqc7b9OuJX73gOhGlOAAi8CqhSYT.5L2JSUejZjXgWTJO', 8, 0, 'Active', '2020-03-01 00:56:52'),
('180625-19005', 'YAZI', 'ADITYAS', 'YAZI ADITYAS', '1997-01-22', 'Desa Badami Teluk Jambe Barat, Karawang', '089640208515', 'Yazi.jpg', 'Selalu diawali dengan niat dan doa dalam beraktivitas', 'yaziadityas8515@gmail.com', 'Male', 'ISLAM', '$2y$10$DUhes642aSD1K67avLwXBOgujb.LgvpewfFajrmFF2W5R7zGB6.pe', 8, 0, 'Active', '2020-03-01 00:59:45'),
('180625-19006', 'MUHAMMAD', 'ARIF HIDAYAT', 'MUHAMMAD ARIF HIDAYAT', '1996-07-20', 'Kp. Kukun RT/11 RW/06 Desa Ciantra Kec. Cikarang Selatan Bekasi', '089637708876', 'Arif.jpg', 'Hiduplah untuk beribadah', 'muhammadarif@mhs.pelitabangsa.ac.id', 'Male', 'ISLAM', '$2y$10$3l3skm9igFaxeGOV865kJuN6yTFs64Fuuq/73rpMINtFoWKv7mqHC', 8, 0, 'Active', '2020-03-01 01:03:01'),
('180625-19007', 'FAZRI', 'MUHARAM ANWAR', 'FAZRI MUHARAM ANWAR', '1992-07-18', 'Jalan Cendana Dalam No. 24 Karawang', '087770224148', 'photo_2020-03-01_01-05-22.jpg', 'Menjadi manusia bermanfaat bagi sesama', 'adziealfazr7@gmail.com', 'Male', 'ISLAM', '$2y$10$J8gdQDWR5pbQ6FttIMygHu6leVdC3X1swCIiT8dBstxT30tG/5Q12', 8, 0, 'Active', '2020-03-01 01:05:38'),
('180625-19008', 'DEZIA', 'ALFIRA CHANIAGO', 'DEZIA ALFIRA CHANIAGO', '1999-04-08', 'Perum Permata Mas Blok A2 No. 46 Wanasari Cibitung Bekasi', '089631149187', 'photo_2020-03-01_01-07-49.jpg', 'One day we will just be amemoy to come people, for that reason do your best to be good', 'deziaalfirac@gmail.com', 'Female', 'ISLAM', '$2y$10$NsMeunxMc2cRIKvLxOrIMOm2bZD54uM2vilbrfYcxP0RmZau7OP4C', 8, 0, 'Active', '2020-03-01 01:08:05'),
('180625-19009', 'MUCHROMI', 'AHMAD', 'MUCHROMI AHMAD', '1998-02-28', 'Perum KSB Blok G9 No. 24 RT/002 RW/017 Desa Sukaragam Kec. Serang Baru Bekasi', '0895342402083', 'photo_2020-03-01_01-09-38.jpg', 'Lakukanlah apa yang menurut saya benar', 'muchromi.ahmad@gmail.com', 'Male', 'ISLAM', '$2y$10$hp7sW/CuBUQvxgfyytf0b.O3/kjW8RpHfPgdt57lxVMHOGtmia8vq', 8, 0, 'Active', '2020-03-01 01:09:50'),
('180625-19010', 'ARDI', 'GUNAWAN', 'ARDI GUNAWAN', '1998-05-28', 'Tegal Danas RT/02 RW/03 Hegar Mukti Cikarang Pusat Bekasi', '083169129461', 'photo_2020-03-01_01-12-06.jpg', 'Lakukan yang harus dilakukan', 'ardigunawantkj@gmail.com', 'Male', 'ISLAM', '$2y$10$HWj9kflBphuziL.nYyXugefLPVfvOnkrF1HxiQ.O3W8YBQKmTQQM6', 8, 0, 'Active', '2020-03-01 01:12:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `id_payment` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(9) DEFAULT NULL,
  `member_id` varchar(12) NOT NULL,
  `create` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `petty_cash`
--

CREATE TABLE `petty_cash` (
  `id_petty` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `description` text,
  `kredit` decimal(10,2) DEFAULT NULL,
  `debit` decimal(10,2) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `member_id` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `petty_cash`
--

INSERT INTO `petty_cash` (`id_petty`, `date`, `description`, `kredit`, `debit`, `saldo`, `member_id`) VALUES
(1000, '2020-02-16', 'Saldo Awal', '0.00', '100000.00', '100000.00', '180625-18001'),
(1232, '2020-02-22', 'Buku', '50000.00', NULL, '50000.00', '180625-19005'),
(1233, '2020-02-24', 'Workshop', NULL, '250000.00', '300000.00', '180625-18002'),
(1234, '2020-03-25', 'Omset Buku', NULL, '850000.00', '1150000.00', '180625-19005'),
(1235, '2020-03-28', 'Beli Spidol', '175000.00', NULL, '975000.00', '180625-18002'),
(1236, '2020-03-30', 'Uang Kas', NULL, '270000.00', '1245000.00', '180625-19009');

-- --------------------------------------------------------

--
-- Struktur dari tabel `position`
--

CREATE TABLE `position` (
  `id_position` int(11) NOT NULL,
  `position_name` varchar(20) DEFAULT NULL,
  `job_desk` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `position`
--

INSERT INTO `position` (`id_position`, `position_name`, `job_desk`) VALUES
(1, 'CEO', 'Manage All Ngoding Study Club Requirements'),
(6, 'CFO', 'Managing All Ngoding Study Club Financial'),
(7, 'Secretary', 'Administrate All Documents'),
(8, 'NSC Officer', 'Obey Ngoding Study Club policy');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subject`
--

CREATE TABLE `subject` (
  `id_subject` int(11) NOT NULL,
  `subject_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trainer`
--

CREATE TABLE `trainer` (
  `id_trainer` int(11) NOT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `subject_` varchar(50) DEFAULT NULL,
  `member_id` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`member_id`,`learning_id`),
  ADD KEY `fk_member_has_learning_learning1_idx` (`learning_id`),
  ADD KEY `fk_member_has_learning_member1_idx` (`member_id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id_announcement`),
  ADD KEY `fk_announcement_member1_idx` (`member_id_member`);

--
-- Indexes for table `learning`
--
ALTER TABLE `learning`
  ADD PRIMARY KEY (`id_learning`),
  ADD KEY `fk_learning_trainer1_idx` (`trainer_id`),
  ADD KEY `fk_learning_materi1_idx` (`materi_id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`),
  ADD KEY `fk_member_has_subject_subject1_idx` (`subject_id`),
  ADD KEY `fk_member_has_subject_member1_idx` (`member_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `e_mail` (`email`),
  ADD KEY `fk_member_positon_idx` (`position_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id_payment`),
  ADD KEY `fk_payment_member1_idx` (`member_id`);

--
-- Indexes for table `petty_cash`
--
ALTER TABLE `petty_cash`
  ADD PRIMARY KEY (`id_petty`),
  ADD KEY `fk_pettycase_member1_idx` (`member_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id_position`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id_subject`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`id_trainer`),
  ADD KEY `fk_trainer_member1_idx` (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id_announcement` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id_payment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `petty_cash`
--
ALTER TABLE `petty_cash`
  MODIFY `id_petty` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1237;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id_position` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id_subject` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `absen`
--
ALTER TABLE `absen`
  ADD CONSTRAINT `fk_member_has_learning_learning1` FOREIGN KEY (`learning_id`) REFERENCES `learning` (`id_learning`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_member_has_learning_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id_member`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `announcement`
--
ALTER TABLE `announcement`
  ADD CONSTRAINT `fk_announcement_member1` FOREIGN KEY (`member_id_member`) REFERENCES `member` (`id_member`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `learning`
--
ALTER TABLE `learning`
  ADD CONSTRAINT `fk_learning_materi1` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`id_materi`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_learning_trainer1` FOREIGN KEY (`trainer_id`) REFERENCES `trainer` (`id_trainer`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `materi`
--
ALTER TABLE `materi`
  ADD CONSTRAINT `fk_member_has_subject_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id_member`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_member_has_subject_subject1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id_subject`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `fk_member_positon` FOREIGN KEY (`position_id`) REFERENCES `position` (`id_position`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_payment_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id_member`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `petty_cash`
--
ALTER TABLE `petty_cash`
  ADD CONSTRAINT `fk_pettycase_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id_member`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `trainer`
--
ALTER TABLE `trainer`
  ADD CONSTRAINT `fk_trainer_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id_member`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
