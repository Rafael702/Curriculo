-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 17-Maio-2021 às 22:13
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_contatos`
--
CREATE DATABASE IF NOT EXISTS `bd_contatos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `bd_contatos`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_contatos`
--

DROP TABLE IF EXISTS `tb_contatos`;
CREATE TABLE IF NOT EXISTS `tb_contatos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_contatos`
--

INSERT INTO `tb_contatos` (`codigo`, `nome`, `telefone`, `email`, `foto`) VALUES
(14, 'Fred', '1125660662', 'rafaeç.sasjjkah@hotmail.com', 'img/ddb1b21e15294862258481e3b527b804.jpg'),
(15, 'Rafael Santos de Almeida', '11998603881', 'rafaeldealmeida.192001@gmail.com', 'img/952de79370911c134cfaa394eabcb49e.jpg'),
(13, ' Gordan', '1147589241', 'gordib@ghsgsg,cin', 'img/9099310ddc347ebb96ad037588c09f15.jpg');
--
-- Banco de dados: `bd_smartphones`
--
CREATE DATABASE IF NOT EXISTS `bd_smartphones` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `bd_smartphones`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_smartphones`
--

DROP TABLE IF EXISTS `tb_smartphones`;
CREATE TABLE IF NOT EXISTS `tb_smartphones` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `fabricante` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `modelo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `preco` double NOT NULL,
  `foto` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_smartphones`
--

INSERT INTO `tb_smartphones` (`codigo`, `fabricante`, `modelo`, `preco`, `foto`) VALUES
(8, 'SAMSUNG', 'J10', 5000, '40'),
(7, 'Apple', 'Iphone', 40000, '25'),
(4, 'SAMSUNG', 'J10', 55.1, '83'),
(5, 'SAMSUNG', 'J10', 300000, '31'),
(6, 'Apple', 'Iphone', 40000, '51');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
