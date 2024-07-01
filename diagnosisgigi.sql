/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE IF NOT EXISTS `gejala` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `gejala` (`id`, `kode`, `nama`) VALUES
	(1, 'G1', 'Gigi terasa ngilu'),
	(2, 'G2', 'Gigi terasa berdenyut'),
	(3, 'G3', 'Kepala terasa pusing'),
	(4, 'G4', 'Terdapat lubang pada gigi'),
	(5, 'G5', 'Gusi bengkak'),
	(6, 'G6', 'Demam (suhu badan di atas 36 derajat)'),
	(7, 'G7', 'Bau mulut'),
	(8, 'G8', 'Gusi berwarna merah tua'),
	(9, 'G9', 'Gusi rentan berdarah'),
	(10, 'G10', 'Adanya plak/karang gigi'),
	(11, 'G11', 'Mulut terasa kering'),
	(12, 'G12', 'Sering dehidrasi'),
	(13, 'G13', 'Lapisan lidah terasa tebal'),
	(14, 'G14', 'Cairan ludah berkurang'),
	(15, 'G15', 'Adanya benjolan putih/abu'),
	(16, 'G16', 'Terasa luka dan pedih'),
	(17, 'G17', 'Gigi terasa sakit'),
	(18, 'G18', 'Sakit saat mengunyah'),
	(19, 'G19', 'Gigi terasa sensitif'),
	(20, 'G20', 'Bentuk gigi tampak terkikis'),
	(21, 'G21', 'Gigi terasa nyeri saat makan/minum panas dan dingin'),
	(22, 'G22', 'Ngilu berkepanjangan (pada gigi)'),
	(23, 'G23', 'Gusi menurun'),
	(24, 'G24', 'Sakit setelah pencabutan gigi'),
	(25, 'G25', 'Sakit sampai kepala, telinga, mata, leher'),
	(26, 'G26', 'Gigi tidak sejajar'),
	(27, 'G27', 'Perubahan pada wajah'),
	(28, 'G28', 'Tidak nyaman ketika mengunyah dan menggigit'),
	(29, 'G29', 'Merasa tidak enak pada mulut'),
	(30, 'G30', 'Gigi longgar'),
	(31, 'G31', 'Lidah membesar'),
	(32, 'G32', 'Nyeri pada lidah'),
	(33, 'G33', 'Perubahan warna pada lidah'),
	(34, 'G34', 'Permukaan lidah licin'),
	(35, 'G35', 'Warna permukaan lidah kemerahan'),
	(36, 'G36', 'Gigi terlihat jarang-jarang'),
	(37, 'G37', 'Gigi terlihat tonggos kedepan'),
	(38, 'G38', 'Ukuran gigi dan rahang tidak sesuai'),
	(39, 'G39', 'Adanya bercak pada sudut bibir'),
	(40, 'G40', 'Bercak terasa gatal nyeri dan panas pada bibir'),
	(41, 'G41', 'Bila diraba bercak terasa keras pada bibir'),
	(42, 'G42', 'Kadang bercak juga bisa berdarah pada bibir'),
	(43, 'G43', 'Cadel'),
	(44, 'G44', 'Gigi sulung copot sebelum waktunya (premature)');

CREATE TABLE IF NOT EXISTS `penyakit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `penyakit` (`id`, `kode`, `nama`) VALUES
	(1, 'P01', 'Karies gigi (gigi berlubang)'),
	(2, 'P02', 'Gingivitis (radang gusi)'),
	(3, 'P03', 'Lidah putih'),
	(4, 'P04', 'Stomatitis (sariawan)'),
	(5, 'P05', 'Absess gigi (gusi bengkak/nanah)'),
	(6, 'P06', 'Abrasi gigi (hilangnya struktur gigi)'),
	(7, 'P07', 'Gigi sensitif'),
	(8, 'P08', 'Alveolar osteitis (peradangan)'),
	(9, 'P09', 'Maloklusi (gigi berdesakan)'),
	(10, 'P10', 'Resesi gusi (penurunan gusi)'),
	(11, 'P11', 'Glositis (radang lidah)'),
	(12, 'P12', 'Crowded (gigi berjejal)'),
	(13, 'P13', 'Cheilitis (radang bibir)');

CREATE TABLE IF NOT EXISTS `relasi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode_gejala` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_penyakit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `relasi` (`id`, `kode_gejala`, `kode_penyakit`) VALUES
	(1, 'G1', 'P01'),
	(2, 'G2', 'P01'),
	(3, 'G3', 'P01'),
	(4, 'G4', 'P01'),
	(5, 'G6', 'P01'),
	(6, 'G7', 'P01'),
	(7, 'G18', 'P01'),
	(8, 'G5', 'P02'),
	(9, 'G7', 'P02'),
	(10, 'G8', 'P02'),
	(11, 'G9', 'P02'),
	(12, 'G10', 'P02'),
	(13, 'G11', 'P03'),
	(14, 'G12', 'P03'),
	(15, 'G13', 'P03'),
	(16, 'G14', 'P03'),
	(17, 'G14', 'P04'),
	(18, 'G15', 'P04'),
	(19, 'G16', 'P04'),
	(20, 'G5', 'P05'),
	(21, 'G6', 'P05'),
	(22, 'G7', 'P05'),
	(23, 'G17', 'P05'),
	(24, 'G18', 'P05'),
	(25, 'G1', 'P06'),
	(26, 'G19', 'P06'),
	(27, 'G20', 'P06'),
	(28, 'G22', 'P06'),
	(29, 'G21', 'P07'),
	(30, 'G22', 'P07'),
	(31, 'G23', 'P07'),
	(32, 'G6', 'P08'),
	(33, 'G7', 'P08'),
	(34, 'G17', 'P08'),
	(35, 'G24', 'P08'),
	(36, 'G25', 'P08'),
	(37, 'G26', 'P09'),
	(38, 'G27', 'P09'),
	(39, 'G28', 'P09'),
	(40, 'G43', 'P09'),
	(41, 'G1', 'P10'),
	(42, 'G19', 'P10'),
	(43, 'G26', 'P10'),
	(44, 'G29', 'P10'),
	(45, 'G30', 'P10'),
	(46, 'G31', 'P11'),
	(47, 'G32', 'P11'),
	(48, 'G33', 'P11'),
	(49, 'G34', 'P11'),
	(50, 'G35', 'P11'),
	(51, 'G36', 'P12'),
	(52, 'G37', 'P12'),
	(53, 'G38', 'P12'),
	(54, 'G44', 'P12'),
	(55, 'G39', 'P13'),
	(56, 'G40', 'P13'),
	(57, 'G41', 'P13');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
