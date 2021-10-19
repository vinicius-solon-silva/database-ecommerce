-- phpMyAdmin SQL Dump 

-- version 5.1.1 

-- https://www.phpmyadmin.net/ 

-- 

-- Host: 127.0.0.1 

-- Generation Time: Aug 25, 2021 at 04:27 PM 

-- Server version: 10.4.20-MariaDB 

-- PHP Version: 8.0.9 

  

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; 

START TRANSACTION; 

SET time_zone = "+00:00"; 

  

  

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */; 

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */; 

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */; 

/*!40101 SET NAMES utf8mb4 */; 

  

-- 

-- Database: `00_ecommerce_esportes` 

-- 

  

-- -------------------------------------------------------- 

  

-- 

-- Table structure for table `administrador` 

-- 

  

CREATE TABLE `administrador` ( 

  `CPF` int(11) NOT NULL, 

  `Nome` varchar(60) NOT NULL, 

  `Sobrenome` varchar(60) NOT NULL, 

  `Data_nasc` date NOT NULL, 

  `Email` varchar(60) NOT NULL, 

  `Senha` varchar(60) NOT NULL, 

  `Tel` int(11) NOT NULL, 

  `Sexo` varchar(60) NOT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

  

-- -------------------------------------------------------- 

  

-- 

-- Table structure for table `boleto` 

-- 

  

CREATE TABLE `boleto` ( 

  `Cod_bol` int(11) NOT NULL, 

  `Cod_barra` int(11) NOT NULL, 

  `Data_vencimento` date NOT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

  

-- -------------------------------------------------------- 

  

-- 

-- Table structure for table `carrinho` 

-- 

  

CREATE TABLE `carrinho` ( 

  `Cod_prod` int(11) NOT NULL, 

  `Quantidade` int(11) NOT NULL, 

  `Cod_compra` int(11) NOT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

  

-- -------------------------------------------------------- 

  

-- 

-- Table structure for table `cartao_de_credito` 

-- 

  

CREATE TABLE `cartao_de_credito` ( 

  `Cod_cred` int(11) NOT NULL, 

  `Nome_cartao` varchar(60) NOT NULL, 

  `Num_cartao` int(11) NOT NULL, 

  `Cod_seguranca` int(11) NOT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

  

-- -------------------------------------------------------- 

  

-- 

-- Table structure for table `categoria` 

-- 

  

CREATE TABLE `categoria` ( 

  `Cod_categ` int(11) NOT NULL, 

  `Nome` varchar(60) NOT NULL, 

  `Descricao` varchar(60) NOT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

  

-- -------------------------------------------------------- 

  

-- 

-- Table structure for table `cliente` 

-- 

  

CREATE TABLE `cliente` ( 

  `CPF` int(11) NOT NULL, 

  `Nome` varchar(60) NOT NULL, 

  `Sobrenome` varchar(60) NOT NULL, 

  `No_casa` int(11) NOT NULL, 

  `Complemento` varchar(60) DEFAULT NULL, 

  `Data_nasc` date NOT NULL, 

  `CEP` int(11) NOT NULL, 

  `Email` varchar(60) NOT NULL, 

  `Senha` varchar(60) NOT NULL, 

  `Tel` int(11) NOT NULL, 

  `Sexo` varchar(60) NOT NULL, 

  `Saldo` float DEFAULT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

  

-- -------------------------------------------------------- 

  

-- 

-- Table structure for table `compra` 

-- 

  

CREATE TABLE `compra` ( 

  `Cod_compra` int(11) NOT NULL, 

  `Data_compra` date NOT NULL, 

  `Valor_total` float NOT NULL, 

  `Cod_pag` int(11) NOT NULL, 

  `Cod_rast` int(11) NOT NULL, 

  `CPF_cliente` int(11) NOT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

  

-- -------------------------------------------------------- 

  

-- 

-- Table structure for table `garantia` 

-- 

  

CREATE TABLE `garantia` ( 

  `Cod_gar` int(11) NOT NULL, 

  `Descricao` varchar(60) NOT NULL, 

  `Duracao` varchar(60) NOT NULL, 

  `Valor` float NOT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

  

-- -------------------------------------------------------- 

  

-- 

-- Table structure for table `pagamento` 

-- 

  

CREATE TABLE `pagamento` ( 

  `Cod_pag` int(11) NOT NULL, 

  `Metodo` varchar(60) NOT NULL, 

  `CNPJ_banco` int(11) NOT NULL, 

  `Total_pag` float NOT NULL, 

  `Cod_bol` int(11) DEFAULT NULL, 

  `Cod_cred` int(11) DEFAULT NULL, 

  `Cod_pix` int(11) DEFAULT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

  

-- -------------------------------------------------------- 

  

-- 

-- Table structure for table `pix` 

-- 

  

CREATE TABLE `pix` ( 

  `Cod_pix` int(11) NOT NULL, 

  `Chave` varchar(60) NOT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

  

-- -------------------------------------------------------- 

  

-- 

-- Table structure for table `produto` 

-- 

  

CREATE TABLE `produto` ( 

  `Cod_prod` int(11) NOT NULL, 

  `Nome` varchar(60) NOT NULL, 

  `Descricao` varchar(60) NOT NULL, 

  `Cor` varchar(60) DEFAULT NULL, 

  `Tamanho` varchar(60) DEFAULT NULL, 

  `Cod_categ` int(11) NOT NULL, 

  `Preco` float NOT NULL, 

  `Cod_gar` int(11) NOT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

  

-- -------------------------------------------------------- 

  

-- 

-- Table structure for table `rastreio_compra` 

-- 

  

CREATE TABLE `rastreio_compra` ( 

  `Cod_rast` int(11) NOT NULL, 

  `CNPJ_transp` int(11) NOT NULL, 

  `Estado_do_rastreio` varchar(60) NOT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

  

-- -------------------------------------------------------- 

  

-- 

-- Table structure for table `sist_bancario` 

-- 

  

CREATE TABLE `sist_bancario` ( 

  `CNPJ` int(11) NOT NULL, 

  `Nome` varchar(60) NOT NULL, 

  `CPF_Admin` int(11) NOT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

  

-- -------------------------------------------------------- 

  

-- 

-- Table structure for table `transportadora` 

-- 

  

CREATE TABLE `transportadora` ( 

  `CNPJ` int(11) NOT NULL, 

  `Nome` varchar(60) NOT NULL, 

  `Descricao` varchar(60) NOT NULL, 

  `CPF_Admin` int(11) NOT NULL 

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 

  

-- 

-- Indexes for dumped tables 

-- 

  

-- 

-- Indexes for table `administrador` 

-- 

ALTER TABLE `administrador` 

  ADD PRIMARY KEY (`CPF`); 

  

-- 

-- Indexes for table `boleto` 

-- 

ALTER TABLE `boleto` 

  ADD PRIMARY KEY (`Cod_bol`); 

  

-- 

-- Indexes for table `carrinho` 

-- 

ALTER TABLE `carrinho` 

  ADD KEY `FK_prod` (`Cod_prod`), 

  ADD KEY `FK_compra` (`Cod_compra`); 

  

-- 

-- Indexes for table `cartao_de_credito` 

-- 

ALTER TABLE `cartao_de_credito` 

  ADD PRIMARY KEY (`Cod_cred`); 

  

-- 

-- Indexes for table `categoria` 

-- 

ALTER TABLE `categoria` 

  ADD PRIMARY KEY (`Cod_categ`); 

  

-- 

-- Indexes for table `cliente` 

-- 

ALTER TABLE `cliente` 

  ADD PRIMARY KEY (`CPF`); 

  

-- 

-- Indexes for table `compra` 

-- 

ALTER TABLE `compra` 

  ADD PRIMARY KEY (`Cod_compra`), 

  ADD KEY `FK_pag` (`Cod_pag`), 

  ADD KEY `FK_rastreio` (`Cod_rast`), 

  ADD KEY `FK_cliente` (`CPF_cliente`); 

  

-- 

-- Indexes for table `garantia` 

-- 

ALTER TABLE `garantia` 

  ADD PRIMARY KEY (`Cod_gar`); 

  

-- 

-- Indexes for table `pagamento` 

-- 

ALTER TABLE `pagamento` 

  ADD PRIMARY KEY (`Cod_pag`), 

  ADD KEY `FK_banco` (`CNPJ_banco`), 

  ADD KEY `FK_boleto` (`Cod_bol`), 

  ADD KEY `FK_credito` (`Cod_cred`), 

  ADD KEY `FK_pix` (`Cod_pix`); 

  

-- 

-- Indexes for table `pix` 

-- 

ALTER TABLE `pix` 

  ADD PRIMARY KEY (`Cod_pix`); 

  

-- 

-- Indexes for table `produto` 

-- 

ALTER TABLE `produto` 

  ADD PRIMARY KEY (`Cod_prod`), 

  ADD KEY `FK_categoria` (`Cod_categ`), 

  ADD KEY `FK_farantia` (`Cod_gar`); 

  

-- 

-- Indexes for table `rastreio_compra` 

-- 

ALTER TABLE `rastreio_compra` 

  ADD PRIMARY KEY (`Cod_rast`), 

  ADD KEY `FK_transp` (`CNPJ_transp`); 

  

-- 

-- Indexes for table `sist_bancario` 

-- 

ALTER TABLE `sist_bancario` 

  ADD PRIMARY KEY (`CNPJ`), 

  ADD KEY `FK_admin` (`CPF_Admin`); 

  

-- 

-- Indexes for table `transportadora` 

-- 

ALTER TABLE `transportadora` 

  ADD PRIMARY KEY (`CNPJ`), 

  ADD KEY `FK_adm` (`CPF_Admin`); 

  

-- 

-- Constraints for dumped tables 

-- 

  

-- 

-- Constraints for table `carrinho` 

-- 

ALTER TABLE `carrinho` 

  ADD CONSTRAINT `FK_compra` FOREIGN KEY (`Cod_compra`) REFERENCES `compra` (`Cod_compra`), 

  ADD CONSTRAINT `FK_prod` FOREIGN KEY (`Cod_prod`) REFERENCES `produto` (`Cod_prod`); 

  

-- 

-- Constraints for table `compra` 

-- 

ALTER TABLE `compra` 

  ADD CONSTRAINT `FK_cliente` FOREIGN KEY (`CPF_cliente`) REFERENCES `cliente` (`CPF`), 

  ADD CONSTRAINT `FK_pag` FOREIGN KEY (`Cod_pag`) REFERENCES `pagamento` (`Cod_pag`), 

  ADD CONSTRAINT `FK_rastreio` FOREIGN KEY (`Cod_rast`) REFERENCES `rastreio_compra` (`Cod_rast`); 

  

-- 

-- Constraints for table `pagamento` 

-- 

ALTER TABLE `pagamento` 

  ADD CONSTRAINT `FK_banco` FOREIGN KEY (`CNPJ_banco`) REFERENCES `sist_bancario` (`CNPJ`), 

  ADD CONSTRAINT `FK_boleto` FOREIGN KEY (`Cod_bol`) REFERENCES `boleto` (`Cod_bol`), 

  ADD CONSTRAINT `FK_credito` FOREIGN KEY (`Cod_cred`) REFERENCES `cartao_de_credito` (`Cod_cred`), 

  ADD CONSTRAINT `FK_pix` FOREIGN KEY (`Cod_pix`) REFERENCES `pix` (`Cod_pix`); 

  

-- 

-- Constraints for table `produto` 

-- 

ALTER TABLE `produto` 

  ADD CONSTRAINT `FK_categoria` FOREIGN KEY (`Cod_categ`) REFERENCES `categoria` (`Cod_categ`), 

  ADD CONSTRAINT `FK_farantia` FOREIGN KEY (`Cod_gar`) REFERENCES `garantia` (`Cod_gar`); 

  

-- 

-- Constraints for table `rastreio_compra` 

-- 

ALTER TABLE `rastreio_compra` 

  ADD CONSTRAINT `FK_transp` FOREIGN KEY (`CNPJ_transp`) REFERENCES `transportadora` (`CNPJ`); 

  

-- 

-- Constraints for table `sist_bancario` 

-- 

ALTER TABLE `sist_bancario` 

  ADD CONSTRAINT `FK_admin` FOREIGN KEY (`CPF_Admin`) REFERENCES `administrador` (`CPF`); 

  

-- 

-- Constraints for table `transportadora` 

-- 

ALTER TABLE `transportadora` 

  ADD CONSTRAINT `FK_adm` FOREIGN KEY (`CPF_Admin`) REFERENCES `administrador` (`CPF`); 

COMMIT; 

  

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */; 

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */; 

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */; 