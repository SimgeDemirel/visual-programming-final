-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 03 Oca 2023, 17:51:49
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sigortadb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteri`
--

DROP TABLE IF EXISTS `musteri`;
CREATE TABLE IF NOT EXISTS `musteri` (
  `musteri_id` int(11) NOT NULL AUTO_INCREMENT,
  `musteri_adsoyad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `musteri_tel` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `musteri_adres` varchar(520) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`musteri_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `musteri`
--

INSERT INTO `musteri` (`musteri_id`, `musteri_adsoyad`, `musteri_tel`, `musteri_adres`) VALUES
(1, 'Murat SARI', '55555', 'Zagreb'),
(2, 'Şeyda Koçuk', '5555', 'Adres');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `police`
--

DROP TABLE IF EXISTS `police`;
CREATE TABLE IF NOT EXISTS `police` (
  `police_id` int(11) NOT NULL,
  `musteri` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `sigorta_turu` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `police_baslangıc` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `police_bitis` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `police_fiyat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sigorta`
--

DROP TABLE IF EXISTS `sigorta`;
CREATE TABLE IF NOT EXISTS `sigorta` (
  `sigorta_id` int(11) NOT NULL,
  `sigorta_türü` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
