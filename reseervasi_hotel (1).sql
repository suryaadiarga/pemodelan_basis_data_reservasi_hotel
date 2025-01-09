-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2025 at 05:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reseervasi_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `idHotel` int(11) NOT NULL,
  `nama_hotel` varchar(45) DEFAULT NULL,
  `alamat_hotel` varchar(45) DEFAULT NULL,
  `kontak_hotel` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`idHotel`, `nama_hotel`, `alamat_hotel`, `kontak_hotel`) VALUES
(1, 'Hotel Mawar', 'Jl. Merah No.1', '081234567800'),
(2, 'Hotel Melati', 'Jl. Hijau No.2', '081234567801'),
(3, 'Hotel Kenanga', 'Jl. Biru No.3', '081234567802'),
(4, 'Hotel Anggrek', 'Jl. Kuning No.4', '081234567803'),
(5, 'Hotel Nirwana', 'Jl. Angkasa No.10', '081234567890'),
(6, 'Hotel Surya', 'Jl. Bintang No.5', '081234567891'),
(7, 'Hotel Sakura', 'Jl. Mawar Merah No.7', '081234567892'),
(8, 'Hotel Teratai', 'Jl. Flamboyan No.8', '081234567893');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `idKamar` int(11) NOT NULL,
  `nomor_kamar` varchar(45) NOT NULL,
  `tipe_kamar` varchar(45) DEFAULT NULL,
  `status_kamar` varchar(45) DEFAULT NULL,
  `Pemesanan_idPemesanan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`idKamar`, `nomor_kamar`, `tipe_kamar`, `status_kamar`, `Pemesanan_idPemesanan`) VALUES
(1, 'A-101', 'Suite', 'Available', NULL),
(2, 'A-102', 'Deluxe', 'Occupied', 1005),
(3, 'B-201', 'Standard', 'Available', NULL),
(4, 'B-202', 'Standard', 'Occupied', 1006),
(5, 'C-301', 'Superior', 'Available', NULL),
(6, 'C-302', 'Superior', 'Occupied', 1007),
(7, 'D-401', 'Suite', 'Available', NULL),
(8, 'D-402', 'Suite', 'Occupied', 1008),
(9, 'E-501', 'Standard', 'Available', NULL),
(10, 'E-502', 'Deluxe', 'Occupied', 1009),
(11, 'F-601', 'Suite', 'Available', NULL),
(12, 'F-602', 'Deluxe', 'Occupied', 1010),
(13, 'G-701', 'Standard', 'Available', NULL),
(14, 'G-702', 'Superior', 'Occupied', 1011),
(15, 'H-801', 'Suite', 'Available', NULL),
(16, 'H-802', 'Superior', 'Occupied', 1012),
(17, 'I-901', 'Standard', 'Available', NULL),
(18, 'I-902', 'Deluxe', 'Occupied', 1013),
(19, 'J-1001', 'Superior', 'Available', NULL),
(20, 'J-1002', 'Suite', 'Occupied', 1014);

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `idLayanan` int(11) NOT NULL,
  `nama_layanan` varchar(45) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `Kamar_idKamar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`idLayanan`, `nama_layanan`, `harga`, `Kamar_idKamar`) VALUES
