-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2021 at 03:12 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mm_gathan`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_02_09_030225_create_table_kategori_barang', 1),
(4, '2021_02_20_020742_create_table_barang', 2),
(5, '2021_02_20_021444_create_table_barang', 3),
(6, '2021_02_20_023230_create_table_barang', 4),
(7, '2021_02_20_023358_create_table_produk', 5),
(8, '2021_02_20_023518_create_table_detail_penjualan', 6),
(9, '2021_02_20_023856_create_table_detail_pembelian', 7),
(10, '2021_02_20_024120_create_table_penjualan', 8),
(11, '2021_02_20_040116_create_table_detail_pelanggan', 9),
(12, '2021_02_20_040321_create_table_pembelian', 10),
(13, '2021_02_20_040610_create_table_tampung_bayar', 11),
(14, '2021_02_20_040801_create_table_pemasok', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_barang`
--

CREATE TABLE `table_barang` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_barang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `produk_id` int(50) NOT NULL,
  `nama_barang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_jual` double NOT NULL,
  `stok` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_barang`
--

INSERT INTO `table_barang` (`id`, `kode_barang`, `produk_id`, `nama_barang`, `satuan`, `harga_jual`, `stok`, `created_at`, `updated_at`) VALUES
(102, 'K24382330', 68, 'Sabun Lifebuoy', 'item', 67421, '993', '2021-03-20 04:45:33', '2021-03-20 04:45:33'),
(103, 'K02500832', 51, 'Sabun Lifebuoy', 'pcs', 85467, '351', '2021-03-20 04:45:33', '2021-03-20 04:45:33'),
(104, 'K49096012', 68, 'Mie Sedap Ayam Bawang', 'item', 44149, '73', '2021-03-20 04:45:33', '2021-03-20 04:45:33'),
(105, 'K40220695', 73, 'Sabun Lifebuoy', 'item', 6654, '855', '2021-03-20 04:45:33', '2021-03-20 04:45:33'),
(106, 'K72576564', 77, 'Sabun Lifebuoy', 'pcs', 74511, '224', '2021-03-20 04:45:33', '2021-03-20 04:45:33'),
(107, 'K86529168', 88, 'Sabun Lifebuoy', 'pcs', 48331, '192', '2021-03-20 04:45:33', '2021-03-20 04:45:33'),
(108, 'K58743419', 69, 'Mie Sedap Ayam Bawang', 'kardus', 37859, '286', '2021-03-20 04:45:33', '2021-03-20 04:45:33'),
(109, 'K89902759', 59, 'Mie Sedap Ayam Bawang', 'kardus', 58432, '654', '2021-03-20 04:45:33', '2021-03-20 04:45:33'),
(110, 'K65326768', 87, 'Mie Sedap Ayam Bawang', 'kardus', 32601, '982', '2021-03-20 04:45:33', '2021-03-20 04:45:33'),
(111, 'K17929433', 83, 'Sabun Lifebuoy', 'item', 40679, '497', '2021-03-20 04:45:33', '2021-03-20 04:45:33'),
(112, 'K83431259', 73, 'Sabun Lifebuoy', 'pcs', 22003, '455', '2021-03-20 04:45:33', '2021-03-20 04:45:33'),
(113, 'K70488891', 63, 'Mie Sedap Ayam Bawang', 'item', 32757, '987', '2021-03-20 04:45:34', '2021-03-20 04:45:34'),
(114, 'K01079225', 53, 'Sabun Lifebuoy', 'item', 27198, '856', '2021-03-20 04:45:34', '2021-03-20 04:45:34'),
(115, 'K75433635', 79, 'Sabun Lifebuoy', 'kardus', 23999, '556', '2021-03-20 04:45:34', '2021-03-20 04:45:34'),
(116, 'K95991340', 99, 'Sabun Lifebuoy', 'kardus', 4860, '737', '2021-03-20 04:45:34', '2021-03-20 04:45:34'),
(117, 'K95489530', 71, 'Mie Sedap Ayam Bawang', 'pcs', 22900, '415', '2021-03-20 04:45:34', '2021-03-20 04:45:34'),
(118, 'K37266841', 82, 'Mie Sedap Ayam Bawang', 'item', 59609, '983', '2021-03-20 04:45:34', '2021-03-20 04:45:34'),
(119, 'K36184214', 97, 'Sabun Lifebuoy', 'item', 74451, '892', '2021-03-20 04:45:34', '2021-03-20 04:45:34'),
(120, 'K65939550', 100, 'Sabun Lifebuoy', 'kardus', 13632, '274', '2021-03-20 04:45:34', '2021-03-20 04:45:34'),
(121, 'K12984011', 85, 'Mie Sedap Ayam Bawang', 'pcs', 53400, '56', '2021-03-20 04:45:34', '2021-03-20 04:45:34'),
(122, 'K30488365', 78, 'Mie Sedap Ayam Bawang', 'item', 33979, '874', '2021-03-20 04:45:34', '2021-03-20 04:45:34'),
(123, 'K41464571', 74, 'Mie Sedap Ayam Bawang', 'item', 76748, '747', '2021-03-20 04:45:35', '2021-03-20 04:45:35'),
(124, 'K81291665', 92, 'Sabun Lifebuoy', 'item', 53287, '799', '2021-03-20 04:45:35', '2021-03-20 04:45:35'),
(125, 'K85049905', 75, 'Sabun Lifebuoy', 'item', 45743, '330', '2021-03-20 04:45:35', '2021-03-20 04:45:35'),
(126, 'K42783010', 91, 'Mie Sedap Ayam Bawang', 'item', 96768, '847', '2021-03-20 04:45:35', '2021-03-20 04:45:35'),
(127, 'K79288559', 56, 'Mie Sedap Ayam Bawang', 'pcs', 18927, '751', '2021-03-20 04:45:35', '2021-03-20 04:45:35'),
(128, 'K95406489', 96, 'Mie Sedap Ayam Bawang', 'item', 25291, '717', '2021-03-20 04:45:35', '2021-03-20 04:45:35'),
(129, 'K73779395', 57, 'Mie Sedap Ayam Bawang', 'kardus', 38075, '432', '2021-03-20 04:45:35', '2021-03-20 04:45:35'),
(130, 'K83208809', 86, 'Sabun Lifebuoy', 'pcs', 86434, '870', '2021-03-20 04:45:35', '2021-03-20 04:45:35'),
(131, 'K28067276', 74, 'Sabun Lifebuoy', 'kardus', 97490, '443', '2021-03-20 04:45:35', '2021-03-20 04:45:35'),
(132, 'K14534202', 93, 'Sabun Lifebuoy', 'kardus', 52267, '626', '2021-03-20 04:45:35', '2021-03-20 04:45:35'),
(133, 'K57125511', 78, 'Sabun Lifebuoy', 'kardus', 49814, '81', '2021-03-20 04:45:36', '2021-03-20 04:45:36'),
(134, 'K27317834', 85, 'Sabun Lifebuoy', 'pcs', 85060, '140', '2021-03-20 04:45:36', '2021-03-20 04:45:36'),
(135, 'K23704863', 60, 'Mie Sedap Ayam Bawang', 'pcs', 54773, '778', '2021-03-20 04:45:36', '2021-03-20 04:45:36'),
(136, 'K13097512', 77, 'Sabun Lifebuoy', 'item', 99840, '416', '2021-03-20 04:45:36', '2021-03-20 04:45:36'),
(137, 'K76819722', 79, 'Sabun Lifebuoy', 'item', 80717, '714', '2021-03-20 04:45:36', '2021-03-20 04:45:36'),
(138, 'K39495617', 73, 'Sabun Lifebuoy', 'item', 19645, '266', '2021-03-20 04:45:36', '2021-03-20 04:45:36'),
(139, 'K10568114', 71, 'Sabun Lifebuoy', 'item', 19234, '328', '2021-03-20 04:45:36', '2021-03-20 04:45:36'),
(140, 'K27141824', 64, 'Sabun Lifebuoy', 'pcs', 50438, '66', '2021-03-20 04:45:36', '2021-03-20 04:45:36'),
(141, 'K55452786', 82, 'Sabun Lifebuoy', 'item', 34426, '141', '2021-03-20 04:45:36', '2021-03-20 04:45:36'),
(142, 'K84672017', 83, 'Mie Sedap Ayam Bawang', 'item', 43128, '637', '2021-03-20 04:45:36', '2021-03-20 04:45:36'),
(143, 'K84078003', 97, 'Mie Sedap Ayam Bawang', 'pcs', 27535, '317', '2021-03-20 04:45:36', '2021-03-20 04:45:36'),
(144, 'K39627592', 58, 'Sabun Lifebuoy', 'pcs', 21723, '22', '2021-03-20 04:45:36', '2021-03-20 04:45:36'),
(145, 'K77119204', 51, 'Sabun Lifebuoy', 'pcs', 86257, '872', '2021-03-20 04:45:36', '2021-03-20 04:45:36'),
(146, 'K44638520', 78, 'Mie Sedap Ayam Bawang', 'item', 70742, '87', '2021-03-20 04:45:37', '2021-03-20 04:45:37'),
(147, 'K56349564', 98, 'Mie Sedap Ayam Bawang', 'pcs', 93427, '603', '2021-03-20 04:45:37', '2021-03-20 04:45:37'),
(148, 'K72990868', 54, 'Sabun Lifebuoy', 'pcs', 70068, '945', '2021-03-20 04:45:37', '2021-03-20 04:45:37'),
(149, 'K63094599', 96, 'Mie Sedap Ayam Bawang', 'item', 14659, '99', '2021-03-20 04:45:37', '2021-03-20 04:45:37'),
(150, 'K71325837', 93, 'Sabun Lifebuoy', 'kardus', 88924, '507', '2021-03-20 04:45:37', '2021-03-20 04:45:37'),
(151, 'K58916444', 86, 'Sabun Lifebuoy', 'pcs', 25684, '914', '2021-03-20 04:45:37', '2021-03-20 04:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `table_detail_pelanggan`
--

CREATE TABLE `table_detail_pelanggan` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_pelanggan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_detail_pelanggan`
--

