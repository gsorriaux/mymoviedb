-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : mysql
-- Généré le : jeu. 20 mai 2021 à 13:56
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `symfoEval`
--
CREATE DATABASE IF NOT EXISTS `symfoEval` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `symfoEval`;

-- --------------------------------------------------------

--
-- Structure de la table `actor`
--

CREATE TABLE `actor` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actor`
--

INSERT INTO `actor` (`id`, `firstname`, `lastname`, `image`) VALUES
(1, 'Han', 'Ng Chin', 'ShangTsung.jpg'),
(2, 'Lewis', 'Tan', 'lewis.jpg'),
(3, 'Christian', 'Bale', 'bale.jpg'),
(4, 'Heath', 'Ledger', 'ledger.jpg'),
(5, 'Ryan', 'Gosling', 'gosling.jpg'),
(6, 'Jared', 'Leto', 'jared.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210520073429', '2021-05-20 07:34:36', 50),
('DoctrineMigrations\\Version20210520083137', '2021-05-20 08:31:52', 839);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Fantastique'),
(3, 'Aventure'),
(4, 'Drame'),
(5, 'Crime'),
(6, 'Thriller'),
(7, 'Horreur'),
(8, 'Comédie'),
(9, 'Science-fiction');

-- --------------------------------------------------------

--
-- Structure de la table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `release_date` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `synopsis` longtext COLLATE utf8mb4_unicode_ci,
  `seen` tinyint(1) NOT NULL,
  `watch_list` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `movie`
--

INSERT INTO `movie` (`id`, `name`, `original_name`, `release_date`, `image`, `synopsis`, `seen`, `watch_list`) VALUES
(1, 'Mortal Kombat', 'Mortal Kombat', 2021, 'mortalkombat.jpg', '<div>Lorsque les plus grands champions de la Terre sont appelés à combattre les ennemis de l\'Autre Monde, ils doivent découvrir leurs véritables pouvoirs pour sauver notre planète de l\'annihilation totale.</div>', 1, 0),
(2, 'The Dark Knight : Le Chevalier noir', 'Batman: The Dark Knight', 2008, 'batman.jpg', '<div>Dans ce nouveau volet, Batman augmente les mises dans sa guerre contre le crime. Avec l’appui du lieutenant de police Jim Gordon et du procureur de Gotham, Harvey Dent, Batman vise à éradiquer le crime organisé qui pullule dans la ville. Leur association est très efficace mais elle sera bientôt bouleversée par le chaos déclenché par un criminel extraordinaire que les citoyens de Gotham connaissent sous le nom de Joker.</div>', 0, 1),
(3, 'American Psycho', 'American Psycho', 2000, 'psycho.jpg', '<div>Au coeur des années Reagan, Patrick Bateman est un pur produit de la réussite américaine. Jeune, riche, il est un de ces golden boys qui triomphent à la bourse. Seul le nec plus ultra est digne de lui et il s\'emploie à ne retrouver que des symboles qui lui renvoient une image de succès. Il accumule, avec une obsession maladive, les vêtements selects, les relations enviables. Son voeu le plus cher est de se fondre dans cette foule, de trouver sa place au milieu de ceux auxquels il s\'identifie.</div>', 0, 0),
(4, 'The Big Short : Le casse du siècle', 'The Big Short', 2015, 'bigshort.jpg', '<div>Wall Street. 2005. Profitant de l’aveuglement généralisé des grosses banques, des medias et du gouvernement, quatre outsiders anticipent l’explosion de la bulle financière et mettent au point… le casse du siècle ! Michael Burry, Steve Eisman, Greg Lippmann et Ben Hockett : des personnages visionnaires et hors du commun qui vont parier contre les banques… et tenter de rafler la mise !</div>', 1, 1),
(5, 'Blade Runner 2049', 'Blade Runner 2049', 2017, 'balde.jpg', '<div>En 2049, la société est fragilisée par les nombreuses tensions entre les humains et leurs esclaves créés par bioingénierie. L’officier K est un Blade Runner : il fait partie d’une force d’intervention d’élite chargée de trouver et d’éliminer ceux qui n’obéissent pas aux ordres des humains. Lorsqu’il découvre un secret enfoui depuis longtemps et capable de changer le monde, les plus hautes instances décident que c’est à son tour d’être traqué et éliminé. Son seul espoir est de retrouver Rick Deckard, un ancien Blade Runner qui a disparu depuis des décennies…</div>', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `movie_actor`
--

CREATE TABLE `movie_actor` (
  `movie_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `movie_actor`
