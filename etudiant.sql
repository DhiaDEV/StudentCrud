-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 02 oct. 2023 à 00:15
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `etudiant`
--

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`id`, `libelle`, `created_at`, `updated_at`) VALUES
(1, '6ème', NULL, NULL),
(2, '5ème', NULL, NULL),
(3, '4ème', NULL, NULL),
(4, '3ème', NULL, NULL),
(5, 'Seconde', NULL, NULL),
(6, 'première', NULL, NULL),
(7, 'Terminale', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `classe_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `prenom`, `classe_id`, `created_at`, `updated_at`) VALUES
(1, 'Leffler', 'Zachary', 7, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(2, 'Kassulke', 'Lavon', 7, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(4, 'Kling', 'Justine', 3, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(5, 'Cole', 'Horacio', 4, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(6, 'Thiel', 'Chaz', 2, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(7, 'Homenick', 'Miles', 5, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(8, 'Spencer', 'Norris', 3, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(9, 'Quigley', 'Brock', 6, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(10, 'Baumbach', 'Kaia', 4, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(11, 'Haley', 'Ima', 6, '2023-10-01 13:06:35', '2023-10-01 21:09:44'),
(12, 'Krajcik', 'Stuart', 3, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(13, 'Torp', 'Davonte', 1, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(14, 'Swift', 'Eli', 1, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(15, 'Jacobi', 'Joany', 6, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(16, 'Watsica', 'Deanna', 6, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(17, 'Volkman', 'Savanah', 3, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(18, 'Schowalter', 'Gus', 5, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(19, 'Zulauf', 'Rashawn', 6, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(20, 'Reynolds', 'Gordon', 4, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(21, 'Kshlerin', 'Pamela', 3, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(22, 'Wehner', 'Makayla', 4, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(23, 'Roberts', 'Ephraim', 7, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(24, 'Kuhlman', 'Keira', 7, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(25, 'Rau', 'Oswald', 6, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(27, 'Beatty', 'Cayla', 5, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(28, 'Walsh', 'Felix', 3, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(29, 'Kreiger', 'Frederique', 7, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(30, 'Torphy', 'Tyra', 4, '2023-10-01 13:06:35', '2023-10-01 13:06:35'),
(31, 'Dhia', 'Eddineddddddddddddd', 7, '2023-10-01 19:56:39', '2023-10-01 21:09:28'),
(32, 'Hamdi', 'ss', 6, '2023-10-01 20:00:45', '2023-10-01 20:00:45'),
(33, 'Sbei', 'ss', 5, '2023-10-01 20:01:42', '2023-10-01 20:01:42'),
(34, 'Minima laudantium i', 'Quasi aut ullamco ei', 4, '2023-10-01 20:03:24', '2023-10-01 20:03:24');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_01_124629_create_classes_table', 1),
(6, '2023_10_01_124756_create_etudiants_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `etudiants_classe_id_foreign` (`classe_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `etudiants_classe_id_foreign` FOREIGN KEY (`classe_id`) REFERENCES `classes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
