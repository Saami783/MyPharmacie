-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 03 sep. 2022 à 20:54
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pharmacie`
--

-- --------------------------------------------------------

--
-- Structure de la table `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(128) NOT NULL,
  `ProviderKey` varchar(128) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(255) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('d98ca418-32a8-49b3-96ca-078bef2da63f', 'sami.bahij1@gmail.com', 'SAMI.BAHIJ1@GMAIL.COM', 'sami.bahij1@gmail.com', 'SAMI.BAHIJ1@GMAIL.COM', 1, 'AQAAAAEAACcQAAAAEHj3WVAcx5sdK2niGHVIh+ls2ScN90wIy0sFU9F5ijqXCQ/KjQDb6BXBZVnxGdjSMQ==', 'A7VPENZJ7GZH3GODJSUPO4TYXSNLKW64', 'ea439b63-715a-4648-b587-e81a2b86f609', '0623216330', 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(128) NOT NULL,
  `Name` varchar(128) NOT NULL,
  `Value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `aspnetusertokens`
--

INSERT INTO `aspnetusertokens` (`UserId`, `LoginProvider`, `Name`, `Value`) VALUES
('d98ca418-32a8-49b3-96ca-078bef2da63f', '[AspNetUserStore]', 'AuthenticatorKey', 'FW6TL4DH46S2FWLSMUPAN6GNBX3RGBQG');

-- --------------------------------------------------------

--
-- Structure de la table `medicaments`
--

CREATE TABLE `medicaments` (
  `CIP` varchar(255) NOT NULL,
  `NomMedicament` longtext NOT NULL,
  `SubstanceActive` longtext NOT NULL,
  `Description` longtext NOT NULL,
  `Classe` longtext NOT NULL,
  `Prix` int(11) NOT NULL,
  `Categorie` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `medicaments`
--

INSERT INTO `medicaments` (`CIP`, `NomMedicament`, `SubstanceActive`, `Description`, `Classe`, `Prix`, `Categorie`) VALUES
(' 3400932992706', 'ARKOGELULES MARRONNIER D’INDE, gélule', 'Non', '45 gélules', 'Aucune', 42, 'Plantes'),
('3400921918144', 'ARNICALME, comprimé orodisperible', 'Non', '25 comprimés', 'Aucune', 4, 'Homéopathiques'),
('3400922119656', 'ALAIRGIX RHINITE ALLERGIQUE CROMOGLICATE DE SODIUM 2%, solution pour pulvérisation nasale', 'Cromoglicate de sodium', '15 ml ', 'ANTI-ALLERGIQUE', 15, 'Allopathiques'),
('3400930210598', 'BOCEAL, solution pour pulvérisation\r\nbuccale', 'Non', '20 ml', 'Aucune', 17, 'Homéopathiques'),
('3400930503461', 'HOMEOGENE N°9 comprimé', 'Non', '60 comprimés', 'Aucune', 21, 'Homéopathiques'),
('3400932910151', 'ELUSANES ARTICHAUT, gélule', 'Non', '30 gélules', 'Aucune', 15, 'Plantes'),
('3400932968343', 'ELUSANES BOLDO, gélule', 'Non', '30 gélules', 'Aucune', 4, 'Plantes'),
('3400932968404', 'ELUSANES FUMETERRE, gélule', 'Non', '30 gélules', 'Aucune', 27, 'Plantes'),
('3400933437008', 'ARKOGELULES ESCHSCHOLTZIA, gélule', 'Non', '45 gélules', 'Aucune', 35, 'Plantes'),
('3400933528928', 'ABUFENE 400 mg, comprimé', 'Bêta-alanine', '30 comprimés', 'BOUFFEES DE CHALEUR (Ménopause)', 12, 'Allopathiques'),
('3400933625603', 'ELUSANES BARDANE, gélule', 'Non', '30 gélules', 'Aucune', 23, 'Plantes'),
('3400934025785', 'BIOMAG AGRUMES, comprimé à\r\ncroquer', 'Non', '90 comprimés', 'Aucune', 13, 'Homéopathiques'),
('3400934049279', 'ELUSANES ESCHSCHOLTZIA, gélule', 'Non', '30 gélules', 'Aucune', 9, 'Plantes'),
('3400934051289', 'ACTIVIR 5 POUR CENT, crème', 'Aciclovir', '2 g', 'TROUBLES CUTANES (Herpès)', 6, 'Allopathiques'),
('3400934635168', 'ARKOGELULES HARPAGOPHYTON, gélule', 'Non', '45 gélules', 'Aucune', 32, 'Plantes'),
('3400935175830', 'ARKOGELULE FUCUS, gélule', 'Non', '45 gélules', 'Aucune', 50, 'Plantes'),
('3400935271624', 'ANXIETUM, comprimé sublingual', 'Non', '25 comprimés', 'Aucune', 9, 'Homéopathiques'),
('3400935271792', 'AFTOSIUM, comprimé sublingual', 'Non', '25 comprimés', 'Aucune', 6, 'Homéopathiques'),
('3400935272973', 'ELUSANES FRAGON, gélule', 'Non', '30 gélules', 'Aucune', 18, 'Plantes'),
('3400935400567', 'ACICLOVIR MYLAN PHARMA 5%, crème', 'Aciclovir', 'Tube 2 g\r\n', 'TROUBLES CUTANES (Herpès)', 13, 'Allopathiques'),
('3400935400628', 'ACICLOVIR BIOGARAN CONSEIL 5%, crème', 'Aciclovir', '2 g', 'TROUBLES CUTANES (Herpès)', 8, 'Allopathiques'),
('3400935486844', 'ACICLOVIR RATIOPHARM CONSEIL 5%, crème', 'Aciclovir', '2 g', 'TROUBLES CUTANES (Herpès)', 6, 'Allopathiques'),
('3400936096356', 'POLYRHINIUM, comprimé sublingual', 'Non', '25 comprimés', 'Aucune', 14, 'Homéopathiques'),
('3400936261259', 'ARKOGELULES MATE, gélule', 'Non', '180 gélules', 'Aucune', 24, 'Plantes'),
('3400936392571', 'ACICLOVIR ARROW CONSEIL 5%, crème', 'Aciclovir', '2 g', 'TROUBLES CUTANES (Herpès)', 15, 'Allopathiques'),
('3400936392922', 'ACICLOVIR CRISTERS 5%, crème', 'Aciclovir', '2 g', 'TROUBLES CUTANES (Herpès)', 20, 'Allopathiques'),
('3400936707580', 'ALAIRGIX ALLERGIE CETIRIZINE 10 mg, comprimé à sucer sécable', 'Cétirizine', '7 comprimés', 'TROUBLES DE LA SPHERE ORL (Rhinite allergique)', 22, 'Allopathiques'),
('3400937685238', 'ADVILGEL 5 %, gel', 'Ibuprofène', '60 g', 'TROUBLES RHUMATOLOGIQUES', 19, 'Allopathiques'),
('3400937753975', 'ACICLOVIR SANDOZ CONSEIL 5 %, crème', 'Aciclovir', '2 g', 'TROUBLES CUTANES (Herpès)', 11, 'Allopathiques'),
('3400937908993', 'ACTIVOX LIERRE, pastille', 'Non', '24 pastilles', 'Aucune', 14, 'Plantes'),
('3400937920421', 'ACICLOVIR TEVA CONSEIL 5%, crème', 'Aciclovir', '2 g', 'TROUBLES CUTANES (Herpès)', 5, 'Allopathiques'),
('3400939560410', 'AVENA SATIVA TEINTURE MERE', 'Non', '60 ml', 'Aucune', 8, 'Homéopathiques'),
('3400939564722', 'ARNICA MONTANA TEINTURE MERE\r\nWELEDA, solution pour application cutanée', 'Non', '60 ml', 'Aucune', 25, 'Homéopathiques'),
('3400939794969', 'ANGIPAX, comprimé orodispersible', 'Non', '40 comprimés', 'Aucune', 14, 'Homéopathiques');

-- --------------------------------------------------------

--
-- Structure de la table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20220903174751_Initial', '6.0.8');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Index pour la table `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Index pour la table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Index pour la table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Index pour la table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Index pour la table `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Index pour la table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Index pour la table `medicaments`
--
ALTER TABLE `medicaments`
  ADD PRIMARY KEY (`CIP`);

--
-- Index pour la table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
