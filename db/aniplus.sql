-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Nov 2024 pada 02.37
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
-- Database: `aniplus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'srvnt07', '$2y$10$U2jUslXENjCBgdxKTfsx4u76IjmeA5cH9W2HuHgDf1xK5W1sFgsee', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `aniplus`
--

CREATE TABLE `aniplus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `score` double(8,2) NOT NULL,
  `episode` int(11) NOT NULL,
  `tgl_rilis` varchar(255) NOT NULL,
  `season` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `studio` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `trailer` varchar(255) NOT NULL,
  `judul_inggris` varchar(255) NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `aniplus`
--

INSERT INTO `aniplus` (`id`, `judul`, `tipe`, `score`, `episode`, `tgl_rilis`, `season`, `genre`, `studio`, `gambar`, `trailer`, `judul_inggris`, `link`) VALUES
(1, 'Fullmetal Alchemist: Brotherhood', 'tv', 9.10, 64, '5/04/2009', 'spring', 'Action, Adventure, Drama, Fantasy', 'Bones', 'https://cdn.myanimelist.net/images/anime/1208/94745l.jpg', 'https://www.youtube.com/watch?v=--IcmZkvL0Q', 'Fullmetal Alchemist: Brotherhood', 'https://acefile.co/f/22400612/otakudesu_fma-brhd_01-32_720p-rar, https://acefile.co/f/22399159/otakudesu_fma-brhd_33-64_480p-rar'),
(2, 'Steins Gate', 'tv', 9.07, 24, '06/04/2011', 'spring', '[\'Drama\',\'Sci-Fi\',\'Suspense\']', '[\'White Fox\']', 'https://cdn.myanimelist.net/images/anime/1935/127974.jpg', 'https://www.youtube.com/watch?v=uMYhjVwp0Fk', 'Steins Gate', 'https://acefile.co/f/15634961/otakudesu_stgate_720p-rar'),
(3, 'Shingeki no Kyojin Season 3 Part 2', 'tv', 9.05, 10, '29/04/2019', 'spring', '[\'Action\', \'Drama\']', '[\'Wit Studio\']', 'https://cdn.myanimelist.net/images/anime/1517/100633l.jpg', 'https://www.youtube.com/watch?v=hKHepjfj5Tw', 'Attack on Titan Season 3 Part 2', 'https://acefile.co/f/15706966/otakudesu_snk-s3_720p_p2-rar'),
(4, 'Hunter x Hunter (2011)', 'tv', 9.04, 148, '02/10/2011', 'fall', '[\'Action\', \'Adventure\', \'Fantasy\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/1337/99013l.jpg', 'https://www.youtube.com/watch?v=D9iTQRB4XRk', 'Hunter x Hunter', 'https://acefile.co/f/22025889/otakudesu_hntr-x-hntr_001-025_720p-rar, https://acefile.co/f/22029303/otakudesu_hntr-x-hntr_026-050_720p-rar, https://acefile.co/f/22041228/otakudesu_hntr-x-hntr_051-075_720p-rar, https://acefile.co/f/22043802/otakudesu_hntr-x-hntr_076-100_720p-rar, https://acefile.co/f/22047665/otakudesu_hntr-x-hntr_101-125_720p-rar, https://acefile.co/f/22049140/otakudesu_hntr-x-hntr_126-148_720p-rar'),
(5, 'Kaguya-sama wa Kokurasetai: Ultra Romantic', 'tv', 9.04, 13, '09/04/2022', 'spring', '[\'Comedy\', \'Romance\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/1160/122627l.jpg', 'https://www.youtube.com/watch?v=vFN5K-iAyV0', 'Kaguya-sama: Love is War - Ultra Romantic', 'https://acefile.co/f/80682604/otakudesu-net_kaguya-sama-s3_720p-rar'),
(6, 'Koe no Katachi', 'movie', 8.94, 1, '17/09/2016', 'summer', '[\'Award Winning\', \'Drama\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/1122/96435l.jpg', 'https://www.youtube.com/watch?v=XBNWo25izJ8', 'A Silent Voice', 'https://acefile.co/f/99271965/alqanime_bentukdarisuara_bd_720p-mp4'),
(7, 'Clannad: After Story', 'tv', 8.93, 24, '03/10/2008', 'fall', '[\'Drama\', \'Romance\', \'Supernatural\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/1299/110774l.jpg', 'https://www.youtube.com/watch?v=WiTwXIAcm5Q', 'Clannad: After Story', 'https://acefile.co/f/22870650/otakudesu_clnad-s2_720p-rar'),
(8, 'Violet Evergarden Movie', 'movie', 8.89, 1, '18/09/2020', 'summer', '[\'Award Winning\', \'Drama\', \'Fantasy\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/1825/110716l.jpg', 'https://www.youtube.com/watch?v=NSIzsFOfd8M', 'Violet Evergarden: The Movie', 'https://acefile.co/f/96852331/alqanime_vioevgmov2_bd_720p-mp4'),
(9, 'Monster', 'tv', 8.87, 74, '07/04/2004', 'spring', '[\'Drama\', \'Mystery\', \'Suspense\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/10/18793l.jpg', 'https://www.youtube.com/watch?v=9aS-EgdAq6U', 'Monster', 'https://shorturl.at/axCFT, https://shorturl.at/efirL, https://shorturl.at/ryFO6'),
(10, 'Kimi no Na wa', 'movie', 8.84, 1, '26/08/2016', 'summer', '[\'Award Winning\', \'Drama\', \'Supernatural\']', '[\'CoMix Wave Films\']', 'https://cdn.myanimelist.net/images/anime/5/87048l.jpg', 'https://www.youtube.com/watch?v=3KR8_igDs1Y', 'Your Name.', 'https://acefile.co/f/94395755/kuruminime-kimi-no-na-wa-bd720p-rar?'),
(11, 'Vinland Saga Season 2', 'tv', 8.83, 24, '10/01/2023', 'winter', '[\'Action\', \'Adventure\', \'Drama\']', '[\'MAPPA\']', 'https://cdn.myanimelist.net/images/anime/1170/124312l.jpg', 'https://www.youtube.com/watch?v=jBetoIlnDIM', 'Vinland Saga Season 2', 'https://acefile.co/f/99347046/otakudesu-net_vld-saga-s2_720p-rar'),
(12, 'Shingeki no Kyojin: The Final Season', 'tv', 8.80, 16, '07/12/2020', 'winter', '[\'Action\', \'Drama\']', '[\'MAPPA\']', 'https://cdn.myanimelist.net/images/anime/1000/110531l.jpg', 'https://www.youtube.com/watch?v=SlNpRThS9t8', 'Attack on Titan: Final Season', 'https://acefile.co/f/96571199/otakudesu-net_snk-s4_720p-rar'),
(13, 'Mob Psycho 100 II', 'tv', 8.80, 13, '07/01/2019', 'winter', '[\'Action\', \'Comedy\', \'Supernatural\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/1918/96303l.jpg', 'https://www.youtube.com/watch?v=Pr43Sayk37s', 'Mob Psycho 100 II', 'https://acefile.co/f/21359331/otakudesu_mobpsy100-s2_720p-rar'),
(14, 'Kimetsu no Yaiba: Yuukaku-hen', 'tv', 8.79, 11, '05/12/2021', 'winter', '[\'Action\', \'Fantasy\']', '[\'ufotable\']', 'https://cdn.myanimelist.net/images/anime/1908/120036l.jpg', 'https://www.youtube.com/watch?v=QwvWdnd2Ktg', 'Demon Slayer: Kimetsu no Yaiba Entertainment District Arc', 'https://acefile.co/f/69251599/otakudesu-io_kny-yh_720p-rar'),
(15, 'Haikyu!! 3rd Season', 'tv', 8.78, 10, '08/10/2016', 'fall', '[\'Sports\']', '[\'Production I.G\']', 'https://cdn.myanimelist.net/images/anime/7/81992l.jpg', 'https://www.youtube.com/watch?v=kJfU5boNUIE', 'Haikyuu!! Karasuno Koukou vs. Shiratorizawa Gakuen Koukou', 'https://acefile.co/f/22257479/otakudesu_hkyuus3_720p-rar'),
(16, 'Sen to Chihiro no Kamikakushi', 'movie', 8.78, 1, '20/07/2001', 'summer', '[\'Adventure\', \'Award Winning\', \'Supernatural\']', '[\'Studio Ghibli\']', 'https://cdn.myanimelist.net/images/anime/6/79597l.jpg', 'https://www.youtube.com/watch?v=ByXuk9QqQkk', 'Spirited Away', 'https://acefile.co/f/9721308/kusonime-petualangan-di-negri-hantu-bedeh-720p-rar'),
(17, 'Shingeki no Kyojin: The Final Season Part 2', 'tv', 8.77, 12, '10/01/2022', 'winter', '[\'Action\', \'Drama\']', '[\'MAPPA\']', 'https://cdn.myanimelist.net/images/anime/1948/120625l.jpg', 'https://www.youtube.com/watch?v=EIVVnLlhzr0', 'Attack on Titan: Final Season Part 2', 'https://acefile.co/f/96691017/otakudesu-net_snk-s4-p2_720p_bd-rar'),
(18, 'Vinland Saga', 'tv', 8.74, 24, '08/07/2019', 'summer', '[\'Action\', \'Adventure\', \'Drama\']', '[\'Wit Studio\']', 'https://cdn.myanimelist.net/images/anime/1500/103005l.jpg', 'https://www.youtube.com/watch?v=f8JrZ7Q_p-8', 'Vinland Saga', 'https://acefile.co/f/17877490/otakudesu_vld-saga_720p-rar'),
(19, 'Mob Psycho 100 III', 'tv', 8.72, 12, '06/10/2022', 'fall', '[\'Action\', \'Comedy\', \'Supernatural\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/1228/125011l.jpg', 'https://www.youtube.com/watch?v=b1miJsAVYJA', 'Mob Psycho 100 III', 'https://acefile.co/f/91262604/otakudesu-net_mobpsy100-s3_720p-rar'),
(20, '86 Part 2', 'tv', 8.71, 12, '03/10/2021', 'fall', '[\'Action\', \'Drama\', \'Sci-Fi\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/1321/117508l.jpg', 'https://www.youtube.com/watch?v=Oo8ICn48l6E', '86 Eighty-Six Part 2', 'https://acefile.co/f/71068156/otakudesu-io_86-s2_720p-rar'),
(21, 'Bungou Stray Dogs 5th Season', 'tv', 8.68, 11, '12/07/2023', 'summer', '[\'Action\', \'Mystery\', \'Supernatural\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/1161/136691l.jpg', 'https://www.youtube.com/watch?v=1eCDPSa6Faw', 'Bungo Stray Dogs 5', 'https://acefile.co/f/101143842/otakudesu-net_bsd-s5_720p-rar'),
(22, 'Fate/stay night Movie: Heaven\'s Feel - III. Spring Song', 'movie', 8.68, 1, '15/08/2020', 'summer', '[\'Action\', \'Fantasy\', \'Supernatural\']', '[\'ufotable\']', 'https://cdn.myanimelist.net/images/anime/1142/112957l.jpg', 'https://www.youtube.com/watch?v=zfjbLLxdZOU', 'Fate/stay night: Heaven\'s Feel - III. Spring Song', 'https://acefile.co/f/96752149/kuruminime-fsn-hf-movie-3-bd720p-rar?'),
(23, 'Violet Evergarden', 'tv', 8.67, 13, '11/01/2018', 'winter', '[\'Drama\', \'Fantasy\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/1795/95088l.jpg', 'https://www.youtube.com/watch?v=g5xWqjFglsk', 'Violet Evergarden', 'https://acefile.co/f/14935431/otakudesu_violetevgrden_720p_bd-rar'),
(24, 'Mononoke Hime', 'movie', 8.67, 1, '12/07/1997', 'summer', '[\'Action\', \'Adventure\', \'Award Winning\', \'Fantasy\']', '[\'Studio Ghibli\']', 'https://cdn.myanimelist.net/images/anime/7/75919l.jpg', 'https://www.youtube.com/watch?v=4OiMOHRDs14', 'Princess Mononoke', 'https://acefile.co/f/101872621/kusonime-putri-mononoke-bd-720p-rar'),
(25, 'Howl no Ugoku Shiro', 'movie', 8.66, 1, '20/11/2004', 'fall', '[\'Adventure\', \'Award Winning\', \'Drama\', \'Fantasy\', \'Romance\']', '[\'Studio Ghibli\']', 'https://cdn.myanimelist.net/images/anime/5/75810l.jpg', 'https://www.youtube.com/watch?v=iwROgK94zcM', 'Howl\'s Moving Castle', 'https://acefile.co/f/101872591/kusonime-istana-bergerak-bd-720p-rar'),
(26, 'Shigatsu wa Kimi no Uso', 'tv', 8.65, 22, '10/10/2014', 'fall', '[\'Drama\', \'Romance\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/3/67177l.jpg', 'https://www.youtube.com/watch?v=aMJpI_fEsA4', 'Your Lie in April', 'https://acefile.co/f/15734315/otakudesu_kimiuso_720p-rar'),
(27, 'Kaguya-sama wa Kokurasetai? Tensai-tachi no Renai Zunousen', 'tv', 8.64, 12, '11/04/2020', 'spring', '[\'Comedy\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/1764/106659l.jpg', 'https://www.youtube.com/watch?v=_NkxM_uLUpw', 'Kaguya-sama: Love is War Season 2', 'https://acefile.co/f/25391194/otakudesu_kaguyasama-s2_720p-rar'),
(28, 'Haikyuu!! Second Season', 'tv', 8.63, 25, '04/10/2015', 'fall', '[\'Sports\']', '[\'Production I.G\']', 'https://cdn.myanimelist.net/images/anime/9/76662l.jpg', 'https://www.youtube.com/watch?v=SIg52zW5ncM', 'Haikyu!! 2nd Season', 'https://acefile.co/f/22269557/otakudesu_hkyuu_s2_720p-rar'),
(29, 'Jujutsu Kaisen', 'tv', 8.63, 24, '03/10/2020', 'fall', '[\'Action\', \'Award Winning\', \'Fantasy\']', '[\'MAPPA\']', 'https://cdn.myanimelist.net/images/anime/1171/109222l.jpg', 'https://www.youtube.com/watch?v=4A_X-Dvl0ws', 'Jujutsu Kaisen', 'https://acefile.co/f/41054906/otakudesu_jk_720p-rar'),
(30, 'Death Note', 'tv', 8.62, 37, '04/10/2006', 'fall', '[\'Supernatural\', \'Suspense\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/9/9453l.jpg', 'https://www.youtube.com/watch?v=Vt_3c8BgxV4', 'Death Note', 'https://acefile.co/f/22674471/otakudesu_dtnote_1-20_720p-rar, https://acefile.co/f/22674044/otakudesu_dtnote_21-37_720p-rar'),
(31, 'Shingeki no Kyojin Season 3', 'tv', 8.62, 12, '23/07/2018', 'summer', '[\'Action\', \'Drama\']', '[\'Wit Studio\']', 'https://cdn.myanimelist.net/images/anime/1173/92110l.jpg', 'https://www.youtube.com/watch?v=EHzBhrncmac', 'Attack on Titan Season 3', 'https://acefile.co/f/15705198/otakudesu_snk-s3_720p-rar, https://acefile.co/f/15706966/otakudesu_snk-s3_720p_p2-rar'),
(32, 'Kimetsu no Yaiba Movie: Mugen Ressha-hen', 'movie', 8.61, 1, '16/10/2020', 'fall', '[\'Action\', \'Fantasy\']', '[\'ufotable\']', 'https://cdn.myanimelist.net/images/anime/1704/106947l.jpg', 'https://www.youtube.com/watch?v=PrZ0O8Qp18s', 'Demon Slayer: Kimetsu no Yaiba - The Movie: Mugen Train', 'https://acefile.co/f/69550075/alqanime_pembasmiiblis_keretatakterbatas_bd_720p-mp4'),
(33, 'Evangelion: 3.0+1.0 Thrice Upon a Time', 'movie', 8.60, 1, '08/03/2021', 'spring', '[\'Action\', \'Award Winning\', \'Drama\', \'Sci-Fi\', \'Suspense\']', '[\'Khara\']', 'https://cdn.myanimelist.net/images/anime/1422/113533.jpg', 'https://www.youtube.com/watch?v=GZfuWMDEJpw', 'Shin Evangelion Movie: ||', 'https://acefile.co/f/98029643/'),
(34, 'Spy x Family', 'tv', 8.60, 12, '09/04/2022', 'spring', '[\'Action\', \'Award Winning\', \'Comedy\']', '[\'Wit Studio\', \'CloverWorks\']', 'https://cdn.myanimelist.net/images/anime/1441/122795l.jpg', 'https://www.youtube.com/watch?v=ofXigq9aIpo', 'Spy x Family', 'https://acefile.co/f/80791062/otakudesu-net_sfx_720p-rar'),
(35, 'JoJo no Kimyou na Bouken Part 5: Ougon no Kaze', 'tv', 8.58, 39, '06/10/2018', 'fall', '[\'Action\', \'Adventure\', \'Supernatural\']', '[\'David Production\']', 'https://cdn.myanimelist.net/images/anime/1572/95010l.jpg', 'https://www.youtube.com/watch?v=R92KmKcg07Y', 'JoJo\'s Bizarre Adventure: Golden Wind', 'https://acefile.co/f/24686750/otakudesu_jojo-golden_720p-p1-rar, https://acefile.co/f/24690729/otakudesu_jojo-golden_720p-p2-rar'),
(36, 'Chainsaw Man', 'tv', 8.57, 12, '12/10/2022', 'fall', '[\'Action\', \'Fantasy\']', '[\'MAPPA\']', 'https://cdn.myanimelist.net/images/anime/1806/126216l.jpg', 'https://www.youtube.com/watch?v=q15CRdE5Bv0', 'Chainsaw Man', 'https://acefile.co/f/91676125/otakudesu-net_cm_720p-rar'),
(37, 'Yojouhan Shinwa Taikei', 'tv', 8.56, 11, '23/04/2010', 'spring', '[\'Award Winning\', \'Comedy\', \'Mystery\', \'Romance\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/1633/123689l.jpg', 'https://www.youtube.com/watch?v=hzvU8t3TRio', 'The Tatami Galaxy', 'https://acefile.co/f/38915836/otakudesu_yojouhanshin_720p-rar'),
(38, 'Fate/Zero 2nd Season', 'tv', 8.55, 12, '08/04/2012', 'spring', '[\'Action\', \'Fantasy\', \'Supernatural\']', '[\'ufotable\']', 'https://cdn.myanimelist.net/images/anime/1522/117645l.jpg', 'https://www.youtube.com/watch?v=FkZ1euZ-S-Y', 'Fate/Zero Season 2', 'https://acefile.co/f/22498440/otakudesu-org_fzero-s2_720p-rar'),
(39, 'Neon Genesis Evangelion: The End of Evangelion', 'movie', 8.55, 1, '19/07/1997', 'summer', '[\'Avant Garde\', \'Drama\', \'Sci-Fi\']', '[\'Gainax\', \'Production I.G\']', 'https://cdn.myanimelist.net/images/anime/1404/98182l.jpg', 'https://www.youtube.com/watch?v=Gk72E4qgEng', 'Neon Genesis Evangelion: The End of Evangelion', 'https://acefile.co/f/21966372/maxnime-neon-genesis-evangelion-the-end-of-evangelion-720p-mkv'),
(40, 'Shingeki no Kyojin', 'tv', 8.54, 25, '07/04/2013', 'spring', '[\'Action\', \'Award Winning\', \'Drama\', \'Suspense\']', '[\'Wit Studio\']', 'https://cdn.myanimelist.net/images/anime/10/47347l.jpg', 'https://www.youtube.com/watch?v=LHtdKWJdif4', 'Attack on Titan', 'https://acefile.co/f/15675757/otakudesu_snk_720p-rar'),
(41, 'Ousama Ranking', 'tv', 8.54, 23, '15/10/2021', 'fall', '[\'Adventure\', \'Fantasy\']', '[\'Wit Studio\']', 'https://cdn.myanimelist.net/images/anime/1347/117616l.jpg', 'https://www.youtube.com/watch?v=c1HHoucIxRg', 'Ranking of Kings', 'https://acefile.co/f/71195516/otakudesu_ousamarank_720p-rar'),
(42, 'Haikyuu!! To the Top Part 2', 'tv', 8.54, 12, '03/10/2020', 'fall', '[\'Sports\']', '[\'Production I.G\']', 'https://cdn.myanimelist.net/images/anime/1453/106768l.jpg', 'https://www.youtube.com/watch?v=QiMriorA2UY', 'Haikyu!! To the Top 2nd-cour', 'https://acefile.co/f/33685839/otakudesu_hky-s4_720p-rar'),
(43, 'Perfect Blue', 'movie', 8.54, 1, '28/02/1998', 'winter', '[\'Avant Garde\', \'Drama\', \'Horror\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/1254/134212l.jpg', 'https://www.youtube.com/watch?v=kkP4h-gUWfo', 'Perfect Blue', 'https://acefile.co/f/102058272/kuruminime-per-blue-bd720p-rar'),
(44, 'Steins Gate 0', 'tv', 8.53, 23, '12/04/2018', 'spring', '[\'Drama\',\'Sci-Fi\',\'Suspense\']', '[\'White Fox\']', 'https://cdn.myanimelist.net/images/anime/1375/93521.jpg', 'https://www.youtube.com/watch?v=xPK3ehVMbmY', 'Steins Gate 0', 'https://acefile.co/f/15640045/otakudesu_stgate-0_720p-rar'),
(45, 'Sora yori mo Tooi Basho', 'tv', 8.52, 13, '02/01/2018', 'winter', '[\'Adventure\', \'Comedy\', \'Drama\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/6/89879l.jpg', 'https://www.youtube.com/watch?v=jFgvK5BzGck', 'A Place Further Than The Universe', 'https://acefile.co/f/15650660/otakudesu_sytb_720p-rar'),
(46, 'Shingeki no Kyojin Season 2', 'tv', 8.51, 12, '01/04/2017', 'spring', '[\'Action\', \'Drama\', \'Suspense\']', '[\'Wit Studio\']', 'https://cdn.myanimelist.net/images/anime/4/84177l.jpg', 'https://www.youtube.com/watch?v=zLaVP8IhIuc', 'Attack on Titan Season 2', 'https://acefile.co/f/15698710/otakudesu_snk-s2_720p-rar'),
(47, 'Hotaru no Haka', 'movie', 8.51, 1, '16/04/1988', 'spring', '[\'Drama\']', '[\'Studio Ghibli\']', 'https://cdn.myanimelist.net/images/anime/7/75808l.jpg', 'https://www.youtube.com/watch?v=4vPeTSRd580', 'Grave of the Fireflies', 'https://acefile.co/f/100355583/kuruminime-hotaru-no-haka-bd720p-rar?'),
(48, 'JoJo no Kimyou na Bouken Part 4: Diamond wa Kudakenai', 'tv', 8.50, 39, '02/04/2016', 'spring', '[\'Action\', \'Adventure\', \'Supernatural\']', '[\'David Production\']', 'https://cdn.myanimelist.net/images/anime/3/79156l.jpg', 'https://www.youtube.com/watch?v=gagUdy3AY14', 'JoJo\'s Bizarre Adventure: Diamond is Unbreakable', 'https://acefile.co/f/24573847/otakudesu_jojo-diamond_720p-p1-rar, https://acefile.co/f/24575003/otakudesu_jojo-diamond_720p-p2-rar'),
(49, 'Kimetsu no Yaiba', 'tv', 8.50, 26, '06/04/2019', 'spring', '[\'Action\', \'Award Winning\', \'Fantasy\']', '[\'ufotable\']', 'https://cdn.myanimelist.net/images/anime/1286/99889l.jpg', 'https://www.youtube.com/watch?v=6vMuWuWlW4I', 'Demon Slayer: Kimetsu no Yaiba', 'https://acefile.co/f/12654300/otakudesu_kny_720p-rar'),
(50, 'One Punch Man', 'tv', 8.50, 12, '05/10/2015', 'fall', '[\'Action\', \'Comedy\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/12/76049l.jpg', 'https://www.youtube.com/watch?v=ExUMiF1L0HA', 'One Punch Man', 'https://acefile.co/f/21140664/otakudesu_opm_720p-rar'),
(51, 'Fate/stay night Movie: Heaven\'s Feel - II. Lost Butterfly', 'movie', 8.50, 1, '12/01/2019', 'winter', '[\'Action\', \'Fantasy\', \'Supernatural\']', '[\'ufotable\']', 'https://cdn.myanimelist.net/images/anime/1974/98158l.jpg', 'https://www.youtube.com/watch?v=NhJQDAIwQVc', 'Fate/stay night: Heaven\'s Feel - II. Lost Butterfly', 'https://acefile.co/f/70115223/wibudesu-takdir-serasa-bungga-pilem-2-bd-720p-rar'),
(52, 'Mob Psycho 100', 'tv', 8.49, 12, '11/07/2016', 'summer', '[\'Action\', \'Comedy\', \'Supernatural\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/8/80356l.jpg', 'https://www.youtube.com/watch?v=F8g3TuKsQHs', 'Mob Psycho 100', 'https://acefile.co/f/21540731/otakudesu_mobpsy_720p-rar'),
(53, 'Rainbow: Nisha Rokubou no Shichinin', 'tv', 8.48, 26, '07/04/2010', 'spring', '[\'Drama\', \'Suspense\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/9/72697l.jpg', 'https://www.youtube.com/watch?v=2gOG1ixkFS4', 'Rainbow', 'https://acefile.co/f/101483083/kuruminime-rainbow-nisha-rar?'),
(54, 'Banana Fish', 'tv', 8.48, 24, '06/07/2018', 'summer', '[\'Action\', \'Adventure\', \'Drama\', \'Suspense\']', '[\'MAPPA\']', 'https://cdn.myanimelist.net/images/anime/1190/93472l.jpg', 'https://www.youtube.com/watch?v=YUGS9j6pcV4', 'Banana Fish', 'https://acefile.co/f/23135968/otakudesu_banfish_720p-rar'),
(55, 'Chihayafuru 3', 'tv', 8.47, 24, '23/10/2019', 'fall', '[\'Drama\', \'Sports\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/1898/110709l.jpg', 'https://www.youtube.com/watch?v=yEflqf1U9lA', 'Chihayafuru 3', 'https://acefile.co/f/25473796/otakudesu_cfuru-s3_720p-rar'),
(56, 'Jujutsu Kaisen 0 Movie', 'movie', 8.47, 1, '24/12/2021', 'fall', '[\'Action\', \'Fantasy\']', '[\'MAPPA\']', 'https://cdn.myanimelist.net/images/anime/1121/119044l.jpg', 'https://www.youtube.com/watch?v=e8nij7jRB6M', 'Jujutsu Kaisen 0', 'https://acefile.co/f/99513355/alqanime_jjkszero_bd_720p-mp4'),
(57, 'Nichijou', 'tv', 8.46, 26, '03/04/2011', 'spring', '[\'Comedy\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/3/75617l.jpg', 'https://www.youtube.com/watch?v=CD6VdVDVDXI', 'Nichijou - My Ordinary Life', 'https://acefile.co/f/21210782/otakudesu_nichijou_720p-rar'),
(58, 'Bungou Stray Dogs 4th Season', 'tv', 8.45, 13, '04/01/2023', 'winter', '[\'Action\', \'Mystery\', \'Supernatural\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/1263/132759l.jpg', 'https://www.youtube.com/watch?v=z9ZhVooqA-Y', 'Bungo Stray Dogs 4', 'https://acefile.co/f/98130326/otakudesu-net_bsd-s4_720p-rar'),
(59, 'Steins Gate Movie: Fuka Ryouiki no D?j? vu', 'movie', 8.45, 1, '20/04/2013', 'spring', '[\'Drama\',\'Sci-Fi\']', '[\'White Fox\']', 'https://cdn.myanimelist.net/images/anime/1611/112806.jpg', 'https://www.youtube.com/watch?v=kUkcQb-K3KU', 'Steins Gate: The Movie - Load Region of D?j? Vu', 'https://acefile.co/f/73427749/wibudesu-ponsel-ilmuwan-untuk-mengirim-pesan-ke-masa-lalu-terulang-lagi-bd-720p-rar'),
(60, 'Haikyuu!!', 'tv', 8.44, 25, '06/04/2014', 'spring', '[\'Sports\']', '[\'Production I.G\']', 'https://cdn.myanimelist.net/images/anime/7/76014l.jpg', 'https://www.youtube.com/watch?v=JOGp2c7-cKc', 'Haikyu!!', 'https://acefile.co/f/22270170/otakudesu_hkyuu_720p-rar'),
(61, 'JoJo no Kimyou na Bouken Part 3: Stardust Crusaders 2nd Season', 'tv', 8.44, 24, '10/01/2015', 'winter', '[\'Action\', \'Adventure\', \'Supernatural\']', '[\'David Production\']', 'https://cdn.myanimelist.net/images/anime/11/75045l.jpg', 'https://www.youtube.com/watch?v=JA48VBSl4nc', 'JoJo\'s Bizarre Adventure: Stardust Crusaders - Battle in Egypt', 'https://acefile.co/f/19708148/otakudesu_jojo-starcsdr-s2_720p-rar'),
(62, 'Re:Zero kara Hajimeru Isekai Seikatsu 2nd Season Part 2', 'tv', 8.44, 12, '06/01/2021', 'winter', '[\'Drama\', \'Fantasy\', \'Suspense\']', '[\'White Fox\']', 'https://cdn.myanimelist.net/images/anime/1724/117421l.jpg', 'https://www.youtube.com/watch?v=cG68UqKqYq0', 'Re:ZERO -Starting Life in Another World- Season 2 Part 2', 'https://acefile.co/f/41219618/otakudesu_rezero-s2_720p_p2-rar'),
(63, 'Vivy: Fluorite Eye\'s Song', 'tv', 8.41, 13, '03/04/2021', 'spring', '[\'Action\', \'Sci-Fi\', \'Suspense\']', '[\'Wit Studio\']', 'https://cdn.myanimelist.net/images/anime/1637/115052l.jpg', 'https://www.youtube.com/watch?v=t3IHpQZHPFY', 'Vivy -Fluorite Eye\'s Song-', 'https://acefile.co/f/48117181/otakudesu_vivy-fes_720p-rar'),
(64, 'Kaguya-sama wa Kokurasetai: Tensai-tachi no Renai Zunousen', 'tv', 8.41, 12, '12/01/2019', 'winter', '[\'Comedy\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/1295/106551l.jpg', 'https://www.youtube.com/watch?v=Ti2kJ-GYO68', 'Kaguya-sama: Love is War', 'https://acefile.co/f/21918559/otakudesu_kaguya-sama_720p-rar'),
(65, 'Violet Evergarden Gaiden: Eien to Jidou Shuki Ningyou', 'movie', 8.41, 1, '06/09/2019', 'summer', '[\'Drama\', \'Fantasy\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/1667/112943l.jpg', 'https://www.youtube.com/watch?v=lWRXk7nOhsE', 'Violet Evergarden: Eternity and the Auto Memory Doll', 'https://acefile.co/f/96848502/alqanime_vioevgmov_bd_720p-mp4'),
(66, 'Josee to Tora to Sakana-tachi', 'movie', 8.41, 1, '25/12/2020', 'fall', '[\'Drama\', \'Romance\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/1714/108892l.jpg', 'https://www.youtube.com/watch?v=sw07I2OH4Ho', 'Josee, the Tiger and the Fish', 'https://acefile.co/f/98062871/alqanime_persahabatan-harimau-dan-ikan-bedeh_720p-zip'),
(67, 'Kimetsu no Yaiba: Mugen Ressha-hen', 'tv', 8.39, 7, '10/10/2021', 'fall', '[\'Action\', \'Fantasy\']', '[\'ufotable\']', 'https://cdn.myanimelist.net/images/anime/1065/118763l.jpg', 'https://www.youtube.com/watch?v=ATJYac_dORw', 'Demon Slayer: Kimetsu no Yaiba Mugen Train Arc', 'https://acefile.co/f/63016760/otakudesu_kny-mrh_720p-rar'),
(68, 'Kaze ga Tsuyoku Fuiteiru', 'tv', 8.39, 23, '03/10/2018', 'fall', '[\'Drama\', \'Sports\']', '[\'Production I.G\']', 'https://cdn.myanimelist.net/images/anime/1936/129119l.jpg', 'https://www.youtube.com/watch?v=ANzTSVvgXVI', 'Run with the Wind', 'https://acefile.co/f/21898962/otakudesu_kazetsu-fuiteiru_720p-rar'),
(69, 'Suzume no Tojimari', 'movie', 8.39, 1, '11/11/2022', 'fall', '[\'Adventure\', \'Fantasy\']', '[\'CoMix Wave Films\']', 'https://cdn.myanimelist.net/images/anime/1598/128450l.jpg', 'https://www.youtube.com/watch?v=FVU0zESXS5c', 'Suzume', 'https://acefile.co/f/99476558/alqanime_suzumetoji_webdl_720p-mp4'),
(70, 'Chihayafuru 2', 'tv', 8.38, 25, '12/01/2013', 'winter', '[\'Drama\', \'Sports\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/6/47435l.jpg', 'https://www.youtube.com/watch?v=GKuHlE7-H00', 'Chihayafuru 2', 'https://acefile.co/f/22940455/otakudesu_chyfuru-s2_720p-rar'),
(71, 'Haikyuu!! To the Top', 'tv', 8.36, 13, '11/01/2020', 'winter', '[\'Sports\']', '[\'Production I.G\']', 'https://cdn.myanimelist.net/images/anime/1813/105367l.jpg', 'https://www.youtube.com/watch?v=gJv9fFJmnCA', 'Haikyu!! To the Top', 'https://acefile.co/f/20750203/otakudesu_hky-s4_mkv720p-rar'),
(72, 'Usagi Drop', 'tv', 8.36, 11, '08/07/2011', 'summer', '[\'Slice of Life\']', '[\'Production I.G\']', 'https://cdn.myanimelist.net/images/anime/2/29665l.jpg', 'https://www.youtube.com/watch?v=PlWk-96JHz4', 'Bunny Drop', 'https://acefile.co/f/19162390/otakudesu_usadrop_720p-rar'),
(73, 'Neon Genesis Evangelion', 'tv', 8.35, 26, '04/10/1995', 'fall', '[\'Action\', \'Avant Garde\', \'Award Winning\', \'Drama\', \'Sci-Fi\', \'Suspense\']', '[\'Gainax\', \'Tatsunoko Production\']', 'https://cdn.myanimelist.net/images/anime/1314/108941.jpg', 'www.youtube.com/watch?v=13nSISwxrY4Q', 'Shinseiki Evangelion', 'https://acefile.co/f/95570478/kuruminime-nge-dub-englishbd720p-rar?'),
(74, 'Boku no Hero Academia 6th Season', 'tv', 8.35, 25, '01/10/2022', 'fall', '[\'Action\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/1483/126005l.jpg', 'https://www.youtube.com/watch?v=nTWeiY3yZRs', 'My Hero Academia Season 6', 'https://acefile.co/f/97951090/otakudesu-net_bnha-s6_720p-rar'),
(75, 'K-On! Movie', 'movie', 8.35, 1, '03/12/2011', 'fall', '[\'Award Winning\', \'Comedy\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/5/76233l.jpg', 'https://www.youtube.com/watch?v=f-_BPUz-Rxs', 'K-ON! The Movie', 'https://acefile.co/f/5327246/batchindo_k-on-movie-720p-rar'),
(76, 'Kiseijuu: Sei no Kakuritsu', 'tv', 8.34, 24, '09/10/2014', 'fall', '[\'Action\', \'Horror\', \'Sci-Fi\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/3/73178l.jpg', 'https://www.youtube.com/watch?v=9Oe9umzw1Gc', 'Parasyte: The Maxim', 'https://acefile.co/f/21775438/otakudesu_kiseijuu-snk_720p-rar'),
(77, 'Re:Zero kara Hajimeru Isekai Seikatsu 2nd Season', 'tv', 8.34, 13, '08/07/2020', 'summer', '[\'Drama\', \'Fantasy\', \'Suspense\']', '[\'White Fox\']', 'https://cdn.myanimelist.net/images/anime/1444/108005l.jpg', 'https://www.youtube.com/watch?v=41Gj4Dri8wo', 'Re:ZERO -Starting Life in Another World- Season 2', 'https://acefile.co/f/29604513/otakudesu_rezero-s2_720p_p1-rar'),
(78, 'Kimetsu no Yaiba: Katanakaji no Sato-hen', 'tv', 8.34, 11, '09/04/2023', 'spring', '[\'Action\', \'Fantasy\']', '[\'ufotable\']', 'https://cdn.myanimelist.net/images/anime/1765/135099l.jpg', 'https://www.youtube.com/watch?v=a9tq0aS5Zu8', 'Demon Slayer: Kimetsu no Yaiba Swordsmith Village Arc', 'https://acefile.co/f/99322252/otakudesu-net_kny-ksh_720p-rar'),
(79, 'One Outs', 'tv', 8.33, 25, '08/10/2008', 'fall', '[\'Sports\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/7/21065l.jpg', 'https://www.youtube.com/watch?v=frCs_tLwelw', 'One Outs', 'https://acefile.co/f/11080403/'),
(80, 'Fate/stay night: Unlimited Blade Works 2nd Season', 'tv', 8.32, 13, '05/04/2015', 'spring', '[\'Action\', \'Fantasy\', \'Supernatural\']', '[\'ufotable\']', 'https://cdn.myanimelist.net/images/anime/1881/124810l.jpg', 'https://www.youtube.com/watch?v=0PY9qcyr3-0', 'Fate/stay night [Unlimited Blade Works] Season 2', 'https://acefile.co/f/11879136/otakudesu_fsn_ubw-s2_720p-rar'),
(81, 'Boku dake ga Inai Machi', 'tv', 8.31, 12, '08/01/2016', 'winter', '[\'Mystery\', \'Supernatural\', \'Suspense\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/10/77957l.jpg', 'https://www.youtube.com/watch?v=DwmxEAWjTQQ', 'ERASED', 'https://acefile.co/f/23002484/otakudesu_bokumachi_720p_bd-rar'),
(82, 'Sakamichi no Apollon', 'tv', 8.31, 12, '13/04/2012', 'spring', '[\'Drama\', \'Romance\']', '[\'Tezuka Productions\', \'MAPPA\']', 'https://cdn.myanimelist.net/images/anime/1604/98654l.jpg', 'https://www.youtube.com/watch?v=fpJSOUCSWGI', 'Kids on the Slope', 'https://acefile.co/f/15736458/otakudesu_sakaapollon_720p-rar'),
(83, 'Ano Hi Mita Hana no Namae wo Bokutachi wa Mada Shiranai.', 'tv', 8.31, 11, '15/04/2011', 'spring', '[\'Drama\', \'Supernatural\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/5/79697l.jpg', 'https://www.youtube.com/watch?v=_p7fkViY-0I', 'Anohana: The Flower We Saw That Day', 'https://acefile.co/f/14877472/otakudesu-anohana-720p-rar'),
(84, 'Blue Lock', 'tv', 8.30, 24, '09/10/2022', 'fall', '[\'Sports\']', '[\'8 bit\']', 'https://cdn.myanimelist.net/images/anime/1258/126929.jpg', 'https://www.youtube.com/watch?v=p2QriyWhK00', 'Blue Lock', 'https://acefile.co/f/98021761/otakudesu-net_blk_720p-rar'),
(85, 'Evangelion: 2.0 You Can (Not) Advance', 'movie', 8.30, 1, '27/07/2009', 'summer', '[\'Action\', \'Drama\', \'Sci-Fi\', \'Suspense\']', '[\'Khara\']', 'https://cdn.myanimelist.net/images/anime/5/74983.jpg', 'https://www.youtube.com/watch?v=hIsA86te7BM', 'Evangelion Movie 2: Ha', 'https://acefile.co/f/70040288/wibudesu-robot-alien-2-2-bd-720p-rar'),
(86, 'Kuroko no Basket 3rd Season', 'tv', 8.30, 25, '11/01/2015', 'winter', '[\'Sports\']', '[\'Production I.G\']', 'https://cdn.myanimelist.net/images/anime/4/68299l.jpg', 'https://www.youtube.com/watch?v=H1TvpW04Oxs', 'Kuroko\'s Basketball 3', 'https://acefile.co/f/21682793/otakudesu_knb_s3_720p-rar'),
(87, 'Spy x Family Part 2', 'tv', 8.30, 13, '01/10/2022', 'fall', '[\'Action\', \'Comedy\']', '[\'Wit Studio\', \'CloverWorks\']', 'https://cdn.myanimelist.net/images/anime/1111/127508l.jpg', 'https://www.youtube.com/watch?v=WFVY88Urzuc', 'Spy x Family Part 2', 'https://acefile.co/f/91264074/otakudesu-net_sxf-p2_720p-rar'),
(88, 'Hibike! Euphonium 2', 'tv', 8.30, 13, '06/10/2016', 'fall', '[\'Drama\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/10/81155l.jpg', 'https://www.youtube.com/watch?v=d2Di5swwzxg', 'Sound! Euphonium 2', 'https://acefile.co/f/22146895/otakudesu_hibkeuphnm_s2_720p_bd-rar'),
(89, 'Beck', 'tv', 8.29, 26, '07/10/2004', 'fall', '[\'Comedy\', \'Drama\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/11/11636l.jpg', 'https://www.youtube.com/watch?v=GNgReTHy1EA', 'Beck: Mongolian Chop Squad', 'https://acefile.co/f/102029859/kuruminime-beck-rar?'),
(90, 'Kobayashi-san Chi no Maid Dragon S', 'tv', 8.29, 12, '08/07/2021', 'summer', '[\'Fantasy\', \'Slice of Life\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/1252/115539l.jpg', 'https://www.youtube.com/watch?v=Sro80JOeFNw', 'Miss Kobayashi\'s Dragon Maid S', 'https://acefile.co/f/56420043/otakudesu_kobayashimaid-s2_720p-rar'),
(91, 'Tenki no Ko', 'movie', 8.29, 1, '19/07/2019', 'summer', '[\'Award Winning\', \'Drama\', \'Fantasy\', \'Romance\']', '[\'CoMix Wave Films\']', 'https://cdn.myanimelist.net/images/anime/1880/101146l.jpg', 'https://www.youtube.com/watch?v=Q6iK6DjV_iE', 'Weathering with You', 'https://acefile.co/f/23861646/neonime_tnk-bd-720p-zip'),
(92, 'Shinsekai yori', 'tv', 8.28, 25, '29/09/2012', 'fall', '[\'Drama\', \'Fantasy\', \'Horror\', \'Mystery\', \'Sci-Fi\', \'Suspense\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/1549/136389l.jpg', 'https://www.youtube.com/watch?v=oYWBoSDpwdQ', 'From the New World', 'https://acefile.co/f/15672799/otakudesu_shinyori_720p_bd-rar'),
(93, 'Fate/Zero   ', 'tv', 8.28, 13, '02/10/2011', 'fall', '[\'Action\', \'Fantasy\', \'Supernatural\']', '[\'ufotable\']', 'https://cdn.myanimelist.net/images/anime/1887/117644l.jpg', 'https://www.youtube.com/watch?v=21-1-ioCfXY', 'Fate/Zero', 'https://acefile.co/f/22499139/otakudesu-org_fzero_720p-rar'),
(94, '86', 'tv', 8.28, 11, '11/04/2021', 'spring', '[\'Action\', \'Drama\', \'Sci-Fi\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/1987/117507l.jpg', 'https://www.youtube.com/watch?v=WVegRUOgkPM', '86 Eighty-Six', 'https://acefile.co/f/48119470/otakudesu_86_720p-rar'),
(95, 'Redline', 'movie', 8.28, 1, '14/08/2009', 'summer', '[\'Action\', \'Sci-Fi\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/12/28553l.jpg', 'https://www.youtube.com/watch?v=RB-2Hjj_eEg', 'Redline', 'https://acefile.co/f/101700889/kuruminime-redline-bd720p-rar?'),
(96, 'Gyakkyou Burai Kaiji: Ultimate Survivor', 'tv', 8.27, 26, '03/10/2007', 'fall', '[\'Suspense\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/12/80032l.jpg', 'https://www.youtube.com/watch?v=EK1LiaJ-TSU', 'Kaiji: Ultimate Survivor', 'https://acefile.co/f/46076372/otakudesu_gbk-us_720p-rar'),
(97, 'Gin no Saji 2nd Season', 'tv', 8.27, 11, '10/01/2014', 'winter', '[\'Comedy\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/8/57995l.jpg', 'https://www.youtube.com/watch?v=BxnVsmI6JeQ', 'Silver Spoon 2nd Season', 'https://acefile.co/f/22368057/otakudesu_gisajis2_720p-rar'),
(98, 'Tokyo Godfathers', 'movie', 8.27, 1, '08/11/2003', 'fall', '[\'Award Winning\', \'Comedy\', \'Drama\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/1480/132791l.jpg', 'https://www.youtube.com/watch?v=_5nfwQ9OWXY', 'Tokyo Godfathers', 'https://acefile.co/f/73720016/wibudesu-ibukota-ayah-baik-bd-720p-mkv-rar'),
(99, 'Space☆Dandy 2nd Season', 'tv', 8.26, 13, '06/07/2014', 'summer', '[\'Comedy\', \'Sci-Fi\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/3/64451l.jpg', 'https://www.youtube.com/watch?v=xVde2A6zqUg', 'Space Dandy 2nd Season', 'https://acefile.co/f/101954581/kuruminime-spadan-s2-480p-rar?'),
(100, 'Tenkuu no Shiro Laputa', 'movie', 8.26, 1, '02/08/1986', 'summer', '[\'Adventure\', \'Award Winning\', \'Fantasy\', \'Romance\', \'Sci-Fi\']', '[\'Studio Ghibli\']', 'https://cdn.myanimelist.net/images/anime/5/37799l.jpg', 'https://www.youtube.com/watch?v=8ykEy-yPBFc', 'Castle in the Sky', 'https://acefile.co/f/100914859/kuruminime-shiro-laputa-bd720p-rar?'),
(101, 'Stranger: Mukou Hadan', 'movie', 8.26, 1, '29/09/2007', 'summer', '[\'Action\', \'Adventure\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/9/87066l.jpg', 'https://www.youtube.com/watch?v=dYGpmgxKpNs', 'Sword of the Stranger', 'https://acefile.co/f/102089149/kuruminime-sword-of-the-stranger-movie-bd-720p-rar?'),
(102, 'Gyakkyou Burai Kaiji: Hakairoku-hen', 'tv', 8.25, 26, '06/04/2011', 'spring', '[\'Suspense\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/10/30599l.jpg', 'https://www.youtube.com/watch?v=bfLEjIpesBk', 'Kaiji: Against All Rules', 'https://acefile.co/f/46222131/otakudesu_gbk-hh_720p-rar'),
(103, 'Tonari no Totoro', 'movie', 8.25, 1, '16/04/1988', 'spring', '[\'Adventure\', \'Award Winning\', \'Supernatural\']', '[\'Studio Ghibli\']', 'https://cdn.myanimelist.net/images/anime/4/75923l.jpg', 'https://www.youtube.com/watch?v=92a7Hj0ijLs', 'My Neighbor Totoro', 'https://acefile.co/f/94005571/alqanime_tnrttr_bd_720p-mp4'),
(104, 'Sennen Joyuu', 'movie', 8.25, 1, '14/09/2002', 'summer', '[\'Action\', \'Adventure\', \'Award Winning\', \'Drama\', \'Fantasy\', \'Romance\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/1648/93626l.jpg', 'https://www.youtube.com/watch?v=vpGrD5wUzKE', 'Millennium Actress', 'https://acefile.co/f/73013265/wibudesu-artis-generasi-milenial-bd-720p-rar'),
(105, 'Dororo', 'tv', 8.24, 24, '07/01/2019', 'winter', '[\'Action\', \'Adventure\', \'Supernatural\']', '[\'Tezuka Productions\', \'MAPPA\']', 'https://cdn.myanimelist.net/images/anime/1879/100467l.jpg', 'https://www.youtube.com/watch?v=v3ApcTz1lwE', 'Dororo', 'https://acefile.co/f/19574138/otakudesu_drro_720p-rar'),
(106, 'Re:Zero kara Hajimeru Isekai Seikatsu', 'tv', 8.23, 25, '04/04/2016', 'spring', '[\'Drama\', \'Fantasy\', \'Suspense\']', '[\'White Fox\']', 'https://cdn.myanimelist.net/images/anime/1522/128039l.jpg', 'https://www.youtube.com/watch?v=vFfXjuVA1Jk', 'Re:ZERO -Starting Life in Another World-', 'https://acefile.co/f/18547218/otakudesu_rezero_720p-rar'),
(107, 'Tengoku Daimakyou', 'tv', 8.23, 13, '01/04/2023', 'spring', '[\'Adventure\', \'Mystery\', \'Sci-Fi\']', '[\'Production I.G\']', 'https://cdn.myanimelist.net/images/anime/1121/133132l.jpg', 'https://www.youtube.com/watch?v=62_aXZGkG3E', 'Heavenly Delusion', 'https://acefile.co/f/99763513/otakudesu-net_tgkdmky_720p-rar'),
(108, 'Kuroko no Basket 2nd Season', 'tv', 8.22, 25, '06/10/2013', 'fall', '[\'Sports\']', '[\'Production I.G\']', 'https://cdn.myanimelist.net/images/anime/9/56155l.jpg', 'https://www.youtube.com/watch?v=11ROABkyews', 'Kuroko\'s Basketball 2', 'https://acefile.co/f/21681842/otakudesu_knb-s2_720p-rar'),
(109, 'Ao Ashi', 'tv', 8.22, 24, '09/04/2022', 'spring', '[\'Sports\']', '[\'Production I.G\']', 'https://cdn.myanimelist.net/images/anime/1731/120871l.jpg', 'https://www.youtube.com/watch?v=PQbCVl_CDzI', 'Aoashi', 'https://acefile.co/f/84481081/otakudesu-net_aoshi_720p-rar'),
(110, 'Great Pretender', 'tv', 8.22, 23, '09/07/2020', 'summer', '[\'Action\', \'Adventure\', \'Mystery\']', '[\'Wit Studio\']', 'https://cdn.myanimelist.net/images/anime/1418/107954l.jpg', 'https://www.youtube.com/watch?v=dr5yBBAR9Tg', 'Great Pretender', 'https://acefile.co/f/44324996/otakudesu_gp_720p-rar'),
(111, 'Bungou Stray Dogs 3rd Season', 'tv', 8.22, 12, '12/04/2019', 'spring', '[\'Action\', \'Mystery\', \'Supernatural\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/1037/100463l.jpg', 'https://www.youtube.com/watch?v=Bro64355Kws', 'Bungo Stray Dogs 3', 'https://acefile.co/f/15172241/otakudesu_bsd-s3_720p-rar'),
(112, 'Majo no Takkyuubin', 'movie', 8.22, 1, '29/07/1989', 'summer', '[\'Adventure\', \'Award Winning\', \'Comedy\', \'Drama\', \'Fantasy\']', '[\'Studio Ghibli\']', 'https://cdn.myanimelist.net/images/anime/10/75916l.jpg', 'https://www.youtube.com/watch?v=4bG17OYs-GA', 'Kiki\'s Delivery Service', 'https://acefile.co/f/71913384/wibudesu_pengiriman-ekspres-penyihir_bd_720p-rar'),
(113, 'Mimi wo Sumaseba', 'movie', 8.22, 1, '15/07/1995', 'summer', '[\'Drama\', \'Romance\']', '[\'Studio Ghibli\']', 'https://cdn.myanimelist.net/images/anime/1899/109259l.jpg', 'https://www.youtube.com/watch?v=0pVkiod6V0U', 'Whisper of the Heart', 'https://acefile.co/f/101926267/kuruminime-mimi-wo-sumaseba-bd720p-rar?'),
(114, 'Shoujo Shuumatsu Ryokou', 'tv', 8.21, 12, '06/10/2017', 'fall', '[\'Adventure\', \'Mystery\', \'Sci-Fi\', \'Slice of Life\']', '[\'White Fox\']', 'https://cdn.myanimelist.net/images/anime/12/88321l.jpg', 'https://www.youtube.com/watch?v=Zb_AKZfO7BE', 'Girls\' Last Tour', 'https://acefile.co/f/15651012/otakudesu_shoshuuryo_720p-rar'),
(115, 'Kaguya-hime no Monogatari', 'movie', 8.21, 1, '23/11/2013', 'fall', '[\'Award Winning\', \'Fantasy\']', '[\'Studio Ghibli\']', 'https://cdn.myanimelist.net/images/anime/1935/93606l.jpg', 'https://www.youtube.com/watch?v=W71mtorCZDw', 'The Tale of the Princess Kaguya', 'https://acefile.co/f/15502548/maxnime_kaguhime-bd-720p-mkv'),
(116, 'Vanitas no Karte Part 2', 'tv', 8.20, 12, '15/01/2022', 'winter', '[\'Action\', \'Fantasy\', \'Mystery\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/1247/120579l.jpg', 'https://www.youtube.com/watch?v=WzP7aiESfFw', 'The Case Study of Vanitas Part 2', 'https://acefile.co/f/78584644/otakudesu-io_vnk-s2_720p-rar'),
(117, 'Lycoris Recoil', 'tv', 8.19, 13, '02/07/2022', 'summer', '[\'Action\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/1392/124401l.jpg', 'https://www.youtube.com/watch?v=F5DMjhg3A6c', 'Lycoris Recoil', 'https://acefile.co/f/84551735/otakudesu-net_lr_720p-rar'),
(118, 'Fate/stay night: Unlimited Blade Works', 'tv', 8.19, 12, '12/10/2014', 'fall', '[\'Action\', \'Fantasy\', \'Supernatural\']', '[\'ufotable\']', 'https://cdn.myanimelist.net/images/anime/12/67333l.jpg', 'https://www.youtube.com/watch?v=61RuoLIlCUM', 'Fate/stay night [Unlimited Blade Works]', 'https://acefile.co/f/11871277/otakudesu_fsn_ubw_720p-rar'),
(119, 'Bungou Stray Dogs 2nd Season', 'tv', 8.19, 12, '06/10/2016', 'fall', '[\'Action\', \'Mystery\', \'Supernatural\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/1572/133096l.jpg', 'https://www.youtube.com/watch?v=A70E8AXQhjg', 'Bungo Stray Dogs 2', 'https://acefile.co/f/15170747/otakudesu_bgstrydogs-s2_720p-rar'),
(120, 'No Game No Life: Zero', 'movie', 8.19, 1, '15/07/2017', 'summer', '[\'Drama\', \'Fantasy\', \'Romance\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/1085/90759l.jpg', 'https://www.youtube.com/watch?v=Raag8InWBVY', 'No Game No Life: Zero', 'https://acefile.co/f/100563769/alqanime_ngnl0mov_bd_720p-mp4'),
(121, 'Liz to Aoi Tori', 'movie', 8.19, 1, '21/04/2018', 'spring', '[\'Award Winning\', \'Drama\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/1638/93032l.jpg', 'https://www.youtube.com/watch?v=yyysLf1FkvE', 'Liz and the Blue Bird', 'https://acefile.co/f/70602368/wibudesu-lis-dan-burung-biru-720p-bd-rar'),
(122, 'Chihayafuru', 'tv', 8.18, 25, '05/10/2011', 'fall', '[\'Drama\', \'Sports\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/3/35749l.jpg', 'https://www.youtube.com/watch?v=Y8U-E8hldHk', 'Chihayafuru', 'https://acefile.co/f/22941500/otakudesu_chyfuru_720p-rar'),
(123, 'Ballroom e Youkoso', 'tv', 8.18, 24, '09/07/2017', 'summer', '[\'Sports\']', '[\'Production I.G\']', 'https://cdn.myanimelist.net/images/anime/5/86739l.jpg', 'https://www.youtube.com/watch?v=9K3XP1Fcpcg', 'Welcome to the Ballroom', 'https://acefile.co/f/23137114/otakudesu_balleyou_720p-rar'),
(124, 'K-ON! Season 2', 'tv', 8.17, 26, '07/04/2010', 'spring', '[\'Award Winning\', \'Comedy\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/12/76121l.jpg', 'https://www.youtube.com/watch?v=BfoUo18iw74', 'K-ON! Season 2', 'https://acefile.co/f/70920129/wibudesu-klub-musik-dengan-teh-s2-bd-720p-rar'),
(125, 'Fate/stay night Movie: Heaven\'s Feel - I. Presage Flower', 'movie', 8.17, 1, '14/10/2017', 'fall', '[\'Action\', \'Fantasy\', \'Supernatural\']', '[\'ufotable\']', 'https://cdn.myanimelist.net/images/anime/1274/102213l.jpg', 'https://www.youtube.com/watch?v=AMr5pXzpvP0', 'Fate/stay night: Heaven\'s Feel - I. Presage Flower', 'https://acefile.co/f/70045455/wibudesu-takdir-serasa-tanda-bungga-pilem-1-bd-720p-moesubs-rar'),
(126, 'Jigokuraku', 'tv', 8.16, 13, '01/04/2023', 'spring', '[\'Action\', \'Adventure\', \'Fantasy\']', '[\'MAPPA\']', 'https://cdn.myanimelist.net/images/anime/1075/131925l.jpg', 'https://www.youtube.com/watch?v=1JLeeulO8AU', 'Hell\'s Paradise', 'https://acefile.co/f/100124284/otakudesu-net_jgkrku_720p-rar'),
(127, 'Noragami Aragoto', 'tv', 8.15, 13, '03/10/2015', 'fall', '[\'Action\', \'Fantasy\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/1689/94850l.jpg', 'https://www.youtube.com/watch?v=nI_2PqGZb-c', 'Noragami Aragoto', 'https://acefile.co/f/21188969/otakudesu_noragamis2_720p-rar'),
(128, 'Death Parade', 'tv', 8.15, 12, '10/01/2015', 'winter', '[\'Drama\', \'Supernatural\', \'Suspense\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/5/71553l.jpg', 'https://www.youtube.com/watch?v=O1X6czI74UQ', 'Death Parade', 'https://acefile.co/f/22672040/otakudesu_deathprde_720p-rar'),
(129, 'Kyoukai no Kanata Movie 2: I\'ll Be Here - Mirai-hen', 'movie', 8.15, 1, '25/04/2015', 'spring', '[\'Action\', \'Fantasy\', \'Romance\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/9/72614l.jpg', 'https://www.youtube.com/watch?v=U7F0Z88GMZU', 'Beyond the Boundary: I\'ll Be Here - Future', 'https://acefile.co/f/71518546/wibudesu-melampaui-batas-saya-akan-berada-di-sini-masa-depan-720p-rar'),
(130, 'Seirei no Moribito', 'tv', 8.13, 26, '07/04/2007', 'spring', '[\'Action\', \'Adventure\', \'Fantasy\']', '[\'Production I.G\']', 'https://cdn.myanimelist.net/images/anime/4/50337l.jpg', 'https://www.youtube.com/watch?v=9I8doA-vYvU', 'Moribito - Guardian of the Spirit', 'https://acefile.co/f/73154586/wibudesu-menyelamatkan_delapan_nyawa_penting-bd-480p-rar'),
(131, 'Boku no Hero Academia 2nd Season', 'tv', 8.11, 25, '01/04/2017', 'spring', '[\'Action\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/12/85221l.jpg', 'https://www.youtube.com/watch?v=ayeDDe8eN1E', 'My Hero Academia Season 2', 'https://acefile.co/f/22976029/otakudesu_bokuhero-s2_720p-rar'),
(132, 'Toki wo Kakeru Shoujo', 'movie', 8.11, 1, '15/07/2006', 'summer', '[\'Award Winning\', \'Drama\', \'Romance\', \'Sci-Fi\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/1/2432l.jpg', 'https://www.youtube.com/watch?v=eWnTeKEsDlU', 'The Girl Who Leapt Through Time', 'https://acefile.co/f/73685271/wibudesu-penjelajah-waktu_bd_720p-rar'),
(133, 'Kaze Tachinu', 'movie', 8.11, 1, '20/07/2013', 'summer', '[\'Award Winning\', \'Drama\', \'Romance\']', '[\'Studio Ghibli\']', 'https://cdn.myanimelist.net/images/anime/8/52353l.jpg', 'https://www.youtube.com/watch?v=RzSpDgiF5y8', 'The Wind Rises', 'https://acefile.co/f/70953226/wibudesu-angin-naik-bd-720p-rar'),
(134, 'Chuunibyou demo Koi ga Shitai! Movie: Take On Me', 'movie', 8.11, 1, '06/01/2018', 'winter', '[\'Comedy\', \'Drama\', \'Romance\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/2/89974l.jpg', 'https://www.youtube.com/watch?v=HEe7QMGGrMw', 'Love, Chunibyo & Other Delusions!: Take On Me', 'https://acefile.co/f/69739759/wibudesu-gadis-remaja-suka-berkhayal-tom-bd-720p-rar'),
(135, 'JoJo no Kimyou na Bouken Part 3: Stardust Crusaders', 'tv', 8.10, 24, '05/04/2014', 'spring', '[\'Action\', \'Adventure\', \'Supernatural\']', '[\'David Production\']', 'https://cdn.myanimelist.net/images/anime/11/55267l.jpg', 'https://www.youtube.com/watch?v=ER_SrymjhHQ', 'JoJo\'s Bizarre Adventure: Stardust Crusaders', 'https://acefile.co/f/19599531/otakudesu_jojo-bzradvntr-starcsdr_720p-rar'),
(136, 'Overlord IV', 'tv', 8.09, 13, '05/07/2022', 'summer', '[\'Action\', \'Adventure\', \'Fantasy\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/1530/120110l.jpg', 'https://www.youtube.com/watch?v=tNYQjEyTO6s', 'Overlord IV', 'https://acefile.co/f/85092277/otakudesu-net_ovlord-s4_720p-rar'),
(137, 'Zankyou no Terror', 'tv', 8.09, 11, '11/07/2014', 'summer', '[\'Mystery\', \'Suspense\']', '[\'MAPPA\']', 'https://cdn.myanimelist.net/images/anime/1417/117422l.jpg', 'https://www.youtube.com/watch?v=nLVy50LnLMM', 'Terror in Resonance', 'https://acefile.co/f/15257087/otakudesu_zanterror_720p-rar'),
(138, 'Gin no Saji', 'tv', 8.09, 11, '12/07/2013', 'summer', '[\'Comedy\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/6/49237l.jpg', 'https://www.youtube.com/watch?v=b-yCzcYqH5E', 'Silver Spoon', 'https://acefile.co/f/22368681/otakudesu_gisaji_720p-rar'),
(139, 'No Game No Life', 'tv', 8.08, 12, '09/04/2014', 'spring', '[\'Comedy\', \'Ecchi\', \'Fantasy\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/1074/111944l.jpg', 'https://www.youtube.com/watch?v=fV7nGIUuyzA', 'No Game, No Life', 'https://acefile.co/f/21191644/otakudesu_ngnl_720p-rar'),
(140, 'Kuroko no Basket Movie 4: Last Game', 'movie', 8.08, 1, '18/03/2017', 'winter', '[\'Sports\']', '[\'Production I.G\']', 'https://cdn.myanimelist.net/images/anime/2/83106l.jpg', 'https://www.youtube.com/watch?v=0PFFkFhdnks', 'Kuroko\'s Basketball the Movie: Last Game', 'https://acefile.co/f/71520959/wibudesu-rambut-biru-pemain-basket-pertandingan-terakhir-bd-720p-rar'),
(141, 'Hyouka', 'tv', 8.07, 22, '23/04/2012', 'spring', '[\'Mystery\', \'Slice of Life\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/13/50521l.jpg', 'https://www.youtube.com/watch?v=N5nNKAVB4O4', 'Hyouka', 'https://acefile.co/f/70669531/wibudesu-pendiam-pemecah-misteri-bd-720p-rar'),
(142, 'Kuroko no Basket', 'tv', 8.06, 25, '08/04/2012', 'spring', '[\'Sports\']', '[\'Production I.G\']', 'https://cdn.myanimelist.net/images/anime/11/50453l.jpg', 'https://www.youtube.com/watch?v=FTUIs_SuQfw', 'Kuroko\'s Basketball', 'https://acefile.co/f/21681787/otakudesu_knb_720p-rar'),
(143, 'Mahoutsukai no Yome', 'tv', 8.06, 24, '08/10/2017', 'fall', '[\'Drama\', \'Fantasy\', \'Romance\']', '[\'Wit Studio\']', 'https://cdn.myanimelist.net/images/anime/3/88476l.jpg', 'https://www.youtube.com/watch?v=3UsftPxFPwA', 'The Ancient Magus\' Bride', 'https://acefile.co/f/21407676/otakudesu_mahouyome_720p-rar'),
(144, 'Gosick', 'tv', 8.05, 24, '08/01/2011', 'winter', '[\'Drama\', \'Mystery\', \'Romance\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/11/27906l.jpg', 'https://www.youtube.com/watch?v=QMFLC-SKtFs', 'Gosick', 'https://acefile.co/f/22337221/otakudesu_gsick_720p-rar'),
(145, 'Dorohedoro', 'tv', 8.05, 12, '13/01/2020', 'winter', '[\'Action\', \'Comedy\', \'Fantasy\', \'Horror\']', '[\'MAPPA\']', 'https://cdn.myanimelist.net/images/anime/1740/104786l.jpg', 'https://www.youtube.com/watch?v=IS6l1K19N1U', 'Dorohedoro', 'https://acefile.co/f/20503294/otakudesu_drhdr_720p-rar'),
(146, 'Omoide no Marnie', 'movie', 8.05, 1, '19/07/2014', 'summer', '[\'Drama\', \'Mystery\']', '[\'Studio Ghibli\']', 'https://cdn.myanimelist.net/images/anime/7/64293l.jpg', 'https://www.youtube.com/watch?v=jjmrxqcQdYg', 'When Marnie Was There', 'https://acefile.co/f/72350332/wibudesu-ketika-ada-kamu-disini-720p-rar'),
(147, 'Dennou Coil', 'tv', 8.04, 26, '12/05/2007', 'spring', '[\'Adventure\', \'Award Winning\', \'Drama\', \'Mystery\', \'Sci-Fi\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/5/12844l.jpg', 'https://www.youtube.com/watch?v=4bkG6YDjfcM', 'Den-noh Coil', 'https://acefile.co/f/69915232/wibudesu-kaca-mata-penghubung-dunia-maya-rar'),
(148, 'Boku no Hero Academia 3rd Season', 'tv', 8.04, 25, '07/04/2018', 'spring', '[\'Action\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/1319/92084l.jpg', 'https://www.youtube.com/watch?v=wMCeFIPwrHE', 'My Hero Academia Season 3', 'https://acefile.co/f/98911208/otakudesu-net_bnha-s3_720p-rar');
INSERT INTO `aniplus` (`id`, `judul`, `tipe`, `score`, `episode`, `tgl_rilis`, `season`, `genre`, `studio`, `gambar`, `trailer`, `judul_inggris`, `link`) VALUES
(149, 'Paprika', 'movie', 8.04, 1, '25/11/2006', 'fall', '[\'Avant Garde\', \'Award Winning\', \'Fantasy\', \'Horror\', \'Mystery\', \'Sci-Fi\', \'Suspense\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/1929/93629l.jpg', 'https://www.youtube.com/watch?v=JRwJdwTRfIA', 'Paprika', 'https://acefile.co/f/72636740/wibudesu-teknologi-yang-dapat-menjelajah-pikiran-bd-720p-rar'),
(150, 'Summer Wars', 'movie', 8.03, 1, '01/08/2009', 'summer', '[\'Award Winning\', \'Comedy\', \'Sci-Fi\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/1593/116751l.jpg', 'https://www.youtube.com/watch?v=ggPPyOmomDk', 'Summer Wars', 'https://acefile.co/f/73503549/wibudesu-perang-daring-musim-panas-bd-720p-rar'),
(151, 'SK∞', 'tv', 8.02, 12, '10/01/2021', 'winter', '[\'Sports\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/1549/119195l.jpg', 'https://www.youtube.com/watch?v=PcS3QIc6ma8', 'SK8 the Infinity', 'https://acefile.co/f/42018521/otakudesu_sk8_720p-rar'),
(152, 'Tokyo Magnitude 8.0', 'tv', 8.01, 11, '10/07/2009', 'summer', '[\'Award Winning\', \'Drama\']', '[\'Bones\', \'Kinema Citrus\']', 'https://cdn.myanimelist.net/images/anime/10/13776l.jpg', 'https://www.youtube.com/watch?v=IqhrKb11rEU', 'Tokyo Magnitude 8.0', 'https://acefile.co/f/15437506/otakudesu_tm8-0_720p-rar'),
(153, 'Evangelion: 1.0 You Are (Not) Alone', 'movie', 8.00, 1, '01/09/2007', 'summer', '[\'Action\', \'Avant Garde\', \'Award Winning\', \'Drama\', \'Sci-Fi\', \'Suspense\']', '[\'Khara\']', 'https://cdn.myanimelist.net/images/anime/7/74975.jpg', 'https://www.youtube.com/watch?v=rof6qBz84vE', 'Evangelion Movie 1: Jo', 'https://acefile.co/f/70040090/wibudesu-robot-alien-1-1-bd-720p-rar'),
(154, 'Clannad', 'tv', 8.00, 23, '05/10/2007', 'fall', '[\'Drama\', \'Romance\', \'Supernatural\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/1804/95033l.jpg', 'https://www.youtube.com/watch?v=pTTsmwHxHns', 'Clannad', 'https://acefile.co/f/22871810/otakudesu_clnad_720p-rar'),
(155, 'Hibike! Euphonium', 'tv', 8.00, 13, '08/04/2015', 'spring', '[\'Drama\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/6/72445l.jpg', 'https://www.youtube.com/watch?v=r_Kk9xhVkB8', 'Sound! Euphonium', 'https://acefile.co/f/22156107/otakudesu_hibieupho_720p-rar'),
(156, 'Sword Art Online: Progressive Movie - Hoshi Naki Yoru no Aria', 'movie', 7.98, 1, '30/10/2021', 'fall', '[\'Action\', \'Adventure\', \'Fantasy\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/1590/116274l.jpg', 'https://www.youtube.com/watch?v=XvJRE6Sm-lM', 'Sword Art Online the Movie: Progressive - Aria of a Starless Night', 'https://acefile.co/f/79647446/wibudesu-seni-pedang-daring-malam-tanpa-bintang-bd-720p-rar'),
(157, 'Kobayashi-san Chi no Maid Dragon', 'tv', 7.96, 13, '12/01/2017', 'winter', '[\'Fantasy\', \'Slice of Life\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/5/85434l.jpg', 'https://www.youtube.com/watch?v=okBHQWnYImg', 'Miss Kobayashi\'s Dragon Maid', 'https://acefile.co/f/21717186/otakudesu_kobayashimaid_720p-rar'),
(158, 'Tokyo Revengers Season 1', 'tv', 7.95, 24, '11/04/2021', 'spring', '[\'Action\', \'Drama\', \'Supernatural\']', '[\'Lidenfilms\']', 'https://cdn.myanimelist.net/images/anime/1839/122012.jpg', 'https://www.youtube.com/watch?v=4pL0DrkmNaQ', 'Tokyo Revengers Season 1', 'https://acefile.co/f/73683054/wibudesu-melintas-waktu-untuk-menyelamatkan-seseorang-01-12-720p-rar, https://acefile.co/f/73683130/wibudesu-melintas-waktu-untuk-menyelamatkan-seseorang-13-24-720p-rar'),
(159, 'Noragami', 'tv', 7.95, 12, '05/01/2014', 'winter', '[\'Action\', \'Fantasy\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/1886/128266l.jpg', 'https://www.youtube.com/watch?v=IQnnwUXd_0U', 'Noragami', 'https://acefile.co/f/21187580/otakudesu_noragamis1_720p-rar'),
(160, 'Overlord III', 'tv', 7.92, 13, '10/07/2018', 'summer', '[\'Action\',\'Adventure\',\'Fantasy\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/1511/93473.jpg', 'https://www.youtube.com/watch?v=Kp5JpoY8cOQ', 'Overlord III', 'https://acefile.co/f/19873927/otakudesu_ovlord-s3_720p-rar'),
(161, 'Bungou Stray Dogs: Dead Apple', 'movie', 7.92, 1, '03/03/2018', 'winter', '[\'Action\', \'Mystery\', \'Supernatural\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/1127/93981l.jpg', 'https://www.youtube.com/watch?v=6ySfGSAbNc0', 'Bungo Stray Dogs: Dead Apple', 'https://acefile.co/f/69629868/wibudesu-anjing-sastra-jalanan-apel-mati-bd-720p-rar'),
(162, 'Overlord ', 'tv', 7.91, 13, '07/07/2015', 'summer', '[\'Action\',\'Adventure\',\'Fantasy\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/7/88019.jpg', 'https://www.youtube.com/watch?v=uhlBqFj9kDw', 'Overlord ', 'https://acefile.co/f/19870907/otakudesu_overlord_720p-rar'),
(163, 'Boku no Hero Academia 4th Season', 'tv', 7.90, 25, '12/10/2019', 'fall', '[\'Action\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/1412/107914l.jpg', 'https://www.youtube.com/watch?v=5VQwDC5jqzQ', 'My Hero Academia Season 4', 'https://acefile.co/f/98949689/otakudesu-net_bnha-s4_720p-rar'),
(164, 'Vanitas no Karte', 'tv', 7.90, 12, '03/07/2021', 'summer', '[\'Action\', \'Fantasy\', \'Mystery\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/1401/118483l.jpg', 'https://www.youtube.com/watch?v=yFBNZF1d_0A', 'The Case Study of Vanitas', 'https://acefile.co/f/55833632/otakudesu_vnk_720p-rar'),
(165, 'JoJo no Kimyou na Bouken (TV)', 'tv', 7.89, 26, '06/10/2012', 'fall', '[\'Action\', \'Adventure\', \'Supernatural\']', '[\'David Production\']', 'https://cdn.myanimelist.net/images/anime/3/40409l.jpg', 'https://www.youtube.com/watch?v=PGVSViecHWE', 'JoJo\'s Bizarre Adventure (2012)', 'https://acefile.co/f/19578276/otakudesu_jojo-bzradvntr_720p-rar'),
(166, 'Boku no Hero Academia', 'tv', 7.89, 13, '03/04/2016', 'spring', '[\'Action\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/10/78745l.jpg', 'https://www.youtube.com/watch?v=D5fYOnwYkj4', 'My Hero Academia', 'https://acefile.co/f/22977223/otakudesu_bokuhero_720p-rar'),
(167, 'Space☆Dandy', 'tv', 7.88, 13, '05/01/2014', 'winter', '[\'Comedy\', \'Sci-Fi\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/4/56611l.jpg', 'https://www.youtube.com/watch?v=hdhtVKk6-do', 'Space Dandy', 'https://acefile.co/f/101954516/kuruminime-spadan-s1-720p-rar?'),
(168, 'K-On!', 'tv', 7.85, 13, '03/04/2009', 'spring', '[\'Comedy\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/10/76120l.jpg', 'https://www.youtube.com/watch?v=R98Q3C4O3yw', 'K-On! Season 1', 'https://acefile.co/f/21923248/otakudesu_keon_720p-rar'),
(169, 'Bungou Stray Dogs', 'tv', 7.82, 12, '07/04/2016', 'spring', '[\'Action\', \'Mystery\', \'Supernatural\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/3/79409l.jpg', 'https://www.youtube.com/watch?v=GGsohezPRXU', 'Bungo Stray Dogs', 'https://acefile.co/f/15164888/otakudesu_bgstrydogs_720p-rar'),
(170, 'Hibike! Euphonium Movie 2: Todoketai Melody', 'movie', 7.81, 1, '30/09/2017', 'summer', '[\'Drama\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/5/88024l.jpg', 'https://www.youtube.com/watch?v=qnOa2TFXWRY', 'Sound! Euphonium the Movie: May the Melody Reach You!', 'https://acefile.co/f/70601592/wibudesu-klub-alat-musik-klasik-pilem-2-720p-rar'),
(171, 'Overlord II', 'tv', 7.76, 13, '09/01/2018', 'winter', '[\'Action\',\'Adventure\',\'Fantasy\']', '[\'Madhouse\']', 'https://cdn.myanimelist.net/images/anime/1212/113415.jpg', 'https://www.youtube.com/watch?v=nLLZ_haUUc8', 'Overlord II', 'https://acefile.co/f/19872805/otakudesu_ovlord-s2_720p-rar'),
(172, 'Hibike! Euphonium Movie 3: Chikai no Finale', 'movie', 7.75, 1, '19/04/2019', 'spring', '[\'Drama\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/1141/102223l.jpg', 'https://www.youtube.com/watch?v=p4m7wgSiDhM', 'Sound! Euphonium: Our Promise: A Brand New Day', 'https://acefile.co/f/70602090/wibudesu-klub-alat-musik-klasik-pilem-3-bd-720p-rar'),
(173, 'Mahoutsukai no Yome Season 2', 'tv', 7.74, 12, '06/04/2023', 'spring', '[\'Drama\',\'Fantasy\',\'Romance\']', '[\'Studio Kafka\']', 'https://cdn.myanimelist.net/images/anime/1532/135155.jpg', 'https://www.youtube.com/watch?v=ZajWVX8a8FM', 'The Ancient Magus\' Bride Season 2', 'https://acefile.co/f/99426309/otakudesu-net_mahouyome-s2_720p-rar'),
(174, 'Kyoukai no Kanata', 'tv', 7.73, 12, '03/10/2013', 'fall', '[\'Action\', \'Fantasy\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/3/85468l.jpg', 'https://www.youtube.com/watch?v=BnfeVrAAS2k', 'Beyond the Boundary', 'https://acefile.co/f/21570542/otakudesu_kyokanata_720p-rar'),
(175, 'Chuunibyou demo Koi ga Shitai!', 'tv', 7.71, 12, '04/10/2012', 'fall', '[\'Comedy\', \'Romance\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/12/46931l.jpg', 'https://www.youtube.com/watch?v=USgrD2Dqsa0', 'Love, Chunibyo & Other Delusions!', 'https://acefile.co/f/22937932/otakudesu_chu2byo_720p-rar'),
(176, 'Kyoukai no Kanata Movie 1: I\'ll Be Here - Kako-hen', 'movie', 7.71, 1, '14/03/2015', 'winter', '[\'Action\', \'Fantasy\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/6/73298l.jpg', 'https://www.youtube.com/watch?v=y6I_QK9oBSI', 'Beyond the Boundary: I\'ll Be Here - Past', 'https://acefile.co/f/71518356/wibudesu-melampaui-batas-aku-akan-berada-di-sini-masa-lalu-bd-720p-rar'),
(177, 'Tokyo Revengers Season 2', 'tv', 7.69, 13, '08/01/2023', 'winter', '[\'Action\', \'Drama\', \'Supernatural\']', '[\'Lidenfilms\']', 'https://cdn.myanimelist.net/images/anime/1773/132313.jpg', 'https://www.youtube.com/watch?v=wXvnmUg8I0M', 'Tokyo Revengers: Seiya Kessen-hen', 'https://acefile.co/f/98052712/wibudesu-co-anak-smp-gelud-s2-720p-rar'),
(178, 'Sword Art Online: Progressive Movie - Kuraki Yuuyami no Scherzo', 'movie', 7.67, 1, '22/10/2022', 'fall', '[\'Action\', \'Adventure\', \'Fantasy\', \'Romance\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/1656/126446l.jpg', 'https://www.youtube.com/watch?v=MLWmlQmLQLw', 'Sword Art Online the Movie: Progressive - Scherzo of Deep Night', 'https://acefile.co/f/98770318/kuruminime-sao-kuraki-yuuyami-no-scherzo-bd720p-rar?'),
(179, 'Evangelion: 3.0 You Can (Not) Redo', 'movie', 7.64, 1, '17/11/2012', 'fall', '[\'Action\', \'Award Winning\', \'Drama\', \'Sci-Fi\', \'Suspense\']', '[\'Khara\']', 'https://cdn.myanimelist.net/images/anime/9/43201.jpg', 'https://www.youtube.com/watch?v=pwLw2hNNz2M', 'Evangelion Movie 3: Q', 'https://acefile.co/f/70040530/wibudesu-robot-alien-3-3-bd-720p-rar'),
(180, 'Sword Art Online: Alicization - War of Underworld', 'tv', 7.58, 12, '13/10/2019', 'fall', '[\'Action\', \'Adventure\', \'Fantasy\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/1630/103417l.jpg', 'https://www.youtube.com/watch?v=rUpEl-nQ360', 'Sword Art Online: Alicization - War of Underworld', 'https://acefile.co/f/18031699/otakudesu_sao-awu_720p-rar'),
(181, 'Sword Art Online: Alicization', 'tv', 7.56, 24, '07/10/2018', 'fall', '[\'Action\', \'Adventure\', \'Fantasy\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/1993/93837l.jpg', 'https://www.youtube.com/watch?v=W_XoPy-VNt0', 'Sword Art Online: Alicization', 'https://acefile.co/f/15582082/otakudesu_sao-alicization_720p-rar'),
(182, 'Hibike! Euphonium Movie 1: Kitauji Koukou Suisougaku-bu e Youkoso', 'movie', 7.56, 1, '23/04/2016', 'spring', '[\'Drama\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/8/81156l.jpg', 'https://www.youtube.com/watch?v=-ALVld2Z4zk', 'Sound! Euphonium the Movie: Welcome to the Kitauji High School Concert Band', 'https://acefile.co/f/70601575/wibudesu-klub-alat-musik-klasik-pilem-1-bd-720p-rar'),
(183, 'Sword Art Online Movie: Ordinal Scale', 'movie', 7.56, 1, '18/02/2017', 'winter', '[\'Action\', \'Adventure\', \'Fantasy\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/1557/123313l.jpg', 'https://www.youtube.com/watch?v=32FLqOWjUfI', 'Sword Art Online the Movie: Ordinal Scale', 'https://acefile.co/f/73504124/wibudesu-seni-pedang-daring-skala-jarak-tidak-di-ketahui-720p-rar'),
(184, 'Chuunibyou demo Koi ga Shitai! Ren', 'tv', 7.55, 12, '09/01/2014', 'winter', '[\'Comedy\', \'Romance\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/7/56643l.jpg', 'https://www.youtube.com/watch?v=3ZZgn8xNdJs', 'Love, Chunibyo & Other Delusions!: Heart Throb', 'https://acefile.co/f/22937421/otakudesu_chu2byo-s2_720p-rar'),
(185, 'One Punch Man 2nd Season', 'tv', 7.51, 12, '10/04/2019', 'spring', '[\'Action\',\'Comedy\']', '[\'J.C. Staff\']', 'https://cdn.myanimelist.net/images/anime/1247/122044.jpg', 'https://www.youtube.com/watch?v=wRAQxhDQMMY', 'One Punch Man 2nd Season', 'https://acefile.co/f/21143298/otakudesu_opm-s2_720p-rar'),
(186, 'Sword Art Online: Alicization - War of Underworld 2nd Season', 'tv', 7.48, 11, '12/07/2020', 'summer', '[\'Action\', \'Adventure\', \'Fantasy\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/1438/105106l.jpg', 'https://www.youtube.com/watch?v=BJyjHqacEpY', 'Sword Art Online: Alicization - War of Underworld Part 2', 'https://acefile.co/f/29154894/otakudesu_sao-awu_720p_p2-rar'),
(187, 'Boku no Hero Academia 5th Season', 'tv', 7.39, 25, '27/03/2021', 'spring', '[\'Action\']', '[\'Bones\']', 'https://cdn.myanimelist.net/images/anime/1911/113611l.jpg', 'https://www.youtube.com/watch?v=kkmW-tppFPM', 'My Hero Academia Season 5', 'https://acefile.co/f/98951313/otakudesu-net_bnha-s5_720p-rar'),
(188, 'Takanashi Rikka Kai: Chuunibyou demo Koi ga Shitai! Movie', 'movie', 7.38, 1, '14/09/2013', 'summer', '[\'Comedy\', \'Romance\']', '[\'Kyoto Animation\']', 'https://cdn.myanimelist.net/images/anime/2/56167l.jpg', 'https://www.youtube.com/watch?v=l05gqLlYq8w', 'Love, Chunibyo & Other Delusions!: Rikka Version', 'https://acefile.co/f/69739768/wibudesu-gadis-suka-berkhayal-trk-720p-rar'),
(189, 'Sword Art Online', 'tv', 7.02, 25, '08/07/2012', 'summer', '[\'Action\', \'Adventure\', \'Fantasy\', \'Romance\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/11/39717l.jpg', 'https://www.youtube.com/watch?v=6ohYYtxfDCg', 'Sword Art Online', 'https://acefile.co/f/15572016/otakudesu_sao_720p-rar'),
(190, 'Sword Art Online Alternative: Gun Gale Online', 'tv', 7.01, 12, '08/04/2018', 'spring', '[\'Action\']', '[\'Studio 3Hz\']', 'https://cdn.myanimelist.net/images/anime/1141/93288.jpg', 'https://www.youtube.com/watch?v=ZoEtBn_6KOI', 'Sword Art Online Alternative: Gun Gale Online', 'https://acefile.co/f/15573147/otakudesu_saoalt_720p-rar'),
(191, 'Sword Art Online II', 'tv', 6.07, 24, '05/07/2014', 'summer', '[\'Action\', \'Adventure\', \'Fantasy\', \'Romance\']', '[\'A-1 Pictures\']', 'https://cdn.myanimelist.net/images/anime/1223/121999l.jpg', 'https://www.youtube.com/watch?v=tdvsWRjh224', 'Sword Art Online II', 'https://acefile.co/f/15573560/otakudesu_sao-s2_720p-rar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(33, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(34, '2023_11_26_145051_create_anipluses_table', 1),
(35, '2024_11_17_074025_create_req_table', 2),
(36, '2024_11_17_162634_create_admins_table', 3),
(37, '2024_11_18_010333_create_admins_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `req`
--

CREATE TABLE `req` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indeks untuk tabel `aniplus`
--
ALTER TABLE `aniplus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `req`
--
ALTER TABLE `req`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `aniplus`
--
ALTER TABLE `aniplus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `req`
--
ALTER TABLE `req`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
