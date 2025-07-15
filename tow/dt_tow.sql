-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jul 2025 pada 00.45
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dt_sd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id`, `foto`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'galeri1630509922.jpg', 'Kegiatan Belajar Mengajar', '2021-09-01 15:25:22', NULL),
(2, 'galeri1630510007.jpg', 'Lomba Mekanik Nasional', '2021-09-01 15:26:47', NULL),
(6, 'galeri1752532571.jpg', 'Manntaff', '2025-07-14 22:36:11', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id`, `judul`, `keterangan`, `gambar`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'Pengumuman Tanggal 1 September Dibagi Raport', '<p>untuk para siswa/i harap hadir dalam cara pembagian raport, jangan lupa membawa orang tua atau wali masing-masing</p>', 'informasi1630510538.jpg', '2021-09-01 15:35:38', '2021-09-01 22:40:26', 2),
(2, 'PPDB Akan Dibuka Pada Tanggal 2 September 2021', '<p>Penerimaan Peserta Didik Baru akan dibuka pada tanggal 2 September 2021, bagi calon siswa yang akan mendaftar, silahkan datang ke sekolah pada tanggal yang telah ditentukan.</p>', 'informasi1630510959.jpg', '2021-09-01 15:42:39', NULL, 2),
(3, 'Persyaratan PPDB', '<p>Silahkan membawa persyaratan PPDB pada saat mendaftar<br />1. Alat tulis<br />2. Uang saku</p>', 'informasi1630511107.jpg', '2021-09-01 15:45:07', NULL, 2),
(6, 'Feel Free', '<p>Besok dan selamanya kita akan <strong>libur!!!!</strong></p>', 'informasi1752522079.jpg', '2025-07-14 19:41:19', NULL, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prestasi`
--

CREATE TABLE `prestasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `prestasi`
--

INSERT INTO `prestasi` (`id`, `nama`, `keterangan`, `gambar`, `created_at`, `updated_at`) VALUES
(15, 'Mantap', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when.', 'prestasi1752530190.jpg', '2025-07-14 21:56:30', '2025-07-15 05:34:50'),
(23, '3', 'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when.', 'prestasi1752532504.jpg', '2025-07-14 22:35:04', '2025-07-15 05:35:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `logo` varchar(50) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `tentang_sekolah` text NOT NULL,
  `foto_sekolah` varchar(50) NOT NULL,
  `google_maps` text NOT NULL,
  `nama_kepsek` varchar(50) NOT NULL,
  `foto_kepsek` varchar(50) NOT NULL,
  `sambutan_kepsek` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama`, `email`, `telepon`, `alamat`, `logo`, `favicon`, `tentang_sekolah`, `foto_sekolah`, `google_maps`, `nama_kepsek`, `foto_kepsek`, `sambutan_kepsek`, `created_at`, `updated_at`) VALUES
(1, 'SD Rifki Nur', 'rifki@gmail.com', '0899611181234', 'Jl. Raya Merdeka No. 17, Indonesia Raya Merdeka 45.', 'logo1752526119.png', 'favicon1752511795.png', '<p><strong>TENTANG</strong></p><p>Web sekolah ini didirikan pada tahun 2021 dengan penuh kegembiraan dan semangat yang membara. Web sekolah ini berlokasi di jalur internet dengan posisi yang sangat strategis.</p><p>&nbsp;</p><p><strong>Visi Misi</strong></p><p>Menjadikan media informasi seperti youtube sebagai sarana untuk berbagi ilmu dan pengalaman tanpa batasan tempat dan waktu, sehingga dapat dimanfaatkan dengan baik oleh para pencari ilmu.</p>', 'sekolah1752515602.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d506411.55024183047!2d107.84379186022356!3d-7.427548773487586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e65f8c1851732c5%3A0x301e8f1fc28b900!2sKabupaten%20Tasikmalaya%2C%20Jawa%20Barat!5e0!3m2!1sid!2sid!4v1752527232600!5m2!1sid!2sid', 'Rifki Nur Ilhami', 'kepsek1630508274.png', '<p>Selamat datang para pencari inspirasi, semoga kalian sehat semua ya. Semangat terus dalam menuntut ilmu, jangan pernah bosan ya, kelak ilmu yang kamu pelajari hari ini, akan bermanfaat di masa yang akan datang, semoga hari-harimu selalu bahagia.</p>', '2021-08-14 15:24:49', '2025-07-15 04:17:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('Super Admin','Admin') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `password`, `level`, `created_at`, `updated_at`) VALUES
(4, 'nur', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2025-07-12 13:00:33', NULL),
(5, 'rifki', 'sa', 'e10adc3949ba59abbe56e057f20f883e', 'Super Admin', '2025-07-13 10:36:42', NULL),
(6, 'SD', 'sd', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2025-07-13 10:40:56', '2025-07-13 17:41:09'),
(7, 'Ds', 'ds', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2025-07-13 11:41:56', '2025-07-13 18:42:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
