-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Apr 2021 pada 17.59
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learning`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(11) NOT NULL,
  `waktu_awal` datetime NOT NULL,
  `waktu_akhir` datetime NOT NULL,
  `pesan` longtext NOT NULL,
  `guru_id` int(11) NOT NULL,
  `pelajaran_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `pertemuan` int(11) NOT NULL,
  `aktifasi_agenda` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `waktu_awal`, `waktu_akhir`, `pesan`, `guru_id`, `pelajaran_id`, `kelas_id`, `pertemuan`, `aktifasi_agenda`) VALUES
(2, '2021-03-11 08:49:00', '2021-03-11 09:00:48', '<p>fdsfsfdsdfsjdhfkjsdf sdfkjshdjkfsdf sdkjfhskjdfsd fksjdhfkjsdf sdfnbzxmnzxc zmxcbnzmcn asmndbamnsd asdnabmdsnamsd asmndbmnasbd asmdnbamsnda sdmnbamsnda sdmnabsndmbasd amnsdamsbdmnas dmnasbdmsddasdmnasd amnsdhdkfsdf sjdfhkjsdf sdkfjhskjdfs dfkjshdkfjsd fsjkdfhsjdf sdkfjshdkfjsd fksjdfhksdf sdjkfhkjsdf wwbqwebmnqbe qmewnqmnbwemnqwe qmwnebmqbwne&nbsp;</p>\r\n', 12, 4, 6, 1, '1'),
(3, '2021-03-20 15:19:15', '2021-03-20 15:19:18', '<p>vcbvbcvbcvbcv bcvbn,msnd,msndm,f,sdf sd,fs,dmnf,msndf,sdfsdffvsmdfsdff erbmwebrmnwber wermwbemrnbwmerwe rmwenbmnbermwe rmwnebrmnwebmr wermbmrntbmxd fmxbmnxbcvxx cvmnxbcmnsd mansdmnbansmd asmdnbmasnbdmnasdkjhaskjda sdkjashdkjhkwehkqwe qwkejhkqjwhekkwe we2hj3kjh12kj3123kjhkj213 123</p>\r\n', 12, 4, 6, 2, '0'),
(4, '2021-03-20 15:21:02', '2021-03-20 15:21:11', '<p>sashdkjhasd asdkjhksjdkasd askjhkjsd asdbmwnebmqwne qwmnbmnqwbeqw emnqwbemnbqwmne wqmenbmwnbqmqw ezvbvznbx xcnbvnsbavdbnas dnbvsdnbas dnabsdvnbasvd asdnbvasbndnas dnbavsdnbas ansbdvnbasd asdnvnbsdv asdnbvasnbd asdnbvasdbnvas asnbdvnbasd asdnbvasnbdas dnasbvdnbas asdnbvasnbd snbdvnabsd snbdvansbd asnbdvasbnd snbdvasnbdvasd sanbdvnbasd&nbsp;</p>\r\n', 12, 4, 6, 3, '1'),
(5, '2021-03-20 15:22:23', '2021-03-20 15:22:26', '<p>ssdhksjdksd skjdhksjdksd sdkjhsjkksd skdhksdhjksd skdjhksjdhsd mnbmnbsmd sdmnbmnrbnmwbmwe mwnbemwnebmwe wmenbmnwbemnwe wmenbmwnbemwe mnwbemnbwem wmenbwmnebwmne wmenbmwnebmwe mnwbemnwbmnew emnbwmenbwe wmnebmwnbew emwnbembwnme wmenbmnwebmw emnwbemnbwme wmenbwmnebw mwnbemnwbemw emnbwemnbwe mwnbemn</p>\r\n', 12, 4, 6, 4, '1'),
(6, '2021-03-20 15:43:05', '2021-03-20 15:43:07', '<p>suyiuasd sdoaosdijoaisdjioasd asdoiioasdasd asdjlasjdklasd asdjlskjdlakjsdl asdlkajsdlkjalsd asdlkjalskdjlas daklsdjlkasd asdkjlasdkjas dkljslkdasdasdas dasjdlakjsdlaksd weqljewlkqjwe qweljqlwkejklqwe weqlkjelkjlweqweqwe qwekjlqkweq weqlwkejklqjweqw eqlwkjelkjwlkeq welkqjwelkqwe qwekljlkqwe&nbsp;</p>\r\n', 12, 4, 6, 4, '0'),
(7, '2021-03-20 15:57:35', '2021-03-20 15:58:01', '<p>sdhkfjhksdjfsd fsdfksdfkjhkzxcmnbxmcz xcmnzbxmcnbzxczx cmnbsdmdnabsmndasd mansbdmnabsdmw emnbqwmebmnqwe wmenbqwmnebnqmwe qmwnebmqnwbeqwe mqnwbemnqbwemqw emqnwbemnqwbeq wemenqbwemnqwe qmnwbemnqwbe qmwenbqmwnebqw emnqbewmnqbwme qwemnbqwemnqwe mqnwbemn</p>\r\n', 12, 4, 6, 6, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda_kelas`
--

CREATE TABLE `agenda_kelas` (
  `id_agenda_kelas` int(11) NOT NULL,
  `guru_id_mapel` int(11) DEFAULT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `pelajaran_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `agenda_kelas`
--

INSERT INTO `agenda_kelas` (`id_agenda_kelas`, `guru_id_mapel`, `kelas_id`, `pelajaran_id`) VALUES
(2, 12, 6, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda_siswa`
--

CREATE TABLE `agenda_siswa` (
  `id_agenda_siswa` int(11) NOT NULL,
  `absen` int(11) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `waktu_absen` datetime NOT NULL,
  `agenda_id` int(11) DEFAULT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `pelajaran_id` int(11) DEFAULT NULL,
  `guru_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `agenda_siswa`
--

INSERT INTO `agenda_siswa` (`id_agenda_siswa`, `absen`, `siswa_id`, `waktu_absen`, `agenda_id`, `kelas_id`, `pelajaran_id`, `guru_id`) VALUES
(1, 1, 5, '2021-03-11 08:49:52', 2, 6, 4, 12),
(2, 0, 5, '2021-03-25 08:32:22', 4, 6, 4, 12),
(3, 0, 5, '2021-03-25 08:32:22', 5, 6, 4, 12),
(4, 0, 5, '2021-03-25 08:32:22', 7, 6, 4, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank_soal_ujian`
--

CREATE TABLE `bank_soal_ujian` (
  `id_bank_soal_ujian` int(11) NOT NULL,
  `soal` longtext NOT NULL,
  `pilihan_a` longtext NOT NULL,
  `pilihan_b` longtext NOT NULL,
  `pilihan_c` longtext NOT NULL,
  `pilihan_d` longtext NOT NULL,
  `pilihan_e` longtext NOT NULL,
  `jawaban_soal` varchar(255) NOT NULL,
  `file_soal` varchar(255) NOT NULL,
  `file_pilihan_a` varchar(255) NOT NULL,
  `file_pilihan_b` varchar(255) NOT NULL,
  `file_pilihan_c` varchar(255) NOT NULL,
  `file_pilihan_d` varchar(255) NOT NULL,
  `file_pilihan_e` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `aktifasi_soal_ujian` int(11) DEFAULT NULL,
  `pelajaran_id` int(11) DEFAULT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `guru_id` int(11) DEFAULT NULL,
  `daftar_ujian_id` int(11) DEFAULT NULL,
  `mapel_ujian_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bank_soal_ujian`
--

INSERT INTO `bank_soal_ujian` (`id_bank_soal_ujian`, `soal`, `pilihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`, `pilihan_e`, `jawaban_soal`, `file_soal`, `file_pilihan_a`, `file_pilihan_b`, `file_pilihan_c`, `file_pilihan_d`, `file_pilihan_e`, `date_created`, `aktifasi_soal_ujian`, `pelajaran_id`, `kelas_id`, `guru_id`, `daftar_ujian_id`, `mapel_ujian_id`) VALUES
(11, '<p>f</p>\r\n', '<p>f</p>\r\n', '<p>f</p>\r\n', '<p>f</p>\r\n', '<p>f</p>\r\n', '<p>f</p>\r\n', 'B', '', '', '', '', '', '', '2021-04-04 21:20:09', 1, 4, 6, 12, 3, 6),
(12, '<p>c</p>\r\n', '<p>c</p>\r\n', '<p>d</p>\r\n', '<p>d</p>\r\n', '<p>d</p>\r\n', '<p>d</p>\r\n', 'A', '', '', '', '', '', '', '2021-04-04 21:21:03', 1, 4, 6, 12, 3, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat_admin`
--

CREATE TABLE `chat_admin` (
  `id_chat_admin` int(11) NOT NULL,
  `message_chat` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `pengirim_pesan` int(11) DEFAULT NULL,
  `penerima_pesan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat_mapel`
--

CREATE TABLE `chat_mapel` (
  `id_chat_mapel` int(11) NOT NULL,
  `chat` longtext NOT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `pelajaran_id` int(11) DEFAULT NULL,
  `guru_mapel_id` int(11) DEFAULT NULL,
  `waktu_pesan` datetime NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `chat_mapel`
--

INSERT INTO `chat_mapel` (`id_chat_mapel`, `chat`, `kelas_id`, `pelajaran_id`, `guru_mapel_id`, `waktu_pesan`, `user`) VALUES
(1, '<p>d</p>\r\n', 6, 4, 1, '2021-03-11 07:58:42', 'FITRIANA'),
(2, '<p>gf</p>\r\n', 6, 4, 1, '2021-03-11 07:58:45', 'FITRIANA'),
(3, '<h1 style=\"color:#aaaaaa; font-style:italic\"><span style=\"font-family:Comic Sans MS,cursive\">hhh</span></h1>\r\n', 6, 4, 1, '2021-03-11 08:31:47', 'FITRIANA'),
(4, '<p>p</p>\r\n\r\n<p>&nbsp;</p>\r\n', 6, 4, 1, '2021-03-26 15:48:33', 'HAFI23'),
(5, '<p>halo</p>\r\n', 6, 4, 2, '2021-04-03 11:45:02', 'HAFI23'),
(6, '<p>m</p>\r\n', 6, 4, 1, '2021-04-04 21:34:55', 'HAFI23'),
(7, '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">vcb</div>\r\n\r\n<p>&nbsp;</p>\r\n', 6, 4, 1, '2021-04-06 14:12:25', 'HAFI23'),
(8, '<p>v</p>\r\n', 6, 4, 1, '2021-04-06 14:12:51', 'HAFI23'),
(9, '<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:11px\"><span style=\"color:#16a085\">hhhhhh</span></span></span></p>\r\n', 6, 4, 1, '2021-04-06 14:13:09', 'HAFI23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_ujian`
--

CREATE TABLE `daftar_ujian` (
  `id_daftar_ujian` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pesan` longtext DEFAULT NULL,
  `aktifasi` int(11) DEFAULT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_ujian`
--

INSERT INTO `daftar_ujian` (`id_daftar_ujian`, `judul`, `pesan`, `aktifasi`, `created`) VALUES
(2, 'dfdgdfgdfgdfgdfg', '<p>gdfgdfgdfgdffgdfg ejrhkwjehkrwer werkjwhekjrwer wekjrhwkjerwe rwjehrkjwehrkwerwkjerhjkewr werwekjhrkwjerwemrbnbdms amsnbdmansbdma sdmanbsmdnabsd asdmnbamsndasd asmdnbasbdmasd amsnbdamnsdas dmansbmansba sdmnabsdmnasbd asmdnbasmndas dmanmsbdmansbdma sdmnabsmdnasd asmndbamsnbdmnasd asmnbdmnasbdmnas dmansbmdnabsmd asmdnbasmndbmasd amsnbdmanbsdmnas dmansbdmnasbmda sdmnbasmndbamsndas dmanbsdmnasbmdnabsda smnd</p>\r\n', 1, '2021-03-11'),
(3, 'xfxzcbzxhc zxcjb', '<p>cxvbmnxcbv xcvmnbxv dmnfbsmdnbfs dfmnsbdmfnsd fmsndbfmdsnsdhkfjhdskf sdkfjhskdjfksdf skjdfhksjdf sdfjkhskdjfsd fkjsdhkfjsdf zkxjhckhzk zxckbkzxjc zxcmnzxbcmnzxczmxcbmzxc zxmcbnzmcxnzx cmnzbxmcnz xcmnbzxmcnzx czmcxbnmzxc zxmcnbmzxbcmzx cmnzxmcnbzxc zmxcbmznxc zxmcbnzmxnbczx cmnzbxmc</p>\r\n', 1, '2021-03-19'),
(4, 'dfsdfsdfsdfsdf', '<p>12etreterjkdjfhkdsjf sdfkjhskdjfhksdf sdfkjhkjewr erhwerrkgkjwer wermermnbmnwer 3m4nbmn2342 34mn2b3m34 234nmb23m423 4mn234bmn234 234mn23b4mn234 sabmdnbasdsdmnabsda sdmnabsdmasd asmdnbmnwe qwemnbqwme 2mnb12m312 3mn12b3mn123 12mn3b1m23 123mn1b23 123mnb12m3</p>\r\n', 1, '2021-03-20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `grup_kelas`
--

CREATE TABLE `grup_kelas` (
  `id_grup_kelas` int(11) NOT NULL,
  `pesan_grup` longtext NOT NULL,
  `waktu_terkirim` datetime NOT NULL,
  `terkirim` int(11) NOT NULL,
  `pengirim` int(11) DEFAULT NULL,
  `penerima` int(11) DEFAULT NULL,
  `guru_id` int(11) DEFAULT NULL,
  `kelas_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `date_created` date NOT NULL,
  `img` varchar(255) NOT NULL,
  `role_id` enum('1','2','3') NOT NULL,
  `is_active` int(11) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `pelajaran_id` int(11) DEFAULT NULL,
  `aktifasi_guru` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nama`, `username`, `pass`, `date_created`, `img`, `role_id`, `is_active`, `jenis_kelamin`, `kelas_id`, `pelajaran_id`, `aktifasi_guru`, `email`, `no_hp`) VALUES
(5, 'M.NUR IKBAL', '1819105754', '$2y$10$llzjHPLJJQ4SH7F11j/FXu2oX1UgpHVln.2r2qjFADPHUxwTAb6DG', '2021-03-05', '606ea37725eee.Day_3  (36).JPG', '1', 0, 'laki-laki', NULL, NULL, 1, 'SMK@GMAIL.COM', '0834976872342'),
(12, 'FITRIANA', '11111111', '$2y$10$D6YH1nytCEN3FnLJOFNtZ.vmmhsINW8HFvAN3dwcgcFiDpmzVKBMW', '2021-03-11', '60496b78afa80.iklan5.jpeg', '2', 0, 'perempuan', 6, 4, 1, 'fgdf@fddgd.fgh', '4353453453452'),
(18, 'TTTTTTTTTTTTTTTT', '66666666', '$2y$10$GDYMVlHSRNHDC.Hl/w7SmeUJvm4E9uAR5Ji8e0J8NTZCiYErkm10q', '2021-03-13', 'default.png', '1', 0, 'perempuan', NULL, NULL, 0, '545@gmail.com', '678888888888'),
(21, 'TRRRRRRRRRRRRRRR', '455555555555', '$2y$10$SDziUeVJVAVxepMsBDuKeOVET89c6r/vp.2H2j3NbGC4iRkVrvJ7O', '2021-03-13', 'default.png', '1', 0, 'perempuan', NULL, NULL, 0, '787@gmail.com', '777777777777'),
(22, 'HHUYUUUUUUUUUUUU', '766666666667', '$2y$10$8ULsHzedKk7/1F4vkRjSXuAy6aYmLttipo3g7LTlK6konh6Y37Bzi', '2021-03-13', 'default.png', '1', 0, 'perempuan', NULL, NULL, 0, 'laptopl239@gmail.com', '8888888888886'),
(23, 'YTTTTTTTTTTTTTTT', '555555555566', '$2y$10$O1Olq.I8eatpGFBtTmpyyeJo4lrevzE3HfgPc0ZVJLWR2T/cH7SKG', '2021-03-13', 'default.png', '1', 0, 'perempuan', NULL, NULL, 0, 'skjadlk@gahas.cos', '4345345345344'),
(24, '5465645645645645', '4564564564', '$2y$10$uCvSNXX/VvQrUncJw8l9o.4FjW/xh9OQKkhJPiPYKEIsPgidGkygS', '2021-03-13', 'default.png', '1', 0, 'perempuan', NULL, NULL, 0, 'fdgdfg@fgdfg.fghfg', '5464564564564'),
(25, 'UTYUTYYYYYYYYYYY', '5675675656', '$2y$10$mWUEffjMbTM7S1NIiWhx3eRVsyuou9pt2elrk201ITnj2oUJfsw3q', '2021-03-13', 'default.png', '1', 0, 'perempuan', NULL, NULL, 0, '567fg@fgdfg.gjhj', '646545645645'),
(27, 'DFFFFFFFFFFFFFFF', '43433333333', '$2y$10$9r04KYmIvCVCS2rQwGsr4O0aD8j0rIwmXyutKvvgpowOv3Lkks5zu', '2021-03-13', 'default.png', '1', 0, 'perempuan', NULL, NULL, 0, '65hg@fgdfg.ghj', '4564564564564'),
(28, 'GFHFGHFGHFGHFGHF', '5645645645', '$2y$10$htnbNiH.JACcxBBXZyqeuelw1kYaV1rR1KgN9KE5SlqA7lWPLU9ye', '2021-03-13', 'default.png', '1', 0, 'perempuan', NULL, NULL, 0, 'drg@gsdgsd.ghfgh', '45345345345345'),
(30, 'FGFHFGHFGHFGHFGH', '546546456456', '$2y$10$zvEh5h5YfvpQzME.aZtHP.3aTz6U6zjUKPy0RID8Oog5WwPLOOFvW', '2021-03-13', 'default.png', '1', 0, 'perempuan', NULL, NULL, 0, 'fdfg@gffghfgh.gfhf', '455555555554'),
(34, 'fgdfgd', '1816576564', '$2y$10$SWrFxTa1PAQOkdBxaqfDgeEE8I8yvU.RQdfwg6mP6bceFO8MX5V6u', '2021-03-05', '6042ce61de35b.smka.jpeg', '1', 1, 'laki-laki', NULL, NULL, 1, 'SMK@GMAIL.COM', '0834976872342'),
(35, 'RTERTERTTUTUTY', '45645645678', '$2y$10$vFJYifc.sVMIBLX4FuIO0OBcVxZVVsecev1qemv95GayjNCPOTgSW', '2021-03-28', 'default.png', '1', 0, 'perempuan', NULL, NULL, 0, '435345fg@fgdf.tyu', '5675675632422'),
(36, 'DFGDFGEETR342343', '53453453443', '$2y$10$9Gw5JQ0TILki9KjdB937U.MsaeIV7y6mIX3j0arBX5GRq5AY94QUa', '2021-03-29', 'default.png', '1', 0, 'perempuan', NULL, NULL, 0, 'fgdgdfg@dgdfg.fdgdfg', '45342123312313'),
(37, 'DSFDFSDFSDFSDXCF', '345345345123', '$2y$10$3m95RXUD0jlQThN3/8vLrOh1U0psTVuSn.ik.YmhIWbj6LZVB/EJO', '2021-03-29', 'default.png', '3', 0, 'perempuan', NULL, 6, 0, 'gdgd@gdddfgdfg.d', '4535345345345'),
(38, 'XCVXCDFSDFSDFSDF', '4353454345', '$2y$10$khSk6irxkZndSi67.xyO3uDarBPTuG6P6IC.Edu13eJQ6P9cmfCsu', '2021-04-02', 'default.png', '2', 0, 'laki-laki', 9, 6, 0, 'hgjgjhgh@ghfg.kk', '54645645645656');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru_mapel`
--

CREATE TABLE `guru_mapel` (
  `id_guru_mapel` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `date_created_pelajaran` date NOT NULL,
  `file_pelajaran` varchar(255) DEFAULT NULL,
  `pesan` text NOT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `guru_id` int(11) DEFAULT NULL,
  `materi` varchar(255) NOT NULL,
  `link_video` varchar(255) DEFAULT NULL,
  `aktifasi_mapel` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru_mapel`
--

INSERT INTO `guru_mapel` (`id_guru_mapel`, `mapel_id`, `date_created_pelajaran`, `file_pelajaran`, `pesan`, `kelas_id`, `guru_id`, `materi`, `link_video`, `aktifasi_mapel`) VALUES
(1, 4, '2021-03-11', '', '<p>dsfsdfsdfs dfskjdfjkskdfseef&nbsp; erbemnwbrmwerw ermnwbemrnwbenrw ermwnebrmnwbenmrwe rmwnbemrnwbemr 23m4nb2mn3bm2 34m2nb34mn2b3m42 34m2bm34nbm24 2m3n4bm2n342 34mn2b3mn4234 m2n34bm2n342 34m2b34mn234 2m3n4b2mn34 23mn42mn34bm234 2m3n4bm2n34 23mn4b2mn342 34mn2bm4n2 4m2n342mn3mfnbsmnfsdamnbsdmnas damnsdmabsdmna sdmnabsmdnbasd mansbdmasbdmasdasdc&nbsp;</p>\r\n', 6, 12, 'sdfsdfsdffsdfsdfsdf', '', '1'),
(2, 4, '2021-04-03', '', '<p>sdfhskjhsdfdjfs dfjsdhfkjhskdfs dfkjsdhfkjhsdff sdfjkshkdjfsdf skdfjhskjdfsdff sdfkjhskdjfwerkjwekjrrw erwkjerhkwjer werkjwherjkwe rwjerhkjwer ermnbwmenr znzxmnbxmznbxc zmxcbnzmnxbcz xcmzbnxmcnbzxc zxmcbnnmzbxcnzx cmzbnxncbzxc zxcbmznbxmc zxmbczxbncz xcmznxbcmnzxc zmxcnbmzcxn</p>\r\n', 6, 12, 'pertamahdkjfs', '', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_ujian`
--

CREATE TABLE `hasil_ujian` (
  `id_hasil_ujian` int(11) NOT NULL,
  `jumlah_soal` int(11) NOT NULL,
  `jumlah_benar` int(11) NOT NULL,
  `jumlah_salah` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `pelajaran_id` int(11) DEFAULT NULL,
  `guru_id` int(11) DEFAULT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `daftar_ujian_id` int(11) NOT NULL,
  `status_ujian` int(11) DEFAULT NULL,
  `mapel_ujian_id` int(11) DEFAULT NULL,
  `waktu_terakhir` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil_ujian`
--

INSERT INTO `hasil_ujian` (`id_hasil_ujian`, `jumlah_soal`, `jumlah_benar`, `jumlah_salah`, `nilai`, `kelas_id`, `pelajaran_id`, `guru_id`, `siswa_id`, `daftar_ujian_id`, `status_ujian`, `mapel_ujian_id`, `waktu_terakhir`) VALUES
(52, 2, 2, 0, 100, 6, 4, 12, 5, 3, 1, 6, 9),
(53, 0, 0, 0, 0, 6, 6, 12, 5, 3, NULL, 7, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_ulangan_harian`
--

CREATE TABLE `hasil_ulangan_harian` (
  `id_hasil_ulangan_harian` int(11) NOT NULL,
  `jumlah_soal` int(11) DEFAULT NULL,
  `jumlah_benar` int(11) DEFAULT NULL,
  `jumlah_salah` int(11) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `pelajaran_id` int(11) DEFAULT NULL,
  `guru_id` int(11) DEFAULT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `ulangan_siswa_id` int(11) DEFAULT NULL,
  `status_ulangan_harian` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil_ulangan_harian`
--

INSERT INTO `hasil_ulangan_harian` (`id_hasil_ulangan_harian`, `jumlah_soal`, `jumlah_benar`, `jumlah_salah`, `nilai`, `kelas_id`, `pelajaran_id`, `guru_id`, `siswa_id`, `ulangan_siswa_id`, `status_ulangan_harian`) VALUES
(12, 6, 1, 5, 17, 6, 4, 12, 5, 15, 1),
(15, 1, 1, 0, 100, 6, 4, 12, 5, 16, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban_ujian`
--

CREATE TABLE `jawaban_ujian` (
  `id_jawaban_ujian` int(11) NOT NULL,
  `jawaban_soal_siswa` varchar(255) DEFAULT NULL,
  `ragu_ragu` int(11) DEFAULT NULL,
  `waktu_dibuat_ujian` datetime NOT NULL,
  `bank_soal_ujian_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `pelajaran_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `daftar_ujian_id` int(11) NOT NULL,
  `mapel_ujian_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jawaban_ujian`
--

INSERT INTO `jawaban_ujian` (`id_jawaban_ujian`, `jawaban_soal_siswa`, `ragu_ragu`, `waktu_dibuat_ujian`, `bank_soal_ujian_id`, `guru_id`, `pelajaran_id`, `kelas_id`, `siswa_id`, `daftar_ujian_id`, `mapel_ujian_id`) VALUES
(66, 'B', 0, '2021-04-07 15:05:28', 11, 12, 4, 6, 5, 3, 6),
(67, 'A', 0, '2021-04-07 15:05:28', 12, 12, 4, 6, 5, 3, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban_ulangan_harian_siswa`
--

CREATE TABLE `jawaban_ulangan_harian_siswa` (
  `id_jawaban_ulangan_harian_siswa` int(11) NOT NULL,
  `jawaban_soal_siswa` varchar(255) DEFAULT NULL,
  `ragu_ragu` int(11) NOT NULL,
  `waktu_dibuat_ulangan_harian_siswa` datetime NOT NULL,
  `ulangan_harian_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `pelajaran_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `ulangan_siswa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jawaban_ulangan_harian_siswa`
--

INSERT INTO `jawaban_ulangan_harian_siswa` (`id_jawaban_ulangan_harian_siswa`, `jawaban_soal_siswa`, `ragu_ragu`, `waktu_dibuat_ulangan_harian_siswa`, `ulangan_harian_id`, `guru_id`, `pelajaran_id`, `kelas_id`, `siswa_id`, `ulangan_siswa_id`) VALUES
(34, 'B', 0, '2021-03-20 17:33:21', 20, 12, 4, 6, 5, 15),
(35, NULL, 0, '2021-03-20 17:33:21', 21, 12, 4, 6, 5, 15),
(36, NULL, 0, '2021-03-20 17:33:22', 22, 12, 4, 6, 5, 15),
(37, 'A', 0, '2021-03-20 17:33:22', 23, 12, 4, 6, 5, 15),
(38, NULL, 0, '2021-03-20 17:33:22', 24, 12, 4, 6, 5, 15),
(39, NULL, 0, '2021-03-20 17:33:22', 25, 12, 4, 6, 5, 15),
(66, 'B', 0, '2021-04-05 12:16:15', 26, 12, 4, 6, 5, 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`) VALUES
(6, 'XII TKJ I'),
(9, 'XII TKJ IV'),
(10, 'XII TAV III'),
(11, 'XII TAV II');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel_siswa`
--

CREATE TABLE `mapel_siswa` (
  `id_mapel_siswa` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `pelajaran_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `hari` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel_siswa`
--

INSERT INTO `mapel_siswa` (`id_mapel_siswa`, `kelas_id`, `pelajaran_id`, `guru_id`, `hari`) VALUES
(10, 9, 4, 12, 'Tuesday'),
(11, 9, 6, 12, 'Tuesday'),
(13, 6, 4, 12, 'Wednesday'),
(14, 6, 6, 12, 'Thursday');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel_ujian`
--

CREATE TABLE `mapel_ujian` (
  `id_mapel_ujian` int(11) NOT NULL,
  `aktifasi_mapel_ujian` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `time_out` datetime NOT NULL,
  `waktu_ujian` int(11) NOT NULL,
  `daftar_ujian_id` int(11) NOT NULL,
  `mapel_siswa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel_ujian`
--

INSERT INTO `mapel_ujian` (`id_mapel_ujian`, `aktifasi_mapel_ujian`, `created`, `time_out`, `waktu_ujian`, `daftar_ujian_id`, `mapel_siswa_id`) VALUES
(6, 1, '2021-04-04 16:30:59', '2021-04-08 05:25:02', 10, 3, 13),
(7, 1, '2021-04-04 16:31:57', '2021-04-13 08:40:54', 10, 3, 14),
(9, 1, '2021-04-04 16:32:42', '2021-04-20 13:45:38', 10, 3, 11),
(10, 1, '2021-04-30 20:27:15', '2021-05-09 18:50:09', 10, 2, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelajaran`
--

CREATE TABLE `pelajaran` (
  `id` int(11) NOT NULL,
  `mapel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelajaran`
--

INSERT INTO `pelajaran` (`id`, `mapel`) VALUES
(4, 'BAHASA INDONESIA'),
(6, 'PEMOGRAMAN DASAR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `file_pengumuman` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pesan` longtext NOT NULL,
  `created` date NOT NULL,
  `penulis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `file_pengumuman`, `judul`, `pesan`, `created`, `penulis`) VALUES
(1, '', 'fgdfgdfgdfgdfgdf', '<p>fgdfgdfgdfgkejrkwherewrdfsdfd f ekrwkehrkjwer werkjwhekrhkwer werkjwhekrjhkwer werbwmenrbmwenr wermnwebrmnwer wmernbwmenrw ermwnerbmwner wemrnbwemrn wermnwbermnwer wmenrbmwnerkj4h5345 345bm34n5bmn345 345mnb345mnbn34m5 34m5nbmnebrmnbemw remwnbermwnbemr wemrbwmerbmnwer wejhkjhkc kajshdkjasdkas dkjwhekqjwheqw eqjkwhekqjwhekqjhwkeq wekqjwhekjhqwke qwkejhkqwjhekqw eqwkejhqkjwehkqwe qwemqwbekjqhwke</p>\r\n', '2021-03-05', 'M.NUR IKBAL'),
(2, '60497e6f53779.20210309_072627.jpg', 'Smk muhamka', '<p>Smk muhammadiyah kajen mengadakan lomba 17 belasan di bulan agustus untuk memperingati hari kemerdekaan indonesia yanv ke 80 tahun.di harapkan siswa mengikuti semua kegiatan yang berada di smk muhamka untuk memeriahkan lomba setiap pemenang lomba akan di berikan hadiah yang menarik.ayooo jangan sampai ketinggalan mari ikuti lombanya di smk muhamka</p>\r\n', '2021-03-11', 'M.NUR IKBAL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil_user`
--

CREATE TABLE `profil_user` (
  `id_profil_user` int(11) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `alamat` longtext DEFAULT NULL,
  `jarak_ke_sekolah` int(255) DEFAULT NULL,
  `waktu_tempuh` int(255) DEFAULT NULL,
  `kendaraan` varchar(255) DEFAULT NULL,
  `tinggi_badan` int(255) DEFAULT NULL,
  `berat_badan` int(255) DEFAULT NULL,
  `kode_pos` int(255) DEFAULT NULL,
  `pendidikan_terakhir` varchar(255) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `tanggal_lahir_ayah` date DEFAULT NULL,
  `pendidikan_terakhir_ayah` varchar(255) DEFAULT NULL,
  `no_hp_ayah` int(255) DEFAULT NULL,
  `pekerjaan_ayah` varchar(255) DEFAULT NULL,
  `pendapatan_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `tanggal_lahir_ibu` date DEFAULT NULL,
  `pendidikan_terakhir_ibu` varchar(255) DEFAULT NULL,
  `no_hp_ibu` int(255) DEFAULT NULL,
  `pekerjaan_ibu` varchar(255) DEFAULT NULL,
  `pendapatan_ibu` varchar(255) DEFAULT NULL,
  `guru_id` int(11) DEFAULT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `active` int(11) NOT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `aktifasi_siswa` enum('0','1') NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `username`, `pass`, `jenis_kelamin`, `img`, `role_id`, `date_created`, `active`, `kelas_id`, `siswa_id`, `aktifasi_siswa`, `email`, `no_hp`) VALUES
(5, 'HAFI23', '22222222', '$2y$10$bPLW3qVwiESM5vYGuL.8Ju5RJI0HBoY9IUGtf.txhKXztPHmOI5nW', 'perempuan', 'default.png', 4, '2021-03-11', 1, 6, 12, '1', 'erwr@fgdfg.fgd', '234234234234'),
(6, 'SDFSDFCCSDFSDFDF', '23423423423', '$2y$10$.kPjrvRd0UAe.NYRt6yDcefiRQWDMOtcrBkJPCMAuZzu72DFvYu6q', 'perempuan', 'default.png', 4, '2021-03-14', 0, 6, 12, '0', 'SDSFSD@DSDF.GHF', '43534345345343'),
(7, 'XCBKJDSHKFJSD SD', '32467234682', '$2y$10$bxf9GZjzZ05t4qf4NnVp8e5p/rxctRt8rVsqaaOXy9btmxmCkDdT6', 'perempuan', '606fd1b443ea8.rektor.png', 4, '2021-04-09', 0, 9, 38, '0', 'dfdf@jhgxh.fdnf', '328948293423');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_terdaftar`
--

CREATE TABLE `siswa_terdaftar` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nisn` int(11) NOT NULL,
  `asal_sekolah` varchar(255) NOT NULL,
  `kejuruan` varchar(255) NOT NULL,
  `ttl` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `umur` int(11) NOT NULL,
  `no_hp` int(11) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `ijazah` varchar(255) NOT NULL,
  `raport` varchar(255) NOT NULL,
  `foto_diri` varchar(255) NOT NULL,
  `akte` varchar(255) NOT NULL,
  `skhun` varchar(255) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa_terdaftar`
--

INSERT INTO `siswa_terdaftar` (`id`, `nama`, `nisn`, `asal_sekolah`, `kejuruan`, `ttl`, `alamat`, `umur`, `no_hp`, `agama`, `ijazah`, `raport`, `foto_diri`, `akte`, `skhun`, `date_created`) VALUES
(1, 'malik', 523424234, 'smpn 1 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa nyamok kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(2, 'fifi', 523424234, 'smpn 2 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa pekiringan alit kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(3, 'lily', 523424234, 'smpn 3 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa sinangoh kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(4, 'malik', 523424234, 'smpn 1 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa nyamok kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(5, 'fifi', 523424234, 'smpn 2 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa pekiringan alit kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(6, 'lily', 523424234, 'smpn 3 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa sinangoh kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(7, 'malik', 523424234, 'smpn 1 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa nyamok kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(8, 'fifi', 523424234, 'smpn 2 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa pekiringan alit kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(9, 'lily', 523424234, 'smpn 3 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa sinangoh kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(10, 'malik', 523424234, 'smpn 1 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa nyamok kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(11, 'fifi', 523424234, 'smpn 2 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa pekiringan alit kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(12, 'lily', 523424234, 'smpn 3 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa sinangoh kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(13, 'malik', 523424234, 'smpn 1 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa nyamok kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(14, 'fifi', 523424234, 'smpn 2 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa pekiringan alit kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(15, 'lily', 523424234, 'smpn 3 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa sinangoh kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(16, 'malik', 523424234, 'smpn 1 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa nyamok kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(17, 'fifi', 523424234, 'smpn 2 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa pekiringan alit kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(18, 'lily', 523424234, 'smpn 3 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa sinangoh kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(19, 'malik', 523424234, 'smpn 1 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa nyamok kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(20, 'fifi', 523424234, 'smpn 2 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa pekiringan alit kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(21, 'lily', 523424234, 'smpn 3 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa sinangoh kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(22, 'malik', 523424234, 'smpn 1 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa nyamok kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(23, 'fifi', 523424234, 'smpn 2 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa pekiringan alit kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06'),
(24, 'lily', 523424234, 'smpn 3 kajen', 'tehnik komputer & jaringan', 'pekalongan,17 juni 2001', 'desa sinangoh kecamatan kajen', 16, 853485933, 'islam', '-', '-', '-', '-', '-', '2021-03-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `token`
--

CREATE TABLE `token` (
  `id_token` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `daftar_ujian_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `token`
--

INSERT INTO `token` (`id_token`, `token`, `siswa_id`, `kelas_id`, `daftar_ujian_id`) VALUES
(52, 'HSANM2310', 5, 6, 2),
(53, 'ST784BMX', 6, 6, 2),
(54, '6XJIZHHP', 5, 6, 3),
(55, '72E8M0MX', 6, 6, 3),
(56, '4f5p38n8', 5, 6, 4),
(57, '8728w2wo', 6, 6, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas`
--

CREATE TABLE `tugas` (
  `id_tugas` int(11) NOT NULL,
  `pelajaran_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `pesan` text NOT NULL,
  `guru_id` int(11) NOT NULL,
  `date_tugas` datetime NOT NULL,
  `tugas` int(11) NOT NULL,
  `type_tugas` enum('file','text','link') NOT NULL,
  `aktifasi_tugas` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tugas`
--

INSERT INTO `tugas` (`id_tugas`, `pelajaran_id`, `kelas_id`, `waktu`, `pesan`, `guru_id`, `date_tugas`, `tugas`, `type_tugas`, `aktifasi_tugas`) VALUES
(1, 4, 6, '2021-03-11 09:00:43', '<p>ewrwerwerwkjerhkjw erwkejhrkwjerw erwnbermnwbermw ermwnbermnwemr wemrnbmsndmasd amsnbdmnasmd asmndbamsndbmas damsnbdmasnbdmas dmansbdmnasd amsnbdmansd asmdnbamsdna sdmnabsmdnd smdnabmsnda smdnbamsnda smdnbmwnbqneqwq mnbmnbqmw qmwbemqnwebq wemnqbwmenqw emnqbwmnebqw emnqbwemnqwe mqwnbemnqwe qwmnebqmnwe qwmebqmnweb3 m4nb2n3 wmebmnwbemrw ermwnbemrnwe rwmnbemrnwer wmenrbmnwer wmenrbmwner wemnrwbmenrw ermwnbemrnwe</p>\r\n', 12, '2021-03-11 08:51:23', 1, 'text', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas_siswa`
--

CREATE TABLE `tugas_siswa` (
  `id_tugas_siswa` int(11) NOT NULL,
  `file_tugas` varchar(255) DEFAULT NULL,
  `waktu_tugas` datetime NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `type_tugas_siswa` enum('file','link','text') NOT NULL,
  `kelas_id_tugas` int(11) NOT NULL,
  `pelajaran_id_tugas` int(11) NOT NULL,
  `guru_id_tugas` int(11) NOT NULL,
  `selesai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tugas_siswa`
--

INSERT INTO `tugas_siswa` (`id_tugas_siswa`, `file_tugas`, `waktu_tugas`, `siswa_id`, `tugas_id`, `type_tugas_siswa`, `kelas_id_tugas`, `pelajaran_id_tugas`, `guru_id_tugas`, `selesai`) VALUES
(1, 'fgdfgdfgdfg', '2021-03-11 08:53:33', 5, 1, 'text', 6, 4, 12, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulangan_harian`
--

CREATE TABLE `ulangan_harian` (
  `id_ulangan_harian` int(11) NOT NULL,
  `soal` longtext NOT NULL,
  `pilihan_a` longtext NOT NULL,
  `pilihan_b` longtext NOT NULL,
  `pilihan_c` longtext NOT NULL,
  `pilihan_d` longtext NOT NULL,
  `pilihan_e` longtext NOT NULL,
  `jawaban_soal` longtext NOT NULL,
  `aktifasi` int(11) NOT NULL,
  `waktu_dibuat` date NOT NULL,
  `file_soal` varchar(255) DEFAULT NULL,
  `file_pilihan_a` varchar(255) DEFAULT NULL,
  `file_pilihan_b` varchar(255) DEFAULT NULL,
  `file_pilihan_c` varchar(255) DEFAULT NULL,
  `file_pilihan_d` varchar(255) DEFAULT NULL,
  `file_pilihan_e` varchar(255) DEFAULT NULL,
  `kelas_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `pelajaran_id` int(11) NOT NULL,
  `ulangan_siswa_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ulangan_harian`
--

INSERT INTO `ulangan_harian` (`id_ulangan_harian`, `soal`, `pilihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`, `pilihan_e`, `jawaban_soal`, `aktifasi`, `waktu_dibuat`, `file_soal`, `file_pilihan_a`, `file_pilihan_b`, `file_pilihan_c`, `file_pilihan_d`, `file_pilihan_e`, `kelas_id`, `guru_id`, `pelajaran_id`, `ulangan_siswa_id`) VALUES
(20, '<p>fg</p>\r\n', '<p>xjh</p>\r\n', '<p>kjhdk</p>\r\n', '<p>dhk</p>\r\n', '<p>jkhdk</p>\r\n', '<p>jkh</p>\r\n', 'A', 1, '2021-03-20', '', '', '', '', '', '', 6, 12, 4, 15),
(21, '<p>dsdj</p>\r\n', '<p>jdfhkj</p>\r\n', '<p>jkh</p>\r\n', '<p>jkfhjk</p>\r\n', '<p>djhkj</p>\r\n', '<p>jkhfk</p>\r\n', 'C', 1, '2021-03-20', '', '', '', '', '', '', 6, 12, 4, 15),
(22, '<p>dfhghj</p>\r\n', '<p>hgfhj</p>\r\n', '<p>hdghj</p>\r\n', '<p>hdg</p>\r\n', '<p>hjdgjh</p>\r\n', '<p>djghj</p>\r\n', 'D', 1, '2021-03-20', '', '', '', '', '', '', 6, 12, 4, 15),
(23, '<p>dkdhfk</p>\r\n', '<p>fjhkj</p>\r\n', '<p>kjfhk</p>\r\n', '<p>fjhkj</p>\r\n', '<p>fjhkj</p>\r\n', '<p>fkjhk</p>\r\n', 'A', 1, '2021-03-20', '', '', '', '', '', '', 6, 12, 4, 15),
(24, '<p>jfhkj</p>\r\n', '<p>fjhkj</p>\r\n', '<p>kjfhk</p>\r\n', '<p>jkfhjk</p>\r\n', '<p>fkjhjk</p>\r\n', '<p>jfhjk</p>\r\n', 'D', 1, '2021-03-20', '', '', '', '', '', '', 6, 12, 4, 15),
(25, '<p>jhfkj</p>\r\n', '<p>kjhk</p>\r\n', '<p>kjfhk</p>\r\n', '<p>jdshk</p>\r\n', '<p>dfkj</p>\r\n', '<p>hkj</p>\r\n', 'E', 1, '2021-03-20', '', '', '', '', '', '', 6, 12, 4, 15),
(26, '<p>t</p>\r\n', '<p>t</p>\r\n', '<p>t</p>\r\n', '<p>t</p>\r\n', '<p>t</p>\r\n', '<p>t</p>\r\n', 'B', 1, '2021-04-05', '', '', '', '', '', '', 6, 12, 4, 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulangan_siswa`
--

CREATE TABLE `ulangan_siswa` (
  `id_ulangan_siswa` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pesan` longtext NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `pelajaran_id` int(11) NOT NULL,
  `waktu_ulangan` date NOT NULL,
  `waktu_mulai` datetime NOT NULL,
  `waktu_selesai` datetime NOT NULL,
  `waktu` int(11) NOT NULL,
  `aktifasi_ulangan` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ulangan_siswa`
--

INSERT INTO `ulangan_siswa` (`id_ulangan_siswa`, `judul`, `pesan`, `kelas_id`, `pelajaran_id`, `waktu_ulangan`, `waktu_mulai`, `waktu_selesai`, `waktu`, `aktifasi_ulangan`, `guru_id`) VALUES
(15, 'sjdkfkjsdkfdsfs', '<p>jdhkfjhsdfjkjkdkf sdfkjsdhfkjsdf sdfjksdhfksd fskdfjhksjdf sdfjkhsdkfjsdfs dfskjdhfksdf sdkjfhskjdf sdfjhskdjf sdfkjshdfkjs dfksjdfhkjsdf sdfkjhskdfs dfkjsdhfjksd fsjdkfhskdf sdkjfhsdkjf sdfkjsdhfjks fskjdfhsd fsdkjhfksdf sdkfjhskjdf sdfkjsdhkfjsd fksjdbfnwermw erwemnrbmwner wermnbwemnr wermnbwmenrw ermnwbemrw ermnbwemrnw ermnwbermnwe rwmnebrmwer wmnerbwer wmnerwe rmwenrbmwe rwmenrm</p>\r\n', 6, 4, '2021-03-20', '2021-03-20 17:26:40', '2021-03-20 17:35:49', 10, 1, 12),
(16, '444444444444444444444444', '<p>hhasgjgasda sdajhgsdjhgasjd wervnwbevrnbwer webvrnbwvernw ernwvernbvwerr ueoriwer weroiuwoieruwer weriuwoeriwer weriuwoierw erwieruowierw eriwueroiwer weriuwoierw erwiuerox sdjfhskjdfks dfskdfhkjsdfs dfjskdhfkjsdfsdfkjhskdf sdfkjshdkfjsd fsdjkfhskjdfs dfjkhskjdfs dfksjdhkfjsdf sdfjskdjfs dfksjdf</p>\r\n', 6, 4, '2021-04-05', '2021-04-05 12:15:07', '2021-04-21 13:45:03', 160, 1, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`),
  ADD KEY `guru_id` (`guru_id`),
  ADD KEY `pelajaran_id` (`pelajaran_id`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indeks untuk tabel `agenda_kelas`
--
ALTER TABLE `agenda_kelas`
  ADD PRIMARY KEY (`id_agenda_kelas`),
  ADD KEY `guru_id_mapel` (`guru_id_mapel`),
  ADD KEY `pelajaran_id` (`pelajaran_id`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indeks untuk tabel `agenda_siswa`
--
ALTER TABLE `agenda_siswa`
  ADD PRIMARY KEY (`id_agenda_siswa`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `pelajaran_id` (`pelajaran_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `guru_id` (`guru_id`),
  ADD KEY `agenda_id` (`agenda_id`);

--
-- Indeks untuk tabel `bank_soal_ujian`
--
ALTER TABLE `bank_soal_ujian`
  ADD PRIMARY KEY (`id_bank_soal_ujian`),
  ADD KEY `pelajaran_id` (`pelajaran_id`),
  ADD KEY `daftar_ujian_id` (`daftar_ujian_id`),
  ADD KEY `mapel_ujian_id` (`mapel_ujian_id`),
  ADD KEY `guru_id` (`guru_id`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indeks untuk tabel `chat_admin`
--
ALTER TABLE `chat_admin`
  ADD PRIMARY KEY (`id_chat_admin`),
  ADD KEY `penerima_pesan` (`penerima_pesan`),
  ADD KEY `pengirim_pesan` (`pengirim_pesan`);

--
-- Indeks untuk tabel `chat_mapel`
--
ALTER TABLE `chat_mapel`
  ADD PRIMARY KEY (`id_chat_mapel`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `pelajaran_id` (`pelajaran_id`),
  ADD KEY `guru_mapel_id` (`guru_mapel_id`);

--
-- Indeks untuk tabel `daftar_ujian`
--
ALTER TABLE `daftar_ujian`
  ADD PRIMARY KEY (`id_daftar_ujian`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `grup_kelas`
--
ALTER TABLE `grup_kelas`
  ADD PRIMARY KEY (`id_grup_kelas`),
  ADD KEY `guru_id` (`guru_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `pengirim` (`pengirim`),
  ADD KEY `penerima` (`penerima`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `pelajaran_id` (`pelajaran_id`);

--
-- Indeks untuk tabel `guru_mapel`
--
ALTER TABLE `guru_mapel`
  ADD PRIMARY KEY (`id_guru_mapel`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `guru_id` (`guru_id`),
  ADD KEY `mapel_id` (`mapel_id`);

--
-- Indeks untuk tabel `hasil_ujian`
--
ALTER TABLE `hasil_ujian`
  ADD PRIMARY KEY (`id_hasil_ujian`),
  ADD KEY `mapel_ujian_id` (`mapel_ujian_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `pelajaran_id` (`pelajaran_id`),
  ADD KEY `guru_id` (`guru_id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `daftar_ujian_id` (`daftar_ujian_id`);

--
-- Indeks untuk tabel `hasil_ulangan_harian`
--
ALTER TABLE `hasil_ulangan_harian`
  ADD PRIMARY KEY (`id_hasil_ulangan_harian`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `guru_id` (`guru_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `pelajaran_id` (`pelajaran_id`),
  ADD KEY `ulangan_siswa_id` (`ulangan_siswa_id`);

--
-- Indeks untuk tabel `jawaban_ujian`
--
ALTER TABLE `jawaban_ujian`
  ADD PRIMARY KEY (`id_jawaban_ujian`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `guru_id` (`guru_id`),
  ADD KEY `pelajaran_id` (`pelajaran_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `daftar_ujian_id` (`daftar_ujian_id`),
  ADD KEY `mapel_ujian_id` (`mapel_ujian_id`),
  ADD KEY `bank_soal_ujian_id` (`bank_soal_ujian_id`);

--
-- Indeks untuk tabel `jawaban_ulangan_harian_siswa`
--
ALTER TABLE `jawaban_ulangan_harian_siswa`
  ADD PRIMARY KEY (`id_jawaban_ulangan_harian_siswa`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `ulangan_siswa_id` (`ulangan_siswa_id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `guru_id` (`guru_id`),
  ADD KEY `pelajaran_id` (`pelajaran_id`),
  ADD KEY `ulangan_harian_id` (`ulangan_harian_id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  ADD PRIMARY KEY (`id_mapel_siswa`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `pelajaran_id` (`pelajaran_id`),
  ADD KEY `guru_id` (`guru_id`);

--
-- Indeks untuk tabel `mapel_ujian`
--
ALTER TABLE `mapel_ujian`
  ADD PRIMARY KEY (`id_mapel_ujian`),
  ADD KEY `daftar_ujian_id` (`daftar_ujian_id`),
  ADD KEY `mapel_siswa_id` (`mapel_siswa_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indeks untuk tabel `profil_user`
--
ALTER TABLE `profil_user`
  ADD PRIMARY KEY (`id_profil_user`),
  ADD KEY `guru_id` (`guru_id`),
  ADD KEY `siswa_id` (`siswa_id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `siswa_id` (`siswa_id`);

--
-- Indeks untuk tabel `siswa_terdaftar`
--
ALTER TABLE `siswa_terdaftar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id_token`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `daftar_ujian_id` (`daftar_ujian_id`);

--
-- Indeks untuk tabel `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id_tugas`),
  ADD KEY `pelajaran_id` (`pelajaran_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `guru_id` (`guru_id`);

--
-- Indeks untuk tabel `tugas_siswa`
--
ALTER TABLE `tugas_siswa`
  ADD PRIMARY KEY (`id_tugas_siswa`),
  ADD KEY `kelas_id_tugas` (`kelas_id_tugas`),
  ADD KEY `tugas_id` (`tugas_id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `pelajaran_id_tugas` (`pelajaran_id_tugas`),
  ADD KEY `guru_id_tugas` (`guru_id_tugas`);

--
-- Indeks untuk tabel `ulangan_harian`
--
ALTER TABLE `ulangan_harian`
  ADD PRIMARY KEY (`id_ulangan_harian`),
  ADD KEY `ulangan_siswa_id` (`ulangan_siswa_id`),
  ADD KEY `pelajaran_id` (`pelajaran_id`),
  ADD KEY `guru_id` (`guru_id`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indeks untuk tabel `ulangan_siswa`
--
ALTER TABLE `ulangan_siswa`
  ADD PRIMARY KEY (`id_ulangan_siswa`),
  ADD KEY `guru_id` (`guru_id`),
  ADD KEY `pelajaran_id` (`pelajaran_id`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `agenda_kelas`
--
ALTER TABLE `agenda_kelas`
  MODIFY `id_agenda_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `agenda_siswa`
--
ALTER TABLE `agenda_siswa`
  MODIFY `id_agenda_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `bank_soal_ujian`
--
ALTER TABLE `bank_soal_ujian`
  MODIFY `id_bank_soal_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `chat_admin`
--
ALTER TABLE `chat_admin`
  MODIFY `id_chat_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `chat_mapel`
--
ALTER TABLE `chat_mapel`
  MODIFY `id_chat_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `daftar_ujian`
--
ALTER TABLE `daftar_ujian`
  MODIFY `id_daftar_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `grup_kelas`
--
ALTER TABLE `grup_kelas`
  MODIFY `id_grup_kelas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `guru_mapel`
--
ALTER TABLE `guru_mapel`
  MODIFY `id_guru_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `hasil_ujian`
--
ALTER TABLE `hasil_ujian`
  MODIFY `id_hasil_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `hasil_ulangan_harian`
--
ALTER TABLE `hasil_ulangan_harian`
  MODIFY `id_hasil_ulangan_harian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `jawaban_ujian`
--
ALTER TABLE `jawaban_ujian`
  MODIFY `id_jawaban_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `jawaban_ulangan_harian_siswa`
--
ALTER TABLE `jawaban_ulangan_harian_siswa`
  MODIFY `id_jawaban_ulangan_harian_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  MODIFY `id_mapel_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `mapel_ujian`
--
ALTER TABLE `mapel_ujian`
  MODIFY `id_mapel_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pelajaran`
--
ALTER TABLE `pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `profil_user`
--
ALTER TABLE `profil_user`
  MODIFY `id_profil_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `siswa_terdaftar`
--
ALTER TABLE `siswa_terdaftar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `token`
--
ALTER TABLE `token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id_tugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tugas_siswa`
--
ALTER TABLE `tugas_siswa`
  MODIFY `id_tugas_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ulangan_harian`
--
ALTER TABLE `ulangan_harian`
  MODIFY `id_ulangan_harian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `ulangan_siswa`
--
ALTER TABLE `ulangan_siswa`
  MODIFY `id_ulangan_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD CONSTRAINT `agenda_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `agenda_ibfk_2` FOREIGN KEY (`pelajaran_id`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `agenda_ibfk_3` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `agenda_kelas`
--
ALTER TABLE `agenda_kelas`
  ADD CONSTRAINT `agenda_kelas_ibfk_1` FOREIGN KEY (`guru_id_mapel`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `agenda_kelas_ibfk_2` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `agenda_kelas_ibfk_3` FOREIGN KEY (`pelajaran_id`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `agenda_siswa`
--
ALTER TABLE `agenda_siswa`
  ADD CONSTRAINT `agenda_siswa_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `agenda_siswa_ibfk_2` FOREIGN KEY (`pelajaran_id`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `agenda_siswa_ibfk_3` FOREIGN KEY (`agenda_id`) REFERENCES `agenda` (`id_agenda`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `agenda_siswa_ibfk_4` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `agenda_siswa_ibfk_5` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `bank_soal_ujian`
--
ALTER TABLE `bank_soal_ujian`
  ADD CONSTRAINT `bank_soal_ujian_ibfk_1` FOREIGN KEY (`pelajaran_id`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bank_soal_ujian_ibfk_2` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bank_soal_ujian_ibfk_3` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bank_soal_ujian_ibfk_4` FOREIGN KEY (`daftar_ujian_id`) REFERENCES `daftar_ujian` (`id_daftar_ujian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bank_soal_ujian_ibfk_5` FOREIGN KEY (`mapel_ujian_id`) REFERENCES `mapel_ujian` (`id_mapel_ujian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `chat_admin`
--
ALTER TABLE `chat_admin`
  ADD CONSTRAINT `chat_admin_ibfk_1` FOREIGN KEY (`pengirim_pesan`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chat_admin_ibfk_2` FOREIGN KEY (`penerima_pesan`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `chat_mapel`
--
ALTER TABLE `chat_mapel`
  ADD CONSTRAINT `chat_mapel_ibfk_1` FOREIGN KEY (`pelajaran_id`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chat_mapel_ibfk_2` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chat_mapel_ibfk_3` FOREIGN KEY (`guru_mapel_id`) REFERENCES `guru_mapel` (`id_guru_mapel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `grup_kelas`
--
ALTER TABLE `grup_kelas`
  ADD CONSTRAINT `grup_kelas_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grup_kelas_ibfk_2` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grup_kelas_ibfk_3` FOREIGN KEY (`pengirim`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grup_kelas_ibfk_4` FOREIGN KEY (`penerima`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guru_ibfk_2` FOREIGN KEY (`pelajaran_id`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `guru_mapel`
--
ALTER TABLE `guru_mapel`
  ADD CONSTRAINT `guru_mapel_ibfk_1` FOREIGN KEY (`mapel_id`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guru_mapel_ibfk_2` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guru_mapel_ibfk_3` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hasil_ujian`
--
ALTER TABLE `hasil_ujian`
  ADD CONSTRAINT `hasil_ujian_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_ujian_ibfk_2` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_ujian_ibfk_3` FOREIGN KEY (`pelajaran_id`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_ujian_ibfk_4` FOREIGN KEY (`daftar_ujian_id`) REFERENCES `daftar_ujian` (`id_daftar_ujian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_ujian_ibfk_5` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_ujian_ibfk_6` FOREIGN KEY (`mapel_ujian_id`) REFERENCES `mapel_ujian` (`id_mapel_ujian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hasil_ulangan_harian`
--
ALTER TABLE `hasil_ulangan_harian`
  ADD CONSTRAINT `hasil_ulangan_harian_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_ulangan_harian_ibfk_2` FOREIGN KEY (`pelajaran_id`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_ulangan_harian_ibfk_3` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_ulangan_harian_ibfk_4` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_ulangan_harian_ibfk_5` FOREIGN KEY (`ulangan_siswa_id`) REFERENCES `ulangan_siswa` (`id_ulangan_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jawaban_ujian`
--
ALTER TABLE `jawaban_ujian`
  ADD CONSTRAINT `jawaban_ujian_ibfk_1` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jawaban_ujian_ibfk_2` FOREIGN KEY (`pelajaran_id`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jawaban_ujian_ibfk_3` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jawaban_ujian_ibfk_4` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jawaban_ujian_ibfk_5` FOREIGN KEY (`daftar_ujian_id`) REFERENCES `daftar_ujian` (`id_daftar_ujian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jawaban_ujian_ibfk_6` FOREIGN KEY (`mapel_ujian_id`) REFERENCES `mapel_ujian` (`id_mapel_ujian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jawaban_ujian_ibfk_7` FOREIGN KEY (`bank_soal_ujian_id`) REFERENCES `bank_soal_ujian` (`id_bank_soal_ujian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jawaban_ulangan_harian_siswa`
--
ALTER TABLE `jawaban_ulangan_harian_siswa`
  ADD CONSTRAINT `jawaban_ulangan_harian_siswa_ibfk_1` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jawaban_ulangan_harian_siswa_ibfk_2` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jawaban_ulangan_harian_siswa_ibfk_3` FOREIGN KEY (`pelajaran_id`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jawaban_ulangan_harian_siswa_ibfk_4` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jawaban_ulangan_harian_siswa_ibfk_5` FOREIGN KEY (`ulangan_siswa_id`) REFERENCES `ulangan_siswa` (`id_ulangan_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jawaban_ulangan_harian_siswa_ibfk_6` FOREIGN KEY (`ulangan_harian_id`) REFERENCES `ulangan_harian` (`id_ulangan_harian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  ADD CONSTRAINT `mapel_siswa_ibfk_1` FOREIGN KEY (`pelajaran_id`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mapel_siswa_ibfk_2` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mapel_siswa_ibfk_3` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mapel_ujian`
--
ALTER TABLE `mapel_ujian`
  ADD CONSTRAINT `mapel_ujian_ibfk_1` FOREIGN KEY (`mapel_siswa_id`) REFERENCES `mapel_siswa` (`id_mapel_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mapel_ujian_ibfk_2` FOREIGN KEY (`daftar_ujian_id`) REFERENCES `daftar_ujian` (`id_daftar_ujian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `profil_user`
--
ALTER TABLE `profil_user`
  ADD CONSTRAINT `profil_user_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `profil_user_ibfk_2` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`siswa_id`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `token_ibfk_1` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `token_ibfk_2` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `token_ibfk_3` FOREIGN KEY (`daftar_ujian_id`) REFERENCES `daftar_ujian` (`id_daftar_ujian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tugas`
--
ALTER TABLE `tugas`
  ADD CONSTRAINT `tugas_ibfk_1` FOREIGN KEY (`pelajaran_id`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tugas_ibfk_2` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tugas_ibfk_3` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tugas_siswa`
--
ALTER TABLE `tugas_siswa`
  ADD CONSTRAINT `tugas_siswa_ibfk_1` FOREIGN KEY (`kelas_id_tugas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tugas_siswa_ibfk_2` FOREIGN KEY (`pelajaran_id_tugas`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tugas_siswa_ibfk_3` FOREIGN KEY (`tugas_id`) REFERENCES `tugas` (`id_tugas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tugas_siswa_ibfk_4` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tugas_siswa_ibfk_5` FOREIGN KEY (`guru_id_tugas`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ulangan_harian`
--
ALTER TABLE `ulangan_harian`
  ADD CONSTRAINT `ulangan_harian_ibfk_1` FOREIGN KEY (`ulangan_siswa_id`) REFERENCES `ulangan_siswa` (`id_ulangan_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ulangan_harian_ibfk_2` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ulangan_harian_ibfk_3` FOREIGN KEY (`pelajaran_id`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ulangan_harian_ibfk_4` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ulangan_siswa`
--
ALTER TABLE `ulangan_siswa`
  ADD CONSTRAINT `ulangan_siswa_ibfk_1` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ulangan_siswa_ibfk_2` FOREIGN KEY (`pelajaran_id`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ulangan_siswa_ibfk_3` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
