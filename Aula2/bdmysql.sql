-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 29-Set-2022 às 00:16
-- Versão do servidor: 10.8.3-MariaDB
-- versão do PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_mysql`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`id`, `nome`) VALUES
(1, 'Aquilino Ribeiro'),
(2, 'Augustina Bessa-Luís'),
(3, 'Raúl Brandão'),
(4, 'Fernando Pessoa'),
(5, 'Vitorino Nemésio'),
(6, 'José Saramago'),
(7, 'José Cardoso Pires'),
(8, 'António Lobo Antunes'),
(9, 'Herberto Helder'),
(10, 'Vergílio Ferreira'),
(11, 'Jorge de Sena '),
(12, 'Carlos de Oliveira');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `ano_publicacao` year(4) NOT NULL,
  `autor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id`, `titulo`, `ano_publicacao`, `autor`) VALUES
(1, 'A Casa Grande de Romarigães ', 2013, 1),
(2, 'A Sibila', 1953, 2),
(3, 'Finisterra ', 1978, 12),
(4, 'Húmus', 1917, 3),
(5, 'Livro do Desassossego', 1982, 4),
(6, 'Mau Tempo no Canal', 2018, 5),
(7, 'O Ano da Morte de Ricardo Reis ', 1935, 6),
(9, 'Uma Luz Inesperada', 2005, 6),
(10, 'O Silêncio da Água', 2022, 6),
(11, 'A Jangada de Pedra', 2021, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `id` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `livro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`id`, `data`, `livro`) VALUES
(1, '2021-11-19 20:32:10', 1),
(3, '2014-01-22 01:28:24', 4),
(4, '2012-04-10 01:31:24', 5),
(5, '2020-04-27 17:12:02', 6),
(8, '2012-04-01 10:35:41', 10),
(9, '2021-01-18 00:14:19', 11),
(10, '2021-08-16 19:24:42', 3),
(16, '2014-08-28 21:08:25', 1),
(17, '2018-11-28 16:25:54', 2),
(20, '2020-09-01 02:51:05', 6),
(23, '2013-09-29 14:37:53', 10),
(24, '2017-04-06 12:33:06', 11),
(31, '2011-09-30 20:38:22', 1),
(34, '2022-06-08 23:17:41', 5),
(35, '2018-11-01 07:35:08', 6),
(36, '2015-12-29 20:02:51', 7),
(37, '2012-08-06 07:29:04', 9),
(40, '2016-10-24 08:58:13', 3),
(48, '2022-05-06 13:38:31', 4),
(50, '2021-12-17 14:40:14', 6),
(54, '2021-04-17 14:53:34', 11),
(61, '2015-08-03 13:02:28', 1),
(62, '2013-04-24 19:48:46', 2),
(63, '2020-12-07 03:56:40', 4),
(64, '2017-11-11 09:17:11', 5),
(67, '2010-12-25 01:58:46', 9),
(68, '2014-10-09 07:25:48', 10),
(70, '2011-01-13 22:47:29', 3),
(76, '2015-05-26 12:57:18', 1),
(77, '2015-06-06 17:34:18', 2),
(80, '2013-02-26 02:21:46', 6),
(84, '2020-03-29 06:55:09', 11),
(92, '2017-07-21 21:26:56', 2),
(93, '2016-04-26 18:13:11', 4),
(94, '2018-01-24 01:45:17', 5),
(96, '2015-06-01 21:19:49', 7),
(99, '2011-07-03 20:40:22', 11),
(106, '2018-06-14 17:58:56', 1),
(110, '2016-01-10 08:25:30', 6),
(111, '2021-01-16 23:57:31', 7),
(115, '2015-09-24 18:18:06', 3),
(121, '2018-06-02 15:24:22', 1),
(122, '2012-06-14 13:08:25', 2),
(125, '2011-01-09 03:37:34', 6),
(127, '2014-05-16 13:32:47', 9),
(128, '2016-05-28 18:28:57', 10),
(137, '2018-06-23 14:28:32', 2),
(138, '2022-02-20 04:26:25', 4),
(140, '2012-09-12 03:34:15', 6),
(142, '2016-03-11 23:54:53', 9),
(143, '2011-10-23 04:00:10', 10),
(144, '2011-08-04 10:16:23', 11),
(151, '2021-03-29 02:39:45', 1),
(152, '2021-02-26 14:04:45', 2),
(153, '2019-03-13 01:24:42', 4),
(154, '2021-08-20 14:49:29', 5),
(155, '2015-09-23 08:53:31', 6),
(156, '2014-11-09 15:59:18', 7),
(158, '2013-09-28 07:23:02', 10),
(159, '2021-02-16 22:06:55', 11),
(160, '2017-07-23 18:25:44', 3),
(169, '2013-04-12 18:11:07', 5),
(173, '2014-06-09 10:46:01', 10),
(174, '2016-03-21 06:12:19', 11),
(182, '2013-05-15 08:26:47', 2),
(183, '2014-08-05 01:49:47', 4),
(184, '2021-12-26 06:48:47', 5),
(190, '2015-11-08 08:03:33', 3),
(197, '2015-05-24 17:50:18', 2),
(198, '2022-06-01 08:09:34', 4),
(202, '2011-12-24 14:38:51', 9),
(203, '2021-06-20 04:32:38', 10),
(204, '2012-07-14 03:46:48', 11),
(205, '2011-05-25 15:16:21', 3),
(213, '2019-08-23 08:47:40', 4),
(215, '2021-06-14 06:23:54', 6),
(216, '2020-01-16 09:31:39', 7),
(218, '2017-12-09 11:39:04', 10),
(219, '2015-11-14 02:55:16', 11),
(220, '2014-08-28 05:39:20', 3),
(226, '2016-11-30 13:03:19', 1),
(227, '2020-09-23 16:07:09', 2),
(228, '2018-01-13 03:26:03', 4),
(230, '2020-08-05 23:46:48', 6),
(232, '2011-03-19 00:56:48', 9),
(233, '2018-11-12 08:21:58', 10),
(242, '2022-02-15 19:01:16', 2),
(243, '2021-03-25 16:08:23', 4),
(244, '2016-11-27 07:38:20', 5),
(247, '2020-07-29 03:34:27', 9),
(250, '2012-05-16 01:51:36', 3),
(257, '2020-10-26 14:46:12', 2),
(258, '2012-04-20 14:21:33', 4),
(260, '2013-02-17 08:22:13', 6),
(262, '2016-12-15 13:50:01', 9),
(263, '2019-03-09 03:00:25', 10),
(265, '2018-06-29 10:40:07', 3),
(273, '2022-01-21 05:19:48', 4),
(275, '2018-02-09 02:18:00', 6),
(280, '2017-09-23 03:40:20', 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autor` (`autor`) USING BTREE;

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `livro` (`livro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `fk_livro_autor` FOREIGN KEY (`autor`) REFERENCES `autor` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;