(1, 'Room Service', 50000.00, 1),
(2, 'Laundry', 30000.00, 2),
(3, 'Spa', 150000.00, 3),
(4, 'Mini Bar', 75000.00, 4),
(5, 'Breakfast', 100000.00, 5),
(6, 'Airport Pickup', 200000.00, 6),
(7, 'Fitness Center Access', 80000.00, 7),
(8, 'Wi-Fi High Speed', 50000.00, 8),
(9, 'Late Check-out', 120000.00, 9),
(10, 'Early Check-in', 110000.00, 10),
(11, 'Daily Cleaning', 60000.00, 11),
(12, 'Additional Bed', 90000.00, 12),
(13, 'Pool Access', 75000.00, 13),
(14, 'In-room Dining', 130000.00, 14),
(15, 'Car Rental', 250000.00, 15),
(16, 'Tour Guide', 300000.00, 16),
(17, 'Conference Room', 500000.00, 17),
(18, 'Exclusive Lounge', 400000.00, 18),
(19, 'Family Package', 450000.00, 19),
(20, 'Honeymoon Package', 600000.00, 20);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `idPegawai` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `jabatan` varchar(45) DEFAULT NULL,
  `shift` varchar(45) DEFAULT NULL,
  `Hotel_idHotel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`idPegawai`, `nama`, `jabatan`, `shift`, `Hotel_idHotel`) VALUES
(1, 'Lisa Wijaya', 'Housekeeping', 'Morning', 1),
(2, 'Budi Santoso', 'Bellboy', 'Evening', 2),
(3, 'Erika Tan', 'Receptionist', 'Night', 3),
(4, 'Dewi Kartika', 'Manager', 'Morning', 4),
(5, 'Andi Pratama', 'Security', 'Night', 5),
(6, 'Siti Nurhaliza', 'Chef', 'Morning', 6),
(7, 'Rizky Kurniawan', 'Receptionist', 'Evening', 1),
(8, 'Teguh Wijaya', 'Bellboy', 'Morning', 2),
(9, 'Maya Putri', 'Housekeeping', 'Night', 3),
(10, 'Hendra Saputra', 'Security', 'Evening', 4),
(11, 'Ayu Puspita', 'Manager', 'Morning', 5),
(12, 'Dian Hartono', 'Receptionist', 'Night', 6),
(13, 'Eko Santoso', 'Chef', 'Morning', 1),
(14, 'Rina Amelia', 'Housekeeping', 'Evening', 2),
(15, 'Fajar Rizal', 'Security', 'Night', 3),
(16, 'Siska Novita', 'Receptionist', 'Morning', 4),
(17, 'Wawan Setiawan', 'Manager', 'Night', 5),
(18, 'Nina Lestari', 'Housekeeping', 'Morning', 6),
(19, 'Anton Wijaya', 'Security', 'Evening', 1),
(20, 'Lina Sari', 'Chef', 'Night', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `idPembayaran` int(11) NOT NULL,
  `tanggal_pembayaran` date DEFAULT NULL,
  `metode_pembayaran` varchar(45) DEFAULT NULL,
  `nominal_pembayaran` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`idPembayaran`, `tanggal_pembayaran`, `metode_pembayaran`, `nominal_pembayaran`) VALUES
(0, '2025-01-13', 'Cash', 300000.00),
(1, '2025-01-07', 'Credit Card', 350000.00),
(2, '2025-01-08', 'Cash', 200000.00),
(3, '2025-01-09', 'E-Wallet', 500000.00),
(4, '2025-01-10', 'Debit Card', 150000.00),
(5, '2025-01-11', 'Bank Transfer', 250000.00),
(6, '2025-01-12', 'Credit Card', 400000.00),
(7, '2025-01-14', 'E-Wallet', 100000.00),
(8, '2025-01-15', 'Credit Card', 450000.00),
(9, '2025-01-16', 'Bank Transfer', 600000.00),
(10, '2025-01-17', 'Debit Card', 320000.00),
(11, '2025-01-18', 'Cash', 120000.00),
(12, '2025-01-19', 'E-Wallet', 220000.00),
(13, '2025-01-20', 'Bank Transfer', 310000.00),
(14, '2025-01-21', 'Credit Card', 410000.00),
(15, '2025-01-22', 'Cash', 130000.00),
(16, '2025-01-23', 'E-Wallet', 530000.00),
(17, '2025-01-24', 'Debit Card', 340000.00),
(18, '2025-01-27', 'Credit Card', 450000.00),
(19, '2025-01-28', 'E-Wallet', 300000.00),
(20, '2025-01-29', 'Cash', 200000.00);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `idPemesanan` int(11) NOT NULL,
  `tanggal_pesan` date NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `status` varchar(45) NOT NULL,
  `Tamu_idTamu` int(11) NOT NULL,
  `Pembayaran_idPembayaran` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`idPemesanan`, `tanggal_pesan`, `tanggal_masuk`, `tanggal_keluar`, `status`, `Tamu_idTamu`, `Pembayaran_idPembayaran`) VALUES
(1001, '2025-01-01', '2025-01-03', '2025-01-05', 'Confirmed', 1001, NULL),
(1002, '2025-01-02', '2025-01-04', '2025-01-06', 'Pending', 1002, NULL),
(1003, '2025-01-03', '2025-01-05', '2025-01-07', 'Cancelled', 1003, NULL),
(1004, '2025-01-04', '2025-01-06', '2025-01-08', 'Confirmed', 1004, NULL),
(1005, '2025-01-07', '2025-01-09', '2025-01-12', 'Confirmed', 1005, 1),
(1006, '2025-01-08', '2025-01-10', '2025-01-13', 'Pending', 1006, 2),
(1007, '2025-01-09', '2025-01-11', '2025-01-14', 'Cancelled', 1007, 3),
(1008, '2025-01-10', '2025-01-12', '2025-01-15', 'Confirmed', 1008, 4),
(1009, '2025-01-11', '2025-01-13', '2025-01-16', 'Confirmed', 1009, 5),
(1010, '2025-01-12', '2025-01-14', '2025-01-17', 'Pending', 1010, 6),
(1011, '2025-01-13', '2025-01-15', '2025-01-18', 'Cancelled', 1011, 0),
(1012, '2025-01-14', '2025-01-16', '2025-01-19', 'Confirmed', 1012, 7),
(1013, '2025-01-15', '2025-01-17', '2025-01-20', 'Pending', 1013, 8),
(1014, '2025-01-16', '2025-01-18', '2025-01-21', 'Confirmed', 1014, 9),
(1015, '2025-01-17', '2025-01-19', '2025-01-22', 'Cancelled', 1015, 10),
(1016, '2025-01-18', '2025-01-20', '2025-01-23', 'Confirmed', 1016, 11),
(1017, '2025-01-19', '2025-01-21', '2025-01-24', 'Pending', 1017, 12),
(1018, '2025-01-20', '2025-01-22', '2025-01-25', 'Confirmed', 1018, 13),
(1019, '2025-01-21', '2025-01-23', '2025-01-26', 'Cancelled', 1019, 14),
(1020, '2025-01-22', '2025-01-24', '2025-01-27', 'Confirmed', 1020, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `idTamu` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `no_telp` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`idTamu`, `nama`, `alamat`, `email`, `no_telp`) VALUES
(1001, 'Ahmad Sulaiman', 'Jl. Mawar No.1', 'ahmad@example.com', '081234567800'),
(1002, 'Rina Kurnia', 'Jl. Melati No.2', 'rina@example.com', '081234567801'),
(1003, 'Dedi Pratama', 'Jl. Kenanga No.3', 'dedi@example.com', '081234567802'),
(1004, 'Siti Aminah', 'Jl. Anggrek No.4', 'siti@example.com', '081234567803'),
(1005, 'Arif Setiawan', 'Jl. Melati No.10', 'arif@example.com', '081234567810'),
(1006, 'Dewi Ayu', 'Jl. Anggrek No.12', 'dewi@example.com', '081234567811'),
(1007, 'Budi Hartono', 'Jl. Kenanga No.14', 'budi@example.com', '081234567812'),
(1008, 'Citra Lestari', 'Jl. Flamboyan No.16', 'citra@example.com', '081234567813'),
(1009, 'Dimas Prasetyo', 'Jl. Dahlia No.18', 'dimas@example.com', '081234567814'),
(1010, 'Fitri Nurhaliza', 'Jl. Mawar No.20', 'fitri@example.com', '081234567815'),
(1011, 'Eka Susanti', 'Jl. Anggrek Merah No.22', 'eka@example.com', '081234567816'),
(1012, 'Gilang Saputra', 'Jl. Melati Putih No.24', 'gilang@example.com', '081234567817'),
(1013, 'Hendri Kurniawan', 'Jl. Kenanga Biru No.26', 'hendri@example.com', '081234567818'),
(1014, 'Intan Permata', 'Jl. Flamboyan Ungu No.28', 'intan@example.com', '081234567819'),
(1015, 'Joko Widodo', 'Jl. Dahlia Hijau No.30', 'joko@example.com', '081234567820'),
(1016, 'Kiki Amalia', 'Jl. Mawar Hitam No.32', 'kiki@example.com', '081234567821'),
(1017, 'Linda Maharani', 'Jl. Anggrek Kuning No.34', 'linda@example.com', '081234567822'),
(1018, 'Maya Sari', 'Jl. Melati Pink No.36', 'maya@example.com', '081234567823'),
(1019, 'Nanda Pratama', 'Jl. Kenanga Putih No.38', 'nanda@example.com', '081234567824'),
(1020, 'Oki Haryanto', 'Jl. Flamboyan Hijau No.40', 'oki@example.com', '081234567825');

-- --------------------------------------------------------

--
-- Table structure for table `ulasan`
--

CREATE TABLE `ulasan` (
  `idUlasan` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `Hotel_idHotel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ulasan`
--

INSERT INTO `ulasan` (`idUlasan`, `rating`, `comment`, `Hotel_idHotel`) VALUES
(1, 5, 'Pelayanan sangat memuaskan, kamar bersih dan nyaman.', 1),
(2, 4, 'Lokasi strategis, namun parkir cukup terbatas.', 2),
(3, 3, 'Kamar standar, namun butuh peningkatan di fasilitas.', 3),
(4, 5, 'Makanan sangat enak, staf ramah, dan cepat tanggap.', 4),
(5, 4, 'Fasilitas lengkap, namun Wi-Fi kadang lambat.', 5),
(6, 2, 'Pelayanan kurang memuaskan, AC di kamar bermasalah.', 6),
(7, 4, 'Kamar luas dan bersih, lokasi juga sangat baik.', 7),
(8, 5, 'Rekomendasi untuk keluarga, fasilitas anak sangat mendukung.', 8),
(9, 3, 'Hotel cukup baik, namun kurang sesuai dengan harga.', 1),
(10, 5, 'Staff sangat membantu selama menginap, luar biasa.', 2),
(11, 4, 'Lingkungan tenang, cocok untuk staycation.', 3),
(12, 5, 'Kamar suite sangat nyaman, breakfast sangat lezat.', 4),
(13, 3, 'Check-in lambat, tapi kamar bersih.', 5),
(14, 5, 'Pemandangan dari kamar sangat indah.', 6),
(15, 4, 'Harga terjangkau, fasilitas cukup memadai.', 7),
(16, 2, 'Tidak sesuai ekspektasi, perlu banyak perbaikan.', 8),
(17, 5, 'Hotel premium, fasilitas bintang lima.', 1),
(18, 4, 'Area parkir luas, lokasi strategis.', 2),
(19, 5, 'Sangat nyaman untuk perjalanan bisnis.', 3),
(20, 3, 'Fasilitas standar, tidak ada yang istimewa.', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`idHotel`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`idKamar`),
  ADD KEY `fk_Kamar_Pemesanan_idx` (`Pemesanan_idPemesanan`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`idLayanan`),
  ADD KEY `fk_Layanan_Kamar_idx` (`Kamar_idKamar`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`idPegawai`),
  ADD KEY `fk_Pegawai_Hotel_idx` (`Hotel_idHotel`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`idPembayaran`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`idPemesanan`),
  ADD KEY `fk_Pemesanan_Tamu_idx` (`Tamu_idTamu`),
  ADD KEY `fk_Pemesanan_Pembayaran_idx` (`Pembayaran_idPembayaran`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`idTamu`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indexes for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`idUlasan`),
  ADD KEY `fk_Ulasan_Hotel_idx` (`Hotel_idHotel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `idHotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `idKamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `idLayanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `idPegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `idPembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `idPemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1021;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `idTamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;

--
-- AUTO_INCREMENT for table `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `idUlasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `fk_Kamar_Pemesanan` FOREIGN KEY (`Pemesanan_idPemesanan`) REFERENCES `pemesanan` (`idPemesanan`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `layanan`
--
ALTER TABLE `layanan`
  ADD CONSTRAINT `fk_Layanan_Kamar` FOREIGN KEY (`Kamar_idKamar`) REFERENCES `kamar` (`idKamar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `fk_Pegawai_Hotel` FOREIGN KEY (`Hotel_idHotel`) REFERENCES `hotel` (`idHotel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `fk_Pemesanan_Pembayaran` FOREIGN KEY (`Pembayaran_idPembayaran`) REFERENCES `pembayaran` (`idPembayaran`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Pemesanan_Tamu` FOREIGN KEY (`Tamu_idTamu`) REFERENCES `tamu` (`idTamu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD CONSTRAINT `fk_Ulasan_Hotel` FOREIGN KEY (`Hotel_idHotel`) REFERENCES `hotel` (`idHotel`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