INSERT INTO `table_detail_pelanggan` (`id`, `kode_pelanggan`, `nama`, `alamat`, `no_telp`, `email`, `created_at`, `updated_at`) VALUES
(1, 'KP03104508', 'Bailey Lockman', '48872 Halvorson Lock Suite 153\nStephanystad, HI 91286', '810.899.2954 x356', 'mabel46@example.net', '2021-03-20 05:24:43', '2021-03-20 05:24:43'),
(2, 'KP63764373', 'Webster Collier V', '85015 Madison Row\nSkilesfurt, RI 93889-7652', '839.455.3406 x7061', 'kathryn.koepp@example.org', '2021-03-20 05:24:43', '2021-03-20 05:24:43'),
(3, 'KP30935111', 'Prof. Friedrich Feeney', '81157 Lottie Landing\nHoppetown, NJ 02148-8049', '+1.252.676.2964', 'bfeest@example.com', '2021-03-20 05:24:43', '2021-03-20 05:24:43'),
(4, 'KP42001346', 'Lura Gleichner', '772 Feest Falls\nToreyburgh, CA 61146-8121', '(624) 519-6451', 'hauck.grace@example.com', '2021-03-20 05:25:31', '2021-03-20 05:25:31'),
(5, 'KP71030531', 'Miss Malinda Bechtelar', '886 Mills Common Apt. 450\nWest Myrtisburgh, NV 71313', '1-886-292-2691 x539', 'xjohnson@example.com', '2021-03-20 05:25:31', '2021-03-20 05:25:31'),
(6, 'KP91506099', 'Alvis Kunde', '526 Brakus Wall\nCalebmouth, MD 27223', '954.643.3497', 'krystel82@example.org', '2021-03-20 05:25:31', '2021-03-20 05:25:31'),
(7, 'KP08734786', 'Jazmyn Fahey', '20364 Justine Cliffs Suite 396\nEphraimbury, ND 45080', '1-295-328-9038', 'olin97@example.org', '2021-03-20 05:25:31', '2021-03-20 05:25:31'),
(8, 'KP46658985', 'Dovie Dach DVM', '46108 Kutch Passage\nCecilbury, OH 25888-1910', '+1 (809) 786-2917', 'terry.solon@example.com', '2021-03-20 05:25:31', '2021-03-20 05:25:31'),
(9, 'KP36290848', 'Luciano Schimmel PhD', '85301 Tremblay Spurs\nStiedemannshire, NJ 57265', '+13892161460', 'dejuan13@example.org', '2021-03-20 05:25:31', '2021-03-20 05:25:31'),
(10, 'KP92328210', 'Emil Stiedemann Sr.', '99276 Nicklaus Spurs\nNew Chaunceyberg, MT 89944', '(720) 848-4793', 'fhand@example.org', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(11, 'KP26410772', 'Kenya Sawayn V', '233 Christiana Squares\nSouth Emerymouth, DE 12845-3337', '1-483-879-2292', 'mkuphal@example.net', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(12, 'KP18595538', 'Mr. Guiseppe Dickinson', '6920 Steuber Fields Apt. 257\nWest Samir, NE 56381', '+16422221614', 'keshawn.oconner@example.net', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(13, 'KP00147408', 'Ms. Adelle Grant Sr.', '7617 Mertz Isle\nPort Henry, OH 39282-1071', '1-778-559-7151', 'shields.hanna@example.com', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(14, 'KP36610379', 'Stella Stamm', '3271 Omer Field\nAufderhartown, OH 82903', '1-376-480-7407 x31461', 'zdonnelly@example.com', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(15, 'KP02110694', 'Dedrick Yundt Sr.', '876 Helga Vista\nWest Johathanshire, NY 06449', '1-834-629-5289', 'haylee60@example.org', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(16, 'KP46957952', 'Jamil Lebsack', '598 Vivianne Center Suite 505\nHauckport, NY 66907', '264.731.7024', 'mondricka@example.net', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(17, 'KP35945872', 'Karine Leuschke', '1114 Parisian Ferry\nPort Ashton, AR 68212', '(968) 479-9743', 'lee66@example.com', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(18, 'KP40879869', 'Mayra Jacobson III', '1831 Lindgren Pike Apt. 403\nJonesland, WY 68465-1125', '642.812.2131 x492', 'pturner@example.net', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(19, 'KP04077655', 'Dr. Darian Hintz', '5534 Goldner Parkway Suite 973\nOkeychester, IL 88361', '+1.747.842.9669', 'blick.genevieve@example.com', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(20, 'KP57127185', 'Dr. Josie Daniel', '65592 Yost Parkways Apt. 495\nNorth Eloisa, NE 34086-2229', '1-367-997-1575 x178', 'langosh.alda@example.com', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(21, 'KP96258030', 'Coty Hane', '50980 Lukas Inlet\nNew Jodie, MD 99135-8284', '827-464-1867 x75198', 'liam.wehner@example.org', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(22, 'KP32221295', 'Valentin O\'Keefe Sr.', '278 Rolfson Crossing\nWest Ruthhaven, CO 33824-2178', '609-863-8359 x41776', 'alena30@example.com', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(23, 'KP14062489', 'Craig Ritchie', '7642 Kareem Drive Apt. 167\nBergstromview, NC 14358', '778.322.9690', 'hbrekke@example.com', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(24, 'KP26759509', 'Marvin Jerde', '340 Manley Mission Apt. 976\nGretchenmouth, SC 26914-9749', '978-547-2307 x22161', 'donato19@example.com', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(25, 'KP86344742', 'Elissa Runte', '42764 Kari Common Suite 597\nPort Jeffereyside, RI 75173', '750.395.7121 x87791', 'dwalsh@example.com', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(26, 'KP64784949', 'Leola Brown', '1443 Koelpin Light Suite 316\nPort Ludie, AR 25056', '+1.593.814.6163', 'franco20@example.net', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(27, 'KP13945472', 'Prof. Conrad Dicki', '139 Gusikowski Row Apt. 392\nRatkeside, PA 11270', '+1-597-410-6783', 'awilliamson@example.org', '2021-03-20 05:25:32', '2021-03-20 05:25:32'),
(28, 'KP44403123', 'Ms. Heloise Feeney', '4930 Oma Keys Apt. 277\nFerryfurt, WY 43518-2662', '1-467-243-8917', 'rroob@example.org', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(29, 'KP14414114', 'Skye Lubowitz', '3678 Kilback Ports\nSouth Lavon, GA 55838', '(921) 532-9194', 'steuber.lafayette@example.net', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(30, 'KP22338870', 'Kasandra Yost', '9000 Reynolds Locks\nPort Cale, IL 65562-9002', '238.756.7713', 'quinton22@example.net', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(31, 'KP98199312', 'Carrie Ward', '35380 Stanton Club\nNew Maximemouth, VA 25690', '1-394-869-2801 x104', 'wilbert59@example.org', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(32, 'KP66090447', 'Fae Gorczany', '8350 Daryl Prairie Suite 511\nMonserrateville, CO 17098-2234', '1-745-321-9767', 'jany.runte@example.net', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(33, 'KP33446110', 'Mr. Conrad Batz MD', '859 Ezekiel Pass Apt. 880\nMarkusfort, NC 47698', '1-831-738-0733 x790', 'ellis.reichert@example.com', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(34, 'KP76509864', 'Opal Von', '174 Rohan Trace\nGradymouth, IA 01130', '1-541-217-0024 x08827', 'curt23@example.net', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(35, 'KP19598584', 'Hobart Schulist', '426 Ahmad Via Suite 825\nAbshirefort, ME 38205-2992', '1-845-299-2920', 'cankunding@example.net', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(36, 'KP79326755', 'Ms. Emilie O\'Keefe Sr.', '320 Will Alley Suite 091\nPort Camilla, KS 39641', '(969) 562-0200', 'ebauch@example.net', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(37, 'KP11136801', 'Charles Rodriguez', '76499 Gladyce Pass\nSouth Nannie, RI 83402-2732', '1-827-843-4907 x982', 'layne67@example.org', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(38, 'KP80597858', 'Philip Volkman', '3642 Wolff Summit Apt. 598\nCheyenneshire, LA 61170-0414', '+1-906-394-7999', 'bmedhurst@example.org', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(39, 'KP56504978', 'Mr. Wellington Feest', '421 Marcelo Points\nNew Jedview, CT 13078-8078', '1-496-988-7467 x5535', 'freichert@example.com', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(40, 'KP23159976', 'Mr. Monroe Rosenbaum MD', '870 Carissa Plain\nEast Kiana, SC 95412-6640', '282-760-3461 x9186', 'george92@example.net', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(41, 'KP47233759', 'Lance Buckridge I', '91307 Sanford Junctions Apt. 875\nEast Marjolainemouth, VT 03239-0841', '807.751.2556 x038', 'chauncey48@example.net', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(42, 'KP74990656', 'Alessia Bernier', '87695 Jayson Harbor\nKirlinfurt, MO 24167', '925-301-9127', 'denesik.meghan@example.org', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(43, 'KP00838646', 'Mr. Giles Harvey IV', '818 Sierra Forges Apt. 016\nMiltontown, NJ 52136', '793-438-3362 x589', 'destiney.zemlak@example.com', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(44, 'KP50179606', 'Selina Langworth', '90708 Josefa Meadow Suite 358\nOrionton, OR 64409', '+1-420-664-7458', 'ycarroll@example.com', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(45, 'KP14805752', 'Miss Maia Romaguera', '6533 Edd Island\nWest Graciela, NY 04757', '1-320-748-1301 x3047', 'qwalker@example.com', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(46, 'KP87670115', 'Arvid Lynch DVM', '365 Cassin Heights\nNolanview, FL 20495', '1-227-855-9383', 'vcollins@example.net', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(47, 'KP96094668', 'Korbin Daniel', '60922 Cormier Ford\nEast Claud, MS 50161', '998.741.1898 x58576', 'kreiger.dolores@example.org', '2021-03-20 05:25:33', '2021-03-20 05:25:33'),
(48, 'KP58029468', 'Kirsten Mills', '88456 O\'Keefe Valleys\nWest Marjoryview, AR 63630-3469', '492-539-3238', 'jast.russell@example.org', '2021-03-20 05:25:34', '2021-03-20 05:25:34'),
(49, 'KP50888944', 'Gunnar Bayer', '97418 Josh Shoals Suite 710\nNorth Candida, CA 99229', '819.433.7472 x792', 'tbergnaum@example.net', '2021-03-20 05:25:34', '2021-03-20 05:25:34'),
(50, 'KP87631069', 'Mr. Denis Little Jr.', '699 Schroeder Tunnel\nKirlinbury, SD 19973-0915', '(713) 440-7896', 'lera.baumbach@example.com', '2021-03-20 05:25:34', '2021-03-20 05:25:34'),
(51, 'KP17867579', 'Caleigh Ernser Sr.', '45725 Wisozk Greens Suite 297\nPort Madieside, CT 66474-7518', '(843) 627-7506 x441', 'heidenreich.aiden@example.com', '2021-03-20 05:25:34', '2021-03-20 05:25:34'),
(52, 'KP77628038', 'Rebeka Ward', '73138 Carey Mill\nChristytown, MI 50223-8680', '331-963-9205', 'phegmann@example.org', '2021-03-20 05:25:34', '2021-03-20 05:25:34'),
(53, 'KP14525371', 'Royce Lubowitz PhD', '47915 Balistreri Parkway Suite 813\nLindfurt, OK 35906-4096', '+14389198961', 'dicki.cathy@example.org', '2021-03-20 05:25:34', '2021-03-20 05:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `table_detail_pembelian`
--

CREATE TABLE `table_detail_pembelian` (
  `id` int(10) UNSIGNED NOT NULL,
  `pembelian_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `harga_beli` double NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sub_total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_detail_pembelian`
--

INSERT INTO `table_detail_pembelian` (`id`, `pembelian_id`, `barang_id`, `harga_beli`, `jumlah`, `sub_total`, `created_at`, `updated_at`) VALUES
(1, 37, 119, 48243, 368, 475, '2021-03-20 05:16:34', '2021-03-20 05:16:34'),
(2, 34, 141, 59241, 847, 448, '2021-03-20 05:16:35', '2021-03-20 05:16:35'),
(3, 47, 120, 83387, 608, 413, '2021-03-20 05:16:35', '2021-03-20 05:16:35'),
(4, 6, 139, 24949, 87, 224, '2021-03-20 05:16:35', '2021-03-20 05:16:35'),
(5, 14, 146, 70573, 370, 458, '2021-03-20 05:16:35', '2021-03-20 05:16:35'),
(6, 23, 102, 15083, 389, 208, '2021-03-20 05:16:35', '2021-03-20 05:16:35'),
(7, 36, 121, 92755, 166, 274, '2021-03-20 05:16:35', '2021-03-20 05:16:35'),
(8, 7, 126, 27257, 172, 159, '2021-03-20 05:16:35', '2021-03-20 05:16:35'),
(9, 26, 141, 30329, 818, 88, '2021-03-20 05:16:36', '2021-03-20 05:16:36'),
(10, 28, 124, 69024, 954, 460, '2021-03-20 05:16:36', '2021-03-20 05:16:36'),
(11, 34, 113, 54560, 77, 385, '2021-03-20 05:16:36', '2021-03-20 05:16:36'),
(12, 4, 141, 95426, 760, 479, '2021-03-20 05:16:36', '2021-03-20 05:16:36'),
(13, 14, 129, 55854, 171, 56, '2021-03-20 05:16:36', '2021-03-20 05:16:36'),
(14, 37, 141, 61537, 124, 93, '2021-03-20 05:16:36', '2021-03-20 05:16:36'),
(15, 31, 125, 57490, 265, 50, '2021-03-20 05:16:36', '2021-03-20 05:16:36'),
(16, 49, 123, 47769, 759, 53, '2021-03-20 05:16:36', '2021-03-20 05:16:36'),
(17, 21, 121, 47791, 297, 339, '2021-03-20 05:16:37', '2021-03-20 05:16:37'),
(18, 41, 114, 26756, 623, 234, '2021-03-20 05:16:37', '2021-03-20 05:16:37'),
(19, 22, 102, 15320, 795, 237, '2021-03-20 05:16:37', '2021-03-20 05:16:37'),
(20, 26, 137, 28849, 856, 138, '2021-03-20 05:16:37', '2021-03-20 05:16:37'),
(21, 39, 142, 92524, 61, 7, '2021-03-20 05:16:38', '2021-03-20 05:16:38'),
(22, 30, 147, 26386, 168, 188, '2021-03-20 05:16:38', '2021-03-20 05:16:38'),
(23, 22, 129, 76585, 49, 438, '2021-03-20 05:16:38', '2021-03-20 05:16:38'),
(24, 21, 148, 48994, 260, 298, '2021-03-20 05:16:38', '2021-03-20 05:16:38'),
(25, 42, 146, 68442, 994, 36, '2021-03-20 05:16:38', '2021-03-20 05:16:38'),
(26, 47, 103, 22579, 818, 499, '2021-03-20 05:16:38', '2021-03-20 05:16:38'),
(27, 15, 129, 63830, 922, 486, '2021-03-20 05:16:38', '2021-03-20 05:16:38'),
(28, 32, 141, 52333, 306, 395, '2021-03-20 05:16:38', '2021-03-20 05:16:38'),
(29, 36, 134, 20254, 260, 444, '2021-03-20 05:16:38', '2021-03-20 05:16:38'),
(30, 13, 149, 5770, 238, 31, '2021-03-20 05:16:38', '2021-03-20 05:16:38'),
(31, 50, 102, 82759, 242, 114, '2021-03-20 05:16:38', '2021-03-20 05:16:38'),
(32, 43, 113, 76680, 824, 423, '2021-03-20 05:16:38', '2021-03-20 05:16:38'),
(33, 49, 135, 80635, 932, 410, '2021-03-20 05:16:39', '2021-03-20 05:16:39'),
(34, 44, 117, 10828, 905, 416, '2021-03-20 05:16:39', '2021-03-20 05:16:39'),
(35, 9, 125, 38855, 120, 420, '2021-03-20 05:16:39', '2021-03-20 05:16:39'),
(36, 27, 147, 29074, 982, 110, '2021-03-20 05:16:39', '2021-03-20 05:16:39'),
(37, 34, 114, 64904, 984, 40, '2021-03-20 05:16:39', '2021-03-20 05:16:39'),
(38, 35, 116, 93104, 593, 385, '2021-03-20 05:16:39', '2021-03-20 05:16:39'),
(39, 23, 120, 50504, 264, 16, '2021-03-20 05:16:39', '2021-03-20 05:16:39'),
(40, 44, 132, 69267, 206, 408, '2021-03-20 05:16:39', '2021-03-20 05:16:39'),
(41, 31, 144, 84863, 148, 207, '2021-03-20 05:16:39', '2021-03-20 05:16:39'),
(42, 39, 122, 11264, 319, 121, '2021-03-20 05:16:39', '2021-03-20 05:16:39'),
(43, 42, 134, 44394, 567, 481, '2021-03-20 05:16:40', '2021-03-20 05:16:40'),
(44, 3, 151, 66039, 718, 242, '2021-03-20 05:16:40', '2021-03-20 05:16:40'),
(45, 27, 117, 45678, 375, 228, '2021-03-20 05:16:40', '2021-03-20 05:16:40'),
(46, 2, 122, 14314, 214, 213, '2021-03-20 05:16:40', '2021-03-20 05:16:40'),
(47, 4, 112, 58677, 634, 482, '2021-03-20 05:16:40', '2021-03-20 05:16:40'),
(48, 3, 113, 54584, 78, 70, '2021-03-20 05:16:40', '2021-03-20 05:16:40'),
(49, 12, 115, 82201, 650, 57, '2021-03-20 05:16:40', '2021-03-20 05:16:40'),
(50, 23, 102, 49532, 959, 31, '2021-03-20 05:16:40', '2021-03-20 05:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `table_detail_penjualan`
--

CREATE TABLE `table_detail_penjualan` (
  `id` int(10) UNSIGNED NOT NULL,
  `penjualan_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `harga_jual` double NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sub_total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_detail_penjualan`
--

INSERT INTO `table_detail_penjualan` (`id`, `penjualan_id`, `barang_id`, `harga_jual`, `jumlah`, `sub_total`, `created_at`, `updated_at`) VALUES
(1, 25, 102, 62850, 36, 335, '2021-03-20 05:41:44', '2021-03-20 05:41:44'),
(2, 4, 131, 99844, 963, 177, '2021-03-20 05:41:44', '2021-03-20 05:41:44'),
(3, 1, 112, 65744, 323, 108, '2021-03-20 05:41:44', '2021-03-20 05:41:44'),
(4, 4, 125, 78904, 450, 486, '2021-03-20 05:41:44', '2021-03-20 05:41:44'),
(5, 45, 135, 76466, 819, 51, '2021-03-20 05:41:44', '2021-03-20 05:41:44'),
(6, 39, 110, 29048, 141, 172, '2021-03-20 05:41:44', '2021-03-20 05:41:44'),
(7, 12, 116, 29127, 465, 75, '2021-03-20 05:41:44', '2021-03-20 05:41:44'),
(8, 9, 138, 20075, 827, 181, '2021-03-20 05:41:45', '2021-03-20 05:41:45'),
(9, 44, 117, 25017, 153, 196, '2021-03-20 05:41:45', '2021-03-20 05:41:45'),
(10, 43, 131, 30132, 55, 11, '2021-03-20 05:41:45', '2021-03-20 05:41:45'),
(11, 13, 111, 22102, 194, 176, '2021-03-20 05:41:45', '2021-03-20 05:41:45'),
(12, 40, 134, 26521, 877, 448, '2021-03-20 05:41:45', '2021-03-20 05:41:45'),
(13, 37, 110, 95133, 678, 491, '2021-03-20 05:41:45', '2021-03-20 05:41:45'),
(14, 30, 107, 15641, 346, 132, '2021-03-20 05:41:45', '2021-03-20 05:41:45'),
(15, 7, 150, 42874, 439, 463, '2021-03-20 05:41:45', '2021-03-20 05:41:45'),
(16, 49, 127, 99334, 686, 305, '2021-03-20 05:41:45', '2021-03-20 05:41:45'),
(17, 48, 109, 8825, 621, 166, '2021-03-20 05:41:45', '2021-03-20 05:41:45'),
(18, 25, 143, 7529, 472, 309, '2021-03-20 05:41:45', '2021-03-20 05:41:45'),
(19, 44, 128, 59516, 988, 40, '2021-03-20 05:41:45', '2021-03-20 05:41:45'),
(20, 7, 113, 60303, 987, 50, '2021-03-20 05:41:45', '2021-03-20 05:41:45'),
(21, 19, 107, 16323, 76, 458, '2021-03-20 05:41:45', '2021-03-20 05:41:45'),
(22, 49, 148, 22870, 415, 95, '2021-03-20 05:41:45', '2021-03-20 05:41:45'),
(23, 18, 143, 96069, 634, 363, '2021-03-20 05:41:46', '2021-03-20 05:41:46'),
(24, 38, 150, 64592, 977, 239, '2021-03-20 05:41:46', '2021-03-20 05:41:46'),
(25, 19, 124, 45032, 243, 401, '2021-03-20 05:41:46', '2021-03-20 05:41:46'),
(26, 43, 133, 86344, 175, 114, '2021-03-20 05:41:46', '2021-03-20 05:41:46'),
(27, 42, 115, 48535, 360, 309, '2021-03-20 05:41:46', '2021-03-20 05:41:46'),
(28, 24, 132, 25754, 935, 436, '2021-03-20 05:41:46', '2021-03-20 05:41:46'),
(29, 30, 119, 55365, 326, 351, '2021-03-20 05:41:46', '2021-03-20 05:41:46'),
(30, 22, 144, 45416, 434, 246, '2021-03-20 05:41:46', '2021-03-20 05:41:46'),
(31, 35, 110, 92810, 618, 1, '2021-03-20 05:41:46', '2021-03-20 05:41:46'),
(32, 24, 148, 47660, 376, 198, '2021-03-20 05:41:46', '2021-03-20 05:41:46'),
(33, 14, 130, 13276, 758, 161, '2021-03-20 05:41:46', '2021-03-20 05:41:46'),
(34, 40, 127, 99556, 531, 55, '2021-03-20 05:41:46', '2021-03-20 05:41:46'),
(35, 14, 150, 55798, 244, 241, '2021-03-20 05:41:46', '2021-03-20 05:41:46'),
(36, 43, 108, 81089, 399, 326, '2021-03-20 05:41:46', '2021-03-20 05:41:46'),
(37, 42, 108, 51548, 806, 403, '2021-03-20 05:41:46', '2021-03-20 05:41:46'),
(38, 6, 122, 59977, 406, 219, '2021-03-20 05:41:47', '2021-03-20 05:41:47'),
(39, 33, 135, 66005, 957, 55, '2021-03-20 05:41:47', '2021-03-20 05:41:47'),
(40, 17, 114, 19055, 489, 472, '2021-03-20 05:41:47', '2021-03-20 05:41:47'),
(41, 48, 134, 28435, 744, 460, '2021-03-20 05:41:47', '2021-03-20 05:41:47'),
(42, 32, 126, 92445, 88, 304, '2021-03-20 05:41:47', '2021-03-20 05:41:47'),
(43, 4, 151, 40174, 189, 132, '2021-03-20 05:41:47', '2021-03-20 05:41:47'),
(44, 37, 148, 21844, 618, 118, '2021-03-20 05:41:47', '2021-03-20 05:41:47'),
(45, 28, 145, 99660, 934, 393, '2021-03-20 05:41:47', '2021-03-20 05:41:47'),
(46, 7, 129, 72955, 536, 194, '2021-03-20 05:41:47', '2021-03-20 05:41:47'),
(47, 42, 134, 87721, 477, 346, '2021-03-20 05:41:47', '2021-03-20 05:41:47'),
(48, 43, 127, 66297, 490, 254, '2021-03-20 05:41:47', '2021-03-20 05:41:47'),
(49, 6, 125, 83418, 492, 83, '2021-03-20 05:41:47', '2021-03-20 05:41:47'),
(50, 28, 148, 44869, 106, 380, '2021-03-20 05:41:47', '2021-03-20 05:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `table_pemasok`
--

CREATE TABLE `table_pemasok` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_pemasok` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pemasok` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_pemasok`
--

INSERT INTO `table_pemasok` (`id`, `kode_pemasok`, `nama_pemasok`, `alamat`, `kota`, `no_telp`, `created_at`, `updated_at`) VALUES
(614, '48683', 'Fritsch PLC', '5812 Wallace Skyway\nStephonhaven, KS 59989', 'Schimmelton', '1-640-365-3883', '2021-03-20 04:46:05', '2021-03-20 04:46:05'),
(615, '5517', 'Parker Inc', '164 Bud Vista\nNew Rustyside, CA 66775-5748', 'East Bernitafurt', '(460) 572-6227', '2021-03-20 04:46:05', '2021-03-20 04:46:05'),
(616, '34485', 'Schulist-Roberts', '19004 Abby Dale\nPort Colt, FL 41604-2599', 'South Toni', '+17813912348', '2021-03-20 04:46:05', '2021-03-20 04:46:05'),
(617, '67637', 'Lang-Grimes', '2102 Dickens Crest Suite 022\nPort Annaborough, KS 59031', 'East Mortimerfort', '353.458.9913 x4777', '2021-03-20 04:46:05', '2021-03-20 04:46:05'),
(618, '84407', 'Stroman-Waelchi', '4084 Wuckert Forest Apt. 942\nAndersonburgh, VT 85582-1966', 'Luettgenton', '+1.820.595.4661', '2021-03-20 04:46:05', '2021-03-20 04:46:05'),
(619, '72960', 'Ernser, Tromp and Windler', '23657 Llewellyn Dale\nWest Shaniemouth, AK 78879-4557', 'Kipberg', '+1.536.366.9757', '2021-03-20 04:46:05', '2021-03-20 04:46:05'),
(620, '84950', 'Little Group', '9541 Lang Club Suite 751\nSouth Jess, IN 23964-0721', 'Waelchiview', '(474) 913-4589 x749', '2021-03-20 04:46:05', '2021-03-20 04:46:05'),
(621, '10067', 'Reilly-Langosh', '414 Gorczany Cape Suite 385\nDurganside, HI 22438', 'Sydnieside', '(949) 758-7614 x431', '2021-03-20 04:46:05', '2021-03-20 04:46:05'),
(622, '51836', 'Hagenes-Altenwerth', '41952 Darwin Cliffs\nEast Nellieborough, DC 60500', 'West Nedramouth', '641-554-4798 x652', '2021-03-20 04:46:05', '2021-03-20 04:46:05'),
(623, '80742', 'Skiles, Yundt and Reichel', '2372 Cruz Knoll\nHowellview, SD 65553', 'Lake Hassie', '893.434.1494 x14086', '2021-03-20 04:46:05', '2021-03-20 04:46:05'),
(624, '22146', 'Bashirian-Howe', '841 Wilford Gardens Apt. 038\nPort Amiya, IN 66056-8770', 'Veumland', '(498) 799-5968', '2021-03-20 04:46:05', '2021-03-20 04:46:05'),
(625, '51366', 'Bins Group', '412 Ofelia Mill Suite 102\nCeasarhaven, OH 74756', 'West Ross', '465-638-7377 x730', '2021-03-20 04:46:05', '2021-03-20 04:46:05'),
(626, '70594', 'Moen, Collins and Rolfson', '6716 Arno Ridge\nNorth Jermainechester, CT 43937', 'Lake Brownmouth', '1-531-241-8920', '2021-03-20 04:46:05', '2021-03-20 04:46:05'),
(627, '26012', 'Zieme-Lubowitz', '255 Carolyn Trail\nNew Johnnyview, SD 96867', 'Madilyntown', '853-306-3479 x228', '2021-03-20 04:46:05', '2021-03-20 04:46:05'),
(628, '95373', 'Pacocha-Sawayn', '99636 Schneider Stream Apt. 896\nMaxinefurt, DC 86610', 'Port Joesphshire', '1-290-788-4243', '2021-03-20 04:46:05', '2021-03-20 04:46:05'),
(629, '99020', 'Goyette-Purdy', '419 Rodolfo Loop Apt. 591\nDelphinefort, UT 85824-2955', 'Carrollmouth', '209.480.8836 x7272', '2021-03-20 04:46:06', '2021-03-20 04:46:06'),
(630, '14349', 'Brakus-Larkin', '205 Hamill Light\nGerholdhaven, SD 42051', 'South Carley', '+15506305816', '2021-03-20 04:46:06', '2021-03-20 04:46:06'),
(631, '3037', 'Smith PLC', '454 Treutel Gateway\nSouth Lianaport, CO 64175-9060', 'Weberland', '315-648-5516', '2021-03-20 04:46:06', '2021-03-20 04:46:06'),
(632, '76947', 'Cummings LLC', '777 Blick Via\nSouth Ivastad, RI 99900', 'Lake Hobartview', '291.401.9796 x0685', '2021-03-20 04:46:06', '2021-03-20 04:46:06'),
(633, '41661', 'Wolf, Kihn and Grady', '8650 Osinski Ranch\nGradyville, SD 96436', 'Vestaport', '676-920-2236', '2021-03-20 04:46:06', '2021-03-20 04:46:06'),
(634, '46434', 'O\'Reilly, Bahringer and Weissnat', '1704 Jamaal Gateway Apt. 105\nSouth Lukasborough, UT 60553-6013', 'New Maiashire', '+1 (971) 460-4210', '2021-03-20 04:46:06', '2021-03-20 04:46:06'),
(635, '30652', 'Wolff-Abshire', '31764 Sanford Rapid Suite 129\nPort Valentinbury, WA 82062-2563', 'Siennashire', '538.667.7090', '2021-03-20 04:46:06', '2021-03-20 04:46:06'),
(636, '43108', 'Runolfsson and Sons', '272 Mable Mountain Apt. 405\nEast Shanonland, ID 03571-8086', 'Stromantown', '+1-240-862-1646', '2021-03-20 04:46:06', '2021-03-20 04:46:06'),
(637, '78041', 'Erdman, Hessel and McDermott', '8450 Bernier Mills\nJosiehaven, NM 28313-5914', 'Magdalenville', '(968) 922-9547 x31791', '2021-03-20 04:46:06', '2021-03-20 04:46:06'),
(638, '1929', 'Terry, Goldner and Heathcote', '96110 Kub Trail\nRobertsfort, NE 73702-4910', 'Stantonbury', '(286) 352-5464', '2021-03-20 04:46:06', '2021-03-20 04:46:06'),
(639, '95719', 'Hand Inc', '7599 Jacobi Street\nDickinsonhaven, GA 84447', 'New Chelsea', '418.893.1772', '2021-03-20 04:46:06', '2021-03-20 04:46:06'),
(640, '77275', 'Kozey Ltd', '975 Kiehn Village\nSwiftchester, GA 53478-2889', 'Fisherland', '938-582-6693 x2176', '2021-03-20 04:46:06', '2021-03-20 04:46:06'),
(641, '32005', 'Hamill, Koelpin and O\'Conner', '4289 Boris Points Suite 727\nEvanchester, OK 07633', 'Langworthview', '1-261-263-1696 x750', '2021-03-20 04:46:06', '2021-03-20 04:46:06'),
(642, '37873', 'Beier, Prosacco and Boyer', '870 Witting Spur\nKarellehaven, NJ 80677', 'Kirlinshire', '476-874-2142 x96650', '2021-03-20 04:46:06', '2021-03-20 04:46:06'),
(643, '77757', 'Schuster Inc', '882 Bogisich Plaza\nLake Hassan, DC 53793-5969', 'West Minervastad', '265.761.7166', '2021-03-20 04:46:06', '2021-03-20 04:46:06'),
(644, '12245', 'Hammes-Wilkinson', '35392 Flavie Greens\nAlfordborough, WI 12686', 'Cassandreville', '1-592-897-1229', '2021-03-20 04:46:06', '2021-03-20 04:46:06'),
(645, '5812', 'Bailey-Davis', '7123 John Burgs\nSouth Jaylinshire, NV 42293-6158', 'North Ambroseshire', '(463) 897-6797 x197', '2021-03-20 04:46:06', '2021-03-20 04:46:06'),
(646, '59915', 'Berge, Medhurst and Denesik', '7773 Jeramy Ports Apt. 094\nNew Arjun, KY 33172-4210', 'Maxborough', '692-894-3672 x1698', '2021-03-20 04:46:07', '2021-03-20 04:46:07'),
(647, '56102', 'Conroy-Kessler', '555 Eloy Unions\nDanykamouth, IA 61156', 'Ondrickaburgh', '1-751-310-1021 x4050', '2021-03-20 04:46:07', '2021-03-20 04:46:07'),
(648, '1565', 'Larkin-Lowe', '466 Kris Plaza\nCarleyfurt, SC 62123-0010', 'Gussiebury', '1-847-250-2299 x466', '2021-03-20 04:46:07', '2021-03-20 04:46:07'),
(649, '6908', 'Hessel Ltd', '37278 Halvorson Key Apt. 581\nKlockoburgh, OK 02320', 'South Yvette', '(603) 692-5687', '2021-03-20 04:46:07', '2021-03-20 04:46:07'),
(650, '79877', 'Roberts and Sons', '612 Rosenbaum Prairie\nBergstromfort, AK 61418', 'Bartellbury', '1-502-355-4925 x54553', '2021-03-20 04:46:07', '2021-03-20 04:46:07'),
(651, '75518', 'Macejkovic Ltd', '423 Neil Pass Apt. 786\nEast Mohammadville, DC 91847-9265', 'Shemarberg', '1-632-332-4606 x014', '2021-03-20 04:46:07', '2021-03-20 04:46:07'),
(652, '86687', 'Mante Group', '10672 Leonard Ports\nEmanuelton, SC 48711-4404', 'Charityton', '+1 (268) 484-8722', '2021-03-20 04:46:07', '2021-03-20 04:46:07'),
(653, '63430', 'Feest, Fritsch and Schroeder', '7309 Viviane Islands\nEarnestinetown, VT 81955', 'Wehnermouth', '832.707.3564 x3993', '2021-03-20 04:46:07', '2021-03-20 04:46:07'),
(654, '26437', 'Senger Inc', '854 Schuster Inlet\nNorth Mozelle, WV 46985', 'South Clemens', '(326) 628-9542', '2021-03-20 04:46:07', '2021-03-20 04:46:07'),
(655, '68799', 'Jakubowski, Sawayn and Dicki', '2278 Hyatt Burgs Suite 477\nPort Adrainchester, NH 09980', 'Kingshire', '930-277-6290 x2825', '2021-03-20 04:46:07', '2021-03-20 04:46:07'),
(656, '51225', 'Mayert-Keebler', '917 Jace Station Apt. 144\nTorpmouth, PA 57565', 'Darlenechester', '+1 (882) 544-8915', '2021-03-20 04:46:07', '2021-03-20 04:46:07'),
(657, '85296', 'Labadie Inc', '495 Gerhold Pass Suite 080\nPort Hipolitohaven, IL 35884-3345', 'New Darrinburgh', '260-763-7563 x7903', '2021-03-20 04:46:07', '2021-03-20 04:46:07'),
(658, '9497', 'Marquardt, Kihn and Wilderman', '472 Susan Roads\nMayertton, AZ 73214', 'North Lemuelhaven', '+1-375-439-9534', '2021-03-20 04:46:07', '2021-03-20 04:46:07'),
(659, '79924', 'Grimes-Dibbert', '27207 Haylee Center Apt. 927\nEast Hoytmouth, GA 75752', 'Lake Elisebury', '539.596.5016', '2021-03-20 04:46:07', '2021-03-20 04:46:07'),
(660, '29053', 'Boehm-Sawayn', '854 Jaren Stravenue Suite 549\nGorczanychester, SD 85654', 'Eveshire', '(524) 564-6886 x79954', '2021-03-20 04:46:08', '2021-03-20 04:46:08'),
(661, '58581', 'Cassin-Russel', '920 Krystal Shoal\nTrantowhaven, CT 07110', 'Lake Lillamouth', '(853) 267-4634 x53201', '2021-03-20 04:46:08', '2021-03-20 04:46:08'),
(662, '99002', 'Runte, Herman and Kassulke', '1176 Ryan Freeway Suite 610\nSouth Roman, RI 55445', 'Ricomouth', '518.565.0214', '2021-03-20 04:46:08', '2021-03-20 04:46:08'),
(663, '12757', 'Marquardt-Huels', '92667 Goyette Road Suite 424\nRaymondmouth, TX 87795-3719', 'South Jovanny', '563-586-0610', '2021-03-20 04:46:08', '2021-03-20 04:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `table_pembelian`
--

CREATE TABLE `table_pembelian` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_masuk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `total` double NOT NULL,
  `pemasok_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_pembelian`
--

INSERT INTO `table_pembelian` (`id`, `kode_masuk`, `tanggal_masuk`, `total`, `pemasok_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'PE06649812', '2018-08-14', 97, 655, 1, '2021-03-20 04:59:08', '2021-03-20 04:59:08'),
(2, 'PE47702359', '2020-07-18', 336, 656, 1, '2021-03-20 04:59:08', '2021-03-20 04:59:08'),
(3, 'PE10645962', '2016-06-11', 850, 652, 1, '2021-03-20 04:59:08', '2021-03-20 04:59:08'),
(4, 'PE53832585', '2020-06-25', 320, 641, 1, '2021-03-20 04:59:08', '2021-03-20 04:59:08'),
(5, 'PE69638055', '2018-07-23', 442, 626, 1, '2021-03-20 04:59:08', '2021-03-20 04:59:08'),
(6, 'PE09623078', '2020-12-23', 175, 626, 1, '2021-03-20 04:59:08', '2021-03-20 04:59:08'),
(7, 'PE71113238', '2020-03-19', 649, 623, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(8, 'PE52223910', '2019-12-22', 873, 639, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(9, 'PE58852477', '2019-04-20', 698, 614, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(10, 'PE91193694', '2019-05-12', 573, 624, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(11, 'PE20998315', '2019-01-03', 891, 647, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(12, 'PE70011024', '2019-07-05', 244, 625, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(13, 'PE51350630', '2017-01-18', 449, 660, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(14, 'PE41125693', '2018-10-09', 841, 616, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(15, 'PE33780768', '2020-09-19', 49, 622, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(16, 'PE49706397', '2016-11-19', 110, 662, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(17, 'PE48772193', '2016-10-15', 302, 636, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(18, 'PE73485068', '2018-10-22', 285, 622, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(19, 'PE39106628', '2020-06-02', 122, 643, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(20, 'PE31264865', '2016-06-11', 780, 657, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(21, 'PE97264851', '2018-05-08', 847, 633, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(22, 'PE26239354', '2020-07-15', 303, 626, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(23, 'PE57238112', '2020-12-09', 40, 632, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(24, 'PE50092051', '2018-04-21', 66, 622, 1, '2021-03-20 04:59:09', '2021-03-20 04:59:09'),
(25, 'PE34562264', '2017-08-27', 120, 630, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(26, 'PE91054273', '2018-07-31', 245, 640, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(27, 'PE93209033', '2020-02-21', 302, 651, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(28, 'PE56721664', '2019-06-05', 584, 628, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(29, 'PE86877004', '2020-09-14', 478, 622, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(30, 'PE74804019', '2017-09-04', 117, 650, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(31, 'PE16077078', '2016-06-25', 417, 638, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(32, 'PE07391334', '2019-01-13', 824, 618, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(33, 'PE80632786', '2018-06-24', 381, 658, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(34, 'PE90146327', '2019-05-07', 392, 617, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(35, 'PE59365763', '2016-10-16', 709, 614, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(36, 'PE07480351', '2020-06-17', 884, 654, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(37, 'PE25426949', '2016-05-30', 796, 650, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(38, 'PE40172031', '2021-01-15', 690, 634, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(39, 'PE97972728', '2021-02-27', 192, 618, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(40, 'PE63904463', '2018-06-04', 172, 630, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(41, 'PE11596675', '2016-12-01', 710, 656, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(42, 'PE85922679', '2017-03-17', 259, 650, 1, '2021-03-20 04:59:10', '2021-03-20 04:59:10'),
(43, 'PE91246611', '2017-08-13', 944, 616, 1, '2021-03-20 04:59:11', '2021-03-20 04:59:11'),
(44, 'PE56113798', '2020-05-02', 699, 625, 1, '2021-03-20 04:59:11', '2021-03-20 04:59:11'),
(45, 'PE49031979', '2020-01-02', 631, 627, 1, '2021-03-20 04:59:11', '2021-03-20 04:59:11'),
(46, 'PE08577755', '2017-11-29', 151, 653, 1, '2021-03-20 04:59:11', '2021-03-20 04:59:11'),
(47, 'PE04866975', '2016-05-19', 376, 616, 1, '2021-03-20 04:59:11', '2021-03-20 04:59:11'),
(48, 'PE11288349', '2016-09-02', 532, 628, 1, '2021-03-20 04:59:11', '2021-03-20 04:59:11'),
(49, 'PE43880425', '2020-04-23', 819, 650, 1, '2021-03-20 04:59:11', '2021-03-20 04:59:11'),
(50, 'PE51589504', '2021-02-13', 44, 646, 1, '2021-03-20 04:59:11', '2021-03-20 04:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `table_penjualan`
--

CREATE TABLE `table_penjualan` (
  `id` int(10) UNSIGNED NOT NULL,
  `no_faktur` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_faktur` date NOT NULL,
  `total_bayar` double NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_penjualan`
--

INSERT INTO `table_penjualan` (`id`, `no_faktur`, `tgl_faktur`, `total_bayar`, `pelanggan_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'FAK22298387', '2020-08-04', 540, 40, 1, '2021-03-20 05:32:02', '2021-03-20 05:32:02'),
(2, 'FAK66866870', '2019-03-05', 151, 16, 1, '2021-03-20 05:32:02', '2021-03-20 05:32:02'),
(3, 'FAK84997882', '2018-10-08', 259, 10, 1, '2021-03-20 05:32:02', '2021-03-20 05:32:02'),
(4, 'FAK15097081', '2020-01-23', 428, 4, 1, '2021-03-20 05:32:03', '2021-03-20 05:32:03'),
(5, 'FAK76886693', '2020-11-25', 636, 25, 1, '2021-03-20 05:32:03', '2021-03-20 05:32:03'),
(6, 'FAK38789027', '2018-08-30', 374, 7, 1, '2021-03-20 05:32:03', '2021-03-20 05:32:03'),
(7, 'FAK19977287', '2019-08-12', 599, 43, 1, '2021-03-20 05:32:03', '2021-03-20 05:32:03'),
(8, 'FAK99899780', '2020-03-11', 671, 27, 1, '2021-03-20 05:32:03', '2021-03-20 05:32:03'),
(9, 'FAK56670704', '2020-03-27', 437, 14, 1, '2021-03-20 05:32:03', '2021-03-20 05:32:03'),
(10, 'FAK08942946', '2020-06-15', 770, 43, 1, '2021-03-20 05:32:03', '2021-03-20 05:32:03'),
(11, 'FAK46887479', '2020-05-31', 853, 37, 1, '2021-03-20 05:32:03', '2021-03-20 05:32:03'),
(12, 'FAK39401436', '2020-06-17', 451, 19, 1, '2021-03-20 05:32:03', '2021-03-20 05:32:03'),
(13, 'FAK25700351', '2018-07-30', 565, 25, 1, '2021-03-20 05:32:03', '2021-03-20 05:32:03'),
(14, 'FAK32948515', '2020-03-18', 243, 28, 1, '2021-03-20 05:32:03', '2021-03-20 05:32:03'),
(15, 'FAK97193673', '2020-12-30', 124, 35, 1, '2021-03-20 05:32:03', '2021-03-20 05:32:03'),
(16, 'FAK90562065', '2018-06-05', 870, 23, 1, '2021-03-20 05:32:03', '2021-03-20 05:32:03'),
(17, 'FAK16652878', '2020-01-16', 723, 23, 1, '2021-03-20 05:32:04', '2021-03-20 05:32:04'),
(18, 'FAK88433488', '2018-12-23', 30, 33, 1, '2021-03-20 05:32:04', '2021-03-20 05:32:04'),
(19, 'FAK05754647', '2020-04-19', 337, 50, 1, '2021-03-20 05:32:04', '2021-03-20 05:32:04'),
(20, 'FAK53258908', '2018-08-23', 95, 22, 1, '2021-03-20 05:32:04', '2021-03-20 05:32:04'),
(21, 'FAK34429779', '2020-10-15', 759, 6, 1, '2021-03-20 05:32:04', '2021-03-20 05:32:04'),
(22, 'FAK93304223', '2020-05-17', 467, 12, 1, '2021-03-20 05:32:04', '2021-03-20 05:32:04'),
(23, 'FAK72342131', '2018-11-16', 98, 49, 1, '2021-03-20 05:32:04', '2021-03-20 05:32:04'),
(24, 'FAK82071363', '2021-03-04', 321, 12, 1, '2021-03-20 05:32:04', '2021-03-20 05:32:04'),
(25, 'FAK89492348', '2020-08-26', 156, 49, 1, '2021-03-20 05:32:04', '2021-03-20 05:32:04'),
(26, 'FAK63630076', '2019-02-18', 623, 37, 1, '2021-03-20 05:32:04', '2021-03-20 05:32:04'),
(27, 'FAK72053169', '2020-08-21', 948, 18, 1, '2021-03-20 05:32:04', '2021-03-20 05:32:04'),
(28, 'FAK00015305', '2019-10-03', 576, 21, 1, '2021-03-20 05:32:04', '2021-03-20 05:32:04'),
(29, 'FAK27323223', '2018-11-06', 392, 23, 1, '2021-03-20 05:32:04', '2021-03-20 05:32:04'),
(30, 'FAK76136359', '2019-04-28', 690, 49, 1, '2021-03-20 05:32:04', '2021-03-20 05:32:04'),
(31, 'FAK80190472', '2019-06-08', 103, 32, 1, '2021-03-20 05:32:04', '2021-03-20 05:32:04'),
(32, 'FAK74743290', '2019-09-23', 29, 24, 1, '2021-03-20 05:32:05', '2021-03-20 05:32:05'),
(33, 'FAK73671602', '2018-09-03', 293, 35, 1, '2021-03-20 05:32:05', '2021-03-20 05:32:05'),
(34, 'FAK19045989', '2019-01-18', 324, 27, 1, '2021-03-20 05:32:05', '2021-03-20 05:32:05'),
(35, 'FAK60714590', '2018-12-17', 475, 21, 1, '2021-03-20 05:32:05', '2021-03-20 05:32:05'),
(36, 'FAK86345504', '2020-12-04', 436, 29, 1, '2021-03-20 05:32:05', '2021-03-20 05:32:05'),
(37, 'FAK85846896', '2019-11-21', 903, 43, 1, '2021-03-20 05:32:05', '2021-03-20 05:32:05'),
(38, 'FAK06899030', '2018-09-12', 97, 24, 1, '2021-03-20 05:32:05', '2021-03-20 05:32:05'),
(39, 'FAK95561870', '2021-03-03', 251, 50, 1, '2021-03-20 05:32:05', '2021-03-20 05:32:05'),
(40, 'FAK51441046', '2018-11-03', 730, 10, 1, '2021-03-20 05:32:05', '2021-03-20 05:32:05'),
(41, 'FAK79259100', '2019-05-03', 458, 12, 1, '2021-03-20 05:32:05', '2021-03-20 05:32:05'),
(42, 'FAK16470117', '2019-12-24', 257, 8, 1, '2021-03-20 05:32:05', '2021-03-20 05:32:05'),
(43, 'FAK34452006', '2021-02-17', 704, 16, 1, '2021-03-20 05:32:05', '2021-03-20 05:32:05'),
(44, 'FAK12039398', '2019-08-09', 518, 10, 1, '2021-03-20 05:32:05', '2021-03-20 05:32:05'),
(45, 'FAK80787555', '2020-11-08', 893, 23, 1, '2021-03-20 05:32:05', '2021-03-20 05:32:05'),
(46, 'FAK03029010', '2019-04-02', 453, 32, 1, '2021-03-20 05:32:05', '2021-03-20 05:32:05'),
(47, 'FAK56309280', '2019-02-15', 774, 47, 1, '2021-03-20 05:32:05', '2021-03-20 05:32:05'),
(48, 'FAK36538909', '2018-05-31', 577, 7, 1, '2021-03-20 05:32:05', '2021-03-20 05:32:05'),
(49, 'FAK79522952', '2021-02-27', 714, 23, 1, '2021-03-20 05:32:06', '2021-03-20 05:32:06'),
(50, 'FAK07777327', '2019-01-05', 31, 10, 1, '2021-03-20 05:32:06', '2021-03-20 05:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `table_produks`
--

CREATE TABLE `table_produks` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_produk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_produks`
--

INSERT INTO `table_produks` (`id`, `nama_produk`, `created_at`, `updated_at`) VALUES
(51, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:19', '2021-03-20 04:45:19'),
(52, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:19', '2021-03-20 04:45:19'),
(53, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:19', '2021-03-20 04:45:19'),
(54, 'Sabun Lifebuoy', '2021-03-20 04:45:19', '2021-03-20 04:45:19'),
(55, 'Sabun Lifebuoy', '2021-03-20 04:45:19', '2021-03-20 04:45:19'),
(56, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:19', '2021-03-20 04:45:19'),
(57, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:19', '2021-03-20 04:45:19'),
(58, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:19', '2021-03-20 04:45:19'),
(59, 'Sabun Lifebuoy', '2021-03-20 04:45:19', '2021-03-20 04:45:19'),
(60, 'Sabun Lifebuoy', '2021-03-20 04:45:20', '2021-03-20 04:45:20'),
(61, 'Sabun Lifebuoy', '2021-03-20 04:45:20', '2021-03-20 04:45:20'),
(62, 'Sabun Lifebuoy', '2021-03-20 04:45:20', '2021-03-20 04:45:20'),
(63, 'Sabun Lifebuoy', '2021-03-20 04:45:20', '2021-03-20 04:45:20'),
(64, 'Sabun Lifebuoy', '2021-03-20 04:45:20', '2021-03-20 04:45:20'),
(65, 'Sabun Lifebuoy', '2021-03-20 04:45:20', '2021-03-20 04:45:20'),
(66, 'Sabun Lifebuoy', '2021-03-20 04:45:20', '2021-03-20 04:45:20'),
(67, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:20', '2021-03-20 04:45:20'),
(68, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:20', '2021-03-20 04:45:20'),
(69, 'Sabun Lifebuoy', '2021-03-20 04:45:20', '2021-03-20 04:45:20'),
(70, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:20', '2021-03-20 04:45:20'),
(71, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:20', '2021-03-20 04:45:20'),
(72, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:20', '2021-03-20 04:45:20'),
(73, 'Sabun Lifebuoy', '2021-03-20 04:45:20', '2021-03-20 04:45:20'),
(74, 'Sabun Lifebuoy', '2021-03-20 04:45:20', '2021-03-20 04:45:20'),
(75, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:21', '2021-03-20 04:45:21'),
(76, 'Sabun Lifebuoy', '2021-03-20 04:45:21', '2021-03-20 04:45:21'),
(77, 'Sabun Lifebuoy', '2021-03-20 04:45:21', '2021-03-20 04:45:21'),
(78, 'Sabun Lifebuoy', '2021-03-20 04:45:21', '2021-03-20 04:45:21'),
(79, 'Sabun Lifebuoy', '2021-03-20 04:45:21', '2021-03-20 04:45:21'),
(80, 'Sabun Lifebuoy', '2021-03-20 04:45:21', '2021-03-20 04:45:21'),
(81, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:21', '2021-03-20 04:45:21'),
(82, 'Sabun Lifebuoy', '2021-03-20 04:45:21', '2021-03-20 04:45:21'),
(83, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:21', '2021-03-20 04:45:21'),
(84, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:21', '2021-03-20 04:45:21'),
(85, 'Sabun Lifebuoy', '2021-03-20 04:45:21', '2021-03-20 04:45:21'),
(86, 'Sabun Lifebuoy', '2021-03-20 04:45:21', '2021-03-20 04:45:21'),
(87, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:21', '2021-03-20 04:45:21'),
(88, 'Sabun Lifebuoy', '2021-03-20 04:45:21', '2021-03-20 04:45:21'),
(89, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:21', '2021-03-20 04:45:21'),
(90, 'Sabun Lifebuoy', '2021-03-20 04:45:21', '2021-03-20 04:45:21'),
(91, 'Sabun Lifebuoy', '2021-03-20 04:45:21', '2021-03-20 04:45:21'),
(92, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:22', '2021-03-20 04:45:22'),
(93, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:22', '2021-03-20 04:45:22'),
(94, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:22', '2021-03-20 04:45:22'),
(95, 'Sabun Lifebuoy', '2021-03-20 04:45:22', '2021-03-20 04:45:22'),
(96, 'Sabun Lifebuoy', '2021-03-20 04:45:22', '2021-03-20 04:45:22'),
(97, 'Sabun Lifebuoy', '2021-03-20 04:45:22', '2021-03-20 04:45:22'),
(98, 'Sabun Lifebuoy', '2021-03-20 04:45:22', '2021-03-20 04:45:22'),
(99, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:22', '2021-03-20 04:45:22'),
(100, 'Mie Sedap Ayam Bawang', '2021-03-20 04:45:22', '2021-03-20 04:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `table_tampung_bayar`
--

CREATE TABLE `table_tampung_bayar` (
  `id` int(10) UNSIGNED NOT NULL,
  `penjualan_id` int(11) NOT NULL,
  `total` double NOT NULL,
  `terima` double NOT NULL,
  `kembali` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_tampung_bayar`
--

INSERT INTO `table_tampung_bayar` (`id`, `penjualan_id`, `total`, `terima`, `kembali`, `created_at`, `updated_at`) VALUES
(1, 15, 590, 290, 715, '2021-03-20 05:46:00', '2021-03-20 05:46:00'),
(2, 30, 239, 271, 572, '2021-03-20 05:46:00', '2021-03-20 05:46:00'),
(3, 15, 280, 235, 262, '2021-03-20 05:46:01', '2021-03-20 05:46:01'),
(4, 34, 758, 892, 428, '2021-03-20 05:46:01', '2021-03-20 05:46:01'),
(5, 22, 376, 308, 555, '2021-03-20 05:46:01', '2021-03-20 05:46:01'),
(6, 6, 159, 932, 52, '2021-03-20 05:46:01', '2021-03-20 05:46:01'),
(7, 22, 533, 987, 805, '2021-03-20 05:46:01', '2021-03-20 05:46:01'),
(8, 17, 961, 544, 312, '2021-03-20 05:46:01', '2021-03-20 05:46:01'),
(9, 34, 516, 913, 803, '2021-03-20 05:46:01', '2021-03-20 05:46:01'),
(10, 8, 693, 197, 368, '2021-03-20 05:46:01', '2021-03-20 05:46:01'),
(11, 39, 36, 134, 794, '2021-03-20 05:46:01', '2021-03-20 05:46:01'),
(12, 36, 754, 918, 312, '2021-03-20 05:46:01', '2021-03-20 05:46:01'),
(13, 25, 654, 899, 201, '2021-03-20 05:46:01', '2021-03-20 05:46:01'),
(14, 36, 588, 510, 252, '2021-03-20 05:46:01', '2021-03-20 05:46:01'),
(15, 43, 524, 588, 861, '2021-03-20 05:46:01', '2021-03-20 05:46:01'),
(16, 27, 390, 941, 207, '2021-03-20 05:46:01', '2021-03-20 05:46:01'),
(17, 16, 846, 34, 426, '2021-03-20 05:46:01', '2021-03-20 05:46:01'),
(18, 9, 898, 960, 672, '2021-03-20 05:46:01', '2021-03-20 05:46:01'),
(19, 16, 119, 802, 891, '2021-03-20 05:46:02', '2021-03-20 05:46:02'),
(20, 13, 587, 322, 779, '2021-03-20 05:46:02', '2021-03-20 05:46:02'),
(21, 11, 573, 50, 639, '2021-03-20 05:46:02', '2021-03-20 05:46:02'),
(22, 26, 760, 597, 547, '2021-03-20 05:46:02', '2021-03-20 05:46:02'),
(23, 30, 729, 524, 581, '2021-03-20 05:46:02', '2021-03-20 05:46:02'),
(24, 13, 967, 388, 863, '2021-03-20 05:46:02', '2021-03-20 05:46:02'),
(25, 27, 657, 380, 915, '2021-03-20 05:46:02', '2021-03-20 05:46:02'),
(26, 24, 618, 404, 876, '2021-03-20 05:46:02', '2021-03-20 05:46:02'),
(27, 33, 421, 874, 898, '2021-03-20 05:46:02', '2021-03-20 05:46:02'),
(28, 49, 310, 341, 670, '2021-03-20 05:46:02', '2021-03-20 05:46:02'),
(29, 40, 145, 721, 861, '2021-03-20 05:46:02', '2021-03-20 05:46:02'),
(30, 44, 527, 192, 506, '2021-03-20 05:46:02', '2021-03-20 05:46:02'),
(31, 7, 263, 304, 911, '2021-03-20 05:46:02', '2021-03-20 05:46:02'),
(32, 35, 695, 339, 203, '2021-03-20 05:46:02', '2021-03-20 05:46:02'),
(33, 28, 48, 876, 205, '2021-03-20 05:46:02', '2021-03-20 05:46:02'),
(34, 50, 858, 826, 722, '2021-03-20 05:46:02', '2021-03-20 05:46:02'),
(35, 20, 354, 947, 875, '2021-03-20 05:46:03', '2021-03-20 05:46:03'),
(36, 33, 973, 468, 743, '2021-03-20 05:46:03', '2021-03-20 05:46:03'),
(37, 11, 192, 286, 622, '2021-03-20 05:46:03', '2021-03-20 05:46:03'),
(38, 5, 645, 25, 169, '2021-03-20 05:46:03', '2021-03-20 05:46:03'),
(39, 39, 19, 443, 6, '2021-03-20 05:46:03', '2021-03-20 05:46:03'),
(40, 41, 374, 742, 43, '2021-03-20 05:46:03', '2021-03-20 05:46:03'),
(41, 13, 738, 598, 974, '2021-03-20 05:46:03', '2021-03-20 05:46:03'),
(42, 38, 869, 911, 440, '2021-03-20 05:46:03', '2021-03-20 05:46:03'),
(43, 5, 341, 790, 432, '2021-03-20 05:46:03', '2021-03-20 05:46:03'),
(44, 34, 320, 951, 292, '2021-03-20 05:46:03', '2021-03-20 05:46:03'),
(45, 35, 672, 187, 429, '2021-03-20 05:46:03', '2021-03-20 05:46:03'),
(46, 33, 721, 364, 735, '2021-03-20 05:46:03', '2021-03-20 05:46:03'),
(47, 46, 462, 922, 795, '2021-03-20 05:46:03', '2021-03-20 05:46:03'),
(48, 24, 10, 498, 712, '2021-03-20 05:46:03', '2021-03-20 05:46:03'),
(49, 9, 668, 500, 392, '2021-03-20 05:46:03', '2021-03-20 05:46:03'),
(50, 27, 27, 762, 48, '2021-03-20 05:46:04', '2021-03-20 05:46:04'),
(51, 32, 561, 445, 223, '2021-03-20 05:47:48', '2021-03-20 05:47:48'),
(52, 35, 705, 866, 131, '2021-03-20 05:47:48', '2021-03-20 05:47:48'),
(53, 27, 130, 695, 951, '2021-03-20 05:47:48', '2021-03-20 05:47:48'),
(54, 10, 708, 398, 55, '2021-03-20 05:47:48', '2021-03-20 05:47:48'),
(55, 45, 2, 820, 995, '2021-03-20 05:47:49', '2021-03-20 05:47:49'),
(56, 39, 409, 405, 365, '2021-03-20 05:47:49', '2021-03-20 05:47:49'),
(57, 30, 45, 843, 547, '2021-03-20 05:47:49', '2021-03-20 05:47:49'),
(58, 44, 404, 240, 701, '2021-03-20 05:47:49', '2021-03-20 05:47:49'),
(59, 15, 467, 345, 923, '2021-03-20 05:47:49', '2021-03-20 05:47:49'),
(60, 36, 663, 247, 789, '2021-03-20 05:47:49', '2021-03-20 05:47:49'),
(61, 33, 586, 437, 181, '2021-03-20 05:47:49', '2021-03-20 05:47:49'),
(62, 50, 816, 93, 69, '2021-03-20 05:47:49', '2021-03-20 05:47:49'),
(63, 34, 627, 960, 970, '2021-03-20 05:47:49', '2021-03-20 05:47:49'),
(64, 48, 667, 834, 844, '2021-03-20 05:47:49', '2021-03-20 05:47:49'),
(65, 39, 43, 916, 165, '2021-03-20 05:48:42', '2021-03-20 05:48:42'),
(66, 29, 502, 881, 76, '2021-03-20 05:48:42', '2021-03-20 05:48:42'),
(67, 6, 992, 618, 734, '2021-03-20 05:48:42', '2021-03-20 05:48:42'),
(68, 36, 767, 577, 844, '2021-03-20 05:48:42', '2021-03-20 05:48:42'),
(69, 35, 716, 959, 784, '2021-03-20 05:48:42', '2021-03-20 05:48:42'),
(70, 12, 121, 787, 805, '2021-03-20 05:48:42', '2021-03-20 05:48:42'),
(71, 31, 616, 475, 284, '2021-03-20 05:48:42', '2021-03-20 05:48:42'),
(72, 14, 769, 827, 797, '2021-03-20 05:48:42', '2021-03-20 05:48:42'),
(73, 6, 221, 406, 878, '2021-03-20 05:48:42', '2021-03-20 05:48:42'),
(74, 27, 122, 707, 99, '2021-03-20 05:48:42', '2021-03-20 05:48:42'),
(75, 5, 336, 978, 377, '2021-03-20 05:48:43', '2021-03-20 05:48:43'),
(76, 32, 304, 942, 202, '2021-03-20 05:48:43', '2021-03-20 05:48:43'),
(77, 8, 697, 780, 195, '2021-03-20 05:48:43', '2021-03-20 05:48:43'),
(78, 29, 718, 751, 915, '2021-03-20 05:48:43', '2021-03-20 05:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ansor', 'ansorgamer@gmail.com', '2021-03-04 17:00:00', 'mangun1234', '12344', NULL, NULL),
(3, 'Trever Kovacek DDS', 'triston99@example.com', '2021-03-20 05:49:21', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qbEunjrTaO', '2021-03-20 05:49:21', '2021-03-20 05:49:21'),
(4, 'Randy West', 'boyle.kacey@example.com', '2021-03-20 05:49:21', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hVVh2yoXgb', '2021-03-20 05:49:21', '2021-03-20 05:49:21'),
(5, 'Laurine Schowalter III', 'donavon88@example.org', '2021-03-20 05:49:21', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XMlaL5vKCL', '2021-03-20 05:49:21', '2021-03-20 05:49:21'),
(6, 'Thea Gaylord IV', 'lee.leuschke@example.org', '2021-03-20 05:49:21', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'LEtzIAH7Of', '2021-03-20 05:49:21', '2021-03-20 05:49:21'),
(7, 'Valentine Koepp', 'domenic.damore@example.net', '2021-03-20 05:49:21', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nOrJrIQ9to', '2021-03-20 05:49:21', '2021-03-20 05:49:21'),
(8, 'Libby Hodkiewicz', 'lstokes@example.net', '2021-03-20 05:49:21', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Xg3vPUtnyd', '2021-03-20 05:49:21', '2021-03-20 05:49:21'),
(9, 'Gerhard Kautzer V', 'estevan.price@example.org', '2021-03-20 05:49:21', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jtzuQ6xoUk', '2021-03-20 05:49:21', '2021-03-20 05:49:21'),
(10, 'Miss Kelly Rodriguez', 'cspencer@example.net', '2021-03-20 05:49:21', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1tOvBfuj4Y', '2021-03-20 05:49:21', '2021-03-20 05:49:21'),
(11, 'Mr. Clifton Beer', 'roberts.colten@example.org', '2021-03-20 05:49:21', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'itYWBYHKdK', '2021-03-20 05:49:21', '2021-03-20 05:49:21'),
(12, 'Claudia Windler', 'kathleen46@example.org', '2021-03-20 05:49:21', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0A1JF3RE4o', '2021-03-20 05:49:21', '2021-03-20 05:49:21'),
(13, 'Albin Ratke', 'susana01@example.org', '2021-03-20 05:49:21', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6kcgou5uno', '2021-03-20 05:49:22', '2021-03-20 05:49:22'),
(14, 'Prof. Conrad Gulgowski DDS', 'serena.mueller@example.com', '2021-03-20 05:49:21', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ryD0q5AFwp', '2021-03-20 05:49:22', '2021-03-20 05:49:22'),
(15, 'Adah Wilderman', 'kaela.pagac@example.net', '2021-03-20 05:49:21', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '60ZmdOMYcC', '2021-03-20 05:49:22', '2021-03-20 05:49:22'),
(16, 'Justina Dibbert V', 'dawson34@example.org', '2021-03-20 05:49:21', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mrlc1zIDj8', '2021-03-20 05:49:22', '2021-03-20 05:49:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `table_barang`
--
ALTER TABLE `table_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_detail_pelanggan`
--
ALTER TABLE `table_detail_pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_detail_pembelian`
--
ALTER TABLE `table_detail_pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_detail_penjualan`
--
ALTER TABLE `table_detail_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_pemasok`
--
ALTER TABLE `table_pemasok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_pembelian`
--
ALTER TABLE `table_pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_penjualan`
--
ALTER TABLE `table_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_produks`
--
ALTER TABLE `table_produks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_tampung_bayar`
--
ALTER TABLE `table_tampung_bayar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `table_barang`
--
ALTER TABLE `table_barang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `table_detail_pelanggan`
--
ALTER TABLE `table_detail_pelanggan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `table_detail_pembelian`
--
ALTER TABLE `table_detail_pembelian`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `table_detail_penjualan`
--
ALTER TABLE `table_detail_penjualan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `table_pemasok`
--
ALTER TABLE `table_pemasok`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=664;

--
-- AUTO_INCREMENT for table `table_pembelian`
--
ALTER TABLE `table_pembelian`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `table_penjualan`
--
ALTER TABLE `table_penjualan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `table_produks`
--
ALTER TABLE `table_produks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `table_tampung_bayar`
--
ALTER TABLE `table_tampung_bayar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
