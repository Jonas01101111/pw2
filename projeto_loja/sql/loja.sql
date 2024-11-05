-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 05-Nov-2024 às 17:09
-- Versão do servidor: 8.0.27
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_general_ci,
  `preco` decimal(10,2) NOT NULL DEFAULT '0.00',
  `foto` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `preco`, `foto`) VALUES
(1, 'Produto 1', 'Descrição do Produto 1', '105.99', 'imagens/produto1.png'),
(2, 'Produto 2', 'Descrição do Produto 2', '150.50', 'imagens/produto2.png'),
(3, 'Produto 3', 'Descrição do Produto 3', '120.25', 'imagens/produto3.png'),
(4, 'Produto 4', 'Descrição do Produto 4', '135.99', 'imagens/produto4.png'),
(5, 'Produto 5', 'Descrição do Produto 5', '110.75', 'imagens/produto5.png'),
(6, 'Produto 6', 'Descrição do Produto 6', '199.99', 'imagens/produto6.png'),
(7, 'Produto 7', 'Descrição do Produto 7', '225.00', 'imagens/produto7.png'),
(8, 'Produto 8', 'Descrição do Produto 8', '300.99', 'imagens/produto8.png'),
(9, 'Produto 9', 'Descrição do Produto 9', '140.99', 'imagens/produto9.png'),
(10, 'Produto 10', 'Descrição do Produto 10', '175.49', 'imagens/produto10.png'),
(11, 'Produto 11', 'Descrição do Produto 11', '190.99', 'imagens/produto11.png'),
(12, 'Produto 12', 'Descrição do Produto 12', '210.50', 'imagens/produto12.png'),
(13, 'Produto 13', 'Descrição do Produto 13', '115.25', 'imagens/produto13.png'),
(14, 'Produto 14', 'Descrição do Produto 14', '160.99', 'imagens/produto14.png'),
(15, 'Produto 15', 'Descrição do Produto 15', '180.00', 'imagens/produto15.png'),
(16, 'Produto 16', 'Descrição do Produto 16', '240.99', 'imagens/produto16.png'),
(17, 'Produto 17', 'Descrição do Produto 17', '137.75', 'imagens/produto17.png'),
(18, 'Produto 18', 'Descrição do Produto 18', '220.49', 'imagens/produto18.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `administrador` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `senha`, `administrador`) VALUES
(1, 'andre@teste.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(2, 'telma@teste.com', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
CREATE TABLE IF NOT EXISTS `vendedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
