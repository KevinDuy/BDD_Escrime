-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  sqletud.u-pem.fr
-- Généré le :  Lun 18 Décembre 2017 à 19:15
-- Version du serveur :  5.5.58-0+deb8u1-log
-- Version de PHP :  5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `rapruzze_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `Adherent`
--

CREATE TABLE `Adherent` (
  `numAd` int(11) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `prenom` varchar(25) DEFAULT NULL,
  `dateNaissance` date DEFAULT NULL,
  `sexe` enum('f','h') DEFAULT NULL,
  `dateVisiteMed` date DEFAULT NULL,
  `nomMedecin` varchar(25) DEFAULT NULL,
  `ancienNumLicence` char(25) DEFAULT NULL,
  `cotisation` decimal(25,0) DEFAULT NULL,
  `datePaiementCotisation` date DEFAULT NULL,
  `codeClub` int(11) DEFAULT NULL,
  `dateDebutValidite` date DEFAULT NULL,
  `dateFinValidite` date DEFAULT NULL,
  `idlicense` int(11) DEFAULT NULL,
  `idCat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Adherent`
--

INSERT INTO `Adherent` (`numAd`, `nom`, `prenom`, `dateNaissance`, `sexe`, `dateVisiteMed`, `nomMedecin`, `ancienNumLicence`, `cotisation`, `datePaiementCotisation`, `codeClub`, `dateDebutValidite`, `dateFinValidite`, `idlicense`, `idCat`) VALUES
(1, 'Do', 'Kévin', '1999-12-20', 'h', '2016-12-06', 'Arthur', NULL, 30, '2017-06-01', 1, '2017-07-01', '2018-07-01', 1, 6),
(2, 'Apruzzese', 'Rémi', '1970-04-05', 'h', '2017-01-01', 'Baubaux', '2', 10, '2017-12-14', 1, '2017-12-15', '2018-12-15', 5, 8),
(3, 'Arthur', 'Sophie', '2089-02-08', 'f', '2015-09-12', 'Arthur', NULL, 5, '2017-07-05', 2, '2017-09-05', '2018-09-05', 4, 7),
(4, 'Durand', 'David', '1960-10-10', 'h', '2016-01-16', 'Pasteur', '3', 0, '2017-05-10', 2, '2017-03-10', '2018-06-10', 3, 8),
(35, 'Chen', 'Christian', '2011-02-16', 'h', '2017-12-04', 'Pasteur', NULL, 50, '2017-10-03', 3, '2017-12-02', '2018-12-20', 1, 1),
(36, 'Hils', 'Alice', '2010-06-14', 'f', '2017-10-10', 'Pascal', NULL, 0, '2017-11-13', 6, '2017-12-06', '2018-05-11', 4, 2),
(37, 'Jonshon', 'Vincent', '2008-01-16', 'h', '2017-07-04', 'Pasteur', '5', 20, '2017-10-16', 4, '2017-10-16', '2017-11-16', 5, 3),
(38, 'Guy', 'Estelle', '2006-05-16', 'f', '2017-09-16', 'Arthur', '4', 10, '2017-02-15', 5, '2018-02-15', '2019-02-15', 5, 4),
(39, 'Garry', 'Mélissa', '2004-02-02', 'f', '2017-12-01', 'Ouhar', NULL, 50, '2017-12-02', 6, '2017-12-03', '2018-12-02', 5, 5),
(40, 'Sullivan', 'Mélissandre', '2000-09-28', 'f', '2017-10-24', 'Patricia', NULL, 0, '2017-12-03', 3, '2017-12-05', '2019-12-05', 1, 6),
(41, 'Merle', 'Mathieu', '1997-07-07', 'h', '2017-04-17', 'Ouhar', NULL, 10, '2017-10-05', 2, '2017-12-05', '2020-12-05', 3, 7),
(42, 'Feeder', 'Christophe', '1990-03-03', 'h', '2017-03-06', 'Dajano', NULL, 30, '2017-12-04', 1, '2017-12-05', '2017-12-06', 2, 7),
(43, 'Petrof', 'Kévin', '1980-04-04', 'h', '2017-10-21', 'Mickael', '4', 100, '2016-05-17', 6, '2016-08-17', '2018-05-17', 4, 7),
(44, 'Tucker', 'Adrianne', '1975-07-13', 'f', '2016-05-21', 'Dajano', '2', 10, '2017-04-08', 5, '2017-05-08', '2020-05-08', 3, 8);

-- --------------------------------------------------------

--
-- Structure de la table `arbitre`
--

CREATE TABLE `arbitre` (
  `idComp` int(11) NOT NULL,
  `numAd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `arbitre`
--

INSERT INTO `arbitre` (`idComp`, `numAd`) VALUES
(1, 2),
(2, 2),
(5, 2),
(6, 2),
(9, 2),
(11, 2),
(3, 42),
(5, 42),
(8, 42),
(11, 42),
(13, 42),
(1, 43),
(4, 43),
(10, 43),
(14, 43),
(3, 44),
(7, 44),
(9, 44),
(12, 44);

-- --------------------------------------------------------

--
-- Structure de la table `Arme`
--

