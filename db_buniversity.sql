-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 03, 2025 at 01:43 PM
-- Server version: 8.0.35
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_buniversity`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutmes`
--

CREATE TABLE `aboutmes` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aboutmes`
--

INSERT INTO `aboutmes` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Universitas yang berfokus pada integritas, ilmu pengetahuan, dan pengembangan karakter untuk membentuk pemimpin masa depan.', '[\"01JDHW20HWSFV2WVN7BA6J6E1A.png\",\"01JDHW20HXMAEX0V1BJCWFX7EV.png\",\"01JDHW20HYWPWA80W7TYEJ9PCE.png\"]', '2024-11-25 00:36:53', '2024-11-25 00:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `nama`, `nip`, `jabatan`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Muhamad Arif Hidayat, S.Kom', '0728089414', 'Admin Program Studi', '\"01JDHX274CQBQTFR97CWVQ423G.png\"', '2024-11-25 00:54:29', '2024-11-25 00:54:29'),
(2, 'Marta Ulina', '0728089415', 'Staff IT', '\"01JDHX31TVHC0G869KFCXX0WE8.png\"', '2024-11-25 00:54:56', '2024-11-25 00:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cooperations`
--

CREATE TABLE `cooperations` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cooperations`
--

INSERT INTO `cooperations` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, '01JDHW2T4FGV6ENSRVXZM2CFAW.png', '2024-11-25 00:37:19', '2024-11-25 00:37:19'),
(2, '01JDHW34931AKGGNARRJ5GYR8T.png', '2024-11-25 00:37:30', '2024-11-25 00:37:30'),
(3, '01JDHW3EESZA5GBVZ6VT9QBYAE.png', '2024-11-25 00:37:40', '2024-11-25 00:37:40'),
(4, '01JDHW3TJNDCAMHXSQ2Y6XRH5C.png', '2024-11-25 00:37:53', '2024-11-25 00:37:53'),
(5, '01JDHW49GFRC0AG2ZKTHKPA9Q5.png', '2024-11-25 00:38:08', '2024-11-25 00:38:08'),
(6, '01JDHW4N27KHZ03R7HYAJQYN9N.png', '2024-11-25 00:38:20', '2024-11-25 00:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, '<h3>Laboratorium Sistem dan Teknologi Informasi</h3>\n<p style=\"text-align: justify;\">Laboratorium Sistem dan Teknologi Informasi berfokus kepada pengembangan sistem Informasi antara lain Enterprise System, Business Process Management, Business Modelling, Data and Knowledge Management, dan Information System Management. Lab STI juga diharapkan dapat menjadi wadah berbagai riset keahlian Sistem Informasi mulai dari aspek strategis, manajemen proyek, peningkatan performa proses bisnis dengan dukungan SI/TI sampai pada evaluasi kinerja TI dalam mendukung organisasi.</p>\n<h4>Topik Penelitian</h4>\n<ul>\n<li>IT Adoption in Healthcare</li>\n<li>Gamification in Health Apps</li>\n<li>Mobile Health (Wearable Device in Healthcare)</li>\n<li>Big Data in HealthCare</li>\n<li>Internet of Things</li>\n<li>User Centred Design</li>\n<li>Usability Testing</li>\n<li>User Requirement Analysis and Design</li>\n<li>E-government and E-governance</li>\n<li>E-learning</li>\n<li>Health CareData Mining</li>\n</ul>\n<h3>Pengurus Laboratorium</h3>\n<ul>\n<li>Elfan Efendi, S.Kom., M.Kom.</li>\n</ul>', '01JDHVT3YKTBGHMZ0MPCSHSFAA.png', '2024-11-25 00:32:35', '2024-11-25 00:32:35'),
(2, '<h3>Laboratorium ICD</h3>\n<p style=\"text-align: justify;\">Laboratorium ICD adalah laboratorium yang digunakan untuk pembelajaran ilmu kesehatan dan diagnosis penyakit serta tindakan yang harus dilakukan. Lab ini sebagai dasar penunjang dalam pembuatan teknologi kesehatan berbasis kecerdasan buatan.</p>\n<h4>Topik Penelitian</h4>\n<ul>\n<li>e-Rekam Medik</li>\n<li>Sistem Pakar diagnosa penyakit</li>\n</ul>\n<h3>Pengurus Laboratorium</h3>\n<ul>\n<li>Taufan Fadhilah Iskandar, M.Kom</li>\n</ul>', '01JDHVVZM5V3E45QPT1V9BYQHX.png', '2024-11-25 00:33:36', '2024-11-25 00:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_youtube` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_linkedin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_gmaps` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `image`, `link_instagram`, `link_youtube`, `link_linkedin`, `link_facebook`, `alamat`, `email`, `wa`, `link_gmaps`, `created_at`, `updated_at`) VALUES
(1, '01JDHW10KBYBKCKE7Z01E0Y6J6.png', 'https://www.instagram.com/itshafidh_', 'https://www.youtube.com/@BuildWithAngga', 'https://www.linkedin.com/in/ahmad-hafidh-ayatullah/', 'https://www.facebook.com/hafydhayatullah', 'Jl. Teknik Kimia, Keputih, Kec. Sukolilo, Surabaya, Jawa Timur 60111', 'admin@b-university.ac.id', '+62 878-7777-9999', 'https://maps.app.goo.gl/MLXaYywySJgQM6mn7', '2024-11-25 00:36:20', '2024-11-25 00:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `greetings`
--

CREATE TABLE `greetings` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `greetings`
--

INSERT INTO `greetings` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"text-align: justify;\">B-University, yang berdiri pada tahun 2021 di Surabaya, telah berkembang menjadi sebuah perguruan tinggi yang berkomitmen tinggi terhadap kualitas pendidikan. Dengan tiga fakultas utama, yaitu Fakultas Ilmu Kesehatan, Fakultas Ekonomi dan Bisnis, serta Fakultas Teknik, kami berusaha untuk memberikan pendidikan yang holistik dan relevan dengan kebutuhan zaman.<br><br>Menghadapi tantangan global seperti revolusi industri 4.0, kami di B-University berfokus pada pengembangan literasi data, teknologi, dan manusia, yang dipadukan dengan nilai-nilai moral yang kuat. Kami yakin bahwa kombinasi ini akan menghasilkan lulusan yang kompeten, berintegritas, dan siap bersaing di kancah internasional.<br><br>Selain itu, B-University juga menerapkan tata kelola universitas yang baik (Good University Governance) dan bertekad untuk menjadi pusat keunggulan akademik. Visi kami adalah mencetak lulusan yang tidak hanya unggul dalam bidangnya masing-masing, tetapi juga memiliki jiwa sosiopreneur yang mampu memberikan dampak positif bagi masyarakat luas.<br><br>Kami percaya bahwa dengan semangat kebersamaan dan dedikasi yang tinggi, B-University akan terus berkembang menjadi universitas yang tidak hanya berprestasi dalam akademik tetapi juga berkontribusi nyata dalam pembangunan masyarakat yang lebih baik. Semoga Allah SWT selalu memberikan petunjuk dan kekuatan kepada kita semua dalam setiap langkah kita.</p>', '01JDHVQ01VQTGZ57VP3JF3ZEKQ.png', '2024-11-25 00:30:52', '2024-11-25 00:30:52');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"text-align: justify;\">B-University didirikan pada tahun 2021 di Surabaya, sebagai respons terhadap tantangan besar yang dihadapi dunia pendidikan akibat pandemi COVID-19 pada tahun 2020. Pandemi ini tidak hanya mengganggu berbagai sektor kehidupan, tetapi juga mempercepat transformasi digital dalam dunia pendidikan. Menyadari perlunya inovasi dan adaptasi cepat terhadap perubahan ini, para pendiri B-University mengambil langkah berani untuk mendirikan sebuah institusi pendidikan yang mampu menghadapi era baru.<br><br>Dengan visi untuk menciptakan lembaga pendidikan yang fleksibel, adaptif, dan berorientasi pada masa depan, B-University dirancang untuk memenuhi kebutuhan pendidikan di era digital. Tiga fakultas utama didirikan: Fakultas Ilmu Kesehatan, Fakultas Ekonomi dan Bisnis, serta Fakultas Teknik. Fakultas-fakultas ini dipilih untuk memberikan pendidikan yang relevan dengan tuntutan global dan kebutuhan masyarakat akan tenaga profesional yang kompeten.<br><br>Dalam waktu singkat, B-University berhasil menarik perhatian sebagai institusi yang inovatif dan responsif terhadap perkembangan zaman. Dengan pendekatan pembelajaran yang mengintegrasikan teknologi, keterampilan praktis, dan nilai-nilai etika, B-University bertujuan untuk mencetak lulusan yang siap menghadapi tantangan global dan memberikan kontribusi positif bagi masyarakat.<br><br>Kini, meskipun masih berusia muda, B-University terus berupaya memperluas dampaknya dalam dunia pendidikan, berpegang pada prinsip bahwa krisis dapat menjadi peluang untuk menciptakan sesuatu yang lebih baik dan lebih kuat.</p>', '01JDHVK6VCV1DWHJ8B2YVM52QQ.png', '2024-11-25 00:28:48', '2024-11-25 00:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nidn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `topik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `nama`, `nidn`, `pendidikan`, `jabatan`, `email`, `topik`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Elfan Efendi, S.Kom., M.Kom.', '0728089410', 'D4 Teknik Informatika - POLINEMA | S2 Teknik Informatika - ITS', 'Junior Lecturer', 'elfanefendi88@gmail.com', 'Software Engineering', '01JDHWV3P6DTG5FTMX18MK5EYT.png', '2024-11-25 00:50:36', '2024-11-25 00:50:36'),
(2, 'Ahmad Hafidh Ayatullah, M.Kom', '0728089411', 'D4 Teknik Informatika - POLINEMA | S2 Teknik Informatika - ITS', 'Junior Lecturer dan PJ Kerjasama Prodi Teknik Informatika', 'ahmad.hafidhayatullah@gmail.com', 'Artificial Intelligence, Machine Learning, Deep Learning', '01JDHWWGYJFE698R26Y6K9ZXYK.png', '2024-11-25 00:51:22', '2024-11-25 00:51:22'),
(3, 'Della Reno Rinaldi, S.Kom., M.Sc.', '0728089412', 'S1 Teknik Informatika - ITS | S2 Teknik Informatika - UGM', 'Junior Lecturer dan Unit Penjaminan Mutu Prodi Teknik Informatika', 'della@gmail.com', 'Network Security', '01JDHWYWYAWKZ3H4JR1623Y3J2.png', '2024-11-25 00:52:40', '2024-11-25 00:52:40'),
(4, 'Taufan Fadhilah Iskandar, S.Kom., M.Kom.', '0728089413', 'S1 Teknik Informatika Telkom University | S2 Informatika ITS', 'Asisten Ahli', 'taufan@gmail.com', 'Keamanan Data dan Data Mining', '01JDHX109WHK54VN6K2GFR11E9.png', '2024-11-25 00:53:49', '2024-11-25 00:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_06_160150_create_cooperations_table', 1),
(5, '2024_11_06_160239_create_students_table', 1),
(6, '2024_11_06_160424_create_lectures_table', 1),
(7, '2024_11_06_160538_create_admins_table', 1),
(8, '2024_11_06_160627_create_rektors_table', 1),
(9, '2024_11_06_160831_create_greetings_table', 1),
(10, '2024_11_06_160905_create_facilities_table', 1),
(11, '2024_11_06_160928_create_histories_table', 1),
(12, '2024_11_06_160949_create_aboutmes_table', 1),
(13, '2024_11_06_161012_create_visimisis_table', 1),
(14, '2024_11_06_161218_create_announcements_table', 1),
(15, '2024_11_06_161347_create_news_table', 1),
(16, '2024_11_06_164531_create_footers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rektors`
--

CREATE TABLE `rektors` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rektors`
--

INSERT INTO `rektors` (`id`, `nama`, `jabatan`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Angga Setiawan', 'Rektor', '01JDHWDKK5WR7BRN57CSNA3BNQ.png', '2024-11-25 00:43:13', '2024-11-25 00:43:13'),
(2, 'Galih Pratama', 'Wakil Rektor 1 ', '01JDHWE64X6YWK6NDVJSDVX9FB.png', '2024-11-25 00:43:32', '2024-11-25 00:43:32'),
(3, 'Ahmad Hafidh Ayatullah', 'Wakil Rektor 2', '01JDHWEP0RGCQ93J47ZEPNB4DY.png', '2024-11-25 00:43:48', '2024-11-25 00:43:48'),
(4, 'Della Reno Rinaldi', 'Wakil Rektor 3', '01JDHWG14G5D9RN3XET8P7N13Z.png', '2024-11-25 00:44:33', '2024-11-25 00:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('D31f70qZCYKfeboohybmwGixRJvUM9MJ6UD8TiA0', NULL, '162.216.150.175', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3hOR0o3SWUyclZKeVBtdWFteDNDZWc0NkZoSnZKYzNVMTJkTHYyayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vMjAyLjQzLjI0OS42MyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741008363),
('JbPnkLFvKMtLsgNjDqUJPGGyL83p9fQsr6lVTFRo', NULL, '170.106.72.93', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXFLdGY2cEdwNHhWY2J2R2w0a1RaZ1Vhbm9qVXFZbXVwclN0ZjJEZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vMjAyLjQzLjI0OS42MyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741002059),
('mKK53pWQSBpHO7Ra7tg3aqyjI3g87h9LbFeHLZrk', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTVIwbTdUdFU3TVlJU2NIYVNVYjltMFpPenVOSlBkT1pOYUQ0ejRIRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fX0=', 1741009334),
('n1YzdUnRRJKmpQuaBWEVsM0uUizy1pWUh627pnhN', NULL, '71.6.232.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRU5vYjEybWJEUHpLYUpOT0pUdkpqQWRwQXRjZnBRYktSYjhJWTN2VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vMjAyLjQzLjI0OS42MyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741008768),
('xd9iKKza5HD8gR3qGQuM0Jte7NQIThgYWAbWsMbK', NULL, '180.253.164.75', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFZja2RpcFpkb05uYU9qcENrMkNRYnlOb1F0Um5pMlFoTFZKM3hGcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vYnVuaXZlcnNpdHkuZXRlcm5pdHlpbnZpdGF0aW9uLmNvbS9zZG0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741008778);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `namalengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapanggilan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jalur` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `programstudi_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `programstudi_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `namalengkap`, `namapanggilan`, `email`, `nomor_hp`, `jalur`, `image`, `programstudi_1`, `programstudi_2`, `created_at`, `updated_at`) VALUES
(1, 'ahmad hafidh student', 'student', 'student@gmail.com', '087710009999', 'Reguler', '1732546171_tentang-1.png', 'D3 FARMASI', 'S1 KEWIRAUSAHAAN', '2024-11-25 00:49:31', '2024-11-25 00:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$meWEHM7GImSl306bXizPO.jI2G/.WszI/k/tC1Rt0EFYSZWyfx5t6', NULL, '2025-02-04 12:00:17', '2025-02-04 12:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `visimisis`
--

CREATE TABLE `visimisis` (
  `id` bigint UNSIGNED NOT NULL,
  `visi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visimisis`
--

INSERT INTO `visimisis` (`id`, `visi`, `misi`, `image`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"text-align: center;\">\"Menjadi Universitas&nbsp;Yang Inovatif, Profesional dan Islami&rdquo;</p>', '<ol>\n<li>Menyelenggarakan pendidikan yang berkualitas dan berlandaskan nilai keislaman.</li>\n<li>Melaksanakan penelitian yang inovatif bagi kemajuan ilmu pengetahuan dan teknologi, industri dan kesehatan serta kemaslahatan umat.</li>\n<li>Melaksanakan pengabdian kepada masyarakat yang berbasis industri kesehatan.</li>\n<li>Memberikan dasar moral-religius terhadap pengembangan ilmu pengetahuan, teknologi dan seni, serta pembinaan iman dan taqwa dalam rangka da&rsquo;wah islamiyah dan amar ma&rsquo;ruf nahi mungkar.</li>\n<li>Membangun kepercayaan dan mengembangkan kerjasama dengan berbagai pihak untuk meningkatkan kualitas pelaksanaan catur dharma perguruan tinggi.</li>\n</ol>', '[\"01JDHVNTBC7RZ58TTBDHGEJBC4.png\",\"01JDHVNTBEP8F5XMV1GTGJNCKX.png\",\"01JDHVNTBF5KSVRQXRRDKRABYJ.png\"]', '2024-11-25 00:30:14', '2024-11-25 00:30:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutmes`
--
ALTER TABLE `aboutmes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `announcements_slug_unique` (`slug`),
  ADD KEY `announcements_users_id_foreign` (`users_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cooperations`
--
ALTER TABLE `cooperations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `greetings`
--
ALTER TABLE `greetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_slug_unique` (`slug`),
  ADD KEY `news_users_id_foreign` (`users_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `rektors`
--
ALTER TABLE `rektors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visimisis`
--
ALTER TABLE `visimisis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutmes`
--
ALTER TABLE `aboutmes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cooperations`
--
ALTER TABLE `cooperations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `greetings`
--
ALTER TABLE `greetings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rektors`
--
ALTER TABLE `rektors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visimisis`
--
ALTER TABLE `visimisis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
