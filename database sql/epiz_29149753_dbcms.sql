-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2021 at 02:37 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_category`
--

CREATE TABLE `cms_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_category`
--

INSERT INTO `cms_category` (`id`, `name`) VALUES
(7, 'tips n trick');

-- --------------------------------------------------------

--
-- Table structure for table `cms_posts`
--

CREATE TABLE `cms_posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` enum('published','draft','archived','') NOT NULL DEFAULT 'published',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_posts`
--

INSERT INTO `cms_posts` (`id`, `title`, `message`, `category_id`, `userid`, `status`, `created`, `updated`) VALUES
(18, 'Tips Melamar Pekerjaan', 'Beberapa tips melamar pekerjaan :\r\n\r\n1. Lamar pekerjaan yang anda minati dan yakin mampu melaksanakan.\r\n2. Buatlah surat lamaran yang terkesan individual/personal khusus untuk perusahaan yang dimaksud jangan membuat surat lamaran yang sudah diformat secara standard atau meniru /jiplak mentah-mentah dari buku.\r\n3. Usahakan surat tsb singkat , faktual dan menarik dengan bahasa yang jelas dan penampilan yang menarik dalam arti : rapi ( tidak ada kesalahan dalam ejaan atau tatabahasa), bersih ( tinta hitam diatas kertas putuh, jangan ada koreksi seperti tippex atau perbaikan dengan pensil/bolpoin sebaiknya ketik dan cetak ulang saja ) dan selalu berusaha ditujukan kepada seseorang tertentu ( nama dan /atau jabatan yang spesifik ).\r\n4. Surat lamaran maksimal hanya satu halaman, selalu disertai resume/ C.V. (curriculum vitae) anda dan memberi impresi pertama yang positif tentang anda.\r\n5. Resume /C.V. anda sebaiknya memberi detil tentang dirimu mencakup latar belakang pendidikan, ketrampilan-ketrampilan yang anda miliki, pengalaman kerja ( full-time atau part-time atau free lance yg memberi anda kompetensi tertentu untuk melakukan suatu pekerjaan ), aktivitas (organisasi, masyarakat, olah raga ,dsb) dan prestasi – prestasi ( disekolah maupun luar sekolah) yang pernah anda raih. . Ciri resume / C.V. yang baik adalah : rapi, simpel, jujur dan akurat . 6. Sebaiknya bersih dan disusun agar penyampaian informasi menarik dan mudah dibaca. Berilah jarak ( margin) pada semua sisi resume/c.v anda sebesar 1? ( minimal 1/2? kalau anda kekurangan space untuk mengisi informasi tentang diri anda.) Bagian putih ini membuat resume anda menarik, bersih dan mudah dibaca sekaligus memberi tempat bagi pembaca untuk membubuhkan catatan langsung pada resumemu. \r\n7. Gunakan kertas dan tinta yang sama dengan surat lamarannya.\r\nProof read ulang surat lamaran dan resume/C.V. anda \r\n8. Pastikan bahwa tidak ada kesalahan Tipografis, tatabahasa/ grammar, bahasa yang diulang-ulang/repetitif, layout yang kurang rapi (miring atau tidak lurus) ataupun kesalahan lain. Suatu kesalahan dalam ejaan saja bisa menyebabkan anda kehilangan kesempatan yang penting untuk memperoleh pekerjaan.\r\n9. Silahkan membaca buku/literatur yang tersedia di toko-toko buku. Banyak yang mengulas cara-cara dan kiat yang efektif dalam menulis surat lamaran , resume/C.V. maupun wawancara.', 7, 4, 'published', '2021-07-15 13:13:22', '2021-07-15 13:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `cms_user`
--

CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_user`
--

INSERT INTO `cms_user` (`id`, `first_name`, `last_name`, `email`, `password`, `type`, `deleted`) VALUES
(1, 'admin', '', 'admin@admin.com', '202cb962ac59075b964b07152d234b70', 1, 0),
(4, 'user', '', 'user@user.com', '202cb962ac59075b964b07152d234b70', 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_category`
--
ALTER TABLE `cms_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_posts`
--
ALTER TABLE `cms_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_category`
--
ALTER TABLE `cms_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cms_posts`
--
ALTER TABLE `cms_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
