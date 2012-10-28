-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2012 年 10 月 15 日 23:22
-- 服务器版本: 5.1.56-community-log
-- PHP 版本: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `empirecms`
--
CREATE DATABASE `empirecms` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `empirecms`;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_article`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `keyboard` char(160) NOT NULL DEFAULT '',
  `keyid` char(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` char(30) NOT NULL DEFAULT '',
  `ztid` char(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` char(20) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `filename` char(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` char(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` char(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `writer` char(30) NOT NULL DEFAULT '',
  `befrom` char(60) NOT NULL DEFAULT '',
  `newstext` char(50) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  `stb` char(4) NOT NULL DEFAULT '',
  `copyids` char(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` char(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_article_data_1`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_article_data_1` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_article_doc`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_article_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `keyboard` char(160) NOT NULL DEFAULT '',
  `keyid` char(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` char(30) NOT NULL DEFAULT '',
  `ztid` char(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` char(20) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `filename` char(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` char(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` char(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `writer` char(30) NOT NULL DEFAULT '',
  `befrom` char(60) NOT NULL DEFAULT '',
  `newstext` char(50) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  `stb` char(4) NOT NULL DEFAULT '',
  `copyids` char(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` char(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_article_doc_data`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_article_doc_data` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_download`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `keyboard` varchar(160) NOT NULL DEFAULT '',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ztid` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `softfj` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(16) NOT NULL DEFAULT '',
  `softtype` varchar(16) NOT NULL DEFAULT '',
  `softsq` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `softsay` text NOT NULL,
  `stb` varchar(4) NOT NULL DEFAULT '',
  `copyids` varchar(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` varchar(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_download_data_1`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_download_data_1` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `softwriter` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(80) NOT NULL DEFAULT '',
  `demo` varchar(120) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_download_doc`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_download_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `keyboard` varchar(160) NOT NULL DEFAULT '',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ztid` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `softfj` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(16) NOT NULL DEFAULT '',
  `softtype` varchar(16) NOT NULL DEFAULT '',
  `softsq` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `softsay` text NOT NULL,
  `stb` varchar(4) NOT NULL DEFAULT '',
  `copyids` varchar(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` varchar(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_download_doc_data`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_download_doc_data` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `softwriter` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(80) NOT NULL DEFAULT '',
  `demo` varchar(120) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_flash`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `keyboard` varchar(160) NOT NULL DEFAULT '',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ztid` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `flashwriter` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `flashurl` varchar(255) NOT NULL DEFAULT '',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  `flashsay` text NOT NULL,
  `stb` varchar(4) NOT NULL DEFAULT '',
  `copyids` varchar(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` varchar(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_flash_data_1`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_flash_data_1` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_flash_doc`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_flash_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `keyboard` varchar(160) NOT NULL DEFAULT '',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ztid` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `flashwriter` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `flashurl` varchar(255) NOT NULL DEFAULT '',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  `flashsay` text NOT NULL,
  `stb` varchar(4) NOT NULL DEFAULT '',
  `copyids` varchar(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` varchar(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_flash_doc_data`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_flash_doc_data` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_info`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `keyboard` varchar(160) NOT NULL DEFAULT '',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ztid` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `smalltext` text NOT NULL,
  `myarea` varchar(30) NOT NULL DEFAULT '',
  `stb` varchar(4) NOT NULL DEFAULT '',
  `copyids` varchar(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` varchar(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_info_data_1`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_info_data_1` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycontact` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_info_doc`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_info_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `keyboard` varchar(160) NOT NULL DEFAULT '',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ztid` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `smalltext` text NOT NULL,
  `myarea` varchar(30) NOT NULL DEFAULT '',
  `stb` varchar(4) NOT NULL DEFAULT '',
  `copyids` varchar(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` varchar(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_info_doc_data`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_info_doc_data` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycontact` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_infoclass_article`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_infoclass_article` (
  `classid` int(11) NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_ftitle` text NOT NULL,
  `z_ftitle` varchar(255) NOT NULL DEFAULT '',
  `qz_ftitle` text NOT NULL,
  `save_ftitle` varchar(10) NOT NULL DEFAULT '',
  `zz_smalltext` text NOT NULL,
  `z_smalltext` varchar(255) NOT NULL DEFAULT '',
  `qz_smalltext` text NOT NULL,
  `save_smalltext` varchar(10) NOT NULL DEFAULT '',
  `zz_writer` text NOT NULL,
  `z_writer` varchar(255) NOT NULL DEFAULT '',
  `qz_writer` text NOT NULL,
  `save_writer` varchar(10) NOT NULL DEFAULT '',
  `zz_befrom` text NOT NULL,
  `z_befrom` varchar(255) NOT NULL DEFAULT '',
  `qz_befrom` text NOT NULL,
  `save_befrom` varchar(10) NOT NULL DEFAULT '',
  `zz_newstext` text NOT NULL,
  `z_newstext` varchar(255) NOT NULL DEFAULT '',
  `qz_newstext` text NOT NULL,
  `save_newstext` varchar(10) NOT NULL DEFAULT '',
  `zz_diggtop` text NOT NULL,
  `z_diggtop` varchar(255) NOT NULL DEFAULT '',
  `qz_diggtop` varchar(255) NOT NULL DEFAULT '',
  `save_diggtop` varchar(10) NOT NULL DEFAULT '',
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_infoclass_download`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_infoclass_download` (
  `classid` int(11) NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_softwriter` text NOT NULL,
  `z_softwriter` varchar(255) NOT NULL DEFAULT '',
  `qz_softwriter` text NOT NULL,
  `save_softwriter` varchar(10) NOT NULL DEFAULT '',
  `zz_homepage` text NOT NULL,
  `z_homepage` varchar(255) NOT NULL DEFAULT '',
  `qz_homepage` text NOT NULL,
  `save_homepage` varchar(10) NOT NULL DEFAULT '',
  `zz_demo` text NOT NULL,
  `z_demo` varchar(255) NOT NULL DEFAULT '',
  `qz_demo` text NOT NULL,
  `save_demo` varchar(10) NOT NULL DEFAULT '',
  `zz_softfj` text NOT NULL,
  `z_softfj` varchar(255) NOT NULL DEFAULT '',
  `qz_softfj` text NOT NULL,
  `save_softfj` varchar(10) NOT NULL DEFAULT '',
  `zz_language` text NOT NULL,
  `z_language` varchar(255) NOT NULL DEFAULT '',
  `qz_language` text NOT NULL,
  `save_language` varchar(10) NOT NULL DEFAULT '',
  `zz_softtype` text NOT NULL,
  `z_softtype` varchar(255) NOT NULL DEFAULT '',
  `qz_softtype` text NOT NULL,
  `save_softtype` varchar(10) NOT NULL DEFAULT '',
  `zz_softsq` text NOT NULL,
  `z_softsq` varchar(255) NOT NULL DEFAULT '',
  `qz_softsq` text NOT NULL,
  `save_softsq` varchar(10) NOT NULL DEFAULT '',
  `zz_star` text NOT NULL,
  `z_star` varchar(255) NOT NULL DEFAULT '',
  `qz_star` text NOT NULL,
  `save_star` varchar(10) NOT NULL DEFAULT '',
  `zz_filetype` text NOT NULL,
  `z_filetype` varchar(255) NOT NULL DEFAULT '',
  `qz_filetype` text NOT NULL,
  `save_filetype` varchar(10) NOT NULL DEFAULT '',
  `zz_filesize` text NOT NULL,
  `z_filesize` varchar(255) NOT NULL DEFAULT '',
  `qz_filesize` text NOT NULL,
  `save_filesize` varchar(10) NOT NULL DEFAULT '',
  `zz_downpath` text NOT NULL,
  `z_downpath` varchar(255) NOT NULL DEFAULT '',
  `qz_downpath` text NOT NULL,
  `save_downpath` varchar(10) NOT NULL DEFAULT '',
  `zz_softsay` text NOT NULL,
  `z_softsay` varchar(255) NOT NULL DEFAULT '',
  `qz_softsay` text NOT NULL,
  `save_softsay` varchar(10) NOT NULL DEFAULT '',
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_infoclass_flash`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_infoclass_flash` (
  `classid` int(11) NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_flashwriter` text NOT NULL,
  `z_flashwriter` varchar(255) NOT NULL DEFAULT '',
  `qz_flashwriter` text NOT NULL,
  `save_flashwriter` varchar(10) NOT NULL DEFAULT '',
  `zz_email` text NOT NULL,
  `z_email` varchar(255) NOT NULL DEFAULT '',
  `qz_email` text NOT NULL,
  `save_email` varchar(10) NOT NULL DEFAULT '',
  `zz_star` text NOT NULL,
  `z_star` varchar(255) NOT NULL DEFAULT '',
  `qz_star` text NOT NULL,
  `save_star` varchar(10) NOT NULL DEFAULT '',
  `zz_filesize` text NOT NULL,
  `z_filesize` varchar(255) NOT NULL DEFAULT '',
  `qz_filesize` text NOT NULL,
  `save_filesize` varchar(10) NOT NULL DEFAULT '',
  `zz_flashurl` text NOT NULL,
  `z_flashurl` varchar(255) NOT NULL DEFAULT '',
  `qz_flashurl` text NOT NULL,
  `save_flashurl` varchar(10) NOT NULL DEFAULT '',
  `zz_width` text NOT NULL,
  `z_width` varchar(255) NOT NULL DEFAULT '',
  `qz_width` text NOT NULL,
  `save_width` varchar(10) NOT NULL DEFAULT '',
  `zz_height` text NOT NULL,
  `z_height` varchar(255) NOT NULL DEFAULT '',
  `qz_height` text NOT NULL,
  `save_height` varchar(10) NOT NULL DEFAULT '',
  `zz_flashsay` text NOT NULL,
  `z_flashsay` varchar(255) NOT NULL DEFAULT '',
  `qz_flashsay` text NOT NULL,
  `save_flashsay` varchar(10) NOT NULL DEFAULT '',
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_infoclass_info`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_infoclass_info` (
  `classid` int(11) NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_smalltext` text NOT NULL,
  `z_smalltext` varchar(255) NOT NULL DEFAULT '',
  `qz_smalltext` text NOT NULL,
  `save_smalltext` varchar(10) NOT NULL DEFAULT '',
  `zz_myarea` text NOT NULL,
  `z_myarea` varchar(255) NOT NULL DEFAULT '',
  `qz_myarea` text NOT NULL,
  `save_myarea` varchar(10) NOT NULL DEFAULT '',
  `zz_email` text NOT NULL,
  `z_email` varchar(255) NOT NULL DEFAULT '',
  `qz_email` text NOT NULL,
  `save_email` varchar(10) NOT NULL DEFAULT '',
  `zz_mycontact` text NOT NULL,
  `z_mycontact` varchar(255) NOT NULL DEFAULT '',
  `qz_mycontact` text NOT NULL,
  `save_mycontact` varchar(10) NOT NULL DEFAULT '',
  `zz_address` text NOT NULL,
  `z_address` varchar(255) NOT NULL DEFAULT '',
  `qz_address` text NOT NULL,
  `save_address` varchar(10) NOT NULL DEFAULT '',
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_infoclass_movie`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_infoclass_movie` (
  `classid` int(11) NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_movietype` text NOT NULL,
  `z_movietype` varchar(255) NOT NULL DEFAULT '',
  `qz_movietype` text NOT NULL,
  `save_movietype` varchar(10) NOT NULL DEFAULT '',
  `zz_company` text NOT NULL,
  `z_company` varchar(255) NOT NULL DEFAULT '',
  `qz_company` varchar(255) NOT NULL DEFAULT '',
  `save_company` varchar(10) NOT NULL DEFAULT '',
  `zz_movietime` text NOT NULL,
  `z_movietime` varchar(255) NOT NULL DEFAULT '',
  `qz_movietime` varchar(255) NOT NULL DEFAULT '',
  `save_movietime` varchar(10) NOT NULL DEFAULT '',
  `zz_player` text NOT NULL,
  `z_player` varchar(255) NOT NULL DEFAULT '',
  `qz_player` varchar(255) NOT NULL DEFAULT '',
  `save_player` varchar(10) NOT NULL DEFAULT '',
  `zz_playadmin` text NOT NULL,
  `z_playadmin` varchar(255) NOT NULL DEFAULT '',
  `qz_playadmin` varchar(255) NOT NULL DEFAULT '',
  `save_playadmin` varchar(10) NOT NULL DEFAULT '',
  `zz_filetype` text NOT NULL,
  `z_filetype` varchar(255) NOT NULL DEFAULT '',
  `qz_filetype` text NOT NULL,
  `save_filetype` varchar(10) NOT NULL DEFAULT '',
  `zz_filesize` text NOT NULL,
  `z_filesize` varchar(255) NOT NULL DEFAULT '',
  `qz_filesize` text NOT NULL,
  `save_filesize` varchar(10) NOT NULL DEFAULT '',
  `zz_star` text NOT NULL,
  `z_star` varchar(255) NOT NULL DEFAULT '',
  `qz_star` text NOT NULL,
  `save_star` varchar(10) NOT NULL DEFAULT '',
  `zz_playdk` text NOT NULL,
  `z_playdk` varchar(255) NOT NULL DEFAULT '',
  `qz_playdk` text NOT NULL,
  `save_playdk` varchar(10) NOT NULL DEFAULT '',
  `zz_playtime` text NOT NULL,
  `z_playtime` varchar(255) NOT NULL DEFAULT '',
  `qz_playtime` varchar(255) NOT NULL DEFAULT '',
  `save_playtime` varchar(10) NOT NULL DEFAULT '',
  `zz_moviefen` text NOT NULL,
  `z_moviefen` varchar(255) NOT NULL DEFAULT '',
  `qz_moviefen` varchar(255) NOT NULL DEFAULT '',
  `save_moviefen` varchar(10) NOT NULL DEFAULT '',
  `zz_downpath` text NOT NULL,
  `z_downpath` varchar(255) NOT NULL DEFAULT '',
  `qz_downpath` text NOT NULL,
  `save_downpath` varchar(10) NOT NULL DEFAULT '',
  `zz_onlinepath` text NOT NULL,
  `z_onlinepath` varchar(255) NOT NULL DEFAULT '',
  `qz_onlinepath` text NOT NULL,
  `save_onlinepath` varchar(10) NOT NULL DEFAULT '',
  `zz_moviesay` text NOT NULL,
  `z_moviesay` varchar(255) NOT NULL DEFAULT '',
  `qz_moviesay` text NOT NULL,
  `save_moviesay` varchar(10) NOT NULL DEFAULT '',
  `zz_playerid` text NOT NULL,
  `z_playerid` varchar(255) NOT NULL DEFAULT '',
  `qz_playerid` text NOT NULL,
  `save_playerid` varchar(10) NOT NULL DEFAULT '',
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_infoclass_news`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_infoclass_news` (
  `classid` int(11) NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_ftitle` text NOT NULL,
  `z_ftitle` varchar(255) NOT NULL DEFAULT '',
  `qz_ftitle` text NOT NULL,
  `save_ftitle` varchar(10) NOT NULL DEFAULT '',
  `zz_smalltext` text NOT NULL,
  `z_smalltext` varchar(255) NOT NULL DEFAULT '',
  `qz_smalltext` text NOT NULL,
  `save_smalltext` varchar(10) NOT NULL DEFAULT '',
  `zz_writer` text NOT NULL,
  `z_writer` varchar(255) NOT NULL DEFAULT '',
  `qz_writer` text NOT NULL,
  `save_writer` varchar(10) NOT NULL DEFAULT '',
  `zz_befrom` text NOT NULL,
  `z_befrom` varchar(255) NOT NULL DEFAULT '',
  `qz_befrom` text NOT NULL,
  `save_befrom` varchar(10) NOT NULL DEFAULT '',
  `zz_newstext` text NOT NULL,
  `z_newstext` varchar(255) NOT NULL DEFAULT '',
  `qz_newstext` varchar(255) NOT NULL DEFAULT '',
  `save_newstext` varchar(10) NOT NULL DEFAULT '',
  `zz_diggtop` text NOT NULL,
  `z_diggtop` varchar(255) NOT NULL DEFAULT '',
  `qz_diggtop` text NOT NULL,
  `save_diggtop` varchar(10) NOT NULL DEFAULT '',
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `phome_ecms_infoclass_news`
--

INSERT INTO `phome_ecms_infoclass_news` (`classid`, `zz_title`, `z_title`, `qz_title`, `save_title`, `zz_titlepic`, `z_titlepic`, `qz_titlepic`, `save_titlepic`, `zz_newstime`, `z_newstime`, `qz_newstime`, `save_newstime`, `zz_ftitle`, `z_ftitle`, `qz_ftitle`, `save_ftitle`, `zz_smalltext`, `z_smalltext`, `qz_smalltext`, `save_smalltext`, `zz_writer`, `z_writer`, `qz_writer`, `save_writer`, `zz_befrom`, `z_befrom`, `qz_befrom`, `save_befrom`, `zz_newstext`, `z_newstext`, `qz_newstext`, `save_newstext`, `zz_diggtop`, `z_diggtop`, `qz_diggtop`, `save_diggtop`) VALUES
(1, '            <div align=\\"center\\"><font size=\\"3\\"><strong>[!--title--]</strong>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '<td height=\\"30\\"><div align=\\"center\\">作者：[!--writer--]　', '', '', '', '　来源：[!--befrom--] \r\n              <hr align=\\"center\\" width=\\"96%\\">', '', '', '', '          <td valign=\\"top\\"><font id=\\"zoom\\" class=f14>[!--newstext--]</font></td>\r\n        </tr>', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_infoclass_photo`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_infoclass_photo` (
  `classid` int(11) NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_filesize` text NOT NULL,
  `z_filesize` varchar(255) NOT NULL DEFAULT '',
  `qz_filesize` text NOT NULL,
  `save_filesize` varchar(10) NOT NULL DEFAULT '',
  `zz_picsize` text NOT NULL,
  `z_picsize` varchar(255) NOT NULL DEFAULT '',
  `qz_picsize` text NOT NULL,
  `save_picsize` varchar(10) NOT NULL DEFAULT '',
  `zz_picfbl` text NOT NULL,
  `z_picfbl` varchar(255) NOT NULL DEFAULT '',
  `qz_picfbl` text NOT NULL,
  `save_picfbl` varchar(10) NOT NULL DEFAULT '',
  `zz_picfrom` text NOT NULL,
  `z_picfrom` varchar(255) NOT NULL DEFAULT '',
  `qz_picfrom` text NOT NULL,
  `save_picfrom` varchar(10) NOT NULL DEFAULT '',
  `zz_picurl` text NOT NULL,
  `z_picurl` varchar(255) NOT NULL DEFAULT '',
  `qz_picurl` text NOT NULL,
  `save_picurl` varchar(10) NOT NULL DEFAULT '',
  `zz_morepic` text NOT NULL,
  `z_morepic` varchar(255) NOT NULL DEFAULT '',
  `qz_morepic` text NOT NULL,
  `save_morepic` varchar(10) NOT NULL DEFAULT '',
  `zz_num` text NOT NULL,
  `z_num` varchar(255) NOT NULL DEFAULT '',
  `qz_num` text NOT NULL,
  `save_num` varchar(10) NOT NULL DEFAULT '',
  `zz_width` text NOT NULL,
  `z_width` varchar(255) NOT NULL DEFAULT '',
  `qz_width` text NOT NULL,
  `save_width` varchar(10) NOT NULL DEFAULT '',
  `zz_height` text NOT NULL,
  `z_height` varchar(255) NOT NULL DEFAULT '',
  `qz_height` text NOT NULL,
  `save_height` varchar(10) NOT NULL DEFAULT '',
  `zz_picsay` text NOT NULL,
  `z_picsay` varchar(255) NOT NULL DEFAULT '',
  `qz_picsay` text NOT NULL,
  `save_picsay` varchar(10) NOT NULL DEFAULT '',
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_infoclass_shop`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_infoclass_shop` (
  `classid` int(11) NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_productno` text NOT NULL,
  `z_productno` varchar(255) NOT NULL DEFAULT '',
  `qz_productno` text NOT NULL,
  `save_productno` varchar(10) NOT NULL DEFAULT '',
  `zz_pbrand` text NOT NULL,
  `z_pbrand` varchar(255) NOT NULL DEFAULT '',
  `qz_pbrand` text NOT NULL,
  `save_pbrand` varchar(10) NOT NULL DEFAULT '',
  `zz_intro` text NOT NULL,
  `z_intro` varchar(255) NOT NULL DEFAULT '',
  `qz_intro` text NOT NULL,
  `save_intro` varchar(10) NOT NULL DEFAULT '',
  `zz_unit` text NOT NULL,
  `z_unit` varchar(255) NOT NULL DEFAULT '',
  `qz_unit` text NOT NULL,
  `save_unit` varchar(10) NOT NULL DEFAULT '',
  `zz_weight` text NOT NULL,
  `z_weight` varchar(255) NOT NULL DEFAULT '',
  `qz_weight` text NOT NULL,
  `save_weight` varchar(10) NOT NULL DEFAULT '',
  `zz_tprice` text NOT NULL,
  `z_tprice` varchar(255) NOT NULL DEFAULT '',
  `qz_tprice` text NOT NULL,
  `save_tprice` varchar(10) NOT NULL DEFAULT '',
  `zz_price` text NOT NULL,
  `z_price` varchar(255) NOT NULL DEFAULT '',
  `qz_price` text NOT NULL,
  `save_price` varchar(10) NOT NULL DEFAULT '',
  `zz_buyfen` text NOT NULL,
  `z_buyfen` varchar(255) NOT NULL DEFAULT '',
  `qz_buyfen` text NOT NULL,
  `save_buyfen` varchar(10) NOT NULL DEFAULT '',
  `zz_pmaxnum` text NOT NULL,
  `z_pmaxnum` varchar(255) NOT NULL DEFAULT '',
  `qz_pmaxnum` text NOT NULL,
  `save_pmaxnum` varchar(10) NOT NULL DEFAULT '',
  `zz_productpic` text NOT NULL,
  `z_productpic` varchar(255) NOT NULL DEFAULT '',
  `qz_productpic` text NOT NULL,
  `save_productpic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstext` text NOT NULL,
  `z_newstext` varchar(255) NOT NULL DEFAULT '',
  `qz_newstext` text NOT NULL,
  `save_newstext` varchar(10) NOT NULL DEFAULT '',
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_infotmp_article`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_infotmp_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classid` int(11) NOT NULL DEFAULT '0',
  `oldurl` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `truetime` int(11) NOT NULL DEFAULT '0',
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `ftitle` varchar(120) NOT NULL DEFAULT '',
  `smalltext` varchar(255) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_infotmp_download`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_infotmp_download` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classid` int(11) NOT NULL DEFAULT '0',
  `oldurl` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `truetime` int(11) NOT NULL DEFAULT '0',
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `softwriter` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(80) NOT NULL DEFAULT '',
  `demo` varchar(120) NOT NULL DEFAULT '',
  `softfj` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(16) NOT NULL DEFAULT '',
  `softtype` varchar(16) NOT NULL DEFAULT '',
  `softsq` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  `softsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_infotmp_flash`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_infotmp_flash` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classid` int(11) NOT NULL DEFAULT '0',
  `oldurl` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `truetime` int(11) NOT NULL DEFAULT '0',
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `flashwriter` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `flashurl` varchar(255) NOT NULL DEFAULT '',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  `flashsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_infotmp_info`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_infotmp_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classid` int(11) NOT NULL DEFAULT '0',
  `oldurl` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `truetime` int(11) NOT NULL DEFAULT '0',
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `smalltext` text NOT NULL,
  `myarea` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycontact` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_infotmp_movie`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_infotmp_movie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classid` int(11) NOT NULL DEFAULT '0',
  `oldurl` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `truetime` int(11) NOT NULL DEFAULT '0',
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `movietype` varchar(16) NOT NULL DEFAULT '',
  `company` varchar(200) NOT NULL DEFAULT '',
  `movietime` varchar(20) NOT NULL DEFAULT '',
  `player` varchar(255) NOT NULL DEFAULT '',
  `playadmin` varchar(255) NOT NULL DEFAULT '',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `playdk` varchar(30) NOT NULL DEFAULT '',
  `playtime` varchar(20) NOT NULL DEFAULT '',
  `moviefen` int(11) NOT NULL DEFAULT '0',
  `downpath` mediumtext NOT NULL,
  `onlinepath` mediumtext NOT NULL,
  `moviesay` text NOT NULL,
  `playerid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_infotmp_news`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_infotmp_news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classid` int(11) NOT NULL DEFAULT '0',
  `oldurl` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `truetime` int(11) NOT NULL DEFAULT '0',
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `ftitle` varchar(120) NOT NULL DEFAULT '',
  `smalltext` varchar(255) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_infotmp_photo`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_infotmp_photo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classid` int(11) NOT NULL DEFAULT '0',
  `oldurl` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `truetime` int(11) NOT NULL DEFAULT '0',
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `filesize` varchar(10) NOT NULL DEFAULT '',
  `picsize` varchar(20) NOT NULL DEFAULT '',
  `picfbl` varchar(20) NOT NULL DEFAULT '',
  `picfrom` varchar(120) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `morepic` mediumtext NOT NULL,
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  `picsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_infotmp_shop`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_infotmp_shop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classid` int(11) NOT NULL DEFAULT '0',
  `oldurl` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `truetime` int(11) NOT NULL DEFAULT '0',
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `productno` varchar(30) NOT NULL DEFAULT '',
  `pbrand` varchar(30) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `unit` varchar(16) NOT NULL DEFAULT '',
  `weight` varchar(20) NOT NULL DEFAULT '',
  `tprice` float(11,2) NOT NULL DEFAULT '0.00',
  `price` float(11,2) NOT NULL DEFAULT '0.00',
  `buyfen` int(11) NOT NULL DEFAULT '0',
  `pmaxnum` int(11) NOT NULL DEFAULT '0',
  `productpic` varchar(255) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_movie`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `keyboard` varchar(160) NOT NULL DEFAULT '',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ztid` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `movietype` varchar(16) NOT NULL DEFAULT '',
  `company` varchar(200) NOT NULL DEFAULT '',
  `movietime` varchar(20) NOT NULL DEFAULT '',
  `player` varchar(255) NOT NULL DEFAULT '',
  `playadmin` varchar(255) NOT NULL DEFAULT '',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `moviefen` int(11) NOT NULL DEFAULT '0',
  `moviesay` text NOT NULL,
  `stb` varchar(4) NOT NULL DEFAULT '',
  `copyids` varchar(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` varchar(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_movie_data_1`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_movie_data_1` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `playdk` varchar(30) NOT NULL DEFAULT '',
  `playtime` varchar(20) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  `onlinepath` mediumtext NOT NULL,
  `playerid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_movie_doc`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_movie_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `keyboard` varchar(160) NOT NULL DEFAULT '',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ztid` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `movietype` varchar(16) NOT NULL DEFAULT '',
  `company` varchar(200) NOT NULL DEFAULT '',
  `movietime` varchar(20) NOT NULL DEFAULT '',
  `player` varchar(255) NOT NULL DEFAULT '',
  `playadmin` varchar(255) NOT NULL DEFAULT '',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `moviefen` int(11) NOT NULL DEFAULT '0',
  `moviesay` text NOT NULL,
  `stb` varchar(4) NOT NULL DEFAULT '',
  `copyids` varchar(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` varchar(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_movie_doc_data`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_movie_doc_data` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `playdk` varchar(30) NOT NULL DEFAULT '',
  `playtime` varchar(20) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  `onlinepath` mediumtext NOT NULL,
  `playerid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_news`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `keyboard` char(160) NOT NULL DEFAULT '',
  `keyid` char(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` char(30) NOT NULL DEFAULT '',
  `ztid` char(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` char(20) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `filename` char(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` char(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` char(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  `stb` char(4) NOT NULL DEFAULT '',
  `copyids` char(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` char(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=108 ;

--
-- 转存表中的数据 `phome_ecms_news`
--

INSERT INTO `phome_ecms_news` (`id`, `classid`, `onclick`, `newspath`, `keyboard`, `keyid`, `userid`, `username`, `ztid`, `checked`, `istop`, `truetime`, `ismember`, `dokey`, `userfen`, `isgood`, `titlefont`, `titleurl`, `filename`, `groupid`, `newstempid`, `plnum`, `firsttitle`, `isqf`, `totaldown`, `title`, `newstime`, `titlepic`, `closepl`, `havehtml`, `lastdotime`, `haveaddfen`, `infopfen`, `infopfennum`, `votenum`, `ftitle`, `smalltext`, `diggtop`, `stb`, `copyids`, `ttid`, `infotags`, `ispic`) VALUES
(102, 65, 1, '2012-10-12', '', '', 1, 'admin', '', 1, 0, 1350026461, 0, 1, 0, 0, '', '', '102', 0, 1, 0, 0, 0, 0, '建筑业“营改增”税负将大增', 1350026446, '', 0, 1, 1350030095, 0, 0, 0, 0, '', '                                     　9月14日，住建部在我市召开全国建筑业&ldquo;营改增&rdquo;调研座谈会。住建部、财政部的相关部门领导以及来自全国16个省（市区）的24家', 0, '1', '', 0, '', 0),
(98, 68, 1, '2012-10-11', '', '', 1, 'admin', '', 1, 0, 1349936593, 0, 1, 0, 0, '', '', '98', 0, 0, 0, 0, 0, 0, '“营改增”税收政策及实务研讨班邀请函', 1349936550, '', 0, 1, 1350026783, 0, 0, 0, 0, '', ' &ldquo;营改增&rdquo;税收政策及实务研讨班邀请函 自2012年12月1日起湖北省营业税改增值税（以下简称&ldquo;营改增&rdquo;）开始试点，2013年1月1日起正常申报增值税。对于习惯', 0, '1', '', 0, '', 0),
(103, 65, 1, '2012-10-12', '', '', 1, 'admin', '', 1, 0, 1350030021, 0, 1, 0, 0, '', '', '103', 0, 1, 0, 0, 0, 0, '营业税改征增值税试点国庆上线', 1350029983, '', 0, 1, 1350031975, 0, 0, 0, 0, '', ' 国庆期间，我市营业税改征增值税试点工作正式上线。日前，全市&ldquo;营改增&rdquo;税制转换启动仪式在市国税局办税大厅举行，市委常委、常务副市长丁祖荣出席。　　当天上午，安', 0, '1', '', 0, '', 0),
(104, 65, 1, '2012-10-12', '', '', 1, 'admin', '', 1, 0, 1350031123, 0, 1, 0, 0, '', '', '104', 0, 1, 0, 0, 0, 0, '营业税改征增值税试点信息', 1350031092, '', 0, 1, 1350031123, 0, 0, 0, 0, '', '   为做好扩大营业税改征增值税试点（以下简称营改增试点）工作，及时监测分析试点运行情况，拟建立营改增试点工作动态信息和数据分析的报告机制。财政部近日下发关于做好营业税改', 0, '1', '', 0, '', 0),
(101, 69, 1, '2012-10-12', '', '', 1, 'admin', '', 1, 0, 1350026336, 0, 1, 0, 0, '', '', '101', 0, 0, 0, 0, 0, 0, '注册税务师职业前景及报考策略分析', 1350026320, '', 0, 1, 1350026336, 0, 0, 0, 0, '', '  　注册税务师前景　　越是稀缺的东西，其价值越大，这是一个常识，而物品的稀缺程度既与需求有关，又与供给有关，人才市场的发展也是如此。随着高新技术、新兴产业的崛起，国际贸易壁', 0, '1', '', 0, '', 0),
(107, 70, 1, '2012-10-12', '', '', 1, 'admin', '', 1, 0, 1350055383, 0, 1, 0, 0, '', '', '107', 0, 0, 0, 0, 0, 0, '我国财务会计和税务会计关系及选择', 1350055179, '', 0, 1, 1350055890, 0, 0, 0, 0, '', '在计划经济向市场经济转变的大背景下，会计信息由使用主体单一向主体多元化转变，在这一过程中，基于会计准则的财务会计与基于税法的税务会计之间的差异呈现日益扩大的趋势。本文通过分析这两部分制度形成的背景，思考国际范围内二者的发展模式，结合当前的经济社会背景，得出我国应该实行财务会计与税务会计适度分离模式的结论。', 0, '1', '', 0, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_news_data_1`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_news_data_1` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `phome_ecms_news_data_1`
--

INSERT INTO `phome_ecms_news_data_1` (`id`, `classid`, `writer`, `befrom`, `newstext`) VALUES
(107, 70, '', '', '<div>\r\n<div>\r\n<div class=\\"Section0\\">\r\n<p class=\\"p0\\" style=\\"text-indent:24.0000pt; margin-bottom:0pt; margin-top:15.6000pt; line-height:20.0000pt; \\"><span style=\\"font-family: 宋体; font-size: 12pt; line-height: 20pt; text-indent: 24pt; \\">长期以来，我国的会计制度设计主要是以满足国家需要、确保国家税收收入的实现为目标。但近几年来，随着资本市场的活跃、全球经济一体化和会计国际化发展，从保护投资者、债权人利益的需要出发，稳健原则在我国会计制度中有了很大的体现，并有不断发展的趋势。会计制度在满足投资者、债权人和政府需求方面的分歧正在进一步加大，如果仍以一种会计制度来统一各类对象的需求，往往会顾此失彼，捉襟见肘。由此可见，会计制度与税务制度从高度重合变为分歧与矛盾，已成为一个不争的事实。</span></p>\r\n<p class=\\"p0\\" style=\\"text-indent:24.0000pt; margin-bottom:0pt; margin-top:0pt; line-height:20.0000pt; \\"><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\">从国际范围看，财务会计与税务会计关系模式可以分为两大类：财务会计与税务会计合一模式及财务会计与税务会计分离模式。</span><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\"><o:p></o:p></span></p>\r\n<p class=\\"p0\\" style=\\"text-indent:24.0000pt; margin-bottom:0pt; margin-top:0pt; line-height:20.0000pt; \\"><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\">1，以英国、美国为代表的财务会计与税务会计分离模式。该模式的典型特征是财务会计与税务会计相分离。财务会计有充分的独立性，不受税法的约束，纳税人的纳税事项通过税务会计另行处理，从而税务会计也独立于财务会计。</span><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\"><o:p></o:p></span></p>\r\n<p class=\\"p0\\" style=\\"text-indent:24.0000pt; margin-bottom:0pt; margin-top:0pt; line-height:20.0000pt; \\"><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\">2，以法国、德国为代表的财务会计与税务会计合一模式。该模式的典型特征是财务会计与税务会计合二为一。税法对纳税人财务会计所反映的收入、成本、费用和收益的确定有直接的影响，会计准则与税法的要求一致，对会计事项的处理严格按照税法的规定进行。</span><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\"><o:p></o:p></span></p>\r\n<p class=\\"p0\\" style=\\"text-indent:24.0000pt; margin-bottom:0pt; margin-top:0pt; line-height:20.0000pt; \\"><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\">两种模式的分析：英国、美国证券市场发达，民众风险意识强，偏好股票投资。公司股权分散，筹资主要依赖证券市场。英国、美国公司会计报表的信息必须反映公司的财务状况以及未来的发展前景以满足股东的需要；而法国、德国政府在经济活动中具有绝对的权威性，通过&ldquo;经济计划&rdquo;与&ldquo;国有化政策&rdquo;对宏观经济和微观经济进行影响，这两国的证券市场相对不发达，这与英美的状况相反。</span><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\"><o:p></o:p></span></p>\r\n<p class=\\"p0\\" style=\\"text-indent:24.0000pt; margin-bottom:0pt; margin-top:0pt; line-height:20.0000pt; \\"><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\">不同的财务会计与税务会计关系模式的选择是与不同国家的国情有很大关系。因此我国不能盲目的追随哪个国家，要根据我国的现实情况选择适合自己的财务会计与税务会计关系模式。目前我国现行财务会计与税务会计的关系模式，正在从原来的高度重合发展到调整模式，并逐渐向分离模式转变，这一变迁趋势与会计国际化发展方向是一致的。我国对财务会计制度与税收法规进行了一系列的改革，均体现了会计和税法各自相对的独立性和相分离的原则。1992&nbsp;年底，我国颁布了&ldquo;两则&rdquo;，随后出台了相应的分行业会计制度和分行业财务制度，&ldquo;两则&rdquo;和&ldquo;两法&rdquo;的实施使我国企业会计利润与应税所得首次出现了明显的差异。从此，税务会计与财务会计的独立化倾向初步显现，两者分离的序幕已经拉开。2000&nbsp;年&nbsp;1&nbsp;月&nbsp;1&nbsp;日，《企业所得税税前扣除办法》开始执行，企业所得税由&ldquo;纳税调整体系&rdquo;过渡到&ldquo;独立纳税体系&rdquo;。至此，我国税务会计与财务会计分离的趋势已经确立。</span><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\"><o:p></o:p></span></p>\r\n<p class=\\"p0\\" style=\\"text-indent:24.0000pt; margin-bottom:0pt; margin-top:0pt; line-height:20.0000pt; \\"><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\">但就目前而言，我国的财务会计与税务会计还缺乏系统设计，存在着过度分离的问题。其具体表现是，两套制度在规定上存在背离，过分强调会计制度、税务制度服务对象的特殊性，忽视了某些共性，造成了国家与纳税人利益的对立。而由于国家所处地位的优势，导致国家与纳税人在纳税利益关系上存在国家利益优先的情况，这在一定程度上侵犯了纳税人的利益，影响了纳税人经营活动的发展。另外，由于会计制度与税法的规定存在很大差异，从而导致依靠会计制度提供数据资料来界定税基以及进行税收征管的难度大大增加，会计、税务人员的业务素质水平和知识结构一时还跟不上这种过度分离带来的实务操作要求。因此，当前急需探讨、建立适合我国国情的财务会计与税务会计关系模式。</span><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\"><o:p></o:p></span></p>\r\n<p class=\\"p0\\" style=\\"text-indent:24.0000pt; margin-bottom:0pt; margin-top:0pt; line-height:20.0000pt; \\"><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\">我国财务会计与税务会计关系的选择要综合考虑我国经济社会环境:</span><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\"><o:p></o:p></span></p>\r\n<p class=\\"p0\\" style=\\"text-indent:24.0000pt; margin-bottom:0pt; margin-top:0pt; line-height:20.0000pt; \\"><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\">首先，考虑我国的法律环境。在财务会计与税务会计合一模式的国家中，经济法律体系相当完备。公司法、商法等法律对公司的各种会计事项都做出了详细的规定，对公司在财务活动中遵循商法、税法的要求和责任远远高于对公认会计准则的遵从。这是与其以宏观经济为出发点的经济模式相适应的。而我国目前的经济法律体系尚不完善，税收制度甚至还没有一套独立的税前扣除标准以及收入和费用的扣除标准，在很大程度上还要依据企业会计制度和准则。因此，在会计制度与税收制度形成一定差异的前提下，采用税会分离的模式无疑是必然的。</span><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\"><o:p></o:p></span></p>\r\n<p class=\\"p0\\" style=\\"text-indent:24.0000pt; margin-bottom:0pt; margin-top:0pt; line-height:20.0000pt; \\"><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\">其次，考虑我国的经济体制。经过20多年改革开放，我国的市场经济体制已经初步建立，所有制结构多元化、投资主体分散化的特征逐渐显现。企业的投资者和债权人要求会计制度能够满足资本保全和防范风险的需要；而政府为实现对经济的宏观调控要求税收制度满足及时、足额取得税收收入的要求。当前的任务既要保证企业健康的发展，又要保证政府的宏观调控实施有效，税收制度与会计制度必然只能选择走相互独立的道路。</span><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\"><o:p></o:p></span></p>\r\n<p class=\\"p0\\" style=\\"text-indent:24.0000pt; margin-bottom:0pt; margin-top:0pt; line-height:20.0000pt; \\"><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\">再次，考虑我国的企业组织形式。随着市场经济发展，资本市场的活跃，股份制将成为我国主要的企业组织形式，投资人和潜在投资人对会计信息需求不断增加，会计信息的可靠性和相关性将成为会计信息量的首要特征，客观、真实、公允地表达会计信息是会计工作的首要目标，作为会计工作规范的会计准则，必须顺应市场经济发展要求，面向投资者，而不是面向政府屈从于税法的安排。这恰恰是税务会计独立的一个重要原因。</span><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\"><o:p></o:p></span></p>\r\n<p class=\\"p0\\" style=\\"text-indent:24.0000pt; margin-bottom:0pt; margin-top:0pt; line-height:20.0000pt; \\"><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\">最后，经济全球化趋势也将促进税务与会计在全球各个国家的逐步分离，促进我国税务会计的建立完善。</span><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\"><o:p></o:p></span></p>\r\n<p class=\\"p0\\" style=\\"text-indent:24.0000pt; margin-bottom:0pt; margin-top:0pt; line-height:20.0000pt; \\"><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\">总之，根据我国具体的社会经济、法律等环境，借鉴国际经验，我们应实行财务会计与税务会计的分离模式。但同时我们还应认识到由于我国的社会主义市场经济体制建立不久，现代企业制度才刚推行，股份公司制还未成为最主要的企业组织形式，会计准则尚不具备由会计职业组织制定的背景，会计管理体制尚不能从根本上放弃统一领导分级管理的原则。因此，我国财务会计与税务会计的关系模式还不能完全分离，我国既要正视财务会计与税务会计分离的必要性，又不能使两者分离程度过大，应该实行财务会计与税务会计适度分离的模式。</span><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\"><o:p></o:p></span></p>\r\n<p class=\\"p0\\" style=\\"text-indent:24.0000pt; margin-bottom:0pt; margin-top:0pt; line-height:20.0000pt; \\"><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\">当然适度分离也不能是&ldquo;一刀切&rdquo;，那样一方面影响了会计信息的相关性，另一方面也浪费了社会资源。不同的企业应区别对待：</span><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\"><o:p></o:p></span></p>\r\n<p class=\\"p0\\" style=\\"text-indent:24.0000pt; margin-bottom:0pt; margin-top:0pt; line-height:20.0000pt; \\"><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\">(1)筹资渠道多元化企业/大型企业。这类企业的主要特点是所有权比较分散，由董事会或高层管理人员共同决策、经营，企业的资金既有来自于内部的积累，又有来自于外部投资人、债权人的投资。这种企业的治理结构繁杂和融资渠道广泛及内外部环境复杂，决定了企业的会计目标除满足企业内部经营管理的需要之外，还必须体现相关性的要求，即满足外部投资人、债权人、国家税收、财政和审计等各方面的需求，因此财务会计与税务会计应当适度分离。</span><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\"><o:p></o:p></span></p>\r\n<p class=\\"p0\\" style=\\"text-indent:21.0000pt; margin-bottom:0pt; margin-top:0pt; line-height:20.0000pt; \\"><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\">(2)筹资渠道单一型企业/中小企业。这类企业的主要特点是其与筹资渠道多元化企业/大型企业相比，在规模、组织结构等方面有着明显的差别，导致其信息需求者对信息的要求与筹资多元化企业不同。因此，筹资渠道单一型企业/中小企业的会计制度应与税法保持一致，实行税务导向会计模式，使按会计计算出来的会计利润与按税法计算出来的应纳税所得额趋于一致，有利于企业直接、方便地根据账簿和会计报表进行纳税申报。对筹资渠道单一型企业/中小企业财务报告进行适当简化，对其确认、计量标准区别对待，不仅有助于提高这类企业会计信息的质量，减少会计操作成本，节约社会资源，也符合该类企业经营运作的特点。</span><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\">&nbsp;</span><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\"><o:p></o:p></span></p>\r\n<p class=\\"p0\\" style=\\"text-indent:24.0000pt; margin-bottom:0pt; margin-top:0pt; line-height:20.0000pt; \\"><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\">综上所述，在现阶段条件下我国既要正视财务会计与税务会计分离的必要性，又不能使两者分离程度过大，应该实行财务会计与税务会计适度分离的模式。</span><span style=\\"mso-spacerun:\\''yes\\''; font-size:12.0000pt; font-family:\\''宋体\\''; \\"><o:p></o:p></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>'),
(102, 65, '', '', '<p>&nbsp;</p>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" style=\\"color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif, 宋体; font-size: 12px; line-height: 18px; text-align: left; background-color: rgb(247, 253, 255); \\">\r\n    <tbody>\r\n        <tr>\r\n            <td id=\\"text\\" style=\\"font-size: 14px; line-height: 1.8; font-family: Verdana, Arial, Helvetica, sans-serif, 宋体; \\">\r\n            <p style=\\"margin: 1em 0px; padding: 0px; list-style-image: url(http://localhost:82/skin/default/images/bullet.gif); \\"><span style=\\"font-family: 宋体; line-height: 28px; \\">　9月14日，住建部在我市召开全国建筑业&ldquo;营改增&rdquo;调研座谈会。住建部、财政部的相关部门领导以及来自全国16个省（市区）的24家建筑业代表企业，就建筑业&ldquo;营改增&rdquo;后可能产生的影响以及相关对策，进行了充分研讨交流。</span></p>\r\n            <p style=\\"margin: 1em 0px; padding: 0px; list-style-image: url(http://localhost:82/skin/default/images/bullet.gif); font-family: 宋体; line-height: 28px; \\">　　从去年4月份开始，由住建部牵头调研，145家建筑企业最终被选定为&ldquo;营改增&rdquo;调研测算对象。经过一年多的调研，82家最具代表性建筑企业的相关数据，被提交到调研座谈会上进行分析。据了解，按照目前的建筑市场环境和税收现状，如果试行&ldquo;营改增&rdquo;，建筑企业的税负将大幅增加。以与会的24家代表企业为例，原先3%的营业税改为增值税后，平均税负率将提高到5.83%。会上，建筑企业的代表们对&ldquo;营改增&rdquo;的行业影响进行了分析。他们认为，在上下游产业尚未&ldquo;营改增&rdquo;的情况下，建筑业率先试行&ldquo;营改增&rdquo;不仅缺乏可操作性，而且税负的增加也让劳动密集型和微利的建筑业难以承受。因此，建筑业&ldquo;营改增&rdquo;应该推迟实行。而这些意见，也获得与会国家相关职能部门的初步认同。</p>\r\n            <p style=\\"margin: 1em 0px; padding: 0px; list-style-image: url(http://localhost:82/skin/default/images/bullet.gif); font-family: 宋体; line-height: 28px; \\">　　副市长雷志强出席调研座谈会并致辞。</p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>'),
(104, 65, '', '', '<p>&nbsp;<span style=\\"background-color: rgb(255, 249, 249); color: rgb(66, 66, 66); font-family: 宋体; font-size: 14px; line-height: 28px; \\">&nbsp; 为做好扩大营业税改征增值税试点（以下简称营改增试点）工作，及时监测分析试点运行情况，拟建立营改增试点工作动态信息和数据分析的报告机制。财政部近日下发关于做好营业税改征增值税试点信息数据上报工作通知。通知要求，各试点省、直辖市、计划单列市（以下称试点省市）应编发营改增试点工作动态，不定期向财政部报告本地试点运行动态。</span></p>\r\n<p style=\\"margin: 10px 0px 0px; padding: 0px; color: rgb(66, 66, 66); font-size: 14px; line-height: 28px; font-family: 宋体; background-color: rgb(255, 249, 249); text-indent: 2em; \\">&nbsp;</p>\r\n<p style=\\"margin: 10px 0px 0px; padding: 0px; color: rgb(66, 66, 66); font-size: 14px; line-height: 28px; font-family: 宋体; background-color: rgb(255, 249, 249); \\">&nbsp;&nbsp;&nbsp; 各试点省市工作动态方面，工作动态要及时报送试点准备、工作部署、政策落实、宣传培训、征收管理等各项工作的运行情况及企业、专家、基层单位等有关方面的反馈信息。</p>\r\n<p style=\\"margin: 10px 0px 0px; padding: 0px; color: rgb(66, 66, 66); font-size: 14px; line-height: 28px; font-family: 宋体; background-color: rgb(255, 249, 249); text-indent: 2em; \\">&nbsp;</p>\r\n<p style=\\"margin: 10px 0px 0px; padding: 0px; color: rgb(66, 66, 66); font-size: 14px; line-height: 28px; font-family: 宋体; background-color: rgb(255, 249, 249); \\">&nbsp;&nbsp;&nbsp; 试点运行相关数据方面，试点纳税人基本情况、试点纳税人纳税情况、试点纳税人税负变化情况、出口服务免税和零税率免抵退情况、税负增加试点纳税人情况、增值税专用发票开票情况、财政扶持政策落实情况、试点企业生产经营状况等。</p>\r\n<p style=\\"margin: 10px 0px 0px; padding: 0px; color: rgb(66, 66, 66); font-size: 14px; line-height: 28px; font-family: 宋体; background-color: rgb(255, 249, 249); text-indent: 2em; \\">&nbsp;</p>\r\n<p style=\\"margin: 10px 0px 0px; padding: 0px; color: rgb(66, 66, 66); font-size: 14px; line-height: 28px; font-family: 宋体; background-color: rgb(255, 249, 249); \\">&nbsp;&nbsp;&nbsp; 运行评估分析报告方面，结合工作动态和试点运行数据及具体案例，对试点运行情况进行总体评估和趋势分析，并对改革和试点工作提出政策建议。</p>\r\n<p style=\\"margin: 10px 0px 0px; padding: 0px; color: rgb(66, 66, 66); font-size: 14px; line-height: 28px; font-family: 宋体; background-color: rgb(255, 249, 249); text-indent: 2em; \\">&nbsp;</p>\r\n<p style=\\"margin: 10px 0px 0px; padding: 0px; color: rgb(66, 66, 66); font-size: 14px; line-height: 28px; font-family: 宋体; background-color: rgb(255, 249, 249); \\">&nbsp;&nbsp;&nbsp; 《通知》还规定要根据试点纳税人纳税申报数据及其他相关数据、资料，于每月纳税申报截止后5个工作日内通过财政部网上直报平台填报试点相关运行数据，并同时形成运行评估分析报告函报财政部税政司。（编辑：冯丛枝）</p>'),
(101, 69, '', '', '<p>&nbsp;&nbsp;<span style=\\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">　注册税务师前景</span></p>\r\n<p style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">　　越是稀缺的东西，其价值越大，这是一个常识，而物品的稀缺程度既与需求有关，又与供给有关，人才市场的发展也是如此。随着高新技术、新兴产业的崛起，国际贸易壁垒的消失等国内外因素，各行业对人才需求出现较大变化，衡量人才的标准也随之发生改变，造成一些走俏专业人才稀缺。目前，我国的注册税务师行业正在进入高速发展时期，特别是国家税务总局13号令、14号令的颁布，赋予了行业使命，给注册税务师行业注入了新的活力，为注册税务师行业健康发展奠定了坚实的基础。<br style=\\"padding: 0px; margin: 0px; \\" />\r\n执业范围<br style=\\"padding: 0px; margin: 0px; \\" />\r\n2006年2月1日起施行的《注册暂行办法》明确了注册税务师的业务范围。今后注册税务师可承办以下涉税鉴证业务：&quot;所得税汇算清缴纳税申报的鉴证、企业税前弥补亏损和财产损失的鉴证以及国家税务总局和省税务局规定的其他涉税鉴证业务。<br style=\\"padding: 0px; margin: 0px; \\" />\r\n就业方向<br style=\\"padding: 0px; margin: 0px; \\" />\r\n主要职业方向为：在税务师事务所、会计师事务所、企（事）业单位中从事纳税筹划、税务代理、税务咨询、税务顾问以及其他涉税事务的办理等。其他职业方向为：企事业单位中从事会计业务的处理与审计，财务活动的预测、税收实务、分析与决策等。如能通过国家公务员考试，可以在政府税务部门从事纳税征管和稽查等工作。<br style=\\"padding: 0px; margin: 0px; \\" />\r\n执业风险<br style=\\"padding: 0px; margin: 0px; \\" />\r\n所谓税务代理执业风险是指注册税务师因在执业过程中未能完成代理事项或未能履行代理职责所要承担的法律责任。它主要表现为：其一、因注册税务师未能完成代理事项，即因代理违约而产生的违约风险；其二、因代理失败致使纳税人、扣缴义务人发生违法成本，从而引起委托人为转移违法损失，向代理人追诉而产生的代理失败风险。虽然典型的税务代理纠纷案例尚未出现，但其潜在的执业风险也将越来越受到业内人士的重视。<br style=\\"padding: 0px; margin: 0px; \\" />\r\n后续教育<br style=\\"padding: 0px; margin: 0px; \\" />\r\n注册税务师后续教育方式分为脱产和非脱产两类。执业人员每年接受后续教育培训的时间累计不得少于72学时，其中脱产后续教育培训不得少于32学时，非脱产后续教育培训不得少于40学时。</p>\r\n<p><br style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\" />\r\n<span style=\\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">(联系电话：027-88937081）</span></p>'),
(98, 68, '', '', '<p>&nbsp;自<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">2012</span>年<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">12</span>月<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">1</span>日起湖北省营业税改增值税（以下简称&ldquo;营改增&rdquo;）开始试点，<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">2013</span>年<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">1</span>月<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">1</span>日起正常申报增值税。对于习惯于地方税务局营业税征管环境的&ldquo;营改增&rdquo;企业，如何快速适应国家税务局增值税税务征管环境？增值税作为我国税务征管刚性最显著和违法成本最高的税种，纳税人如何规划税收成本和控管税收风险？增值税税收要素链条式流转的特点决定了企业业务模式、链条设置对税收成本构成决定性影响，纳税人如何在合理范围内优化自己的业务链，降低税负水平？</p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">善道永安税文化研究中心为帮助广大营改增纳税人快速适应新的税收征管环境，特组织专家教授、税务一线官员、资深注册税务师，分别从企业战略、业务运作、纳税遵从、税务风险等领域全方位为您解构增值税税收实践<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">金风送爽，丹桂飘香，让我们在南湖之畔相聚，携手共进！<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; font-size: 10.5pt; line-height: 21px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">【主办单位】善道永安税文化研究中心<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">【培训对象】&ldquo;营改增&rdquo;所涉及到的交通运输业（包括陆路运输、水路运输、航空运输、管道运输），现代服务业中的研发、信息技术、文化创意、物流辅助、有形动产租赁以及鉴证咨询等<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">6</span>个领域，以及关心财税改革的其它行业单位的企业高管和财税工作负责人。<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">【课程优势】<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 49pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; text-indent: -21pt; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">(一)<span style=\\"padding: 0px; margin: 0px; font-size: 7pt; line-height: normal; font-family: \\''Times New Roman\\''; \\">&nbsp;&nbsp;</span></span>权威政策精解：省国税局领导亲自讲解湖北营改增政策实施细则，现场对疑难点进行解答；<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 49pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; text-indent: -21pt; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">(二)<span style=\\"padding: 0px; margin: 0px; font-size: 7pt; line-height: normal; font-family: \\''Times New Roman\\''; \\">&nbsp;&nbsp;</span></span>知名教授授课：中南财经政法大学财税学院税收实务权威、著名教授理论结合实际授课；<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 49pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; text-indent: -21pt; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">(三)<span style=\\"padding: 0px; margin: 0px; font-size: 7pt; line-height: normal; font-family: \\''Times New Roman\\''; \\">&nbsp;&nbsp;</span></span>实务专家答疑：拥有长年企业涉税实务经验的高级专家就营改增转换实务操作、税收优化等<span style=\\"padding: 0px; margin: 0px; color: windowtext; \\">进行</span>现场演练。<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">【独家优惠】<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 49pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; text-indent: -21pt; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">(一)<span style=\\"padding: 0px; margin: 0px; font-size: 7pt; line-height: normal; font-family: \\''Times New Roman\\''; \\">&nbsp;&nbsp;</span></span>凡报名单位均享受后续一个月的电话咨询服务；<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 49pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; text-indent: -21pt; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">(二)<span style=\\"padding: 0px; margin: 0px; font-size: 7pt; line-height: normal; font-family: \\''Times New Roman\\''; \\">&nbsp;&nbsp;</span></span>凡报名单位均开通永安税收网站学员专区账号。<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">【培训时间】<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">2012</span>年<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">10</span>月<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; color: windowtext; \\">19</span><span style=\\"padding: 0px; margin: 0px; color: windowtext; \\">日（周五）</span>&nbsp;全天<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">【培训地点】中天世纪大酒店<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">【主讲专家】<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">省国税局领导<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">湖北省国家税务局货物和劳务税处主任科员，直接参与湖北省&ldquo;营改增&rdquo;实施办法起草，以及过渡期优惠政策制定，参与组织和实施湖北省本次改革具体工作。<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">艾<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">&nbsp;&nbsp;&nbsp;</span>华<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">中南财经政法大学教授、财政税收专业博士生导师、中国注册会计师、中国注册税务师；兼任中国注册税务师协会理事、湖北省注册税务师协会理事、财政部全国注册会计师考试委员会特聘专家、国家税务总局全国注册税务师考试管理中心特聘专家。武汉永安税务师事务有限公司首席顾问。艾华教授拥有极为丰富的税收实务经验。<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">任<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">&nbsp;&nbsp;&nbsp;</span>广<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">中国注册会计师、中国注册税务师。武汉永安税务师事务有限公司合伙人。有非常扎实的财务税务理论功底和良好的职业判断能力，曾带领团队成功操作多个大型集团的税务鉴证及筹划项目。精通企业税收实务。<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">【课程大纲】<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">一、湖北省&ldquo;营改增&rdquo;政策讲解<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 41pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; text-indent: -21pt; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">1.<span style=\\"padding: 0px; margin: 0px; font-size: 7pt; line-height: normal; font-family: \\''Times New Roman\\''; \\">&nbsp;&nbsp;</span></span>上海&ldquo;营改增&rdquo;运行经验总结及对湖北省的借鉴<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 41pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; text-indent: -21pt; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">2.<span style=\\"padding: 0px; margin: 0px; font-size: 7pt; line-height: normal; font-family: \\''Times New Roman\\''; \\">&nbsp;&nbsp;</span></span>湖北省&ldquo;营改增&rdquo;试点政策总体介绍<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 41pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; text-indent: -21pt; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">3.<span style=\\"padding: 0px; margin: 0px; font-size: 7pt; line-height: normal; font-family: \\''Times New Roman\\''; \\">&nbsp;&nbsp;</span></span>湖北省&ldquo;营改增&rdquo;热点事项和过渡期优惠政策介绍<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">二、<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; font-family: Calibri, sans-serif; \\">&ldquo;</span>营改增<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; font-family: Calibri, sans-serif; \\">&rdquo;</span>政策解读及实务处理<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 41pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; text-indent: -21pt; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">1.<span style=\\"padding: 0px; margin: 0px; font-size: 7pt; line-height: normal; font-family: \\''Times New Roman\\''; \\">&nbsp;&nbsp;</span></span>征税范围、适用税率及政策适用解读<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 41pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; text-indent: -21pt; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">2.<span style=\\"padding: 0px; margin: 0px; font-size: 7pt; line-height: normal; font-family: \\''Times New Roman\\''; \\">&nbsp;&nbsp;</span></span>计税方法解读及实务运用<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 41pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; text-indent: -21pt; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">3.<span style=\\"padding: 0px; margin: 0px; font-size: 7pt; line-height: normal; font-family: \\''Times New Roman\\''; \\">&nbsp;&nbsp;</span></span>零税率、免税政策、过渡期优惠政策等的实务处理<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">三、湖北<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; font-family: Calibri, sans-serif; \\">&ldquo;</span>营改增<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; font-family: Calibri, sans-serif; \\">&rdquo;</span>分行业实务处理介绍<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 41pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; text-indent: -21pt; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">1.<span style=\\"padding: 0px; margin: 0px; font-size: 7pt; line-height: normal; font-family: \\''Times New Roman\\''; \\">&nbsp;&nbsp;</span></span>涉改革行业增值税会计账务处理讲解<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 41pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; text-indent: -21pt; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">2.<span style=\\"padding: 0px; margin: 0px; font-size: 7pt; line-height: normal; font-family: \\''Times New Roman\\''; \\">&nbsp;&nbsp;</span></span>增值税纳税申报实务及发票相关问题讲解<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">四、企业组织分工与抵扣链条优化探讨<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 41pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; text-indent: -21pt; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">1.<span style=\\"padding: 0px; margin: 0px; font-size: 7pt; line-height: normal; font-family: \\''Times New Roman\\''; \\">&nbsp;&nbsp;</span></span>增值税企业下抵扣链条优化实务讲解<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 41pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; text-indent: -21pt; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">2.<span style=\\"padding: 0px; margin: 0px; font-size: 7pt; line-height: normal; font-family: \\''Times New Roman\\''; \\">&nbsp;&nbsp;</span></span>营业税企业下常见税收优化手段介绍<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 41pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; text-indent: -21pt; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">3.<span style=\\"padding: 0px; margin: 0px; font-size: 7pt; line-height: normal; font-family: \\''Times New Roman\\''; \\">&nbsp;&nbsp;</span></span>&ldquo;营改增&rdquo;后企业组织架构与分工设计方法<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">【报名办法】<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 42pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">报名联系人：罗女士、徐女士<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 42pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">报名热线：<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">027-88937081<o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 42pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">报名传真：<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">027-87731365<o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 42pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">报名网站：<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><a href=\\"http://www.ya-tax.com/\\" style=\\"padding: 0px; margin: 0px; color: rgb(0, 0, 0); text-decoration: none; \\">www.ya-tax.com</a><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<p class=\\"MsoNormal\\" style=\\"padding: 0px; margin: 0px 0px 0px 42pt; color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; line-height: 25px; \\">善道永安税文化研究<span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">QQ</span>群：<span class=\\"fcgray\\" style=\\"padding: 0px; margin: 0px; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\">177626479</span></span><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><o:p style=\\"padding: 0px; margin: 0px; \\"></o:p></span></p>\r\n<div><span class=\\"fcgray\\" style=\\"padding: 0px; margin: 0px; \\"><span lang=\\"EN-US\\" style=\\"padding: 0px; margin: 0px; \\"><br />\r\n</span></span></div>'),
(103, 65, '', '', '<p>&nbsp;<span style=\\"font-family: Simsun; font-size: 14px; line-height: 21px; \\">国庆期间，</span><span name=\\"HL_TAG\\" style=\\"font-family: Simsun; font-size: 14px; line-height: 21px; padding: 0px; margin: 0px; border-bottom-style: dotted; border-bottom-width: 2px; border-bottom-color: rgb(255, 102, 0); \\"><a href=\\"http://news.eastday.com/csj/2012-10-08/46468.html#\\" target=\\"_blank\\" style=\\"padding: 0px; margin: 0px; color: rgb(255, 102, 0); text-decoration: none; \\">我市</a></span><span style=\\"font-family: Simsun; font-size: 14px; line-height: 21px; \\">营业税改征增值税试点工作正式上线。日前，全市&ldquo;营改增&rdquo;税制转换启动仪式在市国税局办税大厅举行，市委常委、常务副市长丁祖荣出席。</span></p>\r\n<p style=\\"padding: 0px 10px; margin: 0px 0px 10px; line-height: 21px; font-size: 14px; font-family: Simsun; \\">　　当天上午，安得物流公司开出了企业自开票第一单，永诚运输公司开出了国税代开票第一单。据悉，此次&ldquo;<span name=\\"HL_TAG\\" style=\\"padding: 0px; margin: 0px; border-bottom-style: dotted; border-bottom-width: 2px; border-bottom-color: rgb(255, 102, 0); \\"><a href=\\"http://news.eastday.com/csj/2012-10-08/46468.html#\\" target=\\"_blank\\" style=\\"padding: 0px; margin: 0px; color: rgb(255, 102, 0); text-decoration: none; \\">营改增</a></span>&rdquo;试点行业主要包括交通运输业、部分现代服务业中的研发和技术服务、信息技术服务、文化创意服务、物流辅助服务、有形动产租赁服务、鉴证咨询服务。从10月1日起，我市以上行业由征收营业税改征增值税。</p>\r\n<p style=\\"padding: 0px 10px; margin: 0px 0px 10px; line-height: 21px; font-size: 14px; font-family: Simsun; \\">　　据了解，营业税改征增值税是一项重要的结构性减税措施，对于我市经济持续健康协调发展具有积极和深远的意义。9月23日至29日，全市集中对纳税人开展发票发售工作，发售&ldquo;营改增&rdquo;纳税人发票2万余份，保证了10月1日试点纳税人正常生产经营。此外，各级国税部门认真做好国庆期间纳税人零报税解锁、代开专用发票和辅导一般纳税人开具发票等工作，确保我市&ldquo;营改增&rdquo;<span name=\\"HL_TAG\\" style=\\"padding: 0px; margin: 0px; border-bottom-style: dotted; border-bottom-width: 2px; border-bottom-color: rgb(255, 102, 0); \\"><a href=\\"http://news.eastday.com/csj/2012-10-08/46468.html#\\" target=\\"_blank\\" style=\\"padding: 0px; margin: 0px; color: rgb(255, 102, 0); text-decoration: none; \\">试点工作</a></span>顺利实施，新旧税制按期转换。</p>');

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_news_doc`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_news_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `keyboard` char(160) NOT NULL DEFAULT '',
  `keyid` char(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` char(30) NOT NULL DEFAULT '',
  `ztid` char(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` char(20) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `filename` char(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` char(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` char(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  `stb` char(4) NOT NULL DEFAULT '',
  `copyids` char(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` char(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_news_doc_data`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_news_doc_data` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_photo`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `keyboard` varchar(160) NOT NULL DEFAULT '',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ztid` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `picsay` text NOT NULL,
  `stb` varchar(4) NOT NULL DEFAULT '',
  `copyids` varchar(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` varchar(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_photo_data_1`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_photo_data_1` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `filesize` varchar(10) NOT NULL DEFAULT '',
  `picsize` varchar(20) NOT NULL DEFAULT '',
  `picfbl` varchar(20) NOT NULL DEFAULT '',
  `picfrom` varchar(120) NOT NULL DEFAULT '',
  `morepic` mediumtext NOT NULL,
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_photo_doc`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_photo_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `keyboard` varchar(160) NOT NULL DEFAULT '',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ztid` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `picsay` text NOT NULL,
  `stb` varchar(4) NOT NULL DEFAULT '',
  `copyids` varchar(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` varchar(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_photo_doc_data`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_photo_doc_data` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `filesize` varchar(10) NOT NULL DEFAULT '',
  `picsize` varchar(20) NOT NULL DEFAULT '',
  `picfbl` varchar(20) NOT NULL DEFAULT '',
  `picfrom` varchar(120) NOT NULL DEFAULT '',
  `morepic` mediumtext NOT NULL,
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_shop`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `keyboard` varchar(160) NOT NULL DEFAULT '',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ztid` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `productno` varchar(30) NOT NULL DEFAULT '',
  `pbrand` varchar(30) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `unit` varchar(16) NOT NULL DEFAULT '',
  `weight` varchar(20) NOT NULL DEFAULT '',
  `tprice` float(11,2) NOT NULL DEFAULT '0.00',
  `price` float(11,2) NOT NULL DEFAULT '0.00',
  `buyfen` int(11) NOT NULL DEFAULT '0',
  `pmaxnum` int(11) NOT NULL DEFAULT '0',
  `productpic` varchar(255) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `stb` varchar(4) NOT NULL DEFAULT '',
  `copyids` varchar(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` varchar(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_shop_data_1`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_shop_data_1` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_shop_doc`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_shop_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `keyboard` varchar(160) NOT NULL DEFAULT '',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ztid` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `productno` varchar(30) NOT NULL DEFAULT '',
  `pbrand` varchar(30) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `unit` varchar(16) NOT NULL DEFAULT '',
  `weight` varchar(20) NOT NULL DEFAULT '',
  `tprice` float(11,2) NOT NULL DEFAULT '0.00',
  `price` float(11,2) NOT NULL DEFAULT '0.00',
  `buyfen` int(11) NOT NULL DEFAULT '0',
  `pmaxnum` int(11) NOT NULL DEFAULT '0',
  `productpic` varchar(255) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `stb` varchar(4) NOT NULL DEFAULT '',
  `copyids` varchar(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` varchar(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_ecms_shop_doc_data`
--

CREATE TABLE IF NOT EXISTS `phome_ecms_shop_doc_data` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsad`
--

CREATE TABLE IF NOT EXISTS `phome_enewsad` (
  `adid` int(11) NOT NULL AUTO_INCREMENT,
  `picurl` varchar(255) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `pic_width` int(11) NOT NULL DEFAULT '0',
  `pic_height` int(11) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `adtype` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '',
  `alt` varchar(120) NOT NULL DEFAULT '',
  `starttime` date NOT NULL DEFAULT '0000-00-00',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `adsay` text NOT NULL,
  `titlefont` varchar(255) NOT NULL DEFAULT '',
  `titlecolor` varchar(10) NOT NULL DEFAULT '',
  `htmlcode` text NOT NULL,
  `t` tinyint(4) NOT NULL DEFAULT '0',
  `ylink` tinyint(1) NOT NULL DEFAULT '0',
  `reptext` text NOT NULL,
  PRIMARY KEY (`adid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsadclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewsadclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `phome_enewsadclass`
--

INSERT INTO `phome_enewsadclass` (`classid`, `classname`) VALUES
(1, '默认广告分类');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsadminstyle`
--

CREATE TABLE IF NOT EXISTS `phome_enewsadminstyle` (
  `styleid` smallint(6) NOT NULL AUTO_INCREMENT,
  `stylename` varchar(60) NOT NULL DEFAULT '',
  `path` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `phome_enewsadminstyle`
--

INSERT INTO `phome_enewsadminstyle` (`styleid`, `stylename`, `path`, `isdefault`) VALUES
(1, '管理员后台界面', 1, 1),
(2, '编辑后台界面', 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsbefrom`
--

CREATE TABLE IF NOT EXISTS `phome_enewsbefrom` (
  `befromid` smallint(6) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(60) NOT NULL DEFAULT '',
  `siteurl` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`befromid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsbq`
--

CREATE TABLE IF NOT EXISTS `phome_enewsbq` (
  `bqid` smallint(6) NOT NULL AUTO_INCREMENT,
  `bqname` varchar(60) NOT NULL DEFAULT '',
  `bqsay` text NOT NULL,
  `funname` varchar(60) NOT NULL DEFAULT '',
  `bq` varchar(60) NOT NULL DEFAULT '',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  `bqgs` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bqid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `phome_enewsbq`
--

INSERT INTO `phome_enewsbq` (`bqid`, `bqname`, `bqsay`, `funname`, `bq`, `issys`, `bqgs`, `isclose`, `classid`, `myorder`) VALUES
(1, '文字调用标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID/专题ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php\\'');\\"><strong><u>这里</u></strong></a>，查看专题ID点<a onclick=\\"window.open(\\''../ListZt.php\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与专题ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示时间</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在标题后显示时间，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">时间格式化</div>\r\n            </td>\r\n            <td height=\\"25\\">形式：Y-m-d H:i:s．默认为：\\''(m-d)\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''帝国\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td colspan=\\"2\\">\r\n            <div align=\\"center\\">（注：在栏目ID中写大栏目，系统会自己搜索子栏目的信息）</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetClassNews', 'phomenews', 1, '[phomenews]栏目ID/专题ID,显示条数,标题截取数,是否显示时间,操作类型,是否显示栏目名,\\''时间格式化\\'',附加SQL条件,显示排序[/phomenews]', 0, 1, 9),
(22, '留言板调用', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\\"40%\\">\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td width=\\"60%\\">参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示信息数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示记录数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a></div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">模板标签变量说明：<br />\r\n            留言ID：[!--lyid--]，留言内容：[!--lytext--]<br />\r\n            回复内容：[!--retext--]，留言时间：[!--lytime--]<br />\r\n            留言者：[!--name--]，留言者邮箱：[!--email--]<br />\r\n            序号：[!--no--]</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">留言分类ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">点击<strong><a onclick=\\"window.open(\\''../tool/GbookClass.php\\'');\\">这里</a></strong>查看分类ID，0为不限制</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowLyInfo', 'gbookinfo', 1, '[gbookinfo]显示信息数,标签模板ID,留言分类ID[/gbookinfo]', 0, 3, 5),
(23, '专题调用标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <p>模板标签变量说明：(list.var)<br />\r\n            [!--classurl--]：专题链接，[!--classname--]：专题名称<br />\r\n            [!--classid--]：专题id，[!--classimg--]：专题图片<br />\r\n            [!--intro--]：专题简介,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">专题类别ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">点击<strong><a onclick=\\"window.open(\\''../ListZtClass.php\\'');\\">这里</a></strong>查看分类ID，0为不限制，多个分类ID用逗号隔开，如\\''1,2\\''</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示专题数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">所属栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">点击<strong><a onclick=\\"window.open(\\''../ListClass.php\\'');\\">这里</a></strong>查看栏目ID，0为不限制，多个栏目ID用逗号隔开，如\\''1,2\\''</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowZtData', 'eshowzt', 1, '[eshowzt]标签模板ID,专题类别ID,显示专题数,所属栏目ID[/eshowzt]', 0, 2, 6),
(2, '图文信息调用(标题图片的信息)', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID/专题ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php\\'');\\"><strong><u>这里</u></strong></a>，查看专题ID点<a onclick=\\"window.open(\\''../ListZt.php\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与专题ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">每行显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">每行显示几个图片</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示总信息数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示信息总数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">图片宽度，图片高度</div>\r\n            </td>\r\n            <td height=\\"25\\">图文信息图片大小</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示标题</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在图片下显示标题，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">操作类型说明</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''帝国\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetClassNewsPic', 'phomenewspic', 1, '[phomenewspic]栏目ID/专题ID,每行显示条数,显示总信息数,图片宽度,图片高度,是否显示标题,标题截取数,操作类型,附加SQL条件,显示排序[/phomenewspic]', 0, 1, 9),
(3, '图片信息标签(调用单个)', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">图片信息ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看图片信息ID点<a onclick=\\"window.open(\\''../NewsSys/ListPicNews.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示标题</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在图片下显示标题，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示简介</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在图片下显示简介，0为不显示，1为显示</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetPicNews', 'phomepic', 1, '[phomepic]图片信息ID,是否显示标题,是否显示简介[/phomepic]', 1, 4, 4),
(4, '图片信息标签(调用多个)', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">图片信息类别ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看图片信息类别ID点<a onclick=\\"window.open(\\''../NewsSys/PicClass.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">每行显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">每行显示几个图片</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">调用总条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示新闻总数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">图片宽度，图片高度</div>\r\n            </td>\r\n            <td height=\\"25\\">图片信息图片大小</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示标题</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在图片下显示标题，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">是否显示原链接</div>\r\n            </td>\r\n            <td height=\\"25\\">0为显示,1为不显示</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetMorePicNews', 'phomemorepic', 1, '[phomemorepic]图片信息类别ID,每行显示条数,调用总条数,图片宽度,图片高度,是否显示标题,标题截取数,是否显示原链接[/phomemorepic]', 1, 4, 4),
(5, '广告标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">广告ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看广告ID点<a onclick=\\"window.open(\\''../tool/ListAd.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetAd', 'phomead', 1, '[phomead]广告ID[/phomead]', 0, 3, 5),
(6, '投票标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">投票ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看投票ID点<a onclick=\\"window.open(\\''../tool/ListVote.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetVote', 'phomevote', 1, '[phomevote]投票ID[/phomevote]', 0, 3, 5),
(7, '简介型调用信息标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID/专题ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php\\'');\\"><strong><u>这里</u></strong></a>，查看专题ID点<a onclick=\\"window.open(\\''../ListZt.php\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与专题ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示信息记录数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">表格颜色</div>\r\n            </td>\r\n            <td height=\\"25\\">请加上\\''\\''(单引号)</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''帝国\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetClassNewsText', 'phomenewstext', 1, '[phomenewstext]栏目ID/专题ID,显示条数,\\''表格颜色\\'',操作类型,是否显示栏目名,附加SQL条件,显示排序[/phomenewstext]', 1, 1, 7),
(11, '带模板的信息调用标签[万能标签]', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID/专题ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php\\'');\\"><strong><u>这里</u></strong></a>，查看专题ID点<a onclick=\\"window.open(\\''../ListZt.php\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与专题ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''帝国\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetEcmsInfo', 'ecmsinfo', 1, '[ecmsinfo]栏目ID/专题ID,显示条数,标题截取数,是否显示栏目名,操作类型,模板ID,只显示有标题图片,附加SQL条件,显示排序[/ecmsinfo]', 0, 1, 10),
(10, '滚动图片信息标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID/专题ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php\\'');\\"><strong><u>这里</u></strong></a>，查看专题ID点<a onclick=\\"window.open(\\''../ListZt.php\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与专题ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示总数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示信息总数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">图片宽度，图片高度</div>\r\n            </td>\r\n            <td height=\\"25\\">图文信息图片大小</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示标题</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在图片下显示标题，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">显示速度</div>\r\n            </td>\r\n            <td height=\\"25\\">默认值为5000毫秒(5秒)</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">操作类型说明</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''帝国\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetAutoPic', 'phomeautopic', 1, '[phomeautopic]栏目ID/专题ID,显示总数,图片宽度,图片高度,是否显示标题,标题截取数,显示速度,操作类型,附加SQL条件,显示排序[/phomeautopic]', 1, 1, 8),
(12, '友情链接标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\\"40%\\">\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td width=\\"60%\\">参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">每行显示记录数</div>\r\n            </td>\r\n            <td height=\\"25\\">每行显示记录数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示总记录数</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">总记录数</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">0为所有记录，1为图片链接，2为文字链接</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">分类ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">点击<strong><a onclick=\\"window.open(\\''../tool/LinkClass.php\\'');\\">这里</a></strong>查看分类ID，0为不限制</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示原链接</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">0为统计点击链接，1为显示原链接</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetSitelink', 'phomelink', 1, '[phomelink]每行显示数,显示总数,操作类型,分类id,是否显示原链接[/phomelink]', 0, 3, 5),
(13, '显示栏目导航标签', '<p>[phomeshowclass]是否显示栏目记录数[/phomeshowclass]</p>', 'sys_ShowClass', 'phomeshowclass', 1, '[phomeshowclass]是否显示栏目记录数[/phomeshowclass]', 1, 2, 6),
(14, '显示网站地图标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">子栏目每行显示记录数</div>\r\n            </td>\r\n            <td height=\\"25\\">子栏目每行显示多少个栏目</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">大栏目颜色</div>\r\n            </td>\r\n            <td height=\\"25\\">大栏目单元格颜色,记得加上单引号</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">子栏目颜色</div>\r\n            </td>\r\n            <td height=\\"25\\">子栏目表格颜色,记得加上单引号</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目记录数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示.如显示效率比较低</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowMap', 'phomeshowmap', 1, '[phomeshowmap]栏目ID,子栏目每行显示记录数,\\''大栏目颜色\\'',\\''子栏目颜色\\'',是否显示栏目记录数[/phomeshowmap]', 1, 2, 6),
(15, '引用文件标签', '<p>[includefile]\\''文件地址\\''[/includefile]<br />\r\n文件地址需要为相对地址,并且从后台目录算起：&quot;../../header.html&quot;（这个地址的header.html是放在ecms根目录）</p>', 'sys_IncludeFile', 'includefile', 1, '[includefile]\\''文件地址\\''[/includefile]', 1, 4, 4),
(16, '读取远程页面', '<p>[readhttp]\\''页面地址\\''[/readhttp]</p>', 'sys_ReadFile', 'readhttp', 1, '[readhttp]\\''页面地址\\''[/readhttp]', 1, 4, 4),
(17, '网站信息统计', '<p>操作类型说明：\r\n<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr bgcolor=\\"#dbeaf5\\">\r\n            <td width=\\"25%\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td width=\\"75%\\">内容</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">0</div>\r\n            </td>\r\n            <td>统计栏目数据</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">1</div>\r\n            </td>\r\n            <td>统计专题</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">2</div>\r\n            </td>\r\n            <td>统计数据表</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<br />\r\n时间范围：0为不限；1为今日；2为本月；3为本年<br />\r\n如果操作类型是&ldquo;统计数据表&rdquo;，栏目ID=\\''数据表名\\''</p>', 'sys_TotalData', 'totaldata', 1, '[totaldata]栏目ID,操作类型,时间范围[/totaldata]', 0, 1, 7),
(18, 'FLASH幻灯信息调用', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">栏目ID/专题ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php\\'');\\"><strong><u>这里</u></strong></a>，查看专题ID点<a onclick=\\"window.open(\\''../ListZt.php\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与专题ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示总数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示信息总数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">图片宽度，图片高度</div>\r\n            </td>\r\n            <td height=\\"25\\">图文信息图片大小</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示标题</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在图片下显示标题，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">操作类型说明</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''帝国\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_FlashPixpic', 'phomeflashpic', 1, '[phomeflashpic]栏目ID/专题ID,显示总数,图片宽度,图片高度,是否显示标题,标题截取数,操作类型,停顿秒数,附加SQL条件,显示排序[/phomeflashpic]', 0, 1, 9),
(19, '搜索关键字调用标签', '<p>栏目id为0，则显示所有栏目的关键字</p>\r\n<p>操作类型：0为搜索热门排行，1为最新搜索排行</p>', 'sys_ShowSearchKey', 'showsearch', 1, '[showsearch]每行显示条数,总条数,栏目id,操作类型[/showsearch]', 0, 1, 7),
(20, '循环子栏目数据标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php\\'');\\"><strong><u>这里</u></strong></a>，单个为父栏目ID，多栏目可用&quot;,&quot;格开<br />\r\n            当前栏目ID用：\\''selfinfo\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">0：栏目最新<br />\r\n            1：栏目热门<br />\r\n            2：栏目推荐<br />\r\n            3：栏目评论排行<br />\r\n            4：栏目头条<br />\r\n            5：栏目下载排行</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示头条操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">0：不显示栏目头条<br />\r\n            1：栏目内容简介<br />\r\n            2：栏目推荐信息<br />\r\n            3：栏目头条信息<br />\r\n            4：栏目最新信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">头条标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">头条简介截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">头条只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''帝国\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">头条的模板变量<br />\r\n            (标签模板的页面模板内容中使用)</div>\r\n            </td>\r\n            <td height=\\"25\\">[!--sonclass.id--]：信息ID<br />\r\n            [!--sonclass.title--]：信息标题<br />\r\n            [!--sonclass.oldtitle--]：信息标题(不截取字数)<br />\r\n            [!--sonclass.titlepic--]：标题图片<br />\r\n            [!--sonclass.titleurl--]：信息链接<br />\r\n            [!--sonclass.text--]：信息简介</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ForSonclassData', 'listsonclass', 1, '[listsonclass]栏目ID,显示条数,标题截取数,是否显示栏目名,操作类型,模板ID,只显示有标题图片,显示栏目数,显示头条操作类型,头条标题截取数,头条简介截取数,头条只显示有标题图片,附加SQL条件,显示排序[/listsonclass]', 0, 1, 9),
(21, '带模板的栏目导航标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">父栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php\\'');\\"><strong><u>这里</u></strong></a><br />\r\n            \\''0\\''为显示所有一级栏目<br />\r\n            \\''selfinfo\\''显示本栏目下级栏目</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <p>模板标签变量说明：[!--bclassname--]：父栏目名,[!--bclassurl--]：父栏目链接,[!--bclassid--]：父栏目id</p>\r\n            <p>list.var模板标签：<br />\r\n            [!--classurl--]：栏目链接,[!--classname--]：栏目名称,[!--classid--]：栏目id,[!--classimg--]：栏目图片,[!--intro--]：栏目简介,[!--num--]：信息数,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目信息数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowClassByTemp', 'showclasstemp', 1, '[showclasstemp]父栏目ID,标签模板ID,是否显示栏目信息数,显示栏目数[/showclasstemp]', 0, 2, 6),
(24, '图库模型分页标签', '<p>\r\n<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <p><strong>模板标签变量说明：</strong><br />\r\n            图片集JS数组：[!--photor--]，缩略图导航：[!--smalldh--]<br />\r\n            分页导航：[!--select--]，标题分页导航：[!--titleselect--]，分页列表式导航：[!--listpage--]</p>\r\n            <p><strong>list.var模板标签：</strong><br />\r\n            图片名称：[!--picname--]，图片地址：[!--picurl--]</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">导航图片宽度<br />\r\n            导航图片高度</div>\r\n            </td>\r\n            <td height=\\"25\\">0为按原图大小</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', 'sys_PhotoMorepage', 'eshowphoto', 1, '[eshowphoto]标签模板ID,导航图片宽度,导航图片高度[/eshowphoto]', 0, 1, 7),
(25, '复选项输出函数', '<p>如：[echocheckbox]\\''title\\'',\\''&lt;br&gt;\\''[/echocheckbox]：表示按回车分隔输出title字段的项</p>', 'sys_EchoCheckboxFValue', 'echocheckbox', 1, '[echocheckbox]\\''字段\\'',\\''分隔符\\''[/echocheckbox]', 0, 3, 5),
(26, '相关链接标签', '<p><strong>标签模板ID</strong>：查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a><br />\r\n<strong>操作类型</strong>：0为默认；1为按表；2为按栏目；3为按专题<br />\r\n<strong>操作对象</strong>：对应操作类型的表/栏目/专题。空则为默认。<br />\r\n<strong>是否显示栏目名</strong>：0为不显示；1为显示<br />\r\n<strong>只显示标题图片的信息</strong>：0为不限；1为只显示标题图片的信息</p>', 'sys_GetOtherLinkInfo', 'otherlink', 1, '[otherlink]标签模板ID,操作对象,调用条数,标题截取字数,是否显示栏目名,操作类型,只显示标题图片的信息[/otherlink]', 0, 1, 9),
(27, '评论调用标签', '<p><strong>标签模板ID</strong>：查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a><br />\r\n<strong>栏目ID</strong>：0为不限调用栏目，父栏目会应用于子栏目<br />\r\n<strong>信息ID</strong>：0为不限<br />\r\n<strong>显示推荐评论</strong>：0为不限；1为只显示推荐评论<br />\r\n<strong>操作类型</strong>：0为按发布时间；1为按支持数；2为按反对数<br />\r\n<strong>标签模板说明</strong>：[!--title--]:信息标题；[!--titleurl--]:信息链接；[!--id--]:信息ID<br />\r\n[!--classid--]:栏目ID；[!--plid--]:评论ID；[!--username--]:发表者；[!--no--]:编号<br />\r\n[!--pltext--]:评论内容；[!--pltime--]:评论时间；[!--zcnum--]:支持数；[!--fdnum--]:反对数</p>', 'sys_ShowPlInfo', 'showplinfo', 1, '[showplinfo]调用条数,标签模板ID,栏目ID,信息ID,显示推荐评论,操作类型[/showplinfo]', 0, 3, 5),
(28, '循环栏目导航标签', '<p>\r\n<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">父栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php\\'');\\"><strong><u>这里</u></strong></a><br />\r\n            \\''0\\''为显示所有一级栏目<br />\r\n            \\''selfinfo\\''显示本栏目下级栏目<br />\r\n            多栏目固定调用可用&quot;,&quot;格开</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <p>模板标签变量说明：[!--bclassname--]：父栏目名,[!--bclassurl--]：父栏目链接,[!--bclassid--]：父栏目id，[!--bclassimg--]：父栏目图片,[!--bintro--]：父栏目简介,[!--bnum--]：父栏目信息数,[!--bno--]：父栏目序号</p>\r\n            <p>list.var模板标签：<br />\r\n            [!--classurl--]：栏目链接,[!--classname--]：栏目名称,[!--classid--]：栏目id,[!--classimg--]：栏目图片,[!--intro--]：栏目简介,[!--num--]：信息数,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目信息数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', 'sys_ForShowSonClass', 'listshowclass', 1, '[listshowclass]父栏目ID,标签模板ID,是否显示栏目信息数,显示栏目数[/listshowclass]', 0, 2, 6);
INSERT INTO `phome_enewsbq` (`bqid`, `bqname`, `bqsay`, `funname`, `bq`, `issys`, `bqgs`, `isclose`, `classid`, `myorder`) VALUES
(29, '调用TAGS的信息标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">TAGS的ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看TAGS的ID点<a onclick=\\"window.open(\\''../tags/ListTags.php\\'');\\"><strong><u>这里</u></strong></a><br />\r\n            多个ID可以用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">限制只调用某一个或多个栏目的信息<br />\r\n            多个ID可以用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">系统模型ID</div>\r\n            </td>\r\n            <td height=\\"25\\">限制只调用某一个或多个系统模型的信息<br />\r\n            多个ID可以用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_eShowTagsInfo', 'tagsinfo', 0, '[tagsinfo]TAGS的ID,显示条数,标题截取数,标签模板ID,栏目ID,系统模型ID[/tagsinfo]', 0, 0, 9),
(30, '调用碎片的信息标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">碎片变量名</div>\r\n            </td>\r\n            <td height=\\"25\\">查看碎片变量名点<a onclick=\\"window.open(\\''../sp/ListSp.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<br>\r\n<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n  <tbody>\r\n    <tr> \r\n      <td colspan=\\"2\\"> <div align=\\"center\\">碎片标签模板变量说明</div></td>\r\n    </tr>\r\n    <tr bgcolor=\\"#ffffff\\"> \r\n      <td width=\\"34%\\" height=\\"25\\"> \r\n        <div align=\\"center\\">静态碎片</div></td>\r\n      <td width=\\"66%\\" height=\\"25\\">模板标签变量说明：[!--the.spname--]：碎片名称,[!--the.spid--]：碎片ID,[!--the.sppic--]：碎片效果图,[!--the.spsay--]：碎片描述 \r\n        <p>list.var模板标签：<br>\r\n          [!--title--]：标题,[!--oldtitle--]：标题ALT,[!--newstime--]：发布时间,[!--id--]：碎片信息ID,[!--titleurl--]：标题链接,[!--titlepic--]：标题缩图,[!--bigpic--]：标题大图,[!--titlepre--]：标题左边,[!--titlenext--]：标题右边,[!--smalltext--]：内容简介,[!--no.num--]：编号</p></td>\r\n    </tr>\r\n    <tr bgcolor=\\"#ffffff\\"> \r\n      <td height=\\"25\\"> <div align=\\"center\\">动态碎片</div></td>\r\n      <td height=\\"25\\">模板标签变量说明：[!--the.spname--]：碎片名称,[!--the.spid--]：碎片ID,[!--the.sppic--]：碎片效果图,[!--the.spsay--]：碎片描述 \r\n        <p>list.var模板标签：<br>\r\n          支持变量同模型信息调用</p></td>\r\n    </tr>\r\n    <tr bgcolor=\\"#ffffff\\"> \r\n      <td height=\\"25\\"> <div align=\\"center\\">代码碎片</div></td>\r\n      <td height=\\"25\\">无需标签模板，直接显示代码内容</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n', 'sys_eShowSpInfo', 'spinfo', 0, '[spinfo]碎片变量名,显示条数,标题截取数[/spinfo]', 0, 0, 9),
(31, '调用TAGS标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">分类ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\\''\\''空为不限制，查看TAGS分类ID点<a onclick=\\"window.open(\\''../tags/TagsClass.php\\'');\\"><strong><u>这里</u></strong></a><br />\r\n            多个可以用,号格开，如\\''1,2\\''<br />\r\n            内容页显示当前TAGS可以用\\''selfinfo\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示数量</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录，0为显示所有（\\''selfinfo\\''本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">每行显示数量</div>\r\n            </td>\r\n            <td height=\\"25\\">一行显示多少个TAGS，0为不换行</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">使用默认设置\\''\\''空就可以，默认是\\''tagid desc\\''（\\''selfinfo\\''本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">只显示推荐</div>\r\n            </td>\r\n            <td height=\\"25\\">只显示推荐的TAGS，0为不限制，1为限制（\\''selfinfo\\''本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">推荐TAGS属性</div>\r\n            </td>\r\n            <td height=\\"25\\">如果是推荐的TAGS，内容是否要加粗或加红（\\''selfinfo\\''本设置无效）<br />\r\n            设置\\''s\\''表示加粗、\\''r\\''表示加红、同时加粗加红用\\''s,r\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示间隔符</div>\r\n            </td>\r\n            <td height=\\"25\\">TAGS之间显示间隔符，默认是\\'' &amp;nbsp; \\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示信息数量</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在TAGS后显示信息数量，0为不显示，1为显示（\\''selfinfo\\''本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">链接附加参数</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定在TAGS链接后面增加参数，比如：\\''&amp;tempid=模板ID\\''</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_eShowTags', 'showtags', 0, '[showtags]分类ID,显示数量,每行显示数量,显示排序,只显示推荐,推荐TAGS属性,显示间隔符,是否显示信息数,链接附加参数[/showtags]', 0, 0, 9);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsbqclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewsbqclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `phome_enewsbqclass`
--

INSERT INTO `phome_enewsbqclass` (`classid`, `classname`) VALUES
(1, '信息调用'),
(2, '栏目调用'),
(3, '非信息调用'),
(4, '其它标签');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsbqtemp`
--

CREATE TABLE IF NOT EXISTS `phome_enewsbqtemp` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `temptext` text NOT NULL,
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `listvar` text NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `phome_enewsbqtemp`
--

INSERT INTO `phome_enewsbqtemp` (`tempid`, `tempname`, `modid`, `temptext`, `showdate`, `listvar`, `subnews`, `rownum`, `classid`, `docode`) VALUES
(1, '子栏目导航标签模板', 1, '| [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<a href=\\"[!--classurl--]\\">[!--classname--]</a> | ', 0, 1, 0, 0),
(2, '标题列表模板', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a></li>', 0, 1, 0, 0),
(3, '标题+简介', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'm-d', '<li><p><strong><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a></strong>[!--smalltext--] </p></li>', 60, 1, 0, 0),
(4, '头条相关', 1, '[!--empirenews.listtemp--]<!--list.var1-->　<!--list.var2-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<a href="[!--titleurl--]" title="[!--oldtitle--]">·[!--title--]</a>', 0, 2, 0, 0),
(5, '图片+标题+简介', 1, '[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<table width=\\"94%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"6\\" class=\\"picText\\">\r\n<tr valign=\\"top\\">\r\n<td><a href=\\"[!--titleurl--]\\" target=\\"_blank\\"><img width=\\"70\\" height=\\"78\\" src=\\"[!--titlepic--]\\" alt=\\"[!--oldtitle--]\\" /></a></td>\r\n<td><strong><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></strong>[!--smalltext--]</td>\r\n</tr>\r\n</table>', 56, 1, 0, 0),
(7, '循环子栏目标签', 1, '<table width="100%" border="0" cellspacing="0" cellpadding="0" class="title">\r\n<tr>\r\n<td><strong>[!--the.classname--]</strong></td>\r\n<td align="right"><a href="[!--the.classurl--]">更多&gt;&gt;</a></td>\r\n</tr>\r\n</table>\r\n<table width="100%" border="0" cellspacing="0" cellpadding="0" class="box">\r\n<tr>\r\n<td><ul>\r\n       [!--empirenews.listtemp--]\r\n       <!--list.var1-->\r\n       [!--empirenews.listtemp--]\r\n</ul>\r\n</td>\r\n</tr>\r\n</table>', 'Y-m-d', '<li><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a> <span>[!--newstime--]</span></li>', 0, 1, 0, 0),
(8, '头条标题', 1, '[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<strong><a href="[!--titleurl--]">[!--title--]</a></strong>\r\n<p>　　[!--smalltext--]</p>', 150, 1, 0, 0),
(9, '标题+软件简介', 2, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li><p><strong><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></strong>[!--softsay--]</p></li>', 50, 1, 0, 0),
(10, '排行列表', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li class="no[!--no.num--]"><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a></li>', 0, 1, 0, 0),
(11, '图片集分页模板', 1, '<script type=\\"text/javascript\\">\r\n        var photosr=new Array();\r\n        [!--photor--]\r\n        function GotoPhPage(page){\r\n                page=parseInt(page);\r\n                document.getElementById(\\"showpagephoto\\").innerHTML=photosr[page];\r\n                document.ViewPhotoForm.thisphpage.value=page;\r\n                document.ViewPhotoForm.tothephpage.options[page-1].selected=true;\r\n        }\r\n        //上一页\r\n        function PriPhPage(){\r\n                var thispage=parseInt(document.ViewPhotoForm.thisphpage.value);\r\n                var num=photosr.length;\r\n                if(thispage<=1)\r\n                {\r\n                        return false;\r\n                }\r\n                GotoPhPage(thispage-1);\r\n        }\r\n        //下一页\r\n        function NextPhPage(){\r\n                var thispage=parseInt(document.ViewPhotoForm.thisphpage.value);\r\n                var num=photosr.length;\r\n                if(thispage>=num-1)\r\n                {\r\n                        return false;\r\n                }\r\n                GotoPhPage(thispage+1);\r\n        }\r\n        function PhAutoPlay(){\r\n                var sec=parseInt(document.ViewPhotoForm.autoplaysec.value);\r\n                var i;\r\n                var num=photosr.length;\r\n                for(i=1;i<=sec;i++)\r\n                {\r\n                        if(document.ViewPhotoForm.autophstop.value==0)\r\n                        {\r\n                                window.setTimeout(\\"PhAutoPlayExe(\\"+i+\\",\\"+sec+\\")\\",i*1000);\r\n                        }\r\n                        else\r\n                        {\r\n                                break;\r\n                        }\r\n                }\r\n        }\r\n        function PhAutoPlayExe(num,sec){\r\n                var t;\r\n                if(document.ViewPhotoForm.autophstop.value==1)\r\n                {\r\n                        return \\"\\";\r\n                }\r\n                if(num==sec) \r\n                {\r\n                        t=NextPhPage();\r\n                        if(t==false)\r\n                        {\r\n                                GotoPhPage(1);\r\n                        }\r\n                        PhAutoPlay();\r\n                } \r\n        }\r\n        </script>\r\n        \r\n<table width=\\"100%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n  <tr> \r\n    <td height=\\"25\\" id=\\"showpagephoto\\" align=\\"center\\"> \r\n      <!--list.var1-->\r\n    </td>\r\n  </tr>\r\n  <form name=\\"ViewPhotoForm\\" id=\\"ViewPhotoForm\\" method=\\"POST\\" action=\\"\\">\r\n    <tr> \r\n      <td height=\\"25\\"> <div align=\\"center\\"> \r\n          <input type=\\"button\\" name=\\"Submit\\" value=\\"上一页\\" onclick=\\"PriPhPage();\\">\r\n          &nbsp;&nbsp; \r\n          <select name=\\"tothephpage\\" onchange=\\"GotoPhPage(this.options[this.selectedIndex].value)\\">\r\n            [!--select--]\r\n          </select>\r\n          &nbsp;&nbsp; \r\n          <input type=\\"button\\" name=\\"Submit2\\" value=\\"下一页\\" onclick=\\"NextPhPage();\\">\r\n          <input name=\\"thisphpage\\" type=\\"hidden\\" value=\\"1\\">\r\n        </div></td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\\"25\\"><div align=\\"center\\">\r\n          <select name=\\"autoplaysec\\">\r\n            <option value=\\"1\\">1秒</option>\r\n            <option value=\\"2\\">2秒</option>\r\n            <option value=\\"3\\" selected>3秒</option>\r\n            <option value=\\"4\\">4秒</option>\r\n            <option value=\\"5\\">5秒</option>\r\n            <option value=\\"6\\">6秒</option>\r\n            <option value=\\"7\\">7秒</option>\r\n            <option value=\\"8\\">8秒</option>\r\n            <option value=\\"9\\">9秒</option>\r\n            <option value=\\"10\\">10秒</option>\r\n          </select>\r\n                  <input name=\\"autophstop\\" type=\\"hidden\\" value=\\"0\\">\r\n          <input type=\\"button\\" name=\\"Submit3\\" value=\\"自动播放\\" onclick=\\"document.ViewPhotoForm.autophstop.value=0;PhAutoPlay();\\">\r\n          &nbsp;<input type=\\"button\\" name=\\"Submit32\\" value=\\"停止播放\\" onclick=\\"document.ViewPhotoForm.autophstop.value=1;\\">\r\n        </div></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n<table width=\\"500\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n<tr><td>\r\n<marquee  behavior=alternate ONMOUSEOUT=\\"this.scrollDelay=1\\" ONMOUSEOVER=\\"this.scrollDelay=600\\"  scrollamount=1  SCROLLDELAY=1  border=0  scrolldelay=70  width=\\"100%\\"  align=middle>\r\n        [!--smalldh--]\r\n</marquee>\r\n</td></tr></table>', 'Y-m-d H:i:s', '<a href=\\''#ecms\\'' onclick=\\''NextPhPage();\\'' title=\\''点击进入下一张图片\\''><img src=\\''[!--picurl--]\\'' alt=\\''[!--picname--]\\'' border=1 class=\\''photoresize\\''></a><br><span style=\\''line-height=18pt\\''>[!--picname--]</span>', 0, 1, 0, 0),
(12, '栏目tabs导航', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li id="tabnav_btn_[!--no--]" onmouseover="tabit(this)"><a href="[!--classurl--]">[!--classname--]</a></li>', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsbqtempclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewsbqtempclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsbuybak`
--

CREATE TABLE IF NOT EXISTS `phome_enewsbuybak` (
  `username` varchar(30) NOT NULL DEFAULT '',
  `card_no` varchar(255) NOT NULL DEFAULT '',
  `buytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cardfen` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `userdate` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsbuygroup`
--

CREATE TABLE IF NOT EXISTS `phome_enewsbuygroup` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `gname` varchar(255) NOT NULL DEFAULT '',
  `gmoney` int(11) NOT NULL DEFAULT '0',
  `gfen` int(11) NOT NULL DEFAULT '0',
  `gdate` int(11) NOT NULL DEFAULT '0',
  `ggroupid` smallint(6) NOT NULL DEFAULT '0',
  `gzgroupid` smallint(6) NOT NULL DEFAULT '0',
  `buygroupid` smallint(6) NOT NULL DEFAULT '0',
  `gsay` text NOT NULL,
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewscard`
--

CREATE TABLE IF NOT EXISTS `phome_enewscard` (
  `cardid` int(11) NOT NULL AUTO_INCREMENT,
  `card_no` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL DEFAULT '',
  `money` int(11) NOT NULL DEFAULT '0',
  `cardfen` int(11) NOT NULL DEFAULT '0',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `cardtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `carddate` int(11) NOT NULL DEFAULT '0',
  `cdgroupid` smallint(6) NOT NULL DEFAULT '0',
  `cdzgroupid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewsclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `bclassid` smallint(6) NOT NULL DEFAULT '0',
  `classname` varchar(50) NOT NULL DEFAULT '',
  `sonclass` text NOT NULL,
  `is_zt` tinyint(1) NOT NULL DEFAULT '0',
  `lencord` smallint(6) NOT NULL DEFAULT '0',
  `link_num` tinyint(4) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `listtempid` smallint(6) NOT NULL DEFAULT '0',
  `featherclass` text NOT NULL,
  `islast` tinyint(1) NOT NULL DEFAULT '0',
  `classpath` text NOT NULL,
  `classtype` varchar(10) NOT NULL DEFAULT '',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `openpl` tinyint(1) NOT NULL DEFAULT '0',
  `openadd` tinyint(1) NOT NULL DEFAULT '0',
  `newline` int(11) NOT NULL DEFAULT '0',
  `hotline` int(11) NOT NULL DEFAULT '0',
  `goodline` int(11) NOT NULL DEFAULT '0',
  `classurl` varchar(200) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `filename_qz` varchar(20) NOT NULL DEFAULT '',
  `hotplline` tinyint(4) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `firstline` tinyint(4) NOT NULL DEFAULT '0',
  `bname` varchar(50) NOT NULL DEFAULT '',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `searchtempid` smallint(6) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `checkpl` tinyint(1) NOT NULL DEFAULT '0',
  `down_num` tinyint(4) NOT NULL DEFAULT '0',
  `online_num` tinyint(4) NOT NULL DEFAULT '0',
  `listorder` varchar(50) NOT NULL DEFAULT '',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `classimg` varchar(255) NOT NULL DEFAULT '',
  `jstempid` smallint(6) NOT NULL DEFAULT '0',
  `addinfofen` int(11) NOT NULL DEFAULT '0',
  `listdt` tinyint(1) NOT NULL DEFAULT '0',
  `showclass` tinyint(1) NOT NULL DEFAULT '0',
  `showdt` tinyint(1) NOT NULL DEFAULT '0',
  `checkqadd` tinyint(1) NOT NULL DEFAULT '0',
  `qaddlist` tinyint(1) NOT NULL DEFAULT '0',
  `qaddgroupid` text NOT NULL,
  `qaddshowkey` tinyint(1) NOT NULL DEFAULT '0',
  `adminqinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doctime` smallint(6) NOT NULL DEFAULT '0',
  `classpagekey` varchar(255) NOT NULL DEFAULT '',
  `dtlisttempid` smallint(6) NOT NULL DEFAULT '0',
  `classtempid` smallint(6) NOT NULL DEFAULT '0',
  `nreclass` tinyint(1) NOT NULL DEFAULT '0',
  `nreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `nrejs` tinyint(1) NOT NULL DEFAULT '0',
  `nottobq` tinyint(1) NOT NULL DEFAULT '0',
  `ipath` varchar(255) NOT NULL DEFAULT '',
  `addreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `haddlist` tinyint(4) NOT NULL DEFAULT '0',
  `sametitle` tinyint(1) NOT NULL DEFAULT '0',
  `definfovoteid` smallint(6) NOT NULL DEFAULT '0',
  `wburl` varchar(255) NOT NULL DEFAULT '',
  `qeditchecked` tinyint(1) NOT NULL DEFAULT '0',
  `wapstyleid` smallint(6) NOT NULL DEFAULT '0',
  `repreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `pltempid` smallint(6) NOT NULL DEFAULT '0',
  `cgroupid` text NOT NULL,
  `yhid` smallint(6) NOT NULL DEFAULT '0',
  `wfid` smallint(6) NOT NULL DEFAULT '0',
  `cgtoinfo` tinyint(1) NOT NULL DEFAULT '0',
  `bdinfoid` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`),
  KEY `bclassid` (`bclassid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- 转存表中的数据 `phome_enewsclass`
--

INSERT INTO `phome_enewsclass` (`classid`, `bclassid`, `classname`, `sonclass`, `is_zt`, `lencord`, `link_num`, `newstempid`, `onclick`, `listtempid`, `featherclass`, `islast`, `classpath`, `classtype`, `newspath`, `filename`, `filetype`, `openpl`, `openadd`, `newline`, `hotline`, `goodline`, `classurl`, `groupid`, `myorder`, `filename_qz`, `hotplline`, `modid`, `checked`, `firstline`, `bname`, `islist`, `searchtempid`, `tid`, `tbname`, `maxnum`, `checkpl`, `down_num`, `online_num`, `listorder`, `reorder`, `intro`, `classimg`, `jstempid`, `addinfofen`, `listdt`, `showclass`, `showdt`, `checkqadd`, `qaddlist`, `qaddgroupid`, `qaddshowkey`, `adminqinfo`, `doctime`, `classpagekey`, `dtlisttempid`, `classtempid`, `nreclass`, `nreinfo`, `nrejs`, `nottobq`, `ipath`, `addreinfo`, `haddlist`, `sametitle`, `definfovoteid`, `wburl`, `qeditchecked`, `wapstyleid`, `repreinfo`, `pltempid`, `cgroupid`, `yhid`, `wfid`, `cgtoinfo`, `bdinfoid`) VALUES
(62, 0, '业务介绍', '|', 0, 25, 10, 8, 0, 7, '', 0, 'a/yewujieshao', '.html', 'Y-m-d', 0, '.html', 0, 0, 10, 10, 10, '', 0, 2, '', 10, 1, 1, 10, '业务介绍', 2, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 7, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, ''),
(63, 0, '培训专题', '|67|68|69|', 0, 25, 10, 1, 0, 1, '', 0, 'a/peixunzhuanti', '.html', 'Y-m-d', 0, '.html', 0, 0, 10, 10, 10, '', 0, 3, '', 10, 1, 1, 10, '培训专题', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, ''),
(70, 0, '税务文化研究', '', 0, 25, 10, 1, 0, 1, '', 1, 'a/shuiwuwenhuayanjiu', '.html', 'Y-m-d', 0, '.html', 0, 0, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '税务文化研究', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 1, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, ''),
(64, 0, '关于我们', '|', 0, 25, 10, 8, 0, 7, '', 0, 'a/guanyuwomen', '.html', 'Y-m-d', 0, '.html', 0, 0, 10, 10, 10, '', 0, 1, '', 10, 1, 1, 10, '关于我们', 2, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 7, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, ''),
(65, 0, '业界动态', '', 0, 25, 10, 1, 0, 1, '', 1, 'a/yejiedongtai', '.html', 'Y-m-d', 0, '.html', 0, 0, 10, 10, 10, '', 0, 4, '', 10, 1, 1, 10, '业界动态', 1, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 1, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, ''),
(67, 63, '企业重组培训', '', 0, 25, 10, 1, 0, 1, '|63|', 1, 'a/peixunzhuanti/qiyechongzu', '.html', 'Y-m-d', 0, '.html', 0, 0, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '企业重组培训', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 1, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, ''),
(68, 63, '营改增专题', '', 0, 25, 10, 1, 0, 1, '|63|', 1, 'a/peixunzhuanti/yinggaizeng', '.html', 'Y-m-d', 0, '.html', 0, 0, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '营改增专题', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, ''),
(69, 63, '注册税务师培训', '', 0, 25, 10, 1, 0, 1, '|63|', 1, 'a/peixunzhuanti/zhushui', '.html', 'Y-m-d', 0, '.html', 0, 0, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '注册税务师培训', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 1, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsclassadd`
--

CREATE TABLE IF NOT EXISTS `phome_enewsclassadd` (
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  `ttids` text NOT NULL,
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `phome_enewsclassadd`
--

INSERT INTO `phome_enewsclassadd` (`classid`, `classtext`, `ttids`) VALUES
(64, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name="keywords" content="[!--pagekey--]" />\r\n<meta name="description" content="[!--pagedes--]" />\r\n<link href="[!--news.url--]skin/default/css/style.css" rel="stylesheet" type="text/css" />\r\n<script type="text/javascript" src="[!--news.url--]skin/default/js/tabs.js"></script>\r\n</head>\r\n<body class="homepage">\r\n[!--temp.header--]\r\n\r\n<DIV align=center>\r\n<IFRAME src="/introduce/introduction.html" frameBorder=0 marginwidth=0 marginheight=0 scrolling=no style="width:920px;height:500px;" scrolling=yes ALLOWTRANSPARENCY="true"></IFRAME>\r\n</DIV>\r\n\r\n[!--temp.footer--]\r\n</body>\r\n</html>', ''),
(62, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name="keywords" content="[!--pagekey--]" />\r\n<meta name="description" content="[!--pagedes--]" />\r\n<link href="[!--news.url--]skin/default/css/style.css" rel="stylesheet" type="text/css" />\r\n<script type="text/javascript" src="[!--news.url--]skin/default/js/tabs.js"></script>\r\n</head>\r\n<body class="homepage">\r\n[!--temp.header--]\r\n\r\n<DIV align=center>\r\n<IFRAME src="/service/index.html" frameBorder=0 marginwidth=0 marginheight=0 scrolling=no style="width:920px;height:500px;" scrolling=yes ALLOWTRANSPARENCY="true"></IFRAME>\r\n</DIV>\r\n\r\n[!--temp.footer--]\r\n</body>\r\n</html>', ''),
(63, '', ''),
(65, '', ''),
(67, '', ''),
(68, '', ''),
(69, '', ''),
(70, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsclassf`
--

CREATE TABLE IF NOT EXISTS `phome_enewsclassf` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsclasstemp`
--

CREATE TABLE IF NOT EXISTS `phome_enewsclasstemp` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `phome_enewsclasstemp`
--

INSERT INTO `phome_enewsclasstemp` (`tempid`, `tempname`, `temptext`, `classid`) VALUES
(1, '通用一级栏目模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"channle\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"news_list\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n[listsonclass]\\''selfinfo\\'',5,38,0,0,7,0,0[/listsonclass]</td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo] \r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0),
(2, '分类信息一级栏目模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"channle\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"news_list\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n[listsonclass]\\''selfinfo\\'',5,38,0,0,7,0,0[/listsonclass]</td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>分类信息搜索</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><form action=\\"[!--news.url--]e/search/index.php\\" method=\\"post\\" name=\\"searchform\\" id=\\"searchform\\">\r\n<table width=\\"98%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"6\\">\r\n<input type=\\"hidden\\" name=\\"tbname\\" value=\\"info\\">\r\n<input type=\\"hidden\\" name=\\"tempid\\" value=\\"1\\">\r\n<tr>\r\n<td><input name=\\"keyboard\\" type=\\"text\\" class=\\"inputText\\" id=\\"keyboard\\" size=\\"18\\" />\r\n<select name=\\"show\\">\r\n<option value=\\"title,smalltext,myarea\\" selected=\\"selected\\">不限</option>\r\n<option value=\\"title\\">信息标题</option>\r\n<option value=\\"smalltext\\">信息内容</option>\r\n<option value=\\"myarea\\">所在地</option>\r\n</select></td>\r\n</tr>\r\n<tr>\r\n<td><select name=\\"classid\\">\r\n<option value=\\''9\\''>所有分类</option>\r\n<option value=\\''10\\''>|-房屋信息</option>\r\n<option value=\\''11\\'' >&nbsp;&nbsp;|-房屋求租</option>\r\n<option value=\\''12\\'' >&nbsp;&nbsp;|-房屋出租</option>\r\n<option value=\\''13\\'' >&nbsp;&nbsp;|-房屋求购</option>\r\n<option value=\\''14\\'' >&nbsp;&nbsp;|-房屋出售</option>\r\n<option value=\\''15\\'' >&nbsp;&nbsp;|-办公用房</option>\r\n<option value=\\''16\\'' >&nbsp;&nbsp;|-旺铺门面</option>\r\n<option value=\\''17\\''>|-跳蚤市场</option>\r\n<option value=\\''18\\'' >&nbsp;&nbsp;|-电脑配件</option>\r\n<option value=\\''19\\'' >&nbsp;&nbsp;|-电器数码</option>\r\n<option value=\\''20\\'' >&nbsp;&nbsp;|-通讯产品</option>\r\n<option value=\\''21\\'' >&nbsp;&nbsp;|-居家用品</option>\r\n<option value=\\''22\\''>|-同城生活</option>\r\n<option value=\\''23\\'' >&nbsp;&nbsp;|-本地新闻</option>\r\n<option value=\\''24\\'' >&nbsp;&nbsp;|-购物打折</option>\r\n<option value=\\''25\\'' >&nbsp;&nbsp;|-旅游活动</option>\r\n<option value=\\''26\\'' >&nbsp;&nbsp;|-便民告示</option>\r\n<option value=\\''27\\''>|-求职招聘</option>\r\n<option value=\\''28\\'' >&nbsp;&nbsp;|-工程技术</option>\r\n<option value=\\''29\\'' >&nbsp;&nbsp;|-财务会计</option>\r\n<option value=\\''30\\'' >&nbsp;&nbsp;|-餐饮行业</option>\r\n<option value=\\''31\\'' >&nbsp;&nbsp;|-经营管理</option>\r\n</select>\r\n<input name=\\"Submit2\\" type=\\"image\\" value=\\"搜索\\" src=\\"[!--news.url--]skin/default/images/search.gif\\" />　\r\n[<a href=\\"[!--news.url--]e/DoInfo/ChangeClass.php?mid=8\\" target=\\"_blank\\">发布信息</a>]</td>\r\n</tr>\r\n</table>\r\n</form></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>地区导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--temp.infoarea--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>分类导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--temp.infoclassnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsclasstempclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewsclasstempclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsdiggips`
--

CREATE TABLE IF NOT EXISTS `phome_enewsdiggips` (
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `ips` mediumtext NOT NULL,
  KEY `classid` (`classid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsdo`
--

CREATE TABLE IF NOT EXISTS `phome_enewsdo` (
  `doid` smallint(6) NOT NULL AUTO_INCREMENT,
  `doname` varchar(60) NOT NULL DEFAULT '',
  `dotime` smallint(6) NOT NULL DEFAULT '0',
  `isopen` tinyint(1) NOT NULL DEFAULT '0',
  `doing` tinyint(4) NOT NULL DEFAULT '0',
  `classid` text NOT NULL,
  `lasttime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`doid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `phome_enewsdo`
--

INSERT INTO `phome_enewsdo` (`doid`, `doname`, `dotime`, `isopen`, `doing`, `classid`, `lasttime`) VALUES
(1, '自动刷新首页', 12, 0, 0, ',', 1273215883);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsdolog`
--

CREATE TABLE IF NOT EXISTS `phome_enewsdolog` (
  `logid` bigint(20) NOT NULL AUTO_INCREMENT,
  `logip` varchar(20) NOT NULL DEFAULT '',
  `logtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) NOT NULL DEFAULT '',
  `enews` varchar(30) NOT NULL DEFAULT '',
  `doing` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`logid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=774 ;

--
-- 转存表中的数据 `phome_enewsdolog`
--

INSERT INTO `phome_enewsdolog` (`logid`, `logip`, `logtime`, `username`, `enews`, `doing`) VALUES
(1, '::1', '2012-09-28 10:45:44', 'admin', 'login', '---'),
(2, '::1', '2012-09-28 10:51:23', 'admin', 'EditClass', 'classid=36<br>classname=娱乐新闻'),
(3, '::1', '2012-09-28 10:51:56', 'admin', 'EditClass', 'classid=4<br>classname=影视频道'),
(4, '::1', '2012-09-28 10:54:54', 'admin', 'ReIndex', '---'),
(5, '::1', '2012-09-28 11:03:36', 'admin', 'AddInfoToReHtml', 'classid=34<br>do=6'),
(6, '::1', '2012-09-28 11:06:10', 'admin', 'ReIndex', '---'),
(7, '::1', '2012-09-28 11:06:23', 'admin', 'ReAllNewsJs', '---'),
(8, '::1', '2012-09-28 14:26:46', 'admin', 'login', '---'),
(9, '::1', '2012-09-28 14:28:53', 'admin', 'AddInfoToReHtml', 'classid=34<br>do=6'),
(10, '::1', '2012-09-28 14:37:48', 'admin', 'DelNews_all', 'classid=35<br>classname=国际新闻'),
(11, '::1', '2012-09-28 14:38:00', 'admin', 'DelNews_all', 'classid=35<br>classname=国际新闻'),
(12, '::1', '2012-09-28 14:38:29', 'admin', 'ReIndex', '---'),
(13, '::1', '2012-09-28 14:39:22', 'admin', 'DelClass', 'classid=4<br>classname=影视频道'),
(14, '::1', '2012-09-28 14:39:38', 'admin', 'DelClass', 'classid=6<br>classname=FLASH频道'),
(15, '::1', '2012-09-28 14:41:58', 'admin', 'AddClass', 'classid=58<br>classname=公司简介'),
(16, '::1', '2012-09-28 14:42:44', 'admin', 'ReListHtmlMore', '---'),
(17, '::1', '2012-09-28 14:42:59', 'admin', 'ReIndex', '---'),
(18, '::1', '2012-09-28 14:43:52', 'admin', 'DelClass', 'classid=2<br>classname=新闻中心'),
(19, '::1', '2012-09-28 14:44:03', 'admin', 'DelClass', 'classid=3<br>classname=下载中心'),
(20, '::1', '2012-09-28 14:44:16', 'admin', 'DelClass', 'classid=5<br>classname=网上商城'),
(21, '::1', '2012-09-28 14:44:28', 'admin', 'DelClass', 'classid=9<br>classname=分类信息'),
(22, '::1', '2012-09-28 14:44:48', 'admin', 'ReIndex', '---'),
(23, '::1', '2012-09-28 14:48:04', 'admin', 'AddClass', 'classid=59<br>classname=关于我们'),
(24, '::1', '2012-09-28 14:48:56', 'admin', 'ReIndex', '---'),
(25, '::1', '2012-09-28 14:50:07', 'admin', 'ReAllNewsJs', '---'),
(26, '::1', '2012-09-28 14:53:49', 'admin', 'DelClass', 'classid=58<br>classname=公司简介'),
(27, '::1', '2012-09-28 14:55:24', 'admin', 'AddClass', 'classid=60<br>classname=行业动态'),
(28, '::1', '2012-09-28 14:58:54', 'admin', 'AddClass', 'classid=61<br>classname=最新动态'),
(29, '::1', '2012-09-28 14:59:04', 'admin', 'ReIndex', '---'),
(30, '::1', '2012-09-28 15:00:27', 'admin', 'AddNews', 'classid=61<br>id=79<br>title=湖北发布“营改增”试点实施方案'),
(31, '::1', '2012-09-28 15:00:41', 'admin', 'AddInfoToReHtml', 'classid=61<br>do=6'),
(32, '::1', '2012-09-28 15:22:07', 'admin', 'DelClass', 'classid=8<br>classname=文章中心'),
(33, '::1', '2012-09-28 15:56:39', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(34, '::1', '2012-09-28 15:57:30', 'admin', 'ReListHtml_all', '---'),
(35, '::1', '2012-09-28 15:57:36', 'admin', 'ReIndex', '---'),
(36, '::1', '2012-09-28 16:01:19', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(37, '::1', '2012-09-28 16:01:34', 'admin', 'ReIndex', '---'),
(38, '::1', '2012-09-28 16:02:24', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(39, '::1', '2012-09-28 16:02:41', 'admin', 'ReIndex', '---'),
(40, '::1', '2012-09-28 16:04:18', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(41, '::1', '2012-09-28 16:04:27', 'admin', 'ReIndex', '---'),
(42, '::1', '2012-09-28 16:04:58', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(43, '::1', '2012-09-28 16:05:11', 'admin', 'ReIndex', '---'),
(44, '::1', '2012-09-28 16:11:35', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(45, '::1', '2012-09-28 16:11:49', 'admin', 'ReIndex', '---'),
(46, '::1', '2012-09-28 16:24:03', 'admin', 'ReIndex', '---'),
(47, '::1', '2012-09-28 16:28:13', 'admin', 'ReIndex', '---'),
(48, '::1', '2012-09-28 16:38:24', 'admin', 'ReIndex', '---'),
(49, '::1', '2012-09-28 16:49:51', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(50, '::1', '2012-09-28 16:50:05', 'admin', 'ReIndex', '---'),
(51, '::1', '2012-09-28 17:15:44', 'admin', 'ReIndex', '---'),
(52, '::1', '2012-09-28 17:17:54', 'admin', 'ReIndex', '---'),
(53, '::1', '2012-09-28 20:53:52', 'admin', 'login', '---'),
(54, '::1', '2012-10-08 14:20:34', 'admin', 'login', '---'),
(55, '::1', '2012-10-08 14:35:43', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(56, '::1', '2012-10-08 14:36:32', 'admin', 'ReIndex', '---'),
(57, '::1', '2012-10-08 14:38:50', 'admin', 'ReIndex', '---'),
(58, '::1', '2012-10-08 14:48:26', 'admin', 'DelClass', 'classid=7<br>classname=图片频道'),
(59, '::1', '2012-10-08 14:50:18', 'admin', 'EditTempvar', 'varid=2<br>var=footer&gid=1'),
(60, '::1', '2012-10-08 14:50:29', 'admin', 'ReIndex', '---'),
(61, '::1', '2012-10-08 14:58:18', 'admin', 'EditPublicTemp', 'gid=1'),
(62, '::1', '2012-10-08 14:58:31', 'admin', 'ReIndex', '---'),
(63, '::1', '2012-10-08 14:58:44', 'admin', 'ReIndex', '---'),
(64, '::1', '2012-10-08 15:03:30', 'admin', 'EditPublicTemp', 'gid=1'),
(65, '::1', '2012-10-08 15:03:51', 'admin', 'ReIndex', '---'),
(66, '::1', '2012-10-08 15:11:55', 'admin', 'ReIndex', '---'),
(67, '::1', '2012-10-08 15:14:00', 'admin', 'EditClass', 'classid=60<br>classname=公司简介'),
(68, '::1', '2012-10-08 15:17:46', 'admin', 'DelClass', 'classid=61<br>classname=最新动态'),
(69, '::1', '2012-10-08 15:20:23', 'admin', 'AddClass', 'classid=62<br>classname=业务介绍'),
(70, '::1', '2012-10-08 15:20:58', 'admin', 'AddClass', 'classid=63<br>classname=培训专题'),
(71, '::1', '2012-10-08 15:21:22', 'admin', 'ReIndex', '---'),
(72, '::1', '2012-10-08 15:26:42', 'admin', 'ReIndex', '---'),
(73, '::1', '2012-10-08 15:46:35', 'admin', 'DelClass', 'classid=60<br>classname=公司简介'),
(74, '::1', '2012-10-08 15:48:09', 'admin', 'AddClass', 'classid=64<br>classname=公司简介'),
(75, '::1', '2012-10-08 15:48:31', 'admin', 'EditClassOrder', '---'),
(76, '::1', '2012-10-08 15:48:40', 'admin', 'ReIndex', '---'),
(77, '::1', '2012-10-08 16:09:48', 'admin', 'ReIndex', '---'),
(78, '::1', '2012-10-08 16:12:57', 'admin', 'ReIndex', '---'),
(79, '::1', '2012-10-08 16:13:18', 'admin', 'ReAllNewsJs', '---'),
(80, '::1', '2012-10-08 16:14:57', 'admin', 'AddNews', 'classid=64<br>id=80<br>title=公司简介'),
(81, '::1', '2012-10-08 16:15:19', 'admin', 'ReIndex', '---'),
(82, '::1', '2012-10-08 16:38:32', 'admin', 'DelNews_all', 'classid=64<br>classname=公司简介'),
(83, '::1', '2012-10-08 16:39:36', 'admin', 'ChangeClassIslast', 'classid=64<br>classname=公司简介'),
(84, '::1', '2012-10-08 16:44:19', 'admin', 'EditPublicTemp', 'gid=1'),
(85, '::1', '2012-10-08 16:44:27', 'admin', 'ReIndex', '---'),
(86, '::1', '2012-10-08 16:53:22', 'admin', 'EditPublicTemp', 'gid=1'),
(87, '::1', '2012-10-08 16:53:33', 'admin', 'ReIndex', '---'),
(88, '::1', '2012-10-08 16:54:30', 'admin', 'EditPublicTemp', 'gid=1'),
(89, '::1', '2012-10-08 16:54:44', 'admin', 'ReIndex', '---'),
(90, '::1', '2012-10-08 16:56:28', 'admin', 'login', '---'),
(91, '::1', '2012-10-08 16:56:47', 'admin', 'EditPublicTemp', 'gid=1'),
(92, '::1', '2012-10-08 16:56:56', 'admin', 'ReIndex', '---'),
(93, '::1', '2012-10-08 17:00:18', 'admin', 'EditPublicTemp', 'gid=1'),
(94, '::1', '2012-10-08 17:00:24', 'admin', 'ReIndex', '---'),
(95, '::1', '2012-10-08 17:06:57', 'admin', 'EditPublicTemp', 'gid=1'),
(96, '::1', '2012-10-08 17:07:02', 'admin', 'ReIndex', '---'),
(97, '::1', '2012-10-08 17:09:55', 'admin', 'ReIndex', '---'),
(98, '::1', '2012-10-08 17:11:19', 'admin', 'ReIndex', '---'),
(99, '::1', '2012-10-08 17:16:04', 'admin', 'ReIndex', '---'),
(100, '::1', '2012-10-08 17:24:25', 'admin', 'ReIndex', '---'),
(101, '::1', '2012-10-08 17:27:52', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(102, '::1', '2012-10-08 17:27:59', 'admin', 'ReIndex', '---'),
(103, '::1', '2012-10-08 17:28:53', 'admin', 'ChangeClassIslast', 'classid=64<br>classname=公司简介'),
(104, '::1', '2012-10-08 17:30:13', 'admin', 'AddNews', 'classid=64<br>id=81<br>title=公司简介'),
(105, '::1', '2012-10-08 17:30:25', 'admin', 'AddInfoToReHtml', 'classid=64<br>do=6'),
(106, '::1', '2012-10-08 17:31:31', 'admin', 'AddNews', 'classid=64<br>id=82<br>title=我们的理念'),
(107, '::1', '2012-10-08 17:32:41', 'admin', 'AddInfoToReHtml', 'classid=64<br>do=6'),
(108, '::1', '2012-10-08 17:33:34', 'admin', 'ChangeClassIslast', 'classid=62<br>classname=业务介绍'),
(109, '::1', '2012-10-08 17:34:04', 'admin', 'ReIndex', '---'),
(110, '::1', '2012-10-08 17:35:29', 'admin', 'AddNews', 'classid=62<br>id=83<br>title=我们的业务'),
(111, '::1', '2012-10-08 17:35:35', 'admin', 'AddInfoToReHtml', 'classid=62<br>do=6'),
(112, '::1', '2012-10-08 17:36:10', 'admin', 'AddInfoToReHtml', 'classid=62<br>do=6'),
(113, '::1', '2012-10-08 17:37:03', 'admin', 'EditNews', 'classid=62<br>id=83<br>title=我们的业务'),
(114, '::1', '2012-10-08 17:37:13', 'admin', 'ReIndex', '---'),
(115, '::1', '2012-10-08 17:38:45', 'admin', 'AddNews', 'classid=62<br>id=84<br>title=试一试业务介绍'),
(116, '::1', '2012-10-08 17:39:18', 'admin', 'AddInfoToReHtml', 'classid=62<br>do=6'),
(117, '::1', '2012-10-08 17:40:44', 'admin', 'EditClass', 'classid=62<br>classname=业务介绍'),
(118, '::1', '2012-10-08 17:42:01', 'admin', 'ReListHtml', '---'),
(119, '::1', '2012-10-08 17:43:55', 'admin', 'ReListHtml', '---'),
(120, '::1', '2012-10-08 17:45:17', 'admin', 'EditInfoSimple', 'classid=62<br>id=84<br>title=业务介绍2'),
(121, '::1', '2012-10-08 17:46:09', 'admin', 'EditInfoSimple', 'classid=62<br>id=83<br>title=我们的业务'),
(122, '::1', '2012-10-08 17:46:33', 'admin', 'EditInfoSimple', 'classid=62<br>id=83<br>title=我们的业务1'),
(123, '::1', '2012-10-08 17:52:38', 'admin', 'AddUserpage', 'id=1&title=introduce'),
(124, '::1', '2012-10-08 17:53:44', 'admin', 'EditUserpage', 'id=1&title=introduce'),
(125, '::1', '2012-10-08 17:54:13', 'admin', 'EditClass', 'classid=64<br>classname=公司简介'),
(126, '::1', '2012-10-08 17:54:26', 'admin', 'EditClass', 'classid=62<br>classname=业务介绍'),
(127, '::1', '2012-10-08 17:54:41', 'admin', 'EditClass', 'classid=63<br>classname=培训专题'),
(128, '::1', '2012-10-08 17:55:11', 'admin', 'EditClass', 'classid=64<br>classname=公司简介'),
(129, '::1', '2012-10-08 17:55:23', 'admin', 'EditClass', 'classid=62<br>classname=业务介绍'),
(130, '::1', '2012-10-08 17:55:34', 'admin', 'EditClass', 'classid=63<br>classname=培训专题'),
(131, '::1', '2012-10-08 17:55:58', 'admin', 'EditClass', 'classid=64<br>classname=公司简介'),
(132, '::1', '2012-10-08 17:56:14', 'admin', 'EditClass', 'classid=62<br>classname=业务介绍'),
(133, '::1', '2012-10-08 17:56:26', 'admin', 'EditClass', 'classid=63<br>classname=培训专题'),
(134, '::1', '2012-10-08 17:56:35', 'admin', 'ReIndex', '---'),
(135, '::1', '2012-10-08 17:57:20', 'admin', 'AddInfoToReHtml', 'classid=62<br>do=6'),
(136, '::1', '2012-10-08 18:02:30', 'admin', 'ReListHtmlMore', '---'),
(137, '::1', '2012-10-08 18:02:56', 'admin', 'ReHot_NewNews', '---'),
(138, '::1', '2012-10-08 18:12:46', 'admin', 'ReListHtml', '---'),
(139, '::1', '2012-10-08 18:16:11', 'admin', 'EditClass', 'classid=64<br>classname=公司简介'),
(140, '::1', '2012-10-08 18:16:19', 'admin', 'ReIndex', '---'),
(141, '::1', '2012-10-08 18:21:44', 'admin', 'EditUserpage', 'id=1&title=introduce'),
(142, '::1', '2012-10-08 18:21:56', 'admin', 'ReIndex', '---'),
(143, '::1', '2012-10-08 18:25:30', 'admin', 'EditUserpage', 'id=1&title=introduce'),
(144, '::1', '2012-10-08 18:25:35', 'admin', 'ReIndex', '---'),
(145, '::1', '2012-10-08 18:35:06', 'admin', 'EditUserpage', 'id=1&title=introduce'),
(146, '::1', '2012-10-08 18:35:11', 'admin', 'ReIndex', '---'),
(147, '::1', '2012-10-08 18:39:16', 'admin', 'ReIndex', '---'),
(148, '::1', '2012-10-08 18:41:10', 'admin', 'EditClass', 'classid=64<br>classname=公司简介'),
(149, '::1', '2012-10-08 18:41:53', 'admin', 'ReIndex', '---'),
(150, '::1', '2012-10-08 20:58:13', 'admin', 'login', '---'),
(151, '::1', '2012-10-08 20:59:12', 'admin', 'EditClass', 'classid=64<br>classname=关于我们'),
(152, '::1', '2012-10-08 20:59:27', 'admin', 'ReIndex', '---'),
(153, '::1', '2012-10-08 21:10:10', 'admin', 'EditUserpage', 'id=1&title=introduce'),
(154, '::1', '2012-10-08 21:11:13', 'admin', 'EditClass', 'classid=64<br>classname=关于我们'),
(155, '::1', '2012-10-08 21:11:19', 'admin', 'ReIndex', '---'),
(156, '::1', '2012-10-08 21:31:11', 'admin', 'EditClass', 'classid=63<br>classname=培训专题'),
(157, '::1', '2012-10-08 21:31:17', 'admin', 'ReIndex', '---'),
(158, '::1', '2012-10-08 21:33:11', 'admin', 'DelNews_all', 'classid=64<br>classname=关于我们'),
(159, '::1', '2012-10-08 21:33:26', 'admin', 'ChangeClassIslast', 'classid=64<br>classname=关于我们'),
(160, '::1', '2012-10-08 21:34:01', 'admin', 'EditClass', 'classid=64<br>classname=关于我们'),
(161, '::1', '2012-10-08 21:34:26', 'admin', 'EditClass', 'classid=63<br>classname=培训专题'),
(162, '::1', '2012-10-08 21:34:32', 'admin', 'ReIndex', '---'),
(163, '::1', '2012-10-09 18:58:05', 'admin', 'login', '---'),
(164, '::1', '2012-10-09 19:07:56', 'admin', 'EditUserpage', 'id=1&title=introduce'),
(165, '::1', '2012-10-09 19:08:41', 'admin', 'EditClass', 'classid=64<br>classname=关于我们'),
(166, '::1', '2012-10-09 19:09:12', 'admin', 'ReIndex', '---'),
(167, '::1', '2012-10-09 19:10:33', 'admin', 'login', '---'),
(168, '::1', '2012-10-09 19:11:41', 'admin', 'EditClass', 'classid=64<br>classname=关于我们'),
(169, '::1', '2012-10-09 19:11:47', 'admin', 'ReIndex', '---'),
(170, '::1', '2012-10-09 19:16:00', 'admin', 'EditUserpage', 'id=1&title=introduce'),
(171, '::1', '2012-10-09 19:16:20', 'admin', 'ReIndex', '---'),
(172, '::1', '2012-10-09 19:23:55', 'admin', 'EditUserpage', 'id=1&title=introduce'),
(173, '::1', '2012-10-09 19:25:57', 'admin', 'AddUserpage', 'id=2&title=公司理念'),
(174, '::1', '2012-10-09 19:26:44', 'admin', 'AddUserpage', 'id=3&title=联系我们'),
(175, '::1', '2012-10-09 19:27:23', 'admin', 'EditUserpage', 'id=1&title=公司简介'),
(176, '::1', '2012-10-09 19:27:45', 'admin', 'ReIndex', '---'),
(177, '::1', '2012-10-09 19:30:29', 'admin', 'EditUserpage', 'id=2&title=公司理念'),
(178, '::1', '2012-10-09 19:30:49', 'admin', 'EditUserpage', 'id=3&title=联系我们'),
(179, '::1', '2012-10-09 19:30:55', 'admin', 'ReIndex', '---'),
(180, '::1', '2012-10-09 20:33:33', 'admin', 'EditUserpage', 'id=1&title=公司简介'),
(181, '::1', '2012-10-09 20:33:47', 'admin', 'ReIndex', '---'),
(182, '::1', '2012-10-09 20:35:39', 'admin', 'ReIndex', '---'),
(183, '::1', '2012-10-09 20:38:29', 'admin', 'EditClass', 'classid=64<br>classname=关于我们'),
(184, '::1', '2012-10-09 20:38:54', 'admin', 'ReIndex', '---'),
(185, '::1', '2012-10-09 20:41:52', 'admin', 'ReIndex', '---'),
(186, '::1', '2012-10-09 20:46:37', 'admin', 'ReIndex', '---'),
(187, '::1', '2012-10-09 20:46:53', 'admin', 'ReIndex', '---'),
(188, '::1', '2012-10-09 20:55:39', 'admin', 'ReIndex', '---'),
(189, '::1', '2012-10-09 20:56:56', 'admin', 'ReListHtml_all', '---'),
(190, '::1', '2012-10-09 20:57:35', 'admin', 'ReIndex', '---'),
(191, '::1', '2012-10-09 20:57:46', 'admin', 'ReListHtml_all', '---'),
(192, '::1', '2012-10-09 20:58:56', 'admin', 'EditUserpage', 'id=1&title=公司简介'),
(193, '::1', '2012-10-09 20:59:05', 'admin', 'ReIndex', '---'),
(194, '::1', '2012-10-09 20:59:17', 'admin', 'ReListHtml_all', '---'),
(195, '::1', '2012-10-09 22:30:49', 'admin', 'login', '---'),
(196, '::1', '2012-10-09 22:31:46', 'admin', 'EditUserpage', 'id=2&title=公司理念'),
(197, '::1', '2012-10-09 22:32:04', 'admin', 'EditUserpage', 'id=3&title=联系我们'),
(198, '::1', '2012-10-09 22:35:04', 'admin', 'EditUserpage', 'id=3&title=联系我们'),
(199, '::1', '2012-10-09 22:35:22', 'admin', 'ReIndex', '---'),
(200, '::1', '2012-10-09 22:57:09', 'admin', 'EditUserpage', 'id=3&title=联系我们'),
(201, '::1', '2012-10-09 22:57:34', 'admin', 'EditUserpage', 'id=2&title=公司理念'),
(202, '::1', '2012-10-09 22:57:57', 'admin', 'EditUserpage', 'id=1&title=公司简介'),
(203, '::1', '2012-10-09 22:58:43', 'admin', 'ReIndex', '---'),
(204, '::1', '2012-10-09 22:59:44', 'admin', 'EditUserpage', 'id=3&title=联系我们'),
(205, '::1', '2012-10-09 23:52:26', 'admin', 'EditUserpage', 'id=1&title=公司简介'),
(206, '::1', '2012-10-09 23:55:57', 'admin', 'EditUserpage', 'id=3&title=联系我们'),
(207, '::1', '2012-10-09 23:56:17', 'admin', 'EditUserpage', 'id=1&title=公司简介'),
(208, '::1', '2012-10-09 23:58:08', 'admin', 'EditUserpage', 'id=2&title=公司理念'),
(209, '::1', '2012-10-09 23:58:29', 'admin', 'ReIndex', '---'),
(210, '::1', '2012-10-10 00:06:40', 'admin', 'EditUserpage', 'id=1&title=公司简介'),
(211, '::1', '2012-10-10 00:07:00', 'admin', 'EditUserpage', 'id=2&title=公司理念'),
(212, '::1', '2012-10-10 00:07:19', 'admin', 'EditUserpage', 'id=3&title=联系我们'),
(213, '::1', '2012-10-10 00:07:31', 'admin', 'ReIndex', '---'),
(214, '::1', '2012-10-10 00:08:30', 'admin', 'EditUserpage', 'id=1&title=公司简介'),
(215, '::1', '2012-10-10 00:09:08', 'admin', 'EditUserpage', 'id=2&title=公司理念'),
(216, '::1', '2012-10-10 00:09:29', 'admin', 'EditUserpage', 'id=3&title=联系我们'),
(217, '::1', '2012-10-10 00:09:45', 'admin', 'ReIndex', '---'),
(218, '::1', '2012-10-10 00:29:50', 'admin', 'EditUserpage', 'id=1&title=公司简介'),
(219, '::1', '2012-10-10 00:30:10', 'admin', 'EditUserpage', 'id=2&title=公司理念'),
(220, '::1', '2012-10-10 00:30:27', 'admin', 'EditUserpage', 'id=3&title=联系我们'),
(221, '::1', '2012-10-10 00:30:35', 'admin', 'ReIndex', '---'),
(222, '::1', '2012-10-10 00:46:00', 'admin', 'EditClass', 'classid=64<br>classname=关于我们'),
(223, '::1', '2012-10-10 00:46:07', 'admin', 'ReIndex', '---'),
(224, '::1', '2012-10-10 00:49:13', 'admin', 'EditClass', 'classid=64<br>classname=公司简介'),
(225, '::1', '2012-10-10 00:49:19', 'admin', 'ReIndex', '---'),
(226, '::1', '2012-10-10 01:03:24', 'admin', 'ReIndex', '---'),
(227, '::1', '2012-10-10 01:05:00', 'admin', 'ReListHtml_all', '---'),
(228, '::1', '2012-10-10 01:25:09', 'admin', 'EditUserpage', 'id=1&title=公司简介'),
(229, '::1', '2012-10-10 01:25:22', 'admin', 'EditUserpage', 'id=2&title=公司理念'),
(230, '::1', '2012-10-10 01:25:35', 'admin', 'EditUserpage', 'id=3&title=联系我们'),
(231, '::1', '2012-10-10 01:25:47', 'admin', 'ReIndex', '---'),
(232, '::1', '2012-10-10 01:27:07', 'admin', 'EditUserpage', 'id=1&title=公司简介'),
(233, '::1', '2012-10-10 01:27:21', 'admin', 'EditUserpage', 'id=2&title=公司理念'),
(234, '::1', '2012-10-10 01:27:38', 'admin', 'EditUserpage', 'id=3&title=联系我们'),
(235, '::1', '2012-10-10 01:27:49', 'admin', 'ReIndex', '---'),
(236, '::1', '2012-10-10 14:12:24', 'admin', 'login', '---'),
(237, '::1', '2012-10-10 14:21:22', 'admin', 'EditClass', 'classid=64<br>classname=关于我们'),
(238, '::1', '2012-10-10 14:21:30', 'admin', 'ReIndex', '---'),
(239, '::1', '2012-10-10 14:21:54', 'admin', 'ReListHtml_all', '---'),
(240, '::1', '2012-10-10 15:11:59', 'admin', 'AddUserpage', 'id=4&title=专家团队'),
(241, '::1', '2012-10-10 15:12:19', 'admin', 'ReListHtml_all', '---'),
(242, '::1', '2012-10-10 15:12:24', 'admin', 'ReIndex', '---'),
(243, '::1', '2012-10-10 15:13:40', 'admin', 'EditUserpage', 'id=4&title=专家团队'),
(244, '::1', '2012-10-10 15:29:09', 'admin', 'ReIndex', '---'),
(245, '::1', '2012-10-10 15:29:18', 'admin', 'ReListHtml_all', '---'),
(246, '::1', '2012-10-10 15:29:21', 'admin', 'ReIndex', '---'),
(247, '::1', '2012-10-10 15:31:27', 'admin', 'EditUserpage', 'id=4&title=专家团队'),
(248, '::1', '2012-10-10 15:31:39', 'admin', 'ReListHtml_all', '---'),
(249, '::1', '2012-10-10 15:43:35', 'admin', 'EditUserpage', 'id=4&title=专家团队'),
(250, '::1', '2012-10-10 16:26:58', 'admin', 'ReListHtml', '---'),
(251, '::1', '2012-10-10 16:27:35', 'admin', 'DelNews_all', 'classid=62<br>classname=业务介绍'),
(252, '::1', '2012-10-10 16:27:46', 'admin', 'ChangeClassIslast', 'classid=62<br>classname=业务介绍'),
(253, '::1', '2012-10-10 16:31:36', 'admin', 'EditClass', 'classid=62<br>classname=业务介绍'),
(254, '::1', '2012-10-10 16:31:44', 'admin', 'ReListHtml', '---'),
(255, '::1', '2012-10-10 17:31:20', 'admin', 'DelUserpage', 'id=4&title=专家团队'),
(256, '::1', '2012-10-10 17:31:29', 'admin', 'DelUserpage', 'id=3&title=联系我们'),
(257, '::1', '2012-10-10 17:31:37', 'admin', 'DelUserpage', 'id=2&title=公司理念'),
(258, '::1', '2012-10-10 17:31:43', 'admin', 'DelUserpage', 'id=1&title=公司简介'),
(259, '::1', '2012-10-10 17:32:41', 'admin', 'ReListHtml_all', '---'),
(260, '::1', '2012-10-10 17:32:47', 'admin', 'ReIndex', '---'),
(261, '::1', '2012-10-10 17:39:29', 'admin', 'ReIndex', '---'),
(262, '::1', '2012-10-10 17:39:38', 'admin', 'ReListHtml_all', '---'),
(263, '::1', '2012-10-10 17:40:58', 'admin', 'ReListHtml_all', '---'),
(264, '::1', '2012-10-10 17:41:03', 'admin', 'ReIndex', '---'),
(265, '::1', '2012-10-10 17:51:13', 'admin', 'login', '---'),
(266, '::1', '2012-10-10 18:08:49', 'admin', 'ReIndex', '---'),
(267, '::1', '2012-10-10 18:16:46', 'admin', 'exit', '---'),
(268, '::1', '2012-10-10 18:16:51', 'admin', 'login', '---'),
(269, '::1', '2012-10-10 19:46:30', 'admin', 'login', '---'),
(270, '::1', '2012-10-10 19:49:49', 'admin', 'ReClassPath', '---'),
(271, '::1', '2012-10-10 19:50:05', 'admin', 'ReListHtml_all', '---'),
(272, '::1', '2012-10-10 19:50:24', 'admin', 'ReAllNewsJs', '---'),
(273, '::1', '2012-10-10 19:51:36', 'admin', 'AddClass', 'classid=65<br>classname=公司新闻'),
(274, '::1', '2012-10-10 19:53:12', 'admin', 'ReIndex', '---'),
(275, '::1', '2012-10-10 19:53:59', 'admin', 'EditClassOrder', '---'),
(276, '::1', '2012-10-10 19:54:09', 'admin', 'ChangeClassIslast', 'classid=65<br>classname=公司新闻'),
(277, '::1', '2012-10-10 19:55:32', 'admin', 'AddNews', 'classid=65<br>id=85<br>title=“营改增”税收政策及实务研讨班邀请函'),
(278, '::1', '2012-10-10 19:55:38', 'admin', 'AddInfoToReHtml', 'classid=65<br>do=6'),
(279, '::1', '2012-10-10 19:58:21', 'admin', 'EditPublicTemp', 'gid=1'),
(280, '::1', '2012-10-10 20:00:34', 'admin', 'EditPublicTemp', 'gid=1'),
(281, '::1', '2012-10-10 20:00:58', 'admin', 'ReListHtml_all', '---'),
(282, '::1', '2012-10-10 20:01:01', 'admin', 'ReIndex', '---'),
(283, '::1', '2012-10-10 20:01:10', 'admin', 'ReListHtml_all', '---'),
(284, '::1', '2012-10-10 20:08:01', 'admin', 'EditPublicTemp', 'gid=1'),
(285, '::1', '2012-10-10 20:08:14', 'admin', 'ReIndex', '---'),
(286, '::1', '2012-10-10 20:08:35', 'admin', 'EditPublicTemp', 'gid=1'),
(287, '::1', '2012-10-10 20:09:11', 'admin', 'ReIndex', '---'),
(288, '::1', '2012-10-10 20:09:29', 'admin', 'ReListHtml_all', '---'),
(289, '::1', '2012-10-10 20:18:41', 'admin', 'AddNews', 'classid=65<br>id=86<br>title=近期即将开展的培训活动公告'),
(290, '::1', '2012-10-10 20:19:37', 'admin', 'AddNews', 'classid=65<br>id=87<br>title=注册税务师职业前景及报考策略分析'),
(291, '::1', '2012-10-10 20:20:35', 'admin', 'ReListHtml_all', '---'),
(292, '::1', '2012-10-10 20:20:39', 'admin', 'ReIndex', '---'),
(293, '::1', '2012-10-10 20:20:54', 'admin', 'ReAllNewsJs', '---'),
(294, '::1', '2012-10-10 22:13:39', 'admin', 'login', '---'),
(295, '::1', '2012-10-10 22:16:32', 'admin', 'AddNews', 'classid=65<br>id=88<br>title=明年交通行业营改增最可能全国推行'),
(296, '::1', '2012-10-10 22:17:05', 'admin', 'AddNews', 'classid=65<br>id=89<br>title=湖北省地税局证实房产税征收方案正在制定'),
(297, '::1', '2012-10-10 22:17:36', 'admin', 'AddNews', 'classid=65<br>id=90<br>title=两湖试点房产税未获证实 存量二套房征税存争议'),
(298, '::1', '2012-10-10 22:18:06', 'admin', 'AddNews', 'classid=65<br>id=91<br>title=海南省电费普通发票开具纳入普通发票网络开票系统'),
(299, '::1', '2012-10-10 22:18:40', 'admin', 'AddNews', 'classid=65<br>id=92<br>title=财政部、税务总局明令绝不收“过头税”'),
(300, '::1', '2012-10-10 22:19:08', 'admin', 'ReListHtml_all', '---'),
(301, '::1', '2012-10-10 22:19:12', 'admin', 'ReIndex', '---'),
(302, '::1', '2012-10-10 22:20:08', 'admin', 'AddNews', 'classid=65<br>id=93<br>title=不具高新资格 贝因美需补税2785万'),
(303, '::1', '2012-10-10 22:20:33', 'admin', 'AddNews', 'classid=65<br>id=94<br>title=营改增扩围三难题待解税率仍有下调空间'),
(304, '::1', '2012-10-10 22:20:40', 'admin', 'AddInfoToReHtml', 'classid=65<br>do=6'),
(305, '::1', '2012-10-10 22:26:49', 'admin', 'EditPublicTemp', 'gid=1'),
(306, '::1', '2012-10-10 22:26:52', 'admin', 'ReIndex', '---'),
(307, '::1', '2012-10-10 22:31:10', 'admin', 'ReIndex', '---'),
(308, '::1', '2012-10-10 22:32:07', 'admin', 'ReListHtml_all', '---'),
(309, '::1', '2012-10-10 22:32:10', 'admin', 'ReIndex', '---'),
(310, '::1', '2012-10-10 22:32:32', 'admin', 'EditPublicTemp', 'gid=1'),
(311, '::1', '2012-10-10 22:32:39', 'admin', 'ReIndex', '---'),
(312, '::1', '2012-10-10 22:33:58', 'admin', 'ReIndex', '---'),
(313, '::1', '2012-10-10 22:37:15', 'admin', 'EditPublicTemp', 'gid=1'),
(314, '::1', '2012-10-10 22:37:18', 'admin', 'ReIndex', '---'),
(315, '::1', '2012-10-10 22:37:47', 'admin', 'EditPublicTemp', 'gid=1'),
(316, '::1', '2012-10-10 22:37:50', 'admin', 'ReIndex', '---'),
(317, '::1', '2012-10-10 22:43:23', 'admin', 'EditPublicTemp', 'gid=1'),
(318, '::1', '2012-10-10 22:45:33', 'admin', 'EditPublicTemp', 'gid=1'),
(319, '::1', '2012-10-10 22:48:34', 'admin', 'EditPublicTemp', 'gid=1'),
(320, '::1', '2012-10-10 22:48:41', 'admin', 'ReIndex', '---'),
(321, '::1', '2012-10-10 22:50:17', 'admin', 'EditPublicTemp', 'gid=1'),
(322, '::1', '2012-10-10 22:51:07', 'admin', 'EditPublicTemp', 'gid=1'),
(323, '::1', '2012-10-10 22:51:10', 'admin', 'ReIndex', '---'),
(324, '::1', '2012-10-10 22:51:36', 'admin', 'EditPublicTemp', 'gid=1'),
(325, '::1', '2012-10-10 22:51:40', 'admin', 'ReIndex', '---'),
(326, '::1', '2012-10-10 22:53:27', 'admin', 'EditPublicTemp', 'gid=1'),
(327, '::1', '2012-10-10 22:53:30', 'admin', 'ReIndex', '---'),
(328, '::1', '2012-10-10 22:56:49', 'admin', 'EditPublicTemp', 'gid=1'),
(329, '::1', '2012-10-10 22:56:52', 'admin', 'ReIndex', '---'),
(330, '::1', '2012-10-10 22:59:48', 'admin', 'EditPublicTemp', 'gid=1'),
(331, '::1', '2012-10-10 23:02:46', 'admin', 'EditPublicTemp', 'gid=1'),
(332, '::1', '2012-10-10 23:03:39', 'admin', 'EditPublicTemp', 'gid=1'),
(333, '::1', '2012-10-10 23:06:35', 'admin', 'EditPublicTemp', 'gid=1'),
(334, '::1', '2012-10-10 23:06:38', 'admin', 'ReIndex', '---'),
(335, '::1', '2012-10-10 23:08:38', 'admin', 'EditPublicTemp', 'gid=1'),
(336, '::1', '2012-10-10 23:09:18', 'admin', 'ReIndex', '---'),
(337, '::1', '2012-10-10 23:09:58', 'admin', 'EditPublicTemp', 'gid=1'),
(338, '::1', '2012-10-10 23:10:04', 'admin', 'ReIndex', '---'),
(339, '::1', '2012-10-10 23:10:50', 'admin', 'EditPublicTemp', 'gid=1'),
(340, '::1', '2012-10-10 23:10:58', 'admin', 'ReIndex', '---'),
(341, '::1', '2012-10-10 23:12:02', 'admin', 'EditPublicTemp', 'gid=1'),
(342, '::1', '2012-10-10 23:12:09', 'admin', 'ReIndex', '---'),
(343, '::1', '2012-10-10 23:13:10', 'admin', 'EditPublicTemp', 'gid=1'),
(344, '::1', '2012-10-10 23:13:18', 'admin', 'ReIndex', '---'),
(345, '::1', '2012-10-10 23:14:32', 'admin', 'EditPublicTemp', 'gid=1'),
(346, '::1', '2012-10-10 23:14:36', 'admin', 'ReIndex', '---'),
(347, '::1', '2012-10-10 23:16:16', 'admin', 'EditPublicTemp', 'gid=1'),
(348, '::1', '2012-10-10 23:16:52', 'admin', 'EditPublicTemp', 'gid=1'),
(349, '::1', '2012-10-10 23:16:55', 'admin', 'ReIndex', '---'),
(350, '::1', '2012-10-10 23:17:53', 'admin', 'EditPublicTemp', 'gid=1'),
(351, '::1', '2012-10-10 23:18:05', 'admin', 'ReIndex', '---'),
(352, '::1', '2012-10-10 23:19:24', 'admin', 'EditPublicTemp', 'gid=1'),
(353, '::1', '2012-10-10 23:19:41', 'admin', 'ReIndex', '---'),
(354, '::1', '2012-10-10 23:20:24', 'admin', 'EditPublicTemp', 'gid=1'),
(355, '::1', '2012-10-10 23:20:27', 'admin', 'ReIndex', '---'),
(356, '::1', '2012-10-10 23:21:23', 'admin', 'EditPublicTemp', 'gid=1'),
(357, '::1', '2012-10-10 23:21:27', 'admin', 'ReIndex', '---'),
(358, '::1', '2012-10-10 23:23:29', 'admin', 'EditPublicTemp', 'gid=1'),
(359, '::1', '2012-10-10 23:23:52', 'admin', 'EditPublicTemp', 'gid=1'),
(360, '::1', '2012-10-10 23:23:54', 'admin', 'ReIndex', '---'),
(361, '::1', '2012-10-10 23:25:48', 'admin', 'EditPublicTemp', 'gid=1'),
(362, '::1', '2012-10-10 23:25:54', 'admin', 'ReIndex', '---'),
(363, '::1', '2012-10-10 23:27:02', 'admin', 'EditPublicTemp', 'gid=1'),
(364, '::1', '2012-10-10 23:27:10', 'admin', 'ReIndex', '---'),
(365, '::1', '2012-10-10 23:27:48', 'admin', 'EditPublicTemp', 'gid=1'),
(366, '::1', '2012-10-10 23:28:00', 'admin', 'ReIndex', '---'),
(367, '::1', '2012-10-10 23:33:33', 'admin', 'EditPublicTemp', 'gid=1'),
(368, '::1', '2012-10-10 23:33:36', 'admin', 'ReIndex', '---'),
(369, '::1', '2012-10-10 23:42:53', 'admin', 'EditPublicTemp', 'gid=1'),
(370, '::1', '2012-10-10 23:42:58', 'admin', 'ReIndex', '---'),
(371, '::1', '2012-10-10 23:43:29', 'admin', 'EditPublicTemp', 'gid=1'),
(372, '::1', '2012-10-10 23:43:48', 'admin', 'EditPublicTemp', 'gid=1'),
(373, '::1', '2012-10-10 23:43:51', 'admin', 'ReIndex', '---'),
(374, '::1', '2012-10-10 23:46:04', 'admin', 'EditPublicTemp', 'gid=1'),
(375, '::1', '2012-10-10 23:47:54', 'admin', 'EditPublicTemp', 'gid=1'),
(376, '::1', '2012-10-10 23:47:59', 'admin', 'ReIndex', '---'),
(377, '::1', '2012-10-10 23:49:47', 'admin', 'EditPublicTemp', 'gid=1'),
(378, '::1', '2012-10-10 23:49:51', 'admin', 'ReIndex', '---'),
(379, '::1', '2012-10-10 23:56:57', 'admin', 'EditTempvar', 'varid=2<br>var=footer&gid=1'),
(380, '::1', '2012-10-10 23:57:06', 'admin', 'ReIndex', '---'),
(381, '::1', '2012-10-11 00:00:25', 'admin', 'EditTempvar', 'varid=2<br>var=footer&gid=1'),
(382, '::1', '2012-10-11 00:00:30', 'admin', 'ReIndex', '---'),
(383, '::1', '2012-10-11 00:03:54', 'admin', 'ReIndex', '---'),
(384, '::1', '2012-10-11 00:03:58', 'admin', 'ReListHtml_all', '---'),
(385, '::1', '2012-10-11 10:37:39', 'admin', 'login', '---'),
(386, '::1', '2012-10-11 10:45:12', 'admin', 'AddClass', 'classid=66<br>classname=图片新闻'),
(387, '::1', '2012-10-11 10:49:52', 'admin', 'AddNews', 'classid=66<br>id=95<br>title=建筑业“营改增”税负将大增'),
(388, '::1', '2012-10-11 10:50:51', 'admin', 'AddNews', 'classid=66<br>id=96<br>title=营改增应对要点'),
(389, '::1', '2012-10-11 10:51:00', 'admin', 'AddInfoToReHtml', 'classid=66<br>do=6'),
(390, '::1', '2012-10-11 10:52:36', 'admin', 'EditPublicTemp', 'gid=1'),
(391, '::1', '2012-10-11 10:52:43', 'admin', 'ReIndex', '---'),
(392, '::1', '2012-10-11 10:52:51', 'admin', 'ReListHtml_all', '---'),
(393, '::1', '2012-10-11 10:56:41', 'admin', 'AddNews', 'classid=66<br>id=97<br>title=深圳“营改增”细则公布'),
(394, '::1', '2012-10-11 10:57:03', 'admin', 'ReListHtml_all', '---'),
(395, '::1', '2012-10-11 10:57:06', 'admin', 'ReIndex', '---'),
(396, '::1', '2012-10-11 10:59:10', 'admin', 'EditPublicTemp', 'gid=1'),
(397, '::1', '2012-10-11 10:59:27', 'admin', 'ReIndex', '---'),
(398, '::1', '2012-10-11 11:01:40', 'admin', 'AddZt', 'ztid=1<br>ztname=培训专题'),
(399, '::1', '2012-10-11 11:18:54', 'admin', 'EditNews', 'classid=66<br>id=95<br>title=建筑业“营改增”税负将大增'),
(400, '::1', '2012-10-11 11:19:00', 'admin', 'ReIndex', '---'),
(401, '::1', '2012-10-11 11:47:33', 'admin', 'EditZt', 'ztid=1<br>ztname=培训专题'),
(402, '::1', '2012-10-11 11:47:39', 'admin', 'ReIndex', '---'),
(403, '::1', '2012-10-11 11:47:49', 'admin', 'ReIndex', '---'),
(404, '::1', '2012-10-11 11:48:19', 'admin', 'EditZt', 'ztid=1<br>ztname=培训专题'),
(405, '::1', '2012-10-11 11:49:15', 'admin', 'TogZt', 'ztid=1&ztname=培训专题'),
(406, '::1', '2012-10-11 11:50:34', 'admin', 'ReZtHtml', '---'),
(407, '::1', '2012-10-11 11:50:44', 'admin', 'ReListHtml_all', '---'),
(408, '::1', '2012-10-11 11:50:56', 'admin', 'ReIndex', '---'),
(409, '::1', '2012-10-11 14:19:41', 'admin', 'DelZt', 'ztid=1<br>ztname=培训专题'),
(410, '::1', '2012-10-11 14:20:29', 'admin', 'ChangeClassIslast', 'classid=63<br>classname=培训专题'),
(411, '::1', '2012-10-11 14:22:17', 'admin', 'EditClass', 'classid=63<br>classname=培训专题'),
(412, '::1', '2012-10-11 14:23:13', 'admin', 'AddNews', 'classid=63<br>id=98<br>title=“营改增”税收政策及实务研讨班邀请函'),
(413, '::1', '2012-10-11 14:23:58', 'admin', 'AddNews', 'classid=63<br>id=99<br>title=注册税务师职业前景及报考策略分析'),
(414, '::1', '2012-10-11 14:24:07', 'admin', 'ReListHtml_all', '---'),
(415, '::1', '2012-10-11 14:24:26', 'admin', 'ReIndex', '---'),
(416, '::1', '2012-10-11 14:26:31', 'admin', 'EditPublicTemp', 'gid=1'),
(417, '::1', '2012-10-11 14:26:35', 'admin', 'ReIndex', '---'),
(418, '::1', '2012-10-11 14:27:22', 'admin', 'EditPublicTemp', 'gid=1'),
(419, '::1', '2012-10-11 14:27:24', 'admin', 'ReIndex', '---'),
(420, '::1', '2012-10-11 14:28:11', 'admin', 'EditPublicTemp', 'gid=1'),
(421, '::1', '2012-10-11 14:28:15', 'admin', 'ReIndex', '---'),
(422, '::1', '2012-10-11 14:28:48', 'admin', 'EditPublicTemp', 'gid=1'),
(423, '::1', '2012-10-11 14:28:50', 'admin', 'ReIndex', '---'),
(424, '::1', '2012-10-11 14:35:22', 'admin', 'EditPublicTemp', 'gid=1'),
(425, '::1', '2012-10-11 14:35:27', 'admin', 'ReIndex', '---'),
(426, '::1', '2012-10-11 14:37:35', 'admin', 'EditPublicTemp', 'gid=1'),
(427, '::1', '2012-10-11 14:37:44', 'admin', 'ReIndex', '---'),
(428, '::1', '2012-10-11 14:42:39', 'admin', 'EditPublicTemp', 'gid=1'),
(429, '::1', '2012-10-11 14:42:44', 'admin', 'ReIndex', '---'),
(430, '::1', '2012-10-11 14:51:45', 'admin', 'EditPublicTemp', 'gid=1'),
(431, '::1', '2012-10-11 14:51:50', 'admin', 'ReIndex', '---'),
(432, '::1', '2012-10-11 14:52:08', 'admin', 'EditPublicTemp', 'gid=1'),
(433, '::1', '2012-10-11 14:52:11', 'admin', 'ReIndex', '---'),
(434, '::1', '2012-10-11 14:55:55', 'admin', 'EditPublicTemp', 'gid=1'),
(435, '::1', '2012-10-11 14:55:58', 'admin', 'ReIndex', '---'),
(436, '::1', '2012-10-11 15:00:14', 'admin', 'EditPublicTemp', 'gid=1'),
(437, '::1', '2012-10-11 15:00:16', 'admin', 'ReIndex', '---'),
(438, '::1', '2012-10-11 15:09:19', 'admin', 'EditPublicTemp', 'gid=1'),
(439, '::1', '2012-10-11 15:09:51', 'admin', 'EditPublicTemp', 'gid=1'),
(440, '::1', '2012-10-11 15:09:54', 'admin', 'ReIndex', '---'),
(441, '::1', '2012-10-11 15:12:30', 'admin', 'EditPublicTemp', 'gid=1'),
(442, '::1', '2012-10-11 15:12:33', 'admin', 'ReIndex', '---'),
(443, '::1', '2012-10-11 15:12:59', 'admin', 'EditPublicTemp', 'gid=1'),
(444, '::1', '2012-10-11 15:13:02', 'admin', 'ReIndex', '---'),
(445, '::1', '2012-10-11 15:15:09', 'admin', 'EditPublicTemp', 'gid=1'),
(446, '::1', '2012-10-11 15:15:12', 'admin', 'ReIndex', '---'),
(447, '::1', '2012-10-11 15:19:12', 'admin', 'EditPublicTemp', 'gid=1'),
(448, '::1', '2012-10-11 15:19:16', 'admin', 'ReIndex', '---'),
(449, '::1', '2012-10-11 15:25:44', 'admin', 'EditPublicTemp', 'gid=1'),
(450, '::1', '2012-10-11 15:25:46', 'admin', 'ReIndex', '---'),
(451, '::1', '2012-10-11 15:42:08', 'admin', 'EditPublicTemp', 'gid=1'),
(452, '::1', '2012-10-11 15:42:11', 'admin', 'ReIndex', '---'),
(453, '::1', '2012-10-11 15:42:50', 'admin', 'EditPublicTemp', 'gid=1'),
(454, '::1', '2012-10-11 15:42:54', 'admin', 'ReIndex', '---'),
(455, '::1', '2012-10-11 15:50:42', 'admin', 'EditPublicTemp', 'gid=1'),
(456, '::1', '2012-10-11 15:55:01', 'admin', 'EditPublicTemp', 'gid=1'),
(457, '::1', '2012-10-11 15:55:04', 'admin', 'ReIndex', '---'),
(458, '::1', '2012-10-11 15:56:57', 'admin', 'EditPublicTemp', 'gid=1'),
(459, '::1', '2012-10-11 15:58:06', 'admin', 'EditPublicTemp', 'gid=1'),
(460, '::1', '2012-10-11 16:34:32', 'admin', 'EditPublicTemp', 'gid=1'),
(461, '::1', '2012-10-11 16:34:34', 'admin', 'ReIndex', '---'),
(462, '::1', '2012-10-11 16:49:29', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(463, '::1', '2012-10-11 16:49:32', 'admin', 'ReIndex', '---'),
(464, '::1', '2012-10-11 17:11:48', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(465, '::1', '2012-10-11 17:12:03', 'admin', 'ReIndex', '---'),
(466, '::1', '2012-10-11 17:14:12', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(467, '::1', '2012-10-11 17:17:34', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(468, '::1', '2012-10-11 17:17:39', 'admin', 'ReIndex', '---'),
(469, '::1', '2012-10-11 17:21:03', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(470, '::1', '2012-10-11 17:21:06', 'admin', 'ReIndex', '---'),
(471, '::1', '2012-10-11 17:21:54', 'admin', 'ReIndex', '---'),
(472, '::1', '2012-10-11 17:38:23', 'admin', 'ReListHtml_all', '---'),
(473, '::1', '2012-10-11 17:40:45', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(474, '::1', '2012-10-11 17:40:59', 'admin', 'ReIndex', '---'),
(475, '::1', '2012-10-11 17:43:48', 'admin', 'ReListHtml_all', '---'),
(476, '::1', '2012-10-11 17:45:28', 'admin', 'EditClass', 'classid=64<br>classname=关于我们'),
(477, '::1', '2012-10-11 17:46:05', 'admin', 'ReIndex', '---'),
(478, '::1', '2012-10-11 17:46:14', 'admin', 'ReListHtml_all', '---'),
(479, '::1', '2012-10-11 17:46:41', 'admin', 'EditClass', 'classid=64<br>classname=关于我们'),
(480, '::1', '2012-10-11 17:46:48', 'admin', 'ReListHtml_all', '---'),
(481, '::1', '2012-10-11 17:47:18', 'admin', 'EditClass', 'classid=64<br>classname=关于我们'),
(482, '::1', '2012-10-11 17:47:25', 'admin', 'ReListHtml_all', '---'),
(483, '::1', '2012-10-11 17:48:23', 'admin', 'EditClass', 'classid=64<br>classname=关于我们'),
(484, '::1', '2012-10-11 17:48:30', 'admin', 'ReListHtml_all', '---'),
(485, '::1', '2012-10-11 17:53:15', 'admin', 'DelFcListClass', '---'),
(486, '::1', '2012-10-11 17:54:40', 'admin', 'login', '---'),
(487, '::1', '2012-10-11 17:56:09', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(488, '::1', '2012-10-11 17:56:13', 'admin', 'ReIndex', '---'),
(489, '::1', '2012-10-11 17:56:36', 'admin', 'ReListHtml_all', '---'),
(490, '::1', '2012-10-11 18:01:13', 'admin', 'EditPublicTemp', 'gid=1'),
(491, '::1', '2012-10-11 18:01:16', 'admin', 'ReIndex', '---'),
(492, '::1', '2012-10-11 18:02:15', 'admin', 'EditPublicTemp', 'gid=1'),
(493, '::1', '2012-10-11 18:02:18', 'admin', 'ReIndex', '---'),
(494, '::1', '2012-10-11 18:03:25', 'admin', 'EditPublicTemp', 'gid=1'),
(495, '::1', '2012-10-11 18:03:28', 'admin', 'ReIndex', '---'),
(496, '::1', '2012-10-11 18:03:38', 'admin', 'ReListHtml_all', '---'),
(497, '::1', '2012-10-11 18:03:57', 'admin', 'EditPublicTemp', 'gid=1'),
(498, '::1', '2012-10-11 18:04:00', 'admin', 'ReIndex', '---'),
(499, '::1', '2012-10-11 18:04:46', 'admin', 'EditPublicTemp', 'gid=1'),
(500, '::1', '2012-10-11 18:04:51', 'admin', 'ReIndex', '---'),
(501, '::1', '2012-10-11 18:05:47', 'admin', 'EditPublicTemp', 'gid=1'),
(502, '::1', '2012-10-11 18:05:52', 'admin', 'ReIndex', '---'),
(503, '::1', '2012-10-11 18:06:54', 'admin', 'EditPublicTemp', 'gid=1'),
(504, '::1', '2012-10-11 18:06:59', 'admin', 'ReIndex', '---'),
(505, '::1', '2012-10-11 18:07:09', 'admin', 'ReListHtml_all', '---'),
(506, '::1', '2012-10-11 18:07:14', 'admin', 'ChangeEnewsData', '---'),
(507, '::1', '2012-10-11 18:07:49', 'admin', 'EditPublicTemp', 'gid=1'),
(508, '::1', '2012-10-11 18:07:52', 'admin', 'ReIndex', '---'),
(509, '::1', '2012-10-11 21:41:12', 'admin', 'login', '---'),
(510, '::1', '2012-10-11 21:47:42', 'admin', 'EditPublicTemp', 'gid=1'),
(511, '::1', '2012-10-11 21:49:03', 'admin', 'EditPublicTemp', 'gid=1'),
(512, '::1', '2012-10-11 21:57:46', 'admin', 'ReIndex', '---'),
(513, '::1', '2012-10-11 22:02:32', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(514, '::1', '2012-10-11 22:02:37', 'admin', 'ReIndex', '---'),
(515, '::1', '2012-10-11 22:03:55', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(516, '::1', '2012-10-11 22:05:47', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(517, '::1', '2012-10-11 22:05:51', 'admin', 'ReIndex', '---'),
(518, '::1', '2012-10-11 22:06:16', 'admin', 'EditTempvar', 'varid=1<br>var=header&gid=1'),
(519, '::1', '2012-10-11 22:06:19', 'admin', 'ReIndex', '---'),
(520, '::1', '2012-10-11 22:07:00', 'admin', 'ReListHtml_all', '---'),
(521, '::1', '2012-10-11 22:45:58', 'admin', 'EditPublicTemp', 'gid=1'),
(522, '::1', '2012-10-11 22:46:07', 'admin', 'ReIndex', '---'),
(523, '::1', '2012-10-11 22:47:52', 'admin', 'EditPublicTemp', 'gid=1'),
(524, '::1', '2012-10-11 22:48:34', 'admin', 'ReIndex', '---'),
(525, '::1', '2012-10-11 22:53:02', 'admin', 'EditPublicTemp', 'gid=1'),
(526, '::1', '2012-10-11 22:53:07', 'admin', 'ReIndex', '---'),
(527, '::1', '2012-10-11 22:56:36', 'admin', 'EditPublicTemp', 'gid=1'),
(528, '::1', '2012-10-11 22:56:39', 'admin', 'ReIndex', '---'),
(529, '::1', '2012-10-11 22:58:15', 'admin', 'EditPublicTemp', 'gid=1'),
(530, '::1', '2012-10-11 22:58:18', 'admin', 'ReIndex', '---'),
(531, '::1', '2012-10-11 23:00:56', 'admin', 'EditPublicTemp', 'gid=1'),
(532, '::1', '2012-10-11 23:00:58', 'admin', 'ReIndex', '---'),
(533, '::1', '2012-10-11 23:04:28', 'admin', 'EditPublicTemp', 'gid=1'),
(534, '::1', '2012-10-11 23:04:30', 'admin', 'ReIndex', '---'),
(535, '::1', '2012-10-11 23:10:27', 'admin', 'EditPublicTemp', 'gid=1'),
(536, '::1', '2012-10-11 23:10:29', 'admin', 'ReIndex', '---'),
(537, '::1', '2012-10-11 23:26:39', 'admin', 'EditPublicTemp', 'gid=1'),
(538, '::1', '2012-10-11 23:26:42', 'admin', 'ReIndex', '---'),
(539, '::1', '2012-10-11 23:26:47', 'admin', 'ReIndex', '---'),
(540, '::1', '2012-10-11 23:27:28', 'admin', 'EditPublicTemp', 'gid=1'),
(541, '::1', '2012-10-11 23:29:51', 'admin', 'EditPublicTemp', 'gid=1'),
(542, '::1', '2012-10-11 23:29:54', 'admin', 'ReIndex', '---'),
(543, '::1', '2012-10-11 23:30:39', 'admin', 'EditPublicTemp', 'gid=1'),
(544, '::1', '2012-10-11 23:31:09', 'admin', 'EditPublicTemp', 'gid=1'),
(545, '::1', '2012-10-11 23:31:11', 'admin', 'ReIndex', '---'),
(546, '::1', '2012-10-11 23:35:20', 'admin', 'EditPublicTemp', 'gid=1'),
(547, '::1', '2012-10-11 23:35:23', 'admin', 'ReIndex', '---'),
(548, '::1', '2012-10-11 23:37:50', 'admin', 'EditPublicTemp', 'gid=1'),
(549, '::1', '2012-10-11 23:37:54', 'admin', 'ReIndex', '---'),
(550, '::1', '2012-10-11 23:38:11', 'admin', 'EditPublicTemp', 'gid=1'),
(551, '::1', '2012-10-11 23:38:16', 'admin', 'ReIndex', '---'),
(552, '::1', '2012-10-11 23:38:43', 'admin', 'EditPublicTemp', 'gid=1'),
(553, '::1', '2012-10-11 23:52:32', 'admin', 'EditPublicTemp', 'gid=1'),
(554, '::1', '2012-10-11 23:52:37', 'admin', 'ReIndex', '---'),
(555, '::1', '2012-10-11 23:53:27', 'admin', 'EditPublicTemp', 'gid=1'),
(556, '::1', '2012-10-11 23:53:30', 'admin', 'ReIndex', '---'),
(557, '::1', '2012-10-11 23:54:05', 'admin', 'EditPublicTemp', 'gid=1'),
(558, '::1', '2012-10-11 23:54:08', 'admin', 'ReIndex', '---'),
(559, '::1', '2012-10-11 23:54:40', 'admin', 'EditPublicTemp', 'gid=1'),
(560, '::1', '2012-10-11 23:54:43', 'admin', 'ReIndex', '---'),
(561, '::1', '2012-10-11 23:55:27', 'admin', 'EditPublicTemp', 'gid=1'),
(562, '::1', '2012-10-11 23:55:29', 'admin', 'ReIndex', '---'),
(563, '::1', '2012-10-11 23:56:01', 'admin', 'EditPublicTemp', 'gid=1'),
(564, '::1', '2012-10-11 23:56:04', 'admin', 'ReIndex', '---'),
(565, '::1', '2012-10-11 23:56:57', 'admin', 'EditPublicTemp', 'gid=1'),
(566, '::1', '2012-10-11 23:57:00', 'admin', 'ReIndex', '---'),
(567, '::1', '2012-10-11 23:57:52', 'admin', 'EditPublicTemp', 'gid=1'),
(568, '::1', '2012-10-11 23:57:55', 'admin', 'ReIndex', '---'),
(569, '::1', '2012-10-11 23:59:25', 'admin', 'DelNews', 'classid=63<br>id=99<br>title=注册税务师职业前景及报考策略分析'),
(570, '::1', '2012-10-11 23:59:29', 'admin', 'ReIndex', '---'),
(571, '::1', '2012-10-11 23:59:37', 'admin', 'ReListHtml_all', '---'),
(572, '::1', '2012-10-12 00:16:24', 'admin', 'login', '---'),
(573, '::1', '2012-10-12 00:16:49', 'admin', 'ReListHtml_all', '---'),
(574, '::1', '2012-10-12 00:16:56', 'admin', 'ReIndex', '---'),
(575, '::1', '2012-10-12 00:18:15', 'admin', 'ReIndex', '---'),
(576, '::1', '2012-10-12 00:20:22', 'admin', 'DelFcListClass', '---'),
(577, '::1', '2012-10-12 00:20:37', 'admin', 'ReIndex', '---'),
(578, '::1', '2012-10-12 08:45:48', 'admin', 'login', '---'),
(579, '::1', '2012-10-12 08:52:04', 'admin', 'EditPublicTemp', 'gid=1'),
(580, '::1', '2012-10-12 08:52:24', 'admin', 'ReListHtml_all', '---'),
(581, '::1', '2012-10-12 08:54:42', 'admin', 'MoveNews_all', 'classid=65<br>classname=公司新闻'),
(582, '::1', '2012-10-12 08:54:55', 'admin', 'ChangeClassIslast', 'classid=63<br>classname=培训专题'),
(583, '::1', '2012-10-12 08:56:04', 'admin', 'AddClass', 'classid=67<br>classname=企业重组培训'),
(584, '::1', '2012-10-12 08:56:32', 'admin', 'AddClass', 'classid=68<br>classname=营改增专题'),
(585, '::1', '2012-10-12 08:56:55', 'admin', 'AddClass', 'classid=69<br>classname=注册税务师培训'),
(586, '::1', '2012-10-12 08:57:00', 'admin', 'ReIndex', '---'),
(587, '::1', '2012-10-12 08:57:21', 'admin', 'ReListHtml_all', '---'),
(588, '::1', '2012-10-12 08:57:27', 'admin', 'ReIndex', '---'),
(589, '::1', '2012-10-12 09:10:23', 'admin', 'AddClass', 'classid=70<br>classname=税务文化研究'),
(590, '::1', '2012-10-12 09:11:46', 'admin', 'EditPublicTemp', 'gid=1'),
(591, '::1', '2012-10-12 09:11:49', 'admin', 'ReIndex', '---'),
(592, '::1', '2012-10-12 09:12:49', 'admin', 'EditPublicTemp', 'gid=1'),
(593, '::1', '2012-10-12 09:12:56', 'admin', 'ReIndex', '---'),
(594, '::1', '2012-10-12 09:13:08', 'admin', 'ReListHtml_all', '---'),
(595, '::1', '2012-10-12 09:19:52', 'admin', 'ReIndex', '---'),
(596, '::1', '2012-10-12 09:48:26', 'admin', 'EditPublicTemp', 'gid=1'),
(597, '::1', '2012-10-12 09:49:50', 'admin', 'EditPublicTemp', 'gid=1'),
(598, '::1', '2012-10-12 09:50:02', 'admin', 'ReListHtml_all', '---'),
(599, '::1', '2012-10-12 09:50:09', 'admin', 'ReIndex', '---'),
(600, '::1', '2012-10-12 09:51:04', 'admin', 'EditPublicTemp', 'gid=1'),
(601, '::1', '2012-10-12 09:51:07', 'admin', 'ReIndex', '---'),
(602, '::1', '2012-10-12 09:52:06', 'admin', 'EditPublicTemp', 'gid=1'),
(603, '::1', '2012-10-12 09:52:08', 'admin', 'ReIndex', '---'),
(604, '::1', '2012-10-12 09:55:23', 'admin', 'EditPublicTemp', 'gid=1'),
(605, '::1', '2012-10-12 09:55:26', 'admin', 'ReIndex', '---'),
(606, '::1', '2012-10-12 09:56:12', 'admin', 'EditPublicTemp', 'gid=1'),
(607, '::1', '2012-10-12 09:56:15', 'admin', 'ReIndex', '---'),
(608, '::1', '2012-10-12 10:10:45', 'admin', 'EditPublicTemp', 'gid=1'),
(609, '::1', '2012-10-12 10:10:49', 'admin', 'ReIndex', '---'),
(610, '::1', '2012-10-12 10:12:36', 'admin', 'EditPublicTemp', 'gid=1'),
(611, '::1', '2012-10-12 10:12:39', 'admin', 'ReIndex', '---'),
(612, '::1', '2012-10-12 10:15:40', 'admin', 'EditPublicTemp', 'gid=1'),
(613, '::1', '2012-10-12 10:15:42', 'admin', 'ReIndex', '---'),
(614, '::1', '2012-10-12 10:16:19', 'admin', 'EditPublicTemp', 'gid=1'),
(615, '::1', '2012-10-12 10:16:22', 'admin', 'ReIndex', '---'),
(616, '::1', '2012-10-12 10:16:42', 'admin', 'EditPublicTemp', 'gid=1'),
(617, '::1', '2012-10-12 10:16:44', 'admin', 'ReIndex', '---'),
(618, '::1', '2012-10-12 10:18:55', 'admin', 'EditPublicTemp', 'gid=1'),
(619, '::1', '2012-10-12 10:18:58', 'admin', 'ReIndex', '---'),
(620, '::1', '2012-10-12 10:22:34', 'admin', 'AddNews', 'classid=70<br>id=100<br>title=我国财务会计和税务会计关系及选择'),
(621, '::1', '2012-10-12 10:22:39', 'admin', 'AddInfoToReHtml', 'classid=70<br>do=6'),
(622, '::1', '2012-10-12 10:22:49', 'admin', 'ReListHtml_all', '---'),
(623, '::1', '2012-10-12 10:22:52', 'admin', 'ReIndex', '---'),
(624, '::1', '2012-10-12 10:25:49', 'admin', 'EditPublicTemp', 'gid=1'),
(625, '::1', '2012-10-12 10:25:53', 'admin', 'ReIndex', '---'),
(626, '::1', '2012-10-12 10:26:19', 'admin', 'EditPublicTemp', 'gid=1'),
(627, '::1', '2012-10-12 10:26:21', 'admin', 'ReIndex', '---'),
(628, '::1', '2012-10-12 10:28:07', 'admin', 'EditPublicTemp', 'gid=1'),
(629, '::1', '2012-10-12 10:28:10', 'admin', 'ReIndex', '---'),
(630, '::1', '2012-10-12 10:29:06', 'admin', 'EditPublicTemp', 'gid=1'),
(631, '::1', '2012-10-12 10:29:08', 'admin', 'ReIndex', '---'),
(632, '::1', '2012-10-12 10:30:51', 'admin', 'EditPublicTemp', 'gid=1'),
(633, '::1', '2012-10-12 10:30:53', 'admin', 'ReIndex', '---'),
(634, '::1', '2012-10-12 10:32:09', 'admin', 'EditPublicTemp', 'gid=1'),
(635, '::1', '2012-10-12 10:32:13', 'admin', 'ReIndex', '---'),
(636, '::1', '2012-10-12 10:32:42', 'admin', 'EditPublicTemp', 'gid=1'),
(637, '::1', '2012-10-12 10:35:08', 'admin', 'EditPublicTemp', 'gid=1'),
(638, '::1', '2012-10-12 10:35:49', 'admin', 'EditPublicTemp', 'gid=1'),
(639, '::1', '2012-10-12 10:35:51', 'admin', 'ReIndex', '---'),
(640, '::1', '2012-10-12 10:36:18', 'admin', 'EditPublicTemp', 'gid=1'),
(641, '::1', '2012-10-12 10:36:21', 'admin', 'ReIndex', '---'),
(642, '::1', '2012-10-12 10:39:20', 'admin', 'EditPublicTemp', 'gid=1'),
(643, '::1', '2012-10-12 10:39:23', 'admin', 'ReIndex', '---'),
(644, '::1', '2012-10-12 10:40:22', 'admin', 'EditPublicTemp', 'gid=1'),
(645, '::1', '2012-10-12 10:40:29', 'admin', 'ReIndex', '---'),
(646, '::1', '2012-10-12 10:41:31', 'admin', 'EditPublicTemp', 'gid=1'),
(647, '::1', '2012-10-12 10:41:34', 'admin', 'ReIndex', '---'),
(648, '::1', '2012-10-12 10:47:51', 'admin', 'EditPublicTemp', 'gid=1'),
(649, '::1', '2012-10-12 10:47:58', 'admin', 'ReIndex', '---'),
(650, '::1', '2012-10-12 10:57:44', 'admin', 'EditPublicTemp', 'gid=1'),
(651, '::1', '2012-10-12 10:57:49', 'admin', 'ReIndex', '---'),
(652, '::1', '2012-10-12 10:58:34', 'admin', 'EditPublicTemp', 'gid=1'),
(653, '::1', '2012-10-12 10:58:37', 'admin', 'ReIndex', '---'),
(654, '::1', '2012-10-12 10:59:08', 'admin', 'EditPublicTemp', 'gid=1'),
(655, '::1', '2012-10-12 10:59:11', 'admin', 'ReIndex', '---'),
(656, '::1', '2012-10-12 11:02:07', 'admin', 'EditPublicTemp', 'gid=1'),
(657, '::1', '2012-10-12 11:02:16', 'admin', 'ReListHtml_all', '---'),
(658, '::1', '2012-10-12 11:04:06', 'admin', 'ReIndex', '---'),
(659, '::1', '2012-10-12 11:05:04', 'admin', 'EditClass', 'classid=67<br>classname=企业重组培训'),
(660, '::1', '2012-10-12 11:05:17', 'admin', 'ChangeClassIslast', 'classid=67<br>classname=企业重组培训'),
(661, '::1', '2012-10-12 11:05:28', 'admin', 'ChangeClassIslast', 'classid=68<br>classname=营改增专题'),
(662, '::1', '2012-10-12 11:05:43', 'admin', 'ChangeClassIslast', 'classid=69<br>classname=注册税务师培训'),
(663, '::1', '2012-10-12 11:09:22', 'admin', 'EditPublicTemp', 'gid=1'),
(664, '::1', '2012-10-12 11:10:13', 'admin', 'EditClass', 'classid=68<br>classname=营改增专题'),
(665, '::1', '2012-10-12 11:10:43', 'admin', 'EditClass', 'classid=69<br>classname=注册税务师培训'),
(666, '::1', '2012-10-12 11:10:55', 'admin', 'ReListHtml_all', '---'),
(667, '::1', '2012-10-12 11:10:59', 'admin', 'ReIndex', '---'),
(668, '::1', '2012-10-12 11:13:15', 'admin', 'MoveNews_all', 'classid=65<br>classname=公司新闻');
INSERT INTO `phome_enewsdolog` (`logid`, `logip`, `logtime`, `username`, `enews`, `doing`) VALUES
(669, '::1', '2012-10-12 11:14:06', 'admin', 'ReListHtml_all', '---'),
(670, '::1', '2012-10-12 11:14:13', 'admin', 'ReIndex', '---'),
(671, '::1', '2012-10-12 11:19:55', 'admin', 'ReListHtml_all', '---'),
(672, '::1', '2012-10-12 11:19:59', 'admin', 'ReIndex', '---'),
(673, '::1', '2012-10-12 11:20:29', 'admin', 'ReIndex', '---'),
(674, '::1', '2012-10-12 11:21:25', 'admin', 'EditPublicTemp', 'gid=1'),
(675, '::1', '2012-10-12 11:21:30', 'admin', 'ReIndex', '---'),
(676, '::1', '2012-10-12 11:21:37', 'admin', 'ChangeEnewsData', '---'),
(677, '::1', '2012-10-12 11:21:44', 'admin', 'ReClassPath', '---'),
(678, '::1', '2012-10-12 11:22:49', 'admin', 'ReIndex', '---'),
(679, '::1', '2012-10-12 11:23:46', 'admin', 'EditClass', 'classid=65<br>classname=业界动态'),
(680, '::1', '2012-10-12 11:40:13', 'admin', 'EditPublicTemp', 'gid=1'),
(681, '::1', '2012-10-12 11:40:16', 'admin', 'ReIndex', '---'),
(682, '::1', '2012-10-12 11:46:12', 'admin', 'ReIndex', '---'),
(683, '::1', '2012-10-12 11:46:22', 'admin', 'ReListHtml_all', '---'),
(684, '::1', '2012-10-12 14:19:14', 'admin', 'login', '---'),
(685, '::1', '2012-10-12 15:05:16', 'admin', 'login', '---'),
(686, '::1', '2012-10-12 15:06:18', 'admin', 'EditNews', 'classid=65<br>id=94<br>title=营改增扩围三难题待解税率仍有下调空间'),
(687, '::1', '2012-10-12 15:06:36', 'admin', 'EditNews', 'classid=65<br>id=93<br>title=不具高新资格 贝因美需补税2785万'),
(688, '::1', '2012-10-12 15:06:49', 'admin', 'EditNews', 'classid=65<br>id=92<br>title=财政部、税务总局明令绝不收“过头税”'),
(689, '::1', '2012-10-12 15:06:56', 'admin', 'ReIndex', '---'),
(690, '::1', '2012-10-12 15:08:01', 'admin', 'ReListHtmlMore', '---'),
(691, '::1', '2012-10-12 15:08:25', 'admin', 'ReIndex', '---'),
(692, '::1', '2012-10-12 15:09:43', 'admin', 'MoveNews_all', 'classid=68<br>classname=营改增专题'),
(693, '::1', '2012-10-12 15:09:56', 'admin', 'ReIndex', '---'),
(694, '::1', '2012-10-12 15:10:59', 'admin', 'DelNews_all', 'classid=68<br>classname=营改增专题'),
(695, '::1', '2012-10-12 15:11:06', 'admin', 'ReIndex', '---'),
(696, '::1', '2012-10-12 15:11:30', 'admin', 'ReListHtml_all', '---'),
(697, '::1', '2012-10-12 15:11:37', 'admin', 'ReIndex', '---'),
(698, '::1', '2012-10-12 15:14:33', 'admin', 'ReAllNewsJs', '---'),
(699, '::1', '2012-10-12 15:14:40', 'admin', 'ReDtPage', '---'),
(700, '::1', '2012-10-12 15:14:59', 'admin', 'ReListHtml_all', '---'),
(701, '::1', '2012-10-12 15:15:03', 'admin', 'ReIndex', '---'),
(702, '::1', '2012-10-12 15:16:54', 'admin', 'AddInfoToReHtml', 'classid=65<br>do=6'),
(703, '::1', '2012-10-12 15:17:58', 'admin', 'ReAllNewsJs', '---'),
(704, '::1', '2012-10-12 15:18:56', 'admin', 'AddNews', 'classid=69<br>id=101<br>title=注册税务师职业前景及报考策略分析'),
(705, '::1', '2012-10-12 15:19:04', 'admin', 'AddInfoToReHtml', 'classid=69<br>do=6'),
(706, '::1', '2012-10-12 15:19:50', 'admin', 'DelNews_all', 'classid=65<br>classname=业界动态'),
(707, '::1', '2012-10-12 15:21:01', 'admin', 'AddNews', 'classid=65<br>id=102<br>title=建筑业“营改增”税负将大增'),
(708, '::1', '2012-10-12 15:21:07', 'admin', 'AddInfoToReHtml', 'classid=65<br>do=6'),
(709, '::1', '2012-10-12 15:21:26', 'admin', 'DelNews_all', 'classid=66<br>classname=图片新闻'),
(710, '::1', '2012-10-12 15:21:39', 'admin', 'ReListHtml_all', '---'),
(711, '::1', '2012-10-12 15:21:46', 'admin', 'ReIndex', '---'),
(712, '::1', '2012-10-12 15:22:43', 'admin', 'EditNews', 'classid=65<br>id=102<br>title=建筑业“营改增”税负将大增'),
(713, '::1', '2012-10-12 15:22:50', 'admin', 'ReIndex', '---'),
(714, '::1', '2012-10-12 15:24:44', 'admin', 'EditNews', 'classid=68<br>id=98<br>title=“营改增”税收政策及实务研讨班邀请函'),
(715, '::1', '2012-10-12 15:25:02', 'admin', 'ReIndex', '---'),
(716, '::1', '2012-10-12 15:25:26', 'admin', 'ReListHtml_all', '---'),
(717, '::1', '2012-10-12 15:25:34', 'admin', 'ReIndex', '---'),
(718, '::1', '2012-10-12 15:26:23', 'admin', 'EditNews', 'classid=68<br>id=98<br>title=“营改增”税收政策及实务研讨班邀请函'),
(719, '::1', '2012-10-12 15:37:16', 'admin', 'EditNewstemp', 'tempid=1<br>tempname=默认新闻内容模板&gid=1'),
(720, '::1', '2012-10-12 15:44:21', 'admin', 'EditNewstemp', 'tempid=1<br>tempname=默认新闻内容模板&gid=1'),
(721, '::1', '2012-10-12 15:44:59', 'admin', 'ReListHtml_all', '---'),
(722, '::1', '2012-10-12 15:45:03', 'admin', 'ReIndex', '---'),
(723, '::1', '2012-10-12 15:46:55', 'admin', 'EditNewstemp', 'tempid=1<br>tempname=默认新闻内容模板&gid=1'),
(724, '::1', '2012-10-12 15:49:31', 'admin', 'EditNewstemp', 'tempid=1<br>tempname=默认新闻内容模板&gid=1'),
(725, '::1', '2012-10-12 15:54:32', 'admin', 'EditClass', 'classid=65<br>classname=业界动态'),
(726, '::1', '2012-10-12 15:58:43', 'admin', 'DelClass', 'classid=66<br>classname=图片新闻'),
(727, '::1', '2012-10-12 15:59:09', 'admin', 'ReIndex', '---'),
(728, '::1', '2012-10-12 16:13:37', 'admin', 'DelNewstemp', 'tempid=7<br>tempname=默认商城内容模板&gid=1'),
(729, '::1', '2012-10-12 16:15:16', 'admin', 'DelNewstemp', 'tempid=6<br>tempname=默认电影内容模板&gid=1'),
(730, '::1', '2012-10-12 16:15:30', 'admin', 'DelNewstemp', 'tempid=9<br>tempname=默认分类信息内容模板&gid=1'),
(731, '::1', '2012-10-12 16:15:39', 'admin', 'DelNewstemp', 'tempid=2<br>tempname=默认下载内容模板&gid=1'),
(732, '::1', '2012-10-12 16:15:59', 'admin', 'EditNewstemp', 'tempid=1<br>tempname=默认新闻内容模板&gid=1'),
(733, '::1', '2012-10-12 16:20:21', 'admin', 'AddNews', 'classid=65<br>id=103<br>title=营业税改征增值税试点国庆上线'),
(734, '::1', '2012-10-12 16:20:33', 'admin', 'ReListHtml_all', '---'),
(735, '::1', '2012-10-12 16:20:36', 'admin', 'ReIndex', '---'),
(736, '::1', '2012-10-12 16:21:35', 'admin', 'EditNews', 'classid=65<br>id=102<br>title=建筑业“营改增”税负将大增'),
(737, '::1', '2012-10-12 16:22:36', 'admin', 'EditClass', 'classid=70<br>classname=税务文化研究'),
(738, '::1', '2012-10-12 16:22:43', 'admin', 'ReIndex', '---'),
(739, '::1', '2012-10-12 16:23:13', 'admin', 'ReListHtml_all', '---'),
(740, '::1', '2012-10-12 16:23:53', 'admin', 'EditClass', 'classid=67<br>classname=企业重组培训'),
(741, '::1', '2012-10-12 16:24:12', 'admin', 'EditClass', 'classid=68<br>classname=营改增专题'),
(742, '::1', '2012-10-12 16:24:26', 'admin', 'EditClass', 'classid=69<br>classname=注册税务师培训'),
(743, '::1', '2012-10-12 16:24:47', 'admin', 'ReIndex', '---'),
(744, '::1', '2012-10-12 16:32:52', 'admin', 'EditNewstemp', 'tempid=1<br>tempname=默认新闻内容模板&gid=1'),
(745, '::1', '2012-10-12 16:33:25', 'admin', 'ReListHtml_all', '---'),
(746, '::1', '2012-10-12 16:35:04', 'admin', 'EditNewstemp', 'tempid=1<br>tempname=默认新闻内容模板&gid=1'),
(747, '::1', '2012-10-12 16:35:49', 'admin', 'ReListHtml', '---'),
(748, '::1', '2012-10-12 16:35:59', 'admin', 'EditClass', 'classid=65<br>classname=业界动态'),
(749, '::1', '2012-10-12 16:38:43', 'admin', 'AddNews', 'classid=65<br>id=104<br>title=营业税改征增值税试点信息'),
(750, '::1', '2012-10-12 16:38:48', 'admin', 'ReIndex', '---'),
(751, '::1', '2012-10-12 16:46:00', 'admin', 'AddNews', 'classid=65<br>id=105<br>title=图片内容模板'),
(752, '::1', '2012-10-12 16:46:06', 'admin', 'ReIndex', '---'),
(753, '::1', '2012-10-12 16:46:56', 'admin', 'AddNews', 'classid=65<br>id=106<br>title=多图片模板'),
(754, '::1', '2012-10-12 16:47:00', 'admin', 'ReIndex', '---'),
(755, '::1', '2012-10-12 16:47:29', 'admin', 'EditNews', 'classid=65<br>id=106<br>title=多图片模板'),
(756, '::1', '2012-10-12 16:47:32', 'admin', 'ReIndex', '---'),
(757, '::1', '2012-10-12 16:49:50', 'admin', 'EditNews', 'classid=65<br>id=106<br>title=多图片模板'),
(758, '::1', '2012-10-12 16:49:54', 'admin', 'ReIndex', '---'),
(759, '::1', '2012-10-12 16:51:34', 'admin', 'EditNews', 'classid=65<br>id=106<br>title=多图片模板'),
(760, '::1', '2012-10-12 16:51:39', 'admin', 'ReIndex', '---'),
(761, '::1', '2012-10-12 16:52:09', 'admin', 'DelNews_all', 'classid=65<br>classname=业界动态'),
(762, '::1', '2012-10-12 16:52:18', 'admin', 'ReIndex', '---'),
(763, '::1', '2012-10-12 16:52:55', 'admin', 'EditNews', 'classid=65<br>id=103<br>title=营业税改征增值税试点国庆上线'),
(764, '::1', '2012-10-12 16:52:58', 'admin', 'ReIndex', '---'),
(765, '::1', '2012-10-12 23:19:11', 'admin', 'login', '---'),
(766, '::1', '2012-10-12 23:23:03', 'admin', 'AddNews', 'classid=70<br>id=107<br>title=我国财务会计和税务会计关系及选择'),
(767, '::1', '2012-10-12 23:23:30', 'admin', 'ReListHtml_all', '---'),
(768, '::1', '2012-10-12 23:23:33', 'admin', 'ReIndex', '---'),
(769, '::1', '2012-10-12 23:24:08', 'admin', 'DelNews_all', 'classid=68<br>classname=营改增专题'),
(770, '::1', '2012-10-12 23:26:43', 'admin', 'EditNews', 'classid=70<br>id=107<br>title=我国财务会计和税务会计关系及选择'),
(771, '::1', '2012-10-12 23:26:47', 'admin', 'ReIndex', '---'),
(772, '::1', '2012-10-12 23:31:31', 'admin', 'EditNews', 'classid=70<br>id=107<br>title=我国财务会计和税务会计关系及选择'),
(773, '::1', '2012-10-12 23:31:37', 'admin', 'ReIndex', '---');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsdownerror`
--

CREATE TABLE IF NOT EXISTS `phome_enewsdownerror` (
  `errorid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL DEFAULT '0',
  `errortext` varchar(255) NOT NULL DEFAULT '',
  `errortime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `errorip` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `cid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`errorid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsdownrecord`
--

CREATE TABLE IF NOT EXISTS `phome_enewsdownrecord` (
  `id` int(11) NOT NULL DEFAULT '0',
  `pathid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `cardfen` int(11) NOT NULL DEFAULT '0',
  `truetime` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `online` tinyint(1) NOT NULL DEFAULT '0',
  KEY `userid` (`userid`),
  KEY `truetime` (`truetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsdownurlqz`
--

CREATE TABLE IF NOT EXISTS `phome_enewsdownurlqz` (
  `urlid` smallint(6) NOT NULL AUTO_INCREMENT,
  `urlname` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `downtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`urlid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewserrorclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewserrorclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsf`
--

CREATE TABLE IF NOT EXISTS `phome_enewsf` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `isadd` tinyint(1) NOT NULL DEFAULT '0',
  `isshow` tinyint(1) NOT NULL DEFAULT '0',
  `iscj` tinyint(1) NOT NULL DEFAULT '0',
  `cjhtml` mediumtext NOT NULL,
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `dotemp` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `savetxt` tinyint(1) NOT NULL DEFAULT '0',
  `fvalue` text NOT NULL,
  `iskey` tinyint(1) NOT NULL DEFAULT '0',
  `tobr` tinyint(1) NOT NULL DEFAULT '0',
  `dohtml` tinyint(1) NOT NULL DEFAULT '0',
  `qfhtml` mediumtext NOT NULL,
  `isonly` tinyint(1) NOT NULL DEFAULT '0',
  `linkfieldval` varchar(30) NOT NULL DEFAULT '',
  `samedata` tinyint(1) NOT NULL DEFAULT '0',
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  `tbdataf` tinyint(1) NOT NULL DEFAULT '0',
  `ispage` tinyint(1) NOT NULL DEFAULT '0',
  `adddofun` varchar(255) NOT NULL DEFAULT '',
  `editdofun` varchar(255) NOT NULL DEFAULT '',
  `qadddofun` varchar(255) NOT NULL DEFAULT '',
  `qeditdofun` varchar(255) NOT NULL DEFAULT '',
  `linkfieldtb` varchar(60) NOT NULL DEFAULT '',
  `linkfieldshow` varchar(30) NOT NULL DEFAULT '',
  `editorys` tinyint(1) NOT NULL DEFAULT '0',
  `issmalltext` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- 转存表中的数据 `phome_enewsf`
--

INSERT INTO `phome_enewsf` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `isadd`, `isshow`, `iscj`, `cjhtml`, `myorder`, `ftype`, `flen`, `dotemp`, `tid`, `tbname`, `savetxt`, `fvalue`, `iskey`, `tobr`, `dohtml`, `qfhtml`, `isonly`, `linkfieldval`, `samedata`, `fformsize`, `tbdataf`, `ispage`, `adddofun`, `editdofun`, `qadddofun`, `qeditdofun`, `linkfieldtb`, `linkfieldshow`, `editorys`, `issmalltext`) VALUES
(1, 'title', '标题', 'text', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">\r\n<?=$tts?\\"<select name=\\''ttid\\''><option value=\\''0\\''>标题分类</option>$tts</select>\\":\\"\\"?>\r\n	<input type=text name=title value=\\"<?=htmlspecialchars(stripSlashes($r[title]))?>\\" size=\\"60\\"> \r\n	<input type=\\"button\\" name=\\"button\\" value=\\"图文\\" onclick=\\"document.add.title.value=document.add.title.value+\\''(图文)\\'';\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">属性: \r\n	<input name=\\"titlefont[b]\\" type=\\"checkbox\\" value=\\"b\\"<?=$titlefontb?>>粗体\r\n	<input name=\\"titlefont[i]\\" type=\\"checkbox\\" value=\\"i\\"<?=$titlefonti?>>斜体\r\n	<input name=\\"titlefont[s]\\" type=\\"checkbox\\" value=\\"s\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\"titlecolor\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titlecolor])?>\\" size=\\"10\\"><a onclick=\\"foreColor();\\"><img src=\\"../data/images/color.gif\\" width=\\"21\\" height=\\"21\\" align=\\"absbottom\\"></a>\r\n  </td>\r\n</tr>\r\n</table>', '标题', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'CHAR', '200', 1, 1, 'news', 0, '', 0, 1, 1, '<input name=\\"title\\" type=\\"text\\" size=\\"42\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''title\\'',stripSlashes($r[title]))?>\\">', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(2, 'special.field', '特殊属性', '', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n  <tr>\r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">信息属性: \r\n      <input name=\\"checked\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[checked]?\\'' checked\\'':\\''\\''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\\"isgood\\" id=\\"isgood\\">\r\n        <option value=\\"0\\"<?=$r[isgood]==0?\\'' selected\\'':\\''\\''?>>不推荐</option>\r\n        <option value=\\"1\\"<?=$r[isgood]==1?\\'' selected\\'':\\''\\''?>>一级推荐</option>\r\n        <option value=\\"2\\"<?=$r[isgood]==2?\\'' selected\\'':\\''\\''?>>二级推荐</option>\r\n        <option value=\\"3\\"<?=$r[isgood]==3?\\'' selected\\'':\\''\\''?>>三级推荐</option>\r\n        <option value=\\"4\\"<?=$r[isgood]==4?\\'' selected\\'':\\''\\''?>>四级推荐</option>\r\n        <option value=\\"5\\"<?=$r[isgood]==5?\\'' selected\\'':\\''\\''?>>五级推荐</option>\r\n        <option value=\\"6\\"<?=$r[isgood]==6?\\'' selected\\'':\\''\\''?>>六级推荐</option>\r\n        <option value=\\"7\\"<?=$r[isgood]==7?\\'' selected\\'':\\''\\''?>>七级推荐</option>\r\n        <option value=\\"8\\"<?=$r[isgood]==8?\\'' selected\\'':\\''\\''?>>八级推荐</option>\r\n        <option value=\\"9\\"<?=$r[isgood]==9?\\'' selected\\'':\\''\\''?>>九级推荐</option>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\\"firsttitle\\" id=\\"firsttitle\\">\r\n        <option value=\\"0\\"<?=$r[firsttitle]==0?\\'' selected\\'':\\''\\''?>>非头条</option>\r\n        <option value=\\"1\\"<?=$r[firsttitle]==1?\\'' selected\\'':\\''\\''?>>一级头条</option>\r\n        <option value=\\"2\\"<?=$r[firsttitle]==2?\\'' selected\\'':\\''\\''?>>二级头条</option>\r\n        <option value=\\"3\\"<?=$r[firsttitle]==3?\\'' selected\\'':\\''\\''?>>三级头条</option>\r\n        <option value=\\"4\\"<?=$r[firsttitle]==4?\\'' selected\\'':\\''\\''?>>四级头条</option>\r\n        <option value=\\"5\\"<?=$r[firsttitle]==5?\\'' selected\\'':\\''\\''?>>五级头条</option>\r\n        <option value=\\"6\\"<?=$r[firsttitle]==6?\\'' selected\\'':\\''\\''?>>六级头条</option>\r\n        <option value=\\"7\\"<?=$r[firsttitle]==7?\\'' selected\\'':\\''\\''?>>七级头条</option>\r\n        <option value=\\"8\\"<?=$r[firsttitle]==8?\\'' selected\\'':\\''\\''?>>八级头条</option>\r\n        <option value=\\"9\\"<?=$r[firsttitle]==9?\\'' selected\\'':\\''\\''?>>九级头条</option>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\\"keyboard\\" type=\\"text\\" size=\\"52\\" value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">外部链接: \r\n      <input name=\\"titleurl\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titleurl])?>\\" size=\\"52\\">\r\n      <font color=\\"#666666\\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n', '特殊属性', 0, 1, 0, '', 1, '', '', 0, 1, 'news', 0, '', 0, 1, 1, '<input name=\\"keyboard\\" type=\\"text\\" size=42 value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(3, 'titlepic', '标题图片', 'img', '\r\n<input name=\\"titlepic\\" type=\\"text\\" id=\\"titlepic\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[titlepic]))?>\\" size=\\"45\\">\r\n<a onclick=\\"window.open(\\''ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&filepass=<?=$filepass?>&doing=1&field=titlepic\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\" title=\\"选择已上传的图片\\"><img src=\\"../data/images/changeimg.gif\\" border=\\"0\\" align=\\"absbottom\\"></a> \r\n', '标题图片', 0, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--titlepic--]\\" size=\\"20\\">\r\n      )</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\"add[qz_titlepic]\\" type=\\"text\\" id=\\"add[qz_titlepic]\\" value=\\"<?=stripSlashes($r[qz_titlepic])?>\\"> \r\n        <input name=\\"add[save_titlepic]\\" type=\\"checkbox\\" id=\\"add[save_titlepic]\\" value=\\" checked\\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\"add[zz_titlepic]\\" cols=\\"60\\" rows=\\"10\\" id=\\"add[zz_titlepic]\\"><?=htmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\"add[z_titlepic]\\" type=\\"text\\" id=\\"titlepic5\\" value=\\"<?=stripSlashes($r[z_titlepic])?>\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '200', 1, 1, 'news', 0, '', 0, 1, 1, '\r\n<input type=\\"file\\" name=\\"titlepicfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(4, 'newstime', '发布时间', 'text', '<input name=\\"newstime\\" type=\\"text\\" value=\\"<?=$r[newstime]?>\\"><input type=button name=button value=\\"设为当前时间\\" onclick=\\"document.add.newstime.value=\\''<?=$todaytime?>\\''\\">', '发布时间', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 1, 'INT', '10', 1, 1, 'news', 0, '', 0, 1, 1, '', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(5, 'ftitle', '副标题', 'text', '<input name=\\"ftitle\\" type=\\"text\\" size=60 id=\\"ftitle\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[ftitle]))?>\\">\r\n', '副标题', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--ftitle--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_ftitle]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=htmlspecialchars(stripSlashes($r[zz_ftitle]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_ftitle]\\" type=\\"text\\" id=\\"add[z_ftitle]\\" value=\\"<?=stripSlashes($r[z_ftitle])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'CHAR', '120', 1, 1, 'news', 0, '', 0, 1, 1, '<input name=\\"ftitle\\" type=\\"text\\" size=42 id=\\"ftitle\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''ftitle\\'',stripSlashes($r[ftitle]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(6, 'smalltext', '内容简介', 'textarea', '<textarea name=\\"smalltext\\" cols=\\"80\\" rows=\\"10\\" id=\\"smalltext\\"><?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[smalltext]))?></textarea>\r\n', '内容简介', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--smalltext--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_smalltext]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=htmlspecialchars(stripSlashes($r[zz_smalltext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_smalltext]\\" type=\\"text\\" id=\\"add[z_smalltext]\\" value=\\"<?=stripSlashes($r[z_smalltext])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '255', 1, 1, 'news', 0, '', 0, 1, 1, '<textarea name=\\"smalltext\\" cols=\\"60\\" rows=\\"10\\" id=\\"smalltext\\"><?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''smalltext\\'',stripSlashes($r[smalltext]))?></textarea>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 1),
(7, 'writer', '作者', 'text', '\r\n<?php\r\n$writer_sql=$empire->query(\\"select writer from {$dbtbpre}enewswriter\\");\r\nwhile($w_r=$empire->fetch($writer_sql))\r\n{\r\n	$w_class.=\\"<option value=\\''\\".$w_r[writer].\\"\\''>\\".$w_r[writer].\\"</option>\\";\r\n}\r\n?>\r\n<input type=text name=writer value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[writer]))?>\\" size=\\"\\"> \r\n        <select name=\\"w_id\\" id=\\"select7\\" onchange=\\"document.add.writer.value=document.add.w_id.value\\">\r\n          <option>选择作者</option>\r\n		  <?=$w_class?>\r\n        </select>\r\n<input type=\\"button\\" name=\\"wbutton\\" value=\\"增加作者\\" onclick=\\"window.open(\\''NewsSys/writer.php?addwritername=\\''+document.add.writer.value);\\">\r\n', '作者', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--writer--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_writer]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=htmlspecialchars(stripSlashes($r[zz_writer]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_writer]\\" type=\\"text\\" id=\\"add[z_writer]\\" value=\\"<?=stripSlashes($r[z_writer])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'VARCHAR', '30', 1, 1, 'news', 0, '', 0, 1, 1, '\r\n<input name=\\"writer\\" type=\\"text\\" id=\\"writer\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''writer\\'',stripSlashes($r[writer]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(8, 'befrom', '信息来源', 'text', '\r\n<?php\r\n$befrom_sql=$empire->query(\\"select sitename from {$dbtbpre}enewsbefrom\\");\r\nwhile($b_r=$empire->fetch($befrom_sql))\r\n{\r\n	$b_class.=\\"<option value=\\''\\".$b_r[sitename].\\"\\''>\\".$b_r[sitename].\\"</option>\\";\r\n}\r\n?>\r\n<input type=\\"text\\" name=\\"befrom\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[befrom]))?>\\" size=\\"\\"> \r\n        <select name=\\"befrom_id\\" id=\\"befromid\\" onchange=\\"document.add.befrom.value=document.add.befrom_id.value\\">\r\n          <option>选择信息来源</option>\r\n          <?=$b_class?>\r\n        </select>\r\n<input type=\\"button\\" name=\\"wbutton\\" value=\\"增加来源\\" onclick=\\"window.open(\\''NewsSys/BeFrom.php?addsitename=\\''+document.add.befrom.value);\\">\r\n', '信息来源', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--befrom--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_befrom]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=htmlspecialchars(stripSlashes($r[zz_befrom]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_befrom]\\" type=\\"text\\" id=\\"add[z_befrom]\\" value=\\"<?=stripSlashes($r[z_befrom])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'VARCHAR', '60', 1, 1, 'news', 0, '', 0, 1, 1, '\r\n<input name=\\"befrom\\" type=\\"text\\" id=\\"befrom\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''befrom\\'',stripSlashes($r[befrom]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(9, 'newstext', '新闻正文', 'editor', '<?=ECMS_ShowEditorVar(\\"newstext\\",$ecmsfirstpost==1?\\"\\":stripSlashes($r[newstext]),\\"Default\\",\\"\\",\\"300\\",\\"100%\\")?>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#DBEAF5\\">\r\n          <tr> \r\n            <td bgcolor=\\"#FFFFFF\\"> <input name=\\"dokey\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[dokey]==1?\\'' checked\\'':\\''\\''?>>\r\n              关键字替换&nbsp;&nbsp; <input name=\\"copyimg\\" type=\\"checkbox\\" id=\\"copyimg\\" value=\\"1\\">\r\n      远程保存图片(\r\n      <input name=\\"mark\\" type=\\"checkbox\\" id=\\"mark\\" value=\\"1\\">\r\n      <a href=\\"SetEnews.php\\" target=\\"_blank\\">加水印</a>)&nbsp;&nbsp; \r\n      <input name=\\"copyflash\\" type=\\"checkbox\\" id=\\"copyflash\\" value=\\"1\\">\r\n      远程保存FLASH(地址前缀： \r\n      <input name=\\"qz_url\\" type=\\"text\\" id=\\"qz_url\\" size=\\"\\">\r\n              )</td>\r\n          </tr>\r\n          <tr>\r\n            \r\n    <td bgcolor=\\"#FFFFFF\\"><input name=\\"repimgnexturl\\" type=\\"checkbox\\" id=\\"repimgnexturl\\" value=\\"1\\"> 图片链接转为下一页&nbsp;&nbsp; <input name=\\"autopage\\" type=\\"checkbox\\" id=\\"autopage\\" value=\\"1\\">自动分页\r\n      ,每 \r\n      <input name=\\"autosize\\" type=\\"text\\" id=\\"autosize\\" value=\\"5000\\" size=\\"5\\">\r\n      个字节为一页&nbsp;&nbsp; 取第 \r\n      <input name=\\"getfirsttitlepic\\" type=\\"text\\" id=\\"getfirsttitlepic\\" value=\\"\\" size=\\"1\\">\r\n      张上传图为标题图片( \r\n      <input name=\\"getfirsttitlespic\\" type=\\"checkbox\\" id=\\"getfirsttitlespic\\" value=\\"1\\">\r\n      缩略图: 宽 \r\n      <input name=\\"getfirsttitlespicw\\" type=\\"text\\" id=\\"getfirsttitlespicw\\" size=\\"3\\" value=\\"<?=$public_r[spicwidth]?>\\">\r\n      *高\r\n      <input name=\\"getfirsttitlespich\\" type=\\"text\\" id=\\"getfirsttitlespich\\" size=\\"3\\" value=\\"<?=$public_r[spicheight]?>\\">\r\n      )</td>\r\n          </tr>\r\n        </table>\r\n', '新闻正文', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--newstext--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_newstext]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=htmlspecialchars(stripSlashes($r[zz_newstext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_newstext]\\" type=\\"text\\" id=\\"add[z_newstext]\\" value=\\"<?=stripSlashes($r[z_newstext])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'MEDIUMTEXT', '', 1, 1, 'news', 0, '', 0, 1, 1, '<?=ECMS_ShowEditorVar(\\"newstext\\",$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''newstext\\'',stripSlashes($r[newstext])),\\"Default\\",\\"\\",\\"300\\",\\"100%\\")?>\r\n', 0, '', 0, '', 1, 1, '', '', '', '', '', '', 0, 0),
(10, 'title', '标题', 'text', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">\r\n<?=$tts?\\"<select name=\\''ttid\\''><option value=\\''0\\''>标题分类</option>$tts</select>\\":\\"\\"?>\r\n	<input type=text name=title value=\\"<?=htmlspecialchars(stripSlashes($r[title]))?>\\" size=\\"60\\"> \r\n	<input type=\\"button\\" name=\\"button\\" value=\\"图文\\" onclick=\\"document.add.title.value=document.add.title.value+\\''(图文)\\'';\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">属性: \r\n	<input name=\\"titlefont[b]\\" type=\\"checkbox\\" value=\\"b\\"<?=$titlefontb?>>粗体\r\n	<input name=\\"titlefont[i]\\" type=\\"checkbox\\" value=\\"i\\"<?=$titlefonti?>>斜体\r\n	<input name=\\"titlefont[s]\\" type=\\"checkbox\\" value=\\"s\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\"titlecolor\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titlecolor])?>\\" size=\\"10\\"><a onclick=\\"foreColor();\\"><img src=\\"../data/images/color.gif\\" width=\\"21\\" height=\\"21\\" align=\\"absbottom\\"></a>\r\n  </td>\r\n</tr>\r\n</table>', '标题', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'VARCHAR', '200', 1, 2, 'download', 0, '', 0, 1, 1, '<input name=\\"title\\" type=\\"text\\" size=\\"42\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''title\\'',stripSlashes($r[title]))?>\\">', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(11, 'special.field', '特殊属性', '', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n  <tr>\r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">信息属性: \r\n      <input name=\\"checked\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[checked]?\\'' checked\\'':\\''\\''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\\"isgood\\" id=\\"isgood\\">\r\n        <option value=\\"0\\"<?=$r[isgood]==0?\\'' selected\\'':\\''\\''?>>不推荐</option>\r\n        <option value=\\"1\\"<?=$r[isgood]==1?\\'' selected\\'':\\''\\''?>>一级推荐</option>\r\n        <option value=\\"2\\"<?=$r[isgood]==2?\\'' selected\\'':\\''\\''?>>二级推荐</option>\r\n        <option value=\\"3\\"<?=$r[isgood]==3?\\'' selected\\'':\\''\\''?>>三级推荐</option>\r\n        <option value=\\"4\\"<?=$r[isgood]==4?\\'' selected\\'':\\''\\''?>>四级推荐</option>\r\n        <option value=\\"5\\"<?=$r[isgood]==5?\\'' selected\\'':\\''\\''?>>五级推荐</option>\r\n        <option value=\\"6\\"<?=$r[isgood]==6?\\'' selected\\'':\\''\\''?>>六级推荐</option>\r\n        <option value=\\"7\\"<?=$r[isgood]==7?\\'' selected\\'':\\''\\''?>>七级推荐</option>\r\n        <option value=\\"8\\"<?=$r[isgood]==8?\\'' selected\\'':\\''\\''?>>八级推荐</option>\r\n        <option value=\\"9\\"<?=$r[isgood]==9?\\'' selected\\'':\\''\\''?>>九级推荐</option>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\\"firsttitle\\" id=\\"firsttitle\\">\r\n        <option value=\\"0\\"<?=$r[firsttitle]==0?\\'' selected\\'':\\''\\''?>>非头条</option>\r\n        <option value=\\"1\\"<?=$r[firsttitle]==1?\\'' selected\\'':\\''\\''?>>一级头条</option>\r\n        <option value=\\"2\\"<?=$r[firsttitle]==2?\\'' selected\\'':\\''\\''?>>二级头条</option>\r\n        <option value=\\"3\\"<?=$r[firsttitle]==3?\\'' selected\\'':\\''\\''?>>三级头条</option>\r\n        <option value=\\"4\\"<?=$r[firsttitle]==4?\\'' selected\\'':\\''\\''?>>四级头条</option>\r\n        <option value=\\"5\\"<?=$r[firsttitle]==5?\\'' selected\\'':\\''\\''?>>五级头条</option>\r\n        <option value=\\"6\\"<?=$r[firsttitle]==6?\\'' selected\\'':\\''\\''?>>六级头条</option>\r\n        <option value=\\"7\\"<?=$r[firsttitle]==7?\\'' selected\\'':\\''\\''?>>七级头条</option>\r\n        <option value=\\"8\\"<?=$r[firsttitle]==8?\\'' selected\\'':\\''\\''?>>八级头条</option>\r\n        <option value=\\"9\\"<?=$r[firsttitle]==9?\\'' selected\\'':\\''\\''?>>九级头条</option>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\\"keyboard\\" type=\\"text\\" size=\\"52\\" value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">外部链接: \r\n      <input name=\\"titleurl\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titleurl])?>\\" size=\\"52\\">\r\n      <font color=\\"#666666\\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n', '特殊属性', 0, 1, 0, '', 0, '', '', 0, 2, 'download', 0, '', 0, 1, 1, '<input name=\\"keyboard\\" type=\\"text\\" size=42 value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(12, 'titlepic', '标题图片', 'img', '\r\n<input name=\\"titlepic\\" type=\\"text\\" id=\\"titlepic\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[titlepic]))?>\\" size=\\"45\\">\r\n<a onclick=\\"window.open(\\''ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&filepass=<?=$filepass?>&doing=1&field=titlepic\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\" title=\\"选择已上传的图片\\"><img src=\\"../data/images/changeimg.gif\\" border=\\"0\\" align=\\"absbottom\\"></a> \r\n', '标题图片', 0, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--titlepic--]\\" size=\\"20\\">\r\n      )</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\"add[qz_titlepic]\\" type=\\"text\\" id=\\"add[qz_titlepic]\\" value=\\"<?=stripSlashes($r[qz_titlepic])?>\\"> \r\n        <input name=\\"add[save_titlepic]\\" type=\\"checkbox\\" id=\\"add[save_titlepic]\\" value=\\" checked\\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\"add[zz_titlepic]\\" cols=\\"60\\" rows=\\"10\\" id=\\"add[zz_titlepic]\\"><?=htmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\"add[z_titlepic]\\" type=\\"text\\" id=\\"titlepic5\\" value=\\"<?=stripSlashes($r[z_titlepic])?>\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '200', 1, 2, 'download', 0, '', 0, 1, 1, '\r\n<input type=\\"file\\" name=\\"titlepicfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(13, 'newstime', '发布时间', 'text', '<input name=\\"newstime\\" type=\\"text\\" value=\\"<?=$r[newstime]?>\\"><input type=button name=button value=\\"设为当前时间\\" onclick=\\"document.add.newstime.value=\\''<?=$todaytime?>\\''\\">', '发布时间', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'INT', '10', 1, 2, 'download', 0, '', 0, 1, 1, '', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(14, 'softwriter', '作者', 'text', '<input name=\\"softwriter\\" type=\\"text\\" size=60 id=\\"softwriter\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[softwriter]))?>\\">\r\n', '作者', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--softwriter--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_softwriter]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_softwriter]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_softwriter]" type="text" id="add[z_softwriter]" value="<?=stripSlashes($r[z_softwriter])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '30', 1, 2, 'download', 0, '', 0, 1, 1, '<input name=\\"softwriter\\" type=\\"text\\" size=42 id=\\"softwriter\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''softwriter\\'',stripSlashes($r[softwriter]))?>\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(15, 'homepage', '官方网站', 'text', '<input name=\\"homepage\\" type=\\"text\\" size=60 id=\\"homepage\\" value=\\"<?=$ecmsfirstpost==1?\\"http://\\":htmlspecialchars(stripSlashes($r[homepage]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--homepage--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_homepage]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_homepage]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_homepage]" type="text" id="add[z_homepage]" value="<?=stripSlashes($r[z_homepage])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '80', 1, 2, 'download', 0, 'http://', 0, 1, 1, '<input name=\\"homepage\\" type=\\"text\\" size=42 id=\\"homepage\\" value=\\"<?=$ecmsfirstpost==1?\\"http://\\":DoReqValue($mid,\\''homepage\\'',stripSlashes($r[homepage]))?>\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(16, 'demo', '系统演示', 'text', '<input name=\\"demo\\" type=\\"text\\" size=60 id=\\"demo\\" value=\\"<?=$ecmsfirstpost==1?\\"http://\\":htmlspecialchars(stripSlashes($r[demo]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--demo--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_demo]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_demo]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_demo]" type="text" id="add[z_demo]" value="<?=stripSlashes($r[z_demo])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '120', 1, 2, 'download', 0, 'http://', 0, 1, 1, '<input name=\\"demo\\" type=\\"text\\" size=42 id=\\"demo\\" value=\\"<?=$ecmsfirstpost==1?\\"http://\\":DoReqValue($mid,\\''demo\\'',stripSlashes($r[demo]))?>\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(17, 'softfj', '运行环境', 'text', '<input name=\\"softfj\\" type=\\"text\\" size=60 id=\\"softfj\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[softfj]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--softfj--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_softfj]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_softfj]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_softfj]" type="text" id="add[z_softfj]" value="<?=stripSlashes($r[z_softfj])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '255', 1, 2, 'download', 0, '', 0, 1, 1, '<input name=\\"softfj\\" type=\\"text\\" size=42 id=\\"softfj\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''softfj\\'',stripSlashes($r[softfj]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(18, 'language', '软件语言', 'select', '<select name=\\"language\\" id=\\"language\\"><option value=\\"简体中文\\"<?=$r[language]==\\"简体中文\\"?\\'' selected\\'':\\''\\''?>>简体中文</option><option value=\\"繁体中文\\"<?=$r[language]==\\"繁体中文\\"?\\'' selected\\'':\\''\\''?>>繁体中文</option><option value=\\"英文\\"<?=$r[language]==\\"英文\\"?\\'' selected\\'':\\''\\''?>>英文</option><option value=\\"多国语言\\"<?=$r[language]==\\"多国语言\\"?\\'' selected\\'':\\''\\''?>>多国语言</option></select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--language--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_language]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_language]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_language]" type="text" id="add[z_language]" value="<?=stripSlashes($r[z_language])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '16', 1, 2, 'download', 0, '简体中文|繁体中文|英文|多国语言', 0, 1, 1, '<select name=\\"language\\" id=\\"language\\"><option value=\\"简体中文\\"<?=$r[language]==\\"简体中文\\"?\\'' selected\\'':\\''\\''?>>简体中文</option><option value=\\"繁体中文\\"<?=$r[language]==\\"繁体中文\\"?\\'' selected\\'':\\''\\''?>>繁体中文</option><option value=\\"英文\\"<?=$r[language]==\\"英文\\"?\\'' selected\\'':\\''\\''?>>英文</option><option value=\\"多国语言\\"<?=$r[language]==\\"多国语言\\"?\\'' selected\\'':\\''\\''?>>多国语言</option></select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(19, 'softtype', '软件类型', 'select', '<select name=\\"softtype\\" id=\\"softtype\\"><option value=\\"国产软件\\"<?=$r[softtype]==\\"国产软件\\"?\\'' selected\\'':\\''\\''?>>国产软件</option><option value=\\"汉化软件\\"<?=$r[softtype]==\\"汉化软件\\"?\\'' selected\\'':\\''\\''?>>汉化软件</option><option value=\\"国外软件\\"<?=$r[softtype]==\\"国外软件\\"?\\'' selected\\'':\\''\\''?>>国外软件</option></select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--softtype--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_softtype]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_softtype]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_softtype]" type="text" id="add[z_softtype]" value="<?=stripSlashes($r[z_softtype])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '16', 1, 2, 'download', 0, '国产软件|汉化软件|国外软件', 0, 1, 1, '<select name=\\"softtype\\" id=\\"softtype\\"><option value=\\"国产软件\\"<?=$r[softtype]==\\"国产软件\\"?\\'' selected\\'':\\''\\''?>>国产软件</option><option value=\\"汉化软件\\"<?=$r[softtype]==\\"汉化软件\\"?\\'' selected\\'':\\''\\''?>>汉化软件</option><option value=\\"国外软件\\"<?=$r[softtype]==\\"国外软件\\"?\\'' selected\\'':\\''\\''?>>国外软件</option></select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(20, 'softsq', '授权形式', 'select', '<select name=\\"softsq\\" id=\\"softsq\\"><option value=\\"共享软件\\"<?=$r[softsq]==\\"共享软件\\"?\\'' selected\\'':\\''\\''?>>共享软件</option><option value=\\"免费软件\\"<?=$r[softsq]==\\"免费软件\\"?\\'' selected\\'':\\''\\''?>>免费软件</option><option value=\\"自由软件\\"<?=$r[softsq]==\\"自由软件\\"?\\'' selected\\'':\\''\\''?>>自由软件</option><option value=\\"试用软件\\"<?=$r[softsq]==\\"试用软件\\"?\\'' selected\\'':\\''\\''?>>试用软件</option><option value=\\"演示软件\\"<?=$r[softsq]==\\"演示软件\\"?\\'' selected\\'':\\''\\''?>>演示软件</option><option value=\\"商业软件\\"<?=$r[softsq]==\\"商业软件\\"?\\'' selected\\'':\\''\\''?>>商业软件</option></select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--softsq--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_softsq]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_softsq]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_softsq]" type="text" id="add[z_softsq]" value="<?=stripSlashes($r[z_softsq])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '16', 1, 2, 'download', 0, '共享软件|免费软件|自由软件|试用软件|演示软件|商业软件', 0, 1, 1, '<select name=\\"softsq\\" id=\\"softsq\\"><option value=\\"共享软件\\"<?=$r[softsq]==\\"共享软件\\"?\\'' selected\\'':\\''\\''?>>共享软件</option><option value=\\"免费软件\\"<?=$r[softsq]==\\"免费软件\\"?\\'' selected\\'':\\''\\''?>>免费软件</option><option value=\\"自由软件\\"<?=$r[softsq]==\\"自由软件\\"?\\'' selected\\'':\\''\\''?>>自由软件</option><option value=\\"试用软件\\"<?=$r[softsq]==\\"试用软件\\"?\\'' selected\\'':\\''\\''?>>试用软件</option><option value=\\"演示软件\\"<?=$r[softsq]==\\"演示软件\\"?\\'' selected\\'':\\''\\''?>>演示软件</option><option value=\\"商业软件\\"<?=$r[softsq]==\\"商业软件\\"?\\'' selected\\'':\\''\\''?>>商业软件</option></select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(21, 'star', '软件等级', 'select', '<select name=\\"star\\" id=\\"star\\"><option value=\\"1\\"<?=$r[star]==\\"1\\"?\\'' selected\\'':\\''\\''?>>1星</option><option value=\\"2\\"<?=$r[star]==\\"2\\"||$ecmsfirstpost==1?\\'' selected\\'':\\''\\''?>>2星</option><option value=\\"3\\"<?=$r[star]==\\"3\\"?\\'' selected\\'':\\''\\''?>>3星</option><option value=\\"4\\"<?=$r[star]==\\"4\\"?\\'' selected\\'':\\''\\''?>>4星</option><option value=\\"5\\"<?=$r[star]==\\"5\\"?\\'' selected\\'':\\''\\''?>>5星</option></select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--star--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_star]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_star]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_star]" type="text" id="add[z_star]" value="<?=stripSlashes($r[z_star])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'TINYINT', '1', 1, 2, 'download', 0, '1|2:default|3|4|5', 0, 1, 1, '<select name=\\"star\\" id=\\"star\\"><option value=\\"1\\"<?=$r[star]==\\"1\\"?\\'' selected\\'':\\''\\''?>>1星</option><option value=\\"2\\"<?=$r[star]==\\"2\\"||$ecmsfirstpost==1?\\'' selected\\'':\\''\\''?>>2星</option><option value=\\"3\\"<?=$r[star]==\\"3\\"?\\'' selected\\'':\\''\\''?>>3星</option><option value=\\"4\\"<?=$r[star]==\\"4\\"?\\'' selected\\'':\\''\\''?>>4星</option><option value=\\"5\\"<?=$r[star]==\\"5\\"?\\'' selected\\'':\\''\\''?>>5星</option></select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(22, 'filetype', '文件类型', 'text', '<input name=\\"filetype\\" type=\\"text\\" id=\\"filetype\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[filetype]))?>\\">\r\n<select name=\\"select2\\" onchange=\\"document.add.filetype.value=this.value\\">\r\n        <option value=\\"\\">类型</option>\r\n        <option value=\\".zip\\">.zip</option>\r\n        <option value=\\".rar\\">.rar</option>\r\n        <option value=\\".exe\\">.exe</option>\r\n      </select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--filetype--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_filetype]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_filetype]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_filetype]" type="text" id="add[z_filetype]" value="<?=stripSlashes($r[z_filetype])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '10', 1, 2, 'download', 0, '', 0, 1, 1, '<input name=\\"filetype\\" type=\\"text\\" size=10 id=\\"filetype\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''filetype\\'',stripSlashes($r[filetype]))?>\\">\r\n<select name=\\"select2\\" onchange=\\"document.add.filetype.value=this.value\\">\r\n        <option value=\\"\\">类型</option>\r\n        <option value=\\".zip\\">.zip</option>\r\n        <option value=\\".rar\\">.rar</option>\r\n        <option value=\\".exe\\">.exe</option>\r\n      </select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(23, 'filesize', '文件大小', 'text', '<input name=\\"filesize\\" type=\\"text\\" id=\\"filesize\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[filesize]))?>\\">\r\n<select name=\\"select\\" onchange=\\"document.add.filesize.value+=this.value\\">\r\n        <option value=\\"\\">单位</option>\r\n        <option value=\\" MB\\">MB</option>\r\n        <option value=\\" KB\\">KB</option>\r\n        <option value=\\" GB\\">GB</option>\r\n        <option value=\\" BYTES\\">BYTES</option>\r\n      </select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--filesize--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_filesize]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_filesize]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_filesize]" type="text" id="add[z_filesize]" value="<?=stripSlashes($r[z_filesize])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '16', 1, 2, 'download', 0, '', 0, 1, 1, '<input name=\\"filesize\\" type=\\"text\\" size=10 id=\\"filesize\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''filesize\\'',stripSlashes($r[filesize]))?>\\">\r\n<select name=\\"select\\" onchange=\\"document.add.filesize.value+=this.value\\">\r\n        <option value=\\"\\">单位</option>\r\n        <option value=\\" MB\\">MB</option>\r\n        <option value=\\" KB\\">KB</option>\r\n        <option value=\\" GB\\">GB</option>\r\n        <option value=\\" BYTES\\">BYTES</option>\r\n      </select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0);
INSERT INTO `phome_enewsf` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `isadd`, `isshow`, `iscj`, `cjhtml`, `myorder`, `ftype`, `flen`, `dotemp`, `tid`, `tbname`, `savetxt`, `fvalue`, `iskey`, `tobr`, `dohtml`, `qfhtml`, `isonly`, `linkfieldval`, `samedata`, `fformsize`, `tbdataf`, `ispage`, `adddofun`, `editdofun`, `qadddofun`, `qeditdofun`, `linkfieldtb`, `linkfieldshow`, `editorys`, `issmalltext`) VALUES
(24, 'downpath', '下载地址', 'text', '<script>\r\nfunction doadd()\r\n{var i;\r\nvar str=\\"\\";\r\nvar oldi=0;\r\nvar j=0;\r\noldi=parseInt(document.add.editnum.value);\r\nfor(i=1;i<=document.add.downnum.value;i++)\r\n{\r\nj=i+oldi;\r\nstr=str+\\"<tr><td width=7%> <div align=center>\\"+j+\\"</div></td><td width=19%><div align=left><input name=downname[] type=text id=downname[] value=下载地址\\"+j+\\" size=17></div></td><td width=40%><input name=downpath[] type=text size=36 id=downpath\\"+j+\\" ondblclick=SpOpenChFile(0,\\''downpath\\"+j+\\"\\'')><select name=thedownqz[]><option value=\\''\\''>--地址前缀--</option><?=$newdownqz?></select></td><td width=21%><div align=center><select name=downuser[] id=select><option value=0>游客</option><?=$ygroup?></select></div></td><td width=13%><div align=center><input name=fen[] type=text id=fen[] value=0 size=6></div></td></tr>\\";\r\n}\r\ndocument.getElementById(\\"adddown\\").innerHTML=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\"+str+\\"</table>\\";\r\n}\r\n</script>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n  <tr>\r\n    <td height=\\"25\\">下载地址前缀&nbsp;:\r\n      <input name=\\"downurl_qz\\" type=\\"text\\" size=\\"32\\">\r\n      <select name=\\"changeurl_qz\\" onchange=\\"document.add.downurl_qz.value=document.add.changeurl_qz.value\\">\r\n        <option value=\\"\\" selected>选择前缀</option>\r\n        <?=$downurlqz?>\r\n      </select>\r\n	  </td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\\"25\\">选择/上传附件:\r\n      <input name=\\"changedown_url\\" id=\\"changedown_url\\" type=\\"text\\" size=\\"32\\">\r\n      <input type=\\"button\\" name=\\"Submit\\" value=\\"选择\\" onclick=\\"window.open(\\''ecmseditor/FileMain.php?type=0&classid=<?=$classid?>&filepass=<?=$filepass?>&doing=1&field=changedown_url\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\">&nbsp;\r\n	  <input type=\\"button\\" name=\\"Submit\\" value=\\"复制\\" onclick=\\"document.getElementById(\\''changedown_url\\'').focus();document.getElementById(\\''changedown_url\\'').select();clipboardData.setData(\\''text\\'',document.getElementById(\\''changedown_url\\'').value);\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#DBEAF5\\">\r\n        <tr> \r\n          <td width=\\"7%\\"> <div align=\\"center\\">编号</div></td>\r\n          <td width=\\"19%\\"><div align=\\"left\\">下载名称</div></td>\r\n          <td width=\\"40%\\">下载地址 <font color=\\"#666666\\">(双击选择)</font></td>\r\n          <td width=\\"21%\\"> <div align=\\"center\\">权限</div></td>\r\n          <td width=\\"13%\\"> <div align=\\"center\\">点数</div></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td>\r\n    <?php\r\n    if($ecmsfirstpost==1)\r\n    {\r\n    ?>\r\n	<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\r\n	<?php\r\n	$editnum=3;\r\n	for($pathi=1;$pathi<=$editnum;$pathi++)\r\n	{\r\n	?>\r\n           <tr> \r\n              <td width=\\''7%\\''> <div align=center><?=$pathi?></div></td>\r\n              <td width=\\''19%\\''> <div align=left> \r\n                  <input name=downname[] type=text value=\\''下载地址<?=$pathi?>\\'' size=17>\r\n                    </div></td>\r\n              <td width=\\''40%\\''>\r\n	      <input name=downpath[] type=text size=36 id=\\''downpath<?=$pathi?>\\'' ondblclick=\\"SpOpenChFile(0,\\''downpath<?=$pathi?>\\'');\\">\r\n	      <select name=thedownqz[]><option value=\\''\\''>--地址前缀--</option><?=$newdownqz?></select> \r\n                  </td>\r\n                  <td width=\\''21%\\''><div align=center> \r\n                      <select name=downuser[]>\r\n                        <option value=0>游客</option>\r\n                        <?=$ygroup?>\r\n                      </select>\r\n                    </div></td>\r\n                  <td width=\\''13%\\''> <div align=center> \r\n                      <input name=fen[] type=text value=0 size=6>\r\n                    </div></td>\r\n            </tr>\r\n	<?php\r\n	}\r\n	?>\r\n	</table>\r\n    <?php\r\n    }\r\n    else\r\n    {\r\n	$editnum=0;\r\n	$downloadpath=\\"\\";\r\n	if($r[downpath])\r\n	{\r\n		$r[downpath]=stripSlashes($r[downpath]);\r\n		//下载地址\r\n		$j=0;\r\n		$d_record=explode(\\"\\\\r\\\\n\\",$r[downpath]);\r\n		for($i=0;$i<count($d_record);$i++)\r\n		{\r\n			$j=$i+1;\r\n			$d_field=explode(\\"::::::\\",$d_record[$i]);\r\n			//权限\r\n			$tgroup=str_replace(\\" value=\\".$d_field[2].\\">\\",\\" value=\\".$d_field[2].\\" selected>\\",$ygroup);\r\n			//地址前缀\r\n			$tnewdownqz=str_replace(\\" value=\\''\\".$d_field[4].\\"\\''>\\",\\" value=\\''\\".$d_field[4].\\"\\'' selected>\\",$newdownqz);\r\n			$downloadpath.=\\"<tr><td width=\\''7%\\''><div align=center>\\".$j.\\"</div></td><td width=\\''19%\\''><div align=left><input name=downname[] type=text id=downname[] value=\\''\\".$d_field[0].\\"\\'' size=17></div></td><td width=\\''40%\\''><input name=downpath[] type=text id=downpath\\".$j.\\" value=\\''\\".$d_field[1].\\"\\'' size=36 ondblclick=\\\\\\"SpOpenChFile(0,\\''downpath\\".$j.\\"\\'');\\\\\\"><select name=thedownqz[]><option value=\\''\\''>--地址前缀--</option>\\".$tnewdownqz.\\"</select><input type=hidden name=pathid[] value=\\".$j.\\"><input type=checkbox name=delpathid[] value=\\".$j.\\">删</td><td width=\\''21%\\''><div align=center><select name=downuser[] id=select><option value=0>游客</option>\\".$tgroup.\\"</select></div></td><td width=\\''13%\\''><div align=center><input name=fen[] type=text id=fen[] value=\\''\\".$d_field[3].\\"\\'' size=6></div></td></tr>\\";\r\n		}\r\n		$editnum=$j;\r\n		$downloadpath=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\".$downloadpath.\\"</table>\\";\r\n	}\r\n	echo $downloadpath;\r\n    }\r\n    ?>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\">下载地址扩展数量: <input name=\\"editnum\\" type=\\"hidden\\" id=\\"editnum\\" value=\\"<?=$editnum?>\\">\r\n      <input name=\\"downnum\\" type=\\"text\\" id=\\"downnum\\" value=\\"1\\" size=\\"6\\"> <input type=\\"button\\" name=\\"Submit5\\" value=\\"输出地址\\" onclick=\\"javascript:doadd();\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td id=adddown></td>\r\n  </tr>\r\n</table>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (\r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--ecmsdownpathurl--]\\" size=\\"20\\">\r\n      <br>\r\n      <input name=\\"textfield2\\" type=\\"text\\" id=\\"textfield2\\" value=\\"[!--ecmsdownpathname--]\\" size=\\"20\\">\r\n      )<br>\r\n      格式:地址正则(url)[!empirecms!]名称正则(name)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_downpath]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=htmlspecialchars(stripSlashes($r[zz_downpath]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td>地址前缀:\r\n<input name=\\"add[qz_downpath]\\" type=\\"text\\" id=\\"add[qz_downpath]\\" value=\\"<?=stripSlashes($r[qz_downpath])?>\\">\r\n        </td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'MEDIUMTEXT', '', 1, 2, 'download', 0, '', 0, 1, 1, '<input type=\\"file\\" name=\\"downpathfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(25, 'softsay', '软件简介', 'textarea', '<textarea name=\\"softsay\\" cols=\\"80\\" rows=\\"10\\" id=\\"softsay\\"><?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[softsay]))?></textarea>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--softsay--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_softsay]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_softsay]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_softsay]" type="text" id="add[z_softsay]" value="<?=stripSlashes($r[z_softsay])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'TEXT', '', 1, 2, 'download', 0, '', 0, 1, 1, '<textarea name=\\"softsay\\" cols=\\"60\\" rows=\\"10\\" id=\\"softsay\\"><?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''softsay\\'',stripSlashes($r[softsay]))?></textarea>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 1),
(26, 'title', '标题', 'text', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">\r\n<?=$tts?\\"<select name=\\''ttid\\''><option value=\\''0\\''>标题分类</option>$tts</select>\\":\\"\\"?>\r\n	<input type=text name=title value=\\"<?=htmlspecialchars(stripSlashes($r[title]))?>\\" size=\\"60\\"> \r\n	<input type=\\"button\\" name=\\"button\\" value=\\"图文\\" onclick=\\"document.add.title.value=document.add.title.value+\\''(图文)\\'';\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">属性: \r\n	<input name=\\"titlefont[b]\\" type=\\"checkbox\\" value=\\"b\\"<?=$titlefontb?>>粗体\r\n	<input name=\\"titlefont[i]\\" type=\\"checkbox\\" value=\\"i\\"<?=$titlefonti?>>斜体\r\n	<input name=\\"titlefont[s]\\" type=\\"checkbox\\" value=\\"s\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\"titlecolor\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titlecolor])?>\\" size=\\"10\\"><a onclick=\\"foreColor();\\"><img src=\\"../data/images/color.gif\\" width=\\"21\\" height=\\"21\\" align=\\"absbottom\\"></a>\r\n  </td>\r\n</tr>\r\n</table>', '标题', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'VARCHAR', '200', 1, 3, 'photo', 0, '', 0, 1, 1, '<input name=\\"title\\" type=\\"text\\" size=\\"42\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''title\\'',stripSlashes($r[title]))?>\\">', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(27, 'special.field', '特殊属性', '', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n  <tr>\r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">信息属性: \r\n      <input name=\\"checked\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[checked]?\\'' checked\\'':\\''\\''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\\"isgood\\" id=\\"isgood\\">\r\n        <option value=\\"0\\"<?=$r[isgood]==0?\\'' selected\\'':\\''\\''?>>不推荐</option>\r\n        <option value=\\"1\\"<?=$r[isgood]==1?\\'' selected\\'':\\''\\''?>>一级推荐</option>\r\n        <option value=\\"2\\"<?=$r[isgood]==2?\\'' selected\\'':\\''\\''?>>二级推荐</option>\r\n        <option value=\\"3\\"<?=$r[isgood]==3?\\'' selected\\'':\\''\\''?>>三级推荐</option>\r\n        <option value=\\"4\\"<?=$r[isgood]==4?\\'' selected\\'':\\''\\''?>>四级推荐</option>\r\n        <option value=\\"5\\"<?=$r[isgood]==5?\\'' selected\\'':\\''\\''?>>五级推荐</option>\r\n        <option value=\\"6\\"<?=$r[isgood]==6?\\'' selected\\'':\\''\\''?>>六级推荐</option>\r\n        <option value=\\"7\\"<?=$r[isgood]==7?\\'' selected\\'':\\''\\''?>>七级推荐</option>\r\n        <option value=\\"8\\"<?=$r[isgood]==8?\\'' selected\\'':\\''\\''?>>八级推荐</option>\r\n        <option value=\\"9\\"<?=$r[isgood]==9?\\'' selected\\'':\\''\\''?>>九级推荐</option>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\\"firsttitle\\" id=\\"firsttitle\\">\r\n        <option value=\\"0\\"<?=$r[firsttitle]==0?\\'' selected\\'':\\''\\''?>>非头条</option>\r\n        <option value=\\"1\\"<?=$r[firsttitle]==1?\\'' selected\\'':\\''\\''?>>一级头条</option>\r\n        <option value=\\"2\\"<?=$r[firsttitle]==2?\\'' selected\\'':\\''\\''?>>二级头条</option>\r\n        <option value=\\"3\\"<?=$r[firsttitle]==3?\\'' selected\\'':\\''\\''?>>三级头条</option>\r\n        <option value=\\"4\\"<?=$r[firsttitle]==4?\\'' selected\\'':\\''\\''?>>四级头条</option>\r\n        <option value=\\"5\\"<?=$r[firsttitle]==5?\\'' selected\\'':\\''\\''?>>五级头条</option>\r\n        <option value=\\"6\\"<?=$r[firsttitle]==6?\\'' selected\\'':\\''\\''?>>六级头条</option>\r\n        <option value=\\"7\\"<?=$r[firsttitle]==7?\\'' selected\\'':\\''\\''?>>七级头条</option>\r\n        <option value=\\"8\\"<?=$r[firsttitle]==8?\\'' selected\\'':\\''\\''?>>八级头条</option>\r\n        <option value=\\"9\\"<?=$r[firsttitle]==9?\\'' selected\\'':\\''\\''?>>九级头条</option>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\\"keyboard\\" type=\\"text\\" size=\\"52\\" value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">外部链接: \r\n      <input name=\\"titleurl\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titleurl])?>\\" size=\\"52\\">\r\n      <font color=\\"#666666\\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n', '特殊属性', 0, 1, 0, '', 0, '', '', 0, 3, 'photo', 0, '', 0, 1, 1, '<input name=\\"keyboard\\" type=\\"text\\" size=\\"42\\" value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(28, 'titlepic', '标题图片', 'img', '\r\n<input name=\\"titlepic\\" type=\\"text\\" id=\\"titlepic\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[titlepic]))?>\\" size=\\"45\\">\r\n<a onclick=\\"window.open(\\''ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&filepass=<?=$filepass?>&doing=1&field=titlepic\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\" title=\\"选择已上传的图片\\"><img src=\\"../data/images/changeimg.gif\\" border=\\"0\\" align=\\"absbottom\\"></a> \r\n', '标题图片', 0, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--titlepic--]\\" size=\\"20\\">\r\n      )</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\"add[qz_titlepic]\\" type=\\"text\\" id=\\"add[qz_titlepic]\\" value=\\"<?=stripSlashes($r[qz_titlepic])?>\\"> \r\n        <input name=\\"add[save_titlepic]\\" type=\\"checkbox\\" id=\\"add[save_titlepic]\\" value=\\" checked\\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\"add[zz_titlepic]\\" cols=\\"60\\" rows=\\"10\\" id=\\"add[zz_titlepic]\\"><?=htmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\"add[z_titlepic]\\" type=\\"text\\" id=\\"titlepic5\\" value=\\"<?=stripSlashes($r[z_titlepic])?>\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 2, 'VARCHAR', '200', 1, 3, 'photo', 0, '', 0, 1, 1, '\r\n<input type=\\"file\\" name=\\"titlepicfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(29, 'newstime', '发布时间', 'text', '<input name=\\"newstime\\" type=\\"text\\" value=\\"<?=$r[newstime]?>\\"><input type=button name=button value=\\"设为当前时间\\" onclick=\\"document.add.newstime.value=\\''<?=$todaytime?>\\''\\">', '发布时间', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'INT', '10', 1, 3, 'photo', 0, '', 0, 1, 1, '', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(30, 'filesize', '文件大小', 'text', '<input name=\\"filesize\\" type=\\"text\\" size=60 id=\\"filesize\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[filesize]))?>\\">\r\n<select name=\\"select\\" onchange=\\"document.add.filesize.value+=this.value\\">\r\n        <option value=\\"\\">单位</option>\r\n        <option value=\\" MB\\">MB</option>\r\n        <option value=\\" KB\\">KB</option>\r\n        <option value=\\" GB\\">GB</option>\r\n        <option value=\\" BYTES\\">BYTES</option>\r\n      </select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--filesize--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_filesize]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_filesize]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_filesize]" type="text" id="add[z_filesize]" value="<?=stripSlashes($r[z_filesize])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '10', 1, 3, 'photo', 0, '', 0, 1, 1, '<input name=\\"filesize\\" type=\\"text\\" size=\\"42\\" id=\\"filesize\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''filesize\\'',stripSlashes($r[filesize]))?>\\">\r\n<select name=\\"select\\" onchange=\\"document.add.filesize.value+=this.value\\">\r\n        <option value=\\"\\">单位</option>\r\n        <option value=\\" MB\\">MB</option>\r\n        <option value=\\" KB\\">KB</option>\r\n        <option value=\\" GB\\">GB</option>\r\n        <option value=\\" BYTES\\">BYTES</option>\r\n      </select>', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(31, 'picsize', '图片尺寸', 'text', '<input name=\\"picsize\\" type=\\"text\\" id=\\"picsize\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[picsize]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--picsize--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_picsize]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_picsize]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_picsize]" type="text" id="add[z_picsize]" value="<?=stripSlashes($r[z_picsize])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '20', 1, 3, 'photo', 0, '', 0, 1, 1, '<input name=\\"picsize\\" type=\\"text\\" size=\\"42\\" id=\\"picsize\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''picsize\\'',stripSlashes($r[picsize]))?>\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(32, 'picfbl', '图片分辨率', 'text', '<input name=\\"picfbl\\" type=\\"text\\" id=\\"picfbl\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[picfbl]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--picfbl--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_picfbl]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_picfbl]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_picfbl]" type="text" id="add[z_picfbl]" value="<?=stripSlashes($r[z_picfbl])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '20', 1, 3, 'photo', 0, '', 0, 1, 1, '<input name=\\"picfbl\\" type=\\"text\\" size=\\"42\\" id=\\"picfbl\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''picfbl\\'',stripSlashes($r[picfbl]))?>\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(33, 'picfrom', '来源', 'text', '<input name=\\"picfrom\\" type=\\"text\\" size=60 id=\\"picfrom\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[picfrom]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--picfrom--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_picfrom]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_picfrom]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_picfrom]" type="text" id="add[z_picfrom]" value="<?=stripSlashes($r[z_picfrom])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '120', 1, 3, 'photo', 0, '', 0, 1, 1, '<input name=\\"picfrom\\" type=\\"text\\" size=\\"42\\" id=\\"picfrom\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''picfrom\\'',stripSlashes($r[picfrom]))?>\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(34, 'picurl', '图片大图', 'img', '\r\n<input name=\\"picurl\\" type=\\"text\\" id=\\"picurl\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[picurl]))?>\\" size=\\"45\\">\r\n<a onclick=\\"window.open(\\''ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&filepass=<?=$filepass?>&doing=1&field=picurl\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\" title=\\"选择已上传的图片\\"><img src=\\"../data/images/changeimg.gif\\" border=\\"0\\" align=\\"absbottom\\"></a> \r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--picurl--]\\" size=\\"20\\">\r\n      )</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\"add[qz_picurl]\\" type=\\"text\\" id=\\"add[qz_picurl]\\" value=\\"<?=stripSlashes($r[qz_picurl])?>\\"> \r\n        <input name=\\"add[save_picurl]\\" type=\\"checkbox\\" id=\\"add[save_picurl]\\" value=\\" checked\\"<?=$r[save_picurl]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\"add[zz_picurl]\\" cols=\\"60\\" rows=\\"10\\" id=\\"add[zz_picurl]\\"><?=htmlspecialchars(stripSlashes($r[zz_picurl]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\"add[z_picurl]\\" type=\\"text\\" id=\\"picurl5\\" value=\\"<?=stripSlashes($r[z_picurl])?>\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 2, 'VARCHAR', '200', 1, 3, 'photo', 0, '', 0, 1, 1, '\r\n<input type=\\"file\\" name=\\"picurlfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(35, 'morepic', '图片集', 'text', '<script>\r\nfunction dopicadd()\r\n{var i;\r\nvar str=\\"\\";\r\nvar oldi=0;\r\nvar j=0;\r\noldi=parseInt(document.add.morepicnum.value);\r\nfor(i=1;i<=document.add.downmorepicnum.value;i++)\r\n{\r\nj=i+oldi;\r\nstr=str+\\"<tr><td width=7%><div align=center>\\"+j+\\"</div></td><td width=33%><div align=center><input name=msmallpic[] type=text size=28 id=msmallpic\\"+j+\\" ondblclick=SpOpenChFile(1,\\''msmallpic\\"+j+\\"\\'')><br><input type=file name=msmallpfile[] size=15></div></td><td width=30%><div align=center><input name=mbigpic[] type=text size=28 id=mbigpic\\"+j+\\" ondblclick=SpOpenChFile(1,\\''mbigpic\\"+j+\\"\\'')><br><input type=file name=mbigpfile[] size=15></div></td><td width=30%><div align=center><input name=mpicname[] type=text></div></td></tr>\\";\r\n}\r\ndocument.getElementById(\\"addpicdown\\").innerHTML=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\"+str+\\"</table>\\";\r\n}\r\n</script>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n  <tr>\r\n    <td height=\\"25\\">\r\n	图片地址前缀:\r\n      <input name=\\"mpicurl_qz\\" type=\\"text\\" id=\\"mpicurl_qz\\">&nbsp;&nbsp;\r\n	  <input type=\\"checkbox\\" name=\\"msavepic\\" value=\\"1\\">远程保存&nbsp;<input type=\\"checkbox\\" name=\\"mcreatespic\\" value=\\"1\\" onclick=\\"if(this.checked){setmcreatespic.style.display=\\''\\'';}else{setmcreatespic.style.display=\\''none\\'';}\\">生成缩图\r\n	  <span id=\\"setmcreatespic\\" style=\\"display=none\\">：<input type=text name=\\"mcreatespicwidth\\" size=4 value=\\"<?=$public_r[spicwidth]?>\\">*<input type=text name=\\"mcreatespicheight\\" size=4 value=\\"<?=$public_r[spicheight]?>\\">(宽*高)</span>\r\n </td>\r\n  </tr>\r\n  <tr> \r\n    <td><table width=\\"100%\\" border=0 align=center cellpadding=3 cellspacing=1>\r\n  <tr bgcolor=\\"#DBEAF5\\"> \r\n    <td width=\\"7%\\"><div align=center>编号</div></td>\r\n    <td width=\\"33%\\"><div align=center>缩图 <font color=\\"#666666\\">(双击选择)</font></div></td>\r\n    <td width=\\"30%\\"><div align=center>大图 <font color=\\"#666666\\">(双击选择)</font></div></td>\r\n    <td width=\\"30%\\"><div align=center>图片说明</div></td>\r\n  </tr>\r\n</table></td>\r\n  </tr>\r\n  <tr> \r\n    <td>\r\n    <?php\r\n    if($ecmsfirstpost==1)\r\n    {\r\n	?>\r\n	<table width=\\''100%\\'' border=0 align=center cellpadding=3 cellspacing=1>\r\n	<?php\r\n	$morepicnum=3;\r\n	for($mppathi=1;$mppathi<=$morepicnum;$mppathi++)\r\n	{\r\n	?>\r\n	<tr> \r\n		<td width=\\''7%\\''><div align=center><?=$mppathi?></div></td>\r\n		<td width=\\''33%\\''><div align=center>\r\n		<input name=msmallpic[] type=text id=\\''msmallpic<?=$mppathi?>\\'' size=28 ondblclick=\\"SpOpenChFile(1,\\''msmallpic<?=$mppathi?>\\'');\\">\r\n		<br><input type=file name=msmallpfile[] size=15>\r\n		</div></td>\r\n		<td width=\\''30%\\''><div align=center>\r\n		<input name=mbigpic[] type=text id=\\''mbigpic<?=$mppathi?>\\'' size=28 ondblclick=\\"SpOpenChFile(1,\\''mbigpic<?=$mppathi?>\\'');\\">\r\n		<br><input type=file name=mbigpfile[] size=15>\r\n		</div></td>\r\n		<td width=\\''30%\\''><div align=center>\r\n		<input name=mpicname[] type=text id=\\''mpicname<?=$mppathi?>\\''>\r\n		</div></td>\r\n	</tr>\r\n	<?php\r\n	}\r\n	?>\r\n	</table>\r\n	<?php\r\n    }\r\n    else\r\n    {\r\n	$morepicpath=\\"\\";\r\n	$morepicnum=0;\r\n	if($r[morepic])\r\n    	{\r\n    		$r[morepic]=stripSlashes($r[morepic]);\r\n    		//地址\r\n    		$j=0;\r\n    		$pd_record=explode(\\"\\\\r\\\\n\\",$r[morepic]);\r\n    		for($i=0;$i<count($pd_record);$i++)\r\n    		{\r\n			$j=$i+1;\r\n    			$pd_field=explode(\\"::::::\\",$pd_record[$i]);\r\n			$morepicpath.=\\"<tr> \r\n    <td width=\\''7%\\''><div align=center>\\".$j.\\"</div></td>\r\n    <td width=\\''33%\\''><div align=center>\r\n        <input name=msmallpic[] type=text value=\\''\\".$pd_field[0].\\"\\'' size=28 id=msmallpic\\".$j.\\" ondblclick=\\\\\\"SpOpenChFile(1,\\''msmallpic\\".$j.\\"\\'');\\\\\\">\r\n		<br><input type=file name=msmallpfile[] size=15>\r\n      </div></td>\r\n    <td width=\\''30%\\''><div align=center>\r\n        <input name=mbigpic[] type=text value=\\''\\".$pd_field[1].\\"\\'' size=28 id=mbigpic\\".$j.\\" ondblclick=\\\\\\"SpOpenChFile(1,\\''mbigpic\\".$j.\\"\\'');\\\\\\">\r\n		<br><input type=file name=mbigpfile[] size=15>\r\n      </div></td>\r\n    <td width=\\''30%\\''><div align=center>\r\n        <input name=mpicname[] type=text value=\\''\\".$pd_field[2].\\"\\''><input type=hidden name=mpicid[] value=\\".$j.\\"><input type=checkbox name=mdelpicid[] value=\\".$j.\\">删\r\n      </div></td>\r\n  </tr>\\";\r\n    		}\r\n    		$morepicnum=$j;\r\n    		$morepicpath=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\".$morepicpath.\\"</table>\\";\r\n    	}\r\n	echo $morepicpath;\r\n    }\r\n    ?>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\">地址扩展数量: <input name=\\"morepicnum\\" type=\\"hidden\\" id=\\"morepicnum\\" value=\\"<?=$morepicnum?>\\">\r\n      <input name=\\"downmorepicnum\\" type=\\"text\\" value=\\"1\\" size=\\"6\\"> <input type=\\"button\\" name=\\"Submit5\\" value=\\"输出地址\\" onclick=\\"javascript:dopicadd();\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td id=addpicdown></td>\r\n  </tr>\r\n</table>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (\r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--ecmsspicurl--]\\" size=\\"20\\">\r\n      <br>\r\n      <input name=\\"textfield2\\" type=\\"text\\" id=\\"textfield2\\" value=\\"[!--ecmsbpicurl--]\\" size=\\"20\\">\r\n	  <br>\r\n      <input name=\\"textfield2\\" type=\\"text\\" id=\\"textfield2\\" value=\\"[!--ecmspicname--]\\" size=\\"20\\">\r\n      )<br>\r\n      格式:缩略图[!empirecms!]大图[!empirecms!]名称</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_morepic]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=htmlspecialchars(stripSlashes($r[zz_morepic]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td>地址前缀:\r\n<input name=\\"add[qz_morepic]\\" type=\\"text\\" id=\\"add[qz_morepic]\\" value=\\"<?=stripSlashes($r[qz_morepic])?>\\">\r\n<input name=\\"add[save_morepic]\\" type=\\"checkbox\\" id=\\"add[save_morepic]\\" value=\\" checked\\"<?=$r[save_morepic]?>>\r\n        远程保存\r\n        </td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'MEDIUMTEXT', '', 1, 3, 'photo', 0, '', 0, 1, 1, '<script>\r\nfunction dopicadd()\r\n{var i;\r\nvar str=\\"\\";\r\nvar oldi=0;\r\nvar j=0;\r\noldi=parseInt(document.add.morepicnum.value);\r\nfor(i=1;i<=document.add.downmorepicnum.value;i++)\r\n{\r\nj=i+oldi;\r\nstr=str+\\"<tr><td width=7%><div align=center>\\"+j+\\"</div></td><td width=33%><div align=center><input name=msmallpic[] type=text size=28 id=msmallpic\\"+j+\\"></div></td><td width=30%><div align=center><input name=mbigpic[] type=text size=28 id=mbigpic\\"+j+\\"></div></td><td width=30%><div align=center><input name=mpicname[] type=text></div></td></tr>\\";\r\n}\r\ndocument.getElementById(\\"addpicdown\\").innerHTML=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\"+str+\\"</table>\\";\r\n}\r\n</script>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n  <tr>\r\n    <td height=\\"25\\">\r\n	图片地址前缀:\r\n      <input name=\\"mpicurl_qz\\" type=\\"text\\" id=\\"mpicurl_qz\\" size=\\"32\\">\r\n      &nbsp;</td>\r\n  </tr>\r\n  <tr> \r\n    <td><table width=100% border=0 align=center cellpadding=3 cellspacing=1>\r\n  <tr bgcolor=\\''#DBEAF5\\''> \r\n    <td width=7%><div align=center>编号</div></td>\r\n    <td width=33%><div align=center>缩图</div></td>\r\n    <td width=30%><div align=center>大图</div></td>\r\n    <td width=30%><div align=center>图片说明</div></td>\r\n  </tr>\r\n</table></td>\r\n  </tr>\r\n  <tr> \r\n    <td> \r\n    <?php\r\n    if($ecmsfirstpost==1)\r\n    {\r\n	?>\r\n	<table width=\\''100%\\'' border=0 align=center cellpadding=3 cellspacing=1>\r\n	<?php\r\n	$morepicnum=3;\r\n	for($mppathi=1;$mppathi<=$morepicnum;$mppathi++)\r\n	{\r\n	?>\r\n	<tr> \r\n		<td width=\\''7%\\''><div align=center><?=$mppathi?></div></td>\r\n		<td width=\\''33%\\''><div align=center>\r\n		<input name=msmallpic[] type=text id=msmallpic[] size=28>\r\n		</div></td>\r\n		<td width=\\''30%\\''><div align=center>\r\n		<input name=mbigpic[] type=text id=mbigpic[] size=28>\r\n		</div></td>\r\n		<td width=\\''30%\\''><div align=center>\r\n		<input name=mpicname[] type=text id=mpicname[]>\r\n		</div></td>\r\n	</tr>\r\n	<?php\r\n	}\r\n	?>\r\n	</table>\r\n	<?php\r\n    }\r\n    else\r\n    {\r\n	$morepicpath=\\"\\";\r\n	$morepicnum=0;\r\n	if($r[morepic])\r\n	{\r\n		$r[morepic]=stripSlashes($r[morepic]);\r\n		//地址\r\n		$j=0;\r\n		$pd_record=explode(\\"\\\\r\\\\n\\",$r[morepic]);\r\n		for($i=0;$i<count($pd_record);$i++)\r\n		{\r\n			$j=$i+1;\r\n			$pd_field=explode(\\"::::::\\",$pd_record[$i]);\r\n			$morepicpath.=\\"<tr> \r\n	<td width=\\''7%\\''><div align=center>\\".$j.\\"</div></td>\r\n    <td width=\\''33%\\''><div align=center>\r\n        <input name=msmallpic[] type=text value=\\''\\".$pd_field[0].\\"\\'' size=28>\r\n      </div></td>\r\n    <td width=\\''30%\\''><div align=center>\r\n        <input name=mbigpic[] type=text value=\\''\\".$pd_field[1].\\"\\'' size=28>\r\n      </div></td>\r\n    <td width=\\''30%\\''><div align=center>\r\n        <input name=mpicname[] type=text value=\\''\\".$pd_field[2].\\"\\''><input type=hidden name=mpicid[] value=\\".$j.\\"><input type=checkbox name=mdelpicid[] value=\\".$j.\\">删\r\n      </div></td></tr>\\";\r\n		}\r\n		$morepicnum=$j;\r\n		$morepicpath=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\".$morepicpath.\\"</table>\\";\r\n	}\r\n	echo $morepicpath;\r\n    }\r\n    ?>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\">地址扩展数量: <input name=\\"morepicnum\\" type=\\"hidden\\" id=\\"morepicnum\\" value=\\"<?=$morepicnum?>\\">\r\n      <input name=\\"downmorepicnum\\" type=\\"text\\" value=\\"1\\" size=\\"6\\"> <input type=\\"button\\" name=\\"Submit5\\" value=\\"输出地址\\" onclick=\\"javascript:dopicadd();\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td id=addpicdown></td>\r\n  </tr>\r\n</table>\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(36, 'num', '每行显示条数', 'text', '<input name=\\"num\\" type=\\"text\\" size=3 id=\\"num\\" value=\\"<?=$ecmsfirstpost==1?\\"3\\":htmlspecialchars(stripSlashes($r[num]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--num--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_num]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_num]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_num]" type="text" id="add[z_num]" value="<?=stripSlashes($r[z_num])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'TINYINT', '', 1, 3, 'photo', 0, '3', 0, 1, 1, '<input name=\\"num\\" type=\\"text\\" size=3 id=\\"num\\" value=\\"<?=$ecmsfirstpost==1?\\"3\\":DoReqValue($mid,\\''num\\'',stripSlashes($r[num]))?>\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(37, 'width', '缩图宽度', 'text', '<input name=\\"width\\" type=\\"text\\" size=6 id=\\"width\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[width]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--width--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_width]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_width]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_width]" type="text" id="add[z_width]" value="<?=stripSlashes($r[z_width])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'VARCHAR', '12', 1, 3, 'photo', 0, '', 0, 1, 1, '<input name=\\"width\\" type=\\"text\\" size=6 id=\\"width\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''width\\'',stripSlashes($r[width]))?>\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(38, 'height', '缩图高度', 'text', '<input name=\\"height\\" type=\\"text\\" size=6 id=\\"height\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[height]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--height--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_height]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_height]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_height]" type="text" id="add[z_height]" value="<?=stripSlashes($r[z_height])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'VARCHAR', '12', 1, 3, 'photo', 0, '', 0, 1, 1, '<input name=\\"height\\" type=\\"text\\" size=6 id=\\"height\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''height\\'',stripSlashes($r[height]))?>\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(39, 'picsay', '图片简介', 'textarea', '<textarea name=\\"picsay\\" cols=\\"80\\" rows=\\"10\\" id=\\"picsay\\"><?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[picsay]))?></textarea>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--picsay--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_picsay]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_picsay]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_picsay]" type="text" id="add[z_picsay]" value="<?=stripSlashes($r[z_picsay])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'TEXT', '', 1, 3, 'photo', 0, '', 0, 1, 1, '<textarea name=\\"picsay\\" cols=\\"60\\" rows=\\"10\\" id=\\"picsay\\"><?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''picsay\\'',stripSlashes($r[picsay]))?></textarea>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 1),
(40, 'title', '标题', 'text', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">\r\n<?=$tts?\\"<select name=\\''ttid\\''><option value=\\''0\\''>标题分类</option>$tts</select>\\":\\"\\"?>\r\n	<input type=text name=title value=\\"<?=htmlspecialchars(stripSlashes($r[title]))?>\\" size=\\"60\\"> \r\n	<input type=\\"button\\" name=\\"button\\" value=\\"图文\\" onclick=\\"document.add.title.value=document.add.title.value+\\''(图文)\\'';\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">属性: \r\n	<input name=\\"titlefont[b]\\" type=\\"checkbox\\" value=\\"b\\"<?=$titlefontb?>>粗体\r\n	<input name=\\"titlefont[i]\\" type=\\"checkbox\\" value=\\"i\\"<?=$titlefonti?>>斜体\r\n	<input name=\\"titlefont[s]\\" type=\\"checkbox\\" value=\\"s\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\"titlecolor\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titlecolor])?>\\" size=\\"10\\"><a onclick=\\"foreColor();\\"><img src=\\"../data/images/color.gif\\" width=\\"21\\" height=\\"21\\" align=\\"absbottom\\"></a>\r\n  </td>\r\n</tr>\r\n</table>', '标题', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'VARCHAR', '200', 1, 4, 'flash', 0, '', 0, 1, 1, '<input name=\\"title\\" type=\\"text\\" size=\\"42\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''title\\'',stripSlashes($r[title]))?>\\">', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(41, 'special.field', '特殊属性', '', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n  <tr>\r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">信息属性: \r\n      <input name=\\"checked\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[checked]?\\'' checked\\'':\\''\\''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\\"isgood\\" id=\\"isgood\\">\r\n        <option value=\\"0\\"<?=$r[isgood]==0?\\'' selected\\'':\\''\\''?>>不推荐</option>\r\n        <option value=\\"1\\"<?=$r[isgood]==1?\\'' selected\\'':\\''\\''?>>一级推荐</option>\r\n        <option value=\\"2\\"<?=$r[isgood]==2?\\'' selected\\'':\\''\\''?>>二级推荐</option>\r\n        <option value=\\"3\\"<?=$r[isgood]==3?\\'' selected\\'':\\''\\''?>>三级推荐</option>\r\n        <option value=\\"4\\"<?=$r[isgood]==4?\\'' selected\\'':\\''\\''?>>四级推荐</option>\r\n        <option value=\\"5\\"<?=$r[isgood]==5?\\'' selected\\'':\\''\\''?>>五级推荐</option>\r\n        <option value=\\"6\\"<?=$r[isgood]==6?\\'' selected\\'':\\''\\''?>>六级推荐</option>\r\n        <option value=\\"7\\"<?=$r[isgood]==7?\\'' selected\\'':\\''\\''?>>七级推荐</option>\r\n        <option value=\\"8\\"<?=$r[isgood]==8?\\'' selected\\'':\\''\\''?>>八级推荐</option>\r\n        <option value=\\"9\\"<?=$r[isgood]==9?\\'' selected\\'':\\''\\''?>>九级推荐</option>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\\"firsttitle\\" id=\\"firsttitle\\">\r\n        <option value=\\"0\\"<?=$r[firsttitle]==0?\\'' selected\\'':\\''\\''?>>非头条</option>\r\n        <option value=\\"1\\"<?=$r[firsttitle]==1?\\'' selected\\'':\\''\\''?>>一级头条</option>\r\n        <option value=\\"2\\"<?=$r[firsttitle]==2?\\'' selected\\'':\\''\\''?>>二级头条</option>\r\n        <option value=\\"3\\"<?=$r[firsttitle]==3?\\'' selected\\'':\\''\\''?>>三级头条</option>\r\n        <option value=\\"4\\"<?=$r[firsttitle]==4?\\'' selected\\'':\\''\\''?>>四级头条</option>\r\n        <option value=\\"5\\"<?=$r[firsttitle]==5?\\'' selected\\'':\\''\\''?>>五级头条</option>\r\n        <option value=\\"6\\"<?=$r[firsttitle]==6?\\'' selected\\'':\\''\\''?>>六级头条</option>\r\n        <option value=\\"7\\"<?=$r[firsttitle]==7?\\'' selected\\'':\\''\\''?>>七级头条</option>\r\n        <option value=\\"8\\"<?=$r[firsttitle]==8?\\'' selected\\'':\\''\\''?>>八级头条</option>\r\n        <option value=\\"9\\"<?=$r[firsttitle]==9?\\'' selected\\'':\\''\\''?>>九级头条</option>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\\"keyboard\\" type=\\"text\\" size=\\"52\\" value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">外部链接: \r\n      <input name=\\"titleurl\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titleurl])?>\\" size=\\"52\\">\r\n      <font color=\\"#666666\\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n', '特殊属性', 0, 1, 0, '', 0, '', '', 0, 4, 'flash', 0, '', 0, 1, 1, '<input name=\\"keyboard\\" type=\\"text\\" size=42 value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(42, 'titlepic', '标题图片', 'img', '\r\n<input name=\\"titlepic\\" type=\\"text\\" id=\\"titlepic\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[titlepic]))?>\\" size=\\"45\\">\r\n<a onclick=\\"window.open(\\''ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&filepass=<?=$filepass?>&doing=1&field=titlepic\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\" title=\\"选择已上传的图片\\"><img src=\\"../data/images/changeimg.gif\\" border=\\"0\\" align=\\"absbottom\\"></a> \r\n', '标题图片', 0, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--titlepic--]\\" size=\\"20\\">\r\n      )</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\"add[qz_titlepic]\\" type=\\"text\\" id=\\"add[qz_titlepic]\\" value=\\"<?=stripSlashes($r[qz_titlepic])?>\\"> \r\n        <input name=\\"add[save_titlepic]\\" type=\\"checkbox\\" id=\\"add[save_titlepic]\\" value=\\" checked\\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\"add[zz_titlepic]\\" cols=\\"60\\" rows=\\"10\\" id=\\"add[zz_titlepic]\\"><?=htmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\"add[z_titlepic]\\" type=\\"text\\" id=\\"titlepic5\\" value=\\"<?=stripSlashes($r[z_titlepic])?>\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '200', 1, 4, 'flash', 0, '', 0, 1, 1, '\r\n<input type=\\"file\\" name=\\"titlepicfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(43, 'newstime', '发布时间', 'text', '<input name=\\"newstime\\" type=\\"text\\" value=\\"<?=$r[newstime]?>\\"><input type=button name=button value=\\"设为当前时间\\" onclick=\\"document.add.newstime.value=\\''<?=$todaytime?>\\''\\">', '发布时间', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'INT', '10', 1, 4, 'flash', 0, '', 0, 1, 1, '', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0);
INSERT INTO `phome_enewsf` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `isadd`, `isshow`, `iscj`, `cjhtml`, `myorder`, `ftype`, `flen`, `dotemp`, `tid`, `tbname`, `savetxt`, `fvalue`, `iskey`, `tobr`, `dohtml`, `qfhtml`, `isonly`, `linkfieldval`, `samedata`, `fformsize`, `tbdataf`, `ispage`, `adddofun`, `editdofun`, `qadddofun`, `qeditdofun`, `linkfieldtb`, `linkfieldshow`, `editorys`, `issmalltext`) VALUES
(44, 'flashwriter', '作者', 'text', '<input name=\\"flashwriter\\" type=\\"text\\" size=60 id=\\"flashwriter\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[flashwriter]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--flashwriter--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_flashwriter]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_flashwriter]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_flashwriter]" type="text" id="add[z_flashwriter]" value="<?=stripSlashes($r[z_flashwriter])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '30', 1, 4, 'flash', 0, '', 0, 1, 1, '<input name=\\"flashwriter\\" type=\\"text\\" size=42 id=\\"flashwriter\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''flashwriter\\'',stripSlashes($r[flashwriter]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(45, 'email', '作者邮箱', 'text', '<input name=\\"email\\" type=\\"text\\" size=60 id=\\"email\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[email]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--email--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_email]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_email]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_email]" type="text" id="add[z_email]" value="<?=stripSlashes($r[z_email])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '80', 1, 4, 'flash', 0, '', 0, 1, 1, '<input name=\\"email\\" type=\\"text\\" size=42 id=\\"email\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''email\\'',stripSlashes($r[email]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(46, 'star', '作品等级', 'select', '<select name=\\"star\\" id=\\"star\\"><option value=\\"1\\"<?=$r[star]==\\"1\\"?\\'' selected\\'':\\''\\''?>>1星</option><option value=\\"2\\"<?=$r[star]==\\"2\\"||$ecmsfirstpost==1?\\'' selected\\'':\\''\\''?>>2星</option><option value=\\"3\\"<?=$r[star]==\\"3\\"?\\'' selected\\'':\\''\\''?>>3星</option><option value=\\"4\\"<?=$r[star]==\\"4\\"?\\'' selected\\'':\\''\\''?>>4星</option><option value=\\"5\\"<?=$r[star]==\\"5\\"?\\'' selected\\'':\\''\\''?>>5星</option></select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--star--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_star]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_star]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_star]" type="text" id="add[z_star]" value="<?=stripSlashes($r[z_star])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'TINYINT', '1', 1, 4, 'flash', 0, '1|2:default|3|4|5', 0, 1, 1, '<select name=\\"star\\" id=\\"star\\"><option value=\\"1\\"<?=$r[star]==\\"1\\"?\\'' selected\\'':\\''\\''?>>1星</option><option value=\\"2\\"<?=$r[star]==\\"2\\"||$ecmsfirstpost==1?\\'' selected\\'':\\''\\''?>>2星</option><option value=\\"3\\"<?=$r[star]==\\"3\\"?\\'' selected\\'':\\''\\''?>>3星</option><option value=\\"4\\"<?=$r[star]==\\"4\\"?\\'' selected\\'':\\''\\''?>>4星</option><option value=\\"5\\"<?=$r[star]==\\"5\\"?\\'' selected\\'':\\''\\''?>>5星</option></select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(47, 'filesize', '文件大小', 'text', '<input name=\\"filesize\\" type=\\"text\\" size=60 id=\\"filesize\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[filesize]))?>\\">\r\n<select name=\\"select\\" onchange=\\"document.add.filesize.value+=this.value\\">\r\n        <option value=\\"\\">单位</option>\r\n        <option value=\\" MB\\">MB</option>\r\n        <option value=\\" KB\\">KB</option>\r\n        <option value=\\" GB\\">GB</option>\r\n        <option value=\\" BYTES\\">BYTES</option>\r\n      </select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--filesize--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_filesize]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_filesize]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_filesize]" type="text" id="add[z_filesize]" value="<?=stripSlashes($r[z_filesize])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '16', 1, 4, 'flash', 0, '', 0, 1, 1, '<input name=\\"filesize\\" type=\\"text\\" size=42 id=\\"filesize\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''filesize\\'',stripSlashes($r[filesize]))?>\\">\r\n<select name=\\"select\\" onchange=\\"document.add.filesize.value+=this.value\\">\r\n        <option value=\\"\\">单位</option>\r\n        <option value=\\" MB\\">MB</option>\r\n        <option value=\\" KB\\">KB</option>\r\n        <option value=\\" GB\\">GB</option>\r\n        <option value=\\" BYTES\\">BYTES</option>\r\n      </select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(48, 'flashurl', 'Flash地址', 'flash', '\r\n<input name=\\"flashurl\\" type=\\"text\\" id=\\"flashurl\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[flashurl]))?>\\" size=\\"45\\">\r\n<a onclick=\\"window.open(\\''ecmseditor/FileMain.php?type=2&classid=<?=$classid?>&filepass=<?=$filepass?>&doing=1&field=flashurl\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\" title=\\"选择已上传的FLASH\\"><img src=\\"../data/images/changeflash.gif\\" border=\\"0\\" align=\\"absbottom\\"></a> \r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--flashurl--]\\" size=\\"20\\">\r\n      )</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\"add[qz_flashurl]\\" type=\\"text\\" id=\\"add[qz_flashurl]\\" value=\\"<?=stripSlashes($r[qz_flashurl])?>\\"> \r\n        <input name=\\"add[save_flashurl]\\" type=\\"checkbox\\" id=\\"add[save_flashurl]\\" value=\\" checked\\"<?=$r[save_flashurl]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\"add[zz_flashurl]\\" cols=\\"60\\" rows=\\"10\\" id=\\"add[zz_flashurl]\\"><?=htmlspecialchars(stripSlashes($r[zz_flashurl]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\"add[z_flashurl]\\" type=\\"text\\" id=\\"flashurl5\\" value=\\"<?=stripSlashes($r[z_flashurl])?>\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '255', 1, 4, 'flash', 0, '', 0, 1, 1, '\r\n<input type=\\"file\\" name=\\"flashurlfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(49, 'width', 'Flash宽度', 'text', '<input name=\\"width\\" type=\\"text\\" size=6 id=\\"width\\" value=\\"<?=$ecmsfirstpost==1?\\"600\\":htmlspecialchars(stripSlashes($r[width]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--width--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_width]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_width]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_width]" type="text" id="add[z_width]" value="<?=stripSlashes($r[z_width])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '12', 1, 4, 'flash', 0, '600', 0, 1, 1, '<input name=\\"width\\" type=\\"text\\" size=6 id=\\"width\\" value=\\"<?=$ecmsfirstpost==1?\\"600\\":DoReqValue($mid,\\''width\\'',stripSlashes($r[width]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(50, 'height', 'Flash高度', 'text', '<input name=\\"height\\" type=\\"text\\" size=6 id=\\"height\\" value=\\"<?=$ecmsfirstpost==1?\\"450\\":htmlspecialchars(stripSlashes($r[height]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--height--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_height]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_height]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_height]" type="text" id="add[z_height]" value="<?=stripSlashes($r[z_height])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '12', 1, 4, 'flash', 0, '450', 0, 1, 1, '<input name=\\"height\\" type=\\"text\\" size=6 id=\\"height\\" value=\\"<?=$ecmsfirstpost==1?\\"450\\":DoReqValue($mid,\\''height\\'',stripSlashes($r[height]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(51, 'flashsay', '作品简介', 'textarea', '<textarea name=\\"flashsay\\" cols=\\"80\\" rows=\\"10\\" id=\\"flashsay\\"><?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[flashsay]))?></textarea>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--flashsay--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_flashsay]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_flashsay]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_flashsay]" type="text" id="add[z_flashsay]" value="<?=stripSlashes($r[z_flashsay])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'TEXT', '', 1, 4, 'flash', 0, '', 0, 1, 1, '<textarea name=\\"flashsay\\" cols=\\"60\\" rows=\\"10\\" id=\\"flashsay\\"><?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''flashsay\\'',stripSlashes($r[flashsay]))?></textarea>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 1),
(52, 'title', '标题', 'text', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">\r\n<?=$tts?\\"<select name=\\''ttid\\''><option value=\\''0\\''>标题分类</option>$tts</select>\\":\\"\\"?>\r\n	<input type=text name=title value=\\"<?=htmlspecialchars(stripSlashes($r[title]))?>\\" size=\\"60\\"> \r\n	<input type=\\"button\\" name=\\"button\\" value=\\"图文\\" onclick=\\"document.add.title.value=document.add.title.value+\\''(图文)\\'';\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">属性: \r\n	<input name=\\"titlefont[b]\\" type=\\"checkbox\\" value=\\"b\\"<?=$titlefontb?>>粗体\r\n	<input name=\\"titlefont[i]\\" type=\\"checkbox\\" value=\\"i\\"<?=$titlefonti?>>斜体\r\n	<input name=\\"titlefont[s]\\" type=\\"checkbox\\" value=\\"s\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\"titlecolor\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titlecolor])?>\\" size=\\"10\\"><a onclick=\\"foreColor();\\"><img src=\\"../data/images/color.gif\\" width=\\"21\\" height=\\"21\\" align=\\"absbottom\\"></a>\r\n  </td>\r\n</tr>\r\n</table>', '标题', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'VARCHAR', '200', 1, 5, 'movie', 0, '', 0, 1, 1, '<input name=\\"title\\" type=\\"text\\" size=\\"30\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''title\\'',stripSlashes($r[title]))?>\\">', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(53, 'special.field', '特殊属性', '', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n  <tr>\r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">信息属性: \r\n      <input name=\\"checked\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[checked]?\\'' checked\\'':\\''\\''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\\"isgood\\" id=\\"isgood\\">\r\n        <option value=\\"0\\"<?=$r[isgood]==0?\\'' selected\\'':\\''\\''?>>不推荐</option>\r\n        <option value=\\"1\\"<?=$r[isgood]==1?\\'' selected\\'':\\''\\''?>>一级推荐</option>\r\n        <option value=\\"2\\"<?=$r[isgood]==2?\\'' selected\\'':\\''\\''?>>二级推荐</option>\r\n        <option value=\\"3\\"<?=$r[isgood]==3?\\'' selected\\'':\\''\\''?>>三级推荐</option>\r\n        <option value=\\"4\\"<?=$r[isgood]==4?\\'' selected\\'':\\''\\''?>>四级推荐</option>\r\n        <option value=\\"5\\"<?=$r[isgood]==5?\\'' selected\\'':\\''\\''?>>五级推荐</option>\r\n        <option value=\\"6\\"<?=$r[isgood]==6?\\'' selected\\'':\\''\\''?>>六级推荐</option>\r\n        <option value=\\"7\\"<?=$r[isgood]==7?\\'' selected\\'':\\''\\''?>>七级推荐</option>\r\n        <option value=\\"8\\"<?=$r[isgood]==8?\\'' selected\\'':\\''\\''?>>八级推荐</option>\r\n        <option value=\\"9\\"<?=$r[isgood]==9?\\'' selected\\'':\\''\\''?>>九级推荐</option>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\\"firsttitle\\" id=\\"firsttitle\\">\r\n        <option value=\\"0\\"<?=$r[firsttitle]==0?\\'' selected\\'':\\''\\''?>>非头条</option>\r\n        <option value=\\"1\\"<?=$r[firsttitle]==1?\\'' selected\\'':\\''\\''?>>一级头条</option>\r\n        <option value=\\"2\\"<?=$r[firsttitle]==2?\\'' selected\\'':\\''\\''?>>二级头条</option>\r\n        <option value=\\"3\\"<?=$r[firsttitle]==3?\\'' selected\\'':\\''\\''?>>三级头条</option>\r\n        <option value=\\"4\\"<?=$r[firsttitle]==4?\\'' selected\\'':\\''\\''?>>四级头条</option>\r\n        <option value=\\"5\\"<?=$r[firsttitle]==5?\\'' selected\\'':\\''\\''?>>五级头条</option>\r\n        <option value=\\"6\\"<?=$r[firsttitle]==6?\\'' selected\\'':\\''\\''?>>六级头条</option>\r\n        <option value=\\"7\\"<?=$r[firsttitle]==7?\\'' selected\\'':\\''\\''?>>七级头条</option>\r\n        <option value=\\"8\\"<?=$r[firsttitle]==8?\\'' selected\\'':\\''\\''?>>八级头条</option>\r\n        <option value=\\"9\\"<?=$r[firsttitle]==9?\\'' selected\\'':\\''\\''?>>九级头条</option>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\\"keyboard\\" type=\\"text\\" size=\\"52\\" value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">外部链接: \r\n      <input name=\\"titleurl\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titleurl])?>\\" size=\\"52\\">\r\n      <font color=\\"#666666\\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n', '特殊属性', 0, 1, 0, '', 0, '', '', 0, 5, 'movie', 0, '', 0, 1, 1, '关键字: \r\n      <input name=\\"keyboard\\" type=\\"text\\" value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(54, 'titlepic', '标题图片', 'img', '\r\n<input name=\\"titlepic\\" type=\\"text\\" id=\\"titlepic\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[titlepic]))?>\\" size=\\"45\\">\r\n<a onclick=\\"window.open(\\''ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&filepass=<?=$filepass?>&doing=1&field=titlepic\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\" title=\\"选择已上传的图片\\"><img src=\\"../data/images/changeimg.gif\\" border=\\"0\\" align=\\"absbottom\\"></a> \r\n', '标题图片', 0, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--titlepic--]\\" size=\\"20\\">\r\n      )</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\"add[qz_titlepic]\\" type=\\"text\\" id=\\"add[qz_titlepic]\\" value=\\"<?=stripSlashes($r[qz_titlepic])?>\\"> \r\n        <input name=\\"add[save_titlepic]\\" type=\\"checkbox\\" id=\\"add[save_titlepic]\\" value=\\" checked\\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\"add[zz_titlepic]\\" cols=\\"60\\" rows=\\"10\\" id=\\"add[zz_titlepic]\\"><?=htmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\"add[z_titlepic]\\" type=\\"text\\" id=\\"titlepic5\\" value=\\"<?=stripSlashes($r[z_titlepic])?>\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '200', 1, 5, 'movie', 0, '', 0, 1, 1, '\r\n<input type=\\"file\\" name=\\"titlepicfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(55, 'newstime', '发布时间', 'text', '<input name=\\"newstime\\" type=\\"text\\" value=\\"<?=$r[newstime]?>\\"><input type=button name=button value=\\"设为当前时间\\" onclick=\\"document.add.newstime.value=\\''<?=$todaytime?>\\''\\">', '发布时间', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'INT', '10', 1, 5, 'movie', 0, '', 0, 1, 1, '', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(56, 'movietype', '影片类型', 'select', '<select name=\\"movietype\\" id=\\"movietype\\"><option value=\\"港台影视\\"<?=$r[movietype]==\\"港台影视\\"?\\'' selected\\'':\\''\\''?>>港台影视</option><option value=\\"海外影视\\"<?=$r[movietype]==\\"海外影视\\"?\\'' selected\\'':\\''\\''?>>海外影视</option><option value=\\"大陆影视\\"<?=$r[movietype]==\\"大陆影视\\"?\\'' selected\\'':\\''\\''?>>大陆影视</option><option value=\\"日韩影视\\"<?=$r[movietype]==\\"日韩影视\\"?\\'' selected\\'':\\''\\''?>>日韩影视</option></select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--movietype--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_movietype]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_movietype]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_movietype]" type="text" id="add[z_movietype]" value="<?=stripSlashes($r[z_movietype])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '16', 1, 5, 'movie', 0, '港台影视|海外影视|大陆影视|日韩影视', 0, 1, 1, '<select name=\\"movietype\\" id=\\"movietype\\"><option value=\\"港台影视\\"<?=$r[movietype]==\\"港台影视\\"?\\'' selected\\'':\\''\\''?>>港台影视</option><option value=\\"海外影视\\"<?=$r[movietype]==\\"海外影视\\"?\\'' selected\\'':\\''\\''?>>海外影视</option><option value=\\"大陆影视\\"<?=$r[movietype]==\\"大陆影视\\"?\\'' selected\\'':\\''\\''?>>大陆影视</option><option value=\\"日韩影视\\"<?=$r[movietype]==\\"日韩影视\\"?\\'' selected\\'':\\''\\''?>>日韩影视</option></select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(57, 'company', '出品公司', 'text', '\r\n<input name="company" type="text" id="company" value="<?=$ecmsfirstpost==1?"":htmlspecialchars(stripSlashes($r[company]))?>">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--company--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_company]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_company]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_company]" type="text" id="add[z_company]" value="<?=stripSlashes($r[z_company])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '200', 1, 5, 'movie', 0, '', 0, 1, 1, '\r\n<input name="company" type="text" id="company" value="<?=$ecmsfirstpost==1?"":DoReqValue($mid,''company'',stripSlashes($r[company]))?>">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(58, 'movietime', '出品时间', 'text', '\r\n<input name="movietime" type="text" id="movietime" value="<?=$ecmsfirstpost==1?"":htmlspecialchars(stripSlashes($r[movietime]))?>">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--movietime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_movietime]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_movietime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_movietime]" type="text" id="add[z_movietime]" value="<?=stripSlashes($r[z_movietime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '20', 1, 5, 'movie', 0, '', 0, 1, 1, '\r\n<input name="movietime" type="text" id="movietime" value="<?=$ecmsfirstpost==1?"":DoReqValue($mid,''movietime'',stripSlashes($r[movietime]))?>">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(59, 'player', '主演', 'text', '\r\n<input name="player" type="text" id="player" value="<?=$ecmsfirstpost==1?"":htmlspecialchars(stripSlashes($r[player]))?>">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--player--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_player]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_player]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_player]" type="text" id="add[z_player]" value="<?=stripSlashes($r[z_player])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '255', 1, 5, 'movie', 0, '', 0, 1, 1, '\r\n<input name="player" type="text" id="player" value="<?=$ecmsfirstpost==1?"":DoReqValue($mid,''player'',stripSlashes($r[player]))?>">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(60, 'playadmin', '导演', 'text', '\r\n<input name="playadmin" type="text" id="playadmin" value="<?=$ecmsfirstpost==1?"":htmlspecialchars(stripSlashes($r[playadmin]))?>">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--playadmin--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_playadmin]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_playadmin]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_playadmin]" type="text" id="add[z_playadmin]" value="<?=stripSlashes($r[z_playadmin])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '255', 1, 5, 'movie', 0, '', 0, 1, 1, '\r\n<input name="playadmin" type="text" id="playadmin" value="<?=$ecmsfirstpost==1?"":DoReqValue($mid,''playadmin'',stripSlashes($r[playadmin]))?>">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(61, 'filetype', '影片格式', 'text', '<input name=\\"filetype\\" type=\\"text\\" size=8 id=\\"filetype\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[filetype]))?>\\">\r\n<select name=\\"select2\\" onchange=\\"document.add.filetype.value=this.value\\">\r\n        <option value=\\"\\">类型</option>\r\n        <option value=\\".rm\\">.rm</option>\r\n        <option value=\\".rmvb\\">.rmvb</option>\r\n        <option value=\\".mp3\\">.mp3</option>\r\n        <option value=\\".asf\\">.asf</option>\r\n        <option value=\\".wmv\\">.wmv</option>\r\n        <option value=\\".avi\\">.avi</option>\r\n      </select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--filetype--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_filetype]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_filetype]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_filetype]" type="text" id="add[z_filetype]" value="<?=stripSlashes($r[z_filetype])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '10', 1, 5, 'movie', 0, '', 0, 1, 1, '<input name=\\"filetype\\" type=\\"text\\" id=\\"filetype\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''filetype\\'',stripSlashes($r[filetype]))?>\\">\r\n<select name=\\"select2\\" onchange=\\"document.add.filetype.value=this.value\\">\r\n        <option value=\\"\\">类型</option>\r\n        <option value=\\".rm\\">.rm</option>\r\n        <option value=\\".rmvb\\">.rmvb</option>\r\n        <option value=\\".mp3\\">.mp3</option>\r\n        <option value=\\".asf\\">.asf</option>\r\n        <option value=\\".wmv\\">.wmv</option>\r\n        <option value=\\".avi\\">.avi</option>\r\n      </select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(62, 'filesize', '影片大小', 'text', '<input name=\\"filesize\\" type=\\"text\\" size=12 id=\\"filesize\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[filesize]))?>\\">\r\n<select name=\\"select\\" onchange=\\"document.add.filesize.value+=this.value\\">\r\n        <option value=\\"\\">单位</option>\r\n        <option value=\\" MB\\">MB</option>\r\n        <option value=\\" KB\\">KB</option>\r\n        <option value=\\" GB\\">GB</option>\r\n        <option value=\\" BYTES\\">BYTES</option>\r\n      </select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--filesize--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_filesize]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_filesize]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_filesize]" type="text" id="add[z_filesize]" value="<?=stripSlashes($r[z_filesize])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '16', 1, 5, 'movie', 0, '', 0, 1, 1, '<input name=\\"filesize\\" type=\\"text\\" id=\\"filesize\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''filesize\\'',stripSlashes($r[filesize]))?>\\">\r\n<select name=\\"select\\" onchange=\\"document.add.filesize.value+=this.value\\">\r\n        <option value=\\"\\">单位</option>\r\n        <option value=\\" MB\\">MB</option>\r\n        <option value=\\" KB\\">KB</option>\r\n        <option value=\\" GB\\">GB</option>\r\n        <option value=\\" BYTES\\">BYTES</option>\r\n      </select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(63, 'star', '推荐等级', 'select', '<select name=\\"star\\" id=\\"star\\"><option value=\\"1\\"<?=$r[star]==\\"1\\"?\\'' selected\\'':\\''\\''?>>1星</option><option value=\\"2\\"<?=$r[star]==\\"2\\"||$ecmsfirstpost==1?\\'' selected\\'':\\''\\''?>>2星</option><option value=\\"3\\"<?=$r[star]==\\"3\\"?\\'' selected\\'':\\''\\''?>>3星</option><option value=\\"4\\"<?=$r[star]==\\"4\\"?\\'' selected\\'':\\''\\''?>>4星</option><option value=\\"5\\"<?=$r[star]==\\"5\\"?\\'' selected\\'':\\''\\''?>>5星</option></select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--star--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_star]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_star]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_star]" type="text" id="add[z_star]" value="<?=stripSlashes($r[z_star])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'TINYINT', '1', 1, 5, 'movie', 0, '1|2:default|3|4|5', 0, 1, 1, '<select name=\\"star\\" id=\\"star\\"><option value=\\"1\\"<?=$r[star]==\\"1\\"?\\'' selected\\'':\\''\\''?>>1星</option><option value=\\"2\\"<?=$r[star]==\\"2\\"||$ecmsfirstpost==1?\\'' selected\\'':\\''\\''?>>2星</option><option value=\\"3\\"<?=$r[star]==\\"3\\"?\\'' selected\\'':\\''\\''?>>3星</option><option value=\\"4\\"<?=$r[star]==\\"4\\"?\\'' selected\\'':\\''\\''?>>4星</option><option value=\\"5\\"<?=$r[star]==\\"5\\"?\\'' selected\\'':\\''\\''?>>5星</option></select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(64, 'playdk', '带宽要求', 'text', '<input name=\\"playdk\\" type=\\"text\\" id=\\"playdk\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[playdk]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--playdk--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_playdk]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_playdk]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_playdk]" type="text" id="add[z_playdk]" value="<?=stripSlashes($r[z_playdk])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '30', 1, 5, 'movie', 0, '', 0, 1, 1, '<input name=\\"playdk\\" type=\\"text\\" id=\\"playdk\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''playdk\\'',stripSlashes($r[playdk]))?>\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(65, 'playtime', '片长', 'text', '\r\n<input name="playtime" type="text" id="playtime" value="<?=$ecmsfirstpost==1?"":htmlspecialchars(stripSlashes($r[playtime]))?>">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--playtime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_playtime]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_playtime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_playtime]" type="text" id="add[z_playtime]" value="<?=stripSlashes($r[z_playtime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '20', 1, 5, 'movie', 0, '', 0, 1, 1, '\r\n<input name="playtime" type="text" id="playtime" value="<?=$ecmsfirstpost==1?"":DoReqValue($mid,''playtime'',stripSlashes($r[playtime]))?>">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(66, 'moviefen', '扣除点数', 'text', '\r\n<input name="moviefen" type="text" id="moviefen" value="<?=$ecmsfirstpost==1?"":htmlspecialchars(stripSlashes($r[moviefen]))?>">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--moviefen--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_moviefen]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_moviefen]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_moviefen]" type="text" id="add[z_moviefen]" value="<?=stripSlashes($r[z_moviefen])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'INT', '', 1, 5, 'movie', 0, '', 0, 1, 1, '\r\n<input name="moviefen" type="text" id="moviefen" value="<?=$ecmsfirstpost==1?"":DoReqValue($mid,''moviefen'',stripSlashes($r[moviefen]))?>">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(67, 'downpath', '下载地址', 'text', '<script>\r\nfunction doadd()\r\n{var i;\r\nvar str=\\"\\";\r\nvar oldi=0;\r\nvar j=0;\r\noldi=parseInt(document.add.editnum.value);\r\nfor(i=1;i<=document.add.downnum.value;i++)\r\n{\r\nj=i+oldi;\r\nstr=str+\\"<tr><td width=7%> <div align=center>\\"+j+\\"</div></td><td width=19%><div align=left><input name=downname[] type=text id=downname[] value=下载地址\\"+j+\\" size=17></div></td><td width=40%><input name=downpath[] type=text size=36 id=downpath\\"+j+\\" ondblclick=SpOpenChFile(0,\\''downpath\\"+j+\\"\\'')><select name=thedownqz[]><option value=\\''\\''>--地址前缀--</option><?=$newdownqz?></select></td><td width=21%><div align=center><select name=downuser[] id=select><option value=0>游客</option><?=$ygroup?></select></div></td><td width=13%><div align=center><input name=fen[] type=text id=fen[] value=0 size=6></div></td></tr>\\";\r\n}\r\ndocument.getElementById(\\"adddown\\").innerHTML=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\"+str+\\"</table>\\";\r\n}\r\n</script>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n  <tr>\r\n    <td height=\\"25\\">下载地址前缀&nbsp;:\r\n      <input name=\\"downurl_qz\\" type=\\"text\\" size=\\"32\\">\r\n      <select name=\\"changeurl_qz\\" onchange=\\"document.add.downurl_qz.value=document.add.changeurl_qz.value\\">\r\n        <option value=\\"\\" selected>选择前缀</option>\r\n        <?=$downurlqz?>\r\n      </select>\r\n	  </td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\\"25\\">选择/上传附件:\r\n      <input name=\\"changedown_url\\" id=\\"changedown_url\\" type=\\"text\\" size=\\"32\\">\r\n      <input type=\\"button\\" name=\\"Submit\\" value=\\"选择\\" onclick=\\"window.open(\\''ecmseditor/FileMain.php?type=0&classid=<?=$classid?>&filepass=<?=$filepass?>&doing=1&field=changedown_url\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\">&nbsp;\r\n	  <input type=\\"button\\" name=\\"Submit\\" value=\\"复制\\" onclick=\\"document.getElementById(\\''changedown_url\\'').focus();document.getElementById(\\''changedown_url\\'').select();clipboardData.setData(\\''text\\'',document.getElementById(\\''changedown_url\\'').value);\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#DBEAF5\\">\r\n        <tr> \r\n          <td width=\\"7%\\"> <div align=\\"center\\">编号</div></td>\r\n          <td width=\\"19%\\"><div align=\\"left\\">下载名称</div></td>\r\n          <td width=\\"40%\\">下载地址 <font color=\\"#666666\\">(双击选择)</font></td>\r\n          <td width=\\"21%\\"> <div align=\\"center\\">权限</div></td>\r\n          <td width=\\"13%\\"> <div align=\\"center\\">点数</div></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td>\r\n    <?php\r\n    if($ecmsfirstpost==1)\r\n    {\r\n    ?>\r\n	<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\r\n	<?php\r\n	$editnum=3;\r\n	for($pathi=1;$pathi<=$editnum;$pathi++)\r\n	{\r\n	?>\r\n           <tr> \r\n              <td width=\\''7%\\''> <div align=center><?=$pathi?></div></td>\r\n              <td width=\\''19%\\''> <div align=left> \r\n                  <input name=downname[] type=text value=\\''下载地址<?=$pathi?>\\'' size=17>\r\n                    </div></td>\r\n              <td width=\\''40%\\''>\r\n	      <input name=downpath[] type=text size=36 id=\\''downpath<?=$pathi?>\\'' ondblclick=\\"SpOpenChFile(0,\\''downpath<?=$pathi?>\\'');\\">\r\n	      <select name=thedownqz[]><option value=\\''\\''>--地址前缀--</option><?=$newdownqz?></select> \r\n                  </td>\r\n                  <td width=\\''21%\\''><div align=center> \r\n                      <select name=downuser[]>\r\n                        <option value=0>游客</option>\r\n                        <?=$ygroup?>\r\n                      </select>\r\n                    </div></td>\r\n                  <td width=\\''13%\\''> <div align=center> \r\n                      <input name=fen[] type=text value=0 size=6>\r\n                    </div></td>\r\n            </tr>\r\n	<?php\r\n	}\r\n	?>\r\n	</table>\r\n    <?php\r\n    }\r\n    else\r\n    {\r\n	$editnum=0;\r\n	$downloadpath=\\"\\";\r\n	if($r[downpath])\r\n	{\r\n		$r[downpath]=stripSlashes($r[downpath]);\r\n		//下载地址\r\n		$j=0;\r\n		$d_record=explode(\\"\\\\r\\\\n\\",$r[downpath]);\r\n		for($i=0;$i<count($d_record);$i++)\r\n		{\r\n			$j=$i+1;\r\n			$d_field=explode(\\"::::::\\",$d_record[$i]);\r\n			//权限\r\n			$tgroup=str_replace(\\" value=\\".$d_field[2].\\">\\",\\" value=\\".$d_field[2].\\" selected>\\",$ygroup);\r\n			//地址前缀\r\n			$tnewdownqz=str_replace(\\" value=\\''\\".$d_field[4].\\"\\''>\\",\\" value=\\''\\".$d_field[4].\\"\\'' selected>\\",$newdownqz);\r\n			$downloadpath.=\\"<tr><td width=\\''7%\\''><div align=center>\\".$j.\\"</div></td><td width=\\''19%\\''><div align=left><input name=downname[] type=text id=downname[] value=\\''\\".$d_field[0].\\"\\'' size=17></div></td><td width=\\''40%\\''><input name=downpath[] type=text id=downpath\\".$j.\\" value=\\''\\".$d_field[1].\\"\\'' size=36 ondblclick=\\\\\\"SpOpenChFile(0,\\''downpath\\".$j.\\"\\'');\\\\\\"><select name=thedownqz[]><option value=\\''\\''>--地址前缀--</option>\\".$tnewdownqz.\\"</select><input type=hidden name=pathid[] value=\\".$j.\\"><input type=checkbox name=delpathid[] value=\\".$j.\\">删</td><td width=\\''21%\\''><div align=center><select name=downuser[] id=select><option value=0>游客</option>\\".$tgroup.\\"</select></div></td><td width=\\''13%\\''><div align=center><input name=fen[] type=text id=fen[] value=\\''\\".$d_field[3].\\"\\'' size=6></div></td></tr>\\";\r\n		}\r\n		$editnum=$j;\r\n		$downloadpath=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\".$downloadpath.\\"</table>\\";\r\n	}\r\n	echo $downloadpath;\r\n    }\r\n    ?>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\">下载地址扩展数量: <input name=\\"editnum\\" type=\\"hidden\\" id=\\"editnum\\" value=\\"<?=$editnum?>\\">\r\n      <input name=\\"downnum\\" type=\\"text\\" id=\\"downnum\\" value=\\"1\\" size=\\"6\\"> <input type=\\"button\\" name=\\"Submit5\\" value=\\"输出地址\\" onclick=\\"javascript:doadd();\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td id=adddown></td>\r\n  </tr>\r\n</table>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (\r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--ecmsdownpathurl--]\\" size=\\"20\\">\r\n      <br>\r\n      <input name=\\"textfield2\\" type=\\"text\\" id=\\"textfield2\\" value=\\"[!--ecmsdownpathname--]\\" size=\\"20\\">\r\n      )<br>\r\n      格式:地址正则(url)[!empirecms!]名称正则(name)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_downpath]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=htmlspecialchars(stripSlashes($r[zz_downpath]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td>地址前缀:\r\n<input name=\\"add[qz_downpath]\\" type=\\"text\\" id=\\"add[qz_downpath]\\" value=\\"<?=stripSlashes($r[qz_downpath])?>\\">\r\n        </td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'MEDIUMTEXT', '', 1, 5, 'movie', 0, '', 0, 1, 1, '<input type=\\"file\\" name=\\"downpathfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0);
INSERT INTO `phome_enewsf` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `isadd`, `isshow`, `iscj`, `cjhtml`, `myorder`, `ftype`, `flen`, `dotemp`, `tid`, `tbname`, `savetxt`, `fvalue`, `iskey`, `tobr`, `dohtml`, `qfhtml`, `isonly`, `linkfieldval`, `samedata`, `fformsize`, `tbdataf`, `ispage`, `adddofun`, `editdofun`, `qadddofun`, `qeditdofun`, `linkfieldtb`, `linkfieldshow`, `editorys`, `issmalltext`) VALUES
(68, 'onlinepath', '在线观看地址', 'text', '<script>\r\nfunction dooadd()\r\n{var i;\r\nvar str=\\"\\";\r\nvar oldi=0;\r\nvar j=0;\r\noldi=parseInt(document.add.oeditnum.value);\r\nfor(i=1;i<=document.add.odownnum.value;i++)\r\n{\r\nj=i+oldi;\r\nstr=str+\\"<tr><td width=7%> <div align=center>\\"+j+\\"</div></td><td width=19%><div align=left><input name=odownname[] type=text value=\\"+j+\\" size=17></div></td><td width=40%><input name=odownpath[] type=text size=36 id=odownpath\\"+j+\\" ondblclick=SpOpenChFile(0,\\''odownpath\\"+j+\\"\\'')><select name=othedownqz[]><option value=\\''\\''>--地址前缀--</option><?=$newdownqz?></select></td><td width=21%><div align=center><select name=odownuser[] id=select><option value=0>游客</option><?=$ygroup?></select></div></td><td width=13%><div align=center><input name=ofen[] type=text value=0 size=6></div></td></tr>\\";\r\n}\r\ndocument.getElementById(\\"addonline\\").innerHTML=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\"+str+\\"</table>\\";\r\n}\r\n</script>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n  <tr> \r\n    <td height=\\"25\\">观看地址前缀&nbsp;: \r\n      <input name=\\"onlineurl_qz\\" type=\\"text\\" size=\\"32\\"> <select name=\\"changeonlineurl_qz\\" onchange=\\"document.add.onlineurl_qz.value=document.add.changeonlineurl_qz.value\\">\r\n        <option value=\\"\\" selected>选择前缀</option>\r\n        <?=$downurlqz?>\r\n      </select>\r\n      </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\">选择/上传附件: \r\n      <input name=\\"changeonline_url\\" id=\\"changeonline_url\\" type=\\"text\\" size=\\"32\\"> <input type=\\"button\\" name=\\"Submit\\" value=\\"选择\\" onclick=\\"window.open(\\''ecmseditor/FileMain.php?type=0&classid=<?=$classid?>&filepass=<?=$filepass?>&doing=1&field=changeonline_url\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\">&nbsp;\r\n	  <input type=\\"button\\" name=\\"Submit\\" value=\\"复制\\" onclick=\\"document.getElementById(\\''changeonline_url\\'').focus();document.getElementById(\\''changeonline_url\\'').select();clipboardData.setData(\\''text\\'',document.getElementById(\\''changeonline_url\\'').value);\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#DBEAF5\\">\r\n        <tr> \r\n          <td width=\\"7%\\"> <div align=\\"center\\">编号</div></td>\r\n          <td width=\\"19%\\"><div align=\\"left\\">观看名称</div></td>\r\n          <td width=\\"40%\\">观看地址 <font color=\\"#666666\\">(双击选择)</font></td>\r\n          <td width=\\"21%\\"> <div align=\\"center\\">权限</div></td>\r\n          <td width=\\"13%\\"> <div align=\\"center\\">点数</div></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td>\r\n    <?php\r\n    if($ecmsfirstpost==1)\r\n    {\r\n	?>\r\n	<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\r\n	<?php\r\n	$oeditnum=3;\r\n	for($opathi=1;$opathi<=$oeditnum;$opathi++)\r\n	{\r\n	?>\r\n		<tr> \r\n                  <td width=\\''7%\\''> <div align=center><?=$opathi?></div></td>\r\n                  <td width=\\''19%\\''> <div align=left> \r\n                      <input name=odownname[] type=text value=\\''<?=$opathi?>\\'' size=17>\r\n                    </div></td>\r\n                  <td width=\\''40%\\''> \r\n		  <input name=odownpath[] type=text id=\\''odownpath<?=$opathi?>\\'' size=36 ondblclick=\\"SpOpenChFile(0,\\''odownpath<?=$opathi?>\\'');\\">\r\n		  <select name=othedownqz[]><option value=\\''\\''>--地址前缀--</option><?=$newdownqz?></select> \r\n                  </td>\r\n                  <td width=\\''21%\\''><div align=center> \r\n                      <select name=odownuser[] id=select>\r\n                        <option value=0>游客</option>\r\n                        <?=$ygroup?>\r\n                      </select>\r\n                    </div></td>\r\n                  <td width=\\''13%\\''> <div align=center> \r\n                      <input name=ofen[] type=text id=ofen[] value=0 size=6>\r\n                    </div></td>\r\n                </tr>\r\n	<?php\r\n	}\r\n	?>\r\n	</table>\r\n	<?php\r\n    }\r\n    else\r\n    {\r\n	$oeditnum=0;\r\n	$onlinemoviepath=\\"\\";\r\n	if($r[onlinepath])\r\n	{\r\n		$j=0;\r\n		$od_record=explode(\\"\\\\r\\\\n\\",$r[onlinepath]);\r\n		for($i=0;$i<count($od_record);$i++)\r\n		{\r\n			$j=$i+1;\r\n			$od_field=explode(\\"::::::\\",$od_record[$i]);\r\n			//权限\r\n			$tgroup=str_replace(\\" value=\\".$od_field[2].\\">\\",\\" value=\\".$od_field[2].\\" selected>\\",$ygroup);\r\n			//地址前缀\r\n			$tnewdownqz=str_replace(\\" value=\\''\\".$od_field[4].\\"\\''>\\",\\" value=\\''\\".$od_field[4].\\"\\'' selected>\\",$newdownqz);\r\n			$onlinemoviepath.=\\"<tr><td width=\\''7%\\''><div align=center>\\".$j.\\"</div></td><td width=\\''19%\\''><div align=left><input name=odownname[] type=text value=\\''\\".$od_field[0].\\"\\'' size=17></div></td><td width=\\''40%\\''><input name=odownpath[] type=text value=\\''\\".$od_field[1].\\"\\'' size=36 id=odownpath\\".$j.\\" ondblclick=\\\\\\"SpOpenChFile(0,\\''odownpath\\".$j.\\"\\'');\\\\\\"><select name=othedownqz[]><option value=\\''\\''>--地址前缀--</option>\\".$tnewdownqz.\\"</select><input type=hidden name=opathid[] value=\\".$j.\\"><input type=checkbox name=odelpathid[] value=\\".$j.\\">删</td><td width=\\''21%\\''><div align=center><select name=odownuser[] id=select><option value=0>游客</option>\\".$tgroup.\\"</select></div></td><td width=\\''13%\\''><div align=center><input name=ofen[] type=text value=\\''\\".$od_field[3].\\"\\'' size=6></div></td></tr>\\";\r\n		}\r\n		$oeditnum=$j;\r\n		$onlinemoviepath=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\".$onlinemoviepath.\\"</table>\\";\r\n	}\r\n	echo $onlinemoviepath;\r\n    }\r\n    ?>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\">在线地址扩展数量: <input name=\\"oeditnum\\" type=\\"hidden\\" id=\\"oeditnum\\" value=\\"<?=$oeditnum?>\\">\r\n      <input name=\\"odownnum\\" type=\\"text\\" id=\\"odownnum\\" value=\\"1\\" size=\\"6\\"> <input type=\\"button\\" name=\\"Submit5\\" value=\\"输出地址\\" onclick=\\"javascript:dooadd();\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td id=addonline></td>\r\n  </tr>\r\n</table>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (\r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--ecmsonlinepathurl--]\\" size=\\"20\\">\r\n      <br>\r\n      <input name=\\"textfield2\\" type=\\"text\\" id=\\"textfield2\\" value=\\"[!--ecmsonlinepathname--]\\" size=\\"20\\">\r\n      )<br>\r\n      格式:地址正则(url)[!empirecms!]名称正则(name)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_onlinepath]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=htmlspecialchars(stripSlashes($r[zz_onlinepath]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td>地址前缀:\r\n<input name=\\"add[qz_onlinepath]\\" type=\\"text\\" id=\\"add[qz_onlinepath]\\" value=\\"<?=stripSlashes($r[qz_onlinepath])?>\\">\r\n        </td>\r\n        </tr>\r\n      </table>\r\n	  </td>\r\n  </tr>\r\n', 2, 'MEDIUMTEXT', '', 1, 5, 'movie', 0, '', 0, 1, 1, '<input type=\\"file\\" name=\\"onlinepathfile\\" size=\\"45\\">\r\n<input type=\\"hidden\\" name=\\"onlinepathmtfile\\" value=1>\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(69, 'moviesay', '影片简介', 'textarea', '<textarea name=\\"moviesay\\" cols=\\"80\\" rows=\\"10\\" id=\\"moviesay\\"><?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[moviesay]))?></textarea>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--moviesay--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_moviesay]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_moviesay]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_moviesay]" type="text" id="add[z_moviesay]" value="<?=stripSlashes($r[z_moviesay])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'TEXT', '', 1, 5, 'movie', 0, '', 0, 1, 1, '<textarea name=\\"moviesay\\" cols=\\"60\\" rows=\\"10\\" id=\\"moviesay\\"><?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''moviesay\\'',stripSlashes($r[moviesay]))?></textarea>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 1),
(70, 'title', '标题', 'text', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">\r\n<?=$tts?\\"<select name=\\''ttid\\''><option value=\\''0\\''>标题分类</option>$tts</select>\\":\\"\\"?>\r\n	<input type=text name=title value=\\"<?=htmlspecialchars(stripSlashes($r[title]))?>\\" size=\\"60\\"> \r\n	<input type=\\"button\\" name=\\"button\\" value=\\"图文\\" onclick=\\"document.add.title.value=document.add.title.value+\\''(图文)\\'';\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">属性: \r\n	<input name=\\"titlefont[b]\\" type=\\"checkbox\\" value=\\"b\\"<?=$titlefontb?>>粗体\r\n	<input name=\\"titlefont[i]\\" type=\\"checkbox\\" value=\\"i\\"<?=$titlefonti?>>斜体\r\n	<input name=\\"titlefont[s]\\" type=\\"checkbox\\" value=\\"s\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\"titlecolor\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titlecolor])?>\\" size=\\"10\\"><a onclick=\\"foreColor();\\"><img src=\\"../data/images/color.gif\\" width=\\"21\\" height=\\"21\\" align=\\"absbottom\\"></a>\r\n  </td>\r\n</tr>\r\n</table>', '标题', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'VARCHAR', '200', 1, 6, 'shop', 0, '', 0, 1, 1, '<input name=\\"title\\" type=\\"text\\" size=\\"30\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''title\\'',stripSlashes($r[title]))?>\\">', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(71, 'special.field', '特殊属性', '', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n  <tr>\r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">信息属性: \r\n      <input name=\\"checked\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[checked]?\\'' checked\\'':\\''\\''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\\"isgood\\" id=\\"isgood\\">\r\n        <option value=\\"0\\"<?=$r[isgood]==0?\\'' selected\\'':\\''\\''?>>不推荐</option>\r\n        <option value=\\"1\\"<?=$r[isgood]==1?\\'' selected\\'':\\''\\''?>>一级推荐</option>\r\n        <option value=\\"2\\"<?=$r[isgood]==2?\\'' selected\\'':\\''\\''?>>二级推荐</option>\r\n        <option value=\\"3\\"<?=$r[isgood]==3?\\'' selected\\'':\\''\\''?>>三级推荐</option>\r\n        <option value=\\"4\\"<?=$r[isgood]==4?\\'' selected\\'':\\''\\''?>>四级推荐</option>\r\n        <option value=\\"5\\"<?=$r[isgood]==5?\\'' selected\\'':\\''\\''?>>五级推荐</option>\r\n        <option value=\\"6\\"<?=$r[isgood]==6?\\'' selected\\'':\\''\\''?>>六级推荐</option>\r\n        <option value=\\"7\\"<?=$r[isgood]==7?\\'' selected\\'':\\''\\''?>>七级推荐</option>\r\n        <option value=\\"8\\"<?=$r[isgood]==8?\\'' selected\\'':\\''\\''?>>八级推荐</option>\r\n        <option value=\\"9\\"<?=$r[isgood]==9?\\'' selected\\'':\\''\\''?>>九级推荐</option>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\\"firsttitle\\" id=\\"firsttitle\\">\r\n        <option value=\\"0\\"<?=$r[firsttitle]==0?\\'' selected\\'':\\''\\''?>>非头条</option>\r\n        <option value=\\"1\\"<?=$r[firsttitle]==1?\\'' selected\\'':\\''\\''?>>一级头条</option>\r\n        <option value=\\"2\\"<?=$r[firsttitle]==2?\\'' selected\\'':\\''\\''?>>二级头条</option>\r\n        <option value=\\"3\\"<?=$r[firsttitle]==3?\\'' selected\\'':\\''\\''?>>三级头条</option>\r\n        <option value=\\"4\\"<?=$r[firsttitle]==4?\\'' selected\\'':\\''\\''?>>四级头条</option>\r\n        <option value=\\"5\\"<?=$r[firsttitle]==5?\\'' selected\\'':\\''\\''?>>五级头条</option>\r\n        <option value=\\"6\\"<?=$r[firsttitle]==6?\\'' selected\\'':\\''\\''?>>六级头条</option>\r\n        <option value=\\"7\\"<?=$r[firsttitle]==7?\\'' selected\\'':\\''\\''?>>七级头条</option>\r\n        <option value=\\"8\\"<?=$r[firsttitle]==8?\\'' selected\\'':\\''\\''?>>八级头条</option>\r\n        <option value=\\"9\\"<?=$r[firsttitle]==9?\\'' selected\\'':\\''\\''?>>九级头条</option>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\\"keyboard\\" type=\\"text\\" size=\\"52\\" value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">外部链接: \r\n      <input name=\\"titleurl\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titleurl])?>\\" size=\\"52\\">\r\n      <font color=\\"#666666\\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n', '特殊属性', 0, 1, 0, '', 0, '', '', 0, 6, 'shop', 0, '', 0, 1, 1, '关键字: \r\n      <input name=\\"keyboard\\" type=\\"text\\" value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(72, 'titlepic', '标题图片', 'img', '\r\n<input name=\\"titlepic\\" type=\\"text\\" id=\\"titlepic\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[titlepic]))?>\\" size=\\"45\\">\r\n<a onclick=\\"window.open(\\''ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&filepass=<?=$filepass?>&doing=1&field=titlepic\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\" title=\\"选择已上传的图片\\"><img src=\\"../data/images/changeimg.gif\\" border=\\"0\\" align=\\"absbottom\\"></a> \r\n', '标题图片', 0, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--titlepic--]\\" size=\\"20\\">\r\n      )</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\"add[qz_titlepic]\\" type=\\"text\\" id=\\"add[qz_titlepic]\\" value=\\"<?=stripSlashes($r[qz_titlepic])?>\\"> \r\n        <input name=\\"add[save_titlepic]\\" type=\\"checkbox\\" id=\\"add[save_titlepic]\\" value=\\" checked\\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\"add[zz_titlepic]\\" cols=\\"60\\" rows=\\"10\\" id=\\"add[zz_titlepic]\\"><?=htmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\"add[z_titlepic]\\" type=\\"text\\" id=\\"titlepic5\\" value=\\"<?=stripSlashes($r[z_titlepic])?>\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '200', 1, 6, 'shop', 0, '', 0, 1, 1, '\r\n<input type=\\"file\\" name=\\"titlepicfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(73, 'newstime', '发布时间', 'text', '<input name=\\"newstime\\" type=\\"text\\" value=\\"<?=$r[newstime]?>\\"><input type=button name=button value=\\"设为当前时间\\" onclick=\\"document.add.newstime.value=\\''<?=$todaytime?>\\''\\">', '发布时间', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'INT', '10', 1, 6, 'shop', 0, '', 0, 1, 1, '', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(74, 'productno', '商品编号', 'text', '<input name=\\"productno\\" type=\\"text\\" size=60 id=\\"productno\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[productno]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--productno--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_productno]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_productno]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_productno]" type="text" id="add[z_productno]" value="<?=stripSlashes($r[z_productno])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'VARCHAR', '30', 1, 6, 'shop', 0, '', 0, 1, 1, '<input name=\\"productno\\" type=\\"text\\" id=\\"productno\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''productno\\'',stripSlashes($r[productno]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(75, 'pbrand', '品牌', 'text', '<input name=\\"pbrand\\" type=\\"text\\" size=60 id=\\"pbrand\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[pbrand]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--pbrand--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_pbrand]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_pbrand]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_pbrand]" type="text" id="add[z_pbrand]" value="<?=stripSlashes($r[z_pbrand])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'VARCHAR', '30', 1, 6, 'shop', 0, '', 0, 1, 1, '<input name=\\"pbrand\\" type=\\"text\\" id=\\"pbrand\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''pbrand\\'',stripSlashes($r[pbrand]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(76, 'intro', '简单描述', 'textarea', '<textarea name=\\"intro\\" cols=\\"80\\" rows=\\"10\\" id=\\"intro\\"><?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[intro]))?></textarea>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--intro--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_intro]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_intro]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_intro]" type="text" id="add[z_intro]" value="<?=stripSlashes($r[z_intro])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'TEXT', '', 1, 6, 'shop', 0, '', 0, 1, 1, '<textarea name=\\"intro\\" cols=\\"60\\" rows=\\"10\\" id=\\"intro\\"><?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''intro\\'',stripSlashes($r[intro]))?></textarea>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(77, 'unit', '计量单位', 'text', '<input name=\\"unit\\" type=\\"text\\" size=60 id=\\"unit\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[unit]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--unit--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_unit]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_unit]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_unit]" type="text" id="add[z_unit]" value="<?=stripSlashes($r[z_unit])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'VARCHAR', '16', 1, 6, 'shop', 0, '', 0, 1, 1, '<input name=\\"unit\\" type=\\"text\\" id=\\"unit\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''unit\\'',stripSlashes($r[unit]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(78, 'weight', '单位重量', 'text', '<input name=\\"weight\\" type=\\"text\\" size=60 id=\\"weight\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[weight]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--weight--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_weight]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_weight]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_weight]" type="text" id="add[z_weight]" value="<?=stripSlashes($r[z_weight])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'VARCHAR', '20', 1, 6, 'shop', 0, '', 0, 1, 1, '<input name=\\"weight\\" type=\\"text\\" id=\\"weight\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''weight\\'',stripSlashes($r[weight]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(79, 'tprice', '市场价格', 'text', '<input name=\\"tprice\\" type=\\"text\\" size=60 id=\\"tprice\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[tprice]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--tprice--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_tprice]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_tprice]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_tprice]" type="text" id="add[z_tprice]" value="<?=stripSlashes($r[z_tprice])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'FLOAT', '11,2', 1, 6, 'shop', 0, '', 0, 1, 1, '<input name=\\"tprice\\" type=\\"text\\" id=\\"tprice\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''tprice\\'',stripSlashes($r[tprice]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(80, 'price', '购买价格', 'text', '<input name=\\"price\\" type=\\"text\\" size=60 id=\\"price\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[price]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--price--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_price]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_price]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_price]" type="text" id="add[z_price]" value="<?=stripSlashes($r[z_price])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'FLOAT', '11,2', 1, 6, 'shop', 0, '', 0, 1, 1, '<input name=\\"price\\" type=\\"text\\" id=\\"price\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''price\\'',stripSlashes($r[price]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(81, 'buyfen', '积分购买', 'text', '<input name=\\"buyfen\\" type=\\"text\\" size=60 id=\\"buyfen\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[buyfen]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--buyfen--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_buyfen]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_buyfen]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_buyfen]" type="text" id="add[z_buyfen]" value="<?=stripSlashes($r[z_buyfen])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'INT', '', 1, 6, 'shop', 0, '', 0, 1, 1, '<input name=\\"buyfen\\" type=\\"text\\" id=\\"buyfen\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''buyfen\\'',stripSlashes($r[buyfen]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(82, 'pmaxnum', '库存', 'text', '<input name=\\"pmaxnum\\" type=\\"text\\" size=60 id=\\"pmaxnum\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[pmaxnum]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--pmaxnum--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_pmaxnum]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_pmaxnum]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_pmaxnum]" type="text" id="add[z_pmaxnum]" value="<?=stripSlashes($r[z_pmaxnum])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'INT', '', 1, 6, 'shop', 0, '', 0, 1, 1, '<input name=\\"pmaxnum\\" type=\\"text\\" id=\\"pmaxnum\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''pmaxnum\\'',stripSlashes($r[pmaxnum]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(83, 'productpic', '商品大图', 'img', '\r\n<input name=\\"productpic\\" type=\\"text\\" id=\\"productpic\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[productpic]))?>\\" size=\\"45\\">\r\n<a onclick=\\"window.open(\\''ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&filepass=<?=$filepass?>&doing=1&field=productpic\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\" title=\\"选择已上传的图片\\"><img src=\\"../data/images/changeimg.gif\\" border=\\"0\\" align=\\"absbottom\\"></a> \r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--productpic--]\\" size=\\"20\\">\r\n      )</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\"add[qz_productpic]\\" type=\\"text\\" id=\\"add[qz_productpic]\\" value=\\"<?=stripSlashes($r[qz_productpic])?>\\"> \r\n        <input name=\\"add[save_productpic]\\" type=\\"checkbox\\" id=\\"add[save_productpic]\\" value=\\" checked\\"<?=$r[save_productpic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\"add[zz_productpic]\\" cols=\\"60\\" rows=\\"10\\" id=\\"add[zz_productpic]\\"><?=htmlspecialchars(stripSlashes($r[zz_productpic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\"add[z_productpic]\\" type=\\"text\\" id=\\"productpic5\\" value=\\"<?=stripSlashes($r[z_productpic])?>\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '255', 1, 6, 'shop', 0, '', 0, 1, 1, '\r\n<input type=\\"file\\" name=\\"productpicfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(84, 'newstext', '商品介绍', 'editor', '<?=ECMS_ShowEditorVar(\\"newstext\\",$ecmsfirstpost==1?\\"\\":stripSlashes($r[newstext]),\\"Default\\",\\"\\",\\"300\\",\\"100%\\")?>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#DBEAF5\\">\r\n          <tr> \r\n            <td bgcolor=\\"#FFFFFF\\"> <input name=\\"dokey\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[dokey]==1?\\'' checked\\'':\\''\\''?>>\r\n              关键字替换&nbsp;&nbsp; <input name=\\"copyimg\\" type=\\"checkbox\\" id=\\"copyimg\\" value=\\"1\\">\r\n      远程保存图片(\r\n      <input name=\\"mark\\" type=\\"checkbox\\" id=\\"mark\\" value=\\"1\\">\r\n      <a href=\\"SetEnews.php\\" target=\\"_blank\\">加水印</a>)&nbsp;&nbsp; \r\n      <input name=\\"copyflash\\" type=\\"checkbox\\" id=\\"copyflash\\" value=\\"1\\">\r\n      远程保存FLASH(地址前缀： \r\n      <input name=\\"qz_url\\" type=\\"text\\" id=\\"qz_url\\" size=\\"\\">\r\n              )</td>\r\n          </tr>\r\n          <tr>\r\n            \r\n    <td bgcolor=\\"#FFFFFF\\"><input name=\\"repimgnexturl\\" type=\\"checkbox\\" id=\\"repimgnexturl\\" value=\\"1\\"> 图片链接转为下一页&nbsp;&nbsp; <input name=\\"autopage\\" type=\\"checkbox\\" id=\\"autopage\\" value=\\"1\\">自动分页 \r\n      ,每 \r\n      <input name=\\"autosize\\" type=\\"text\\" id=\\"autosize\\" value=\\"5000\\" size=\\"5\\">\r\n      个字节为一页&nbsp;&nbsp; 取第 \r\n      <input name=\\"getfirsttitlepic\\" type=\\"text\\" id=\\"getfirsttitlepic\\" value=\\"\\" size=\\"1\\">\r\n      张上传图为标题图片( \r\n      <input name=\\"getfirsttitlespic\\" type=\\"checkbox\\" id=\\"getfirsttitlespic\\" value=\\"1\\">\r\n      缩略图: 宽 \r\n      <input name=\\"getfirsttitlespicw\\" type=\\"text\\" id=\\"getfirsttitlespicw\\" size=\\"3\\" value=\\"<?=$public_r[spicwidth]?>\\">\r\n      *高\r\n      <input name=\\"getfirsttitlespich\\" type=\\"text\\" id=\\"getfirsttitlespich\\" size=\\"3\\" value=\\"<?=$public_r[spicheight]?>\\">\r\n      )</td>\r\n          </tr>\r\n        </table>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--newstext--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_newstext]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=htmlspecialchars(stripSlashes($r[zz_newstext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_newstext]\\" type=\\"text\\" id=\\"add[z_newstext]\\" value=\\"<?=stripSlashes($r[z_newstext])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'MEDIUMTEXT', '', 1, 6, 'shop', 0, '', 0, 1, 1, '<?=ECMS_ShowEditorVar(\\"newstext\\",$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''newstext\\'',stripSlashes($r[newstext])),\\"Default\\",\\"\\",\\"300\\",\\"100%\\")?>\r\n', 0, '', 0, '', 0, 1, '', '', '', '', '', '', 0, 0),
(85, 'title', '标题', 'text', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">\r\n<?=$tts?\\"<select name=\\''ttid\\''><option value=\\''0\\''>标题分类</option>$tts</select>\\":\\"\\"?>\r\n	<input type=text name=title value=\\"<?=htmlspecialchars(stripSlashes($r[title]))?>\\" size=\\"60\\"> \r\n	<input type=\\"button\\" name=\\"button\\" value=\\"图文\\" onclick=\\"document.add.title.value=document.add.title.value+\\''(图文)\\'';\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">属性: \r\n	<input name=\\"titlefont[b]\\" type=\\"checkbox\\" value=\\"b\\"<?=$titlefontb?>>粗体\r\n	<input name=\\"titlefont[i]\\" type=\\"checkbox\\" value=\\"i\\"<?=$titlefonti?>>斜体\r\n	<input name=\\"titlefont[s]\\" type=\\"checkbox\\" value=\\"s\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\"titlecolor\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titlecolor])?>\\" size=\\"10\\"><a onclick=\\"foreColor();\\"><img src=\\"../data/images/color.gif\\" width=\\"21\\" height=\\"21\\" align=\\"absbottom\\"></a>\r\n  </td>\r\n</tr>\r\n</table>', '标题', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'CHAR', '200', 1, 7, 'article', 0, '', 0, 1, 1, '<input name=\\"title\\" type=\\"text\\" size=\\"42\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''title\\'',stripSlashes($r[title]))?>\\">', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(86, 'special.field', '特殊属性', '', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n  <tr>\r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">信息属性: \r\n      <input name=\\"checked\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[checked]?\\'' checked\\'':\\''\\''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\\"isgood\\" id=\\"isgood\\">\r\n        <option value=\\"0\\"<?=$r[isgood]==0?\\'' selected\\'':\\''\\''?>>不推荐</option>\r\n        <option value=\\"1\\"<?=$r[isgood]==1?\\'' selected\\'':\\''\\''?>>一级推荐</option>\r\n        <option value=\\"2\\"<?=$r[isgood]==2?\\'' selected\\'':\\''\\''?>>二级推荐</option>\r\n        <option value=\\"3\\"<?=$r[isgood]==3?\\'' selected\\'':\\''\\''?>>三级推荐</option>\r\n        <option value=\\"4\\"<?=$r[isgood]==4?\\'' selected\\'':\\''\\''?>>四级推荐</option>\r\n        <option value=\\"5\\"<?=$r[isgood]==5?\\'' selected\\'':\\''\\''?>>五级推荐</option>\r\n        <option value=\\"6\\"<?=$r[isgood]==6?\\'' selected\\'':\\''\\''?>>六级推荐</option>\r\n        <option value=\\"7\\"<?=$r[isgood]==7?\\'' selected\\'':\\''\\''?>>七级推荐</option>\r\n        <option value=\\"8\\"<?=$r[isgood]==8?\\'' selected\\'':\\''\\''?>>八级推荐</option>\r\n        <option value=\\"9\\"<?=$r[isgood]==9?\\'' selected\\'':\\''\\''?>>九级推荐</option>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\\"firsttitle\\" id=\\"firsttitle\\">\r\n        <option value=\\"0\\"<?=$r[firsttitle]==0?\\'' selected\\'':\\''\\''?>>非头条</option>\r\n        <option value=\\"1\\"<?=$r[firsttitle]==1?\\'' selected\\'':\\''\\''?>>一级头条</option>\r\n        <option value=\\"2\\"<?=$r[firsttitle]==2?\\'' selected\\'':\\''\\''?>>二级头条</option>\r\n        <option value=\\"3\\"<?=$r[firsttitle]==3?\\'' selected\\'':\\''\\''?>>三级头条</option>\r\n        <option value=\\"4\\"<?=$r[firsttitle]==4?\\'' selected\\'':\\''\\''?>>四级头条</option>\r\n        <option value=\\"5\\"<?=$r[firsttitle]==5?\\'' selected\\'':\\''\\''?>>五级头条</option>\r\n        <option value=\\"6\\"<?=$r[firsttitle]==6?\\'' selected\\'':\\''\\''?>>六级头条</option>\r\n        <option value=\\"7\\"<?=$r[firsttitle]==7?\\'' selected\\'':\\''\\''?>>七级头条</option>\r\n        <option value=\\"8\\"<?=$r[firsttitle]==8?\\'' selected\\'':\\''\\''?>>八级头条</option>\r\n        <option value=\\"9\\"<?=$r[firsttitle]==9?\\'' selected\\'':\\''\\''?>>九级头条</option>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\\"keyboard\\" type=\\"text\\" size=\\"52\\" value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">外部链接: \r\n      <input name=\\"titleurl\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titleurl])?>\\" size=\\"52\\">\r\n      <font color=\\"#666666\\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n', '特殊属性', 0, 1, 0, '', 1, '', '', 0, 7, 'article', 0, '', 0, 1, 1, '<input name=\\"keyboard\\" type=\\"text\\" size=42 value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(87, 'titlepic', '标题图片', 'img', '\r\n<input name=\\"titlepic\\" type=\\"text\\" id=\\"titlepic\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[titlepic]))?>\\" size=\\"45\\">\r\n<a onclick=\\"window.open(\\''ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&filepass=<?=$filepass?>&doing=1&field=titlepic\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\" title=\\"选择已上传的图片\\"><img src=\\"../data/images/changeimg.gif\\" border=\\"0\\" align=\\"absbottom\\"></a> \r\n', '标题图片', 0, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--titlepic--]\\" size=\\"20\\">\r\n      )</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\"add[qz_titlepic]\\" type=\\"text\\" id=\\"add[qz_titlepic]\\" value=\\"<?=stripSlashes($r[qz_titlepic])?>\\"> \r\n        <input name=\\"add[save_titlepic]\\" type=\\"checkbox\\" id=\\"add[save_titlepic]\\" value=\\" checked\\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\"add[zz_titlepic]\\" cols=\\"60\\" rows=\\"10\\" id=\\"add[zz_titlepic]\\"><?=htmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\"add[z_titlepic]\\" type=\\"text\\" id=\\"titlepic5\\" value=\\"<?=stripSlashes($r[z_titlepic])?>\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '200', 1, 7, 'article', 0, '', 0, 1, 1, '\r\n<input type=\\"file\\" name=\\"titlepicfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(88, 'newstime', '发布时间', 'text', '<input name=\\"newstime\\" type=\\"text\\" value=\\"<?=$r[newstime]?>\\"><input type=button name=button value=\\"设为当前时间\\" onclick=\\"document.add.newstime.value=\\''<?=$todaytime?>\\''\\">', '发布时间', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 1, 'INT', '10', 1, 7, 'article', 0, '', 0, 1, 1, '', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(89, 'ftitle', '副标题', 'text', '<input name=\\"ftitle\\" type=\\"text\\" size=60 id=\\"ftitle\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[ftitle]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--ftitle--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_ftitle]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=htmlspecialchars(stripSlashes($r[zz_ftitle]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_ftitle]\\" type=\\"text\\" id=\\"add[z_ftitle]\\" value=\\"<?=stripSlashes($r[z_ftitle])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'CHAR', '120', 1, 7, 'article', 0, '', 0, 1, 1, '<input name=\\"ftitle\\" type=\\"text\\" size=42 id=\\"ftitle\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''ftitle\\'',stripSlashes($r[ftitle]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(90, 'smalltext', '内容简介', 'textarea', '<textarea name=\\"smalltext\\" cols=\\"80\\" rows=\\"10\\" id=\\"smalltext\\"><?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[smalltext]))?></textarea>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--smalltext--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_smalltext]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=htmlspecialchars(stripSlashes($r[zz_smalltext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_smalltext]\\" type=\\"text\\" id=\\"add[z_smalltext]\\" value=\\"<?=stripSlashes($r[z_smalltext])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '255', 1, 7, 'article', 0, '', 0, 1, 1, '<textarea name=\\"smalltext\\" cols=\\"60\\" rows=\\"10\\" id=\\"smalltext\\"><?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''smalltext\\'',stripSlashes($r[smalltext]))?></textarea>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 1),
(91, 'writer', '作者', 'text', '\r\n<?php\r\n$writer_sql=$empire->query(\\"select writer from {$dbtbpre}enewswriter\\");\r\nwhile($w_r=$empire->fetch($writer_sql))\r\n{\r\n	$w_class.=\\"<option value=\\''\\".$w_r[writer].\\"\\''>\\".$w_r[writer].\\"</option>\\";\r\n}\r\n?>\r\n<input type=text name=writer value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[writer]))?>\\" size=\\"\\"> \r\n        <select name=\\"w_id\\" id=\\"select7\\" onchange=\\"document.add.writer.value=document.add.w_id.value\\">\r\n          <option>选择作者</option>\r\n		  <?=$w_class?>\r\n        </select>\r\n<input type=\\"button\\" name=\\"wbutton\\" value=\\"增加作者\\" onclick=\\"window.open(\\''NewsSys/writer.php?addwritername=\\''+document.add.writer.value);\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--writer--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_writer]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=htmlspecialchars(stripSlashes($r[zz_writer]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_writer]\\" type=\\"text\\" id=\\"add[z_writer]\\" value=\\"<?=stripSlashes($r[z_writer])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '30', 1, 7, 'article', 0, '', 0, 1, 1, '\r\n<input name=\\"writer\\" type=\\"text\\" id=\\"writer\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''writer\\'',stripSlashes($r[writer]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(92, 'befrom', '信息来源', 'text', '\r\n<?php\r\n$befrom_sql=$empire->query(\\"select sitename from {$dbtbpre}enewsbefrom\\");\r\nwhile($b_r=$empire->fetch($befrom_sql))\r\n{\r\n	$b_class.=\\"<option value=\\''\\".$b_r[sitename].\\"\\''>\\".$b_r[sitename].\\"</option>\\";\r\n}\r\n?>\r\n<input type=\\"text\\" name=\\"befrom\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[befrom]))?>\\" size=\\"\\"> \r\n        <select name=\\"befrom_id\\" id=\\"befromid\\" onchange=\\"document.add.befrom.value=document.add.befrom_id.value\\">\r\n          <option>选择信息来源</option>\r\n          <?=$b_class?>\r\n        </select>\r\n<input type=\\"button\\" name=\\"wbutton\\" value=\\"增加来源\\" onclick=\\"window.open(\\''NewsSys/BeFrom.php?addsitename=\\''+document.add.befrom.value);\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--befrom--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_befrom]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=htmlspecialchars(stripSlashes($r[zz_befrom]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_befrom]\\" type=\\"text\\" id=\\"add[z_befrom]\\" value=\\"<?=stripSlashes($r[z_befrom])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '60', 1, 7, 'article', 0, '', 0, 1, 1, '\r\n<input name=\\"befrom\\" type=\\"text\\" id=\\"befrom\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''befrom\\'',stripSlashes($r[befrom]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0);
INSERT INTO `phome_enewsf` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `isadd`, `isshow`, `iscj`, `cjhtml`, `myorder`, `ftype`, `flen`, `dotemp`, `tid`, `tbname`, `savetxt`, `fvalue`, `iskey`, `tobr`, `dohtml`, `qfhtml`, `isonly`, `linkfieldval`, `samedata`, `fformsize`, `tbdataf`, `ispage`, `adddofun`, `editdofun`, `qadddofun`, `qeditdofun`, `linkfieldtb`, `linkfieldshow`, `editorys`, `issmalltext`) VALUES
(93, 'newstext', '新闻正文', 'editor', '<?=ECMS_ShowEditorVar(\\"newstext\\",$ecmsfirstpost==1?\\"\\":stripSlashes($r[newstext]),\\"Default\\",\\"\\",\\"300\\",\\"100%\\")?>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#DBEAF5\\">\r\n          <tr> \r\n            <td bgcolor=\\"#FFFFFF\\"> <input name=\\"dokey\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[dokey]==1?\\'' checked\\'':\\''\\''?>>\r\n              关键字替换&nbsp;&nbsp; <input name=\\"copyimg\\" type=\\"checkbox\\" id=\\"copyimg\\" value=\\"1\\">\r\n      远程保存图片(\r\n      <input name=\\"mark\\" type=\\"checkbox\\" id=\\"mark\\" value=\\"1\\">\r\n      <a href=\\"SetEnews.php\\" target=\\"_blank\\">加水印</a>)&nbsp;&nbsp; \r\n      <input name=\\"copyflash\\" type=\\"checkbox\\" id=\\"copyflash\\" value=\\"1\\">\r\n      远程保存FLASH(地址前缀： \r\n      <input name=\\"qz_url\\" type=\\"text\\" id=\\"qz_url\\" size=\\"\\">\r\n              )</td>\r\n          </tr>\r\n          <tr>\r\n            \r\n    <td bgcolor=\\"#FFFFFF\\"><input name=\\"repimgnexturl\\" type=\\"checkbox\\" id=\\"repimgnexturl\\" value=\\"1\\"> 图片链接转为下一页&nbsp;&nbsp; <input name=\\"autopage\\" type=\\"checkbox\\" id=\\"autopage\\" value=\\"1\\">自动分页\r\n      ,每 \r\n      <input name=\\"autosize\\" type=\\"text\\" id=\\"autosize\\" value=\\"5000\\" size=\\"5\\">\r\n      个字节为一页&nbsp;&nbsp; 取第 \r\n      <input name=\\"getfirsttitlepic\\" type=\\"text\\" id=\\"getfirsttitlepic\\" value=\\"\\" size=\\"1\\">\r\n      张上传图为标题图片( \r\n      <input name=\\"getfirsttitlespic\\" type=\\"checkbox\\" id=\\"getfirsttitlespic\\" value=\\"1\\">\r\n      缩略图: 宽 \r\n      <input name=\\"getfirsttitlespicw\\" type=\\"text\\" id=\\"getfirsttitlespicw\\" size=\\"3\\" value=\\"<?=$public_r[spicwidth]?>\\">\r\n      *高\r\n      <input name=\\"getfirsttitlespich\\" type=\\"text\\" id=\\"getfirsttitlespich\\" size=\\"3\\" value=\\"<?=$public_r[spicheight]?>\\">\r\n      )</td>\r\n          </tr>\r\n        </table>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--newstext--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_newstext]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=htmlspecialchars(stripSlashes($r[zz_newstext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_newstext]\\" type=\\"text\\" id=\\"add[z_newstext]\\" value=\\"<?=stripSlashes($r[z_newstext])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '50', 1, 7, 'article', 1, '', 0, 1, 1, '<?=ECMS_ShowEditorVar(\\"newstext\\",$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''newstext\\'',stripSlashes($r[newstext])),\\"Default\\",\\"\\",\\"300\\",\\"100%\\")?>\r\n', 0, '', 0, '', 0, 1, '', '', '', '', '', '', 0, 0),
(94, 'title', '标题', 'text', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">\r\n<?=$tts?\\"<select name=\\''ttid\\''><option value=\\''0\\''>标题分类</option>$tts</select>\\":\\"\\"?>\r\n	<input type=text name=title value=\\"<?=htmlspecialchars(stripSlashes($r[title]))?>\\" size=\\"60\\"> \r\n	<input type=\\"button\\" name=\\"button\\" value=\\"图文\\" onclick=\\"document.add.title.value=document.add.title.value+\\''(图文)\\'';\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">属性: \r\n	<input name=\\"titlefont[b]\\" type=\\"checkbox\\" value=\\"b\\"<?=$titlefontb?>>粗体\r\n	<input name=\\"titlefont[i]\\" type=\\"checkbox\\" value=\\"i\\"<?=$titlefonti?>>斜体\r\n	<input name=\\"titlefont[s]\\" type=\\"checkbox\\" value=\\"s\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\"titlecolor\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titlecolor])?>\\" size=\\"10\\"><a onclick=\\"foreColor();\\"><img src=\\"../data/images/color.gif\\" width=\\"21\\" height=\\"21\\" align=\\"absbottom\\"></a>\r\n  </td>\r\n</tr>\r\n</table>', '标题', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'VARCHAR', '200', 1, 8, 'info', 0, '', 0, 1, 1, '<input name=\\"title\\" type=\\"text\\" size=\\"42\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''title\\'',stripSlashes($r[title]))?>\\">', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(95, 'special.field', '特殊属性', '', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n  <tr>\r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">信息属性: \r\n      <input name=\\"checked\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[checked]?\\'' checked\\'':\\''\\''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\\"isgood\\" id=\\"isgood\\">\r\n        <option value=\\"0\\"<?=$r[isgood]==0?\\'' selected\\'':\\''\\''?>>不推荐</option>\r\n        <option value=\\"1\\"<?=$r[isgood]==1?\\'' selected\\'':\\''\\''?>>一级推荐</option>\r\n        <option value=\\"2\\"<?=$r[isgood]==2?\\'' selected\\'':\\''\\''?>>二级推荐</option>\r\n        <option value=\\"3\\"<?=$r[isgood]==3?\\'' selected\\'':\\''\\''?>>三级推荐</option>\r\n        <option value=\\"4\\"<?=$r[isgood]==4?\\'' selected\\'':\\''\\''?>>四级推荐</option>\r\n        <option value=\\"5\\"<?=$r[isgood]==5?\\'' selected\\'':\\''\\''?>>五级推荐</option>\r\n        <option value=\\"6\\"<?=$r[isgood]==6?\\'' selected\\'':\\''\\''?>>六级推荐</option>\r\n        <option value=\\"7\\"<?=$r[isgood]==7?\\'' selected\\'':\\''\\''?>>七级推荐</option>\r\n        <option value=\\"8\\"<?=$r[isgood]==8?\\'' selected\\'':\\''\\''?>>八级推荐</option>\r\n        <option value=\\"9\\"<?=$r[isgood]==9?\\'' selected\\'':\\''\\''?>>九级推荐</option>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\\"firsttitle\\" id=\\"firsttitle\\">\r\n        <option value=\\"0\\"<?=$r[firsttitle]==0?\\'' selected\\'':\\''\\''?>>非头条</option>\r\n        <option value=\\"1\\"<?=$r[firsttitle]==1?\\'' selected\\'':\\''\\''?>>一级头条</option>\r\n        <option value=\\"2\\"<?=$r[firsttitle]==2?\\'' selected\\'':\\''\\''?>>二级头条</option>\r\n        <option value=\\"3\\"<?=$r[firsttitle]==3?\\'' selected\\'':\\''\\''?>>三级头条</option>\r\n        <option value=\\"4\\"<?=$r[firsttitle]==4?\\'' selected\\'':\\''\\''?>>四级头条</option>\r\n        <option value=\\"5\\"<?=$r[firsttitle]==5?\\'' selected\\'':\\''\\''?>>五级头条</option>\r\n        <option value=\\"6\\"<?=$r[firsttitle]==6?\\'' selected\\'':\\''\\''?>>六级头条</option>\r\n        <option value=\\"7\\"<?=$r[firsttitle]==7?\\'' selected\\'':\\''\\''?>>七级头条</option>\r\n        <option value=\\"8\\"<?=$r[firsttitle]==8?\\'' selected\\'':\\''\\''?>>八级头条</option>\r\n        <option value=\\"9\\"<?=$r[firsttitle]==9?\\'' selected\\'':\\''\\''?>>九级头条</option>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\\"keyboard\\" type=\\"text\\" size=\\"52\\" value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">外部链接: \r\n      <input name=\\"titleurl\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titleurl])?>\\" size=\\"52\\">\r\n      <font color=\\"#666666\\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n', '特殊属性', 0, 1, 0, '', 0, '', '', 0, 8, 'info', 0, '', 0, 1, 1, '关键字: \r\n      <input name=\\"keyboard\\" type=\\"text\\" value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(96, 'titlepic', '标题图片', 'img', '\r\n<input name=\\"titlepic\\" type=\\"text\\" id=\\"titlepic\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[titlepic]))?>\\" size=\\"45\\">\r\n<a onclick=\\"window.open(\\''ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&filepass=<?=$filepass?>&doing=1&field=titlepic\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\" title=\\"选择已上传的图片\\"><img src=\\"../data/images/changeimg.gif\\" border=\\"0\\" align=\\"absbottom\\"></a> \r\n', '标题图片', 0, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--titlepic--]\\" size=\\"20\\">\r\n      )</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\"add[qz_titlepic]\\" type=\\"text\\" id=\\"add[qz_titlepic]\\" value=\\"<?=stripSlashes($r[qz_titlepic])?>\\"> \r\n        <input name=\\"add[save_titlepic]\\" type=\\"checkbox\\" id=\\"add[save_titlepic]\\" value=\\" checked\\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\"add[zz_titlepic]\\" cols=\\"60\\" rows=\\"10\\" id=\\"add[zz_titlepic]\\"><?=htmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\"add[z_titlepic]\\" type=\\"text\\" id=\\"titlepic5\\" value=\\"<?=stripSlashes($r[z_titlepic])?>\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '200', 1, 8, 'info', 0, '', 0, 1, 1, '\r\n<input type=\\"file\\" name=\\"titlepicfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(97, 'newstime', '发布时间', 'text', '<input name=\\"newstime\\" type=\\"text\\" value=\\"<?=$r[newstime]?>\\"><input type=button name=button value=\\"设为当前时间\\" onclick=\\"document.add.newstime.value=\\''<?=$todaytime?>\\''\\">', '发布时间', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'INT', '10', 1, 8, 'info', 0, '', 0, 1, 1, '', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(98, 'smalltext', '信息内容', 'textarea', '<textarea name=\\"smalltext\\" cols=\\"80\\" rows=\\"10\\" id=\\"smalltext\\"><?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[smalltext]))?></textarea>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--smalltext--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_smalltext]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_smalltext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_smalltext]" type="text" id="add[z_smalltext]" value="<?=stripSlashes($r[z_smalltext])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'TEXT', '', 1, 8, 'info', 0, '', 0, 1, 1, '<textarea name=\\"smalltext\\" cols=\\"60\\" rows=\\"10\\" id=\\"smalltext\\"><?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''smalltext\\'',stripSlashes($r[smalltext]))?></textarea>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 1),
(99, 'myarea', '所在地', 'select', '<select name=\\"myarea\\" id=\\"myarea\\" size=6 style=\\"width=150\\"><option value=\\"东城区\\"<?=$r[myarea]==\\"东城区\\"||$ecmsfirstpost==1?\\'' selected\\'':\\''\\''?>>东城区</option><option value=\\"西城区\\"<?=$r[myarea]==\\"西城区\\"?\\'' selected\\'':\\''\\''?>>西城区</option><option value=\\"崇文区\\"<?=$r[myarea]==\\"崇文区\\"?\\'' selected\\'':\\''\\''?>>崇文区</option><option value=\\"宣武区\\"<?=$r[myarea]==\\"宣武区\\"?\\'' selected\\'':\\''\\''?>>宣武区</option><option value=\\"朝阳区\\"<?=$r[myarea]==\\"朝阳区\\"?\\'' selected\\'':\\''\\''?>>朝阳区</option><option value=\\"海淀区\\"<?=$r[myarea]==\\"海淀区\\"?\\'' selected\\'':\\''\\''?>>海淀区</option><option value=\\"丰台区\\"<?=$r[myarea]==\\"丰台区\\"?\\'' selected\\'':\\''\\''?>>丰台区</option><option value=\\"石景山区\\"<?=$r[myarea]==\\"石景山区\\"?\\'' selected\\'':\\''\\''?>>石景山区</option><option value=\\"通州区\\"<?=$r[myarea]==\\"通州区\\"?\\'' selected\\'':\\''\\''?>>通州区</option><option value=\\"昌平区\\"<?=$r[myarea]==\\"昌平区\\"?\\'' selected\\'':\\''\\''?>>昌平区</option><option value=\\"大兴区\\"<?=$r[myarea]==\\"大兴区\\"?\\'' selected\\'':\\''\\''?>>大兴区</option><option value=\\"其它\\"<?=$r[myarea]==\\"其它\\"?\\'' selected\\'':\\''\\''?>>其它</option></select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--myarea--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_myarea]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_myarea]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_myarea]" type="text" id="add[z_myarea]" value="<?=stripSlashes($r[z_myarea])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '30', 1, 8, 'info', 0, '东城区:default|西城区|崇文区|宣武区|朝阳区|海淀区|丰台区|石景山区|通州区|昌平区|大兴区|其它', 0, 1, 1, '<select name=\\"myarea\\" id=\\"myarea\\" size=6 style=\\"width=150\\"><option value=\\"东城区\\"<?=$r[myarea]==\\"东城区\\"||$ecmsfirstpost==1?\\'' selected\\'':\\''\\''?>>东城区</option><option value=\\"西城区\\"<?=$r[myarea]==\\"西城区\\"?\\'' selected\\'':\\''\\''?>>西城区</option><option value=\\"崇文区\\"<?=$r[myarea]==\\"崇文区\\"?\\'' selected\\'':\\''\\''?>>崇文区</option><option value=\\"宣武区\\"<?=$r[myarea]==\\"宣武区\\"?\\'' selected\\'':\\''\\''?>>宣武区</option><option value=\\"朝阳区\\"<?=$r[myarea]==\\"朝阳区\\"?\\'' selected\\'':\\''\\''?>>朝阳区</option><option value=\\"海淀区\\"<?=$r[myarea]==\\"海淀区\\"?\\'' selected\\'':\\''\\''?>>海淀区</option><option value=\\"丰台区\\"<?=$r[myarea]==\\"丰台区\\"?\\'' selected\\'':\\''\\''?>>丰台区</option><option value=\\"石景山区\\"<?=$r[myarea]==\\"石景山区\\"?\\'' selected\\'':\\''\\''?>>石景山区</option><option value=\\"通州区\\"<?=$r[myarea]==\\"通州区\\"?\\'' selected\\'':\\''\\''?>>通州区</option><option value=\\"昌平区\\"<?=$r[myarea]==\\"昌平区\\"?\\'' selected\\'':\\''\\''?>>昌平区</option><option value=\\"大兴区\\"<?=$r[myarea]==\\"大兴区\\"?\\'' selected\\'':\\''\\''?>>大兴区</option><option value=\\"其它\\"<?=$r[myarea]==\\"其它\\"?\\'' selected\\'':\\''\\''?>>其它</option></select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(100, 'email', '邮箱', 'text', '<input name=\\"email\\" type=\\"text\\" id=\\"email\\" value=\\"<?=$ecmsfirstpost==1?$memberinfor[$user_email]:htmlspecialchars(stripSlashes($r[email]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--email--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_email]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_email]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_email]" type="text" id="add[z_email]" value="<?=stripSlashes($r[z_email])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'VARCHAR', '80', 1, 8, 'info', 0, '$memberinfor[$user_email]', 0, 1, 1, '<input name=\\"email\\" type=\\"text\\" id=\\"email\\" value=\\"<?=$ecmsfirstpost==1?$memberinfor[$user_email]:DoReqValue($mid,\\''email\\'',stripSlashes($r[email]))?>\\" size=\\"46\\">\r\n', 0, '', 0, '46', 1, 0, '', '', '', '', '', '', 0, 0),
(101, 'mycontact', '联系方式', 'text', '<input name=\\"mycontact\\" type=\\"text\\" size=60 id=\\"mycontact\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[mycontact]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--mycontact--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_mycontact]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_mycontact]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_mycontact]" type="text" id="add[z_mycontact]" value="<?=stripSlashes($r[z_mycontact])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'VARCHAR', '255', 1, 8, 'info', 0, '', 0, 1, 1, '<input name=\\"mycontact\\" type=\\"text\\" size=46 id=\\"mycontact\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''mycontact\\'',stripSlashes($r[mycontact]))?>\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(102, 'address', '联系地址', 'text', '<input name=\\"address\\" type=\\"text\\" id=\\"address\\" value=\\"<?=$ecmsfirstpost==1?$memberinfor[address]:htmlspecialchars(stripSlashes($r[address]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--address--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_address]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_address]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_address]" type="text" id="add[z_address]" value="<?=stripSlashes($r[z_address])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'VARCHAR', '255', 1, 8, 'info', 0, '$memberinfor[address]', 0, 1, 1, '<input name=\\"address\\" type=\\"text\\" id=\\"address\\" value=\\"<?=$ecmsfirstpost==1?$memberinfor[address]:DoReqValue($mid,\\''address\\'',stripSlashes($r[address]))?>\\" size=\\"46\\">\r\n', 0, '', 0, '46', 1, 0, '', '', '', '', '', '', 0, 0),
(103, 'playerid', '播放器', 'text', '\r\n<?php\r\n$player_sql=$empire->query(\\"select id,player from {$dbtbpre}enewsplayer\\");\r\nwhile($player_r=$empire->fetch($player_sql))\r\n{\r\n	$select_player=\\''\\'';\r\n	if($r[playerid]==$player_r[id])\r\n	{\r\n		$select_player=\\'' selected\\'';\r\n	}\r\n	$player_class.=\\"<option value=\\''\\".$player_r[id].\\"\\''\\".$select_player.\\">\\".$player_r[player].\\"</option>\\";\r\n}\r\n?>\r\n<select name=\\"playerid\\">\r\n<option value=0>自动识别</option>\r\n<?=$player_class?>\r\n</select>\r\n', '视频播放器', 1, 1, 1, '\r\n<?php\r\n$player_sql=$empire->query(\\"select id,player from {$dbtbpre}enewsplayer\\");\r\nwhile($player_r=$empire->fetch($player_sql))\r\n{\r\n	$select_player=\\''\\'';\r\n	if($r[playerid]==$player_r[id])\r\n	{\r\n		$select_player=\\'' selected\\'';\r\n	}\r\n	$player_class.=\\"<option value=\\''\\".$player_r[id].\\"\\''\\".$select_player.\\">\\".$player_r[player].\\"</option>\\";\r\n}\r\n?>\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--playerid--]\\" size=\\"20\\">)</td>\r\n    <td><select name=\\"add[z_playerid]\\"><option value=0>自动识别</option><?=$player_class?></select></td>\r\n  </tr>\r\n', 1, 'SMALLINT', '', 1, 5, 'movie', 0, '', 0, 1, 1, '\r\n<?php\r\n$player_sql=$empire->query(\\"select id,player from {$dbtbpre}enewsplayer\\");\r\nwhile($player_r=$empire->fetch($player_sql))\r\n{\r\n	$select_player=\\''\\'';\r\n	if($r[playerid]==$player_r[id])\r\n	{\r\n		$select_player=\\'' selected\\'';\r\n	}\r\n	$player_class.=\\"<option value=\\''\\".$player_r[id].\\"\\''\\".$select_player.\\">\\".$player_r[player].\\"</option>\\";\r\n}\r\n?>\r\n<select name=\\"playerid\\">\r\n<option value=0>自动识别</option>\r\n<?=$player_class?>\r\n</select>\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0),
(104, 'diggtop', '顶', 'text', '<input name=\\"diggtop\\" type=\\"text\\" id=\\"diggtop\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($r[diggtop]))?>\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--diggtop--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_diggtop]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_diggtop]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_diggtop]" type="text" id="add[z_diggtop]" value="<?=stripSlashes($r[z_diggtop])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 3, 'INT', '', 1, 1, 'news', 0, '', 0, 1, 1, '<input name=\\"diggtop\\" type=\\"text\\" id=\\"diggtop\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''diggtop\\'',stripSlashes($r[diggtop]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0),
(105, 'diggtop', '顶', 'text', '\r\n<input name="diggtop" type="text" id="diggtop" value="<?=$ecmsfirstpost==1?"":htmlspecialchars(stripSlashes($r[diggtop]))?>" size="">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--diggtop--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_diggtop]" cols="60" rows="10" id="textarea"><?=htmlspecialchars(stripSlashes($r[zz_diggtop]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_diggtop]" type="text" id="add[z_diggtop]" value="<?=stripSlashes($r[z_diggtop])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 3, 'INT', '', 1, 7, 'article', 0, '', 0, 1, 1, '\r\n<input name="diggtop" type="text" id="diggtop" value="<?=$ecmsfirstpost==1?"":DoReqValue($mid,''diggtop'',stripSlashes($r[diggtop]))?>" size="">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsfava`
--

CREATE TABLE IF NOT EXISTS `phome_enewsfava` (
  `favaid` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL DEFAULT '0',
  `favatime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`favaid`),
  KEY `userid` (`userid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsfavaclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewsfavaclass` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsfeedback`
--

CREATE TABLE IF NOT EXISTS `phome_enewsfeedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` smallint(6) NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `saytext` text NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `call` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(160) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `saytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `job` varchar(36) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `filepath` varchar(20) NOT NULL DEFAULT '',
  `filename` text NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsfeedbackclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewsfeedbackclass` (
  `bid` smallint(6) NOT NULL AUTO_INCREMENT,
  `bname` varchar(60) NOT NULL DEFAULT '',
  `btemp` mediumtext NOT NULL,
  `bzs` varchar(255) NOT NULL DEFAULT '',
  `enter` text NOT NULL,
  `mustenter` text NOT NULL,
  `filef` varchar(255) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `checkboxf` text NOT NULL,
  `usernames` text NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `phome_enewsfeedbackclass`
--

INSERT INTO `phome_enewsfeedbackclass` (`bid`, `bname`, `btemp`, `bzs`, `enter`, `mustenter`, `filef`, `groupid`, `checkboxf`, `usernames`) VALUES
(1, '默认反馈分类', '[!--cp.header--]\r\n<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\">\r\n  <form name=\\''feedback\\'' method=\\''post\\'' enctype=\\''multipart/form-data\\'' action=\\''../../enews/index.php\\''>\r\n    <input name=\\''enews\\'' type=\\''hidden\\'' value=\\''AddFeedback\\''>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">您的姓名:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''name\\'' type=\\''text\\'' size=\\''42\\''>\r\n        (*)</td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">职务:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''job\\'' type=\\''text\\'' size=\\''42\\''></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">公司名称:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''company\\'' type=\\''text\\'' size=\\''42\\''></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">联系邮箱:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''email\\'' type=\\''text\\'' size=\\''42\\''></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">联系电话:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''call\\'' type=\\''text\\'' size=\\''42\\''>\r\n        (*)</td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">网站:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''homepage\\'' type=\\''text\\'' size=\\''42\\''></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">联系地址:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''address\\'' type=\\''text\\'' size=\\"42\\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">信息标题:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''title\\'' type=\\''text\\'' size=\\"42\\"> (*)</td>\r\n    </tr>\r\n    <tr> \r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">信息内容(*):</div></td>\r\n      <td bgcolor=\\''ffffff\\''><textarea name=\\''saytext\\'' cols=\\''60\\'' rows=\\''12\\''></textarea> \r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td bgcolor=\\''ffffff\\''></td>\r\n      <td bgcolor=\\''ffffff\\''><input type=\\''submit\\'' name=\\''submit\\'' value=\\''提交\\''></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n[!--cp.footer--]', '', '您的姓名<!--field--->name<!--record-->职务<!--field--->job<!--record-->公司名称<!--field--->company<!--record-->联系邮箱<!--field--->email<!--record-->联系电话<!--field--->call<!--record-->网站<!--field--->homepage<!--record-->联系地址<!--field--->address<!--record-->信息标题<!--field--->title<!--record-->信息内容<!--field--->saytext<!--record-->', ',name,call,title,saytext,', ',', 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsfeedbackf`
--

CREATE TABLE IF NOT EXISTS `phome_enewsfeedbackf` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `phome_enewsfeedbackf`
--

INSERT INTO `phome_enewsfeedbackf` (`fid`, `f`, `fname`, `fform`, `fzs`, `myorder`, `ftype`, `flen`, `fformsize`, `fvalue`) VALUES
(1, 'title', '标题', 'text', '', 7, 'VARCHAR', '120', '', ''),
(2, 'saytext', '内容', 'textarea', '', 8, 'TEXT', '', '', ''),
(3, 'name', '姓名', 'text', '', 0, 'VARCHAR', '30', '', ''),
(4, 'email', '邮箱', 'text', '', 3, 'VARCHAR', '80', '', ''),
(5, 'call', '电话', 'text', '', 4, 'VARCHAR', '30', '', ''),
(6, 'homepage', '网站', 'text', '', 5, 'VARCHAR', '160', '', ''),
(7, 'company', '公司名称', 'text', '', 2, 'VARCHAR', '80', '', ''),
(8, 'address', '联系地址', 'text', '', 6, 'VARCHAR', '255', '', ''),
(9, 'job', '职务', 'text', '', 1, 'VARCHAR', '36', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsfile`
--

CREATE TABLE IF NOT EXISTS `phome_enewsfile` (
  `fileid` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(60) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `path` varchar(20) NOT NULL DEFAULT '',
  `adduser` varchar(30) NOT NULL DEFAULT '',
  `filetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `no` varchar(60) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `id` bigint(20) NOT NULL DEFAULT '0',
  `cjid` bigint(20) NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsgbook`
--

CREATE TABLE IF NOT EXISTS `phome_enewsgbook` (
  `lyid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `call` varchar(30) NOT NULL DEFAULT '',
  `lytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lytext` text NOT NULL,
  `retext` text NOT NULL,
  `bid` smallint(6) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`lyid`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsgbookclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewsgbookclass` (
  `bid` smallint(6) NOT NULL AUTO_INCREMENT,
  `bname` varchar(60) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `phome_enewsgbookclass`
--

INSERT INTO `phome_enewsgbookclass` (`bid`, `bname`, `checked`, `groupid`) VALUES
(1, '默认留言分类', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsgfenip`
--

CREATE TABLE IF NOT EXISTS `phome_enewsgfenip` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsgroup`
--

CREATE TABLE IF NOT EXISTS `phome_enewsgroup` (
  `groupid` smallint(6) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL DEFAULT '',
  `dopublic` tinyint(1) NOT NULL DEFAULT '0',
  `doclass` tinyint(1) NOT NULL DEFAULT '0',
  `dotemplate` tinyint(1) NOT NULL DEFAULT '0',
  `dopicnews` tinyint(1) NOT NULL DEFAULT '0',
  `dofile` tinyint(1) NOT NULL DEFAULT '0',
  `douser` tinyint(1) NOT NULL DEFAULT '0',
  `dolog` tinyint(1) NOT NULL DEFAULT '0',
  `domember` tinyint(1) NOT NULL DEFAULT '0',
  `dobefrom` tinyint(1) NOT NULL DEFAULT '0',
  `doword` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `doad` tinyint(1) NOT NULL DEFAULT '0',
  `dovote` tinyint(1) NOT NULL DEFAULT '0',
  `dogroup` tinyint(1) NOT NULL DEFAULT '0',
  `doall` tinyint(1) NOT NULL DEFAULT '0',
  `docj` tinyint(1) NOT NULL DEFAULT '0',
  `dobq` tinyint(1) NOT NULL DEFAULT '0',
  `domovenews` tinyint(1) NOT NULL DEFAULT '0',
  `dopostdata` tinyint(1) NOT NULL DEFAULT '0',
  `dochangedata` tinyint(1) NOT NULL DEFAULT '0',
  `dopl` tinyint(1) NOT NULL DEFAULT '0',
  `dof` tinyint(1) NOT NULL DEFAULT '0',
  `dom` tinyint(1) NOT NULL DEFAULT '0',
  `dodo` tinyint(1) NOT NULL DEFAULT '0',
  `dodbdata` tinyint(1) NOT NULL DEFAULT '0',
  `dorepnewstext` tinyint(1) NOT NULL DEFAULT '0',
  `dotempvar` tinyint(1) NOT NULL DEFAULT '0',
  `dostats` tinyint(1) NOT NULL DEFAULT '0',
  `dowriter` tinyint(1) NOT NULL DEFAULT '0',
  `dototaldata` tinyint(1) NOT NULL DEFAULT '0',
  `dosearchkey` tinyint(1) NOT NULL DEFAULT '0',
  `dozt` tinyint(1) NOT NULL DEFAULT '0',
  `docard` tinyint(1) NOT NULL DEFAULT '0',
  `dolink` tinyint(1) NOT NULL DEFAULT '0',
  `doselfinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doexecsql` tinyint(1) NOT NULL DEFAULT '0',
  `dotable` tinyint(1) NOT NULL DEFAULT '0',
  `dodownurl` tinyint(1) NOT NULL DEFAULT '0',
  `dodeldownrecord` tinyint(1) NOT NULL DEFAULT '0',
  `doshoppayfs` tinyint(1) NOT NULL DEFAULT '0',
  `doshopps` tinyint(1) NOT NULL DEFAULT '0',
  `doshopdd` tinyint(1) NOT NULL DEFAULT '0',
  `dogbook` tinyint(1) NOT NULL DEFAULT '0',
  `dofeedback` tinyint(1) NOT NULL DEFAULT '0',
  `douserpage` tinyint(1) NOT NULL DEFAULT '0',
  `donotcj` tinyint(1) NOT NULL DEFAULT '0',
  `dodownerror` tinyint(1) NOT NULL DEFAULT '0',
  `dodelinfodata` tinyint(1) NOT NULL DEFAULT '0',
  `doaddinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doeditinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodelinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doadminstyle` tinyint(1) NOT NULL DEFAULT '0',
  `dorepdownpath` tinyint(1) NOT NULL DEFAULT '0',
  `douserjs` tinyint(1) NOT NULL DEFAULT '0',
  `douserlist` tinyint(1) NOT NULL DEFAULT '0',
  `domsg` tinyint(1) NOT NULL DEFAULT '0',
  `dosendemail` tinyint(1) NOT NULL DEFAULT '0',
  `dosetmclass` tinyint(1) NOT NULL DEFAULT '0',
  `doinfodoc` tinyint(1) NOT NULL DEFAULT '0',
  `dotempgroup` tinyint(1) NOT NULL DEFAULT '0',
  `dofeedbackf` tinyint(1) NOT NULL DEFAULT '0',
  `dotask` tinyint(1) NOT NULL DEFAULT '0',
  `domemberf` tinyint(1) NOT NULL DEFAULT '0',
  `dospacestyle` tinyint(1) NOT NULL DEFAULT '0',
  `dospacedata` tinyint(1) NOT NULL DEFAULT '0',
  `dovotemod` tinyint(1) NOT NULL DEFAULT '0',
  `doplayer` tinyint(1) NOT NULL DEFAULT '0',
  `dowap` tinyint(1) NOT NULL DEFAULT '0',
  `dopay` tinyint(1) NOT NULL DEFAULT '0',
  `dobuygroup` tinyint(1) NOT NULL DEFAULT '0',
  `dosearchall` tinyint(1) NOT NULL DEFAULT '0',
  `doinfotype` tinyint(1) NOT NULL DEFAULT '0',
  `doplf` tinyint(1) NOT NULL DEFAULT '0',
  `dopltable` tinyint(1) NOT NULL DEFAULT '0',
  `dochadminstyle` tinyint(1) NOT NULL DEFAULT '0',
  `dotags` tinyint(1) NOT NULL DEFAULT '0',
  `dosp` tinyint(1) NOT NULL DEFAULT '0',
  `doyh` tinyint(1) NOT NULL DEFAULT '0',
  `dofirewall` tinyint(1) NOT NULL DEFAULT '0',
  `dosetsafe` tinyint(1) NOT NULL DEFAULT '0',
  `douserclass` tinyint(1) NOT NULL DEFAULT '0',
  `doworkflow` tinyint(1) NOT NULL DEFAULT '0',
  `domenu` tinyint(1) NOT NULL DEFAULT '0',
  `dopubvar` tinyint(1) NOT NULL DEFAULT '0',
  `doclassf` tinyint(1) NOT NULL DEFAULT '0',
  `doztf` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `phome_enewsgroup`
--

INSERT INTO `phome_enewsgroup` (`groupid`, `groupname`, `dopublic`, `doclass`, `dotemplate`, `dopicnews`, `dofile`, `douser`, `dolog`, `domember`, `dobefrom`, `doword`, `dokey`, `doad`, `dovote`, `dogroup`, `doall`, `docj`, `dobq`, `domovenews`, `dopostdata`, `dochangedata`, `dopl`, `dof`, `dom`, `dodo`, `dodbdata`, `dorepnewstext`, `dotempvar`, `dostats`, `dowriter`, `dototaldata`, `dosearchkey`, `dozt`, `docard`, `dolink`, `doselfinfo`, `doexecsql`, `dotable`, `dodownurl`, `dodeldownrecord`, `doshoppayfs`, `doshopps`, `doshopdd`, `dogbook`, `dofeedback`, `douserpage`, `donotcj`, `dodownerror`, `dodelinfodata`, `doaddinfo`, `doeditinfo`, `dodelinfo`, `doadminstyle`, `dorepdownpath`, `douserjs`, `douserlist`, `domsg`, `dosendemail`, `dosetmclass`, `doinfodoc`, `dotempgroup`, `dofeedbackf`, `dotask`, `domemberf`, `dospacestyle`, `dospacedata`, `dovotemod`, `doplayer`, `dowap`, `dopay`, `dobuygroup`, `dosearchall`, `doinfotype`, `doplf`, `dopltable`, `dochadminstyle`, `dotags`, `dosp`, `doyh`, `dofirewall`, `dosetsafe`, `douserclass`, `doworkflow`, `domenu`, `dopubvar`, `doclassf`, `doztf`) VALUES
(1, '超级管理员', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewshy`
--

CREATE TABLE IF NOT EXISTS `phome_enewshy` (
  `fid` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `cid` int(11) NOT NULL DEFAULT '0',
  `fsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `userid` (`userid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewshyclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewshyclass` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsindexpage`
--

CREATE TABLE IF NOT EXISTS `phome_enewsindexpage` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsinfoclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewsinfoclass` (
  `classid` int(11) NOT NULL AUTO_INCREMENT,
  `bclassid` int(11) NOT NULL DEFAULT '0',
  `classname` varchar(100) NOT NULL DEFAULT '',
  `infourl` mediumtext NOT NULL,
  `newsclassid` smallint(6) NOT NULL DEFAULT '0',
  `startday` date NOT NULL DEFAULT '0000-00-00',
  `endday` date NOT NULL DEFAULT '0000-00-00',
  `bz` text NOT NULL,
  `num` smallint(6) NOT NULL DEFAULT '0',
  `copyimg` tinyint(1) NOT NULL DEFAULT '0',
  `renum` smallint(6) NOT NULL DEFAULT '0',
  `keyboard` text NOT NULL,
  `oldword` text NOT NULL,
  `newword` text NOT NULL,
  `titlelen` smallint(6) NOT NULL DEFAULT '0',
  `retitlewriter` tinyint(1) NOT NULL DEFAULT '0',
  `smalltextlen` smallint(6) NOT NULL DEFAULT '0',
  `zz_smallurl` text NOT NULL,
  `zz_newsurl` text NOT NULL,
  `httpurl` varchar(255) NOT NULL DEFAULT '',
  `repad` text NOT NULL,
  `imgurl` varchar(255) NOT NULL DEFAULT '',
  `relistnum` smallint(6) NOT NULL DEFAULT '0',
  `zz_titlepicl` text NOT NULL,
  `z_titlepicl` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepicl` varchar(255) NOT NULL DEFAULT '',
  `save_titlepicl` varchar(10) NOT NULL DEFAULT '',
  `keynum` tinyint(4) NOT NULL DEFAULT '0',
  `insertnum` smallint(6) NOT NULL DEFAULT '0',
  `copyflash` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `pagetype` tinyint(1) NOT NULL DEFAULT '0',
  `smallpagezz` text NOT NULL,
  `pagezz` text NOT NULL,
  `smallpageallzz` text NOT NULL,
  `pageallzz` text NOT NULL,
  `mark` tinyint(1) NOT NULL DEFAULT '0',
  `enpagecode` tinyint(1) NOT NULL DEFAULT '0',
  `recjtheurl` tinyint(1) NOT NULL DEFAULT '0',
  `hiddenload` tinyint(1) NOT NULL DEFAULT '0',
  `justloadin` tinyint(1) NOT NULL DEFAULT '0',
  `justloadcheck` tinyint(1) NOT NULL DEFAULT '0',
  `delloadinfo` tinyint(1) NOT NULL DEFAULT '0',
  `pagerepad` mediumtext NOT NULL,
  `newsztid` text NOT NULL,
  `getfirstpic` tinyint(4) NOT NULL DEFAULT '0',
  `oldpagerep` text NOT NULL,
  `newpagerep` text NOT NULL,
  `keeptime` smallint(6) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `newstextisnull` tinyint(1) NOT NULL DEFAULT '0',
  `getfirstspic` tinyint(1) NOT NULL DEFAULT '0',
  `getfirstspicw` smallint(6) NOT NULL DEFAULT '0',
  `getfirstspich` smallint(6) NOT NULL DEFAULT '0',
  `doaddtextpage` tinyint(1) NOT NULL DEFAULT '0',
  `infourlispage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`),
  KEY `newsclassid` (`newsclassid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `phome_enewsinfoclass`
--

INSERT INTO `phome_enewsinfoclass` (`classid`, `bclassid`, `classname`, `infourl`, `newsclassid`, `startday`, `endday`, `bz`, `num`, `copyimg`, `renum`, `keyboard`, `oldword`, `newword`, `titlelen`, `retitlewriter`, `smalltextlen`, `zz_smallurl`, `zz_newsurl`, `httpurl`, `repad`, `imgurl`, `relistnum`, `zz_titlepicl`, `z_titlepicl`, `qz_titlepicl`, `save_titlepicl`, `keynum`, `insertnum`, `copyflash`, `tid`, `tbname`, `pagetype`, `smallpagezz`, `pagezz`, `smallpageallzz`, `pageallzz`, `mark`, `enpagecode`, `recjtheurl`, `hiddenload`, `justloadin`, `justloadcheck`, `delloadinfo`, `pagerepad`, `newsztid`, `getfirstpic`, `oldpagerep`, `newpagerep`, `keeptime`, `lasttime`, `newstextisnull`, `getfirstspic`, `getfirstspicw`, `getfirstspich`, `doaddtextpage`, `infourlispage`) VALUES
(1, 0, '帝国软件 - java栏目', 'http://www.phome.net/document/java/\r\nhttp://www.phome.net/document/java/index_2.html\r\nhttp://www.phome.net/document/java/index_3.html', 34, '2007-11-20', '2099-12-31', '', 0, 0, 2, '', '', '', 0, 0, 200, '', '          <td height=\\"25\\"> <div align=\\"left\\"><a href=\\"[!--newsurl--]\\"', 'http://www.phome.net', '', 'http://www.phome.net', 1, '', '', '', '', 0, 10, 0, 1, 'news', 0, '', '', '', '', 0, 7, 0, 0, 0, 0, 0, '', '|', 0, '', '', 0, 1208829667, 0, 0, 105, 118, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsinfotype`
--

CREATE TABLE IF NOT EXISTS `phome_enewsinfotype` (
  `typeid` smallint(6) NOT NULL AUTO_INCREMENT,
  `tname` varchar(30) NOT NULL DEFAULT '',
  `mid` smallint(6) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `yhid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`typeid`),
  KEY `mid` (`mid`,`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsinfovote`
--

CREATE TABLE IF NOT EXISTS `phome_enewsinfovote` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `voteip` mediumtext NOT NULL,
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `diyotherlink` tinyint(1) NOT NULL DEFAULT '0',
  `infouptime` int(10) NOT NULL DEFAULT '0',
  `infodowntime` int(10) NOT NULL DEFAULT '0',
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsjstemp`
--

CREATE TABLE IF NOT EXISTS `phome_enewsjstemp` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `showdate` varchar(20) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `phome_enewsjstemp`
--

INSERT INTO `phome_enewsjstemp` (`tempid`, `tempname`, `temptext`, `classid`, `isdefault`, `showdate`, `modid`, `subnews`, `subtitle`) VALUES
(1, '默认js模板', '[!--empirenews.listtemp--]<li><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></li>[!--empirenews.listtemp--]', 0, 1, 'm-d', 1, 0, 32);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsjstempclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewsjstempclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewskey`
--

CREATE TABLE IF NOT EXISTS `phome_enewskey` (
  `keyid` smallint(6) NOT NULL AUTO_INCREMENT,
  `keyname` varchar(60) NOT NULL DEFAULT '',
  `keyurl` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`keyid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewslink`
--

CREATE TABLE IF NOT EXISTS `phome_enewslink` (
  `lid` smallint(6) NOT NULL AUTO_INCREMENT,
  `lname` varchar(100) NOT NULL DEFAULT '',
  `lpic` varchar(255) NOT NULL DEFAULT '',
  `lurl` varchar(255) NOT NULL DEFAULT '',
  `ltime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `width` varchar(10) NOT NULL DEFAULT '',
  `height` varchar(10) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '',
  `myorder` tinyint(4) NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `lsay` text NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `ltype` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `phome_enewslink`
--

INSERT INTO `phome_enewslink` (`lid`, `lname`, `lpic`, `lurl`, `ltime`, `onclick`, `width`, `height`, `target`, `myorder`, `email`, `lsay`, `checked`, `ltype`, `classid`) VALUES
(1, '帝国软件', 'http://www.phome.net/img/link/empirecms.gif', 'http://www.phome.net', '2006-09-13 14:28:57', 0, '88', '31', '_blank', 0, '', '帝国软件', 1, 0, 0),
(2, '帝国软件', 'http://www.phome.net/img/link/empirecms.gif', 'http://www.phome.net', '2006-09-13 14:30:14', 0, '88', '31', '_blank', 0, '', '帝国软件', 1, 0, 0),
(3, '帝国软件', 'http://www.phome.net/img/link/empirecms.gif', 'http://www.phome.net', '2006-09-13 14:30:32', 0, '88', '31', '_blank', 0, '', '帝国软件', 1, 0, 0),
(4, '帝国软件', 'http://www.phome.net/img/link/empirecms.gif', 'http://www.phome.net', '2006-09-13 14:30:50', 0, '88', '31', '_blank', 0, '', '帝国软件', 1, 0, 0),
(5, '帝国软件', 'http://www.phome.net/img/link/empirecms.gif', 'http://www.phome.net', '2006-09-13 14:31:50', 0, '88', '31', '_blank', 0, '', '帝国软件', 1, 0, 0),
(6, '帝国软件', 'http://www.phome.net/img/link/empirecms.gif', 'http://www.phome.net', '2006-09-13 14:32:07', 0, '88', '31', '_blank', 0, '', '帝国软件', 1, 0, 0),
(7, '帝国软件', 'http://www.phome.net/img/link/empirecms.gif', 'http://www.phome.net', '2006-09-13 14:32:24', 0, '88', '31', '_blank', 0, '', '帝国软件', 1, 0, 0),
(8, '帝国CMS官方网站', '', 'http://www.phome.net', '2008-05-08 18:13:24', 0, '88', '31', '_blank', 0, '', '', 1, 0, 0),
(9, '帝国CMS官方论坛', '', 'http://bbs.phome.net', '2008-05-08 18:15:41', 0, '88', '31', '_blank', 0, '', '', 1, 0, 0),
(10, '帝国站长工具', '', 'http://www.dotool.cn', '2008-05-08 18:15:56', 0, '88', '31', '_blank', 0, '', '', 1, 0, 0),
(11, '帝国CMS模板下载', '', 'http://www.phome.net/zy/template/', '2008-05-08 18:18:35', 0, '88', '31', '_blank', 0, '', '', 1, 0, 0),
(12, '帝国CMS教程', '', 'http://bbs.phome.net/listthread-35-cms-page-0.html', '2008-05-08 18:19:19', 0, '88', '31', '_blank', 0, '', '', 1, 0, 0),
(13, '帝国备份王下载', '', 'http://www.phome.net/ebak2010/', '2008-05-08 18:19:55', 0, '88', '31', '_blank', 0, '', '', 1, 0, 0),
(14, '帝国CMS用户案例', '', 'http://www.phome.net/EmpireCMS/UserSite/', '2008-05-08 18:22:11', 0, '88', '31', '_blank', 0, '', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewslinkclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewslinkclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewslinktmp`
--

CREATE TABLE IF NOT EXISTS `phome_enewslinktmp` (
  `newsurl` varchar(255) NOT NULL DEFAULT '',
  `checkrnd` varchar(50) NOT NULL DEFAULT '',
  `linkid` bigint(20) NOT NULL AUTO_INCREMENT,
  `titlepic` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`linkid`),
  KEY `checkrnd` (`checkrnd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewslisttemp`
--

CREATE TABLE IF NOT EXISTS `phome_enewslisttemp` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `phome_enewslisttemp`
--

INSERT INTO `phome_enewslisttemp` (`tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`) VALUES
(1, '默认新闻列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"news_list\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--empirenews.listtemp--]<ul>\r\n<!--list.var1-->\r\n<!--list.var2-->\r\n<!--list.var3-->\r\n<!--list.var4-->\r\n<!--list.var5--></ul>\r\n[!--empirenews.listtemp--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n<tr>\r\n                <td height=\\"38\\"><div class=\\"epages\\">[!--show.listpage--]</div></td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo] \r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '<li><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a> <span>[!--newstime--]</span></li>', 5, 1, 'Y-m-d', 0, 0, 0),
(2, '默认下载列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"down_list\\"><table bgcolor=\\"#FFFFFF\\" width=\\"100%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" style=\\"table-layout:  fixed;  word-wrap:  break-word\\">\r\n<tr align=\\"center\\">\r\n<td bgcolor=\\"#D0E7F7\\">软件名称</td>\r\n<td width=\\"76\\"  nowrap=\\"nowrap\\" bgcolor=\\"#D0E7F7\\">整理日期</td>\r\n<td width=\\"70\\" nowrap=\\"nowrap\\" bgcolor=\\"#D0E7F7\\">软件大小</td>\r\n<td width=\\"50\\" nowrap=\\"nowrap\\" bgcolor=\\"#D0E7F7\\">人气</td>\r\n<td width=\\"76\\" nowrap=\\"nowrap\\" bgcolor=\\"#D0E7F7\\">软件等级</td>\r\n</tr>\r\n[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]\r\n</table></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐下载</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,2,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 200, 0, '<tr> \r\n    <td width=\\"290\\"><img src=\\"[!--news.url--]e/data/images/list.gif\\" width=\\"11\\" height=\\"11\\" border=\\"0\\" /> <b>[!--class.name--]<a href=\\"[!--titleurl--]\\">[!--title--]</a></b></td>\r\n    <td align=\\"center\\" nowrap=\\"nowrap\\">[!--newstime--]</td>\r\n    <td align=\\"center\\" nowrap=\\"nowrap\\">[!--filesize--]</td>\r\n    <td align=\\"center\\" nowrap=\\"nowrap\\">[!--totaldown--]</td>\r\n    <td align=\\"center\\" nowrap=\\"nowrap\\"><img src=\\"[!--news.url--]e/data/images/[!--star--]star.gif\\" border=\\"0\\" /></td>\r\n  </tr>\r\n  <tr valign=\\"top\\"> \r\n    <td colspan=\\"5\\" class=\\"softsay\\">[!--softsay--]</td>\r\n</tr>\r\n  <tr> \r\n    <td colspan=\\"5\\"><font color=\\"green\\">界面语言：</font>[!--language--]  <font color=\\"green\\">软件类型：</font>[!--softtype--]  <font color=\\"green\\">授权方式：</font>[!--softsq--]  <font color=\\"green\\">运行平台：</font>[!--softfj--]</td>\r\n</tr></td></tr>\r\n  <tr> \r\n    <td colspan=\\"5\\"><img src=\\"[!--news.url--]e/data/images/line.gif\\" width=\\"100%\\" height=\\"9\\" /></td>\r\n</tr>', 1, 2, 'Y-m-d', 0, 0, 0),
(3, '默认图片列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"photo_list\\">\r\n[!--empirenews.listtemp--]\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"line_bottom\\">\r\n	<tr>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var1--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var2--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var3--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var4--></td>\r\n	</tr>\r\n</table>\r\n[!--empirenews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>图片推荐</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"4\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td align=\\"center\\" class=\\"titlepic\\"><a href=\\"[!--titleurl--]\\"><img src=\\"[!--titlepic--]\\" alt=\\"[!--oldtitle--]\\" width=\\"128\\" height=\\"90\\" border=\\"0\\" /></a></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\\"center\\"><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></td>\r\n	</tr>\r\n</table>', 4, 3, 'Y-m-d H:i:s', 22, 0, 0),
(4, '默认FLASH列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"flash_list\\">\r\n[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐下载</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 200, 0, '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"8\\" class=\\"line_bottom\\">\r\n<tr valign=\\"top\\">\r\n<td width=\\"200\\" align=\\"center\\"><a href=\\"[!--titleurl--]\\"><img src=\\"[!--titlepic--]\\" width=\\"200\\" height=\\"150\\" border=\\"0\\" /></a></td>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td width=\\"70%\\" height=\\"26\\" style=\\"font-size:14px\\"><strong><a href=\\"[!--titleurl--]\\">[!--title--]</a></strong></td>\r\n<td width=\\"30%\\"><div align=\\"right\\">[!--newstime--]</div></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\\"2\\"class=\\"flashsay\\">简介：[!--flashsay--]</td>\r\n</tr>\r\n<tr>\r\n<td height=\\"26\\" colspan=\\"2\\">作者：[!--flashwriter--]　文件大小：[!--filesize--]　作品人气：[!--onclick--] </td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>', 1, 4, 'Y-m-d', 0, 0, 0),
(5, '默认电影列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"movie_list\\">\r\n[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>影视推荐</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 100, 0, '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"8\\" class=\\"line_bottom\\">\r\n<tr valign=\\"top\\">\r\n    <td width=\\"27%\\" align=\\"center\\" class=\\"titlepic\\"><a href=\\"[!--titleurl--]\\"><img src=\\"[!--titlepic--]\\" alt=\\"[!--oldtitle--]\\" width=\\"120\\" height=\\"150\\" border=\\"0\\" /></a></td>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n          <td width=\\"80%\\" height=\\"26\\" style=\\"font-size:14px\\"><strong><a href=\\"[!--titleurl--]\\">[!--title--]</a></strong> \r\n            <img src=\\"[!--news.url--]e/data/images/[!--star--]star.gif\\" alt=\\"推荐指数[!--star--]颗星\\" border=\\"0\\" align=\\"absmiddle\\" /></td>\r\n          <td width=\\"20%\\"> \r\n            <div align=\\"right\\">[!--newstime--]</div></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\\"2\\"><strong>年代：</strong>2008　　<strong>出品公司：</strong>[!--company--]</td>\r\n</tr>\r\n<tr>\r\n	<td height=\\"26\\" colspan=\\"2\\"><strong>导演：</strong>[!--playadmin--]</td>\r\n</tr>\r\n<tr>\r\n	<td height=\\"26\\" colspan=\\"2\\"><strong>主演：</strong>[!--player--]</td>\r\n</tr>\r\n<tr>\r\n	<td height=\\"26\\" colspan=\\"2\\"><strong>类型：</strong>[!--movietype--]</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\\"2\\"><strong>影片简介：</strong>[!--moviesay--] [<a title=\\"阅读全文\\" href=\\"[!--titleurl--]\\">详细内容</a>]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>', 1, 5, 'Y-m-d', 0, 0, 0),
(6, '默认商城列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"shop_list\\">\r\n[!--empirenews.listtemp--]\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"line_bottom\\">\r\n	<tr>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var1--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var2--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var3--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var4--></td>\r\n	</tr>\r\n</table>\r\n[!--empirenews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>商品推荐</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 60, 0, '<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"4\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td align=\\"center\\" class=\\"titlepic\\"><a href=\\"[!--titleurl--]\\"><img src=\\"[!--titlepic--]\\" alt=\\"[!--oldtitle--]\\" width=\\"120\\" height=\\"120\\" border=\\"0\\" /></a></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\\"center\\"><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\\"center\\" class=\\"tprice\\">市场价：<span>￥[!--tprice--]</span></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\\"center\\" class=\\"price\\">优惠价：<span>￥[!--price--]</span></td>\r\n	</tr>\r\n</table>', 4, 6, 'Y-m-d', 20, 0, 0),
(7, '默认文章列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"news_list\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--empirenews.listtemp--]<ul>\r\n<!--list.var1-->\r\n<!--list.var2-->\r\n<!--list.var3-->\r\n<!--list.var4-->\r\n<!--list.var5--></ul>\r\n[!--empirenews.listtemp--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo] \r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '<li><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a> <span>[!--newstime--]</span></li>', 5, 7, 'Y-m-d', 0, 0, 0),
(8, '分类信息默认列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"info_list\\">\r\n[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\">\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>地区导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--temp.infoarea--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>分类导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--temp.infoclassnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>推荐信息</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[!--self.goodnews--]\r\n</ul></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 120, 0, '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"8\\" class=\\"line_bottom\\">\r\n<tr valign=\\"top\\">\r\n<td align=\\"center\\" class=\\"titlepic\\"><a href=\\"[!--titleurl--]\\"><img src=\\"[!--titlepic--]\\" alt=\\"[!--oldtitle--]\\" width=\\"80\\" height=\\"60\\" border=\\"0\\" /></a></td>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td width=\\"70%\\" height=\\"26\\" style=\\"font-size:14px\\"><strong>[<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--classid--]&amp;ph=1&amp;myarea=[!--myarea--]\\">[!--myarea--]</a>] <a href=\\"[!--titleurl--]\\">[!--title--]</a>\r\n</strong> 关注：<span class=\\"click\\">[!--onclick--]</span></td>\r\n<td width=\\"30%\\"><div align=\\"right\\">[!--newstime--]</div></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\\"2\\" class=\\"smalltext\\">[!--smalltext--] [<a title=\\"阅读全文\\" href=\\"[!--titleurl--]\\">详细内容</a>]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>', 1, 8, 'Y-m-d', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewslisttempclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewslisttempclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewslog`
--

CREATE TABLE IF NOT EXISTS `phome_enewslog` (
  `loginid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `logintime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `loginip` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(30) NOT NULL DEFAULT '',
  `loginauth` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`loginid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `phome_enewslog`
--

INSERT INTO `phome_enewslog` (`loginid`, `username`, `logintime`, `loginip`, `status`, `password`, `loginauth`) VALUES
(1, 'admin', '2012-09-28 10:45:44', '::1', 1, '', 0),
(2, 'root', '2012-09-28 14:26:12', '::1', 0, 'r***t', 0),
(3, 'root', '2012-09-28 14:26:25', '::1', 0, 'r***t', 0),
(4, 'admin', '2012-09-28 14:26:46', '::1', 1, '', 0),
(5, 'admin', '2012-09-28 20:53:52', '::1', 1, '', 0),
(6, 'admin', '2012-10-08 14:20:34', '::1', 1, '', 0),
(7, 'admin', '2012-10-08 16:56:28', '::1', 1, '', 0),
(8, 'admin', '2012-10-08 20:58:13', '::1', 1, '', 0),
(9, 'admin', '2012-10-09 18:58:04', '::1', 1, '', 0),
(10, 'root', '2012-10-09 19:10:11', '::1', 0, 'r***t', 0),
(11, 'admin', '2012-10-09 19:10:33', '::1', 1, '', 0),
(12, 'admin', '2012-10-09 22:30:49', '::1', 1, '', 0),
(13, 'admin', '2012-10-10 14:12:24', '::1', 1, '', 0),
(14, 'admin', '2012-10-10 17:51:13', '::1', 1, '', 0),
(15, 'admin', '2012-10-10 18:16:51', '::1', 1, '', 0),
(16, 'admin', '2012-10-10 19:46:30', '::1', 1, '', 0),
(17, 'admin', '2012-10-10 22:13:39', '::1', 1, '', 0),
(18, 'admin', '2012-10-11 10:37:39', '::1', 1, '', 0),
(19, 'admin', '2012-10-11 17:54:40', '::1', 1, '', 0),
(20, 'admin', '2012-10-11 21:41:12', '::1', 1, '', 0),
(21, 'admin', '2012-10-12 00:16:24', '::1', 1, '', 0),
(22, 'admin', '2012-10-12 08:45:48', '::1', 1, '', 0),
(23, 'admin', '2012-10-12 14:19:14', '::1', 1, '', 0),
(24, 'admin', '2012-10-12 15:05:16', '::1', 1, '', 0),
(25, 'admin', '2012-10-12 23:19:11', '::1', 1, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsloginfail`
--

CREATE TABLE IF NOT EXISTS `phome_enewsloginfail` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `phome_enewsloginfail`
--

INSERT INTO `phome_enewsloginfail` (`ip`, `num`, `lasttime`) VALUES
('::1', 1, 1349781011);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsmember`
--

CREATE TABLE IF NOT EXISTS `phome_enewsmember` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `rnd` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `registertime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` int(11) NOT NULL DEFAULT '0',
  `userdate` int(11) NOT NULL DEFAULT '0',
  `money` float(11,2) NOT NULL DEFAULT '0.00',
  `zgroupid` smallint(6) NOT NULL DEFAULT '0',
  `havemsg` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `salt` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsmemberadd`
--

CREATE TABLE IF NOT EXISTS `phome_enewsmemberadd` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `oicq` varchar(25) NOT NULL DEFAULT '',
  `msn` varchar(120) NOT NULL DEFAULT '',
  `call` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `spacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `homepage` varchar(200) NOT NULL DEFAULT '',
  `saytext` text NOT NULL,
  `company` varchar(255) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `userpic` varchar(200) NOT NULL DEFAULT '',
  `spacename` varchar(255) NOT NULL DEFAULT '',
  `spacegg` text NOT NULL,
  `viewstats` int(11) NOT NULL DEFAULT '0',
  `todayinfodate` varchar(10) NOT NULL DEFAULT '',
  `todayaddinfo` int(11) NOT NULL DEFAULT '0',
  `todaydate` varchar(10) NOT NULL DEFAULT '',
  `todaydown` int(11) NOT NULL DEFAULT '0',
  `regip` varchar(20) NOT NULL DEFAULT '',
  `authstr` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsmemberf`
--

CREATE TABLE IF NOT EXISTS `phome_enewsmemberf` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `phome_enewsmemberf`
--

INSERT INTO `phome_enewsmemberf` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `myorder`, `ftype`, `flen`, `fvalue`, `fformsize`) VALUES
(1, 'truename', '真实姓名', 'text', '\r\n<input name="truename" type="text" id="truename" value="<?=$ecmsfirstpost==1?"":htmlspecialchars(stripSlashes($addr[truename]))?>">\r\n', '', 1, 'VARCHAR', '20', '', ''),
(2, 'oicq', 'QQ号码', 'text', '<input name=\\"oicq\\" type=\\"text\\" id=\\"oicq\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($addr[oicq]))?>\\">\r\n', '', 5, 'VARCHAR', '25', '', ''),
(3, 'msn', 'MSN', 'text', '<input name=\\"msn\\" type=\\"text\\" id=\\"msn\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($addr[msn]))?>\\">\r\n', '', 6, 'VARCHAR', '120', '', ''),
(4, 'call', '联系电话', 'text', '<input name=\\"call\\" type=\\"text\\" id=\\"call\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($addr[call]))?>\\">\r\n', '', 2, 'VARCHAR', '30', '', ''),
(5, 'phone', '手机', 'text', '<input name=\\"phone\\" type=\\"text\\" id=\\"phone\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($addr[phone]))?>\\">\r\n', '', 4, 'VARCHAR', '30', '', ''),
(6, 'address', '联系地址', 'text', '<input name=\\"address\\" type=\\"text\\" id=\\"address\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($addr[address]))?>\\" size=\\"50\\">\r\n', '', 9, 'VARCHAR', '255', '', ''),
(7, 'zip', '邮编', 'text', '<input name=\\"zip\\" type=\\"text\\" id=\\"zip\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($addr[zip]))?>\\" size=\\"8\\">\r\n', '', 10, 'VARCHAR', '8', '', ''),
(9, 'homepage', '网址', 'text', '\r\n<input name="homepage" type="text" id="homepage" value="<?=$ecmsfirstpost==1?"":htmlspecialchars(stripSlashes($addr[homepage]))?>">\r\n', '', 7, 'VARCHAR', '200', '', ''),
(10, 'saytext', '简介', 'textarea', '<textarea name=\\"saytext\\" cols=\\"65\\" rows=\\"10\\" id=\\"saytext\\"><?=$ecmsfirstpost==1?\\"\\":stripSlashes($addr[saytext])?></textarea>\r\n', '', 11, 'TEXT', '', '', ''),
(11, 'company', '公司名称', 'text', '<input name=\\"company\\" type=\\"text\\" id=\\"company\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":htmlspecialchars(stripSlashes($addr[company]))?>\\" size=\\"38\\">\r\n', '', 0, 'VARCHAR', '255', '', ''),
(12, 'fax', '传真', 'text', '\r\n<input name="fax" type="text" id="fax" value="<?=$ecmsfirstpost==1?"":htmlspecialchars(stripSlashes($addr[fax]))?>">\r\n', '', 3, 'VARCHAR', '30', '', ''),
(13, 'userpic', '会员头像', 'img', '<input type=\\"file\\" name=\\"userpicfile\\">&nbsp;&nbsp;\r\n<?=empty($addr[userpic])?\\"\\":\\"<img src=\\''\\".htmlspecialchars(stripSlashes($addr[userpic])).\\"\\'' border=0>\\"?>', '', 8, 'VARCHAR', '200', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsmemberfeedback`
--

CREATE TABLE IF NOT EXISTS `phome_enewsmemberfeedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `ftext` text NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `uname` varchar(30) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`fid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsmemberform`
--

CREATE TABLE IF NOT EXISTS `phome_enewsmemberform` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT,
  `fname` varchar(60) NOT NULL DEFAULT '',
  `ftemp` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `enter` text NOT NULL,
  `mustenter` text NOT NULL,
  `filef` varchar(255) NOT NULL DEFAULT '',
  `imgf` varchar(255) NOT NULL DEFAULT '0',
  `tobrf` text NOT NULL,
  `viewenter` text NOT NULL,
  `searchvar` varchar(255) NOT NULL DEFAULT '',
  `canaddf` text NOT NULL,
  `caneditf` text NOT NULL,
  `checkboxf` text NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `phome_enewsmemberform`
--

INSERT INTO `phome_enewsmemberform` (`fid`, `fname`, `ftemp`, `fzs`, `enter`, `mustenter`, `filef`, `imgf`, `tobrf`, `viewenter`, `searchvar`, `canaddf`, `caneditf`, `checkboxf`) VALUES
(1, '个人注册表单', '<table width=\\''100%\\'' align=\\''center\\'' cellpadding=3 cellspacing=1 bgcolor=\\''#DBEAF5\\''>\r\n<tr><td width=\\''25%\\'' height=25 bgcolor=\\''ffffff\\''>真实姓名</td><td bgcolor=\\''ffffff\\''>[!--truename--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>QQ号码</td><td bgcolor=\\''ffffff\\''>[!--oicq--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>MSN</td><td bgcolor=\\''ffffff\\''>[!--msn--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系电话</td><td bgcolor=\\''ffffff\\''>[!--call--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>手机</td><td bgcolor=\\''ffffff\\''>[!--phone--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>网站地址</td><td bgcolor=\\''ffffff\\''>[!--homepage--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>会员头像</td><td bgcolor=\\''ffffff\\''>[!--userpic--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系地址</td><td bgcolor=\\''ffffff\\''>[!--address--]&nbsp;邮编: [!--zip--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>个人介绍</td><td bgcolor=\\''ffffff\\''>[!--saytext--]</td></tr>\r\n</table>', '', '真实姓名<!--field--->truename<!--record-->联系电话<!--field--->call<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网站地址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->简介<!--field--->saytext<!--record-->', '', ',', ',userpic,', ',saytext,', '真实姓名<!--field--->truename<!--record-->联系电话<!--field--->call<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网站地址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->简介<!--field--->saytext<!--record-->', '', ',truename,call,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',truename,call,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ','),
(2, '企员注册表单', '<table width=\\''100%\\'' align=\\''center\\'' cellpadding=3 cellspacing=1 bgcolor=\\''#DBEAF5\\''><tr><td width=\\''25%\\'' height=25 bgcolor=\\''ffffff\\''>公司名称</td><td bgcolor=\\''ffffff\\''>[!--company--](*)</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系人</td><td bgcolor=\\''ffffff\\''>[!--truename--](*)</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系电话</td><td bgcolor=\\''ffffff\\''>[!--call--](*)</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>传真</td><td bgcolor=\\''ffffff\\''>[!--fax--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>手机</td><td bgcolor=\\''ffffff\\''>[!--phone--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>QQ号码</td><td bgcolor=\\''ffffff\\''>[!--oicq--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>MSN</td><td bgcolor=\\''ffffff\\''>[!--msn--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>网址</td><td bgcolor=\\''ffffff\\''>[!--homepage--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>会员头像</td><td bgcolor=\\''ffffff\\''>[!--userpic--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系地址</td><td bgcolor=\\''ffffff\\''>[!--address--]&nbsp;邮编: [!--zip--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>公司介绍</td><td bgcolor=\\''ffffff\\''>[!--saytext--]</td></tr></table>', '', '公司名称<!--field--->company<!--record-->联系人<!--field--->truename<!--record-->联系电话<!--field--->call<!--record-->传真<!--field--->fax<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->公司介绍<!--field--->saytext<!--record-->', ',company,truename,call,', ',', ',userpic,', ',saytext,', '公司名称<!--field--->company<!--record-->联系人<!--field--->truename<!--record-->联系电话<!--field--->call<!--record-->传真<!--field--->fax<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->公司介绍<!--field--->saytext<!--record-->', ',company,', ',company,truename,call,fax,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',company,truename,call,fax,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsmembergbook`
--

CREATE TABLE IF NOT EXISTS `phome_enewsmembergbook` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `isprivate` tinyint(1) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `uname` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gbtext` text NOT NULL,
  `retext` text NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsmembergroup`
--

CREATE TABLE IF NOT EXISTS `phome_enewsmembergroup` (
  `groupid` smallint(6) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(60) NOT NULL DEFAULT '',
  `level` smallint(6) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `favanum` smallint(6) NOT NULL DEFAULT '0',
  `daydown` int(11) NOT NULL DEFAULT '0',
  `msglen` int(11) NOT NULL DEFAULT '0',
  `msgnum` int(11) NOT NULL DEFAULT '0',
  `canreg` tinyint(1) NOT NULL DEFAULT '0',
  `formid` smallint(6) NOT NULL DEFAULT '0',
  `regchecked` tinyint(1) NOT NULL DEFAULT '0',
  `spacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `dayaddinfo` smallint(6) NOT NULL DEFAULT '0',
  `infochecked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `phome_enewsmembergroup`
--

INSERT INTO `phome_enewsmembergroup` (`groupid`, `groupname`, `level`, `checked`, `favanum`, `daydown`, `msglen`, `msgnum`, `canreg`, `formid`, `regchecked`, `spacestyleid`, `dayaddinfo`, `infochecked`) VALUES
(1, '普通会员', 1, 0, 120, 0, 255, 50, 1, 1, 0, 1, 0, 0),
(2, 'VIP会员', 2, 0, 200, 0, 255, 120, 0, 1, 0, 1, 0, 0),
(3, '企业会员', 1, 0, 120, 0, 255, 50, 1, 2, 0, 2, 0, 0),
(4, '企业VIP会员', 2, 0, 200, 0, 255, 120, 0, 2, 0, 2, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsmenu`
--

CREATE TABLE IF NOT EXISTS `phome_enewsmenu` (
  `menuid` int(11) NOT NULL AUTO_INCREMENT,
  `menuname` varchar(60) NOT NULL DEFAULT '',
  `menuurl` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`),
  KEY `myorder` (`myorder`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsmenuclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewsmenuclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `classtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`),
  KEY `myorder` (`myorder`),
  KEY `classtype` (`classtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsmod`
--

CREATE TABLE IF NOT EXISTS `phome_enewsmod` (
  `mid` smallint(6) NOT NULL AUTO_INCREMENT,
  `mname` varchar(100) NOT NULL DEFAULT '',
  `mtemp` mediumtext NOT NULL,
  `mzs` varchar(255) NOT NULL DEFAULT '',
  `cj` mediumtext NOT NULL,
  `enter` mediumtext NOT NULL,
  `tempvar` mediumtext NOT NULL,
  `sonclass` text NOT NULL,
  `searchvar` varchar(255) NOT NULL DEFAULT '',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `qenter` mediumtext NOT NULL,
  `mustqenterf` text NOT NULL,
  `qmtemp` mediumtext NOT NULL,
  `listandf` text NOT NULL,
  `setandf` tinyint(1) NOT NULL DEFAULT '0',
  `listtempvar` mediumtext NOT NULL,
  `qmname` varchar(30) NOT NULL DEFAULT '',
  `canaddf` text NOT NULL,
  `caneditf` text NOT NULL,
  `definfovoteid` smallint(6) NOT NULL DEFAULT '0',
  `showmod` tinyint(1) NOT NULL DEFAULT '0',
  `usemod` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `orderf` text NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listfile` varchar(30) NOT NULL DEFAULT '',
  `printtempid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `phome_enewsmod`
--

INSERT INTO `phome_enewsmod` (`mid`, `mname`, `mtemp`, `mzs`, `cj`, `enter`, `tempvar`, `sonclass`, `searchvar`, `tid`, `tbname`, `qenter`, `mustqenterf`, `qmtemp`, `listandf`, `setandf`, `listtempvar`, `qmname`, `canaddf`, `caneditf`, `definfovoteid`, `showmod`, `usemod`, `myorder`, `orderf`, `isdefault`, `listfile`, `printtempid`) VALUES
(1, '新闻系统模型', '<table width=\\''100%\\'' align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\"><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题(*)</td><td bgcolor=\\''ffffff\\''>[!--title--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>副标题</td><td bgcolor=\\''ffffff\\''>[!--ftitle--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>特殊属性</td><td bgcolor=\\''ffffff\\''>[!--special.field--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>发布时间</td><td bgcolor=\\''ffffff\\''>[!--newstime--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题图片</td><td bgcolor=\\''ffffff\\''>[!--titlepic--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>内容简介</td><td bgcolor=\\''ffffff\\''>[!--smalltext--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>作者</td><td bgcolor=\\''ffffff\\''>[!--writer--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>信息来源</td><td bgcolor=\\''ffffff\\''>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\''ffffff\\''><div align=left>新闻正文(*)</div></td></tr></table><div style=\\"background-color:#D0D0D0\\">[!--newstext--]</div>', '新闻系统模型', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->顶<!--field--->diggtop<!--record-->', '|70|65|67|68|69|', ',title,smalltext,', 1, 'news', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', ',title,newstext,', '<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\"><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题(*)</td><td bgcolor=\\''ffffff\\''>[!--title--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>副标题</td><td bgcolor=\\''ffffff\\''>[!--ftitle--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>关键字</td><td bgcolor=\\''ffffff\\''>[!--special.field--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题图片</td><td bgcolor=\\''ffffff\\''>[!--titlepic--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>内容简介</td><td bgcolor=\\''ffffff\\''>[!--smalltext--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>作者</td><td bgcolor=\\''ffffff\\''>[!--writer--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>信息来源</td><td bgcolor=\\''ffffff\\''>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\''ffffff\\''><div align=left>新闻正文(*)</div></td></tr></table><div style=\\"background-color:#D0D0D0\\">[!--newstext--]</div>', '', 0, '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->顶<!--field--->diggtop<!--record-->', '新闻', ',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,', ',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,', 0, 0, 0, 0, '', 1, '', 0),
(2, '下载系统模型', '<script>\r\nfunction AddFj(str)\r\n{var r;\r\nvar a;\r\na=document.add.softfj.value;\r\nr=a.split(str);\r\nif(r.length!=1)\r\n{return true;}\r\ndocument.add.softfj.value+=\\"/\\"+str;\r\n}\r\nfunction DelFj(str)\r\n{\r\nvar a;\r\na=document.add.softfj.value;\r\ndocument.add.softfj.value=a.replace(\\"/\\"+str,\\"\\");\r\n}\r\n</script>\r\n<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\">\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件名称(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>特殊属性</td>\r\n    <td bgcolor=\\''ffffff\\''>[!--special.field--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>发布时间</td>\r\n    <td bgcolor=ffffff>[!--newstime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件预览图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件作者</td>\r\n    <td bgcolor=ffffff>[!--softwriter--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>厂商主页</td>\r\n    <td bgcolor=ffffff>[!--homepage--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>系统演示</td>\r\n    <td bgcolor=ffffff>[!--demo--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>运行环境</td>\r\n    <td bgcolor=ffffff>[!--softfj--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td height=25 bgcolor=ffffff>&nbsp;</td>\r\n    <td bgcolor=ffffff><input type=checkbox name=check value=\\''Win9X/Me\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      Win9X/Me&nbsp; <input type=checkbox name=check value=\\''WinNT/2000/XP\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      WinNT/2000/XP&nbsp; <input type=checkbox name=check value=\\''Unix\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      Unix&nbsp; <input type=checkbox name=check value=\\''Linux\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      Linux&nbsp; <input type=checkbox name=check value=\\''DOS\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      DOS&nbsp; <input type=checkbox name=check value=\\''MAC OS\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      MAC OS&nbsp; <input type=checkbox name=check value=\\''Other\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      Other</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件属性</td>\r\n    <td bgcolor=ffffff>软件语言：[!--language--]，软件类型：[!--softtype--]，授权形式：[!--softsq--]，软件评价：[!--star--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>文件</td>\r\n    <td bgcolor=ffffff>文件类型：[!--filetype--]，文件大小：[!--filesize--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>下载地址(*)</td>\r\n    <td bgcolor=ffffff>[!--downpath--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件简介(*)</td>\r\n    <td bgcolor=ffffff>[!--softsay--]</td>\r\n  </tr>\r\n</table>', '', '软件名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->软件预览图<!--field--->titlepic<!--record-->软件作者<!--field--->softwriter<!--record-->厂商主页<!--field--->homepage<!--record-->系统演示<!--field--->demo<!--record-->运行环境<!--field--->softfj<!--record-->软件语言<!--field--->language<!--record-->软件类型<!--field--->softtype<!--record-->授权形式<!--field--->softsq<!--record-->软件评价<!--field--->star<!--record-->文件类型<!--field--->filetype<!--record-->文件大小<!--field--->filesize<!--record-->下载地址<!--field--->downpath<!--record-->软件简介<!--field--->softsay<!--record-->', '软件名称<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->软件预览图<!--field--->titlepic<!--record-->软件作者<!--field--->softwriter<!--record-->厂商主页<!--field--->homepage<!--record-->系统演示<!--field--->demo<!--record-->运行环境<!--field--->softfj<!--record-->软件语言<!--field--->language<!--record-->软件类型<!--field--->softtype<!--record-->授权形式<!--field--->softsq<!--record-->软件评价<!--field--->star<!--record-->文件类型<!--field--->filetype<!--record-->文件大小<!--field--->filesize<!--record-->下载地址<!--field--->downpath<!--record-->软件简介<!--field--->softsay<!--record-->', '软件名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->软件预览图<!--field--->titlepic<!--record-->软件作者<!--field--->softwriter<!--record-->厂商主页<!--field--->homepage<!--record-->系统演示<!--field--->demo<!--record-->运行环境<!--field--->softfj<!--record-->软件语言<!--field--->language<!--record-->软件类型<!--field--->softtype<!--record-->授权形式<!--field--->softsq<!--record-->软件评价<!--field--->star<!--record-->文件类型<!--field--->filetype<!--record-->文件大小<!--field--->filesize<!--record-->下载地址<!--field--->downpath<!--record-->软件简介<!--field--->softsay<!--record-->', '|38|39|40|41|', ',title,softsay,', 2, 'download', '软件名称<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->软件预览图<!--field--->titlepic<!--record-->软件作者<!--field--->softwriter<!--record-->厂商主页<!--field--->homepage<!--record-->系统演示<!--field--->demo<!--record-->运行环境<!--field--->softfj<!--record-->软件语言<!--field--->language<!--record-->软件类型<!--field--->softtype<!--record-->授权形式<!--field--->softsq<!--record-->文件类型<!--field--->filetype<!--record-->文件大小<!--field--->filesize<!--record-->下载地址<!--field--->downpath<!--record-->软件简介<!--field--->softsay<!--record-->', ',title,downpath,softsay,', '<script>\r\nfunction AddFj(str)\r\n{var r;\r\nvar a;\r\na=document.add.softfj.value;\r\nr=a.split(str);\r\nif(r.length!=1)\r\n{return true;}\r\ndocument.add.softfj.value+=\\"/\\"+str;\r\n}\r\nfunction DelFj(str)\r\n{\r\nvar a;\r\na=document.add.softfj.value;\r\ndocument.add.softfj.value=a.replace(\\"/\\"+str,\\"\\");\r\n}\r\n</script>\r\n<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\">\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件名称(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>关键字</td>\r\n    <td bgcolor=\\''ffffff\\''>[!--special.field--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件预览图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件作者</td>\r\n    <td bgcolor=ffffff>[!--softwriter--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>厂商主页</td>\r\n    <td bgcolor=ffffff>[!--homepage--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>系统演示</td>\r\n    <td bgcolor=ffffff>[!--demo--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>运行环境</td>\r\n    <td bgcolor=ffffff>[!--softfj--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td height=25 bgcolor=ffffff>&nbsp;</td>\r\n    <td bgcolor=ffffff><input type=checkbox name=check value=\\''Win9X/Me\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      Win9X/Me&nbsp; <input type=checkbox name=check value=\\''WinNT/2000/XP\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      WinNT/2000/XP&nbsp; <input type=checkbox name=check value=\\''Unix\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      Unix&nbsp; <input type=checkbox name=check value=\\''Linux\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      Linux&nbsp; <input type=checkbox name=check value=\\''DOS\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      DOS&nbsp; <input type=checkbox name=check value=\\''MAC OS\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      MAC OS&nbsp; <input type=checkbox name=check value=\\''Other\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      Other</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件属性</td>\r\n    <td bgcolor=ffffff>软件语言：[!--language--]，软件类型：[!--softtype--]，授权形式：[!--softsq--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>文件</td>\r\n    <td bgcolor=ffffff>文件类型：[!--filetype--]，文件大小：[!--filesize--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>上传软件(*)</td>\r\n    <td bgcolor=ffffff>[!--downpath--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件简介(*)</td>\r\n    <td bgcolor=ffffff>[!--softsay--]</td>\r\n  </tr>\r\n</table>', '', 0, '软件名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->软件预览图<!--field--->titlepic<!--record-->运行环境<!--field--->softfj<!--record-->软件语言<!--field--->language<!--record-->软件类型<!--field--->softtype<!--record-->授权形式<!--field--->softsq<!--record-->软件评价<!--field--->star<!--record-->文件类型<!--field--->filetype<!--record-->文件大小<!--field--->filesize<!--record-->软件简介<!--field--->softsay<!--record-->', '软件', ',title,newstime,titlepic,softwriter,homepage,demo,softfj,language,softtype,softsq,star,filetype,filesize,downpath,softsay,', ',title,newstime,titlepic,softwriter,homepage,demo,softfj,language,softtype,softsq,star,filetype,filesize,downpath,softsay,', 0, 0, 0, 0, '', 1, '', 0),
(3, '图片系统模型', '<table width=100% align=center cellpadding=3 cellspacing=1 class=tableborder>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图片名称(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>特殊属性</td>\r\n    <td bgcolor=\\''ffffff\\''>[!--special.field--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>发布时间</td>\r\n    <td bgcolor=ffffff>[!--newstime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>文件大小</td>\r\n    <td bgcolor=ffffff>[!--filesize--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>单图属性</td>\r\n    <td bgcolor=ffffff>图片尺寸：[!--picsize--]，图片分辨率：[!--picfbl--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>来源</td>\r\n    <td bgcolor=ffffff>[!--picfrom--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图片小图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图片大图</td>\r\n    <td bgcolor=ffffff>[!--picurl--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图片集</td>\r\n    <td bgcolor=ffffff>[!--morepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图集属性</td>\r\n    <td bgcolor=ffffff>每行显示条数：[!--num--]，缩图大小：[!--width--]*[!--height--]<font color=\\"#666666\\">(宽*高)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图片简介(*)</td>\r\n    <td bgcolor=ffffff>[!--picsay--]</td>\r\n  </tr>\r\n</table>', '', '图片名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->文件大小<!--field--->filesize<!--record-->图片尺寸<!--field--->picsize<!--record-->图片分辨率<!--field--->picfbl<!--record-->来源<!--field--->picfrom<!--record-->图片小图<!--field--->titlepic<!--record-->图片大图<!--field--->picurl<!--record-->图片集<!--field--->morepic<!--record-->每行显示条数<!--field--->num<!--record-->缩图宽度<!--field--->width<!--record-->缩图高度<!--field--->height<!--record-->图片简介<!--field--->picsay<!--record-->', '图片名称<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->文件大小<!--field--->filesize<!--record-->图片尺寸<!--field--->picsize<!--record-->图片分辨率<!--field--->picfbl<!--record-->来源<!--field--->picfrom<!--record-->图片小图<!--field--->titlepic<!--record-->图片大图<!--field--->picurl<!--record-->图片集<!--field--->morepic<!--record-->每行显示条数<!--field--->num<!--record-->缩图宽度<!--field--->width<!--record-->缩图高度<!--field--->height<!--record-->图片简介<!--field--->picsay<!--record-->', '图片名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->文件大小<!--field--->filesize<!--record-->图片尺寸<!--field--->picsize<!--record-->图片分辨率<!--field--->picfbl<!--record-->来源<!--field--->picfrom<!--record-->图片小图<!--field--->titlepic<!--record-->图片大图<!--field--->picurl<!--record-->图片集<!--field--->morepic<!--record-->缩图宽度<!--field--->width<!--record-->缩图高度<!--field--->height<!--record-->图片简介<!--field--->picsay<!--record-->', '|52|53|54|', ',title,picsay,', 3, 'photo', '图片名称<!--field--->title<!--record-->文件大小<!--field--->filesize<!--record-->图片尺寸<!--field--->picsize<!--record-->图片分辨率<!--field--->picfbl<!--record-->来源<!--field--->picfrom<!--record-->图片小图<!--field--->titlepic<!--record-->图片大图<!--field--->picurl<!--record-->图片简介<!--field--->picsay<!--record-->', ',title,picsay,', '<table width=100% align=center cellpadding=3 cellspacing=1 class=tableborder><tr><td width=16% height=25 bgcolor=ffffff>图片名称</td><td bgcolor=ffffff>[!--title--]</td></tr>\r\n  <tr>\r\n    <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>关键字</td>\r\n    <td bgcolor=\\''ffffff\\''>[!--special.field--]</td>\r\n  </tr>\r\n<tr><td width=16% height=25 bgcolor=ffffff>文件大小</td><td bgcolor=ffffff>[!--filesize--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片尺寸</td><td bgcolor=ffffff>[!--picsize--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片分辨率</td><td bgcolor=ffffff>[!--picfbl--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>来源</td><td bgcolor=ffffff>[!--picfrom--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片小图</td><td bgcolor=ffffff>[!--titlepic--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片大图</td><td bgcolor=ffffff>[!--picurl--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片简介</td><td bgcolor=ffffff>[!--picsay--]</td></tr></table>', '', 0, '图片名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->图片小图<!--field--->titlepic<!--record-->图片大图<!--field--->picurl<!--record-->图片简介<!--field--->picsay<!--record-->', '图片', ',title,newstime,filesize,picsize,picfbl,picfrom,titlepic,picurl,morepic,num,width,height,picsay,', ',title,newstime,filesize,picsize,picfbl,picfrom,titlepic,picurl,morepic,num,width,height,picsay,', 0, 0, 0, 0, '', 1, '', 0),
(4, 'FLASH系统模型', '<table width=100% align=center cellpadding=3 cellspacing=1 class=tableborder>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作品名(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>特殊属性</td>\r\n    <td bgcolor=\\''ffffff\\''>[!--special.field--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>发布时间</td>\r\n    <td bgcolor=ffffff>[!--newstime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作品预览图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作者</td>\r\n    <td bgcolor=ffffff>[!--flashwriter--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作者邮箱</td>\r\n    <td bgcolor=ffffff>[!--email--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作品评价</td>\r\n    <td bgcolor=ffffff>[!--star--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>文件大小</td>\r\n    <td bgcolor=ffffff>[!--filesize--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>Flash地址(*)</td>\r\n    <td bgcolor=ffffff>[!--flashurl--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>Flash规格</td>\r\n    <td bgcolor=ffffff>[!--width--]*[!--height--]<font color=\\"#666666\\">(宽度*高度)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作品简介(*)</td>\r\n    <td bgcolor=ffffff>[!--flashsay--]</td>\r\n  </tr>\r\n</table>', '', '作品名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->作品预览图<!--field--->titlepic<!--record-->作者<!--field--->flashwriter<!--record-->作者邮箱<!--field--->email<!--record-->作品评价<!--field--->star<!--record-->文件大小<!--field--->filesize<!--record-->Flash地址<!--field--->flashurl<!--record-->Flash宽度<!--field--->width<!--record-->Flash高度<!--field--->height<!--record-->作品简介<!--field--->flashsay<!--record-->', '作品名<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->作品预览图<!--field--->titlepic<!--record-->作者<!--field--->flashwriter<!--record-->作者邮箱<!--field--->email<!--record-->作品评价<!--field--->star<!--record-->文件大小<!--field--->filesize<!--record-->Flash地址<!--field--->flashurl<!--record-->Flash宽度<!--field--->width<!--record-->Flash高度<!--field--->height<!--record-->作品简介<!--field--->flashsay<!--record-->', '作品名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->作品预览图<!--field--->titlepic<!--record-->作者<!--field--->flashwriter<!--record-->作者邮箱<!--field--->email<!--record-->作品评价<!--field--->star<!--record-->文件大小<!--field--->filesize<!--record-->Flash地址<!--field--->flashurl<!--record-->Flash宽度<!--field--->width<!--record-->Flash高度<!--field--->height<!--record-->作品简介<!--field--->flashsay<!--record-->', '|50|51|', ',title,flashwriter,flashsay,', 4, 'flash', '作品名<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->作品预览图<!--field--->titlepic<!--record-->作者<!--field--->flashwriter<!--record-->作者邮箱<!--field--->email<!--record-->文件大小<!--field--->filesize<!--record-->Flash地址<!--field--->flashurl<!--record-->Flash宽度<!--field--->width<!--record-->Flash高度<!--field--->height<!--record-->作品简介<!--field--->flashsay<!--record-->', ',title,flashurl,flashsay,', '<table width=\\''100%\\'' align=center cellpadding=3 cellspacing=1 class=tableborder>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>作品名(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>关键字</td>\r\n    <td bgcolor=\\''ffffff\\''>[!--special.field--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>作品预览图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>作者</td>\r\n    <td bgcolor=ffffff>[!--flashwriter--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>作者邮箱</td>\r\n    <td bgcolor=ffffff>[!--email--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>文件大小</td>\r\n    <td bgcolor=ffffff>[!--filesize--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>上传Flash(*)</td>\r\n    <td bgcolor=ffffff>[!--flashurl--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>Flash规格</td>\r\n    <td bgcolor=ffffff>[!--width--]*[!--height--]<font color=\\"#666666\\">(宽度*高度)</font></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>作品简介(*)</td>\r\n    <td bgcolor=ffffff>[!--flashsay--]</td>\r\n  </tr>\r\n</table>\r\n', '', 0, '作品名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->作品预览图<!--field--->titlepic<!--record-->作者<!--field--->flashwriter<!--record-->作品评价<!--field--->star<!--record-->文件大小<!--field--->filesize<!--record-->Flash地址<!--field--->flashurl<!--record-->作品简介<!--field--->flashsay<!--record-->', 'FLASH', ',title,newstime,titlepic,flashwriter,email,star,filesize,flashurl,width,height,flashsay,', ',title,newstime,titlepic,flashwriter,email,star,filesize,flashurl,width,height,flashsay,', 0, 0, 0, 0, '', 1, '', 0),
(5, '电影系统模型', '<table width=100% align=center cellpadding=3 cellspacing=1 class=tableborder>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片名(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>特殊属性</td>\r\n    <td bgcolor=\\''ffffff\\''>[!--special.field--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>发布时间</td>\r\n    <td bgcolor=ffffff>[!--newstime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片缩略图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片类型</td>\r\n    <td bgcolor=ffffff>[!--movietype--]，推荐等级：[!--star--]，扣除点数：[!--moviefen--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>出品公司</td>\r\n    <td bgcolor=ffffff>[!--company--]，出品时间：[!--movietime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>主演</td>\r\n    <td bgcolor=ffffff>[!--player--]，导演&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;：[!--playadmin--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片文件</td>\r\n    <td bgcolor=ffffff>影片格式：[!--filetype--]，影片大小：[!--filesize--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片属性</td>\r\n    <td bgcolor=ffffff>带宽要求：[!--playdk--]，片长：[!--playtime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>下载地址</td>\r\n    <td bgcolor=ffffff>[!--downpath--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>在线观看播放器</td>\r\n    <td bgcolor=ffffff>[!--playerid--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>在线观看地址</td>\r\n    <td bgcolor=ffffff>[!--onlinepath--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片简介(*)</td>\r\n    <td bgcolor=ffffff>[!--moviesay--]</td>\r\n  </tr>\r\n</table>\r\n', '', '影片名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->影片缩略图<!--field--->titlepic<!--record-->影片类型<!--field--->movietype<!--record-->出品公司<!--field--->company<!--record-->出品时间<!--field--->movietime<!--record-->主演<!--field--->player<!--record-->导演<!--field--->playadmin<!--record-->影片格式<!--field--->filetype<!--record-->影片大小<!--field--->filesize<!--record-->推荐等级<!--field--->star<!--record-->带宽要求<!--field--->playdk<!--record-->片长<!--field--->playtime<!--record-->扣除点数<!--field--->moviefen<!--record-->下载地址<!--field--->downpath<!--record-->播放器<!--field--->playerid<!--record-->在线观看地址<!--field--->onlinepath<!--record-->影片简介<!--field--->moviesay<!--record-->', '影片名<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->影片缩略图<!--field--->titlepic<!--record-->影片类型<!--field--->movietype<!--record-->出品公司<!--field--->company<!--record-->出品时间<!--field--->movietime<!--record-->主演<!--field--->player<!--record-->导演<!--field--->playadmin<!--record-->影片格式<!--field--->filetype<!--record-->影片大小<!--field--->filesize<!--record-->推荐等级<!--field--->star<!--record-->带宽要求<!--field--->playdk<!--record-->片长<!--field--->playtime<!--record-->扣除点数<!--field--->moviefen<!--record-->下载地址<!--field--->downpath<!--record-->播放器<!--field--->playerid<!--record-->在线观看地址<!--field--->onlinepath<!--record-->影片简介<!--field--->moviesay<!--record-->', '影片名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->影片缩略图<!--field--->titlepic<!--record-->影片类型<!--field--->movietype<!--record-->出品公司<!--field--->company<!--record-->出品时间<!--field--->movietime<!--record-->主演<!--field--->player<!--record-->导演<!--field--->playadmin<!--record-->影片格式<!--field--->filetype<!--record-->影片大小<!--field--->filesize<!--record-->推荐等级<!--field--->star<!--record-->带宽要求<!--field--->playdk<!--record-->片长<!--field--->playtime<!--record-->扣除点数<!--field--->moviefen<!--record-->下载地址<!--field--->downpath<!--record-->在线观看地址<!--field--->onlinepath<!--record-->影片简介<!--field--->moviesay<!--record-->', '|42|43|44|45|', ',title,movietype,company,player,playadmin,moviesay,', 5, 'movie', '', ',title,moviesay,', '<table width=100% align=center cellpadding=3 cellspacing=1 bgcolor=#DBEAF5></table>', '', 0, '影片名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->影片缩略图<!--field--->titlepic<!--record-->影片类型<!--field--->movietype<!--record-->出品公司<!--field--->company<!--record-->出品时间<!--field--->movietime<!--record-->主演<!--field--->player<!--record-->导演<!--field--->playadmin<!--record-->影片格式<!--field--->filetype<!--record-->影片大小<!--field--->filesize<!--record-->推荐等级<!--field--->star<!--record-->扣除点数<!--field--->moviefen<!--record-->影片简介<!--field--->moviesay<!--record-->', '电影', ',title,newstime,titlepic,movietype,company,movietime,player,playadmin,filetype,filesize,star,playdk,playtime,moviefen,downpath,playerid,onlinepath,moviesay,', ',title,newstime,titlepic,movietype,company,movietime,player,playadmin,filetype,filesize,star,playdk,playtime,moviefen,downpath,playerid,onlinepath,moviesay,', 0, 0, 0, 0, '', 1, '', 0),
(6, '商城系统模型', '<table width=100% align=center cellpadding=3 cellspacing=1 class=tableborder>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>商品名称(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>特殊属性</td><td bgcolor=\\''ffffff\\''>[!--special.field--]</td></tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>发布时间</td>\r\n    <td bgcolor=ffffff>[!--newstime--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>商品编号</td>\r\n    <td bgcolor=ffffff>[!--productno--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>品牌</td>\r\n    <td bgcolor=ffffff>[!--pbrand--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>简单描述</td>\r\n    <td bgcolor=ffffff>[!--intro--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>计量单位</td>\r\n    <td bgcolor=ffffff>[!--unit--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>单位重量</td>\r\n    <td bgcolor=ffffff>[!--weight--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>市场价格</td>\r\n    <td bgcolor=ffffff>[!--tprice--]元</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>购买价格</td>\r\n    <td bgcolor=ffffff>[!--price--]元</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>积分购买</td>\r\n    <td bgcolor=ffffff>[!--buyfen--]点</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>库存</td>\r\n    <td bgcolor=ffffff>[!--pmaxnum--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>商品缩略片</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>商品大图</td>\r\n    <td bgcolor=ffffff>[!--productpic--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=25 colspan=2 bgcolor=ffffff><div align=left>商品介绍(*)</div></td>\r\n  </tr>\r\n</table>\r\n<div style=\\"background-color:#D0D0D0\\">[!--newstext--]</div>', '', '商品名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->商品编号<!--field--->productno<!--record-->品牌<!--field--->pbrand<!--record-->简单描述<!--field--->intro<!--record-->计量单位<!--field--->unit<!--record-->单位重量<!--field--->weight<!--record-->市场价格<!--field--->tprice<!--record-->购买价格<!--field--->price<!--record-->积分购买<!--field--->buyfen<!--record-->库存<!--field--->pmaxnum<!--record-->商品缩略片<!--field--->titlepic<!--record-->商品大图<!--field--->productpic<!--record-->商品介绍<!--field--->newstext<!--record-->', '商品名称<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->商品编号<!--field--->productno<!--record-->品牌<!--field--->pbrand<!--record-->简单描述<!--field--->intro<!--record-->计量单位<!--field--->unit<!--record-->单位重量<!--field--->weight<!--record-->市场价格<!--field--->tprice<!--record-->购买价格<!--field--->price<!--record-->积分购买<!--field--->buyfen<!--record-->库存<!--field--->pmaxnum<!--record-->商品缩略片<!--field--->titlepic<!--record-->商品大图<!--field--->productpic<!--record-->商品介绍<!--field--->newstext<!--record-->', '商品名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->商品编号<!--field--->productno<!--record-->品牌<!--field--->pbrand<!--record-->简单描述<!--field--->intro<!--record-->计量单位<!--field--->unit<!--record-->单位重量<!--field--->weight<!--record-->市场价格<!--field--->tprice<!--record-->购买价格<!--field--->price<!--record-->积分购买<!--field--->buyfen<!--record-->库存<!--field--->pmaxnum<!--record-->商品缩略片<!--field--->titlepic<!--record-->商品大图<!--field--->productpic<!--record-->商品介绍<!--field--->newstext<!--record-->', '|46|47|48|49|', ',title,productno,pbrand,intro,price,newstext,', 6, 'shop', '', ',title,newstext,', '<table width=100% align=center cellpadding=3 cellspacing=1 bgcolor=#DBEAF5></table>', ',pbrand,', 0, '商品名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->商品编号<!--field--->productno<!--record-->品牌<!--field--->pbrand<!--record-->简单描述<!--field--->intro<!--record-->计量单位<!--field--->unit<!--record-->单位重量<!--field--->weight<!--record-->市场价格<!--field--->tprice<!--record-->购买价格<!--field--->price<!--record-->积分购买<!--field--->buyfen<!--record-->库存<!--field--->pmaxnum<!--record-->商品缩略片<!--field--->titlepic<!--record-->商品大图<!--field--->productpic<!--record-->商品介绍<!--field--->newstext<!--record-->', '商品', ',title,newstime,productno,pbrand,intro,unit,weight,tprice,price,buyfen,pmaxnum,titlepic,productpic,newstext,', ',title,newstime,productno,pbrand,intro,unit,weight,tprice,price,buyfen,pmaxnum,titlepic,productpic,newstext,', 0, 0, 0, 0, '', 1, '', 0),
(7, '文章系统模型', '<table width=\\''100%\\'' align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\"><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题(*)</td><td bgcolor=\\''ffffff\\''>[!--title--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>副标题</td><td bgcolor=\\''ffffff\\''>[!--ftitle--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>特殊属性</td><td bgcolor=\\''ffffff\\''>[!--special.field--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>发布时间</td><td bgcolor=\\''ffffff\\''>[!--newstime--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题图片</td><td bgcolor=\\''ffffff\\''>[!--titlepic--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>内容简介</td><td bgcolor=\\''ffffff\\''>[!--smalltext--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>作者</td><td bgcolor=\\''ffffff\\''>[!--writer--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>信息来源</td><td bgcolor=\\''ffffff\\''>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\''ffffff\\''><div align=left>新闻正文(*)</div></td></tr></table><div style=\\"background-color:#D0D0D0\\">[!--newstext--]</div>', '', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->顶<!--field--->diggtop<!--record-->', '|55|56|57|', ',title,smalltext,', 7, 'article', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', ',title,newstext,', '<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\"><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题(*)</td><td bgcolor=\\''ffffff\\''>[!--title--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>副标题</td><td bgcolor=\\''ffffff\\''>[!--ftitle--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>关键字</td><td bgcolor=\\''ffffff\\''>[!--special.field--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题图片</td><td bgcolor=\\''ffffff\\''>[!--titlepic--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>内容简介</td><td bgcolor=\\''ffffff\\''>[!--smalltext--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>作者</td><td bgcolor=\\''ffffff\\''>[!--writer--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>信息来源</td><td bgcolor=\\''ffffff\\''>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\''ffffff\\''><div align=left>新闻正文(*)</div></td></tr></table><div style=\\"background-color:#D0D0D0\\">[!--newstext--]</div>', '', 0, '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->顶<!--field--->diggtop<!--record-->', '文章', ',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,', ',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,', 0, 0, 0, 0, '', 1, '', 0),
(8, '分类信息系统模型', '<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\"><tr><td width=16% height=25 bgcolor=ffffff>标题</td><td bgcolor=ffffff>[!--title--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>特殊属性</td><td bgcolor=ffffff>[!--special.field--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>发布时间</td><td bgcolor=ffffff>[!--newstime--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>信息内容</td><td bgcolor=ffffff>[!--smalltext--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片</td><td bgcolor=ffffff>[!--titlepic--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>所在地</td><td bgcolor=ffffff>[!--myarea--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>联系邮箱</td><td bgcolor=ffffff>[!--email--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>联系方式</td><td bgcolor=ffffff>[!--mycontact--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>联系地址</td><td bgcolor=ffffff>[!--address--]</td></tr></table>', '', '标题<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->信息内容<!--field--->smalltext<!--record-->图片<!--field--->titlepic<!--record-->所在地<!--field--->myarea<!--record-->联系邮箱<!--field--->email<!--record-->联系方式<!--field--->mycontact<!--record-->联系地址<!--field--->address<!--record-->', '标题<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->信息内容<!--field--->smalltext<!--record-->图片<!--field--->titlepic<!--record-->所在地<!--field--->myarea<!--record-->联系邮箱<!--field--->email<!--record-->联系方式<!--field--->mycontact<!--record-->联系地址<!--field--->address<!--record-->', '标题<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->信息内容<!--field--->smalltext<!--record-->图片<!--field--->titlepic<!--record-->所在地<!--field--->myarea<!--record-->联系邮箱<!--field--->email<!--record-->联系方式<!--field--->mycontact<!--record-->联系地址<!--field--->address<!--record-->', '|11|12|13|14|15|16|18|19|20|21|23|24|25|26|28|29|30|31|', ',title,smalltext,myarea,', 8, 'info', '标题<!--field--->title<!--record-->信息内容<!--field--->smalltext<!--record-->图片<!--field--->titlepic<!--record-->所在地<!--field--->myarea<!--record-->联系邮箱<!--field--->email<!--record-->联系方式<!--field--->mycontact<!--record-->联系地址<!--field--->address<!--record-->', ',title,smalltext,myarea,email,', '<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\"><tr>\r\n    <td width=16% height=25 bgcolor=ffffff>信息标题(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td></tr><tr>\r\n    <td width=16% height=25 bgcolor=ffffff>信息内容(*)</td>\r\n    <td bgcolor=ffffff>[!--smalltext--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片</td><td bgcolor=ffffff>[!--titlepic--]</td></tr><tr>\r\n    <td width=16% height=25 bgcolor=ffffff>所在地(*)</td>\r\n    <td bgcolor=ffffff>[!--myarea--]</td></tr><tr>\r\n    <td width=16% height=25 bgcolor=ffffff>联系邮箱(*)</td>\r\n    <td bgcolor=ffffff>[!--email--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>联系方式</td><td bgcolor=ffffff>[!--mycontact--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>联系地址</td><td bgcolor=ffffff>[!--address--]</td></tr></table>', ',myarea,', 0, '标题<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->信息内容<!--field--->smalltext<!--record-->图片<!--field--->titlepic<!--record-->所在地<!--field--->myarea<!--record-->', '分类信息', ',title,newstime,smalltext,titlepic,myarea,email,mycontact,address,', ',title,newstime,smalltext,titlepic,myarea,email,mycontact,address,', 0, 0, 0, 0, '', 1, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsnewstemp`
--

CREATE TABLE IF NOT EXISTS `phome_enewsnewstemp` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `temptext` mediumtext NOT NULL,
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `phome_enewsnewstemp`
--

INSERT INTO `phome_enewsnewstemp` (`tempid`, `tempname`, `isdefault`, `temptext`, `showdate`, `modid`, `classid`) VALUES
(1, '默认新闻内容模板', 0, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name="keywords" content="[!--pagekey--]" />\r\n<meta name="description" content="[!--pagedes--]" />\r\n<link href="[!--news.url--]skin/default/css/style.css" rel="stylesheet" type="text/css" />\r\n<script type="text/javascript" src="[!--news.url--]skin/default/js/tabs.js"></script>\r\n<script type="text/javascript" src="[!--news.url--]e/data/js/ajax.js"></script>\r\n</head>\r\n<body class="showpage news">\r\n[!--temp.header--]\r\n<table width="100%" border="0" cellspacing="10" cellpadding="0">\r\n<tr valign="top">\r\n<td class="main"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="position">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width="100%" border="0" cellspacing="0" cellpadding="0" class="box">\r\n<tr>\r\n<td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="title_info">\r\n<tr>\r\n<td><h1>[!--title--]</h1></td>\r\n</tr>\r\n<tr>\r\n<td class="info_text">时间：[!--newstime--]&nbsp;&nbsp;来源：[!--befrom--]&nbsp;&nbsp;作者：[!--writer--]</td>\r\n</tr>\r\n</table>\r\n<table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n<tr>\r\n<td id="text">[!--newstext--]\r\n<p align="center" class="pageLink">[!--page.url--]</p></td>\r\n</tr>\r\n</table>\r\n\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n</td>\r\n\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n[!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', 1, 0),
(3, '默认图片内容模板(单图片)', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"Keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"showpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td>\r\n						<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"1\\" bgcolor=\\"#FFFFFF\\">\r\n							<tr>\r\n								<td bgcolor=\\"#E1EFFB\\">&nbsp;&nbsp;<strong>[!--title--]</strong></td>\r\n							</tr>\r\n							<tr>\r\n								<td><table width=\\"0\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n										<tr>\r\n											<td width=\\"25\\"><img src=\\"[!--news.url--]e/data/images/mod/center_1.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n											<td background=\\"[!--news.url--]e/data/images/mod/box_1.gif\\">&nbsp;</td>\r\n											<td width=\\"25\\"><img src=\\"[!--news.url--]e/data/images/mod/center_2.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n										</tr>\r\n										<tr>\r\n											<td background=\\"[!--news.url--]e/data/images/mod/box_4.gif\\">&nbsp;</td>\r\n											<td bgcolor=\\"#F3F3F3\\"><a href=\\"[!--news.url--]e/ViewImg/index.html?url=[!--picurl--]\\" target=\\"_blank\\"><img border=\\"0\\" src=\\"[!--picurl--]\\" class=\\"photoresize\\" /></a></td>\r\n											<td background=\\"[!--news.url--]e/data/images/mod/box_2.gif\\">&nbsp;</td>\r\n										</tr>\r\n										<tr>\r\n											<td><img src=\\"[!--news.url--]e/data/images/mod/center_3.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n											<td background=\\"[!--news.url--]e/data/images/mod/box_3.gif\\">&nbsp;</td>\r\n											<td><img src=\\"[!--news.url--]e/data/images/mod/center_4.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n										</tr>\r\n								</table></td>\r\n							</tr>\r\n							<tr>\r\n								<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"1\\">\r\n										<tr>\r\n											<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\">&nbsp;&nbsp;<strong>图片资料</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td width=\\"80\\">图片名称：</td>\r\n											<td width=\\"462\\"> [!--title--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\"#F8F8F8\\">人气：</td>\r\n											<td bgcolor=\\"#F8F8F8\\"> [!--onclick--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td>图片尺寸：</td>\r\n											<td> [!--picsize--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\"#F8F8F8\\">图片大小：</td>\r\n											<td bgcolor=\\"#F8F8F8\\"> [!--filesize--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td>编辑：</td>\r\n											<td> [!--username--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\"#F8F8F8\\">创建日期：</td>\r\n											<td bgcolor=\\"#F8F8F8\\"> [!--newstime--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td valign=\\"top\\">简介：</td>\r\n											<td valign=\\"top\\">[!--picsay--]</td>\r\n										</tr>\r\n								</table></td>\r\n							</tr>\r\n												</table>						</td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n				<tr>\r\n					<td><strong>图片推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js''></script> </ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js''></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', 3, 0),
(4, '默认图片内容模板(图片集)', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"Keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"showpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"1\\" bgcolor=\\"#FFFFFF\\">\r\n						<tr>\r\n							<td align=\\"center\\" bgcolor=\\"#E1EFFB\\"><strong>[!--title--]</strong></td>\r\n						</tr>\r\n						<tr>\r\n							<td align=\\"center\\">[eshowphoto]11,0,0[/eshowphoto]</td>\r\n						</tr>\r\n						<tr>\r\n							<td>&nbsp;</td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n				<tr>\r\n					<td><strong>图片推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js''></script> </ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js''></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', 3, 0),
(5, '默认FLASH内容模板', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"Keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"showpage news\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"title_info\\">\r\n							<tr>\r\n								<td><h1>[!--title--]</h1></td>\r\n							</tr>\r\n							<tr>\r\n								<td class=\\"info_text\\">时间：[!--newstime--]&nbsp;&nbsp;作者：[!--flashwriter--]&nbsp;&nbsp;大小：[!--filesize--]</td>\r\n							</tr>\r\n						</table>\r\n						<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n							<tr>\r\n								<td id=\\"text\\"><p align=\\"center\\">\r\n										<object classid=\\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\\" codebase=\\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0\\" name=\\"top10movie\\" width=\\"[!--width--]\\" height=\\"[!--height--]\\" id=\\"top10movie\\">\r\n											<param name=\\"movie\\" value=\\"[!--flashurl--]\\" />\r\n											<param name=\\"quality\\" value=\\"high\\" />\r\n											<param name=\\"menu\\" value=\\"false\\" />\r\n											<embed src=\\"[!--flashurl--]\\" width=\\"[!--width--]\\" height=\\"[!--height--]\\" quality=\\"high\\" pluginspage=\\"http://www.macromedia.com/go/getflashplayer\\" type=\\"application/x-shockwave-flash\\" id=\\"top10movie\\" name=\\"top10movie\\" menu=\\"false\\"></embed>\r\n										</object>\r\n									</p>\r\n									<p><strong>作品简介：</strong>[!--flashsay--]</p></td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n				<tr>\r\n					<td><strong>推荐下载</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n				<tr>\r\n					<td><strong>最后更新</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js''></script></ul></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n				<tr>\r\n					<td><strong>热门点击</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js''></script></ul></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', 4, 0),
(8, '默认文章内容模板', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]e/data/js/ajax.js\\"></script>\r\n</head>\r\n<body class=\\"showpage news\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"title_info\\">\r\n<tr>\r\n<td><h1>[!--title--]</h1></td>\r\n</tr>\r\n<tr>\r\n<td class=\\"info_text\\">时间：[!--newstime--]&nbsp;&nbsp;来源：[!--befrom--]&nbsp;&nbsp;作者：[!--writer--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n<tr>\r\n<td id=\\"text\\">[!--newstext--]\r\n<p align=\\"center\\" class=\\"pageLink\\">[!--page.url--]</p></td>\r\n</tr>\r\n</table>\r\n<table border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"8\\">\r\n<tr>\r\n<td><table border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"digg\\">\r\n<tr>\r\n<td class=\\"diggnum\\" id=\\"diggnum\\"><strong><script type=\\"text/javascript\\" src=\\"[!--news.url--]e/public/ViewClick/?classid=[!--classid--]&id=[!--id--]&down=5\\"></script></strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\\"diggit\\"><a href=\\"JavaScript:makeRequest(\\''[!--news.url--]e/public/digg/?classid=[!--classid--]&id=[!--id--]&dotop=1&doajax=1&ajaxarea=diggnum\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">来顶一下</a></td>\r\n</tr>\r\n</table></td>\r\n<td><table border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"digg\\">\r\n<tr>\r\n<td valign=\\"middle\\" class=\\"diggnum\\"><strong><a href=\\"[!--news.url--]\\"><img src=\\"[!--news.url--]skin/default/images/back.gif\\" alt=\\"返回首页\\" width=\\"12\\" height=\\"13\\" border=\\"0\\" align=\\"absmiddle\\" /></a></strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\\"diggit\\"><a href=\\"[!--news.url--]\\">返回首页</a></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>\r\n[!--temp.pl--]\r\n</td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n          <td>[phomenewspic]\\''article\\'',2,4,128,90,1,20,20[/phomenewspic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>相关文章</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[!--other.link--]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>栏目更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js''></script></ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>栏目热门</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js''></script></ul></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n[!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', 7, 0);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsnewstempclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewsnewstempclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsnotcj`
--

CREATE TABLE IF NOT EXISTS `phome_enewsnotcj` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `word` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `phome_enewsnotcj`
--

INSERT INTO `phome_enewsnotcj` (`id`, `word`) VALUES
(1, '<input type=hidden value=\\''欢迎使用帝国网站管理系统：www.phome.net\\''>'),
(2, '<phome 帝国网站管理系统,phome.net>'),
(3, '<!--帝国CMS,phome.net-->'),
(4, '<table style=display=none><tr><td>\r\nEmpire CMS,phome.net\r\n</td></tr></table>'),
(5, '<div style=display=none>\r\n拥有帝国一切，皆有可能。欢迎访问phome.net\r\n</div>');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewspage`
--

CREATE TABLE IF NOT EXISTS `phome_enewspage` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `pagetext` mediumtext NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `pagetitle` varchar(120) NOT NULL DEFAULT '',
  `pagekeywords` varchar(255) NOT NULL DEFAULT '',
  `pagedescription` varchar(255) NOT NULL DEFAULT '',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewspageclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewspageclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewspagetemp`
--

CREATE TABLE IF NOT EXISTS `phome_enewspagetemp` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewspayapi`
--

CREATE TABLE IF NOT EXISTS `phome_enewspayapi` (
  `payid` smallint(6) NOT NULL AUTO_INCREMENT,
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `myorder` tinyint(4) NOT NULL DEFAULT '0',
  `payfee` varchar(10) NOT NULL DEFAULT '',
  `payuser` varchar(60) NOT NULL DEFAULT '',
  `partner` varchar(60) NOT NULL DEFAULT '',
  `paykey` varchar(120) NOT NULL DEFAULT '',
  `paylogo` varchar(200) NOT NULL DEFAULT '',
  `paysay` text NOT NULL,
  `payname` varchar(120) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `payemail` varchar(120) NOT NULL DEFAULT '',
  `paymethod` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`payid`),
  UNIQUE KEY `paytype` (`paytype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `phome_enewspayapi`
--

INSERT INTO `phome_enewspayapi` (`payid`, `paytype`, `myorder`, `payfee`, `payuser`, `partner`, `paykey`, `paylogo`, `paysay`, `payname`, `isclose`, `payemail`, `paymethod`) VALUES
(1, 'tenpay', 1, '0', '', '', '', '', '财付通（www.tenpay.com） - 腾讯旗下在线支付平台，通过国家权威安全认证，支持各大银行网上支付。', '财付通', 0, '', 0),
(2, 'chinabank', 2, '0', '', '', '', '', '网银在线与中国工商银行、招商银行、中国建设银行、农业银行、民生银行等数十家金融机构达成协议。全面支持全国19家银行的信用卡及借记卡实现网上支付。（网址：http://www.chinabank.com.cn）', '网银在线', 0, '', 0),
(3, 'alipay', 0, '0', '', '', '', '', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。', '支付宝接口', 0, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewspayrecord`
--

CREATE TABLE IF NOT EXISTS `phome_enewspayrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `orderid` varchar(50) NOT NULL DEFAULT '',
  `money` varchar(20) NOT NULL DEFAULT '',
  `posttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paybz` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(12) NOT NULL DEFAULT '',
  `payip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`,`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewspic`
--

CREATE TABLE IF NOT EXISTS `phome_enewspic` (
  `picid` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `pic_url` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `pic_width` varchar(20) NOT NULL DEFAULT '',
  `pic_height` varchar(20) NOT NULL DEFAULT '',
  `open_pic` varchar(20) NOT NULL DEFAULT '',
  `border` tinyint(1) NOT NULL DEFAULT '0',
  `pictext` text NOT NULL,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`picid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewspicclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewspicclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `phome_enewspicclass`
--

INSERT INTO `phome_enewspicclass` (`classid`, `classname`) VALUES
(1, '默认图片信息类别');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewspl`
--

CREATE TABLE IF NOT EXISTS `phome_enewspl` (
  `plid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `sayip` varchar(20) NOT NULL DEFAULT '',
  `saytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id` int(11) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `zcnum` smallint(6) NOT NULL DEFAULT '0',
  `fdnum` smallint(6) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `stb` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`plid`),
  KEY `id` (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewspl_data_1`
--

CREATE TABLE IF NOT EXISTS `phome_enewspl_data_1` (
  `plid` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `saytext` text NOT NULL,
  PRIMARY KEY (`plid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsplayer`
--

CREATE TABLE IF NOT EXISTS `phome_enewsplayer` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `player` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(20) NOT NULL DEFAULT '',
  `bz` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `phome_enewsplayer`
--

INSERT INTO `phome_enewsplayer` (`id`, `player`, `filename`, `bz`) VALUES
(1, 'RealPlayer', 'realplayer.php', 'RealPlayer播放器'),
(2, 'MediaPlayer', 'mediaplayer.php', 'MediaPlayer播放器'),
(3, 'FLASH', 'flasher.php', 'FLASH播放器'),
(4, 'FLV播放器', 'flver.php', 'FLV播放器');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsplf`
--

CREATE TABLE IF NOT EXISTS `phome_enewsplf` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `ismust` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewspltemp`
--

CREATE TABLE IF NOT EXISTS `phome_enewspltemp` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `phome_enewspltemp`
--

INSERT INTO `phome_enewspltemp` (`tempid`, `tempname`, `temptext`, `isdefault`) VALUES
(1, '默认评论列表模板', '<!DOCTYPE HTML PUBLIC \\"-//W3C//DTD HTML 4.01 Transitional//EN\\">\r\n<html>\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<style type=\\"text/css\\">\r\n<!--\r\nbody,Table{ color: #222; font-size: 12px; }\r\na { color: #222; text-decoration: none; }\r\na:hover { color: #f00; text-decoration: underline; }\r\nh1 { font-size:32px; font-weight: bold; }\r\nh2 { color: #1e3a9e; font-size: 25px; font-weight: bold;  }\r\n.you { color: #1f3a87; font-size: 14px; }\r\n.text { font-size: 14px; padding-left: 5px; padding-right: 5px; line-height: 20px}\r\n.re a { color: #1f3a87; }\r\n.name { color: #1f3a87; }\r\n.name a { color: #1f3a87; text-decoration: underline;}\r\n.retext { background-color: #f3f3f3; width: 100%; float: left; padding-top: 22px; padding-bottom: 22px; border-top: 1px solid #ccc; }\r\n.retext textarea { width: 535px; height: 130px; float: left; margin-left: 60px; border-top-style: inset; border-top-width: 2px; border-left-style: inset; border-left-width: 2px; }\r\n.hrLine{BORDER-BOTTOM: #807d76 1px dotted;}\r\n-->\r\n</style>\r\n<script src=\\"[!--news.url--]e/data/js/ajax.js\\"></script>\r\n</head>\r\n\r\n<body topmargin=\\"0\\">\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n  <tr>\r\n    <td width=\\"210\\"><a href=\\"[!--news.url--]\\"><img src=\\"[!--news.url--]skin/default/images/logo.gif\\" border=\\"0\\" /></a></td>\r\n    <td><h1>网友评论</h1></td>\r\n    <td><div align=\\"right\\"><a href=\\"#tosaypl\\"><strong><font color=\\"#FF0000\\">我也评两句</font></strong></a></div></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#222\\">\r\n  <tr>\r\n    <td height=\\"2\\"></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n  <tr> \r\n    <td height=\\"42\\"> \r\n      <h2>评论：<a href=\\"[!--titleurl--]\\" target=\\"_blank\\"><font color=\\"#1e3a9e\\">[!--title--]</font></a></h2></td>\r\n    <td><div align=\\"right\\"><a href=\\"[!--titleurl--]\\" target=\\"_blank\\">查看原文</a></div></td>\r\n  </tr>\r\n</table>\r\n<hr align=\\"center\\" width=\\"766\\" size=1 class=hrline>\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#384EA3\\">\r\n  <form action=\\"../enews/index.php\\" method=\\"post\\" name=\\"infopfenform\\">\r\n    <input type=\\"hidden\\" name=\\"enews\\" value=\\"AddInfoPfen\\" />\r\n    <input type=\\"hidden\\" name=\\"classid\\" value=\\"[!--classid--]\\" />\r\n    <input type=\\"hidden\\" name=\\"id\\" value=\\"[!--id--]\\" />\r\n    <tr> \r\n      <td width=\\"50%\\" height=\\"27\\" valign=\\"middle\\"><font color=\\"#FFFFFF\\">&nbsp;评分: \r\n        <input type=\\"radio\\" name=\\"fen\\" value=\\"1\\">\r\n        1分 \r\n        <input type=\\"radio\\" name=\\"fen\\" value=\\"2\\">\r\n        2分 \r\n        <input name=\\"fen\\" type=\\"radio\\" value=\\"3\\" checked>\r\n        3分 \r\n        <input type=\\"radio\\" name=\\"fen\\" value=\\"4\\">\r\n        4分 \r\n        <input type=\\"radio\\" name=\\"fen\\" value=\\"5\\">\r\n        5分 \r\n        <input type=\\"submit\\" name=\\"Submit\\" value=\\"提交\\">\r\n        </font></td>\r\n      <td width=\\"50%\\" valign=\\"middle\\"><div align=\\"center\\"><font color=\\"#FFFFFF\\">平均得分: \r\n          <strong><span id=\\"pfendiv\\">[!--pinfopfen--]</span></strong> 分，共有 <strong>[!--infopfennum--]</strong> \r\n          人参与评分</font></div></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#CCCCCC\\">\r\n  <tr> \r\n    <td height=\\"30\\" bgcolor=\\"#FFFFFF\\"> \r\n      <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td width=\\"17%\\">&nbsp;&nbsp;&nbsp;网友评论</td>\r\n          <td width=\\"83%\\"><div align=\\"right\\">[!--listpage--]&nbsp;&nbsp;&nbsp;</div></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor=\\"#f8fcff\\"> [!--empirenews.listtemp--] \r\n      <table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" style=\\"word-break:break-all; word-wrap:break-all;\\">\r\n        <tr> \r\n          <td height=\\"30\\"><span class=\\"name\\">本站网友 [!--username--]</span> <font color=\\"#666666\\">ip:[!--plip--]</font></td>\r\n          <td><div align=\\"right\\"><font color=\\"#666666\\">[!--pltime--] 发表</font></div></td>\r\n        </tr>\r\n        <tr valign=\\"top\\"> \r\n          <td height=\\"50\\" colspan=\\"2\\" class=\\"text\\">[!--pltext--]</td>\r\n        </tr>\r\n        <tr> \r\n          <td height=\\"30\\">&nbsp;</td>\r\n          <td><div align=\\"right\\" class=\\"re\\"><a href=\\"#tosaypl\\"[!--includelink--]>回复</a>&nbsp; \r\n              <a href=\\"JavaScript:makeRequest(\\''../enews/?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=1&doajax=1&ajaxarea=zcpldiv[!--plid--]\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">支持</a>[<span id=\\"zcpldiv[!--plid--]\\">[!--zcnum--]</span>]&nbsp; \r\n              <a href=\\"JavaScript:makeRequest(\\''../enews/?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=0&doajax=1&ajaxarea=fdpldiv[!--plid--]\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">反对</a>[<span id=\\"fdpldiv[!--plid--]\\">[!--fdnum--]</span>]\r\n            </div></td>\r\n        </tr>\r\n      </table>\r\n      <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr>\r\n          <td background=\\"[!--news.url--]skin/default/images/plhrbg.gif\\"></td>\r\n        </tr>\r\n      </table>\r\n      [!--empirenews.listtemp--] \r\n      <div align=\\"right\\"><br />\r\n        [!--listpage--]&nbsp;&nbsp;&nbsp;<br />\r\n        <br />\r\n        <font color=\\"#FF0000\\">网友评论仅供网友表达个人看法，并不表明本站同意其观点或证实其描述&nbsp;&nbsp;&nbsp;</font><br><br> </div></td>\r\n  </tr>\r\n  <script>\r\n  function CheckPl(obj)\r\n  {\r\n  	if(obj.saytext.value==\\"\\")\r\n  	{\r\n  		alert(\\"错误，评论不能为空\\");\r\n  		obj.saytext.focus();\r\n  		return false;\r\n  	}\r\n  	return true;\r\n  }\r\n  </script>\r\n  <form action=\\"../enews/index.php\\" method=\\"post\\" name=\\"saypl\\" id=\\"saypl\\" onsubmit=\\"return CheckPl(document.saypl)\\">\r\n  <tr id=\\"tosaypl\\"> \r\n    <td bgcolor=\\"#f8fcff\\"> <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n            <td width=\\"13%\\" height=\\"28\\">&nbsp;&nbsp;&nbsp;<span class=\\"you\\">我也评两句</span></td>\r\n            <td valign=\\"middle\\">用户名： \r\n              <input name=\\"username\\" type=\\"text\\" id=\\"username\\" size=\\"12\\" value=\\"[!--lusername--]\\" />\r\n            密码： \r\n            <input name=\\"password\\" type=\\"password\\" id=\\"password\\" size=\\"12\\" value=\\"[!--lpassword--]\\" />\r\n            验证码： \r\n            <input name=\\"key\\" type=\\"text\\" id=\\"key\\" size=\\"6\\" />\r\n              <img src=\\"[!--key.url--]\\" align=\\"middle\\" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\\"[!--news.url--]e/member/register/\\" target=\\"_blank\\">还没有注册？</a></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor=\\"#f8fcff\\"> <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" class=\\"retext\\">\r\n        <tr> \r\n          <td width=\\"78%\\"><div align=\\"center\\"> \r\n              <textarea name=\\"saytext\\" cols=\\"58\\" rows=\\"6\\" id=\\"saytext\\"></textarea>\r\n            </div></td>\r\n          <td width=\\"22%\\" rowspan=\\"2\\"> <div align=\\"center\\">\r\n              <input name=\\"nomember\\" type=\\"checkbox\\" id=\\"nomember\\" value=\\"1\\" checked=\\"checked\\" />\r\n                匿名发表<br>\r\n                <br />\r\n              <input name=\\"imageField\\" type=\\"submit\\" id=\\"imageField\\" value=\\" 提 交 \\" />\r\n            </div></td>\r\n        </tr>\r\n        <tr> \r\n          <td><div align=\\"center\\"> \r\n              <script src=\\"[!--news.url--]d/js/js/plface.js\\"></script>\r\n            </div></td>\r\n        </tr>\r\n      </table> </td>\r\n  </tr>\r\n  <input name=\\"id\\" type=\\"hidden\\" id=\\"id\\" value=\\"[!--id--]\\" />\r\n  <input name=\\"classid\\" type=\\"hidden\\" id=\\"classid\\" value=\\"[!--classid--]\\" />\r\n  <input name=\\"enews\\" type=\\"hidden\\" id=\\"enews\\" value=\\"AddPl\\" />\r\n  <input name=\\"repid\\" type=\\"hidden\\" id=\\"repid\\" value=\\"0\\" />\r\n  </form>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 1);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewspostdata`
--

CREATE TABLE IF NOT EXISTS `phome_enewspostdata` (
  `postid` bigint(20) NOT NULL AUTO_INCREMENT,
  `rnd` varchar(32) NOT NULL DEFAULT '',
  `postdata` varchar(255) NOT NULL DEFAULT '',
  `ispath` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`postid`),
  KEY `rnd` (`rnd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewspostserver`
--

CREATE TABLE IF NOT EXISTS `phome_enewspostserver` (
  `pid` smallint(6) NOT NULL AUTO_INCREMENT,
  `pname` varchar(60) NOT NULL DEFAULT '',
  `purl` varchar(255) NOT NULL DEFAULT '',
  `ptype` tinyint(1) NOT NULL DEFAULT '0',
  `ftphost` varchar(255) NOT NULL DEFAULT '',
  `ftpport` varchar(20) NOT NULL DEFAULT '',
  `ftpusername` varchar(120) NOT NULL DEFAULT '',
  `ftppassword` varchar(120) NOT NULL DEFAULT '',
  `ftppath` varchar(255) NOT NULL DEFAULT '',
  `ftpmode` tinyint(1) NOT NULL DEFAULT '0',
  `ftpssl` tinyint(1) NOT NULL DEFAULT '0',
  `ftppasv` tinyint(1) NOT NULL DEFAULT '0',
  `ftpouttime` smallint(6) NOT NULL DEFAULT '0',
  `lastposttime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `ptype` (`ptype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `phome_enewspostserver`
--

INSERT INTO `phome_enewspostserver` (`pid`, `pname`, `purl`, `ptype`, `ftphost`, `ftpport`, `ftpusername`, `ftppassword`, `ftppath`, `ftpmode`, `ftpssl`, `ftppasv`, `ftpouttime`, `lastposttime`) VALUES
(1, '附件服务器', '', 1, '', '', '', '', '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsprinttemp`
--

CREATE TABLE IF NOT EXISTS `phome_enewsprinttemp` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `phome_enewsprinttemp`
--

INSERT INTO `phome_enewsprinttemp` (`tempid`, `tempname`, `temptext`, `isdefault`, `showdate`, `modid`) VALUES
(1, '默认打印模板', '<html>\r\n<head>\r\n<meta http-equiv=\\"content-type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<style>\r\nbody{font-family:宋体}td,.f12{font-size:12px}.f24 {font-size:24px;}.f14 {font-size:14px;}.title14 {font-size:14px;line-height:130%}.l17 {line-height:170%;}\r\n</style>\r\n</head>\r\n<body bgcolor=\\"#ffffff\\" topmargin=5 leftmargin=5 marginheight=5 marginwidth=5 onLoad=\\''window.print()\\''>\r\n<center>\r\n<table width=650 border=0 cellspacing=0 cellpadding=0>\r\n<tr>\r\n<td height=65 width=180><A href=\\"http://www.phome.net/\\"><IMG src=\\"../../skin/default/images/elogo.jpg\\" alt=\\"帝国软件\\" width=\\"180\\" height=\\"65\\" border=0></A></td> \r\n<td valign=\\"bottom\\">[!--url--]</td>\r\n<td width=\\"83\\" align=\\"right\\" valign=\\"bottom\\"><a href=\\''javascript:history.back()\\''>返回</a>　<a href=\\''javascript:window.print()\\''>打印</a></td>\r\n</tr>\r\n</table>\r\n<table width=650 border=0 cellpadding=0 cellspacing=20 bgcolor=\\"#EDF0F5\\">\r\n<tr>\r\n<td>\r\n<BR>\r\n<TABLE cellSpacing=0 cellPadding=0 width=\\"100%\\" border=0>\r\n<TBODY>\r\n<TR>\r\n<TH class=\\"f24\\"><FONT color=#05006c>[!--title--]</FONT></TH></TR>\r\n<TR>\r\n<TD>\r\n<HR SIZE=1 bgcolor=\\"#d9d9d9\\">\r\n</TD>\r\n</TR>\r\n<TR>\r\n<TD align=\\"middle\\" height=20><div align=\\"center\\">[!--writer--]&nbsp;&nbsp;[!--newstime--]&nbsp;&nbsp;[!--befrom--]</div></TD>\r\n</TR>\r\n<TR>\r\n<TD height=15></TD>\r\n</TR>\r\n<TR>\r\n<TD class=\\"l17\\">\r\n<FONT class=\\"f14\\" id=\\"zoom\\"> \r\n<P>[!--newstext--]<br>\r\n<BR clear=all>\r\n</P>\r\n</FONT>\r\n</TD>\r\n</TR>\r\n<TR height=10>\r\n<TD></TD>\r\n</TR>\r\n</TBODY>\r\n</TABLE>\r\n[!--titlelink--]\r\n</td>\r\n</tr>\r\n</table>\r\n</center>\r\n</body>\r\n</html>', 1, 'Y-m-d H:i:s', 1);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewspublic`
--

CREATE TABLE IF NOT EXISTS `phome_enewspublic` (
  `newsurl` varchar(120) NOT NULL DEFAULT '',
  `sitename` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `filetype` text NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `hotnum` tinyint(4) NOT NULL DEFAULT '0',
  `newnum` tinyint(4) NOT NULL DEFAULT '0',
  `relistnum` int(11) NOT NULL DEFAULT '0',
  `renewsnum` int(11) NOT NULL DEFAULT '0',
  `min_keyboard` tinyint(4) NOT NULL DEFAULT '0',
  `max_keyboard` tinyint(4) NOT NULL DEFAULT '0',
  `search_num` tinyint(4) NOT NULL DEFAULT '0',
  `search_pagenum` tinyint(4) NOT NULL DEFAULT '0',
  `newslink` tinyint(4) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `pltime` int(11) NOT NULL DEFAULT '0',
  `searchtime` int(11) NOT NULL DEFAULT '0',
  `loginnum` smallint(6) NOT NULL DEFAULT '0',
  `logintime` int(11) NOT NULL DEFAULT '0',
  `addnews_ok` tinyint(1) NOT NULL DEFAULT '0',
  `register_ok` tinyint(1) NOT NULL DEFAULT '0',
  `indextype` varchar(10) NOT NULL DEFAULT '',
  `goodlencord` tinyint(4) NOT NULL DEFAULT '0',
  `goodtype` varchar(10) NOT NULL DEFAULT '',
  `goodnum` tinyint(4) NOT NULL DEFAULT '0',
  `searchtype` varchar(10) NOT NULL DEFAULT '',
  `exittime` smallint(6) NOT NULL DEFAULT '0',
  `smalltextlen` smallint(6) NOT NULL DEFAULT '0',
  `defaultgroupid` smallint(6) NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `phpmode` tinyint(1) NOT NULL DEFAULT '0',
  `ftphost` varchar(255) NOT NULL DEFAULT '',
  `ftpport` varchar(20) NOT NULL DEFAULT '21',
  `ftpusername` varchar(120) NOT NULL DEFAULT '',
  `ftppassword` varchar(120) NOT NULL DEFAULT '',
  `ftppath` varchar(255) NOT NULL DEFAULT '',
  `ftpmode` tinyint(1) NOT NULL DEFAULT '0',
  `install` tinyint(1) NOT NULL DEFAULT '0',
  `plsize` smallint(6) NOT NULL DEFAULT '0',
  `plincludesize` smallint(6) NOT NULL DEFAULT '0',
  `hotplnum` tinyint(4) NOT NULL DEFAULT '0',
  `softversion` varchar(30) NOT NULL DEFAULT '0',
  `lctime` int(11) NOT NULL DEFAULT '0',
  `dorepnum` smallint(6) NOT NULL DEFAULT '0',
  `loadtempnum` smallint(6) NOT NULL DEFAULT '0',
  `firstnum` tinyint(4) NOT NULL DEFAULT '0',
  `bakdbpath` varchar(50) NOT NULL DEFAULT '',
  `bakdbzip` varchar(50) NOT NULL DEFAULT '',
  `downpass` varchar(32) NOT NULL DEFAULT '',
  `min_userlen` tinyint(4) NOT NULL DEFAULT '0',
  `max_userlen` tinyint(4) NOT NULL DEFAULT '0',
  `min_passlen` tinyint(4) NOT NULL DEFAULT '0',
  `max_passlen` tinyint(4) NOT NULL DEFAULT '0',
  `filechmod` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `loginkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `limittype` tinyint(1) NOT NULL DEFAULT '0',
  `plkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `redodown` smallint(6) NOT NULL DEFAULT '0',
  `fpnum` smallint(6) NOT NULL DEFAULT '0',
  `havefp` tinyint(1) NOT NULL DEFAULT '0',
  `candocode` tinyint(1) NOT NULL DEFAULT '0',
  `opennotcj` tinyint(1) NOT NULL DEFAULT '0',
  `reuserpagenum` int(11) NOT NULL DEFAULT '0',
  `revotejsnum` int(11) NOT NULL DEFAULT '0',
  `readjsnum` int(11) NOT NULL DEFAULT '0',
  `qaddtran` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtransize` int(11) NOT NULL DEFAULT '0',
  `ebakthisdb` tinyint(1) NOT NULL DEFAULT '0',
  `delnewsnum` int(11) NOT NULL DEFAULT '0',
  `markpos` tinyint(4) NOT NULL DEFAULT '0',
  `markimg` varchar(80) NOT NULL DEFAULT '',
  `marktext` varchar(80) NOT NULL DEFAULT '',
  `markfontsize` varchar(12) NOT NULL DEFAULT '',
  `markfontcolor` varchar(12) NOT NULL DEFAULT '',
  `markfont` varchar(80) NOT NULL DEFAULT '',
  `adminloginkey` tinyint(1) NOT NULL DEFAULT '0',
  `php_outtime` int(11) NOT NULL DEFAULT '0',
  `listpagefun` varchar(36) NOT NULL DEFAULT '',
  `textpagefun` varchar(36) NOT NULL DEFAULT '',
  `adfile` varchar(30) NOT NULL DEFAULT '',
  `notsaveurl` text NOT NULL,
  `jstempid` smallint(6) NOT NULL DEFAULT '0',
  `rssnum` smallint(6) NOT NULL DEFAULT '0',
  `rsssub` smallint(6) NOT NULL DEFAULT '0',
  `savetxtf` text NOT NULL,
  `dorepdlevelnum` int(11) NOT NULL DEFAULT '0',
  `listpagelistfun` varchar(36) NOT NULL DEFAULT '',
  `listpagelistnum` smallint(6) NOT NULL DEFAULT '0',
  `infolinknum` int(11) NOT NULL DEFAULT '0',
  `searchgroupid` smallint(6) NOT NULL DEFAULT '0',
  `opencopytext` tinyint(1) NOT NULL DEFAULT '0',
  `reuserjsnum` int(11) NOT NULL DEFAULT '0',
  `reuserlistnum` int(11) NOT NULL DEFAULT '0',
  `opentitleurl` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtranimgtype` text NOT NULL,
  `qaddtranfile` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtranfilesize` int(11) NOT NULL DEFAULT '0',
  `qaddtranfiletype` text NOT NULL,
  `sendmailtype` tinyint(1) NOT NULL DEFAULT '0',
  `smtphost` varchar(255) NOT NULL DEFAULT '',
  `fromemail` varchar(120) NOT NULL DEFAULT '',
  `loginemail` tinyint(1) NOT NULL DEFAULT '0',
  `emailusername` varchar(60) NOT NULL DEFAULT '',
  `emailpassword` varchar(60) NOT NULL DEFAULT '',
  `smtpport` varchar(20) NOT NULL DEFAULT '',
  `emailname` varchar(120) NOT NULL DEFAULT '',
  `deftempid` smallint(6) NOT NULL DEFAULT '0',
  `feedbacktfile` tinyint(1) NOT NULL DEFAULT '0',
  `feedbackfilesize` int(11) NOT NULL DEFAULT '0',
  `feedbackfiletype` text NOT NULL,
  `searchtempvar` tinyint(1) NOT NULL DEFAULT '0',
  `showinfolevel` smallint(6) NOT NULL DEFAULT '0',
  `navfh` varchar(20) NOT NULL DEFAULT '',
  `spicwidth` smallint(6) NOT NULL DEFAULT '0',
  `spicheight` smallint(6) NOT NULL DEFAULT '0',
  `spickill` tinyint(1) NOT NULL DEFAULT '0',
  `jpgquality` tinyint(4) NOT NULL DEFAULT '0',
  `markpct` tinyint(4) NOT NULL DEFAULT '0',
  `redoview` smallint(6) NOT NULL DEFAULT '0',
  `reggetfen` smallint(6) NOT NULL DEFAULT '0',
  `regbooktime` smallint(6) NOT NULL DEFAULT '0',
  `revotetime` smallint(6) NOT NULL DEFAULT '0',
  `nreclass` text NOT NULL,
  `nreinfo` text NOT NULL,
  `nrejs` text NOT NULL,
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `filepath` varchar(30) NOT NULL DEFAULT '',
  `openmembertranimg` tinyint(1) NOT NULL DEFAULT '0',
  `memberimgsize` int(11) NOT NULL DEFAULT '0',
  `memberimgtype` text NOT NULL,
  `openmembertranfile` tinyint(1) NOT NULL DEFAULT '0',
  `memberfilesize` int(11) NOT NULL DEFAULT '0',
  `memberfiletype` text NOT NULL,
  `nottobq` text NOT NULL,
  `defspacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `canposturl` text NOT NULL,
  `openspace` tinyint(1) NOT NULL DEFAULT '0',
  `defadminstyle` smallint(6) NOT NULL DEFAULT '0',
  `realltime` smallint(6) NOT NULL DEFAULT '0',
  `closeip` text NOT NULL,
  `openip` text NOT NULL,
  `hopenip` text NOT NULL,
  `plface` text NOT NULL,
  `plfacenum` tinyint(4) NOT NULL DEFAULT '0',
  `closewords` text NOT NULL,
  `closewordsf` text NOT NULL,
  `textpagelistnum` smallint(6) NOT NULL DEFAULT '0',
  `memberlistlevel` smallint(6) NOT NULL DEFAULT '0',
  `wapopen` tinyint(1) NOT NULL DEFAULT '0',
  `wapdefstyle` smallint(6) NOT NULL DEFAULT '0',
  `wapshowmid` varchar(255) NOT NULL DEFAULT '',
  `waplistnum` tinyint(4) NOT NULL DEFAULT '0',
  `wapsubtitle` tinyint(4) NOT NULL DEFAULT '0',
  `wapshowdate` varchar(50) NOT NULL DEFAULT '',
  `wapchar` tinyint(1) NOT NULL DEFAULT '0',
  `ebakcanlistdb` tinyint(1) NOT NULL DEFAULT '0',
  `paymoneytofen` int(11) NOT NULL DEFAULT '0',
  `payminmoney` int(11) NOT NULL DEFAULT '0',
  `keytog` tinyint(1) NOT NULL DEFAULT '0',
  `keyrnd` varchar(60) NOT NULL DEFAULT '',
  `keytime` int(11) NOT NULL DEFAULT '0',
  `regkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `opengetdown` tinyint(1) NOT NULL DEFAULT '0',
  `gbkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `fbkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `newaddinfotime` smallint(6) NOT NULL DEFAULT '0',
  `classnavline` smallint(6) NOT NULL DEFAULT '0',
  `classnavfh` varchar(120) NOT NULL DEFAULT '',
  `plgroupid` smallint(6) NOT NULL DEFAULT '0',
  `adminstyle` text NOT NULL,
  `sitekey` varchar(255) NOT NULL DEFAULT '',
  `siteintro` text NOT NULL,
  `docnewsnum` int(11) NOT NULL DEFAULT '0',
  `openschall` tinyint(1) NOT NULL DEFAULT '0',
  `schallfield` tinyint(1) NOT NULL DEFAULT '0',
  `schallminlen` tinyint(4) NOT NULL DEFAULT '0',
  `schallmaxlen` tinyint(4) NOT NULL DEFAULT '0',
  `schallnotcid` text NOT NULL,
  `schallnum` smallint(6) NOT NULL DEFAULT '0',
  `schallpagenum` smallint(6) NOT NULL DEFAULT '0',
  `dtcanbq` tinyint(1) NOT NULL DEFAULT '0',
  `dtcachetime` int(11) NOT NULL DEFAULT '0',
  `plclosewords` text NOT NULL,
  `plf` text NOT NULL,
  `plmustf` text NOT NULL,
  `pldatatbs` text NOT NULL,
  `pldeftb` varchar(6) NOT NULL DEFAULT '',
  `defpltempid` smallint(6) NOT NULL DEFAULT '0',
  `buycarnum` smallint(6) NOT NULL DEFAULT '0',
  `shopddgroupid` smallint(6) NOT NULL DEFAULT '0',
  `regretime` smallint(6) NOT NULL DEFAULT '0',
  `regclosewords` text NOT NULL,
  `regemailonly` tinyint(1) NOT NULL DEFAULT '0',
  `repkeynum` smallint(6) NOT NULL DEFAULT '0',
  `getpasstime` int(11) NOT NULL DEFAULT '0',
  `acttime` int(11) NOT NULL DEFAULT '0',
  `regacttype` tinyint(1) NOT NULL DEFAULT '0',
  `acttext` text NOT NULL,
  `getpasstext` text NOT NULL,
  `acttitle` varchar(120) NOT NULL DEFAULT '',
  `getpasstitle` varchar(120) NOT NULL DEFAULT '',
  `opengetpass` tinyint(1) NOT NULL DEFAULT '0',
  `hlistinfonum` int(11) NOT NULL DEFAULT '0',
  `qlistinfonum` int(11) NOT NULL DEFAULT '0',
  `dtncanbq` tinyint(1) NOT NULL DEFAULT '0',
  `dtncachetime` int(11) NOT NULL DEFAULT '0',
  `readdinfotime` smallint(6) NOT NULL DEFAULT '0',
  `qeditinfotime` int(11) NOT NULL DEFAULT '0',
  `ftpssl` tinyint(1) NOT NULL DEFAULT '0',
  `ftppasv` tinyint(1) NOT NULL DEFAULT '0',
  `ftpouttime` smallint(6) NOT NULL DEFAULT '0',
  `onclicktype` tinyint(1) NOT NULL DEFAULT '0',
  `onclickfilesize` int(11) NOT NULL DEFAULT '0',
  `onclickfiletime` int(11) NOT NULL DEFAULT '0',
  `schalltime` smallint(6) NOT NULL DEFAULT '0',
  `defprinttempid` smallint(6) NOT NULL DEFAULT '0',
  `opentags` tinyint(1) NOT NULL DEFAULT '0',
  `tagstempid` smallint(6) NOT NULL DEFAULT '0',
  `usetags` text NOT NULL,
  `chtags` text NOT NULL,
  `tagslistnum` smallint(6) NOT NULL DEFAULT '0',
  `closeqdt` tinyint(1) NOT NULL DEFAULT '0',
  `settop` tinyint(1) NOT NULL DEFAULT '0',
  `qlistinfomod` tinyint(1) NOT NULL DEFAULT '0',
  `pl_num` tinyint(4) NOT NULL DEFAULT '0',
  `gb_num` tinyint(4) NOT NULL DEFAULT '0',
  `member_num` tinyint(4) NOT NULL DEFAULT '0',
  `space_num` tinyint(4) NOT NULL DEFAULT '0',
  `opendoip` text NOT NULL,
  `closedoip` text NOT NULL,
  `doiptype` varchar(255) NOT NULL DEFAULT '',
  `filelday` int(11) NOT NULL DEFAULT '0',
  `infolday` int(11) NOT NULL DEFAULT '0',
  `baktempnum` tinyint(4) NOT NULL DEFAULT '0',
  `dorepkey` tinyint(1) NOT NULL DEFAULT '0',
  `dorepword` tinyint(1) NOT NULL DEFAULT '0',
  `onclickrnd` varchar(20) NOT NULL DEFAULT '',
  `indexpagedt` tinyint(1) NOT NULL DEFAULT '0',
  `keybgcolor` varchar(8) NOT NULL DEFAULT '',
  `keyfontcolor` varchar(8) NOT NULL DEFAULT '',
  `keydistcolor` varchar(8) NOT NULL DEFAULT '',
  `indexpageid` smallint(6) NOT NULL DEFAULT '0',
  `closeqdtmsg` varchar(255) NOT NULL DEFAULT '',
  `openfileserver` tinyint(1) NOT NULL DEFAULT '0',
  `closemods` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `phome_enewspublic`
--

INSERT INTO `phome_enewspublic` (`newsurl`, `sitename`, `email`, `filetype`, `filesize`, `hotnum`, `newnum`, `relistnum`, `renewsnum`, `min_keyboard`, `max_keyboard`, `search_num`, `search_pagenum`, `newslink`, `checked`, `pltime`, `searchtime`, `loginnum`, `logintime`, `addnews_ok`, `register_ok`, `indextype`, `goodlencord`, `goodtype`, `goodnum`, `searchtype`, `exittime`, `smalltextlen`, `defaultgroupid`, `fileurl`, `phpmode`, `ftphost`, `ftpport`, `ftpusername`, `ftppassword`, `ftppath`, `ftpmode`, `install`, `plsize`, `plincludesize`, `hotplnum`, `softversion`, `lctime`, `dorepnum`, `loadtempnum`, `firstnum`, `bakdbpath`, `bakdbzip`, `downpass`, `min_userlen`, `max_userlen`, `min_passlen`, `max_passlen`, `filechmod`, `tid`, `tbname`, `loginkey_ok`, `limittype`, `plkey_ok`, `redodown`, `fpnum`, `havefp`, `candocode`, `opennotcj`, `reuserpagenum`, `revotejsnum`, `readjsnum`, `qaddtran`, `qaddtransize`, `ebakthisdb`, `delnewsnum`, `markpos`, `markimg`, `marktext`, `markfontsize`, `markfontcolor`, `markfont`, `adminloginkey`, `php_outtime`, `listpagefun`, `textpagefun`, `adfile`, `notsaveurl`, `jstempid`, `rssnum`, `rsssub`, `savetxtf`, `dorepdlevelnum`, `listpagelistfun`, `listpagelistnum`, `infolinknum`, `searchgroupid`, `opencopytext`, `reuserjsnum`, `reuserlistnum`, `opentitleurl`, `qaddtranimgtype`, `qaddtranfile`, `qaddtranfilesize`, `qaddtranfiletype`, `sendmailtype`, `smtphost`, `fromemail`, `loginemail`, `emailusername`, `emailpassword`, `smtpport`, `emailname`, `deftempid`, `feedbacktfile`, `feedbackfilesize`, `feedbackfiletype`, `searchtempvar`, `showinfolevel`, `navfh`, `spicwidth`, `spicheight`, `spickill`, `jpgquality`, `markpct`, `redoview`, `reggetfen`, `regbooktime`, `revotetime`, `nreclass`, `nreinfo`, `nrejs`, `fpath`, `filepath`, `openmembertranimg`, `memberimgsize`, `memberimgtype`, `openmembertranfile`, `memberfilesize`, `memberfiletype`, `nottobq`, `defspacestyleid`, `canposturl`, `openspace`, `defadminstyle`, `realltime`, `closeip`, `openip`, `hopenip`, `plface`, `plfacenum`, `closewords`, `closewordsf`, `textpagelistnum`, `memberlistlevel`, `wapopen`, `wapdefstyle`, `wapshowmid`, `waplistnum`, `wapsubtitle`, `wapshowdate`, `wapchar`, `ebakcanlistdb`, `paymoneytofen`, `payminmoney`, `keytog`, `keyrnd`, `keytime`, `regkey_ok`, `opengetdown`, `gbkey_ok`, `fbkey_ok`, `newaddinfotime`, `classnavline`, `classnavfh`, `plgroupid`, `adminstyle`, `sitekey`, `siteintro`, `docnewsnum`, `openschall`, `schallfield`, `schallminlen`, `schallmaxlen`, `schallnotcid`, `schallnum`, `schallpagenum`, `dtcanbq`, `dtcachetime`, `plclosewords`, `plf`, `plmustf`, `pldatatbs`, `pldeftb`, `defpltempid`, `buycarnum`, `shopddgroupid`, `regretime`, `regclosewords`, `regemailonly`, `repkeynum`, `getpasstime`, `acttime`, `regacttype`, `acttext`, `getpasstext`, `acttitle`, `getpasstitle`, `opengetpass`, `hlistinfonum`, `qlistinfonum`, `dtncanbq`, `dtncachetime`, `readdinfotime`, `qeditinfotime`, `ftpssl`, `ftppasv`, `ftpouttime`, `onclicktype`, `onclickfilesize`, `onclickfiletime`, `schalltime`, `defprinttempid`, `opentags`, `tagstempid`, `usetags`, `chtags`, `tagslistnum`, `closeqdt`, `settop`, `qlistinfomod`, `pl_num`, `gb_num`, `member_num`, `space_num`, `opendoip`, `closedoip`, `doiptype`, `filelday`, `infolday`, `baktempnum`, `dorepkey`, `dorepword`, `onclickrnd`, `indexpagedt`, `keybgcolor`, `keyfontcolor`, `keydistcolor`, `indexpageid`, `closeqdtmsg`, `openfileserver`, `closemods`) VALUES
('/', '帝国网站管理系统', 'admin@phome.net', '|.gif|.jpg|.swf|.rar|.zip|.mp3|.wmv|.txt|.doc|', 2048, 10, 10, 8, 100, 2, 20, 20, 16, 0, 0, 20, 30, 5, 60, 0, 0, '.html', 0, '', 10, '.html', 40, 160, 1, '/d/file/', 0, '', '21', '', '', '', 0, 0, 500, 0, 10, '6.6,1299859210', 1222406370, 300, 50, 10, 'bdata', 'zip', 'JHCtmcF8Emb7mBbGVPD8', 3, 20, 6, 20, 1, 1, 'news', 0, 0, 1, 1, 0, 0, 1, 0, 50, 100, 100, 1, 50, 1, 300, 5, '../data/mark/maskdef.gif', '', '5', '', '../data/mark/cour.ttf', 1, 0, 'sys_ShowListPage', 'sys_ShowTextPage', 'thea', '', 1, 50, 300, ',article.newstext,', 300, 'sys_ShowListMorePage', 12, 100, 0, 0, 100, 8, 1, '|.gif|.jpg|', 1, 500, '|.zip|.rar|', 1, 'smtp.163.com', 'ecms@163.com', 1, 'ecms', 'ecms', '25', '帝国CMS', 0, 1, 500, '|.zip|.rar|', 1, 0, '>', 105, 118, 1, 80, 65, 24, 0, 30, 30, ',', ',', ',', 0, 'Y-m-d', 1, 50, '|.gif|.jpg|', 1, 500, '|.zip|.rar|', ',', 1, '', 0, 1, 0, '', '', '', '||[~e.jy~]##1.gif||[~e.kq~]##2.gif||[~e.se~]##3.gif||[~e.sq~]##4.gif||[~e.lh~]##5.gif||[~e.ka~]##6.gif||[~e.hh~]##7.gif||[~e.ys~]##8.gif||[~e.ng~]##9.gif||[~e.ot~]##10.gif||', 10, '', '', 6, 0, 1, 1, '', 10, 30, 'm-d', 0, 0, 10, 1, 2, '9KeU32EynhbYRgpHRGYeAeLvxEMWXM', 30, 0, 0, 0, 0, 0, 20, '&nbsp;|&nbsp;', 0, ',1,2,', '帝国网站管理系统,EmpireCMS', '　　帝国软件是一家专注于网络软件开发的科技公司，其主营产品“帝国网站管理系统(EmpireCMS)”是目前国内应用最广泛的CMS程序。通过多年的不断创新与完善，使系统集安全、强大、稳定、灵活于一身。目前EmpireCMS程序已经广泛应用在国内数十万家网站，覆盖国内上千万上网人群，并经过上千家知名网站的严格检测，被称为国内最安全、最稳定的开源CMS系统。', 300, 0, 1, 3, 20, ',,', 20, 16, 1, 43200, '', '', '', ',1,', '1', 1, 0, 0, 0, '', 1, 0, 72, 720, 0, '[!--username--] ，\r\n这封信是由 [!--sitename--] 发送的。\r\n\r\n您收到这封邮件，是因为在我们网站的新用户注册 Email 使用\r\n了您的地址。如果您并没有访问过我们的网站，或没有进行上述操作，请忽\r\n略这封邮件。您不需要退订或进行其他进一步的操作。\r\n\r\n----------------------------------------------------------------------\r\n帐号激活说明\r\n----------------------------------------------------------------------\r\n\r\n您是我们网站的新用户，注册 Email 时使用了本地址，我们需\r\n要对您的地址有效性进行验证以避免垃圾邮件或地址被滥用。\r\n\r\n您只需点击下面的链接即可激活您的帐号：\r\n\r\n[!--pageurl--]\r\n\r\n(如果上面不是链接形式，请将地址手工粘贴到浏览器地址栏再访问)\r\n\r\n感谢您的访问，祝您使用愉快！\r\n\r\n\r\n\r\n此致\r\n\r\n[!--sitename--] 管理团队.\r\n[!--news.url--]', '[!--username--] ，\r\n这封信是由 [!--sitename--] 发送的。\r\n\r\n您收到这封邮件，是因为在我们的网站上这个邮箱地址被登记为用户邮箱，\r\n且该用户请求使用 Email 密码重置功能所致。\r\n\r\n----------------------------------------------------------------------\r\n重要！\r\n----------------------------------------------------------------------\r\n\r\n如果您没有提交密码重置的请求或不是我们网站的注册用户，请立即忽略\r\n并删除这封邮件。只在您确认需要重置密码的情况下，才继续阅读下面的\r\n内容。\r\n\r\n----------------------------------------------------------------------\r\n密码重置说明\r\n----------------------------------------------------------------------\r\n\r\n您只需在提交请求后的三天之内，通过点击下面的链接重置您的密码：\r\n\r\n[!--pageurl--]\r\n\r\n(如果上面不是链接形式，请将地址手工粘贴到浏览器地址栏再访问)\r\n\r\n上面的页面打开后，输入新的密码后提交，之后您即可使用新的密码登录\r\n网站了。您可以在用户控制面板中随时修改您的密码。\r\n\r\n\r\n\r\n此致\r\n\r\n[!--sitename--] 管理团队.\r\n[!--news.url--]', '[[!--sitename--]] Email 地址验证', '[[!--sitename--]] 取回密码说明', 0, 30, 25, 1, 43200, 0, 0, 0, 0, 0, 0, 10, 60, 0, 1, 1, 1, ',1,2,3,4,5,6,7,8,', '', 25, 0, 0, 0, 20, 20, 20, 25, '', '', '', 0, 0, 3, 0, 0, '', 0, '', '', '', 0, '', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewspubtemp`
--

CREATE TABLE IF NOT EXISTS `phome_enewspubtemp` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `indextemp` mediumtext NOT NULL,
  `cptemp` mediumtext NOT NULL,
  `searchtemp` mediumtext NOT NULL,
  `searchjstemp` mediumtext NOT NULL,
  `searchjstemp1` mediumtext NOT NULL,
  `otherlinktemp` mediumtext NOT NULL,
  `downsofttemp` text NOT NULL,
  `onlinemovietemp` text NOT NULL,
  `listpagetemp` text NOT NULL,
  `gbooktemp` mediumtext NOT NULL,
  `loginiframe` mediumtext NOT NULL,
  `otherlinktempsub` tinyint(4) NOT NULL DEFAULT '0',
  `otherlinktempdate` varchar(20) NOT NULL DEFAULT '',
  `loginjstemp` mediumtext NOT NULL,
  `downpagetemp` mediumtext NOT NULL,
  `pljstemp` mediumtext NOT NULL,
  `schalltemp` mediumtext NOT NULL,
  `schallsubnum` smallint(6) NOT NULL DEFAULT '0',
  `schalldate` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `phome_enewspubtemp`
--

INSERT INTO `phome_enewspubtemp` (`id`, `indextemp`, `cptemp`, `searchtemp`, `searchjstemp`, `searchjstemp1`, `otherlinktemp`, `downsofttemp`, `onlinemovietemp`, `listpagetemp`, `gbooktemp`, `loginiframe`, `otherlinktempsub`, `otherlinktempdate`, `loginjstemp`, `downpagetemp`, `pljstemp`, `schalltemp`, `schallsubnum`, `schalldate`) VALUES
(1, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name="keywords" content="[!--pagekey--]" />\r\n<meta name="description" content="[!--pagedes--]" />\r\n<link href="[!--news.url--]skin/default/css/style.css" rel="stylesheet" type="text/css" />\r\n<script type="text/javascript" src="[!--news.url--]skin/default/js/tabs.js"></script>\r\n</head>\r\n<body class="homepage">\r\n[!--temp.header--]\r\n<div id="topbanner">\r\n<img src="/skin/default/images/top-banner.jpg" />\r\n</div>\r\n\r\n<div class="buttom">\r\n<div>\r\n<table>\r\n<tr>\r\n<td colspan="2" width="220" class="subtitle">专家团队<td>\r\n</tr>\r\n<tr>\r\n<td class="subcontent">首席顾问</td>\r\n<td>艾华</td>\r\n</tr>\r\n<tr>\r\n<td class="subcontent">资深税务师</td>\r\n<td>刑太武</td>\r\n</tr>\r\n<tr>\r\n<td class="subcontent">资深税务师</td>\r\n<td>任广</td>\r\n</tr>\r\n</table>\r\n</div>\r\n\r\n<div >\r\n<table>\r\n<tr>\r\n<td width="220" class="subtitle">近期培训<td>\r\n</tr>\r\n<tr>\r\n<td width="220" class="subcontent"><a href="/a/peixunzhuanti/qiyechongzu">企业重组培训</a></td>\r\n</tr>\r\n<tr>\r\n<td width="220" class="subcontent"><a href="/a/peixunzhuanti/yinggaizeng">营改增专题</a></td>\r\n</tr>\r\n<tr>\r\n<td width="220" class="subcontent"><a href="/a/peixunzhuanti/zhushui">注册税务师培训</a></td>\r\n</tr>\r\n</table>\r\n</div>\r\n\r\n<div >\r\n<table>\r\n<tr>\r\n<td width="220" class="subtitle">业界动态<td>\r\n</tr>\r\n<tr>\r\n<td width="220"><ul>[ecmsinfo]65,3,32,0,0,2,0[/ecmsinfo]</ul></td>\r\n</tr>\r\n</table>\r\n</div>\r\n\r\n<div >\r\n<table>\r\n<tr>\r\n<td width="220" class="subtitle">税务文化研究<td>\r\n</tr>\r\n<tr>\r\n<td width="220"><ul>[ecmsinfo]70,3,32,0,0,2,0[/ecmsinfo]</ul></td>\r\n</tr>\r\n</table>\r\n</div>\r\n\r\n</div>\r\n\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--] \r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>现在的位置：[!--newsnav--]\r\n</td>\r\n</tr>\r\n</table>\r\n      <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n        <tr> \r\n          <td width=\\"300\\" valign=\\"top\\"> \r\n		  <?php\r\n		  $lguserid=intval(getcvar(\\''mluserid\\''));//登陆用户ID\r\n		  $lgusername=RepPostVar(getcvar(\\''mlusername\\''));//登陆用户\r\n		  $lggroupid=intval(getcvar(\\''mlgroupid\\''));//会员组ID\r\n		  if($lggroupid)	//登陆会员显示菜单\r\n		  {\r\n		  ?>\r\n            <table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" class=\\"tableborder\\">\r\n              <tr class=\\"header\\"> \r\n                <td height=\\"20\\" bgcolor=\\"#FFFFFF\\"> <div align=\\"center\\"><strong><a href=\\"[!--news.url--]e/member/cp/\\">功能菜单</a></strong></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/EditInfo/\\">修改资料</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/my/\\">帐号状态</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/msg/\\">站内信息</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/mspace/SetSpace.php\\">空间设置</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/DoInfo/\\">管理信息</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/fava/\\">收藏夹</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/payapi/\\">在线支付</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/friend/\\">我的好友</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/buybak/\\">消费记录</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/buygroup/\\">在线充值</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/card/\\">点卡充值</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"#ecms\\" onclick=\\"window.open(\\''[!--news.url--]e/ShopSys/buycar/\\'',\\''\\'',\\''width=680,height=500,scrollbars=yes,resizable=yes\\'');\\">我的购物车</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/ShopSys/ListDd/\\">我的订单</a></div></td>\r\n              </tr>\r\n			  <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/login/\\">重新登陆</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/enews/?enews=exit\\" onclick=\\"return confirm(\\''确认要退出?\\'');\\">退出登陆</a></div></td>\r\n              </tr>\r\n            </table>\r\n			<?php\r\n			}\r\n			else	//游客显示菜单\r\n			{\r\n			?>  \r\n            <table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" class=\\"tableborder\\">\r\n              <tr class=\\"header\\"> \r\n                <td height=\\"20\\" bgcolor=\\"#FFFFFF\\"> <div align=\\"center\\"><strong><a href=\\"[!--news.url--]e/member/cp/\\">功能菜单</a></strong></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/login/\\">会员登陆</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/register/\\">注册帐号</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/DoInfo/\\">发布投稿</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"#ecms\\" onclick=\\"window.open(\\''[!--news.url--]e/ShopSys/buycar/\\'',\\''\\'',\\''width=680,height=500,scrollbars=yes,resizable=yes\\'');\\">我的购物车</a></div></td>\r\n              </tr>\r\n            </table>\r\n			<?php\r\n			}\r\n			?>\r\n			</td>\r\n          <td width=\\"85%\\" valign=\\"top\\">[!--empirenews.template--]</td>\r\n        </tr>\r\n      </table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>高级搜索 - Powered by EmpireCMS</title>\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n<script src=\\"[!--news.url--]e/data/images/setday.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>现在的位置：[!--url--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n						<tr>\r\n							<td><form action=\\''[!--news.url--]e/search/index.php\\'' method=\\"post\\" name=\\"search_news\\" id=\\"search_news\\">\r\n									<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n										<tr>\r\n											<td width=\\"54%\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n													<tr>\r\n														<td bgcolor=\\"#F4F4F4\\"><strong>搜索范围</strong></td>\r\n													</tr>\r\n											</table></td>\r\n											<td width=\\"46%\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n													<tr>\r\n														<td bgcolor=\\"#F4F4F4\\"><strong>搜索栏目</strong></td>\r\n													</tr>\r\n											</table></td>\r\n										</tr>\r\n										<tr>\r\n											<td valign=\\"top\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n													<tr>\r\n														<td><input type=\\"radio\\" name=\\"show\\" value=\\"title\\" checked=\\"checked\\" />\r\n															标题\r\n															<input type=\\"radio\\" name=\\"show\\" value=\\"smalltext\\" />\r\n															简介\r\n															<input type=\\"radio\\" name=\\"show\\" value=\\"newstext\\" />\r\n															内容\r\n															<input type=\\"radio\\" name=\\"show\\" value=\\"writer\\" />\r\n															作者\r\n															<input name=\\"show\\" type=\\"radio\\" value=\\"title,smalltext,newstext,writer\\" />\r\n															不限</td>\r\n													</tr>\r\n												</table>\r\n													<br />\r\n													<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n														<tr bgcolor=\\"#F4F4F4\\">\r\n															<td><strong>时间限制</strong><font color=\\"#666666\\">(0000-00-00为不限制)</font></td>\r\n														</tr>\r\n														<tr>\r\n															<td height=\\"30\\" valign=\\"top\\">从\r\n																<input name=\\"starttime\\" type=\\"text\\" value=\\"0000-00-00\\" size=\\"12\\" onclick=\\"setday(this)\\" />\r\n																到\r\n																<input name=\\"endtime\\" type=\\"text\\" value=\\"0000-00-00\\" size=\\"12\\" onclick=\\"setday(this)\\" />\r\n																之间的数据</td>\r\n														</tr>\r\n														<tr>\r\n															<td bgcolor=\\"#F4F4F4\\"><strong>价格限制</strong><font color=\\"#666666\\">(商城模型中有效,0为不限制)</font></td>\r\n														</tr>\r\n														<tr>\r\n															<td>从\r\n																<input name=\\"startprice\\" type=\\"text\\" id=\\"startprice\\" value=\\"0\\" size=\\"6\\" />\r\n																到\r\n																<input name=\\"endprice\\" type=\\"text\\" id=\\"endprice\\" value=\\"0\\" size=\\"6\\" />\r\n																元之间</td>\r\n														</tr>\r\n												</table></td>\r\n											<td valign=\\"top\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"6\\" cellpadding=\\"0\\">\r\n													<tr>\r\n														<td><select name=\\"classid\\" size=\\"8\\" id=\\"select2\\" style=\\"width: 100%;height:112px\\">\r\n																<option value=\\"0\\" selected=\\"selected\\">所有栏目</option>\r\n															[!--class--]\r\n          \r\n														</select></td>\r\n													</tr>\r\n												</table>\r\n													<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n														<tr>\r\n															<td bgcolor=\\"#F4F4F4\\"><strong>结果显示</strong></td>\r\n														</tr>\r\n														<tr>\r\n															<td height=\\"30\\"><select name=\\"orderby\\" id=\\"select4\\">\r\n																	<option value=\\"\\">按发布日期</option>\r\n																	<option value=\\"id\\">信息ID</option>\r\n																	<option value=\\"plnum\\">评论数</option>\r\n																	<option value=\\"onclick\\">人气</option>\r\n																	<option value=\\"totaldown\\">下载数</option>\r\n																</select>\r\n																	<select name=\\"myorder\\" id=\\"select5\\">\r\n																		<option value=\\"0\\">倒序排列</option>\r\n																		<option value=\\"1\\">顺序排列</option>\r\n																	</select>\r\n															</td>\r\n														</tr>\r\n												</table></td>\r\n										</tr>\r\n									</table>\r\n								<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\">\r\n										<tr>\r\n											<td>关键字：\r\n												<input name=\\"keyboard\\" type=\\"text\\" id=\\"keyboard2\\" size=\\"60\\" />\r\n													<input type=\\"submit\\" name=\\"Submit22\\" value=\\"搜索\\" />\r\n											</td>\r\n										</tr>\r\n									</table>\r\n							</form></td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<table border=0 cellpadding=3 cellspacing=1><form name=search_js1 method=post action=''[!--news.url--]e/search/index.php'' onsubmit=''return search_check(document.search_js1);''><tr><td><div align=center>搜索: <select name=show><option value=title>标题</option><option value=smalltext>简介</option><option value=newstext>内容</option><option value=writer>作者</option><option value=title,smalltext,newstext,writer>搜索全部</option></select><select name=classid><option value=0>所有栏目</option>[!--class--]</select><input name=keyboard type=text size=13><input type=submit name=Submit value=搜索></div></td></tr></form></table>', '<table width=99% border=0 cellpadding=3 cellspacing=1><form name=search_js2 method=post action=''[!--news.url--]e/search/index.php'' onsubmit=''return search_check(document.search_js2);''><tr><td height=25><div align=center>关键字: <input name=keyboard type=text size=13></div></td></tr><tr><td><div align=center>范围: <select name=show><option value=title>标题</option><option value=smalltext>简介</option><option value=newstext>内容</option><option value=writer>作者</option><option value=title,smalltext,newstext,writer>搜索全部</option></select></div></td></tr><tr><td><div align=center>栏目:<select name=classid><option value=0>所有栏目</option>[!--class--]</select></div></td></tr><tr><td><div align=center><input type=submit name=Submit value=搜索></div></td></tr></form></table>', '[!--empirenews.listtemp--]<li><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a></li>[!--empirenews.listtemp--]', '[ <a href=\\"#ecms\\" onclick=\\"window.open(\\''[!--down.url--]\\'',\\''\\'',\\''width=300,height=300,resizable=yes\\'');\\">[!--down.name--]</a> ]', '[ <a href=\\"#ecms\\" onclick=\\"window.open(\\''[!--down.url--]\\'',\\''\\'',\\''width=300,height=300,resizable=yes\\'');\\">[!--down.name--]</a> ]', '页次：[!--thispage--]/[!--pagenum--]&nbsp;每页[!--lencord--]&nbsp;总数[!--num--]&nbsp;&nbsp;&nbsp;&nbsp;[!--pagelink--]&nbsp;&nbsp;&nbsp;&nbsp;转到:[!--options--]', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>留言板 - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--bname--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--bname--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>现在的位置：<a href=../../../>首页</a>&nbsp;>&nbsp;[!--bname--]\r\n</td>\r\n</tr>\r\n</table><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n	<tr>\r\n		<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"2\\">\r\n			<tr>\r\n				<td align=\\"center\\" bgcolor=\\"#E1EFFB\\"><strong>[!--bname--]</strong></td>\r\n			</tr>\r\n			<tr>\r\n				<td align=\\"left\\" valign=\\"top\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\" bgcolor=\\"#FFFFFF\\">\r\n						<tr>\r\n							<td height=\\"100%\\" valign=\\"top\\" bgcolor=\\"#FFFFFF\\"> [!--empirenews.listtemp--]\r\n								<table width=\\"92%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"4\\" cellspacing=\\"1\\" bgcolor=\\"#F4F9FD\\" class=\\"tableborder\\">\r\n										<tr class=\\"header\\">\r\n											<td width=\\"55%\\" height=\\"23\\">发布者: [!--name--] </td>\r\n											<td width=\\"45%\\">发布时间: [!--lytime--] </td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td height=\\"23\\" colspan=\\"2\\"><table border=\\"0\\" width=\\"100%\\" cellspacing=\\"1\\" cellpadding=\\"8\\" bgcolor=\\''#cccccc\\''>\r\n													<tr>\r\n														<td width=\\''100%\\'' bgcolor=\\''#FFFFFF\\'' style=\\''word-break:break-all\\''> [!--lytext--] </td>\r\n													</tr>\r\n												</table>\r\n												[!--start.regbook--]\r\n												<table width=\\"100%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n													<tr>\r\n														<td><img src=\\"../../data/images/regb.gif\\" width=\\"18\\" height=\\"18\\" /><strong><font color=\\"#FF0000\\">回复:</font></strong> [!--retext--] </td>\r\n													</tr>\r\n												</table>\r\n												[!--end.regbook--] </td>\r\n										</tr>\r\n									</table>\r\n								<br />\r\n								[!--empirenews.listtemp--]\r\n								<table width=\\"92%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"4\\" cellspacing=\\"1\\">\r\n									<tr>\r\n										<td>分页: [!--listpage--]</td>\r\n									</tr>\r\n								</table>\r\n								<form action=\\"../../enews/index.php\\" method=\\"post\\" name=\\"form1\\" id=\\"form1\\">\r\n									<table width=\\"92%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"4\\" cellspacing=\\"1\\"class=\\"tableborder\\">\r\n										<tr class=\\"header\\">\r\n											<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\"><strong>请您留言:</strong></td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td width=\\"20%\\">姓名:</td>\r\n											<td width=\\"722\\" height=\\"23\\"><input name=\\"name\\" type=\\"text\\" id=\\"name\\" />\r\n												*</td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td>联系邮箱:</td>\r\n											<td height=\\"23\\"><input name=\\"email\\" type=\\"text\\" id=\\"email\\" />\r\n												*</td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td>联系电话:</td>\r\n											<td height=\\"23\\"><input name=\\"call\\" type=\\"text\\" id=\\"call\\" /></td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td>留言内容(*):</td>\r\n											<td height=\\"23\\"><textarea name=\\"lytext\\" cols=\\"60\\" rows=\\"12\\" id=\\"lytext\\"></textarea></td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td height=\\"23\\">&nbsp;</td>\r\n											<td height=\\"23\\"><input type=\\"submit\\" name=\\"Submit3\\" value=\\"提交\\" />\r\n											<input type=\\"reset\\" name=\\"Submit22\\" value=\\"重置\\" />\r\n											<input name=\\"enews\\" type=\\"hidden\\" id=\\"enews\\" value=\\"AddGbook\\" /></td>\r\n										</tr>\r\n									</table>\r\n								</form></td>\r\n						</tr>\r\n				</table></td>\r\n			</tr>\r\n		</table></td>\r\n	</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<html>\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>登陆</title>\r\n<LINK href=\\"../../data/images/qcss.css\\" rel=stylesheet>\r\n</head>\r\n<body bgcolor=\\"#ededed\\" topmargin=\\"0\\">\r\n<table border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" width=\\"100%\\">\r\n  <form name=login method=post action=\\"../../enews/index.php\\">\r\n    <input type=hidden name=enews value=login>\r\n    <input type=hidden name=prtype value=1>\r\n    <tr> \r\n      <td height=\\"23\\" align=\\"center\\">\r\n      <div align=\\"left\\">\r\n      用户名：<input name=\\"username\\" type=\\"text\\" size=\\"8\\">&nbsp;\r\n      密码：<input name=\\"password\\" type=\\"password\\" size=\\"8\\">\r\n      <select name=\\"lifetime\\" id=\\"lifetime\\">\r\n         <option value=\\"0\\">不保存</option>\r\n         <option value=\\"3600\\">一小时</option>\r\n         <option value=\\"86400\\">一天</option>\r\n         <option value=\\"2592000\\">一个月</option>\r\n         <option value=\\"315360000\\">永久</option>\r\n      </select>&nbsp;\r\n      <input type=\\"submit\\" name=\\"Submit\\" value=\\"登陆\\">&nbsp;\r\n      <input type=\\"button\\" name=\\"Submit2\\" value=\\"注册\\" onclick=\\"window.open(\\''../register/\\'');\\">\r\n      </div>\r\n      </td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n</body>\r\n</html>\r\n[!--empirenews.template--]\r\n<html>\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>登陆</title>\r\n<LINK href=\\"../../data/images/qcss.css\\" rel=stylesheet>\r\n</head>\r\n<body bgcolor=\\"#ededed\\" topmargin=\\"0\\">\r\n<table border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" width=\\"100%\\">\r\n    <tr>\r\n	<td height=\\"23\\" align=\\"center\\">\r\n	<div align=\\"left\\">\r\n		&raquo;&nbsp;<font color=red><b>[!--username--]</b></font>&nbsp;&nbsp;<a href=\\"../my/\\" target=\\"_parent\\">[!--groupname--]</a>&nbsp;[!--havemsg--]&nbsp;<a href=\\"[!--news.url--]e/space/?userid=[!--userid--]\\" target=_blank>我的空间</a>&nbsp;&nbsp;<a href=\\"../msg/\\" target=_blank>短信息</a>&nbsp;&nbsp;<a href=\\"../fava/\\" target=_blank>收藏夹</a>&nbsp;&nbsp;<a href=\\"../cp/\\" target=\\"_parent\\">控制面板</a>&nbsp;&nbsp;<a href=\\"../../enews/?enews=exit&prtype=9\\" onclick=\\"return confirm(\\''确认要退出?\\'');\\">退出</a> \r\n	</div>\r\n	</td>\r\n    </tr>\r\n</table>\r\n</body>\r\n</html>', 50, 'Y-m-d H:i:s', '<form name=login method=post action=\\"[!--news.url--]e/enews/index.php\\">\r\n    <input type=hidden name=enews value=login>\r\n    <input type=hidden name=ecmsfrom value=9>\r\n    用户名：<input name=\\"username\\" type=\\"text\\" class=\\"inputText\\" size=\\"16\\" />&nbsp;\r\n    密码：<input name=\\"password\\" type=\\"password\\" class=\\"inputText\\" size=\\"16\\" />&nbsp;\r\n    <input type=\\"submit\\" name=\\"Submit\\" value=\\"登陆\\" class=\\"inputSub\\" />&nbsp;\r\n    <input type=\\"button\\" name=\\"Submit2\\" value=\\"注册\\" class=\\"inputSub\\" onclick=\\"window.open(\\''[!--news.url--]e/member/register/\\'');\\" />\r\n</form>\r\n[!--empirenews.template--]\r\n&raquo;&nbsp;<font color=red><b>[!--username--]</b></font>&nbsp;&nbsp;<a href=\\"[!--news.url--]e/member/my/\\" target=\\"_parent\\">[!--groupname--]</a>&nbsp;[!--havemsg--]&nbsp;<a href=\\"[!--news.url--]e/space/?userid=[!--userid--]\\" target=_blank>我的空间</a>&nbsp;&nbsp;<a href=\\"[!--news.url--]e/member/msg/\\" target=_blank>短信息</a>&nbsp;&nbsp;<a href=\\"[!--news.url--]e/member/fava/\\" target=_blank>收藏夹</a>&nbsp;&nbsp;<a href=\\"[!--news.url--]e/member/cp/\\" target=\\"_parent\\">控制面板</a>&nbsp;&nbsp;<a href=\\"[!--news.url--]e/enews/?enews=exit&ecmsfrom=9\\" onclick=\\"return confirm(\\''确认要退出?\\'');\\">退出</a>', '<html>\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>[!--pagetitle--]</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\">\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\">\r\n<link href=\\"../../data/images/qcss.css\\" rel=\\"stylesheet\\" type=\\"text/css\\">\r\n</head>\r\n<body>\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n<table align=\\"center\\" width=\\"100%\\">\r\n  <tr> \r\n    <td height=\\"32\\" align=center>\r\n	<a href=\\"[!--down.url--]\\" title=\\"[!--title--] －[!--down.name--]\\">\r\n	<img src=\\"../../data/images/download.jpg\\" border=0>\r\n	</a>\r\n	</td>\r\n  </tr>\r\n  <tr> \r\n    <td align=center>(点击下载)</td>\r\n  </tr>\r\n</table>\r\n<br>\r\n</body>\r\n</html>', '[!--empirenews.listtemp--] \r\n      <table width=\\"100%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" style=\\"word-break:break-all; word-wrap:break-all;\\">\r\n        <tr> \r\n          <td height=\\"30\\"><span class=\\"name\\">本站网友 [!--username--]</span> <font color=\\"#666666\\">ip:[!--plip--]</font></td>\r\n          <td><div align=\\"right\\"><font color=\\"#666666\\">[!--pltime--] 发表</font></div></td>\r\n        </tr>\r\n        <tr valign=\\"top\\"> \r\n          <td height=\\"50\\" colspan=\\"2\\" class=\\"text\\">[!--pltext--]</td>\r\n        </tr>\r\n        <tr> \r\n          <td height=\\"30\\">&nbsp;</td>\r\n          <td><div align=\\"right\\" class=\\"re\\"> \r\n              <a href=\\"JavaScript:makeRequest(\\''[!--news.url--]e/enews/?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=1&doajax=1&ajaxarea=zcpldiv[!--plid--]\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">支持</a>[<span id=\\"zcpldiv[!--plid--]\\">[!--zcnum--]</span>]&nbsp; \r\n              <a href=\\"JavaScript:makeRequest(\\''[!--news.url--]e/enews/?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=0&doajax=1&ajaxarea=fdpldiv[!--plid--]\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">反对</a>[<span id=\\"fdpldiv[!--plid--]\\">[!--fdnum--]</span>]\r\n            </div></td>\r\n        </tr>\r\n      </table>\r\n      <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr>\r\n          <td background=\\"[!--news.url--]skin/default/images/plhrbg.gif\\"></td>\r\n        </tr>\r\n      </table>\r\n[!--empirenews.listtemp--]', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>搜索 - Powered by EmpireCMS</title>\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n<style type=\\"text/css\\">\r\n<!--\r\n.r {\r\ndisplay:inline;\r\nfont-weight:normal;\r\nmargin:0;\r\nfont-size:16px;\r\nmargin-top:10px;\r\n}\r\n.a{color:green}\r\n.fl{color:#77c}\r\n-->\r\n</style>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>现在的位置：<a href=\\"[!--news.url--]\\">首页</a>&nbsp;>&nbsp;搜索</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><form action=\\''index.php\\'' method=\\"GET\\" name=\\"search_news\\" id=\\"search_news\\">\r\n							<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"6\\" cellpadding=\\"0\\">\r\n								<tr>\r\n									<td height=\\"32\\">关键字：\r\n										<input name=\\"keyboard\\" type=\\"text\\" id=\\"keyboard\\" value=\\"[!--keyboard--]\\" size=\\"42\\" />\r\n                    <select name=\\"field\\" id=\\"field\\">\r\n                      <option value=\\"1\\">全文</option>\r\n                      <option value=\\"2\\">标题</option>\r\n                      <option value=\\"3\\">内容</option>\r\n                    </select> \r\n                    <input type=\\"submit\\" name=\\"Submit22\\" value=\\"搜索\\" />\r\n                    <font color=\\"#666666\\">(多个关键字请用&quot;空格&quot;隔开)</font> </td>\r\n								</tr>\r\n							</table>\r\n						</form>\r\n						<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"6\\">\r\n							<tr>\r\n								<td>系统搜索到约有<strong>[!--num--]</strong>项符合<strong>[!--keyboard--]</strong>的查询结果</td>\r\n							</tr>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<h2 class=\\"r\\"><span>[!--no.num--].</span> <a class=\\"l\\" href=\\"[!--titleurl--]\\" target=\\"_blank\\">[!--title--]</a></h2>\r\n						<table width=\\"80%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n							<tbody>\r\n							<tr>\r\n								<td>[!--smalltext--]</td>\r\n							</tr>\r\n							<tr>\r\n								<td><span class=\\"a\\">[!--titleurl--] - [!--newstime--]</span></td>\r\n							</tr>\r\n							<tr>\r\n								<td>&nbsp;</td>\r\n							</tr>\r\n							</tbody>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n							<tr>\r\n								<td>[!--listpage--]</td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 120, 'Y-m-d H:i:s');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewspubvar`
--

CREATE TABLE IF NOT EXISTS `phome_enewspubvar` (
  `varid` smallint(6) NOT NULL AUTO_INCREMENT,
  `myvar` varchar(60) NOT NULL DEFAULT '',
  `varname` varchar(20) NOT NULL DEFAULT '',
  `varvalue` text NOT NULL,
  `varsay` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `tocache` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`varid`),
  UNIQUE KEY `varname` (`varname`),
  KEY `classid` (`classid`),
  KEY `tocache` (`tocache`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewspubvarclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewspubvarclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  `classsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsqmsg`
--

CREATE TABLE IF NOT EXISTS `phome_enewsqmsg` (
  `mid` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(11) NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  `outbox` tinyint(1) NOT NULL DEFAULT '0',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewssearch`
--

CREATE TABLE IF NOT EXISTS `phome_enewssearch` (
  `searchid` bigint(20) NOT NULL AUTO_INCREMENT,
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `searchtime` int(11) NOT NULL DEFAULT '0',
  `searchclass` varchar(255) NOT NULL DEFAULT '',
  `result_num` int(11) NOT NULL DEFAULT '0',
  `searchip` varchar(20) NOT NULL DEFAULT '',
  `classid` varchar(255) NOT NULL DEFAULT '',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `orderby` varchar(30) NOT NULL DEFAULT '0',
  `myorder` tinyint(1) NOT NULL DEFAULT '0',
  `checkpass` varchar(32) NOT NULL DEFAULT '',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  `iskey` tinyint(1) NOT NULL DEFAULT '0',
  `andsql` text NOT NULL,
  `trueclassid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`searchid`),
  KEY `checkpass` (`checkpass`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewssearchall`
--

CREATE TABLE IF NOT EXISTS `phome_enewssearchall` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `title` text NOT NULL,
  `infotime` int(11) NOT NULL DEFAULT '0',
  `infotext` mediumtext NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `id` (`id`,`classid`,`infotime`),
  FULLTEXT KEY `title` (`title`,`infotext`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewssearchall_load`
--

CREATE TABLE IF NOT EXISTS `phome_enewssearchall_load` (
  `lid` smallint(6) NOT NULL AUTO_INCREMENT,
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `titlefield` varchar(30) NOT NULL DEFAULT '',
  `infotextfield` varchar(30) NOT NULL DEFAULT '',
  `smalltextfield` varchar(30) NOT NULL DEFAULT '',
  `loadnum` smallint(6) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `lastid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewssearchtemp`
--

CREATE TABLE IF NOT EXISTS `phome_enewssearchtemp` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `phome_enewssearchtemp`
--

INSERT INTO `phome_enewssearchtemp` (`tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`) VALUES
(1, '默认搜索模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--keyboard--] 搜索结果 - Powered by EmpireCMS</title>\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n<style type=\\"text/css\\">\r\n<!--\r\n.r {\r\ndisplay:inline;\r\nfont-weight:normal;\r\nmargin:0;\r\nfont-size:16px;\r\nmargin-top:10px;\r\n}\r\n.a{color:green}\r\n.fl{color:#77c}\r\n-->\r\n</style>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>现在的位置：<a href=\\"[!--news.url--]\\" class=\\"classlinkclass\\">首页</a>&nbsp;>&nbsp;<a href=\\"[!--news.url--]search/\\" class=\\"classlinkclass\\">高级搜索</a>&nbsp;>&nbsp;搜索结果</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><form action=\\''../../search/index.php\\'' method=\\"post\\" name=\\"search_news\\" id=\\"search_news\\">\r\n							<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"6\\" cellpadding=\\"0\\">\r\n								<input type=\\"hidden\\" name=\\"show\\" value=\\"title\\" />\r\n								<tr>\r\n									<td height=\\"32\\">关键字：\r\n										<input name=\\"keyboard\\" type=\\"text\\" id=\\"keyboard\\" value=\\"[!--keyboard--]\\" size=\\"42\\" />\r\n										<input type=\\"submit\\" name=\\"Submit22\\" value=\\"搜索\\" />\r\n										&nbsp;\r\n										<input type=\\"button\\" name=\\"Submit\\" value=\\"高级搜索\\" onclick=\\"self.location.href=\\''../../../search/\\''\\" />\r\n										(多个关键字请用&quot;空格&quot;隔开) </td>\r\n								</tr>\r\n							</table>\r\n						</form>\r\n						<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"6\\">\r\n							<tr>\r\n								<td>系统搜索到约有<strong>[!--ecms.num--]</strong>项符合<strong>[!--keyboard--]</strong>的查询结果</td>\r\n							</tr>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<!--list.var1-->\r\n						[!--empirenews.listtemp--]\r\n						<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n							<tr>\r\n								<td>[!--show.page--]</td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 180, 1, '<h2 class=\\"r\\"><span>[!--no.num--].</span> <a class=\\"l\\" href=\\"[!--titleurl--]\\" target=\\"_blank\\">[!--title--]</a></h2>\r\n<table width=\\"80%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>[!--smalltext--]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span class=\\"a\\">[!--titleurl--] - [!--newstime--]</span> - <a class=\\"fl\\" href=\\"[!--this.classlink--]\\" target=\\"_blank\\">[!--this.classname--]</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 1, 'Y-m-d', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewssearchtempclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewssearchtempclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsshopdd`
--

CREATE TABLE IF NOT EXISTS `phome_enewsshopdd` (
  `ddid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ddno` varchar(30) NOT NULL DEFAULT '',
  `ddtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `outproduct` tinyint(1) NOT NULL DEFAULT '0',
  `haveprice` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `oicq` varchar(25) NOT NULL DEFAULT '',
  `msn` varchar(120) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  `call` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `bz` text NOT NULL,
  `g_truename` varchar(20) NOT NULL DEFAULT '',
  `g_oicq` varchar(25) NOT NULL DEFAULT '',
  `g_msn` varchar(120) NOT NULL DEFAULT '',
  `g_email` varchar(120) NOT NULL DEFAULT '',
  `g_call` varchar(30) NOT NULL DEFAULT '',
  `g_phone` varchar(30) NOT NULL DEFAULT '',
  `g_address` varchar(255) NOT NULL DEFAULT '',
  `g_zip` varchar(8) NOT NULL DEFAULT '',
  `buycar` mediumtext NOT NULL,
  `psid` smallint(6) NOT NULL DEFAULT '0',
  `psname` varchar(60) NOT NULL DEFAULT '',
  `pstotal` float(11,2) NOT NULL DEFAULT '0.00',
  `alltotal` float(11,2) NOT NULL DEFAULT '0.00',
  `payfsid` smallint(6) NOT NULL DEFAULT '0',
  `payfsname` varchar(60) NOT NULL DEFAULT '',
  `payby` tinyint(4) NOT NULL DEFAULT '0',
  `alltotalfen` float(11,2) NOT NULL DEFAULT '0.00',
  `fp` tinyint(1) NOT NULL DEFAULT '0',
  `fptt` varchar(255) NOT NULL DEFAULT '',
  `fptotal` float(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ddid`),
  KEY `ddno` (`ddno`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsshoppayfs`
--

CREATE TABLE IF NOT EXISTS `phome_enewsshoppayfs` (
  `payid` smallint(6) NOT NULL AUTO_INCREMENT,
  `payname` varchar(60) NOT NULL DEFAULT '',
  `payurl` varchar(255) NOT NULL DEFAULT '',
  `paysay` text NOT NULL,
  `userpay` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`payid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `phome_enewsshoppayfs`
--

INSERT INTO `phome_enewsshoppayfs` (`payid`, `payname`, `payurl`, `paysay`, `userpay`, `userfen`) VALUES
(1, '邮政汇款', '', '邮政汇款地址:******', 0, 0),
(2, '银行转帐', '', '银行转帐帐号:******', 0, 0),
(3, '网银支付', '/e/payapi/ShopPay.php?paytype=alipay', '<p>网银支付</p>', 0, 0),
(4, '预付款支付', '', '预付款支付', 1, 0),
(5, '货到付款(或上门收款)', '', '货到付款(或上门收款)说明', 0, 0),
(6, '点数购买', '', '点数购买', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsshopps`
--

CREATE TABLE IF NOT EXISTS `phome_enewsshopps` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(60) NOT NULL DEFAULT '',
  `price` float(11,2) NOT NULL DEFAULT '0.00',
  `otherprice` text NOT NULL,
  `psay` text NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `phome_enewsshopps`
--

INSERT INTO `phome_enewsshopps` (`pid`, `pname`, `price`, `otherprice`, `psay`) VALUES
(1, '送货上门', 10.00, '', '送货上门'),
(2, '特快专递（EMS）', 25.00, '', '特快专递（EMS）'),
(3, '普通邮递', 5.00, '', '普通邮递'),
(4, '邮局快邮', 12.00, '', '邮局快邮');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewssp`
--

CREATE TABLE IF NOT EXISTS `phome_enewssp` (
  `spid` smallint(6) NOT NULL AUTO_INCREMENT,
  `spname` varchar(30) NOT NULL DEFAULT '',
  `varname` varchar(30) NOT NULL DEFAULT '',
  `sppic` varchar(255) NOT NULL DEFAULT '',
  `spsay` varchar(255) NOT NULL DEFAULT '',
  `sptype` tinyint(1) NOT NULL DEFAULT '0',
  `cid` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `sptime` int(10) NOT NULL DEFAULT '0',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `cladd` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`spid`),
  UNIQUE KEY `varname` (`varname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewssp_1`
--

CREATE TABLE IF NOT EXISTS `phome_enewssp_1` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `spid` smallint(6) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `bigpic` varchar(200) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `smalltext` varchar(255) NOT NULL DEFAULT '',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepre` varchar(30) NOT NULL DEFAULT '',
  `titlenext` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`sid`),
  KEY `spid` (`spid`),
  KEY `newstime` (`newstime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewssp_2`
--

CREATE TABLE IF NOT EXISTS `phome_enewssp_2` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `spid` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `newstime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`),
  KEY `spid` (`spid`),
  KEY `newstime` (`newstime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewssp_3`
--

CREATE TABLE IF NOT EXISTS `phome_enewssp_3` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `spid` smallint(6) NOT NULL DEFAULT '0',
  `sptext` mediumtext NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `spid` (`spid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewssp_3_bak`
--

CREATE TABLE IF NOT EXISTS `phome_enewssp_3_bak` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL DEFAULT '0',
  `spid` smallint(6) NOT NULL DEFAULT '0',
  `sptext` mediumtext NOT NULL,
  `lastuser` varchar(30) NOT NULL DEFAULT '',
  `lasttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  KEY `sid` (`sid`),
  KEY `spid` (`spid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsspacestyle`
--

CREATE TABLE IF NOT EXISTS `phome_enewsspacestyle` (
  `styleid` smallint(6) NOT NULL AUTO_INCREMENT,
  `stylename` varchar(30) NOT NULL DEFAULT '',
  `stylepic` varchar(255) NOT NULL DEFAULT '',
  `stylesay` varchar(255) NOT NULL DEFAULT '',
  `stylepath` varchar(30) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `membergroup` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `phome_enewsspacestyle`
--

INSERT INTO `phome_enewsspacestyle` (`styleid`, `stylename`, `stylepic`, `stylesay`, `stylepath`, `isdefault`, `membergroup`) VALUES
(1, '默认个人空间模板', '', '默认个人空间模板', 'default', 1, ',1,2,'),
(2, '默认企业空间模板', '', '默认企业空间模板', 'comdefault', 0, ',3,4,');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsspclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewsspclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  `classsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewssql`
--

CREATE TABLE IF NOT EXISTS `phome_enewssql` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sqlname` varchar(60) NOT NULL DEFAULT '',
  `sqltext` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewstable`
--

CREATE TABLE IF NOT EXISTS `phome_enewstable` (
  `tid` smallint(6) NOT NULL AUTO_INCREMENT,
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `tname` varchar(60) NOT NULL DEFAULT '',
  `tsay` text NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `datatbs` text NOT NULL,
  `deftb` varchar(6) NOT NULL DEFAULT '',
  `yhid` smallint(6) NOT NULL DEFAULT '0',
  `mid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `phome_enewstable`
--

INSERT INTO `phome_enewstable` (`tid`, `tbname`, `tname`, `tsay`, `isdefault`, `datatbs`, `deftb`, `yhid`, `mid`) VALUES
(1, 'news', '新闻系统数据表', '新闻系统数据表', 1, ',1,', '1', 0, 1),
(2, 'download', '下载系统数据表', '下载系统数据表', 0, ',1,', '1', 0, 2),
(3, 'photo', '图片系统数据表', '图片系统数据表', 0, ',1,', '1', 0, 3),
(4, 'flash', 'FLASH系统数据表', 'FLASH系统数据表', 0, ',1,', '1', 0, 4),
(5, 'movie', '电影系统数据表', '电影系统数据表', 0, ',1,', '1', 0, 5),
(6, 'shop', '商城系统数据表', '商城系统数据表', 0, ',1,', '1', 0, 6),
(7, 'article', '文章系统数据表', '文章系统数据表(内容存文本)', 0, ',1,', '1', 0, 7),
(8, 'info', '分类信息数据表', '分类信息数据表', 0, ',1,', '1', 0, 8);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewstags`
--

CREATE TABLE IF NOT EXISTS `phome_enewstags` (
  `tagid` int(11) NOT NULL AUTO_INCREMENT,
  `tagname` char(20) NOT NULL DEFAULT '',
  `num` int(11) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `cid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `tagname` (`tagname`),
  KEY `isgood` (`isgood`),
  KEY `cid` (`cid`),
  KEY `num` (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewstagsclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewstagsclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewstagsdata`
--

CREATE TABLE IF NOT EXISTS `phome_enewstagsdata` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tagid` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `mid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `tagid` (`tagid`),
  KEY `classid` (`classid`),
  KEY `id` (`id`),
  KEY `newstime` (`newstime`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewstask`
--

CREATE TABLE IF NOT EXISTS `phome_enewstask` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `taskname` varchar(60) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `isopen` tinyint(1) NOT NULL DEFAULT '0',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `lastdo` int(11) NOT NULL DEFAULT '0',
  `doweek` char(1) NOT NULL DEFAULT '0',
  `doday` char(2) NOT NULL DEFAULT '0',
  `dohour` char(2) NOT NULL DEFAULT '0',
  `dominute` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewstempbak`
--

CREATE TABLE IF NOT EXISTS `phome_enewstempbak` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  `baktime` int(11) NOT NULL DEFAULT '0',
  `temptype` varchar(30) NOT NULL DEFAULT '',
  `gid` smallint(6) NOT NULL DEFAULT '0',
  `lastuser` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`bid`),
  KEY `tempid` (`tempid`),
  KEY `temptype` (`temptype`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=183 ;

--
-- 转存表中的数据 `phome_enewstempbak`
--

INSERT INTO `phome_enewstempbak` (`bid`, `tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`, `baktime`, `temptype`, `gid`, `lastuser`) VALUES
(181, 1, '默认新闻内容模板', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name="keywords" content="[!--pagekey--]" />\r\n<meta name="description" content="[!--pagedes--]" />\r\n<link href="[!--news.url--]skin/default/css/style.css" rel="stylesheet" type="text/css" />\r\n<script type="text/javascript" src="[!--news.url--]skin/default/js/tabs.js"></script>\r\n<script type="text/javascript" src="[!--news.url--]e/data/js/ajax.js"></script>\r\n</head>\r\n<body class="showpage news">\r\n[!--temp.header--]\r\n<table width="100%" border="0" cellspacing="10" cellpadding="0">\r\n<tr valign="top">\r\n<td class="main"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="position">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width="100%" border="0" cellspacing="0" cellpadding="0" class="box">\r\n<tr>\r\n<td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="title_info">\r\n<tr>\r\n<td><h1>[!--title--]</h1></td>\r\n</tr>\r\n<tr>\r\n<td class="info_text">时间：[!--newstime--]&nbsp;&nbsp;来源：[!--befrom--]&nbsp;&nbsp;作者：[!--writer--]</td>\r\n</tr>\r\n</table>\r\n<table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n<tr>\r\n<td id="text">[!--newstext--]\r\n<p align="center" class="pageLink">[!--page.url--]</p></td>\r\n</tr>\r\n</table>\r\n\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n</td>\r\n\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n[!--page.stats--]\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d H:i:s', 0, 0, 0, 1350030772, 'newstemp', 1, 'admin'),
(112, 1, 'header', '<!-- 导航tab选项卡 -->\r\n<table width="920" border="0" align="center" cellpadding="0" cellspacing="0" class="nav">\r\n  <tr> \r\n        <td class="nav_global">\r\n<span id="logo">\r\n<a href="/">\r\n<img src="/skin/default/images/logo.gif" width="360" height="90" boder="0" />\r\n</a>\r\n</span>\r\n<ul>\r\n        <li class="curr" id="tabnav_btn_0" onmouseover="tabit(this)"><a href="[!--news.url--]">首页</a></li>\r\n        [showclasstemp]''0'',12,0,0[/showclasstemp] </ul></td>\r\n  </tr>\r\n</table>', 1, 0, '页面头部', 0, 0, '', 0, 0, 0, 1349964376, 'tempvar', 1, 'admin'),
(9, 2, 'footer', '<!-- 页脚 -->\r\n<table width="100%" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td align="center" class="search">\r\n<form action="[!--news.url--]e/search/index.php" method="post" name="searchform" id="searchform">\r\n<table border="0" cellspacing="6" cellpadding="0">\r\n<tr>\r\n<td><strong>站内搜索：</strong>\r\n<input name="keyboard" type="text" size="32" id="keyboard" class="inputText" />\r\n<input type="hidden" name="show" value="title" />\r\n<input type="hidden" name="tempid" value="1" />\r\n<select name="tbname">\r\n<option value="news">新闻</option>\r\n<option value="download">下载</option>\r\n<option value="photo">图库</option>\r\n<option value="flash">FLASH</option>\r\n<option value="movie">电影</option>\r\n<option value="shop">商品</option>\r\n<option value="article">文章</option>\r\n<option value="info">分类信息</option>\r\n</select>\r\n</td>\r\n<td><input type="image" class="inputSub" src="[!--news.url--]skin/default/images/search.gif" />\r\n</td>\r\n<td><a href="[!--news.url--]search/" target="_blank">高级搜索</a></td>\r\n</tr>\r\n</table>\r\n</form>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n	<table width="100%" border="0" cellpadding="0" cellspacing="4" class="copyright">\r\n        <tr> \r\n          <td align="center"><a href="[!--news.url--]">网站首页</a> | <a href="#">关于我们</a> \r\n            | <a href="#">服务条款</a> | <a href="#">广告服务</a> | <a href="#">联系我们</a> \r\n            | <a href="#">网站地图</a> | <a href="#">免责声明</a> | <a href="[!--news.url--]e/wap/" target="_blank">WAP</a></td>\r\n        </tr>\r\n	</table>\r\n</td>\r\n</tr>\r\n</table>', 0, 0, '页面尾部', 0, 0, '', 0, 0, 0, 1349679018, 'tempvar', 1, 'admin'),
(63, 2, 'footer', '<!-- 页脚 -->\r\n<table width="920" border="0" cellpadding="0" cellspacing="0">\r\n<tr>\r\n<td align="center" class="search">\r\n<form action="[!--news.url--]e/search/index.php" method="post" name="searchform" id="searchform">\r\n<table border="0" cellspacing="6" cellpadding="0">\r\n<tr>\r\n<td><strong>站内搜索：</strong>\r\n<input name="keyboard" type="text" size="32" id="keyboard" class="inputText" />\r\n<input type="hidden" name="show" value="title" />\r\n<input type="hidden" name="tempid" value="1" />\r\n<select name="tbname">\r\n<option value="news">新闻</option>\r\n<option value="download">下载</option>\r\n<option value="photo">图库</option>\r\n<option value="flash">FLASH</option>\r\n<option value="movie">电影</option>\r\n<option value="shop">商品</option>\r\n<option value="article">文章</option>\r\n<option value="info">分类信息</option>\r\n</select>\r\n</td>\r\n<td><input type="image" class="inputSub" src="[!--news.url--]skin/default/images/search.gif" />\r\n</td>\r\n<td><a href="[!--news.url--]search/" target="_blank">高级搜索</a></td>\r\n</tr>\r\n</table>\r\n</form>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n	<table width="100%" border="0" cellpadding="0" cellspacing="4" class="copyright">\r\n        <tr> \r\n          <td align="center"><a href="[!--news.url--]">网站首页</a> | <a href="#">关于我们</a> \r\n            | <a href="#">服务条款</a> | <a href="#">广告服务</a> | <a href="#">联系我们</a> \r\n            | <a href="#">网站地图</a> | <a href="#">免责声明</a> | <a href="[!--news.url--]e/wap/" target="_blank">WAP</a></td>\r\n        </tr>\r\n	</table>\r\n</td>\r\n</tr>\r\n</table>', 0, 0, '页面尾部', 0, 0, '', 0, 0, 0, 1349884617, 'tempvar', 1, 'admin'),
(64, 2, 'footer', '<!-- 页脚 -->\r\n<table width="920" border="0" cellpadding="0" cellspacing="0" align="center">\r\n<tr>\r\n<td align="center" class="search">\r\n<form action="[!--news.url--]e/search/index.php" method="post" name="searchform" id="searchform">\r\n<table border="0" cellspacing="6" cellpadding="0">\r\n<tr>\r\n<td><strong>站内搜索：</strong>\r\n<input name="keyboard" type="text" size="32" id="keyboard" class="inputText" />\r\n<input type="hidden" name="show" value="title" />\r\n<input type="hidden" name="tempid" value="1" />\r\n<select name="tbname">\r\n<option value="news">新闻</option>\r\n<option value="download">下载</option>\r\n<option value="photo">图库</option>\r\n<option value="flash">FLASH</option>\r\n<option value="movie">电影</option>\r\n<option value="shop">商品</option>\r\n<option value="article">文章</option>\r\n<option value="info">分类信息</option>\r\n</select>\r\n</td>\r\n<td><input type="image" class="inputSub" src="[!--news.url--]skin/default/images/search.gif" />\r\n</td>\r\n<td><a href="[!--news.url--]search/" target="_blank">高级搜索</a></td>\r\n</tr>\r\n</table>\r\n</form>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n	<table width="100%" border="0" cellpadding="0" cellspacing="4" class="copyright">\r\n        <tr> \r\n          <td align="center"><a href="[!--news.url--]">网站首页</a> | <a href="#">关于我们</a> \r\n            | <a href="#">服务条款</a> | <a href="#">广告服务</a> | <a href="#">联系我们</a> \r\n            | <a href="#">网站地图</a> | <a href="#">免责声明</a> | <a href="[!--news.url--]e/wap/" target="_blank">WAP</a></td>\r\n        </tr>\r\n	</table>\r\n</td>\r\n</tr>\r\n</table>', 0, 0, '页面尾部', 0, 0, '', 0, 0, 0, 1349884825, 'tempvar', 1, 'admin'),
(175, 1, '', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name="keywords" content="[!--pagekey--]" />\r\n<meta name="description" content="[!--pagedes--]" />\r\n<link href="[!--news.url--]skin/default/css/style.css" rel="stylesheet" type="text/css" />\r\n<script type="text/javascript" src="[!--news.url--]skin/default/js/tabs.js"></script>\r\n</head>\r\n<body class="homepage">\r\n[!--temp.header--]\r\n<div id="topbanner">\r\n<img src="/skin/default/images/top-banner.jpg" />\r\n</div>\r\n\r\n<div class="buttom">\r\n<div>\r\n<table>\r\n<tr>\r\n<td colspan="2" width="220" class="subtitle">专家团队<td>\r\n</tr>\r\n<tr>\r\n<td class="subcontent">首席顾问</td>\r\n<td>艾华</td>\r\n</tr>\r\n<tr>\r\n<td class="subcontent">资深税务师</td>\r\n<td>刑太武</td>\r\n</tr>\r\n<tr>\r\n<td class="subcontent">资深税务师</td>\r\n<td>任广</td>\r\n</tr>\r\n</table>\r\n</div>\r\n\r\n<div >\r\n<table>\r\n<tr>\r\n<td width="220" class="subtitle">近期培训<td>\r\n</tr>\r\n<tr>\r\n<td width="220" class="subcontent"><a href="/a/peixunzhuanti/qiyechongzu">企业重组培训</a></td>\r\n</tr>\r\n<tr>\r\n<td width="220" class="subcontent"><a href="/a/peixunzhuanti/yinggaizeng">营改增专题</a></td>\r\n</tr>\r\n<tr>\r\n<td width="220" class="subcontent"><a href="/a/peixunzhuanti/zhushui">注册税务师培训</a></td>\r\n</tr>\r\n</table>\r\n</div>\r\n\r\n<div >\r\n<table>\r\n<tr>\r\n<td width="220" class="subtitle">业界动态<td>\r\n</tr>\r\n<tr>\r\n<td width="220"><ul>[ecmsinfo]65,3,32,0,0,2,0[/ecmsinfo]</ul></td>\r\n</tr>\r\n</table>\r\n</div>\r\n\r\n<div >\r\n<table>\r\n<tr>\r\n<td width="220" class="subtitle">税务文化研究<td>\r\n</tr>\r\n<tr>\r\n<td width="220"><ul>[ecmsinfo]70,3,32,0,0,2,0[/ecmsinfo]</ul></td>\r\n</tr>\r\n</table>\r\n</div>\r\n\r\n</div>\r\n\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '', 0, 0, '', 0, 0, 0, 1350013213, 'pubindextemp', 1, 'admin'),
(173, 1, '', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name="keywords" content="[!--pagekey--]" />\r\n<meta name="description" content="[!--pagedes--]" />\r\n<link href="[!--news.url--]skin/default/css/style.css" rel="stylesheet" type="text/css" />\r\n<script type="text/javascript" src="[!--news.url--]skin/default/js/tabs.js"></script>\r\n</head>\r\n<body class="homepage">\r\n[!--temp.header--]\r\n<div id="topbanner">\r\n<img src="/skin/default/images/top-banner.jpg" />\r\n</div>\r\n\r\n<div class="buttom">\r\n<div>\r\n<table>\r\n<tr>\r\n<td colspan="2" width="220" class="subtitle">专家团队<td>\r\n</tr>\r\n<tr>\r\n<td class="subcontent">首席顾问</td>\r\n<td>艾华</td>\r\n</tr>\r\n<tr>\r\n<td class="subcontent">资深税务师</td>\r\n<td>刑太武</td>\r\n</tr>\r\n<tr>\r\n<td class="subcontent">资深税务师</td>\r\n<td>任广</td>\r\n</tr>\r\n</table>\r\n</div>\r\n\r\n<div >\r\n<table>\r\n<tr>\r\n<td width="220" class="subtitle">近期培训<td>\r\n</tr>\r\n<tr>\r\n<td width="220" class="subcontent"><a href="/a/peixunzhuanti/qiyechongzu">企业重组培训</a></td>\r\n</tr>\r\n<tr>\r\n<td width="220" class="subcontent"><a href="/a/peixunzhuanti/yinggaizengi">营改增专题</a></td>\r\n</tr>\r\n<tr>\r\n<td width="220" class="subcontent"><a href="/a/peixunzhuanti/zhushui">注册税务师培训</a></td>\r\n</tr>\r\n</table>\r\n</div>\r\n\r\n<div >\r\n<table>\r\n<tr>\r\n<td width="220" class="subtitle">业界动态<td>\r\n</tr>\r\n<tr>\r\n<td width="220"><ul>[ecmsinfo]65,3,32,0,0,2,0[/ecmsinfo]</ul></td>\r\n</tr>\r\n</table>\r\n</div>\r\n\r\n<div >\r\n<table>\r\n<tr>\r\n<td width="220" class="subtitle">税务文化研究<td>\r\n</tr>\r\n<tr>\r\n<td width="220"><ul>[ecmsinfo]70,3,32,0,0,2,0[/ecmsinfo]</ul></td>\r\n</tr>\r\n</table>\r\n</div>\r\n\r\n</div>\r\n\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '', 0, 0, '', 0, 0, 0, 1350011362, 'pubindextemp', 1, 'admin'),
(174, 1, '', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name="keywords" content="[!--pagekey--]" />\r\n<meta name="description" content="[!--pagedes--]" />\r\n<link href="[!--news.url--]skin/default/css/style.css" rel="stylesheet" type="text/css" />\r\n<script type="text/javascript" src="[!--news.url--]skin/default/js/tabs.js"></script>\r\n</head>\r\n<body class="homepage">\r\n[!--temp.header--]\r\n<div id="topbanner">\r\n<img src="/skin/default/images/top-banner.jpg" />\r\n</div>\r\n\r\n<div class="buttom">\r\n<div>\r\n<table>\r\n<tr>\r\n<td colspan="2" width="220" class="subtitle">专家团队<td>\r\n</tr>\r\n<tr>\r\n<td class="subcontent">首席顾问</td>\r\n<td>艾华</td>\r\n</tr>\r\n<tr>\r\n<td class="subcontent">资深税务师</td>\r\n<td>刑太武</td>\r\n</tr>\r\n<tr>\r\n<td class="subcontent">资深税务师</td>\r\n<td>任广</td>\r\n</tr>\r\n</table>\r\n</div>\r\n\r\n<div >\r\n<table>\r\n<tr>\r\n<td width="220" class="subtitle">近期培训<td>\r\n</tr>\r\n<tr>\r\n<td width="220" class="subcontent"><a href="/a/peixunzhuanti/qiyechongzu">企业重组培训</a></td>\r\n</tr>\r\n<tr>\r\n<td width="220" class="subcontent"><a href="/a/peixunzhuanti/yinggaizengi">营改增专题</a></td>\r\n</tr>\r\n<tr>\r\n<td width="220" class="subcontent"><a href="/a/peixunzhuanti/zhushui">注册税务师培训</a></td>\r\n</tr>\r\n</table>\r\n</div>\r\n\r\n<div >\r\n<table>\r\n<tr>\r\n<td width="220" class="subtitle">业界动态<td>\r\n</tr>\r\n<tr>\r\n<td width="220"><ul>[ecmsinfo]65,3,32,0,0,2,0[/ecmsinfo]</ul></td>\r\n</tr>\r\n</table>\r\n</div>\r\n\r\n<div >\r\n<table>\r\n<tr>\r\n<td width="220" class="subtitle">税务文化研究<td>\r\n</tr>\r\n<tr>\r\n<td width="220"><ul>[ecmsinfo]70,3,32,0,0,2,0[/ecmsinfo]</ul></td>\r\n</tr>\r\n</table>\r\n</div>\r\n\r\n</div>\r\n\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '', 0, 0, '', 0, 0, 0, 1350012085, 'pubindextemp', 1, 'admin'),
(182, 1, '默认新闻内容模板', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name="keywords" content="[!--pagekey--]" />\r\n<meta name="description" content="[!--pagedes--]" />\r\n<link href="[!--news.url--]skin/default/css/style.css" rel="stylesheet" type="text/css" />\r\n<script type="text/javascript" src="[!--news.url--]skin/default/js/tabs.js"></script>\r\n<script type="text/javascript" src="[!--news.url--]e/data/js/ajax.js"></script>\r\n</head>\r\n<body class="showpage news">\r\n[!--temp.header--]\r\n<table width="100%" border="0" cellspacing="10" cellpadding="0">\r\n<tr valign="top">\r\n<td class="main"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="position">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width="100%" border="0" cellspacing="0" cellpadding="0" class="box">\r\n<tr>\r\n<td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="title_info">\r\n<tr>\r\n<td><h1>[!--title--]</h1></td>\r\n</tr>\r\n<tr>\r\n<td class="info_text">时间：[!--newstime--]&nbsp;&nbsp;来源：[!--befrom--]&nbsp;&nbsp;作者：[!--writer--]</td>\r\n</tr>\r\n</table>\r\n<table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n<tr>\r\n<td id="text">[!--newstext--]\r\n<p align="center" class="pageLink">[!--page.url--]</p></td>\r\n</tr>\r\n</table>\r\n\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n</td>\r\n\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n[!--page.stats--]\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d H:i:s', 0, 0, 0, 1350030904, 'newstemp', 1, 'admin'),
(110, 1, 'header', '</table>\r\n<!-- 导航tab选项卡 -->\r\n<table width="920" border="0" align="center" cellpadding="0" cellspacing="0" class="nav">\r\n  <tr> \r\n        <td class="nav_global">\r\n<span id="logo">\r\n<a href="/">\r\n<img src="/skin/default/images/logo.gif" width="360" height="90" boder="0" />\r\n</a>\r\n</span>\r\n<ul>\r\n        <li class="curr" id="tabnav_btn_0" onmouseover="tabit(this)"><a href="[!--news.url--]">首页</a></li>\r\n        [showclasstemp]''0'',12,0,0[/showclasstemp] </ul></td>\r\n  </tr>\r\n</table>', 1, 0, '页面头部', 0, 0, '', 0, 0, 0, 1349964235, 'tempvar', 1, 'admin'),
(111, 1, 'header', '<!-- 页头\r\n<table width="100%" border="0" cellspacing="0" cellpadding="0" class="top">\r\n<tr>\r\n<td>\r\n<table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n<tr>\r\n<td width="63%"> \r\n<!-- 登录 -->\r\n<script>\r\ndocument.write(''<script src="[!--news.url--]e/member/login/loginjs.php?t=''+Math.random()+''"><''+''/script>'');\r\n</script>\r\n</td>\r\n<td align="right">\r\n<a onclick="window.external.addFavorite(location.href,document.title)" href="#ecms">加入收藏</a> | <a onclick="this.style.behavior=''url(#default#homepage)'';this.setHomePage(''[!--news.url--]'')" href="#ecms">设为首页</a> | <a href="[!--news.url--]e/member/cp/">会员中心</a> | <a href="[!--news.url--]e/DoInfo/">我要投稿</a> | <a href="[!--news.url--]e/web/?type=rss2&classid=[!--self.classid--]" target="_blank">RSS<img src="[!--news.url--]skin/default/images/rss.gif" border="0" hspace="2" /></a>\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>\r\n<table width="100%" border="0" cellpadding="0" cellspacing="10">\r\n<tr valign="middle">\r\n<td width="240" align="center"><img src="[!--news.url--]skin/default/images/logo.gif" width="200" height="65" border="0" /></td>\r\n<td align="center"><img src="[!--news.url--]skin/default/images/opensource.gif" width="100%" height="70" border="0" /></td>\r\n</tr>\r\n</table>\r\n</table>\r\n-->\r\n\r\n<!-- 导航tab选项卡 -->\r\n<table width="920" border="0" align="center" cellpadding="0" cellspacing="0" class="nav">\r\n  <tr> \r\n        <td class="nav_global">\r\n<span id="logo">\r\n<a href="/">\r\n<img src="/skin/default/images/logo.gif" width="360" height="90" boder="0" />\r\n</a>\r\n</span>\r\n<ul>\r\n        <li class="curr" id="tabnav_btn_0" onmouseover="tabit(this)"><a href="[!--news.url--]">首页</a></li>\r\n        [showclasstemp]''0'',12,0,0[/showclasstemp] </ul></td>\r\n  </tr>\r\n</table>', 1, 0, '页面头部', 0, 0, '', 0, 0, 0, 1349964347, 'tempvar', 1, 'admin'),
(180, 1, '默认新闻内容模板', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name="keywords" content="[!--pagekey--]" />\r\n<meta name="description" content="[!--pagedes--]" />\r\n<link href="[!--news.url--]skin/default/css/style.css" rel="stylesheet" type="text/css" />\r\n<script type="text/javascript" src="[!--news.url--]skin/default/js/tabs.js"></script>\r\n<script type="text/javascript" src="[!--news.url--]e/data/js/ajax.js"></script>\r\n</head>\r\n<body class="showpage news">\r\n[!--temp.header--]\r\n<table width="100%" border="0" cellspacing="10" cellpadding="0">\r\n<tr valign="top">\r\n<td class="main"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="position">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width="100%" border="0" cellspacing="0" cellpadding="0" class="box">\r\n<tr>\r\n<td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="title_info">\r\n<tr>\r\n<td><h1>[!--title--]</h1></td>\r\n</tr>\r\n<tr>\r\n<td class="info_text">时间：[!--newstime--]&nbsp;&nbsp;来源：[!--befrom--]&nbsp;&nbsp;作者：[!--writer--]</td>\r\n</tr>\r\n</table>\r\n<table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n<tr>\r\n<td id="text">[!--newstext--]\r\n<p align="center" class="pageLink">[!--page.url--]</p></td>\r\n</tr>\r\n</table>\r\n\r\n</td>\r\n</tr>\r\n</table>\r\n[!--temp.pl--]\r\n</td>\r\n\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n[!--page.stats--]\r\n</body>\r\n</html>', 0, 0, '', 0, 1, 'Y-m-d H:i:s', 0, 0, 0, 1350029759, 'newstemp', 1, 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewstempgroup`
--

CREATE TABLE IF NOT EXISTS `phome_enewstempgroup` (
  `gid` smallint(6) NOT NULL AUTO_INCREMENT,
  `gname` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `phome_enewstempgroup`
--

INSERT INTO `phome_enewstempgroup` (`gid`, `gname`, `isdefault`) VALUES
(1, '默认模板组', 1);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewstempvar`
--

CREATE TABLE IF NOT EXISTS `phome_enewstempvar` (
  `varid` smallint(6) NOT NULL AUTO_INCREMENT,
  `myvar` varchar(60) NOT NULL DEFAULT '',
  `varname` varchar(60) NOT NULL DEFAULT '',
  `varvalue` mediumtext NOT NULL,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`varid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `phome_enewstempvar`
--

INSERT INTO `phome_enewstempvar` (`varid`, `myvar`, `varname`, `varvalue`, `classid`, `isclose`, `myorder`) VALUES
(1, 'header', '页面头部', '<!-- 导航tab选项卡 -->\r\n<table width="920" border="0" align="center" cellpadding="0" cellspacing="0" class="nav">\r\n  <tr> \r\n        <td class="nav_global">\r\n<span id="logo">\r\n<a href="/">\r\n<img src="/skin/default/images/logo.gif" width="360" height="90" boder="0" />\r\n</a>\r\n</span>\r\n<ul>\r\n        <li class="curr" id="tabnav_btn_0" onmouseover="tabit(this)"><a href="[!--news.url--]">首页</a></li>\r\n        [showclasstemp]''0'',12,0,0[/showclasstemp] </ul></td>\r\n  </tr>\r\n</table>', 0, 0, 1),
(2, 'footer', '页面尾部', '<!-- 页脚 -->\r\n<table width="920" border="0" cellpadding="0" cellspacing="0" align="center">\r\n<tr>\r\n<td align="center" class="search">\r\n<form action="[!--news.url--]e/search/index.php" method="post" name="searchform" id="searchform">\r\n<table border="0" cellspacing="6" cellpadding="0">\r\n<tr>\r\n<td><strong>站内搜索：</strong>\r\n<input name="keyboard" type="text" size="32" id="keyboard" class="inputText" />\r\n<input type="hidden" name="show" value="title" />\r\n<input type="hidden" name="tempid" value="1" />\r\n<select name="tbname">\r\n<option value="news">新闻</option>\r\n<option value="download">下载</option>\r\n<option value="photo">图库</option>\r\n<option value="flash">FLASH</option>\r\n<option value="movie">电影</option>\r\n<option value="shop">商品</option>\r\n<option value="article">文章</option>\r\n<option value="info">分类信息</option>\r\n</select>\r\n</td>\r\n<td><input type="image" class="inputSub" src="[!--news.url--]skin/default/images/search.gif" />\r\n</td>\r\n<td><a href="[!--news.url--]search/" target="_blank">高级搜索</a></td>\r\n</tr>\r\n</table>\r\n</form>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n	<table width="100%" border="0" cellpadding="0" cellspacing="4" class="copyright">\r\n        <tr> \r\n          <td align="center"><a href="[!--news.url--]">网站首页</a> | <a href="#">关于我们</a> \r\n            | <a href="#">服务条款</a> | <a href="#">广告服务</a> | <a href="#">联系我们</a> \r\n            | <a href="#">网站地图</a> | <a href="#">免责声明</a> | <a href="[!--news.url--]e/wap/" target="_blank">WAP</a></td>\r\n        </tr>\r\n	</table>\r\n</td>\r\n</tr>\r\n</table>', 0, 0, 0),
(3, 'dtheader', '动态页面头部', '<!-- 页头 -->\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"top\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n<tr>\r\n<td width=\\"63%\\">\r\n<!-- 登录 -->\r\n<script>\r\ndocument.write(\\''<script src=\\"[!--news.url--]e/member/login/loginjs.php?t=\\''+Math.random()+\\''\\"><\\''+\\''/script>\\'');\r\n</script>\r\n</td>\r\n<td align=\\"right\\">\r\n<a onclick=\\"window.external.addFavorite(location.href,document.title)\\" href=\\"#ecms\\">加入收藏</a> | <a onclick=\\"this.style.behavior=\\''url(#default#homepage)\\'';this.setHomePage(\\''[!--news.url--]\\'')\\" href=\\"#ecms\\">设为首页</a> | <a href=\\"[!--news.url--]e/member/cp/\\">会员中心</a> | <a href=\\"[!--news.url--]e/DoInfo/\\">我要投稿</a> | <a href=\\"[!--news.url--]e/web/?type=rss2\\" target=\\"_blank\\">RSS<img src=\\"[!--news.url--]skin/default/images/rss.gif\\" border=\\"0\\" hspace=\\"2\\" /></a>\r\n</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"10\\">\r\n<tr valign=\\"middle\\">\r\n<td width=\\"240\\" align=\\"center\\"><a href=\\"[!--news.url--]\\"><img src=\\"[!--news.url--]skin/default/images/logo.gif\\" width=\\"200\\" height=\\"65\\" border=\\"0\\" /></a></td>\r\n<td align=\\"center\\"><a href=\\"http://www.phome.net/OpenSource/\\" target=\\"_blank\\"><img src=\\"[!--news.url--]skin/default/images/opensource.gif\\" width=\\"100%\\" height=\\"70\\" border=\\"0\\" /></a></td>\r\n</tr>\r\n</table>\r\n<!-- 导航tab选项卡 -->\r\n<table width=\\"920\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"nav\\">\r\n  <tr> \r\n    <td class=\\"nav_global\\"><ul>\r\n        <li class=\\"curr\\" id=\\"tabnav_btn_0\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]\\">首页</a></li>\r\n        <li id=\\"tabnav_btn_1\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]news/\\">新闻中心</a></li>\r\n        <li id=\\"tabnav_btn_2\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]download/\\">下载中心</a></li>\r\n        <li id=\\"tabnav_btn_3\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]movie/\\">影视频道</a></li>\r\n        <li id=\\"tabnav_btn_4\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]shop/\\">网上商城</a></li>\r\n        <li id=\\"tabnav_btn_5\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]flash/\\">FLASH频道</a></li>\r\n        <li id=\\"tabnav_btn_6\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]photo/\\">图片频道</a></li>\r\n        <li id=\\"tabnav_btn_7\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]article/\\">文章中心</a></li>\r\n        <li id=\\"tabnav_btn_8\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]info/\\">分类信息</a></li>\r\n      </ul></td>\r\n  </tr>\r\n</table>', 0, 0, 0),
(4, 'infoarea', '分类信息区域导航', '<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n	<tr>\r\n		<td width=\\"33%\\"><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=东城区\\">东城区</a></td>\r\n		<td width=\\"33%\\"><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=西城区\\">西城区</a></td>\r\n		<td width=\\"33%\\"><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=通州区\\">通州区</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=崇文区\\">崇文区</a></td>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=宣武区\\">宣武区</a></td>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=大兴区\\">大兴区</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" /><a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=朝阳区\\">&nbsp;朝阳区</a></td>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=海淀区\\">海淀区</a></td>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=昌平区\\">昌平区</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=丰台区\\">丰台区</a></td>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=石景山区\\">石景山区</a></td>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=其它\\">其它</a></td>\r\n	</tr>\r\n</table>', 0, 0, 0),
(5, 'infoclassnav', '分类信息分类导航', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\">\r\n  <tr>\r\n    <td bgcolor=\\"#EEF1F4\\">&nbsp;<img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo/?classid=10\\"><strong>房屋信息</strong></a></td>\r\n  </tr> \r\n</table>\r\n<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n  <tr>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=11\\">房屋求租</a></td>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=12\\">房屋出租</a></td>\r\n  		<td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=15\\">办公用房</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=13\\">房屋求购</a></td>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=14\\">房屋出售</a></td>\r\n  		<td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=16\\">旺铺门面</a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"4\\" bgcolor=\\"#EEF1F4\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo/?classid=17\\"><strong>跳蚤市场</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n  <tr>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=18\\">电脑配件</a></td>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=19\\">电器数码</a></td>\r\n  		<td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=21\\">居家用品</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=20\\">通讯产品</a></td>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=21\\"></a></td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\" bgcolor=\\"#EEF1F4\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo/?classid=22\\"><strong>同城生活</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n  <tr>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=23\\">本地新闻</a></td>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=24\\">购物打折</a></td>\r\n  		<td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=26\\">便民告示</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=25\\">旅游活动</a></td>\r\n    <td>&nbsp;</td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\" bgcolor=\\"#EEF1F4\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo/?classid=27\\"><strong>求职招聘</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n  <tr>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=28\\">工程技术</a></td>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=29\\">财务会计</a></td>\r\n  		<td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=31\\">经营管理</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=30\\">餐饮行业</a></td>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=31\\"></a></td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>', 0, 0, 0),
(7, 'pl', '评论表单', '<script>\r\n		  function CheckPl(obj)\r\n		  {\r\n		  if(obj.saytext.value==\\"\\")\r\n		  {\r\n		  alert(\\"您没什么话要说吗？\\");\r\n		  obj.saytext.focus();\r\n		  return false;\r\n		  }\r\n		  return true;\r\n		  }\r\n		  </script><form action=\\"[!--news.url--]e/enews/index.php\\" method=\\"post\\" name=\\"saypl\\" id=\\"saypl\\" onsubmit=\\"return CheckPl(document.saypl)\\">\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" id=\\"plpost\\">\r\n\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>发表评论</strong></td>\r\n<td align=\\"right\\"><a href=\\"[!--news.url--]e/pl/?classid=[!--classid--]&amp;id=[!--id--]\\">共有<span><script type=\\"text/javascript\\" src=\\"[!--news.url--]e/public/ViewClick/?classid=[!--classid--]&id=[!--id--]&down=2\\"></script></span>条评论</a></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"2\\">\r\n<tr>\r\n<td width=\\"56%\\" align=\\"left\\">用户名:\r\n<input name=\\"username\\" type=\\"text\\" class=\\"inputText\\" id=\\"username\\" value=\\"\\" size=\\"16\\" /></td>\r\n<td width=\\"44%\\" align=\\"left\\">密码:\r\n<input name=\\"password\\" type=\\"password\\" class=\\"inputText\\" id=\\"password\\" value=\\"\\" size=\\"16\\" /></td>\r\n</tr>\r\n<tr>\r\n<td align=\\"left\\">验证码:\r\n<input name=\\"key\\" type=\\"text\\" class=\\"inputText\\" size=\\"10\\" />\r\n<img src=\\"[!--news.url--]e/ShowKey/?v=pl\\" align=\\"absmiddle\\" /> </td>\r\n<td align=\\"left\\"><input name=\\"nomember\\" type=\\"checkbox\\" id=\\"nomember\\" value=\\"1\\" checked=\\"checked\\" />\r\n匿名发表</td>\r\n</tr>\r\n</table>\r\n<textarea name=\\"saytext\\" rows=\\"6\\" id=\\"saytext\\"></textarea><input name=\\"imageField\\" type=\\"image\\" src=\\"[!--news.url--]e/data/images/postpl.gif\\"/>\r\n<input name=\\"id\\" type=\\"hidden\\" id=\\"id\\" value=\\"[!--id--]\\" />\r\n<input name=\\"classid\\" type=\\"hidden\\" id=\\"classid\\" value=\\"[!--classid--]\\" />\r\n<input name=\\"enews\\" type=\\"hidden\\" id=\\"enews\\" value=\\"AddPl\\" />\r\n<input name=\\"repid\\" type=\\"hidden\\" id=\\"repid\\" value=\\"0\\" />\r\n<input type=\\"hidden\\" name=\\"ecmsfrom\\" value=\\"[!--titleurl--]\\"></td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table></form>', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewstempvarclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewstempvarclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewstogzts`
--

CREATE TABLE IF NOT EXISTS `phome_enewstogzts` (
  `togid` int(11) NOT NULL AUTO_INCREMENT,
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `searchf` varchar(255) NOT NULL DEFAULT '',
  `query` text NOT NULL,
  `specialsearch` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `retype` tinyint(1) NOT NULL DEFAULT '0',
  `startday` varchar(20) NOT NULL DEFAULT '',
  `endday` varchar(20) NOT NULL DEFAULT '',
  `startid` int(11) NOT NULL DEFAULT '0',
  `endid` int(11) NOT NULL DEFAULT '0',
  `pline` int(11) NOT NULL DEFAULT '0',
  `doecmszt` tinyint(1) NOT NULL DEFAULT '0',
  `togztname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`togid`),
  KEY `togztname` (`togztname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsuser`
--

CREATE TABLE IF NOT EXISTS `phome_enewsuser` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `rnd` varchar(20) NOT NULL DEFAULT '',
  `adminclass` mediumtext NOT NULL,
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `styleid` smallint(6) NOT NULL DEFAULT '0',
  `filelevel` tinyint(1) NOT NULL DEFAULT '0',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `loginnum` int(11) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `lastip` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `pretime` int(11) NOT NULL DEFAULT '0',
  `preip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `phome_enewsuser`
--

INSERT INTO `phome_enewsuser` (`userid`, `username`, `password`, `rnd`, `adminclass`, `groupid`, `checked`, `styleid`, `filelevel`, `salt`, `loginnum`, `lasttime`, `lastip`, `truename`, `email`, `classid`, `pretime`, `preip`) VALUES
(1, 'admin', 'dd15e218befbb8ada6a2085c5ede42a1', 'vCKUNrTDFKHBM6adkkMx', '', 1, 0, 1, 0, 'mUTdwLu9', 22, 1350055151, '::1', '', '', 0, 1350025516, '::1');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsuseradd`
--

CREATE TABLE IF NOT EXISTS `phome_enewsuseradd` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `equestion` tinyint(4) NOT NULL DEFAULT '0',
  `eanswer` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `phome_enewsuseradd`
--

INSERT INTO `phome_enewsuseradd` (`userid`, `equestion`, `eanswer`) VALUES
(1, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsuserclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewsuserclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsuserjs`
--

CREATE TABLE IF NOT EXISTS `phome_enewsuserjs` (
  `jsid` smallint(6) NOT NULL AUTO_INCREMENT,
  `jsname` varchar(60) NOT NULL DEFAULT '',
  `jssql` text NOT NULL,
  `jstempid` smallint(6) NOT NULL DEFAULT '0',
  `jsfilename` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`jsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsuserlist`
--

CREATE TABLE IF NOT EXISTS `phome_enewsuserlist` (
  `listid` smallint(6) NOT NULL AUTO_INCREMENT,
  `listname` varchar(60) NOT NULL DEFAULT '',
  `pagetitle` varchar(120) NOT NULL DEFAULT '',
  `filepath` varchar(120) NOT NULL DEFAULT '',
  `filetype` varchar(12) NOT NULL DEFAULT '',
  `totalsql` text NOT NULL,
  `listsql` text NOT NULL,
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `lencord` int(11) NOT NULL DEFAULT '0',
  `listtempid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsvote`
--

CREATE TABLE IF NOT EXISTS `phome_enewsvote` (
  `voteid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `voteip` mediumtext NOT NULL,
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `votetime` int(11) NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`voteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsvotemod`
--

CREATE TABLE IF NOT EXISTS `phome_enewsvotemod` (
  `voteid` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `ysvotename` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`voteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsvotetemp`
--

CREATE TABLE IF NOT EXISTS `phome_enewsvotetemp` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `phome_enewsvotetemp`
--

INSERT INTO `phome_enewsvotetemp` (`tempid`, `tempname`, `temptext`) VALUES
(1, '默认投票模板', '<table width=100% border=0 align=center cellpadding=3 cellspacing=0><form name=enewsvote method=POST action=''[!--vote.action--]'' target=_blank><tr><td><strong>[!--title--]</strong></td></tr><input type=hidden name=voteid value=''[!--voteid--]''><input type=hidden name=enews value=AddVote>\r\n[!--empirenews.listtemp--]\r\n<tr><td>[!--vote.box--]&nbsp;[!--vote.name--]</td></tr>\r\n[!--empirenews.listtemp--]\r\n<tr><td align=center><input type=submit name=submit value=投票>&nbsp;&nbsp;<input type=button name=button value=查看结果 onclick=javascript:window.open(''[!--vote.view--]'','''',''width=[!--width--],height=[!--height--],scrollbars=yes'');></td></tr></form></table>'),
(2, '默认信息投票模板', '<table width=\\''100%\\'' border=0 align=center cellpadding=3 cellspacing=0><form name=enewsvote method=POST action=\\''[!--news.url--]e/enews/index.php\\'' target=_blank><tr><td><strong>[!--title--]</strong></td></tr><input type=hidden name=id value=\\''[!--id--]\\''><input type=hidden name=classid value=\\''[!--classid--]\\''><input type=hidden name=enews value=AddInfoVote>\r\n[!--empirenews.listtemp--]\r\n<tr><td>[!--vote.box--]&nbsp;[!--vote.name--]</td></tr>\r\n[!--empirenews.listtemp--]\r\n<tr><td align=center><input type=submit name=submit value=投票>&nbsp;&nbsp;<input type=button name=button value=查看结果 onclick=javascript:window.open(\\''[!--news.url--]e/public/vote/?classid=[!--classid--]&id=[!--id--]\\'',\\''\\'',\\''width=[!--width--],height=[!--height--],scrollbars=yes\\'');></td></tr></form></table>');

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewswapstyle`
--

CREATE TABLE IF NOT EXISTS `phome_enewswapstyle` (
  `styleid` smallint(6) NOT NULL AUTO_INCREMENT,
  `stylename` varchar(60) NOT NULL DEFAULT '',
  `path` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `phome_enewswapstyle`
--

INSERT INTO `phome_enewswapstyle` (`styleid`, `stylename`, `path`) VALUES
(1, '新闻模板', 1),
(2, '分类信息模板', 2);

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewswfinfo`
--

CREATE TABLE IF NOT EXISTS `phome_enewswfinfo` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `wfid` smallint(6) NOT NULL DEFAULT '0',
  `tid` int(11) NOT NULL DEFAULT '0',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `checknum` tinyint(4) NOT NULL DEFAULT '0',
  `tstatus` varchar(30) NOT NULL DEFAULT '0',
  `checktno` tinyint(4) NOT NULL DEFAULT '0',
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewswfinfolog`
--

CREATE TABLE IF NOT EXISTS `phome_enewswfinfolog` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `wfid` smallint(6) NOT NULL DEFAULT '0',
  `tid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `checktime` int(11) NOT NULL DEFAULT '0',
  `checktext` text NOT NULL,
  `checknum` tinyint(4) NOT NULL DEFAULT '0',
  `checktype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logid`),
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewswords`
--

CREATE TABLE IF NOT EXISTS `phome_enewswords` (
  `wordid` smallint(6) NOT NULL AUTO_INCREMENT,
  `oldword` varchar(255) NOT NULL DEFAULT '',
  `newword` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`wordid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsworkflow`
--

CREATE TABLE IF NOT EXISTS `phome_enewsworkflow` (
  `wfid` smallint(6) NOT NULL AUTO_INCREMENT,
  `wfname` varchar(60) NOT NULL DEFAULT '',
  `wftext` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `adduser` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`wfid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsworkflowitem`
--

CREATE TABLE IF NOT EXISTS `phome_enewsworkflowitem` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `wfid` smallint(6) NOT NULL DEFAULT '0',
  `tname` varchar(60) NOT NULL DEFAULT '',
  `tno` int(11) NOT NULL DEFAULT '0',
  `ttext` varchar(255) NOT NULL DEFAULT '',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `lztype` tinyint(1) NOT NULL DEFAULT '0',
  `tbdo` int(11) NOT NULL DEFAULT '0',
  `tddo` int(11) NOT NULL DEFAULT '0',
  `tstatus` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`),
  KEY `wfid` (`wfid`),
  KEY `tno` (`tno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewswriter`
--

CREATE TABLE IF NOT EXISTS `phome_enewswriter` (
  `wid` smallint(6) NOT NULL AUTO_INCREMENT,
  `writer` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`wid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsyh`
--

CREATE TABLE IF NOT EXISTS `phome_enewsyh` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `yhname` varchar(30) NOT NULL DEFAULT '',
  `yhtext` varchar(255) NOT NULL DEFAULT '',
  `hlist` int(11) NOT NULL DEFAULT '0',
  `qlist` int(11) NOT NULL DEFAULT '0',
  `bqnew` int(11) NOT NULL DEFAULT '0',
  `bqhot` int(11) NOT NULL DEFAULT '0',
  `bqpl` int(11) NOT NULL DEFAULT '0',
  `bqgood` int(11) NOT NULL DEFAULT '0',
  `bqfirst` int(11) NOT NULL DEFAULT '0',
  `bqdown` int(11) NOT NULL DEFAULT '0',
  `otherlink` int(11) NOT NULL DEFAULT '0',
  `qmlist` int(11) NOT NULL DEFAULT '0',
  `dobq` tinyint(1) NOT NULL DEFAULT '0',
  `dojs` tinyint(1) NOT NULL DEFAULT '0',
  `dosbq` tinyint(1) NOT NULL DEFAULT '0',
  `rehtml` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewszt`
--

CREATE TABLE IF NOT EXISTS `phome_enewszt` (
  `ztid` smallint(6) NOT NULL AUTO_INCREMENT,
  `ztname` varchar(60) NOT NULL DEFAULT '',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `ztnum` tinyint(4) NOT NULL DEFAULT '0',
  `listtempid` smallint(6) NOT NULL DEFAULT '0',
  `ztpath` varchar(255) NOT NULL DEFAULT '',
  `zttype` varchar(10) NOT NULL DEFAULT '',
  `newline` int(11) NOT NULL DEFAULT '0',
  `zturl` varchar(200) NOT NULL DEFAULT '',
  `hotline` tinyint(4) NOT NULL DEFAULT '0',
  `goodline` tinyint(4) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `hotplline` tinyint(4) NOT NULL DEFAULT '0',
  `firstline` tinyint(4) NOT NULL DEFAULT '0',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `ztimg` varchar(255) NOT NULL DEFAULT '',
  `jstempid` smallint(6) NOT NULL DEFAULT '0',
  `zcid` smallint(6) NOT NULL DEFAULT '0',
  `showzt` tinyint(1) NOT NULL DEFAULT '0',
  `ztpagekey` varchar(255) NOT NULL DEFAULT '',
  `classtempid` smallint(6) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `nrejs` tinyint(1) NOT NULL DEFAULT '0',
  `usezt` tinyint(1) NOT NULL DEFAULT '0',
  `yhid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ztid`),
  KEY `classid` (`classid`),
  KEY `zcid` (`zcid`),
  KEY `usezt` (`usezt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsztadd`
--

CREATE TABLE IF NOT EXISTS `phome_enewsztadd` (
  `ztid` smallint(6) NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  PRIMARY KEY (`ztid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsztclass`
--

CREATE TABLE IF NOT EXISTS `phome_enewsztclass` (
  `classid` smallint(6) NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `phome_enewsztf`
--

CREATE TABLE IF NOT EXISTS `phome_enewsztf` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
