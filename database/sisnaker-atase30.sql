-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 29 Jul 2017 pada 11.52
-- Versi Server: 5.6.14
-- Versi PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `sisnaker`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agensiregistrasi`
--

CREATE TABLE IF NOT EXISTS `agensiregistrasi` (
  `agrid` int(11) NOT NULL AUTO_INCREMENT,
  `agremail` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `agrnama` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agrnamacn` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agrnoijincla` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `agralmtkantor` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agralmtkantorcn` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agrpngjwb` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agrpngjwbcn` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agrtelp` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agrfax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `responsed` timestamp NULL DEFAULT NULL,
  `agrstatus` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'A = Accept, D = Decline',
  `filename` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agid` int(11) DEFAULT NULL,
  `idinstitution` int(11) NOT NULL,
  PRIMARY KEY (`agrid`),
  KEY `fk_institution_registration` (`idinstitution`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2781 ;

--
-- Dumping data untuk tabel `agensiregistrasi`
--

INSERT INTO `agensiregistrasi` (`agrid`, `agremail`, `agrnama`, `agrnamacn`, `agrnoijincla`, `agralmtkantor`, `agralmtkantorcn`, `agrpngjwb`, `agrpngjwbcn`, `agrtelp`, `agrfax`, `responsed`, `agrstatus`, `filename`, `agid`, `idinstitution`) VALUES
(2764, 'budi@gmail.com', 'budi', 'abcd', '12345', 'jln abc', 'jln abcde', 'abcd', 'abcde', '123', '123', '2017-07-14 17:01:27', 'A', NULL, 99277296, 2),
(2765, 'abc@gmail.com', 'abcd', 'abcd', '123123', 'abcd', 'abcd', 'abcd', 'abcd', '123', '123', '2017-07-14 17:10:17', 'A', NULL, 99277300, 2),
(2766, '123@gmail.com', 'abcde', 'abcd', '11111', 'abcd', 'abcd', 'abcd', 'abcd', '123', '123', '2017-07-14 17:17:07', 'A', NULL, 99277301, 2),
(2767, '111@gmail.com', 'wkwk', 'wkwk', '12311', 'wkwk', 'wkwk', 'wkwk', 'wkwk', '123', '123', '2017-07-15 02:38:32', 'A', NULL, 99277302, 2),
(2768, 'lol@gmail.com', 'lol', 'lol', '22222', 'lol', 'lol', 'lol', 'lol', '123', '123', '2017-07-26 01:26:53', 'A', '22222.pdf', 99277303, 2),
(2770, 'testing@gmail.com', 'SQL YOG', 'BCABCA', 'SQLYOG14', 'Teknik Kimia', NULL, NULL, NULL, NULL, NULL, '2017-07-15 05:01:12', 'A', NULL, 99277304, 2),
(2771, 'haha@gmail.com', 'gian sebas', 'walao', 'gian13', 'haha', NULL, 'hahaha', NULL, NULL, NULL, '2017-07-15 13:18:45', 'A', NULL, 99277305, 2),
(2772, 'doremi@gmail.com', 'doremi', 'dorem', 'DO123', 'dom', NULL, 'domi', NULL, NULL, NULL, '2017-07-26 01:26:16', 'D', NULL, 99277577, 4),
(2775, '9090@gmail.com', '9898', '8989', '98989', '8989', NULL, 'ioi90', NULL, NULL, NULL, '2017-07-26 01:16:36', 'D', NULL, 99277698, 4),
(2776, '123213@gmail.com', 'gians', 'giansa', 'gian9090', 'tunjungan', NULL, 'wkowko', NULL, NULL, NULL, '2017-07-26 00:59:14', 'A', NULL, 99277736, 4),
(2777, 'gian@gmail.com', 'gian', 'wutong', '12ca45', 'jalan abc', 'jalan abcde', 'abcde', 'abcde', '123', '123', '2017-07-26 01:23:55', 'D', NULL, NULL, 4),
(2778, 'nyoba@gmail.com', 'nyob', 'nyoba', 'nyo123', 'nyobnyob', NULL, 'baba', NULL, NULL, NULL, '2017-07-26 01:29:03', 'A', NULL, 99277737, 4),
(2779, 'asdad@gmail.com', 'asdasd', NULL, 'sadasdsada', 'sadasd', '', '', '', '', '', '2017-07-28 22:33:53', 'D', 'sadasdsadasd.jpg', NULL, 2),
(2780, 'testingsekarang@gmail.com', 'testingskarang', NULL, 'testingska', 'testing', 'testing', '', '', '', '', '2017-07-28 22:35:00', 'A', 'testingskarang.jpg', 99277856, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `agensi_merge_map`
--

CREATE TABLE IF NOT EXISTS `agensi_merge_map` (
  `agid_kembar` int(11) NOT NULL,
  `agid_induk` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cekalagensi`
--

CREATE TABLE IF NOT EXISTS `cekalagensi` (
  `caid` int(11) NOT NULL AUTO_INCREMENT,
  `agid` int(11) NOT NULL,
  `castart` date NOT NULL,
  `caend` date DEFAULT NULL,
  `cacatatan` text COLLATE utf8_unicode_ci,
  `enable` decimal(1,0) NOT NULL,
  `idinstitution` int(11) NOT NULL,
  PRIMARY KEY (`caid`),
  KEY `fk_cekalagensi_institution1_idx` (`idinstitution`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `cekalagensi`
--

INSERT INTO `cekalagensi` (`caid`, `agid`, `castart`, `caend`, `cacatatan`, `enable`, `idinstitution`) VALUES
(2, 2, '2017-01-02', NULL, 'tes', '0', 2),
(5, 1, '2017-01-02', NULL, 'asd', '0', 1),
(6, 1, '2017-01-25', '2017-01-27', 'hehes', '0', 1),
(8, 1, '2017-01-06', NULL, 'tes list', '1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cekalmajikan`
--

CREATE TABLE IF NOT EXISTS `cekalmajikan` (
  `cmid` int(11) NOT NULL AUTO_INCREMENT,
  `ktp` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `idinstitution` int(11) NOT NULL,
  PRIMARY KEY (`cmid`),
  KEY `fk_cekalmajikan_institution1_idx` (`idinstitution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cekalpptkis`
--

CREATE TABLE IF NOT EXISTS `cekalpptkis` (
  `cpid` int(11) NOT NULL AUTO_INCREMENT,
  `ppkode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cpstart` date NOT NULL,
  `cpend` date DEFAULT NULL,
  `enable` decimal(1,0) NOT NULL,
  PRIMARY KEY (`cpid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `cekalpptkis`
--

INSERT INTO `cekalpptkis` (`cpid`, `ppkode`, `cpstart`, `cpend`, `enable`) VALUES
(2, '1', '2017-01-02', '2017-01-25', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `idcurrency` int(11) NOT NULL AUTO_INCREMENT,
  `currencyname` varchar(45) DEFAULT NULL,
  `kurs` double DEFAULT NULL,
  PRIMARY KEY (`idcurrency`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `currency`
--

INSERT INTO `currency` (`idcurrency`, `currencyname`, `kurs`) VALUES
(1, 'usd', 13299);

-- --------------------------------------------------------

--
-- Struktur dari tabel `entryjo`
--

CREATE TABLE IF NOT EXISTS `entryjo` (
  `ejid` int(11) NOT NULL AUTO_INCREMENT,
  `idjenispekerjaan` int(11) NOT NULL,
  `idinstitution` int(11) NOT NULL,
  `mjktp` varchar(20) DEFAULT NULL,
  `mjnama` varchar(50) DEFAULT NULL,
  `mjnamacn` varchar(50) DEFAULT NULL,
  `mjalmt` varchar(100) DEFAULT NULL,
  `mjalmtcn` varchar(100) DEFAULT NULL,
  `mjtelp` varchar(20) DEFAULT NULL,
  `mjfax` varchar(20) DEFAULT NULL,
  `mjpngjwb` varchar(50) DEFAULT NULL,
  `mjpngjwbcn` varchar(50) DEFAULT NULL,
  `joclano` varchar(20) DEFAULT NULL COMMENT 'No CLA',
  `joclatgl` date DEFAULT NULL COMMENT 'Tanggal CLA',
  `joestduedate` date DEFAULT NULL,
  `jojmltki` int(11) DEFAULT '0',
  `jomkthn` decimal(2,0) DEFAULT NULL,
  `jomkbln` decimal(2,0) DEFAULT NULL,
  `jomkhr` decimal(3,0) DEFAULT NULL,
  `jocatatan` text,
  `joposisi` varchar(30) DEFAULT NULL COMMENT 'Hanya diisi jika jenis pekerjaan adalah pekerja.',
  `joposisicn` varchar(30) DEFAULT NULL,
  `joakomodasi` decimal(7,2) DEFAULT NULL,
  `jotime` int(11) DEFAULT NULL,
  `jostart` date DEFAULT NULL,
  `joend` date DEFAULT NULL,
  `jogajikonstruksi` decimal(10,2) DEFAULT NULL,
  `ejbcform` varchar(10) NOT NULL COMMENT 'Barcode untuk Form Info',
  `ejbcsk` varchar(10) NOT NULL COMMENT 'Barcode surat kuasa',
  `ejbcsp` varchar(10) NOT NULL COMMENT 'Barcode untuk Surat Permintaan',
  `ejtglendorsement` date DEFAULT NULL,
  `ejdatefilled` date DEFAULT NULL,
  `ejtoken` varchar(32) NOT NULL,
  `ejtglpengambilan` timestamp NULL DEFAULT NULL,
  `ppkode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `agid` int(11) DEFAULT NULL,
  `jpgaji` decimal(7,2) DEFAULT NULL,
  `jpakomodasi` decimal(7,2) DEFAULT NULL,
  `md5ej` varchar(255) NOT NULL,
  `jodownloadurl` varchar(255) NOT NULL,
  PRIMARY KEY (`ejid`),
  UNIQUE KEY `ejtoken` (`ejtoken`),
  UNIQUE KEY `ejbcform` (`ejbcform`),
  UNIQUE KEY `ejbcsk` (`ejbcsk`),
  UNIQUE KEY `ejbcsp` (`ejbcsp`),
  KEY `entryjo_agid` (`agid`),
  KEY `entryjo_ppkode` (`ppkode`),
  KEY `fk_entryjo_jenispekerjaan1_idx` (`idjenispekerjaan`),
  KEY `fk_entryjo_institution1_idx` (`idinstitution`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data untuk tabel `entryjo`
--

INSERT INTO `entryjo` (`ejid`, `idjenispekerjaan`, `idinstitution`, `mjktp`, `mjnama`, `mjnamacn`, `mjalmt`, `mjalmtcn`, `mjtelp`, `mjfax`, `mjpngjwb`, `mjpngjwbcn`, `joclano`, `joclatgl`, `joestduedate`, `jojmltki`, `jomkthn`, `jomkbln`, `jomkhr`, `jocatatan`, `joposisi`, `joposisicn`, `joakomodasi`, `jotime`, `jostart`, `joend`, `jogajikonstruksi`, `ejbcform`, `ejbcsk`, `ejbcsp`, `ejtglendorsement`, `ejdatefilled`, `ejtoken`, `ejtglpengambilan`, `ppkode`, `agid`, `jpgaji`, `jpakomodasi`, `md5ej`, `jodownloadurl`) VALUES
(1, 1, 2, '987', 'Ovan', 'Wa Shing Shong', 'Wonogiri', 'Chinagiri', '08572501789', '567876', 'Ovan', 'Wa Shing Shong', '1', '2016-11-01', '2017-02-28', 5, '3', '4', '16', 'baik baik saja', 'Gelandang Bertahan', 'Wo Ni Lau Ba', '2500.00', NULL, NULL, NULL, NULL, 'kl988', 'kl988', 'kl988', '2017-01-26', '2016-12-30', 'bebasinitoken123', '2016-12-29 20:18:18', 'TAT338', 6862, '99999.99', '99999.99', '', ''),
(2, 2, 2, '123', 'Udin', '-', 'Solo', '-', '08123123123', '123123', 'Budi', '-', '1', '2016-11-01', '2017-02-28', 3, '3', '3', '3', 'sehat', 'Pacul Garang', '-', '1500.00', NULL, NULL, NULL, NULL, 'kl1000', 'kl900', 'kl900', '2017-02-01', '2017-01-01', 'token123', '2017-01-01 16:52:02', 'TAT338', 6862, '99999.99', '99999.99', '', ''),
(42, 1, 2, 'asdas', 'dasdas', 'dasd', 'asdasdsad', 'asdasdas', '', '', '', '', 'sadasda', '2017-07-18', NULL, 1, '2', '1', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I1707ROTM', 'K1707309A', 'J1707RKDM', NULL, '2017-07-29', '546c73e36e705d544189bac4a86fa9c8', NULL, 'TAT338', 6862, '17000.00', NULL, 'a1d0c6e83f027327d8461063f4ac58a6', 'perawattaiwan.php');

-- --------------------------------------------------------

--
-- Struktur dari tabel `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `idmasalah` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(150) CHARACTER SET big5 NOT NULL,
  `username` varchar(45) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `fk_file_masalah1_idx` (`idmasalah`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `idhistory` int(11) NOT NULL AUTO_INCREMENT,
  `idmasalah` int(11) NOT NULL,
  `history` varchar(250) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_username` varchar(45) NOT NULL,
  PRIMARY KEY (`idhistory`),
  KEY `fk_history_masalah1_idx` (`idmasalah`),
  KEY `fk_history_user1_idx` (`user_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `history`
--

INSERT INTO `history` (`idhistory`, `idmasalah`, `history`, `timestamp`, `user_username`) VALUES
(1, 3488, 'menginputkan masalah baru', '2017-04-12 11:10:58', 'agent');

-- --------------------------------------------------------

--
-- Struktur dari tabel `info_bnsp`
--

CREATE TABLE IF NOT EXISTS `info_bnsp` (
  `idpropinsi` int(2) NOT NULL AUTO_INCREMENT,
  `propinsi` varchar(19) DEFAULT NULL,
  `propinsieng` varchar(50) DEFAULT NULL,
  `umr2015` int(10) DEFAULT NULL,
  `umr2016` int(7) DEFAULT NULL,
  `ctk2014` int(7) DEFAULT NULL,
  `blk_eng` int(7) DEFAULT NULL,
  `blk_non` int(7) DEFAULT NULL,
  `smk_eng` int(7) DEFAULT NULL,
  `blk_count` int(5) DEFAULT NULL,
  `balai` text NOT NULL,
  KEY `idpropinsi` (`idpropinsi`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `info_remitansi`
--

CREATE TABLE IF NOT EXISTS `info_remitansi` (
  `idinstitution` int(11) NOT NULL,
  `month` int(2) DEFAULT NULL,
  `value` int(15) DEFAULT NULL,
  `year` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `inputcategory_penempatan`
--

CREATE TABLE IF NOT EXISTS `inputcategory_penempatan` (
  `idcategory_penempatan` int(11) NOT NULL AUTO_INCREMENT,
  `namecategory` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcategory_penempatan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `inputcategory_penempatan`
--

INSERT INTO `inputcategory_penempatan` (`idcategory_penempatan`, `namecategory`) VALUES
(1, 'Worker Data'),
(2, 'Job Order Data');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inputcategory_perlindungan`
--

CREATE TABLE IF NOT EXISTS `inputcategory_perlindungan` (
  `idcategory_perlindungan` int(11) NOT NULL AUTO_INCREMENT,
  `namecategory` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcategory_perlindungan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `inputcategory_perlindungan`
--

INSERT INTO `inputcategory_perlindungan` (`idcategory_perlindungan`, `namecategory`) VALUES
(1, 'Test'),
(2, 'Info Agensi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inputdetail_penempatan`
--

CREATE TABLE IF NOT EXISTS `inputdetail_penempatan` (
  `idinputdetail_penempatan` int(11) NOT NULL AUTO_INCREMENT,
  `nameinputdetail` varchar(45) DEFAULT NULL,
  `idcategory_penempatan` int(11) NOT NULL,
  `idinputtype` int(11) NOT NULL,
  `keterangan` varchar(90) DEFAULT NULL,
  `conntable` varchar(60) DEFAULT NULL,
  `fieldname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idinputdetail_penempatan`),
  KEY `fk_inputdetail_inputcategory1_idx` (`idcategory_penempatan`),
  KEY `fk_inputdetail_inputtype1_idx` (`idinputtype`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `inputdetail_penempatan`
--

INSERT INTO `inputdetail_penempatan` (`idinputdetail_penempatan`, `nameinputdetail`, `idcategory_penempatan`, `idinputtype`, `keterangan`, `conntable`, `fieldname`) VALUES
(1, 'Worker Data #1', 1, 1, 'dinamis', NULL, 'testing'),
(2, 'Worker Data #2', 1, 1, 'dinamis', NULL, 'agensiname'),
(3, 'Worker Data #3', 1, 1, 'dinamis', NULL, 'agensiname'),
(4, 'Worker Data #4', 1, 1, 'dinamis', NULL, 'agensiname'),
(5, 'JO Data #1', 2, 1, 'dinamis', NULL, 'jenisagensi'),
(6, 'JO Data #2', 2, 1, 'dinamis', NULL, 'jenisagensi'),
(7, 'JO Data #3', 2, 1, 'dinamis', NULL, 'jenisagensi'),
(8, 'JO Data #4', 2, 1, 'dinamis', NULL, 'nohp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inputdetail_perlindungan`
--

CREATE TABLE IF NOT EXISTS `inputdetail_perlindungan` (
  `idinputdetail_perlindungan` int(11) NOT NULL AUTO_INCREMENT,
  `nameinputdetail` varchar(45) DEFAULT NULL,
  `idcategory_perlindungan` int(11) NOT NULL,
  `idinputtype` int(11) NOT NULL,
  `keterangan` varchar(90) DEFAULT NULL,
  `conntable` varchar(45) DEFAULT NULL,
  `fieldname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idinputdetail_perlindungan`),
  KEY `fk_inputdetail_perlindungan_inputtype1_idx` (`idinputtype`),
  KEY `fk_inputdetail_perlindungan_inputcategory_perlindungan1_idx` (`idcategory_perlindungan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `inputdetail_perlindungan`
--

INSERT INTO `inputdetail_perlindungan` (`idinputdetail_perlindungan`, `nameinputdetail`, `idcategory_perlindungan`, `idinputtype`, `keterangan`, `conntable`, `fieldname`) VALUES
(1, 'Testing', 1, 1, 'taiwan', NULL, 'testing'),
(2, 'Jenis Kelamin', 1, 1, 'Gender', NULL, 'gender'),
(9, 'Tanggal meninggal', 1, 3, 'dead date', NULL, 'deaddate'),
(10, 'Jenis Kelamin', 1, 2, 'Gender', 'wilayah', 'Gendertype'),
(11, 'Nama PPTKIS', 2, 1, 'PPTKIS name', NULL, 'PPTKIS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inputoption_penempatan`
--

CREATE TABLE IF NOT EXISTS `inputoption_penempatan` (
  `idinputoption_penempatan` int(11) NOT NULL AUTO_INCREMENT,
  `nameinputoption` varchar(45) DEFAULT NULL,
  `idinputdetail_penempatan` int(11) NOT NULL,
  PRIMARY KEY (`idinputoption_penempatan`),
  KEY `fk_inputoption_inputdetail1_idx` (`idinputdetail_penempatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `inputoption_perlindungan`
--

CREATE TABLE IF NOT EXISTS `inputoption_perlindungan` (
  `idinputoption_perlindungan` int(11) NOT NULL AUTO_INCREMENT,
  `nameinputoption` varchar(45) DEFAULT NULL,
  `idinputdetail_perlindungan` int(11) NOT NULL,
  PRIMARY KEY (`idinputoption_perlindungan`),
  KEY `fk_inputoption_perlindungan_inputdetail_perlindungan1_idx` (`idinputdetail_perlindungan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `inputoption_perlindungan`
--

INSERT INTO `inputoption_perlindungan` (`idinputoption_perlindungan`, `nameinputoption`, `idinputdetail_perlindungan`) VALUES
(1, 'Cowok', 10),
(2, 'Cewek', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `inputtype`
--

CREATE TABLE IF NOT EXISTS `inputtype` (
  `idinputtype` int(11) NOT NULL AUTO_INCREMENT,
  `nameinputtype` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idinputtype`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `inputtype`
--

INSERT INTO `inputtype` (`idinputtype`, `nameinputtype`) VALUES
(1, 'text'),
(2, 'select'),
(3, 'date');

-- --------------------------------------------------------

--
-- Struktur dari tabel `institution`
--

CREATE TABLE IF NOT EXISTS `institution` (
  `idinstitution` int(11) NOT NULL AUTO_INCREMENT,
  `nameinstitution` varchar(45) DEFAULT NULL,
  `endorsementtype` varchar(45) DEFAULT NULL,
  `idcurrency` int(11) NOT NULL,
  `isactive` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idinstitution`),
  KEY `fk_currency` (`idcurrency`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `institution`
--

INSERT INTO `institution` (`idinstitution`, `nameinstitution`, `endorsementtype`, `idcurrency`, `isactive`) VALUES
(1, 'Super', NULL, 1, '1'),
(2, 'Taiwan', 'Swainput', 1, '1'),
(3, 'test', 'test', 1, NULL),
(4, 'Amerika', 'Swainput', 1, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `institution_has_inputdetail_penempatan`
--

CREATE TABLE IF NOT EXISTS `institution_has_inputdetail_penempatan` (
  `idinstitution` int(11) NOT NULL,
  `idinputdetail_penempatan` int(11) NOT NULL,
  `isactive` varchar(45) DEFAULT NULL,
  KEY `fk_institution_has_inputdetail_inputdetail1_idx` (`idinputdetail_penempatan`),
  KEY `fk_institution_has_inputdetail_institution_idx` (`idinstitution`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `institution_has_inputdetail_penempatan`
--

INSERT INTO `institution_has_inputdetail_penempatan` (`idinstitution`, `idinputdetail_penempatan`, `isactive`) VALUES
(2, 1, '1'),
(2, 4, '1'),
(2, 7, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `institution_has_inputdetail_perlindungan`
--

CREATE TABLE IF NOT EXISTS `institution_has_inputdetail_perlindungan` (
  `idinstitution` int(11) NOT NULL,
  `idinputdetail_perlindungan` int(11) NOT NULL,
  `isactive` varchar(45) DEFAULT NULL,
  KEY `fk_institution_has_inputdetail_perlindungan_inputdetail_per_idx` (`idinputdetail_perlindungan`),
  KEY `fk_institution_has_inputdetail_perlindungan_institution1_idx` (`idinstitution`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `institution_has_inputdetail_perlindungan`
--

INSERT INTO `institution_has_inputdetail_perlindungan` (`idinstitution`, `idinputdetail_perlindungan`, `isactive`) VALUES
(2, 1, '1'),
(2, 11, '1'),
(2, 10, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `institution_has_klasifikasi`
--

CREATE TABLE IF NOT EXISTS `institution_has_klasifikasi` (
  `id` int(11) NOT NULL,
  `idinstitution` int(11) NOT NULL,
  `isactive` tinyint(1) DEFAULT NULL,
  KEY `fk_klasifikasi_has_institution_institution1_idx` (`idinstitution`),
  KEY `fk_klasifikasi_has_institution_klasifikasi1_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `institution_has_klasifikasi`
--

INSERT INTO `institution_has_klasifikasi` (`id`, `idinstitution`, `isactive`) VALUES
(1, 2, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `institution_has_media`
--

CREATE TABLE IF NOT EXISTS `institution_has_media` (
  `id` int(11) NOT NULL,
  `idinstitution` int(11) NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  KEY `fk_institution_has_media_media1_idx` (`id`),
  KEY `fk_institution_has_media_institution1_idx` (`idinstitution`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `institution_has_media`
--

INSERT INTO `institution_has_media` (`id`, `idinstitution`, `isactive`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `institution_has_wilayah`
--

CREATE TABLE IF NOT EXISTS `institution_has_wilayah` (
  `id` int(11) NOT NULL,
  `idinstitution` int(11) NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  KEY `fk_institution_has_wilayah_wilayah1_idx` (`id`),
  KEY `fk_institution_has_wilayah_institution1_idx` (`idinstitution`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `institution_has_wilayah`
--

INSERT INTO `institution_has_wilayah` (`id`, `idinstitution`, `isactive`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenispekerjaan`
--

CREATE TABLE IF NOT EXISTS `jenispekerjaan` (
  `idjenispekerjaan` int(11) NOT NULL AUTO_INCREMENT,
  `namajenispekerjaan` varchar(45) DEFAULT NULL,
  `isactive` varchar(45) NOT NULL,
  `idpekerjaan_bnp2tki` varchar(45) DEFAULT NULL,
  `idinstitution` int(11) NOT NULL,
  `sektor` int(11) DEFAULT NULL,
  `jpgaji` float NOT NULL,
  `curjodownloadurl` varchar(255) NOT NULL,
  `curtkidownloadurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idjenispekerjaan`),
  KEY `fk_jenispekerjaan_institution1_idx` (`idinstitution`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `jenispekerjaan`
--

INSERT INTO `jenispekerjaan` (`idjenispekerjaan`, `namajenispekerjaan`, `isactive`, `idpekerjaan_bnp2tki`, `idinstitution`, `sektor`, `jpgaji`, `curjodownloadurl`, `curtkidownloadurl`) VALUES
(1, 'Perawat', '1', '1', 2, 2, 200.4, 'perawattaiwan', 'tkiperawattaiwan.php'),
(2, 'Petani', '1', '1', 2, 1, 150, 'petani', 'petani.php');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jo`
--

CREATE TABLE IF NOT EXISTS `jo` (
  `jobid` int(11) NOT NULL AUTO_INCREMENT,
  `ppkode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `agid` int(11) NOT NULL,
  `idinstitution` int(11) NOT NULL,
  `jobno` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `jobtglawal` date DEFAULT NULL,
  `jobtglakhir` date DEFAULT NULL,
  `jobenable` decimal(1,0) DEFAULT '1',
  `jobtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jobispushed` decimal(1,0) NOT NULL DEFAULT '0',
  `username` varchar(45) NOT NULL,
  `jopushtimestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`jobid`),
  KEY `jobtglawal` (`jobtglawal`),
  KEY `jobtglakhir` (`jobtglakhir`),
  KEY `jobtglawal_2` (`jobtglawal`,`jobtglakhir`),
  KEY `fk_jo_mpptkis1_idx` (`ppkode`),
  KEY `fk_jo_magensi1_idx` (`agid`),
  KEY `fk_jo_user1_idx` (`username`),
  KEY `fk_jo_institution1_idx` (`idinstitution`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `jo`
--

INSERT INTO `jo` (`jobid`, `ppkode`, `agid`, `idinstitution`, `jobno`, `jobtglawal`, `jobtglakhir`, `jobenable`, `jobtimestamp`, `jobispushed`, `username`, `jopushtimestamp`) VALUES
(2, 'TAT338', 6862, 2, '1', '2016-11-01', '2017-08-17', '1', '2017-07-29 01:35:35', '0', 'budi', NULL),
(3, 'TAT338', 2, 2, '4', '2017-04-13', '2017-08-17', '1', '2017-07-29 01:35:41', '0', 'gian', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jodetail`
--

CREATE TABLE IF NOT EXISTS `jodetail` (
  `jobdid` int(11) NOT NULL AUTO_INCREMENT,
  `jobid` int(11) NOT NULL,
  `idjenispekerjaan` int(11) NOT NULL,
  `jobdl` int(11) DEFAULT NULL,
  `jobdp` int(11) DEFAULT NULL,
  `jobdc` int(11) DEFAULT NULL,
  PRIMARY KEY (`jobdid`),
  KEY `jodetail_jobid` (`jobid`),
  KEY `fk_jodetail_jenispekerjaan1_idx` (`idjenispekerjaan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `jodetail`
--

INSERT INTO `jodetail` (`jobdid`, `jobid`, `idjenispekerjaan`, `jobdl`, `jobdp`, `jobdc`) VALUES
(1, 2, 1, 10, 5, 0),
(2, 2, 2, 8, 7, 10),
(5, 3, 1, 10, 10, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kantor`
--

CREATE TABLE IF NOT EXISTS `kantor` (
  `idkantor` int(11) NOT NULL AUTO_INCREMENT,
  `idinstitution` int(11) NOT NULL,
  `namakantor` varchar(45) DEFAULT NULL,
  `isactive` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idkantor`),
  KEY `fk_kantor_institution_idx` (`idinstitution`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `kantor`
--

INSERT INTO `kantor` (`idkantor`, `idinstitution`, `namakantor`, `isactive`) VALUES
(1, 1, 'Super', '1'),
(2, 2, 'Local', '1'),
(3, 2, 'Taili', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keberangkatan`
--

CREATE TABLE IF NOT EXISTS `keberangkatan` (
  `keberangkatanid` int(11) NOT NULL AUTO_INCREMENT,
  `tkiid` int(11) NOT NULL,
  `tkpaspor` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `bandaracode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `transitport` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`keberangkatanid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8570 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepulangan`
--

CREATE TABLE IF NOT EXISTS `kepulangan` (
  `kepulanganid` int(11) NOT NULL AUTO_INCREMENT,
  `tkiid` int(11) NOT NULL,
  `tkpaspor` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `bandaracode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `transitport` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`kepulanganid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4923 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `klasifikasi`
--

CREATE TABLE IF NOT EXISTS `klasifikasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `klasifikasi`
--

INSERT INTO `klasifikasi` (`id`, `name`) VALUES
(1, 'Gaji'),
(2, 'KDRT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `idkomentar` int(11) NOT NULL AUTO_INCREMENT,
  `idmasalah` int(11) NOT NULL,
  `komentar` text CHARACTER SET big5 NOT NULL,
  `username` varchar(45) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idkomentar`),
  KEY `fk_komentar_user1_idx` (`username`),
  KEY `fk_komentar_masalah1_idx` (`idmasalah`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuitansi`
--

CREATE TABLE IF NOT EXISTS `kuitansi` (
  `kuid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `idinstitution` int(11) NOT NULL,
  `idtipe` int(11) NOT NULL,
  `kuno` varchar(10) DEFAULT NULL,
  `kujmlbayar` decimal(7,0) DEFAULT NULL,
  `kupemohon` varchar(50) DEFAULT NULL,
  `kutglmasuk` date DEFAULT NULL,
  `kutglendorsement` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `kuhapus` decimal(1,0) DEFAULT NULL,
  `kukode` varchar(8) DEFAULT NULL,
  `kutglkuitansi` timestamp NULL DEFAULT NULL,
  `kutglpengambilan` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kuid`),
  KEY `fk_kuitansi_user1_idx` (`username`),
  KEY `fk_kuitansi_institution1_idx` (`idinstitution`),
  KEY `fk_kuitansi_tipe1_idx` (`idtipe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data untuk tabel `kuitansi`
--

INSERT INTO `kuitansi` (`kuid`, `username`, `idinstitution`, `idtipe`, `kuno`, `kujmlbayar`, `kupemohon`, `kutglmasuk`, `kutglendorsement`, `kuhapus`, `kukode`, `kutglkuitansi`, `kutglpengambilan`) VALUES
(1, 'gian', 2, 1, '123456', '1000', 'Budiman', '2017-01-08', '2017-01-07 17:48:53', NULL, NULL, '2016-12-30 14:07:46', NULL),
(3, 'agent', 2, 1, '1', '1000', 'Budiman', '2017-01-11', '2017-01-06 14:05:41', NULL, NULL, '2017-01-18 17:00:00', NULL),
(4, 'agent', 2, 1, '2', '1000', 'Budiman', '2017-01-11', '2017-01-06 14:24:46', NULL, NULL, '2017-01-18 17:00:00', NULL),
(5, 'agent', 2, 1, '3', '1000', 'Budiman', '2017-01-11', '2017-01-06 14:25:42', NULL, NULL, '2017-01-18 17:00:00', NULL),
(6, 'agent', 2, 1, '4', '1000', 'Budiman', '2017-01-11', '2017-01-06 14:25:48', NULL, NULL, '2017-01-18 17:00:00', NULL),
(7, 'agent', 2, 1, '5', '1000', 'Budiman', '2017-01-11', '2017-01-06 14:26:54', NULL, NULL, '2017-01-18 17:00:00', NULL),
(8, 'agent', 2, 1, '6', '1000', 'Budiman', '2017-01-11', '2017-01-06 14:29:38', NULL, NULL, '2017-01-18 17:00:00', NULL),
(9, 'agent', 2, 1, '7', '1000', 'Budiman', '2017-01-11', '2017-01-06 14:30:03', NULL, NULL, '2017-01-25 17:00:00', NULL),
(10, 'sadmin', 1, 1, '8', '1000', 'Budiman', '2017-01-10', '2017-01-07 10:35:09', NULL, NULL, '2017-01-25 17:00:00', NULL),
(11, 'sadmin', 1, 1, 'testif', '1000', 'Budiman', '2017-01-10', '2017-01-07 10:37:10', NULL, NULL, '2017-01-25 17:00:00', NULL),
(12, 'sadmin', 1, 1, 'testifz', '123213', 'sdsadas', '2017-01-10', '2017-01-07 10:37:37', NULL, NULL, '2017-01-26 17:00:00', NULL),
(13, 'sadmin', 1, 1, 'testpreven', '1234', 'sadasd', '2017-01-03', '2017-01-07 10:38:20', NULL, NULL, '2017-01-25 17:00:00', NULL),
(14, 'sadmin', 1, 1, 'testpreven', '1234', 'sadasd', '2017-01-03', '2017-01-07 10:49:51', NULL, NULL, '2017-01-25 17:00:00', NULL),
(15, 'sadmin', 1, 1, 'wqeqweq', '213213', 'sadasda', '2017-01-09', '2017-01-07 10:50:03', NULL, NULL, '2017-01-26 17:00:00', NULL),
(16, 'sadmin', 1, 1, 'testifz', '123213', 'sdsadas', '2017-01-10', '2017-01-07 10:50:33', NULL, NULL, '2017-01-26 17:00:00', NULL),
(17, 'sadmin', 1, 1, 'testifz', '123213', 'sdsadas', '2017-01-10', '2017-01-07 11:01:32', NULL, NULL, '2017-01-26 17:00:00', NULL),
(18, 'sadmin', 1, 1, 'testifz', '123213', 'sdsadas', '2017-01-10', '2017-01-07 11:02:19', NULL, NULL, '2017-01-26 17:00:00', NULL),
(19, 'sadmin', 1, 1, 'testif', '1000', 'Budiman', '2017-01-10', '2017-01-07 11:02:22', NULL, NULL, '2017-01-25 17:00:00', NULL),
(20, 'sadmin', 1, 2, 'asdasd', '123213', 'asdads', '2017-01-04', '2017-01-07 12:00:39', NULL, NULL, '2017-01-11 17:00:00', NULL),
(21, 'sadmin', 1, 2, 'tescatat', '2132131', 'asdasd', '2017-01-03', '2017-01-07 12:01:44', NULL, NULL, '2017-01-19 17:00:00', NULL),
(22, 'sadmin', 1, 2, 'testupdate', '1232132', 'sadasdsa', '2017-01-04', '2017-01-07 12:26:39', NULL, NULL, '2017-01-18 17:00:00', NULL),
(23, 'sadmin', 1, 2, 'testupdate', '1232132', 'sadasdsa', '2017-01-04', '2017-01-07 12:28:07', NULL, NULL, '2017-01-18 17:00:00', NULL),
(24, 'sadmin', 1, 2, 'testupdate', '12312', 'asdasdas', '2017-01-11', '2017-01-07 12:28:50', NULL, NULL, '2017-01-26 17:00:00', NULL),
(25, 'sadmin', 1, 2, 'pastibisa', '21321', 'asdasds', '2017-01-10', '2017-01-07 12:30:59', NULL, NULL, '2017-01-19 17:00:00', NULL),
(26, 'sadmin', 1, 2, 'pastibisah', '1232131', 'asdasda', '2017-01-18', '2017-01-07 12:32:32', NULL, NULL, '2017-02-01 17:00:00', NULL),
(27, 'sadmin', 1, 1, 'asdasd', '123213', 'asdads', '2017-01-05', '2017-01-07 13:28:25', NULL, '00001AGA', '2017-01-18 17:00:00', NULL),
(28, 'sadmin', 1, 1, 'fixselesai', '2132131', 'asdasdas', '2017-01-05', '2017-01-07 13:30:37', NULL, '00020AGA', '2017-01-19 17:00:00', NULL),
(29, 'gian', 2, 1, '1234', '1000', 'Budimen', '2017-01-08', '2017-01-08 01:16:31', NULL, NULL, '2017-01-06 17:16:47', NULL),
(30, 'gian', 2, 1, '123', '1500', 'Budimun', '2017-01-09', '2017-01-08 18:09:51', NULL, NULL, '2017-01-07 18:09:58', NULL),
(31, 'gian', 2, 2, '121241241', '1000', 'abc', '2017-02-01', '2017-02-09 10:19:53', NULL, '00001BGB', '2017-01-31 17:00:00', NULL),
(32, 'gian', 2, 2, '1251535353', '1000', 'abac', '2017-02-01', '2017-02-09 10:22:43', NULL, '00002BGB', '2017-01-31 17:00:00', NULL),
(33, 'gian', 2, 2, '142141351', '1000', 'abcdf', '2017-02-01', '2017-02-09 10:28:37', NULL, '00003BGB', '2017-01-31 17:00:00', NULL),
(34, 'gian', 2, 2, 'TESTJAM', '123213', 'asdads', '2017-02-28', '2017-02-10 02:49:53', NULL, '00004BGB', '2017-02-16 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE IF NOT EXISTS `level` (
  `idlevel` int(11) NOT NULL AUTO_INCREMENT,
  `levelname` varchar(45) DEFAULT NULL,
  `dashboard` varchar(50) NOT NULL,
  PRIMARY KEY (`idlevel`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`idlevel`, `levelname`, `dashboard`) VALUES
(1, 'SAdmin', ''),
(2, 'LAdmin', ''),
(3, 'Staff', ''),
(4, 'Agensi', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level_has_privilegedetail`
--

CREATE TABLE IF NOT EXISTS `level_has_privilegedetail` (
  `idlevel` int(11) NOT NULL,
  `idprivilege` int(11) NOT NULL,
  KEY `fk_level_has_priviligedetail_priviligedetail1_idx` (`idprivilege`),
  KEY `fk_level_has_priviligedetail_level1_idx` (`idlevel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `level_has_privilegedetail`
--

INSERT INTO `level_has_privilegedetail` (`idlevel`, `idprivilege`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(3, 27),
(3, 28),
(1, 29),
(1, 30),
(1, 31),
(2, 29),
(2, 30),
(2, 31),
(3, 32),
(1, 33),
(1, 34),
(1, 35),
(2, 33),
(2, 34),
(2, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 41),
(2, 38),
(2, 39),
(3, 42),
(3, 43),
(3, 44),
(3, 45),
(3, 46),
(1, 47),
(1, 48),
(2, 47),
(2, 48),
(1, 49),
(1, 50),
(2, 49),
(2, 50),
(4, 60),
(4, 61),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(2, 58),
(4, 58),
(4, 59),
(2, 27),
(2, 28),
(2, 32),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(1, 62),
(2, 63),
(2, 64),
(3, 63),
(3, 64),
(2, 65);

-- --------------------------------------------------------

--
-- Struktur dari tabel `logagensi`
--

CREATE TABLE IF NOT EXISTS `logagensi` (
  `idlog` int(11) NOT NULL AUTO_INCREMENT,
  `agid` int(11) NOT NULL,
  `timestamp` date NOT NULL,
  PRIMARY KEY (`idlog`),
  KEY `fk_log_magensi1` (`agid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `magensi`
--

CREATE TABLE IF NOT EXISTS `magensi` (
  `agid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `agnama` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `idinstitution` int(11) NOT NULL,
  `agnamaoth` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `agnoijincla` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `agalmtkantor` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `agalmtkantoroth` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `agpngjwb` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `agpngjwboth` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `agtelp` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `agfax` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `agemail` varchar(255) DEFAULT NULL,
  `agenable` decimal(1,0) DEFAULT '1',
  `agtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`agid`),
  UNIQUE KEY `username_2` (`username`),
  UNIQUE KEY `username_3` (`username`),
  KEY `magensi_username` (`username`),
  KEY `fk_institution` (`idinstitution`),
  KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99277857 ;

--
-- Dumping data untuk tabel `magensi`
--

INSERT INTO `magensi` (`agid`, `username`, `agnama`, `idinstitution`, `agnamaoth`, `agnoijincla`, `agalmtkantor`, `agalmtkantoroth`, `agpngjwb`, `agpngjwboth`, `agtelp`, `agfax`, `agemail`, `agenable`, `agtimestamp`) VALUES
(2, 'gian', 'Wang Sen Yong', 2, 'sabeb', '1', '1', '1', '1', '1', '1', '1', NULL, '1', '2017-04-12 07:14:50'),
(6862, 'budi', 'Taichungli', 2, 'cung gi wa', '123', '123', '213', '123', '123', '213', '123', NULL, '1', '2017-01-31 08:15:32'),
(99277296, NULL, 'budi', 2, 'abcd', '12345', 'jln abc', 'jln abcde', 'abcd', 'abcde', '123', '123', 'budi@gmail.com', '1', '2017-07-14 21:41:44'),
(99277300, NULL, 'abcd', 2, 'abcd', '123123', 'abcd', 'abcd', 'abcd', 'abcd', '123', '123', 'abc@gmail.com', '1', '2017-07-14 22:10:17'),
(99277301, NULL, 'abcde', 2, 'abcd', '11111', 'abcd', 'abcd', 'abcd', 'abcd', '123', '123', '123@gmail.com', '1', '2017-07-14 22:17:07'),
(99277302, NULL, 'wkwk', 2, 'wkwk', '12311', 'wkwk', 'wkwk', 'wkwk', 'wkwk', '123', '123', '111@gmail.com', '1', '2017-07-15 07:38:33'),
(99277303, 'lol22222', 'lol', 2, 'lol', '22222', 'lol', 'lol', 'lol', 'lol', '123', '123', 'lol@gmail.com', '1', '2017-07-26 06:26:53'),
(99277304, NULL, 'SQL YOG', 2, 'BCABCA', 'SQLYOG14', 'Teknik Kimia', NULL, NULL, NULL, NULL, NULL, 'testing@gmail.com', '1', '2017-07-15 10:01:12'),
(99277305, NULL, 'gian sebas', 2, 'walao', 'gian13', 'haha', NULL, 'hahaha', NULL, NULL, NULL, 'haha@gmail.com', '1', '2017-07-15 18:18:46'),
(99277577, 'doreDO123', 'doremi', 4, 'dorem', 'DO123', 'dom', NULL, 'domi', NULL, NULL, NULL, 'doremi@gmail.com', '1', '2017-07-26 06:21:09'),
(99277698, '989898989', '9898', 4, '8989', '98989', '8989', NULL, 'ioi90', NULL, NULL, NULL, '9090@gmail.com', '1', '2017-07-25 11:04:35'),
(99277736, 'giangian9090', 'gians', 4, 'giansa', 'gian9090', 'tunjungan', NULL, 'wkowko', NULL, NULL, NULL, '123213@gmail.com', '1', '2017-07-26 05:59:16'),
(99277737, 'nyobnyo123', 'nyob', 4, 'nyoba', 'nyo123', 'nyobnyob', NULL, 'baba', NULL, NULL, NULL, 'nyoba@gmail.com', '1', '2017-07-26 06:29:05'),
(99277856, 'testtestingska', 'testingskarang', 2, NULL, 'testingska', 'testing', 'testing', '', '', '', '', 'testingsekarang@gmail.com', '1', '2017-07-29 03:35:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masalah`
--

CREATE TABLE IF NOT EXISTS `masalah` (
  `idmasalah` int(11) NOT NULL AUTO_INCREMENT,
  `idinstitution` int(11) NOT NULL,
  `nomormasalah` varchar(100) DEFAULT NULL,
  `idmedia` int(11) NOT NULL,
  `idklasifikasi` int(11) NOT NULL,
  `idjenispekerjaan` int(11) NOT NULL,
  `idwilayah` int(5) NOT NULL,
  `namapelapor` varchar(200) DEFAULT NULL,
  `teleponpelapor` varchar(50) DEFAULT NULL,
  `alamatpelapor` varchar(200) DEFAULT NULL,
  `tanggalpengaduan` date DEFAULT NULL,
  `penerimapengaduan` varchar(100) DEFAULT NULL,
  `petugaspenanganan` varchar(100) DEFAULT NULL,
  `tanggalmasuktaiwan` date DEFAULT NULL,
  `agensi` varchar(255) DEFAULT NULL,
  `cpagensi` varchar(100) DEFAULT NULL,
  `teleponagensi` varchar(255) DEFAULT NULL,
  `pptkis` varchar(255) DEFAULT NULL,
  `majikan` varchar(100) DEFAULT NULL,
  `statustki` int(11) DEFAULT NULL COMMENT ' /* comment truncated */ /*1 = resmi  2 = kaburan*/',
  `permasalahan` text,
  `tuntutan` varchar(400) DEFAULT NULL,
  `uang` varchar(20) DEFAULT NULL,
  `statusmasalah` int(11) NOT NULL COMMENT ' /* comment truncated */ /*1 = belumselesai  2 = sudahselesai*/',
  `tanggalpenyelesaian` date DEFAULT NULL,
  `isinshelter` tinyint(1) DEFAULT NULL,
  `idshelter` int(11) NOT NULL,
  `tanggalmasukshelter` date DEFAULT NULL,
  `tanggalkeluarshelter` date DEFAULT NULL,
  `ppkode` varchar(45) NOT NULL,
  `agid` int(11) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `pulang` tinyint(1) NOT NULL DEFAULT '0',
  `keyword` varchar(200) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deaddate` date DEFAULT NULL,
  `Gendertype` varchar(45) DEFAULT NULL,
  `PPTKISlain` varchar(100) DEFAULT NULL,
  `testing` int(100) DEFAULT NULL,
  PRIMARY KEY (`idmasalah`),
  KEY `fk_masalah_institution1_idx` (`idinstitution`),
  KEY `fk_masalah_klasifikasi1_idx` (`idklasifikasi`),
  KEY `fk_masalah_media1_idx` (`idmedia`),
  KEY `fk_masalah_jenispekerjaan1_idx` (`idjenispekerjaan`),
  KEY `fk_masalah_wilayah1_idx` (`idwilayah`),
  KEY `fk_masalah_shelter1_idx` (`idshelter`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3490 ;

--
-- Dumping data untuk tabel `masalah`
--

INSERT INTO `masalah` (`idmasalah`, `idinstitution`, `nomormasalah`, `idmedia`, `idklasifikasi`, `idjenispekerjaan`, `idwilayah`, `namapelapor`, `teleponpelapor`, `alamatpelapor`, `tanggalpengaduan`, `penerimapengaduan`, `petugaspenanganan`, `tanggalmasuktaiwan`, `agensi`, `cpagensi`, `teleponagensi`, `pptkis`, `majikan`, `statustki`, `permasalahan`, `tuntutan`, `uang`, `statusmasalah`, `tanggalpenyelesaian`, `isinshelter`, `idshelter`, `tanggalmasukshelter`, `tanggalkeluarshelter`, `ppkode`, `agid`, `enable`, `pulang`, `keyword`, `last_update`, `deaddate`, `Gendertype`, `PPTKISlain`, `testing`) VALUES
(3488, 2, '1/ADU/KDEI/I/2014 1.2014', 1, 1, 1, 1, 'Gian', NULL, NULL, '2016-11-18', '-', 'agent', '0000-00-00', '-', '-', '-', '-', '-', 1, 'TKI illegal, menderita infeksi paru2 serta gangguan pernafasan. 17 Okt -19 Nop 2013 dirawat di ruang ICU.', 'Tuntutan pengobatan dan pemulangan', '1221321', 1, '0000-00-00', 1, 1, '2016-11-19', '0000-00-00', '0', 0, 1, 0, 'sakit', '2016-11-19 07:34:16', NULL, NULL, NULL, NULL),
(3489, 2, '2/ADU/KDEI/I/2014 2.2014', 1, 2, 2, 1, 'Nano', NULL, NULL, '2017-01-03', '-', 'agent', '0000-00-00', '-', '-', '-', '-', '-', 1, 'TKI illegal, menderita infeksi ginjal.', 'Tuntutan pengobatan dan pemulangan', '1000000', 1, '0000-00-00', 1, 2, '2017-01-04', '0000-00-00', '0', 0, 1, 0, 'sakit', '2017-04-12 11:15:20', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `masalah_has_shelter`
--

CREATE TABLE IF NOT EXISTS `masalah_has_shelter` (
  `idmasalah` int(11) NOT NULL,
  `idshelter` int(11) NOT NULL,
  `tanggalmasukshelter` date DEFAULT NULL,
  `tanggalkeluarshelter` date DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  KEY `fk_masalah_has_shelter_shelter1_idx` (`idshelter`),
  KEY `fk_masalah_has_shelter_masalah1_idx` (`idmasalah`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `masterprivilegegroup`
--

CREATE TABLE IF NOT EXISTS `masterprivilegegroup` (
  `masterprivilegegroupid` int(11) NOT NULL AUTO_INCREMENT,
  `masterprivilegegroupname` varchar(45) NOT NULL,
  PRIMARY KEY (`masterprivilegegroupid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `masterprivilegegroup`
--

INSERT INTO `masterprivilegegroup` (`masterprivilegegroupid`, `masterprivilegegroupname`) VALUES
(1, 'Sistem Admin'),
(2, 'Penempatan'),
(3, 'Perlindungan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `media`
--

INSERT INTO `media` (`id`, `name`) VALUES
(1, 'Langsung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mpptkis`
--

CREATE TABLE IF NOT EXISTS `mpptkis` (
  `ppkode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ppnama` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ppalmtkantor` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pptelp` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ppfax` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ppijin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pppngjwb` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ppstatus` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ppkota` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pppropinsi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ppenable` decimal(1,0) DEFAULT '1',
  `pptimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ppkode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mpptkis`
--

INSERT INTO `mpptkis` (`ppkode`, `ppnama`, `ppalmtkantor`, `pptelp`, `ppfax`, `ppijin`, `pppngjwb`, `ppstatus`, `ppkota`, `pppropinsi`, `ppenable`, `pptimestamp`) VALUES
('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2016-12-02 07:22:42'),
('123', '123', '213', '123', '213', '213', '123', '1', '123', NULL, '1', '2016-12-01 17:05:01'),
('TAT338', 'TATA BOGA', '1', '1', '1', '1', 'TATA BOGA', 'T', 'TATA BOGA', NULL, '1', '2017-01-31 08:16:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pencatatanej`
--

CREATE TABLE IF NOT EXISTS `pencatatanej` (
  `kuid` int(11) NOT NULL,
  `ejid` int(11) NOT NULL,
  KEY `fk_kuitansi_has_entryjo_entryjo1_idx` (`ejid`),
  KEY `fk_kuitansi_has_entryjo_kuitansi1_idx` (`kuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pencatatanej`
--

INSERT INTO `pencatatanej` (`kuid`, `ejid`) VALUES
(1, 1),
(29, 1),
(30, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `privilegedetail`
--

CREATE TABLE IF NOT EXISTS `privilegedetail` (
  `idprivilege` int(11) NOT NULL AUTO_INCREMENT,
  `menuname` varchar(45) DEFAULT NULL,
  `pageurl` varchar(45) DEFAULT NULL,
  `idprivilegegroup` int(11) NOT NULL,
  PRIMARY KEY (`idprivilege`),
  KEY `fk_priviligedetail_privilegegroup1_idx` (`idprivilegegroup`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data untuk tabel `privilegedetail`
--

INSERT INTO `privilegedetail` (`idprivilege`, `menuname`, `pageurl`, `idprivilegegroup`) VALUES
(1, 'Lihat Institution', 'institution', 1),
(2, 'Tambah Institution', 'institution/add', 1),
(3, 'Lihat Classification', 'classification', 2),
(4, 'Tambah Classification', 'classification/add', 2),
(5, 'Assign Classification', 'classification/assign', 2),
(6, 'Lihat Job Type', 'jobtype', 3),
(7, 'Tambah Job Type', 'jobtype/add', 3),
(8, 'Lihat Master Privilege Group', 'privilege/viewMPG', 4),
(9, 'Tambah Master Privilege Group', 'privilege/addMPG', 4),
(10, 'Lihat Privilege Group', 'privilege/viewPG', 5),
(11, 'Tambah Privilege Group', 'privilege/addPG', 5),
(12, 'Lihat Detail Privilege', 'privilege/viewDP', 6),
(13, 'Tambah Detail Privilege', 'privilege/addDP', 6),
(14, 'Lihat Level', 'level', 7),
(15, 'Tambah Level', 'level/add', 7),
(16, 'Assign Level', 'level/assign', 7),
(17, 'Lihat User', 'user', 8),
(18, 'Tambah User', 'user/add', 8),
(19, 'Lihat Tipe Input', 'inputtype', 9),
(20, 'Tambah Tipe Input', 'inputtype/add', 9),
(21, 'Tambah Kategori', 'category/addpenempatan', 20),
(22, 'Tambah Detil Input', 'input/addpenempatan', 20),
(23, 'Assign Input', 'input/assignpenempatan', 10),
(24, 'Tambah Kategori', 'category/addperlindungan', 11),
(25, 'Tambah Detil Input', 'input/addperlindungan', 11),
(26, 'Assign Input', 'input/assignperlindungan', 11),
(27, 'Hunian Shelter', 'shelter/hunian', 11),
(28, 'Pencarian Kasus', 'kasus/search', 11),
(29, 'Lihat Media', 'media', 14),
(30, 'Tambah Media', 'media/add', 14),
(31, 'Assign Media', 'media/assign', 14),
(32, 'Pencarian Data TKI', 'datatki/search', 11),
(33, 'Lihat Wilayah', 'wilayah', 16),
(34, 'Tambah Wilayah', 'wilayah/add', 16),
(35, 'Assign Wilayah', 'wilayah/assign', 16),
(36, 'Lihat Currency', 'currency', 17),
(37, 'Tambah Currency', 'currency/add', 17),
(38, 'Lihat Agensi & PPTKIS', 'agensipptkis', 18),
(39, 'Tambah Agensi', 'agensipptkis/addAgensi', 18),
(41, 'Tambah PPTKIS', 'agensipptkis/addPPTKIS', 18),
(42, 'Agensi & PPTKIS', 'agensipptkis', 11),
(43, 'Infografik', 'infografik', 11),
(44, 'Input Kasus Baru', 'kasus', 11),
(45, 'Rekap Laporan', 'rekap', 11),
(46, 'Log Aktivitas', 'log', 11),
(47, 'Lihat Kantor', 'kantor', 19),
(48, 'Tambah Kantor', 'kantor/add', 19),
(49, 'Lihat Shelter', 'shelter', 13),
(50, 'Tambah Shelter', 'shelter/add', 13),
(51, 'Pencatatan Kuitansi', 'kuitansi/catat', 10),
(52, 'Cek Barcode', 'endorsement/checkbarcode', 10),
(53, 'Revisi PK', 'pk/revisi', 10),
(54, 'Download Laporan Rekap', 'rekapendorsement', 10),
(55, 'Cekal Agensi', 'cekal/agensi', 10),
(56, 'Cekal PPTKIS', 'cekal/pptkis', 10),
(57, 'Pendaftaran Kuota', '/paket/add', 10),
(58, 'View Quota', '/paket', 10),
(59, 'Update Agency', 'endorsement/updateagency', 10),
(60, 'Create JO Packet', 'endorsement/createjo', 10),
(61, 'View JO Packet', 'endorsement/viewjo', 10),
(62, 'Upload Stamp', 'pk/uploadstamp', 10),
(63, 'Pemulangan TKI', 'pemulangantki', 11),
(64, 'Tambah Pemulangan TKI', 'pemulangantki/add', 11),
(65, 'Cek Registrasi Agensi', 'agensi/cek', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `privilegegroup`
--

CREATE TABLE IF NOT EXISTS `privilegegroup` (
  `idprivilegegroup` int(11) NOT NULL AUTO_INCREMENT,
  `privilegegroupname` varchar(45) DEFAULT NULL,
  `masterprivilegegroupid` int(11) NOT NULL,
  PRIMARY KEY (`idprivilegegroup`),
  KEY `fk_privilegegroup_masterprivilegegroup1_idx` (`masterprivilegegroupid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data untuk tabel `privilegegroup`
--

INSERT INTO `privilegegroup` (`idprivilegegroup`, `privilegegroupname`, `masterprivilegegroupid`) VALUES
(1, 'Institusi', 1),
(2, 'Klasifikasi', 1),
(3, 'Tipe Pekerjaan', 1),
(4, 'Master Privilege', 1),
(5, 'Privilege Group', 1),
(6, 'Detail Privilege', 1),
(7, 'Level', 1),
(8, 'User', 1),
(9, 'Tipe Input', 1),
(10, 'No Group', 2),
(11, 'No Group', 3),
(13, 'Shelter', 1),
(14, 'Media', 1),
(16, 'Wilayah', 1),
(17, 'Currency', 1),
(18, 'Agensi & PPTKIS', 1),
(19, 'Kantor', 1),
(20, 'Setting', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shelter`
--

CREATE TABLE IF NOT EXISTS `shelter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET big5 NOT NULL,
  `isactive` varchar(45) DEFAULT NULL,
  `idinstitution` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_shelter_institution1_idx` (`idinstitution`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `shelter`
--

INSERT INTO `shelter` (`id`, `name`, `isactive`, `idinstitution`) VALUES
(1, 'Shelter Taichung', '1', 2),
(2, 'Shelter Conhi', '1', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tindak_lanjut`
--

CREATE TABLE IF NOT EXISTS `tindak_lanjut` (
  `idtindaklanjut` int(12) NOT NULL AUTO_INCREMENT,
  `idmasalah` int(11) NOT NULL,
  `tindakan` text NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(45) NOT NULL,
  PRIMARY KEY (`idtindaklanjut`),
  KEY `id` (`idtindaklanjut`),
  KEY `fk_tindak_lanjut_masalah1_idx` (`idmasalah`),
  KEY `fk_tindak_lanjut_user1_idx` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3799 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe`
--

CREATE TABLE IF NOT EXISTS `tipe` (
  `idtipe` int(11) NOT NULL AUTO_INCREMENT,
  `tipe` varchar(150) DEFAULT NULL,
  `kode` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idtipe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tipe`
--

INSERT INTO `tipe` (`idtipe`, `tipe`, `kode`) VALUES
(1, 'Legalisasi Dokumen TKI (Job Order)', 'A'),
(2, 'Recruitment Agreement (PPTKIS dan Agensi)', 'B');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tki`
--

CREATE TABLE IF NOT EXISTS `tki` (
  `tkid` int(11) NOT NULL AUTO_INCREMENT,
  `ejid` int(11) NOT NULL,
  `tknama` varchar(50) DEFAULT NULL,
  `tknamacn` varchar(50) DEFAULT NULL,
  `tkalmtid` varchar(120) DEFAULT NULL,
  `tkpaspor` varchar(70) DEFAULT NULL,
  `tktglkeluar` date DEFAULT NULL,
  `tktmptkeluar` varchar(30) DEFAULT NULL,
  `tktgllahir` date DEFAULT NULL,
  `tktmptlahir` varchar(30) DEFAULT NULL,
  `tkjk` varchar(1) DEFAULT NULL COMMENT 'Value	Label\r\n            L	Laki-laki\r\n            P	Perempuan',
  `tkstatkwn` decimal(1,0) DEFAULT NULL COMMENT 'Value	Label\r\n            0	Menikah\r\n            1	Belum Menikah\r\n            2	Cerai',
  `tkjmlanaktanggungan` decimal(2,0) DEFAULT NULL,
  `tkahliwaris` varchar(50) DEFAULT NULL,
  `tknama2` varchar(50) DEFAULT NULL,
  `tknamacn2` varchar(50) DEFAULT NULL,
  `tkalmt2` varchar(120) DEFAULT NULL,
  `tkalmtcn2` varchar(100) DEFAULT NULL,
  `tktelp` varchar(20) DEFAULT NULL,
  `tkhub` varchar(30) DEFAULT NULL,
  `tkbc` varchar(10) NOT NULL,
  `tkstat` decimal(1,0) DEFAULT '0',
  `tkrevid` int(11) DEFAULT NULL,
  `tktglubah` date DEFAULT NULL,
  `tktglendorsement` date DEFAULT NULL,
  `tktglendorsement2` date DEFAULT NULL COMMENT 'history pernah diendorse',
  `tkiid` int(11) DEFAULT NULL,
  `tkidownloadurl` varchar(255) NOT NULL,
  `md5tki` varchar(255) NOT NULL,
  `md5ej` varchar(255) NOT NULL,
  PRIMARY KEY (`tkid`),
  UNIQUE KEY `uq_tkbc` (`tkbc`),
  KEY `tki_tkiid` (`tkiid`),
  KEY `fk_tki_entryjo1_idx` (`ejid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data untuk tabel `tki`
--

INSERT INTO `tki` (`tkid`, `ejid`, `tknama`, `tknamacn`, `tkalmtid`, `tkpaspor`, `tktglkeluar`, `tktmptkeluar`, `tktgllahir`, `tktmptlahir`, `tkjk`, `tkstatkwn`, `tkjmlanaktanggungan`, `tkahliwaris`, `tknama2`, `tknamacn2`, `tkalmt2`, `tkalmtcn2`, `tktelp`, `tkhub`, `tkbc`, `tkstat`, `tkrevid`, `tktglubah`, `tktglendorsement`, `tktglendorsement2`, `tkiid`, `tkidownloadurl`, `md5tki`, `md5ej`) VALUES
(2, 1, 'Setyassida', 'Wa Lau Bu', 'Wonogiri', 'H780GFT', '2017-01-01', 'dummy', '2010-11-15', 'Wonogiri', 'L', '1', '2', 'Saipull', 'Saipull', 'Pul Li Naw', 'Washington', 'dummy', '08675787687', 'Ayah', 'kl988', '1', 3, '2017-01-08', '2017-01-06', NULL, NULL, '', '', ''),
(3, 1, 'Ling', '-', 'Solo', 'H123FGB', '2017-01-05', 'dummy', '2005-01-01', 'Solo', 'P', '0', NULL, 'Jamil', 'Jamil', '-', 'Beijing', '-', '08123123123', 'Ayah', 'kl999', '0', NULL, NULL, '2017-04-13', NULL, NULL, '', '', ''),
(4, 2, 'Dono', '-', 'Kediri', 'H123123', '2017-01-07', 'dummy', '2001-01-01', 'Kediri', 'L', '1', '2', 'Ahmad', 'Ahmad', '-', 'Indonesia', '-', '08123123231', 'Ayah', 'kl1000', '0', NULL, NULL, '2017-02-01', NULL, NULL, '', '', ''),
(19, 42, 'DEWI RATNANINGSIH', NULL, 'TANJUNG SERAYAN RT. 19 RW. 5 KEL. TANJUNG SERAYA KEC. MESUJI KECAMATAN MESUJI', 'AT677397', '0000-00-00', 'KOTABUMI ', '0000-00-00', 'LAMPUNG TENGAH', 'P', '0', '0', 'DADANG', 'DADANG', NULL, 'TANJUNG SERAYAN RT. 19 RW. 5 KEL. TANJUNG SERAYA KEC. MESUJI', NULL, '21', 'AYAH', 'T170752ZS', '0', NULL, NULL, NULL, NULL, 11300000, 'tkiperawattaiwan.php', '1f0e3dad99908345f7439f8ffabdffc4', 'a1d0c6e83f027327d8461063f4ac58a6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tkimasalah`
--

CREATE TABLE IF NOT EXISTS `tkimasalah` (
  `idtkimasalah` int(11) NOT NULL AUTO_INCREMENT,
  `idmasalah` int(11) NOT NULL,
  `jk` varchar(11) DEFAULT NULL,
  `namatki` varchar(100) CHARACTER SET utf8 NOT NULL,
  `paspor` varchar(10) DEFAULT NULL,
  `arc` varchar(30) DEFAULT NULL,
  `handphone` varchar(50) DEFAULT NULL,
  `alamatindonesia` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `alamattaiwan` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `enable` int(11) NOT NULL DEFAULT '1',
  `tkiid` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtkimasalah`),
  KEY `fk_tkimasalah_masalah1_idx` (`idmasalah`),
  KEY `fk_tkimasalah_tki1_idx` (`tkiid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7901 ;

--
-- Dumping data untuk tabel `tkimasalah`
--

INSERT INTO `tkimasalah` (`idtkimasalah`, `idmasalah`, `jk`, `namatki`, `paspor`, `arc`, `handphone`, `alamatindonesia`, `alamattaiwan`, `enable`, `tkiid`) VALUES
(7899, 3488, 'P', 'Siti Halimah', 'AN602601', NULL, '-', 'Jalan Diponegoro, Surabaya', 'Shen Cin Wu', 1, NULL),
(7900, 3489, 'L', 'Rudi Prakarsa', 'AT515151', NULL, '-', 'Jalan Soekarno Hatta, Bandung', 'Xi Men Ding', 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tki_pulang`
--

CREATE TABLE IF NOT EXISTS `tki_pulang` (
  `idtkipulang` int(11) NOT NULL AUTO_INCREMENT,
  `jeniskepulangan` varchar(100) NOT NULL,
  `jk` varchar(2) DEFAULT NULL,
  `namatki` varchar(100) NOT NULL,
  `paspor` varchar(10) DEFAULT NULL,
  `alamatid` varchar(100) DEFAULT NULL,
  `namaagensi` varchar(100) DEFAULT NULL,
  `namapptkis` varchar(100) DEFAULT NULL,
  `namamajikan` varchar(100) DEFAULT NULL,
  `kronologis` text,
  `tanggalpemulangan` date DEFAULT NULL,
  `statuspemulangan` int(11) DEFAULT NULL,
  `tkiid` int(11) DEFAULT NULL,
  `idinstitution` int(11) NOT NULL,
  PRIMARY KEY (`idtkipulang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `tki_pulang`
--

INSERT INTO `tki_pulang` (`idtkipulang`, `jeniskepulangan`, `jk`, `namatki`, `paspor`, `alamatid`, `namaagensi`, `namapptkis`, `namamajikan`, `kronologis`, `tanggalpemulangan`, `statuspemulangan`, `tkiid`, `idinstitution`) VALUES
(8, 'Jenazah', 'P', 'DEWI RATNANINGSIHH', 'AT677397', 'TANJUNG SERAYAN RT. 19 RW. 5 KEL. TANJUNG SERAYA KEC. MESUJI KECAMATAN MESUJI', 'LI YUAN INTERNATIOANL CO,LTD', 'TATA ATLAS MASTERINDO', 'DADANG', 'abcd', '2017-04-20', 1, 11300000, 2),
(10, 'Sakit', 'L', 'nanonano', '2141343', 'abcd', 'abcd', 'abcd', 'abcd', 'abcd', '2017-04-11', 2, NULL, 2),
(11, 'Repatriasi', 'L', 'nanonanonano', '2141343', 'abcd', 'abcd', 'abcd', 'abcd', 'abcde', '2017-04-20', 1, NULL, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `idinstitution` int(11) NOT NULL,
  `idlevel` int(11) NOT NULL,
  `idkantor` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `fk_user_institution1_idx` (`idinstitution`),
  KEY `fk_user_level1_idx` (`idlevel`),
  KEY `fk_user_kantor1_idx` (`idkantor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`, `name`, `idinstitution`, `idlevel`, `idkantor`) VALUES
('989898989', '2b3f9ae6e8fb143de3ab3f42603b6ded', '9898', 4, 4, NULL),
('agent', 'b33aed8f3134996703dc39f9a7c95783', 'Agent', 2, 3, 3),
('budi', '00dfc53ee86af02e742515cdcf075ed3', 'Budi', 2, 4, 3),
('doreDO123', 'e1f60c33a5bdad8a994a3ed27a2c58ef', 'doremi', 4, 4, NULL),
('gian', '56ea9c664e8c9f1ad611cf8e5f1bb41c', 'Gian Sebastian', 2, 2, 2),
('giangian9090', '432c1815326c470d9e179fbdca9fa6d1', 'gians', 4, 4, NULL),
('hilman', '44ed2b584bcff6f010c7305821cf541a', 'Hilman', 2, 2, 2),
('lol22222', '8aa4f3cd27658ebc70d0f72014e063cd', 'lol', 2, 4, NULL),
('nyobnyo123', '3d5105fe7acae87f422854d0d1a2e182', 'nyob', 4, 4, NULL),
('sadmin', 'ba41b0eedddc9abaf3d1b55781c4a9c9', 'Superman', 1, 1, 1),
('testtestingska', '7b2f583bb84ff8c4d32b9e421dc716ba', 'testingskarang', 2, 4, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wilayah`
--

CREATE TABLE IF NOT EXISTS `wilayah` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `wilayah`
--

INSERT INTO `wilayah` (`id`, `name`) VALUES
(1, 'New Taipei Country'),
(2, 'Taipei City');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `agensiregistrasi`
--
ALTER TABLE `agensiregistrasi`
  ADD CONSTRAINT `fk_institution_registration` FOREIGN KEY (`idinstitution`) REFERENCES `institution` (`idinstitution`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `cekalagensi`
--
ALTER TABLE `cekalagensi`
  ADD CONSTRAINT `fk_cekalagensi_institution1` FOREIGN KEY (`idinstitution`) REFERENCES `institution` (`idinstitution`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `cekalmajikan`
--
ALTER TABLE `cekalmajikan`
  ADD CONSTRAINT `fk_cekalmajikan_institution1` FOREIGN KEY (`idinstitution`) REFERENCES `institution` (`idinstitution`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `entryjo`
--
ALTER TABLE `entryjo`
  ADD CONSTRAINT `entryjo_agid` FOREIGN KEY (`agid`) REFERENCES `magensi` (`agid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `entryjo_ppkode` FOREIGN KEY (`ppkode`) REFERENCES `mpptkis` (`ppkode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_entryjo_institution1` FOREIGN KEY (`idinstitution`) REFERENCES `institution` (`idinstitution`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_entryjo_jenispekerjaan1` FOREIGN KEY (`idjenispekerjaan`) REFERENCES `jenispekerjaan` (`idjenispekerjaan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `fk_history_masalah1` FOREIGN KEY (`idmasalah`) REFERENCES `masalah` (`idmasalah`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_history_user1` FOREIGN KEY (`user_username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `inputdetail_penempatan`
--
ALTER TABLE `inputdetail_penempatan`
  ADD CONSTRAINT `fk_inputdetail_inputcategory1` FOREIGN KEY (`idcategory_penempatan`) REFERENCES `inputcategory_penempatan` (`idcategory_penempatan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inputdetail_inputtype1` FOREIGN KEY (`idinputtype`) REFERENCES `inputtype` (`idinputtype`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `inputdetail_perlindungan`
--
ALTER TABLE `inputdetail_perlindungan`
  ADD CONSTRAINT `fk_inputdetail_perlindungan_inputcategory_perlindungan1` FOREIGN KEY (`idcategory_perlindungan`) REFERENCES `inputcategory_perlindungan` (`idcategory_perlindungan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inputdetail_perlindungan_inputtype1` FOREIGN KEY (`idinputtype`) REFERENCES `inputtype` (`idinputtype`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `inputoption_penempatan`
--
ALTER TABLE `inputoption_penempatan`
  ADD CONSTRAINT `fk_inputoption_inputdetail1` FOREIGN KEY (`idinputdetail_penempatan`) REFERENCES `inputdetail_penempatan` (`idinputdetail_penempatan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `inputoption_perlindungan`
--
ALTER TABLE `inputoption_perlindungan`
  ADD CONSTRAINT `fk_inputoption_perlindungan_inputdetail_perlindungan1` FOREIGN KEY (`idinputdetail_perlindungan`) REFERENCES `inputdetail_perlindungan` (`idinputdetail_perlindungan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `institution`
--
ALTER TABLE `institution`
  ADD CONSTRAINT `fk_currency` FOREIGN KEY (`idcurrency`) REFERENCES `currency` (`idcurrency`);

--
-- Ketidakleluasaan untuk tabel `institution_has_inputdetail_penempatan`
--
ALTER TABLE `institution_has_inputdetail_penempatan`
  ADD CONSTRAINT `fk_institution_has_inputdetail_inputdetail1` FOREIGN KEY (`idinputdetail_penempatan`) REFERENCES `inputdetail_penempatan` (`idinputdetail_penempatan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_institution_has_inputdetail_institution` FOREIGN KEY (`idinstitution`) REFERENCES `institution` (`idinstitution`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `institution_has_inputdetail_perlindungan`
--
ALTER TABLE `institution_has_inputdetail_perlindungan`
  ADD CONSTRAINT `fk_institution_has_inputdetail_perlindungan_inputdetail_perli1` FOREIGN KEY (`idinputdetail_perlindungan`) REFERENCES `inputdetail_perlindungan` (`idinputdetail_perlindungan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_institution_has_inputdetail_perlindungan_institution1` FOREIGN KEY (`idinstitution`) REFERENCES `institution` (`idinstitution`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `institution_has_klasifikasi`
--
ALTER TABLE `institution_has_klasifikasi`
  ADD CONSTRAINT `fk_klasifikasi_has_institution_institution1` FOREIGN KEY (`idinstitution`) REFERENCES `institution` (`idinstitution`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_klasifikasi_has_institution_klasifikasi1` FOREIGN KEY (`id`) REFERENCES `klasifikasi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `institution_has_media`
--
ALTER TABLE `institution_has_media`
  ADD CONSTRAINT `fk_institution_has_media_institution1` FOREIGN KEY (`idinstitution`) REFERENCES `institution` (`idinstitution`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_institution_has_media_media1` FOREIGN KEY (`id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `institution_has_wilayah`
--
ALTER TABLE `institution_has_wilayah`
  ADD CONSTRAINT `fk_institution_has_wilayah_institution1` FOREIGN KEY (`idinstitution`) REFERENCES `institution` (`idinstitution`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_institution_has_wilayah_wilayah1` FOREIGN KEY (`id`) REFERENCES `wilayah` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jenispekerjaan`
--
ALTER TABLE `jenispekerjaan`
  ADD CONSTRAINT `fk_jenispekerjaan_institution1` FOREIGN KEY (`idinstitution`) REFERENCES `institution` (`idinstitution`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jo`
--
ALTER TABLE `jo`
  ADD CONSTRAINT `fk_jo_institution1` FOREIGN KEY (`idinstitution`) REFERENCES `institution` (`idinstitution`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_jo_magensi1` FOREIGN KEY (`agid`) REFERENCES `magensi` (`agid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_jo_mpptkis1` FOREIGN KEY (`ppkode`) REFERENCES `mpptkis` (`ppkode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_jo_user1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jodetail`
--
ALTER TABLE `jodetail`
  ADD CONSTRAINT `fk_jodetail_jenispekerjaan1` FOREIGN KEY (`idjenispekerjaan`) REFERENCES `jenispekerjaan` (`idjenispekerjaan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jodetail_ibfk_2` FOREIGN KEY (`jobid`) REFERENCES `jo` (`jobid`);

--
-- Ketidakleluasaan untuk tabel `kantor`
--
ALTER TABLE `kantor`
  ADD CONSTRAINT `fk_kantor_institution1` FOREIGN KEY (`idinstitution`) REFERENCES `institution` (`idinstitution`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kuitansi`
--
ALTER TABLE `kuitansi`
  ADD CONSTRAINT `fk_kuitansi_institution1` FOREIGN KEY (`idinstitution`) REFERENCES `institution` (`idinstitution`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kuitansi_tipe1` FOREIGN KEY (`idtipe`) REFERENCES `tipe` (`idtipe`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kuitansi_user1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `level_has_privilegedetail`
--
ALTER TABLE `level_has_privilegedetail`
  ADD CONSTRAINT `fk_level_has_priviligedetail_level1` FOREIGN KEY (`idlevel`) REFERENCES `level` (`idlevel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_level_has_priviligedetail_priviligedetail1` FOREIGN KEY (`idprivilege`) REFERENCES `privilegedetail` (`idprivilege`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `logagensi`
--
ALTER TABLE `logagensi`
  ADD CONSTRAINT `fk_log_magensi1` FOREIGN KEY (`agid`) REFERENCES `magensi` (`agid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `magensi`
--
ALTER TABLE `magensi`
  ADD CONSTRAINT `fk_institution` FOREIGN KEY (`idinstitution`) REFERENCES `institution` (`idinstitution`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relationship_31` FOREIGN KEY (`username`) REFERENCES `user` (`username`),
  ADD CONSTRAINT `magensi_username` FOREIGN KEY (`username`) REFERENCES `user` (`username`);

--
-- Ketidakleluasaan untuk tabel `pencatatanej`
--
ALTER TABLE `pencatatanej`
  ADD CONSTRAINT `fk_kuitansi_has_entryjo_entryjo1` FOREIGN KEY (`ejid`) REFERENCES `entryjo` (`ejid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kuitansi_has_entryjo_kuitansi1` FOREIGN KEY (`kuid`) REFERENCES `kuitansi` (`kuid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `privilegedetail`
--
ALTER TABLE `privilegedetail`
  ADD CONSTRAINT `fk_priviligedetail_privilegegroup1` FOREIGN KEY (`idprivilegegroup`) REFERENCES `privilegegroup` (`idprivilegegroup`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `privilegegroup`
--
ALTER TABLE `privilegegroup`
  ADD CONSTRAINT `fk_privilegegroup_masterprivilegegroup1` FOREIGN KEY (`masterprivilegegroupid`) REFERENCES `masterprivilegegroup` (`masterprivilegegroupid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tki`
--
ALTER TABLE `tki`
  ADD CONSTRAINT `fk_tki_entryjo1` FOREIGN KEY (`ejid`) REFERENCES `entryjo` (`ejid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tkimasalah`
--
ALTER TABLE `tkimasalah`
  ADD CONSTRAINT `fk_tkimasalah_masalah1` FOREIGN KEY (`idmasalah`) REFERENCES `masalah` (`idmasalah`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tkimasalah_tki1` FOREIGN KEY (`tkiid`) REFERENCES `tki` (`tkid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_institution1` FOREIGN KEY (`idinstitution`) REFERENCES `institution` (`idinstitution`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_kantor1` FOREIGN KEY (`idkantor`) REFERENCES `kantor` (`idkantor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_level1` FOREIGN KEY (`idlevel`) REFERENCES `level` (`idlevel`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
