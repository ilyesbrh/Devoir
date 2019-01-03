-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 03 jan. 2019 à 20:22
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `centredeloisir`
--

-- --------------------------------------------------------

--
-- Structure de la table `enfants`
--

DROP TABLE IF EXISTS `enfants`;
CREATE TABLE IF NOT EXISTS `enfants` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `age` int(2) NOT NULL,
  `prenom_pere` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `parents`
--

DROP TABLE IF EXISTS `parents`;
CREATE TABLE IF NOT EXISTS `parents` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `login` varchar(6) NOT NULL,
  `pass` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `parents`
--

INSERT INTO `parents` (`id`, `prenom`, `nom`, `login`, `pass`) VALUES
(1, 'Sara', 'BOUHMADOU', 'sbouh', 'huobs'),
(2, 'Mickael', 'RAPOSJA', 'mrapo', 'oparm'),
(3, 'Mathilde', 'JEULAND', 'mjeul', 'luejm'),
(4, 'GUILIA', 'RUSPANTINI', 'grusp', 'psurg');

-- --------------------------------------------------------

--
-- Structure de la table `planning`
--

DROP TABLE IF EXISTS `planning`;
CREATE TABLE IF NOT EXISTS `planning` (
  `Mercredis` date NOT NULL,
  `Horaire` varchar(2) NOT NULL,
  `Activites` varchar(50) NOT NULL,
  `ID` int(3) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `planning`
--

INSERT INTO `planning` (`Mercredis`, `Horaire`, `Activites`, `ID`) VALUES
('2019-01-02', 'MA', 'Piscine', 1),
('2019-01-02', 'AM', 'Dessin', 2),
('2019-01-09', 'MA', 'Theatre', 3),
('2019-01-09', 'AM', 'Cirque', 4),
('2019-01-16', 'MA', 'Peinture', 5),
('2019-01-16', 'AM', 'Gymnastique', 6),
('2019-01-23', 'MA', 'Jardinage', 7),
('2019-01-23', 'AM', 'Patinage', 8),
('2019-01-30', 'MA', 'Lecture', 9),
('2019-01-30', 'AM', 'Randonnée', 10),
('2019-02-06', 'MA', 'Musique', 11),
('2019-02-06', 'AM', 'Footing', 12),
('2019-02-13', 'MA', 'Cuisine', 13),
('2019-02-13', 'AM', 'maths', 14),
('2019-02-20', 'MA', 'Ecriture', 15),
('2019-02-20', 'AM', 'Coloriage', 16),
('2019-02-27', 'MA', 'Graphisme', 17),
('2019-02-27', 'AM', 'Zoo', 18);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
