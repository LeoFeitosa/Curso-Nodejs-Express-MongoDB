-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Set-2021 às 23:07
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `portal_noticias`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `noticia` text NOT NULL,
  `resumo` varchar(100) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `data_noticia` date DEFAULT NULL,
  `data_criacao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `titulo`, `noticia`, `resumo`, `autor`, `data_noticia`, `data_criacao`) VALUES
(1, 'Mussum Ipsum', 'Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi. Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis. Aenean aliquam molestie leo, vitae iaculis nisl.\r\n\r\nPosuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi. Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl. Quem num gosta di mim que vai caçá sua turmis! Quem num gosta di mé, boa gentis num é.', 'Aenean aliquam molestie leo, vitae iaculis nisl.', 'Mussum', '2021-09-29', '2021-09-29 20:54:29'),
(2, 'Posuere libero varius', 'Posuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi. Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl. Quem num gosta di mim que vai caçá sua turmis! Quem num gosta di mé, boa gentis num é.', ' Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi', 'Mauris nec ', '2021-09-30', '2021-09-29 20:55:32'),
(3, 'Praesent malesuada', 'Mussum Ipsum, cacilds vidis litro abertis. Viva Forevis aptent taciti sociosqu ad litora torquent. Copo furadis é disculpa de bebadis, arcu quam euismod magna. Paisis, filhis, espiritis santis. Aenean aliquam molestie leo, vitae iaculis nisl.\r\n\r\nSi u mundo tá muito paradis? Toma um mé que o mundo vai girarzis! Pra lá , depois divoltis porris, paradis. Per aumento de cachacis, eu reclamis. Posuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi.\r\n\r\nQuem manda na minha terra sou euzis! Sapien in monti palavris qui num significa nadis i pareci latim. Leite de capivaris, leite de mula manquis sem cabeça. Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio.', 'Suco de cevadiss, é um leite divinis, qui tem lupuliz', 'Aenean aliquam', '2021-09-28', '2021-09-29 20:56:44'),
(4, 'Nullam a nisl', 'Mussum Ipsum, cacilds vidis litro abertis. Quem num gosta di mé, boa gentis num é. Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. Quem num gosta di mim que vai caçá sua turmis! Delegadis gente finis, bibendum egestas augue arcu ut est.\r\n\r\nMauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl. Aenean aliquam molestie leo, vitae iaculis nisl. Per aumento de cachacis, eu reclamis. Viva Forevis aptent taciti sociosqu ad litora torquent.\r\n\r\nPosuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi. Quem manda na minha terra sou euzis! Copo furadis é disculpa de bebadis, arcu quam euismod magna. Leite de capivaris, leite de mula manquis sem cabeça.', 'Quem manda na minha terra sou euzis!', 'Nullam volutpat', '2021-09-29', '2021-09-29 20:57:46'),
(5, 'Si num tem leite então bota uma pinga aí cumpadi!', 'Mussum Ipsum, cacilds vidis litro abertis. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis. Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis. Admodum accumsan disputationi eu sit. Vide electram sadipscing et per. Manduma pindureta quium dia nois paga.\r\n\r\nSi num tem leite então bota uma pinga aí cumpadi! A ordem dos tratores não altera o pão duris. Viva Forevis aptent taciti sociosqu ad litora torquent. Delegadis gente finis, bibendum egestas augue arcu ut est.\r\n\r\nCasamentiss faiz malandris se pirulitá. In elementis mé pra quem é amistosis quis leo. Aenean aliquam molestie leo, vitae iaculis nisl. Pra lá , depois divoltis porris, paradis.', 'Mussum Ipsum, cacilds vidis litro abertis.', 'Nam vulputate', '2021-09-30', '2021-09-29 20:59:10'),
(6, 'Casamentiss faiz malandris se pirulitá', 'Mussum Ipsum, cacilds vidis litro abertis. Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio. Tá deprimidis, eu conheço uma cachacis que pode alegrar sua vidis. Paisis, filhis, espiritis santis. Quem manda na minha terra sou euzis!\r\n\r\nInteressantiss quisso pudia ce receita de bolis, mais bolis eu num gostis. Diuretics paradis num copo é motivis de denguis. Cevadis im ampola pa arma uma pindureta. Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum.\r\n\r\nPer aumento de cachacis, eu reclamis. Delegadis gente finis, bibendum egestas augue arcu ut est. Viva Forevis aptent taciti sociosqu ad litora torquent. Interagi no mé, cursus quis, vehicula ac nisi.\r\n\r\nNec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis. Si num tem leite então bota uma pinga aí cumpadi! A ordem dos tratores não altera o pão duris. Manduma pindureta quium dia nois paga.\r\n\r\nSuco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis. In elementis mé pra quem é amistosis quis leo. Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo! Quem num gosta di mé, boa gentis num é.', 'Não sou faixa preta cumpadi, sou preto inteiris, inteiris', 'Delegadis gente finis', '2021-10-01', '2021-09-29 21:00:06'),
(7, 'Cacilds vidis litro abertis', 'Mussum Ipsum, cacilds vidis litro abertis. Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio. Casamentiss faiz malandris se pirulitá. Admodum accumsan disputationi eu sit. Vide electram sadipscing et per. Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose.\r\n\r\nPaisis, filhis, espiritis santis. Quem manda na minha terra sou euzis! Per aumento de cachacis, eu reclamis. Mé faiz elementum girarzis, nisi eros vermeio.\r\n\r\nNão sou faixa preta cumpadi, sou preto inteiris, inteiris. Diuretics paradis num copo é motivis de denguis. Detraxit consequat et quo num tendi nada. Pra lá , depois divoltis porris, paradis.\r\n\r\nNec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis. Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum. In elementis mé pra quem é amistosis quis leo. Si num tem leite então bota uma pinga aí cumpadi!\r\n\r\nTá deprimidis, eu conheço uma cachacis que pode alegrar sua vidis. Viva Forevis aptent taciti sociosqu ad litora torquent. Sapien in monti palavris qui num significa nadis i pareci latim. Mais vale um bebadis conhecidiss, que um alcoolatra anonimis.', 'Nullam volutpat risus nec leo commodo, ut interdum diam laoreet.', 'Nec orci', '2021-09-29', '2021-09-29 21:04:29');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticia`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