--

INSERT INTO `movie_actor` (`movie_id`, `actor_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(2, 4),
(3, 3),
(3, 6),
(4, 3),
(4, 5),
(5, 5),
(5, 6);

-- --------------------------------------------------------

--
-- Structure de la table `movie_genre`
--

CREATE TABLE `movie_genre` (
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `movie_genre`
--

INSERT INTO `movie_genre` (`movie_id`, `genre_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4),
(2, 5),
(2, 6),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(4, 4),
(4, 8),
(5, 4),
(5, 9);

-- --------------------------------------------------------

--
-- Structure de la table `movie_studio`
--

CREATE TABLE `movie_studio` (
  `movie_id` int(11) NOT NULL,
  `studio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `movie_studio`
--

INSERT INTO `movie_studio` (`movie_id`, `studio_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 8),
(3, 9),
(4, 10),
(4, 11),
(5, 12),
(5, 13),
(5, 14);

-- --------------------------------------------------------

--
-- Structure de la table `studio`
--

CREATE TABLE `studio` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `studio`
--

INSERT INTO `studio` (`id`, `name`) VALUES
(1, 'New Line Cinema'),
(2, 'Atomic Monster Productions'),
(3, 'Broken Road Productions'),
(4, 'Warner Bros'),
(5, 'Legendary Pictures'),
(6, 'DC Comics'),
(7, 'Syncopy Films'),
(8, 'Muse Productions'),
(9, 'Edward R. Pressman Productions'),
(10, 'Plan B Entertainment'),
(11, 'Regency Enterprises'),
(12, 'Black Label Media'),
(13, 'Thunder Road Pictures'),
(14, 'Scott Free Productions');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `email`) VALUES
(3, 'admin', '[\"ROLE_USER\", \"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$L1QSkQ6BQfDWSzSPbx6FOA$PZOcx5zS8CwLn9IwxKRKwPi0liXnzAOPFVDY5rZdkbw', 'admin@admin.min'),
(5, 'user', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$fp7SUZwKth5/mmKUdm2v0A$i2LFuNynUnk2xFFV9405uVWlLR2gKiPnTHPr8IJgTEw', 'user@user.use');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD PRIMARY KEY (`movie_id`,`actor_id`),
  ADD KEY `IDX_3A374C658F93B6FC` (`movie_id`),
  ADD KEY `IDX_3A374C6510DAF24A` (`actor_id`);

--
-- Index pour la table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`movie_id`,`genre_id`),
  ADD KEY `IDX_FD1229648F93B6FC` (`movie_id`),
  ADD KEY `IDX_FD1229644296D31F` (`genre_id`);

--
-- Index pour la table `movie_studio`
--
ALTER TABLE `movie_studio`
  ADD PRIMARY KEY (`movie_id`,`studio_id`),
  ADD KEY `IDX_B3EC9AC38F93B6FC` (`movie_id`),
  ADD KEY `IDX_B3EC9AC3446F285F` (`studio_id`);

--
-- Index pour la table `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actor`
--
ALTER TABLE `actor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `studio`
--
ALTER TABLE `studio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD CONSTRAINT `FK_3A374C6510DAF24A` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3A374C658F93B6FC` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `FK_FD1229644296D31F` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_FD1229648F93B6FC` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `movie_studio`
--
ALTER TABLE `movie_studio`
  ADD CONSTRAINT `FK_B3EC9AC3446F285F` FOREIGN KEY (`studio_id`) REFERENCES `studio` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B3EC9AC38F93B6FC` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
