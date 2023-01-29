-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 12 Janvier 2023 à 10:28
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `TP BD`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `num_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(20) NOT NULL,
  `det_reference` date NOT NULL,
  `cat_remise` int(11) NOT NULL,
  PRIMARY KEY (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`num_categorie`, `nom_categorie`, `det_reference`, `cat_remise`) VALUES
(70, 'telephonie', '2021-06-14', 100),
(80, 'telephonie', '2021-04-14', 50);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `Client_id` int(11) NOT NULL,
  `Client_civilite` varchar(20) NOT NULL,
  `Client_nom` varchar(20) NOT NULL,
  `Client_prenom` varchar(20) NOT NULL,
  `Client_dep` varchar(20) NOT NULL,
  `Client_ville` varchar(20) NOT NULL,
  PRIMARY KEY (`Client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`Client_id`, `Client_civilite`, `Client_nom`, `Client_prenom`, `Client_dep`, `Client_ville`) VALUES
(1568, 'Homme', 'king', 'pierre', '94', 'creteil'),
(2222, 'Femme', 'smith', 'jorja', '75', 'paris');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `com_num` varchar(20) NOT NULL,
  `com_client` int(11) NOT NULL,
  `com_date` date NOT NULL,
  `com_montant` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `produit_ref` int(11) NOT NULL,
  PRIMARY KEY (`com_num`),
  KEY `id_client` (`id_client`,`produit_ref`),
  KEY `produit_ref` (`produit_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`com_num`, `com_client`, `com_date`, `com_montant`, `id_client`, `produit_ref`) VALUES
('333', 1, '2021-10-15', 900, 2222, 789654),
('666', 2, '2021-09-14', 1400, 1568, 123456);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `Produit_ref` int(11) NOT NULL,
  `Produit_nom` varchar(20) NOT NULL,
  `Produit_prix` int(11) NOT NULL,
  `Produit_poids` int(11) NOT NULL,
  `Produit_vue` int(11) NOT NULL,
  `Produit_stock` int(11) NOT NULL,
  `Produit_code` int(11) NOT NULL,
  `num_categorie` int(11) NOT NULL,
  PRIMARY KEY (`Produit_ref`),
  KEY `num_categorie` (`num_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`Produit_ref`, `Produit_nom`, `Produit_prix`, `Produit_poids`, `Produit_vue`, `Produit_stock`, `Produit_code`, `num_categorie`) VALUES
(123456, 'iphone 14', 1400, 240, 700, 150, 3, 70),
(789654, 'samsung note 8', 900, 200, 500, 230, 2, 80);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_2` FOREIGN KEY (`produit_ref`) REFERENCES `produits` (`Produit_ref`),
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`Client_id`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`num_categorie`) REFERENCES `categories` (`num_categorie`);
