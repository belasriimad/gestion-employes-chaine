-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 11 sep. 2019 à 13:05
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `employes`
--

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

CREATE TABLE `employes` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `matricule` int(11) NOT NULL,
  `depart` varchar(100) NOT NULL,
  `poste` varchar(100) NOT NULL,
  `date_emb` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `statut` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Déchargement des données de la table `employes`
--

INSERT INTO `employes` (`id`, `nom`, `prenom`, `matricule`, `depart`, `poste`, `date_emb`, `statut`) VALUES
(2, 'alami', 'kamal', 55667787, 'Mécanique', 'Mécanicien', '2019-08-30 00:00:00', 1),
(5, 'akram', 'halima', 77889900, 'Administration', 'Sécrétaire', '0000-00-00 00:00:00', 1),
(10, 'alami', 'bachir', 66778878, 'Informatique', 'Technicien', '2019-10-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`) VALUES
(1, 'samadi', 'samadi123', '$2y$12$WewUbDxArNso2mvh3H8mYuQ7LdjoHxFkiO4ehryD1.kendssbszwi'),
(2, 'imad', 'imadtazi', '$2y$12$YAHqmX.UC4U0GiNBhxz21u.FoovLLkBXZwb8QAPshFpKI3t3LdIHe'),
(3, 'karim', 'karim123', '$2y$12$2SRH6Z8jXcGvg9OWDDUqCOEVxOyBEYzvfMuINojczZUBtK0mkniIe'),
(4, 'halima samadi', 'halima123', '$2y$12$7h1kv.e7Vf7zLIc2sCA8Z.A/MPG042UX6MPSR9si/ZBgV6CIrBRni'),
(5, 'samadi', 'samadi', '$2y$12$xm2PLbsY95ZarYDHSYkHdOpbBL73DTiGaTEpQiygZtFz26TojpxQa');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `employes`
--
ALTER TABLE `employes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