CREATE TABLE `Arme` (
  `idArme` int(11) NOT NULL,
  `nomArme` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Arme`
--

INSERT INTO `Arme` (`idArme`, `nomArme`) VALUES
(1, 'épée'),
(2, 'fleuret'),
(3, 'sabre');

-- --------------------------------------------------------

--
-- Structure de la table `Categorie`
--

CREATE TABLE `Categorie` (
  `idCat` int(11) NOT NULL,
  `nomCat` varchar(25) DEFAULT NULL,
  `tailleLame` tinyint(4) DEFAULT NULL,
  `ageMin` tinyint(4) DEFAULT NULL,
  `ageMax` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Categorie`
--

INSERT INTO `Categorie` (`idCat`, `nomCat`, `tailleLame`, `ageMin`, `ageMax`) VALUES
(1, 'Poussin', 0, 6, 7),
(2, 'Pupille', 0, 8, 9),
(3, 'Benjamin', 2, 10, 11),
(4, 'Minime', 5, 12, 13),
(5, 'Cadet', 5, 14, 16),
(6, 'Junior', 5, 17, 19),
(7, 'Senior', 5, 20, 39),
(8, 'Veteran', 5, 40, 100);

-- --------------------------------------------------------

--
-- Structure de la table `Club`
--

CREATE TABLE `Club` (
  `codeClub` int(11) NOT NULL,
  `nomClub` varchar(25) DEFAULT NULL,
  `adresseClub` varchar(25) DEFAULT NULL,
  `codePostal` char(10) DEFAULT NULL,
  `ville` varchar(25) DEFAULT NULL,
  `remuhoraire` decimal(25,0) DEFAULT NULL,
  `prixCotisation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Club`
--

INSERT INTO `Club` (`codeClub`, `nomClub`, `adresseClub`, `codePostal`, `ville`, `remuhoraire`, `prixCotisation`) VALUES
(1, 'ESIEE', '32 avenue des tournesols', '77420', 'Marne-la-Vallee', 12, 30),
(2, 'UPEM', '3 Rue de la gare', '77340', 'Pontault-Combault', 10, 5),
(3, 'ADE', '2 rue des cailloux', '75000', 'Paris', 11, 50),
(4, 'Gimp', '42 avenue de la vérité', '32809', 'Nom-o-pif', 15, 20),
(5, 'Plouf', '20 chemin du port', '12345', 'Marseille', 9, 10),
(6, 'Pognon', '66 rue du diable', '66666', 'Ozeille', 20, 100);

-- --------------------------------------------------------

--
-- Structure de la table `Competition`
--

CREATE TABLE `Competition` (
  `idComp` int(11) NOT NULL,
  `dateComp` date DEFAULT NULL,
  `lieuComp` varchar(25) DEFAULT NULL,
  `codeClub` int(11) DEFAULT NULL,
  `idArme` int(11) DEFAULT NULL,
  `idCat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Competition`
--

INSERT INTO `Competition` (`idComp`, `dateComp`, `lieuComp`, `codeClub`, `idArme`, `idCat`) VALUES
(1, '2017-12-15', '45 rue des coquelicots', 1, 3, 8),
(2, '2018-03-21', '60 rue des violettes', 2, 3, 6),
(3, '2020-01-01', '1 avenue du fric', 6, 1, 2),
(4, '2020-01-01', '2 rue des papys', 6, 2, 1),
(5, '2017-12-16', '1 rue du pif', 2, 1, 1),
(6, '2017-03-13', '2 rue du pif', 5, 3, 1),
(7, '2016-05-11', '3 place de la gare', 1, 1, 2),
(8, '2019-04-04', '25 rue des tilleuls', 5, 2, 3),
(9, '2018-03-08', '8 avenue de la république', 6, 1, 4),
(10, '2017-10-24', '20 rue desbidulles', 6, 3, 6),
(11, '2015-09-09', '30 chemin du truc', 2, 2, 7),
(12, '2017-12-25', '4 rue des choses', 2, 2, 8),
(13, '2017-08-08', '56 avenue de la voie', 5, 3, 8),
(14, '2018-06-14', '7 rue des bubulles', 6, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `Licence`
--

CREATE TABLE `Licence` (
  `idlicense` int(11) NOT NULL,
  `tarifBase` decimal(25,0) DEFAULT NULL,
  `tarifEnseignant` decimal(25,0) DEFAULT NULL,
  `idArme` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Licence`
--

INSERT INTO `Licence` (`idlicense`, `tarifBase`, `tarifEnseignant`, `idArme`) VALUES
(1, 30, 20, 1),
(2, 50, 35, 2),
(3, 100, 30, 2),
(4, 60, 70, 3),
(5, 40, 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `MaitreDarmes`
--

CREATE TABLE `MaitreDarmes` (
  `brevet` enum('BE1','BE2') DEFAULT NULL,
  `numAd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `MaitreDarmes`
--

INSERT INTO `MaitreDarmes` (`brevet`, `numAd`) VALUES
('BE1', 2),
('BE2', 42),
('BE2', 43),
('BE1', 44);

-- --------------------------------------------------------

--
-- Structure de la table `travaille`
--

CREATE TABLE `travaille` (
  `nbrheure` tinyint(4) DEFAULT NULL,
  `codeClub` int(11) NOT NULL,
  `numAd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `travaille`
--

INSERT INTO `travaille` (`nbrheure`, `codeClub`, `numAd`) VALUES
(10, 1, 2),
(22, 1, 43),
(35, 2, 2),
(20, 3, 2),
(50, 4, 43),
(10, 5, 44),
(5, 6, 2),
(47, 6, 44);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Adherent`
--
ALTER TABLE `Adherent`
  ADD PRIMARY KEY (`numAd`),
  ADD KEY `FK_Adherent_codeClub` (`codeClub`),
  ADD KEY `FK_Adherent_idlicense` (`idlicense`),
  ADD KEY `FK_Adherent_idCat` (`idCat`);

--
-- Index pour la table `arbitre`
--
ALTER TABLE `arbitre`
  ADD PRIMARY KEY (`idComp`,`numAd`),
  ADD KEY `FK_arbitre_numAd` (`numAd`);

--
-- Index pour la table `Arme`
--
ALTER TABLE `Arme`
  ADD PRIMARY KEY (`idArme`);

--
-- Index pour la table `Categorie`
--
ALTER TABLE `Categorie`
  ADD PRIMARY KEY (`idCat`);

--
-- Index pour la table `Club`
--
ALTER TABLE `Club`
  ADD PRIMARY KEY (`codeClub`);

--
-- Index pour la table `Competition`
--
ALTER TABLE `Competition`
  ADD PRIMARY KEY (`idComp`),
  ADD KEY `FK_Competition_codeClub` (`codeClub`),
  ADD KEY `FK_Competition_idArme` (`idArme`),
  ADD KEY `FK_Competition_idCat` (`idCat`);

--
-- Index pour la table `Licence`
--
ALTER TABLE `Licence`
  ADD PRIMARY KEY (`idlicense`),
  ADD KEY `FK_License_idArme` (`idArme`);

--
-- Index pour la table `MaitreDarmes`
--
ALTER TABLE `MaitreDarmes`
  ADD PRIMARY KEY (`numAd`);

--
-- Index pour la table `travaille`
--
ALTER TABLE `travaille`
  ADD PRIMARY KEY (`codeClub`,`numAd`),
  ADD KEY `FK_Travaille_numAd` (`numAd`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Adherent`
--
ALTER TABLE `Adherent`
  MODIFY `numAd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT pour la table `Arme`
--
ALTER TABLE `Arme`
  MODIFY `idArme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `Categorie`
--
ALTER TABLE `Categorie`
  MODIFY `idCat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `Club`
--
ALTER TABLE `Club`
  MODIFY `codeClub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `Competition`
--
ALTER TABLE `Competition`
  MODIFY `idComp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `Licence`
--
ALTER TABLE `Licence`
  MODIFY `idlicense` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Adherent`
--
ALTER TABLE `Adherent`
  ADD CONSTRAINT `FK_Adherent_codeClub` FOREIGN KEY (`codeClub`) REFERENCES `Club` (`codeClub`),
  ADD CONSTRAINT `FK_Adherent_idlicense` FOREIGN KEY (`idlicense`) REFERENCES `Licence` (`idlicense`);

--
-- Contraintes pour la table `arbitre`
--
ALTER TABLE `arbitre`
  ADD CONSTRAINT `FK_arbitre_numAd` FOREIGN KEY (`numAd`) REFERENCES `Adherent` (`numAd`),
  ADD CONSTRAINT `FK_arbitre_idComp` FOREIGN KEY (`idComp`) REFERENCES `Competition` (`idComp`);

--
-- Contraintes pour la table `Competition`
--
ALTER TABLE `Competition`
  ADD CONSTRAINT `FK_Competition_codeClub` FOREIGN KEY (`codeClub`) REFERENCES `Club` (`codeClub`),
  ADD CONSTRAINT `FK_Competition_idArme` FOREIGN KEY (`idArme`) REFERENCES `Arme` (`idArme`),
  ADD CONSTRAINT `FK_Competition_idCat` FOREIGN KEY (`idCat`) REFERENCES `Categorie` (`idCat`);

--
-- Contraintes pour la table `Licence`
--
ALTER TABLE `Licence`
  ADD CONSTRAINT `FK_License_idArme` FOREIGN KEY (`idArme`) REFERENCES `Arme` (`idArme`);

--
-- Contraintes pour la table `MaitreDarmes`
--
ALTER TABLE `MaitreDarmes`
  ADD CONSTRAINT `FK_MaitreDarmes_numAd` FOREIGN KEY (`numAd`) REFERENCES `Adherent` (`numAd`);

--
-- Contraintes pour la table `travaille`
--
ALTER TABLE `travaille`
  ADD CONSTRAINT `FK_Travaille_numAd` FOREIGN KEY (`numAd`) REFERENCES `Adherent` (`numAd`),
  ADD CONSTRAINT `FK_Travaille_codeClub` FOREIGN KEY (`codeClub`) REFERENCES `Club` (`codeClub`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
