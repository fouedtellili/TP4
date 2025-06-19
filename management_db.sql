-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 19 juin 2025 à 18:05
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `management_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `asset_file`
--

CREATE TABLE `asset_file` (
  `id` bigint(20) NOT NULL,
  `asset_type` enum('APPLICATION','COMPANY_IMAGE','HARDWARE','INFORMATION','POEPLE','SERVERS','SUPPLIERS') DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `asset_file`
--

INSERT INTO `asset_file` (`id`, `asset_type`, `file_name`, `file_url`) VALUES
(1, 'SERVERS', 'Server_Config_1 (2).txt', '/uploads/servers/Server_Config_1 (2).txt'),
(2, 'HARDWARE', 'Hardware_Config_1 (2).txt', '/uploads/hardware/Hardware_Config_1 (2).txt'),
(3, 'POEPLE', 'People_Config_1.txt', '/uploads/poeple/People_Config_1.txt'),
(4, 'INFORMATION', 'Information_Config_1.txt', '/uploads/information/Information_Config_1.txt'),
(5, 'INFORMATION', 'Application_Config_1.txt', '/uploads/information/Application_Config_1.txt'),
(6, 'APPLICATION', 'Application_Config_1.txt', '/uploads/application/Application_Config_1.txt'),
(7, 'SUPPLIERS', 'Suppliers_Config_1.txt', '/uploads/suppliers/Suppliers_Config_1.txt'),
(8, 'COMPANY_IMAGE', 'Company_Config_1.txt', '/uploads/company_image/Company_Config_1.txt'),
(9, 'SUPPLIERS', 'Hardware_Config_1.txt', '/uploads/suppliers/Hardware_Config_1.txt'),
(10, 'SUPPLIERS', 'Copie de Suppliers asset inventory & Risk Register.xlsx', '/uploads/suppliers/Copie de Suppliers asset inventory & Risk Register.xlsx'),
(11, 'SERVERS', 'Servers Assets & Risks Register.xlsx', '/uploads/servers/Servers Assets & Risks Register.xlsx'),
(12, 'APPLICATION', 'Application Risk Register.xlsx', '/uploads/application/Application Risk Register.xlsx'),
(13, 'COMPANY_IMAGE', 'Company Image and reputation Asset Regist.xlsx', '/uploads/company_image/Company Image and reputation Asset Regist.xlsx'),
(14, 'POEPLE', 'People Asset and Risk Register.xlsx', '/uploads/poeple/People Asset and Risk Register.xlsx'),
(15, 'INFORMATION', 'Information Assets Register.xlsx', '/uploads/information/Information Assets Register.xlsx'),
(16, 'HARDWARE', 'Hardware Assets inventory COFMD.xlsx', '/uploads/hardware/Hardware Assets inventory COFMD.xlsx'),
(17, 'SERVERS', 'RiskTreatmentPlan.xlsx', '/uploads/servers/RiskTreatmentPlan.xlsx');

-- --------------------------------------------------------

--
-- Structure de la table `dynamic_asset_entry`
--

CREATE TABLE `dynamic_asset_entry` (
  `id` bigint(20) NOT NULL,
  `asset_type` enum('APPLICATION','COMPANY_IMAGE','HARDWARE','INFORMATION','POEPLE','SERVERS','SUPPLIERS') DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `dynamic_asset_entry`
--

INSERT INTO `dynamic_asset_entry` (`id`, `asset_type`, `data`) VALUES
(5, 'SUPPLIERS', '{\"name\":\"test\",\"providedService\":\"test\",\"address\":\"test\",\"contactPersons\":\"test\",\"contactPhone\":\"test\",\"contactEmail\":\"test\",\"requiresPhysicalAccess\":\"yes\",\"needsAppNetworkAccess\":\"yes\",\"needsInfoAccess\":\"yes\",\"confidentialOrRestrictedInfo\":\"yes\",\"shareInfoOutside\":\"yes\",\"serviceLevel\":\"test\",\"criticality\":\"low\",\"ndaReference\":\"test\",\"startDate\":\"2025-05-20\",\"endDate\":\"2025-05-24\",\"notificationPeriod\":3,\"lastEvaluation\":\"2025-05-22\"}'),
(6, 'SUPPLIERS', '{\"name\":\"Chakira Distribution\",\"providedService\":\"Cable\",\"address\":\"Sidi Hssin\",\"contactPersons\":\"Chakira Distribution\",\"contactPhone\":\"71200300\",\"contactEmail\":\"Chakira@gmail.com\",\"requiresPhysicalAccess\":\"no\",\"needsAppNetworkAccess\":\"yes\",\"needsInfoAccess\":\"yes\",\"confidentialOrRestrictedInfo\":\"no\",\"shareInfoOutside\":\"yes\",\"serviceLevel\":\"1\",\"criticality\":\"Negligible risk Supplier\",\"ndaReference\":\"Chakira\",\"startDate\":\"2025-05-20\",\"endDate\":\"2026-05-20\",\"notificationPeriod\":2,\"lastEvaluation\":\"2025-05-22\"}'),
(7, 'SERVERS', '{\"name\":\"test\",\"object\":\"test\",\"ip\":\"test\",\"state\":\"test\",\"statut\":\"test\",\"space\":\"test\",\"used\":\"test\",\"cpu\":\"test\",\"host\":\"test\",\"os\":\"test\",\"backup\":\"test\",\"bl\":\"test\",\"assetOwner\":\"test\",\"project\":\"test\",\"location\":\"test\",\"confidentiality\":\"2\",\"integrity\":\"2\",\"availability\":\"2\",\"assetRating\":\"Property/Restricted\",\"ram\":\"\",\"storage\":\"\"}'),
(8, 'SERVERS', '{\"name\":\"SCOFICAB-Tenable-01\",\"object\":\"SCOFICAB-Tenable-01\",\"ip\":\"172.22.90.171\",\"state\":\"Powered On\",\"statut\":\"Normal\",\"space\":\"92.45 GB\",\"used\":\"92.45 GB\",\"cpu\":\"42 MHz\",\"host\":\"7.76 GB\",\"os\":\"Oracle Linux 8 (64-bit)\",\"backup\":\"Daily \",\"bl\":\"Network\",\"assetOwner\":\"undefined\",\"project\":\"ENERGYGUARD\",\"location\":\"Tunis\",\"confidentiality\":\"4\",\"integrity\":\"4\",\"availability\":\"4\",\"assetRating\":\"Extremely Confidential\",\"ram\":\"\",\"storage\":\"\"}'),
(13, 'APPLICATION', '{\"app\":\"cmes\",\"id\":\"1\",\"role\":\"DB+APP\",\"domain\":\"coficab.com\",\"Ip\":\"172.22.90.212\",\"location\":\"COFTN\",\"url\":\"http://172.22.90.212/CMESMOBILEV22\",\"disk\":\"400.34 GB\",\"memory\":\"64 GB\",\"vcpu\":\"8 CPU(s)\",\"os\":\" Microsoft Windows Server 2019\",\"type\":\"64-bit\",\"data\":\"test\",\"last\":\"2025-05-23\",\"assetOwner\":\"undefined\",\"confidentiality\":\"2\",\"integrity\":\"2\",\"availability\":\"2\",\"assetRating\":\"Public use\"}'),
(14, 'COMPANY_IMAGE', '{\"sr\":\"1\",\"asset\":\"Website\",\"assetOwners\":\"undefined\",\"location\":\"Tunis\",\"assetOwner\":\"undefined\",\"confidentiality\":\"2\",\"integrity\":\"4\",\"availability\":\"4\",\"assetRating\":\"Property/Restricted\",\"information\":\"Public Use\",\"period\":\"NA\"}'),
(15, 'POEPLE', '{\"sr\":\"1\",\"asset\":\"Key People\",\"assetowner\":\"Human Capital\",\"confidentiality\":\"1\",\"integrity\":\"1\",\"availability\":\"4\",\"ownerasset\":\"undefined\"}'),
(16, 'POEPLE', '{\"sr\":\"1\",\"asset\":\"test\",\"assetowner\":\"test\",\"confidentiality\":\"3\",\"integrity\":\"2\",\"availability\":\"3\",\"ownerasset\":\"undefined\"}'),
(17, 'POEPLE', '{\"sr\":\"2\",\"asset\":\"hellol\",\"assetowner\":\"helo\",\"confidentiality\":\"2\",\"integrity\":\"1\",\"availability\":\"4\",\"ownerasset\":\"undefined\"}'),
(18, 'POEPLE', '{\"sr\":\"3\",\"asset\":\"fsvff\",\"assetowner\":\"ffdffdfdd\",\"confidentiality\":\"2\",\"integrity\":\"2\",\"availability\":\"2\",\"ownerasset\":\"Foued Tellili\"}'),
(19, 'COMPANY_IMAGE', '{\"sr\":\"2\",\"asset\":\"test\",\"assetOwners\":\"Foued Tellili\",\"location\":\"test\",\"assetOwner\":\"undefined\",\"confidentiality\":\"4\",\"integrity\":\"2\",\"availability\":\"2\",\"assetRating\":\"Extremely Confidential\",\"information\":\"ddd\",\"period\":\"dsdsds\"}'),
(20, 'HARDWARE', '{\"sr\":\"1\",\"subasset\":\"Laptops\",\"subassetowner\":\"Foued Tellili\",\"location\":\"COFTN\",\"riskowner\":\"Foued Tellili\",\"confidentiality\":\"2\",\"integrity\":\"3\",\"availability\":\"2\",\"assetRating\":\"N/A\",\"information\":\"Public use\"}'),
(21, 'INFORMATION', '{\"sr\":\"1\",\"subasset\":\"HR Payrol & Admin\",\"subassetowner\":\"Foued Tellili\",\"region\":\"Human Resources Payroll and Administration\",\"infor\":\"Monthly Personal Statistics\",\"type\":\"Digital\",\"location\":\"OneDrive\",\"information\":\"Confidential\",\"confidentiality\":\"3\",\"integrity\":\"5\",\"availability\":\"4\",\"assetRating\":\"Very High\",\"control\":\"A.5.9 Inventory of information and other associated assets\"}');

-- --------------------------------------------------------

--
-- Structure de la table `meeting`
--

CREATE TABLE `meeting` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `details` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `meeting`
--

INSERT INTO `meeting` (`id`, `date`, `details`, `title`, `type`) VALUES
(5, '2025-05-20', 'Test', 'Brainstorming  Test', 'Brainstorming'),
(8, '2025-06-18', 'helloo', 'Status Update  ', 'Status Update');

-- --------------------------------------------------------

--
-- Structure de la table `meeting_attendees`
--

CREATE TABLE `meeting_attendees` (
  `meeting_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `meeting_attendees`
--

INSERT INTO `meeting_attendees` (`meeting_id`, `user_id`) VALUES
(5, 44),
(8, 43),
(8, 44),
(8, 45),
(8, 47);

-- --------------------------------------------------------

--
-- Structure de la table `risks`
--

CREATE TABLE `risks` (
  `id` bigint(20) NOT NULL,
  `asset_rating` varchar(255) DEFAULT NULL,
  `availability` varchar(255) DEFAULT NULL,
  `confidentiality` varchar(255) DEFAULT NULL,
  `consequences` varchar(255) DEFAULT NULL,
  `corresponding_iso_controls` varchar(255) DEFAULT NULL,
  `final_management_decision` varchar(255) DEFAULT NULL,
  `incident_scenario` varchar(255) DEFAULT NULL,
  `integrity` varchar(255) DEFAULT NULL,
  `level_of_consequences` varchar(255) DEFAULT NULL,
  `probability_of_occurrence` varchar(255) DEFAULT NULL,
  `related_asset` enum('APPLICATION','COMPANY_IMAGE','HARDWARE','INFORMATION','POEPLE','SERVERS','SUPPLIERS') DEFAULT NULL,
  `residual_risk` varchar(255) DEFAULT NULL,
  `revised_level_of_consequences` varchar(255) DEFAULT NULL,
  `revised_probability_of_occurrence` varchar(255) DEFAULT NULL,
  `risk_level` varchar(255) DEFAULT NULL,
  `risk_management_decision` varchar(255) DEFAULT NULL,
  `suggested_controls` varchar(255) DEFAULT NULL,
  `threat_identification` varchar(255) DEFAULT NULL,
  `vulnerability_identification` varchar(255) DEFAULT NULL,
  `asset_owner_id` bigint(20) DEFAULT NULL,
  `risk_owner_id` bigint(20) DEFAULT NULL,
  `sub_asset` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `risks`
--

INSERT INTO `risks` (`id`, `asset_rating`, `availability`, `confidentiality`, `consequences`, `corresponding_iso_controls`, `final_management_decision`, `incident_scenario`, `integrity`, `level_of_consequences`, `probability_of_occurrence`, `related_asset`, `residual_risk`, `revised_level_of_consequences`, `revised_probability_of_occurrence`, `risk_level`, `risk_management_decision`, `suggested_controls`, `threat_identification`, `vulnerability_identification`, `asset_owner_id`, `risk_owner_id`, `sub_asset`) VALUES
(10, 'Low', 'Low', 'Low', 'dfssfd', 'dfsdsffddfs', 'dsfdfsfdsdsf', 'fdssfddfs', 'Moderate', 'dsfdsf', 'sdfsfdsdf', 'HARDWARE', 'dfsfsdfddfs', 'dsffdsdfsdfs', 'dfsdfsdfsfds', 'dsffdssdf', 'dsffsdfdsfd', 'dfsfsdsfd', 'dsvddsv', 'dsvsvdsf', 44, 44, NULL),
(11, 'Low', 'Low', 'Low', 'test', 'test', 'test', 'test', 'Low', 'test', 'tesr', 'APPLICATION', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 44, 44, NULL),
(12, 'Low', 'Low', 'Low', 'test', 'test', 'test', 'test', 'Low', 'test', 'tesr', 'INFORMATION', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 44, 44, NULL),
(13, 'Low', 'Low', 'Low', 'test', 'test', 'test', 'test', 'Low', 'test', 'tesr', 'APPLICATION', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 44, 44, NULL),
(20, 'Negligible', 'Low', 'Low', 'hii', 'hii', 'hii', 'hii', 'Low', 'hii', 'hii', 'SERVERS', 'hii', 'hii', 'hii', 'hii', 'hii', 'hii', 'hii', 'hii', 44, 44, NULL),
(176, 'High', '4', '3', '• Loss of customers accounts\n• Data Loss ', '', 'Accept', 'It may result in unauthorized access to sensitive information by any COFICAB employee without requiring any permission', '4', 'MAJOR', 'MODERATE', 'APPLICATION', 'Low', 'Low ', 'Rare ', 'HIGH', 'Reduce', '', 'Unauthorized access\nUnware employee', 'Insufficient access controls on CROWDSTRIKE projects ', 44, 44, NULL),
(177, 'High', '4', '3', '', '', 'Accept', '', '4', '', 'MODERATE', 'APPLICATION', 'Low', 'Low ', 'Rare ', 'HIGH', 'Reduce', '', '', '', 44, 44, NULL),
(178, 'High', '4', '5', '', '', 'Accept', '', '4', '', 'MODERATE', 'APPLICATION', 'Low', 'Low ', 'Rare ', 'HIGH', 'Reduce', '', '', '', 44, 44, NULL),
(179, 'High', '4', '3', '', '', 'Accept', '', '4', '', 'MODERATE', 'APPLICATION', 'Low', 'Low ', 'Rare ', 'HIGH', 'Reduce', '', '', '', 44, 44, NULL),
(180, 'High', '4', '3', '', '', 'Accept', '', '4', '', 'MODERATE', 'APPLICATION', 'Low', 'Low ', 'Rare ', 'HIGH', 'Reduce', '', '', '', 44, 44, NULL),
(181, 'High', '4', '3', '', '', 'Accept', '', '4', '', 'MODERATE', 'APPLICATION', 'Low', 'Low ', 'Rare ', 'HIGH', 'Reduce', '', '', '', 44, 44, NULL),
(182, 'High', '4', '3', '', '', 'Accept', '', '4', '', 'MODERATE', 'APPLICATION', 'Low', 'Low ', 'Rare ', 'HIGH', 'Reduce', '', '', '', 44, 44, NULL),
(183, 'High', '4', '3', '', '', 'Accept', '', '4', '', 'MODERATE', 'APPLICATION', 'Low', 'Low ', 'Rare ', 'HIGH', 'Reduce', '', '', '', 44, 44, NULL),
(184, 'High', '4', '3', '', '', 'Accept', '', '4', '', 'MODERATE', 'APPLICATION', 'Low', 'Low ', 'Rare ', 'HIGH', 'Reduce', '', '', '', 44, 44, NULL),
(185, 'High', '4', '3', '', '', 'Accept', '', '4', '', 'MODERATE', 'APPLICATION', 'Low', 'Low ', 'Rare ', 'HIGH', 'Reduce', '', '', '', 44, 44, NULL),
(186, 'High', '4', '3', '', '', 'Accept', '', '4', '', 'MODERATE', 'APPLICATION', 'Low', 'Low ', 'Rare ', 'HIGH', 'Reduce', '', '', '', 44, 44, NULL),
(187, 'High', '4', '3', '', '', 'Accept', '', '4', '', 'MODERATE', 'APPLICATION', 'Low', 'Low ', 'Rare ', 'HIGH', 'Reduce', '', '', '', 44, 44, NULL),
(188, 'High', '4', '3', '', '', 'Accept', '', '4', '', 'MODERATE', 'APPLICATION', 'Low', 'Low ', 'Rare ', 'HIGH', 'Reduce', '', '', '', 44, 44, NULL),
(189, 'High', '4', '3', '', '', 'Accept', '', '4', '', 'MODERATE', 'APPLICATION', 'Low', 'Low ', 'Rare ', 'HIGH', 'Reduce', '', '', '', 44, 44, NULL),
(193, 'Very High', 'Major', 'Major', 'Moderate', 'Loss of customers accounts', 'Accept', 'It may result in unauthorized access to sensitive information by any COFICAB employee without requiring any permission', 'Major', 'Low', 'Almost Certain', 'POEPLE', 'Moderate', 'Moderate', 'Moderate', 'Extreme', 'Reduce', 'It may result in unauthorized access to sensitive information by any COFICAB employee without requiring any permission', 'Unauthorized access Unware employee', 'Insufficient access controls on CROWDSTRIKE projects ', 44, 44, NULL),
(194, 'Very High', 'Major', 'Major', 'Moderate', 'It may result in unauthorized access to sensitive information by any COFICAB employee without requiring any permission', 'Reduce', 'It may result in unauthorized access to sensitive information by any COFICAB employee without requiring any permission', 'Major', 'Major', 'Rare', 'COMPANY_IMAGE', 'High', 'Moderate', 'Almost Certain', 'Moderate', 'Retain', 'It may result in unauthorized access to sensitive information by any COFICAB employee without requiring any permission', 'Unauthorized access Unware employee', 'Insufficient access controls on CROWDSTRIKE projects ', 44, 44, NULL),
(195, 'Low', 'Low', 'Moderate', 'Major', 'It may result in unauthorized access to sensitive information by any COFICAB employee without requiring any permission', 'Accept', 'It may result in unauthorized access to sensitive information by any COFICAB employee without requiring any permission', 'Low', 'Major', 'Rare', 'SUPPLIERS', 'Moderate', 'Low', 'Moderate', 'Moderate', 'Transfer', 'It may result in unauthorized access to sensitive information by any COFICAB employee without requiring any permission', 'Unauthorized access Unware employee', 'Insufficient access controls on CROWDSTRIKE projects ', 44, 44, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `risk_treatment_plan`
--

CREATE TABLE `risk_treatment_plan` (
  `id` bigint(20) NOT NULL,
  `acceptance_reasons` varchar(255) DEFAULT NULL,
  `control_target` varchar(255) DEFAULT NULL,
  `delay_justification` varchar(255) DEFAULT NULL,
  `key_challenges` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `target_completion_date` date DEFAULT NULL,
  `time_required` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `risk_id` bigint(20) DEFAULT NULL,
  `corresponding_iso_controls` varchar(255) DEFAULT NULL,
  `final_management_decision` varchar(255) DEFAULT NULL,
  `incident_scenario` text DEFAULT NULL,
  `related_asset` varchar(255) DEFAULT NULL,
  `residual_risk` varchar(255) DEFAULT NULL,
  `revised_level_of_consequences` varchar(255) DEFAULT NULL,
  `revised_probability_of_occurrence` varchar(255) DEFAULT NULL,
  `risk_owner` varchar(255) DEFAULT NULL,
  `suggested_controls` longtext DEFAULT NULL,
  `threat_identification` varchar(255) DEFAULT NULL,
  `vulnerability_identification` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `risk_treatment_plan`
--

INSERT INTO `risk_treatment_plan` (`id`, `acceptance_reasons`, `control_target`, `delay_justification`, `key_challenges`, `priority`, `start_date`, `status`, `target_completion_date`, `time_required`, `type`, `risk_id`, `corresponding_iso_controls`, `final_management_decision`, `incident_scenario`, `related_asset`, `residual_risk`, `revised_level_of_consequences`, `revised_probability_of_occurrence`, `risk_owner`, `suggested_controls`, `threat_identification`, `vulnerability_identification`) VALUES
(10, 'tesssst', 'test', 'test', 'test', 'test', '2025-05-27', 'test', '2025-05-28', 'test', 'test', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'dccdcd', 'dcddc', 'cddccd', 'hbhbhbchbd', 'cddccddc', '2025-05-30', 'dcdcdccd', '2025-05-28', 'dccdcddc', 'hbchbchb', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'NA', 'FlexOffice application', 'NA', 'NA', 'High', '2025-05-27', 'Done ', '2025-05-31', 'Medium (3-6 Weeks)', 'PREVENTIVE', 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3017, 'NA', 'Systems', 'NA', 'NA', 'High', '2020-02-29', 'DONE', '2020-03-20', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'A.13.1.1 : Network Controls', 'ACCEPT', 'VERMEG systems can be exposed to phishing attempts and remote attacks.', 'Servers', 'Moderate', 'Moderate', 'Rare', '', 'Strengthen the authentication system for VPN', 'Hackers/ Employees / Malicious Code', 'There is no  multifactor authenfication for VPN'),
(3018, 'NA', 'VPN', 'NA', 'Resistance for change', 'High', '2020-02-29', 'DONE', '2020-03-30', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'A.6.2.2 : Teleworking', 'ACCEPT', 'VPN will not be able for passing traffic through bandwidth . VERMEG employees will not be able to ensure their works.', 'Servers', 'Moderate', 'Moderate', 'Rare', '', 'Plan for stress test to validate staff capacity to operate from home.VPN Tests to be conducted as showed that all employees were able to operate using the VPN client, no significant incident has been reported to the IT support department.', 'Business discontinuity', 'VPN bandwidth capacity is unable to support simultaneous and multiple connection of all staff'),
(3019, 'NA', 'Servers and systems', 'NA', 'NA', 'High', '2019-12-31', 'DONE', '2020-12-31', 'Short (1-2 Weeks)', 'PREVENTIVE', NULL, 'A.13.1.2 : Security of Network Services', 'ACCEPT', 'Hackers can  attempt VERMEG systems to acquire information and data by Phishing attacks and malicious emails.', 'Servers', 'Moderate', 'Moderate', 'Rare', '', 'Regular check of phishing emails received and block sender/domain addresses.', 'Hackers/  Malicious Code', 'Teleworking can appear a favorable ground where hakers believe that the security system is weak and they can succeed their phishing attempts'),
(3020, 'NA', 'Internet connection ', 'NA', 'Availability of Budget\n', 'High', '2020-03-31', 'DONE', '2020-03-31', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'A.6.2.2 : Teleworking', 'ACCEPT', 'Employees cannot insure their work', 'Servers', 'Low', 'Low', 'Rare', '', 'Use the Data injection strategy to assess our staff accessibility to stablish home connection.', 'Business discontinuity', 'Weak home internet connection (low WIFI speed)\ntotal absence of connection'),
(3021, 'NA', 'Mobile phones', 'NA', 'Availability of Budget\n', 'High', '2020-06-01', 'DONE', NULL, 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'A.6.2.1 : Mobile Device Policy', 'ACCEPT', 'Information leaks of stored data as well as applications damage. In particular, if important data, such as personal information, etc., is stored in the phone, the damage can be serious.', 'Hardware', 'Moderate', 'Moderate', 'Rare', '', 'Reinforce its Cybersecurity by launching Microsoft “Intune” Tool, a security module that allow to protect phones & tablets having access to VERMEG resources (Email, Teams, Sharepoint, OneDrive ….).', 'Theft of information/ Loss of data ', 'The smartphone has became the main device used by people for personal & professional purposes'),
(3022, 'NA', 'Applications', 'NA', 'Availability of Budget\nLack of Resources', 'High', '2019-12-31', 'DONE', '2020-12-30', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'A.14: System Acquisition, Development & Maintenance', 'ACCEPT', 'If the remote connection is compromised and unrestricted use of remote connections is allowed, it may result in unauthorized access to information, systems and data.', 'Applications', 'Moderate', 'Moderate', 'Rare', '', 'Collaborate with cyber security third-party experts for advice how to secure our applications, and plan the necessary actions accordingly (i.e. Dedicated WHF pentests)', 'Lack of security / Unauthorized access', 'Unrestricted use of remote connections'),
(3023, 'NA', 'Key Resource', 'NA', 'NA', 'High', '2020-02-29', 'DONE', '2020-03-30', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'A.7: Human Resource Security', 'ACCEPT', 'Absence of personnel may lead to interruption of activity', 'People', 'Low', 'Low', 'Rare', '', 'HR should establish the list of key members in all departments, in the different site, then define their interims.', 'Unavailability of primary resources', 'One or more of key personnel could be affected by covid-19'),
(3024, 'NA', 'Employees', 'NA', 'NA', 'High', '2020-03-31', 'DONE', '2020-05-30', 'Short (1-2 Weeks)', 'PREVENTIVE', NULL, 'A.7: Human Resource Security', 'ACCEPT', 'Employees may not be able to ensure their work', 'People', 'Moderate', 'Moderate', 'Rare', '', '1/ Innovative management to be adapted to remote interactions with team members.                                                                  2/ New platforms for frequent communication between team members and with the whole community (webinars, Yammer, ...etc.).                                                         3/ Entertainment activities such as Live trainings by sports coach and psychotherapy sessions to distract employees, .etc.', 'Bad work conditions', 'It\'s hard for some personnel to adapt with the new work conditions at home'),
(3025, 'NA', 'Employees', 'NA', 'NA', 'High', '2020-03-19', 'DONE', '2020-03-19', 'Short (1-2 Weeks)', 'PREVENTIVE', NULL, 'A.7: Human Resource Security', 'ACCEPT', 'If staff are unaware of their security responsibilities and any changes to those responsibilities there is a risk of staff acting incorrectly or inappropriately and exposing a security risk.', 'People', 'Moderate', 'Moderate', 'Rare', '', 'Daily communication from [Coronavirus Crisis Management] infosec team to make staff aware of the related pandemic news.', 'Unaware Resources', 'Lack of safety awareness'),
(3026, 'NA', 'Official documents', 'NA', 'NA', 'High', '2020-03-17', 'DONE', '2020-03-30', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, '', 'ACCEPT', 'VERMEG \nclients may not have access to official documents when they need them ', 'Compagny image and reputation', 'Low', 'Low', 'Rare', '', 'BCP is to be published on VERMEG official website.', 'Lack of documents', 'Inadequate or lack of official documents in VERMEG website'),
(3027, 'NA', 'Systems ', 'NA', 'NA', 'High', '2020-02-29', 'DONE', '2020-05-31', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'A.13.1.1 : Network Controls', 'ACCEPT', 'VERMEG systems can be exposed to phishing attempts and remote attacks.', 'Information', 'Moderate', 'Moderate', 'Rare', '', 'Reinforce the MFA (Multi-Factor Authentication) by boosting the verification each 5 days instead of 15 days.', 'Loss of data/Malicious code', 'MFA is applied each 15 day which is a long period, and this can cause risks on VERMEG information during the period of working from home due to the pandemic.'),
(3028, 'NA', 'Servers and Systems ', 'NA', 'Availability of Budget\nLack of Resources', 'High', '2020-01-02', 'In Progress', NULL, 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'A.13.1.2 : Security of Network Services', 'REDUCE', 'Hackers can  attempt VERMEG systems to acquire information and data by Phishing attacks and malicious emails.', 'Information', 'High', 'High', 'Moderate', '', 'Plan for pentest to defend the organization infrastructure and mitigate malware and ransomware attacks', 'Hacker/Data Breach', 'Because of the work from home conditions VERMEG infrastructure is more exposed to Cyber-attacks: Ransomware Security attacks'),
(3029, 'NA', 'Employees', 'NA', 'NA', 'High', '2020-04-30', 'DONE', '2020-09-30', 'Short (1-2 Weeks)', 'PREVENTIVE', NULL, 'A.7: Human Resource Security', 'ACCEPT', 'Employees must travel to file their administrative documents they may be confronted with people affected by the virus', 'Information', 'Moderate', 'Moderate', 'Rare', '', 'Make available the option of scanning documents and sending them remotely to human resource to be stocked in their repository', 'Lack of employee documents', 'Unavailability of personal documents: employees may not be able to deposit their administrative files or to exchange paper from VERMEG offices because of lockdown and travel ban'),
(3030, 'NA', 'Policies and procedures ', 'NA', 'NA', 'High', '2020-05-06', 'DONE', '2020-08-31', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'A.5 : Information Security Policies', 'ACCEPT', 'VERMEG empolyees need official documents to meet customer needs, they may have difficulty finding them (lack of visibility) fail to respond to customers or respond with lack of certainty and credibility', 'Information', 'Low', 'Low', 'Rare', '', 'InfoSec documents Policies & Procedure are approved reviewed and shared in VERMEG Global Internal Documentation', 'Lack of information / Unavailability of official policies or procedures', 'Employees struggle to find VERMEG formal policies and procedures'),
(3031, 'NA', 'Hardwares/Laptops', 'NA', 'Availability of Budget', 'High', '2020-03-09', 'DONE', '2020-03-30', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'A. 8 : Asset management ', 'ACCEPT', 'Employees working in administrative and financial activities will not be able to accomplish their tasks while working from home due to inaccecibility of hardwares.', 'Information', 'Low', 'Low', 'Rare', '', 'Replace desktops when existing and allow 100% of administrative and finance team with laptops', 'Legal and finance Non Compliance', 'Administrative and finance activities may be jeopardized due to work from home mode'),
(3032, 'NA', 'Softwares/Products', 'NA', 'Availability of Budget', 'High', '2020-02-12', 'DONE', '2020-06-30', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'A.14 : System/Software development life cycle', 'ACCEPT', 'VERMEG may lose its clients due if it can not prove its softwares security and increase the protection of its products.', 'Information', 'Moderate', 'Moderate', 'Rare', '', 'Improve the secure development life cycle SDLC\n\nAcquisition of VERACODE', 'lack of trust and credibility ', 'During Covid-19 specific period, clients may doubt about the security of our softwares and products'),
(3033, 'NA', 'Hardwares/Laptops', 'NA', 'Availability of Budget', 'High', '2020-01-02', 'DONE', '2020-03-31', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'A.15.2 : Supplier service development management ', 'ACCEPT', ' A stock-out of laptops ', 'Supplier', 'Low', 'Low', 'Rare', '', 'Increase laptop orders so that 100% of employees will have their own laptops and will be able to work from home', 'Unavailability of Hardwares', 'Due to lock down, laptop industry may not respond to VERMEG orders.'),
(3034, 'NA', 'Suppliers', 'NA', 'NA', 'High', '2020-01-03', 'In Progress', '2020-12-31', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'A.15.1 : Information security in supplier relationships', 'REDUCE', 'Suppliers are  not well consolidated to cover COVID-19 pandemic', 'Supplier', 'High', 'High', 'Moderate', '', 'Encourage VERMEG critical suppliers to establish their own BCP to prevent any delivery interruption in case of Covid-19 outbreak in the upcoming period', 'Lack of Suppliers BCP engagements', 'During Covid-19 specific period, clients may doubt about the security of our softwares and products'),
(3035, 'NA', 'Employees', 'NA', 'Availibility of personal ', 'High', '2019-12-31', 'DONE', '2020-12-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'A.11', 'ACCEPT', 'In case of incidents or natural disaster we cannot count the real number of employees in the building and can\'t track employee\'s whereabouts', 'Hardware', 'Low', 'Low', 'Rare', '', 'Plan periodic awareness sessions for employees to make them  aware of the physical security procedure and impacts of not respecting it.  Provide physical security training (eg: evacuation tests)', 'Tailgating : VERMEG workplaces are secured by a swipe-card access point. This physical security measure is, unfortunately, easily overcome by a determined attacker.', 'An unauthorized person follows an authorized person into a secure area'),
(3036, 'NA', 'Sites/Buildings', 'NA', '\nLack of Resources', 'High', '2019-12-31', 'DONE', '2020-12-31', 'Short (1-2 Weeks)', 'PREVENTIVE', NULL, 'A.11.2.9: Clear Desk and Screen Policy', 'ACCEPT', 'Critical information can be transferred to competitors', 'Hardware', 'Moderate', 'Moderate', 'Rare', '', 'Collaborate with logistic team to apply the clear-desk policy, to ensure that all desks are cleared and all documents are putted away at the end of the workday, makes it less likely that sensitive documents are left in vulnerable locations. Also ensure that VERMEG employees shred all sensitive documents they hold after they no longer need them', 'Theft of documents : VERMEG offices are likely to have papers and documents lying around in many places, from desks to boards to printer stations', 'Sensitive documents can easily become unaccounted for - and fall into the wrong hands. Even if they are not taken from the office, a visitor could see information that you wouldn’t want them to see.'),
(3037, 'NA', 'Sites/Buildings', 'NA', 'NA', 'High', '2020-01-08', 'DONE', '2020-08-31', 'Short (1-2 Weeks)', 'PREVENTIVE', NULL, 'A.11', 'ACCEPT', 'Having non-conformities as outcomes of the audit that can lead to the termination of the certification', 'Hardware', 'Moderate', 'Moderate', 'Rare', '', 'Plan an internal audit for the lac2 VERMEG LA BOURSE site , collaborate with IT team and logistic team to correct the detected gaps , request third parties to include the site in the scope of the audit ', 'A new site VERMEG  La Bourse has been included in the scope of the certification renewal audit', 'The site does not yet comply with norms and standards and is not ready for the audit'),
(3038, 'NA', 'Employees', 'NA', 'Lack of Resources', 'High', '2020-01-03', 'In Progress', '2020-10-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'A.11', 'REDUCE', 'Not doing the audit due to the sever travel instructions may lead to a major non-conformity as the site is in the scope . Doing the audit remotly may not allow auditors detect all weaknesses', 'Hardware', 'High', 'High', 'Moderate', '', 'Exceptional authorization for an IT member to visit the site and prepare it for the audit. Collaboration with local resources to ensure remotely the audit. \nBeing prepared in case the travel instructions have been removed to go to site and ensure the audit normally ', 'A new site VERMEG  France  has been included in the scope of the certification renewal audit', 'Travel is restricted: we cannot be in site to due to the covid-19 pandemic'),
(3039, 'NA', 'Sites/Buildings', 'NA', 'Availability of Budget\nLack of Resources', 'High', '2020-01-02', 'DONE', '2020-03-30', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'A.11', 'ACCEPT', 'Going to work on site while the physical security mesures are not in place can be a  cause of contamination', 'Hardware', 'Moderate', 'Moderate', 'Rare', '', 'Implementation of hygiene rules (impose the use of bibs and disinfectant gels)\nBuildings Preparation / Social distancing : preparation of platforms on sites in case they are going to welcome employees\nOngoing awareness about how to be safe and protect yourselef from contamination', '2nd wave Covid-19', 'Some of VERMEG employees are authorized  to work on site due to their exceptional unfavorable conditions of teleworking'),
(3040, 'NA', 'Visitors', 'NA', 'NA', 'High', '2020-01-02', 'DONE', '2020-03-30', 'Short (1-2 Weeks)', 'PREVENTIVE', NULL, 'A.11', 'ACCEPT', 'VERMEG employees health is in danger', 'Hardware', 'Low', 'Low', 'Rare', '', 'VERMEG has prohibited all external access for visitors including customers except for exceptional authorizations approved by the CEO and the COO', 'The visitor does not have the same level of hygiene and awareness as VERMEG employees', 'The visitor can spread the virus by  contacting people, using public means of transport, not respecting social distanciation ..'),
(3041, 'NA', 'JIRA tool', 'NA', 'Resistance for change', 'High', '2020-01-08', 'DONE', '2020-09-29', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'A.11', 'ACCEPT', 'The employee can not ensure his work  ', 'Hardware', 'Moderate', 'Moderate', 'Rare', '', 'Implementation of an exceptional access process and the digitization of the access request via a gis ticket in VERMEG JIRA tool', 'An employee who have problems to ensure his work from home :  VPN problem , Hardware ( Laptop ) problem, connection problem  .. ', 'Strict teleworking instructions / Non availability of premises  All VERMEG sites are closed'),
(3042, 'NA', 'Sites/Buildings', 'NA', 'NA', 'High', '2020-01-07', 'DONE', '2020-08-31', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'A.11', 'ACCEPT', 'If the scope of the certification audit is not reviewed and updated , auditors may consider those sites as part of the audit scope.', 'Hardware', 'Low', 'Low', 'Rare', '', 'The exclusions are reviewed annually by top management to evaluate if it is relevant for VERMEG to bring them into the ISO27001 certification scope or not.', 'Exclusion of premises  ', 'Some physical office locations are excluded eg: Spain, Brazil, Australia, Mexico, Hong Kong, Tokyo, Singapore and Sousse (Tunisia), due to their small size and function they provide'),
(3043, 'NA', 'Personal and sensitive Data ', 'NA', 'NA', 'High', '2020-01-02', 'DONE', '2020-08-31', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'A.12 : Operations Security', 'ACCEPT', 'VERMEG will be exposed to personal data breaches and won\'t be able to detect and investigate those incidents', 'Information (Clients)', 'Low', 'Low', 'Rare', '', 'Take the appropriate technical and organizational measures, knowledge sharing from legal team to InfoSec team to take the lead to ensure the protection of personal data that we process on behalf of our customers', 'Lack of documents and ressources', 'Unavailability of the right procedure, controls in place and dedicated persons in charge\nto detect personal data breaches'),
(3044, 'NA', 'Cloud ', 'NA', 'NA', 'High', '2020-01-03', 'In Progress', '2020-12-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'A.12 : Operations Security', 'REDUCE', 'A malicious external party can attack the organization\'s system and expose, steal or use sensitive and confidential data', 'Information (Clients)', 'High', 'High', 'Moderate', '', 'Strengthen the Cloud system by adopting new services and scheduling regular tests', 'Weaknesses of the Cloud service', 'Leakage of VERMEG\'s sensitive data due to the\nnon-existence or weaknesses of the Cloud service'),
(3045, 'NA', 'Business Continuity Plan', 'NA', 'NA', 'High', '2020-03-19', 'DONE', '2020-03-30', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'A.12 : Operations Security', 'ACCEPT', 'Inability to protect VERMEG employees and mitigate the related risks to Covid-19 and deliverables won\'t be provided to the client in a timely manner.', 'Information (Clients)', 'Low', 'Low', 'Rare', '', 'Establish a specific Covid-19 BCP and ensure its regular testing and adequate implementation', 'Covid-19 pandemic ', 'The BCP is not implemented '),
(3047, 'NA', 'JIRA application', 'NA', 'NA', 'High', '2021-03-15', 'in progress', '2021-04-30', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'A.14: System Acquisition, Development & Maintenance', '', 'Attacker can capture passwords that have not been changed for a long period of time, trapping the user with social engineering (phishing attempts).', 'Application', '', '', 'The action is in progress\nResidual risk is to be revaluated after the action is completed\n', 'Adel KALLEL', '\n\n• Migrate customer accounts to Jira\'s Internal directory and apply Vermeg\'s security policy using the Password Policy plugin we acquired.\n• Migrate accounts to an external LDAP will also incur an additional strain on the IT team and require maintenance in order to avoid attacks and security risks.\n• Add a link in the home page and see how to use the Selfservice Password.', 'Unmanaged password change  ', 'Inability of changing password periodically  in JIRA tool for several clients'),
(3052, 'NA', 'FlexOffice application', 'NA', 'NA', 'High', '2021-12-31', 'Done ', '2022-07-31', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'A.14: System Acquisition, Development & Maintenance', 'ACCEPT', 'Failure to connect and to book desks correctly and according to the process', 'Application', 'Low ', 'Low ', 'Rare ', 'Rasha FERCHICHI ', 'Perform dedicated training sessions to present how the system works for employees returning to the office.', 'Lack of awareness and guidelines on how to handle the FlexOffice tool correctly.', 'VERMEG employees do not know how to use the flex-office application'),
(3053, 'NA', 'FlexOffice application', 'NA', 'NA', 'High', '2021-12-31', 'Done ', '2022-12-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'A.14: System Acquisition, Development & Maintenance', 'ACCEPT', 'Employees trying to connect to the FkexOffica application to book their desks face troules to connect or make reservations', 'Application', 'Low ', 'Low ', 'Rare ', 'Rasha FERCHICHI ', 'IS team has to ensure the continuous maintenance and availability of the application.', 'Unavailability of FlexOffice web application', 'The FlexOffice web application may present some technical issues affecting the activity of desk booking'),
(3055, 'NA', 'Application', 'NA', 'NA', 'High', '2021-01-02', ' in progress', NULL, 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'A.13.1.2 : Security of Network Services', '', 'Documents may be available to certain people who are not authorized to see them', 'Information', '', '', 'The action still is in progress\nResidual risk is to be revaluated after the action is completed', 'Fayez TEKITEK', '•  Implement Data loss prevention (DLP)  process to ensure that sensitive data is not lost, misused, or accessed by unauthorized users.\n•  Impose documents encryption, and other protective actions to prevent end users from accidentally or maliciously sharing data that could put the organization at risk. ', 'Unauthorized access', 'Using and sharing of several sensitive documents containing critical data internally and externally'),
(3064, 'NA', 'Trainings', 'NA', 'NA', 'High', '2021-12-31', 'in progress', '2022-12-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'A.7.2.2 Information Security Awareness, Education & Training', 'ACCEPT', 'Clients\' requirements are not met and their security is compromised', 'Information', 'Low', 'Low ', 'Rare ', 'Fayez TEKITEK', 'Provide software security trainings for developers to improve their skills through practice labs.', 'Clients are focusing more on developers\' knowledge, skills, and awareness regarding software security.', 'Developers lack software security trainings and practice'),
(3065, 'NA', 'Active Directory', 'NA', 'NA', 'High', '2021-12-31', 'Done', '2022-03-31', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'A.13.1.2 : Security of Network Services', 'ACCEPT', 'A cyberattack caused by unauthorized access through Active Directory can affect the availability of data and services.', 'Information', 'Low', 'Low ', 'Rare', 'Adel Kallel', 'A Pentest should be performed to evaluate and ensure the security level of the Active Directory resiliency against cyberattacks.', 'A cyberattack caused by unauthorized access through Active Directory', 'Weak security and resiliency of Active Directory against cberattacks '),
(3066, 'NA', 'Client Audits ', 'NA', 'NA', 'High', '2021-12-31', 'Done', '2022-03-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'Annex A.18: Compliance\n\n', 'ACCEPT', 'VERMEG is receiving more demands from customers requesting to perform their own audits under no contractual obligations', 'Information', 'Low', 'Low ', 'Rare', 'Adel LOUDHABACHI', 'Customers can be assured through VERMEG InfoSec Certifications (i.e. ISO 27001 & SOC2 Type2); The Customer audits should be accepted in principle, by upon formalized contractual conditions. ', 'Customers requesting to perform their own audits on VERMEG', 'It is not feasible to treat all customer audit requests and VERMEG does not enforce formalized contractual conditions'),
(3067, 'NA', 'Products ', 'NA', 'NA', 'High', '2021-12-31', 'Done ', '2022-12-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, '', 'ACCEPT', 'Customers may be reluctant to work with VERMEG and use its products', 'Information', 'Low', 'Low ', 'Rare', 'Adel LOUDHABACHI', 'VERMEG should boost customer confidence in its products\' security by enriching its certification scope (i.e. SOC2 Type2) and increasing the scope of the Pentests and BCP tests performed by Thirdparties.', 'Customers may lack reassurance regarding the security of the products offered by VERMEG.', 'VERMEG is not focusing enough on boosting customer confidence regarding product security'),
(3068, 'NA', 'GDPR compliance', 'NA', 'NA', 'High', '2021-12-31', 'in progress', '2022-12-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'A.7.2.2 Information Security Awareness, Education & Training', 'ACCEPT', 'Since the InfoSec team is involved in the GDPR scope, they can face difficulties in day to day activities if they are not well informed about this subject.', 'Information', 'Low ', 'Low ', 'Rare ', 'Adel LOUDHABACHI', 'InfoSec team aims to grant a couple of its members a specific training in the scope of GDPR', ' InfoSec team can face difficulties in day to day activities regarding GDPR scope.', 'InfoSec team is involved in the GDPR scope but is not well informed about the subject to treat day to day activities'),
(3069, 'NA', 'Customers ', 'NA', 'NA', 'High', '2021-12-31', 'Done', '2022-12-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'Annex A.18: Compliance\n\n', 'ACCEPT', 'VERMEG may send questionnaire responses with confidential documents with no client assurance that NDA is signed', 'Information', 'Low', 'Low ', 'Rare', 'Adel LOUDHABACHI', 'Before sending VERMEG responses to client questionnaires, the sales team should ensure that the customer NDA signature.\nSame condition, before providing VERMEG SOC2 reports for existing Customers or prospects.', 'VERMEG receives a considerable number of questionnaires accompanied by evidence requests (e.g confidential documents)', 'VERMEG does not ensure that customer NDA is signed before sending responses to client questionnaires'),
(3070, 'NA', 'Active Directory', 'NA', 'NA', 'High', '2021-12-31', 'done', '2022-12-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, '', 'ACCEPT', 'A cyberattack caused by unauthorized access through Active Directory can affect the availability of data and services especially following Russian and Ukranian crises.', 'Information', 'Rare', 'Rare', 'Rare', 'Adel KALLEL', 'Following the recent conflicts, a Pentest should be performed to evaluate and reinforce the resiliency and security level of the Active Directory against cyberattacks.', 'Unauthorized access through Active Directory leading to a cyberattack', 'The resiliency and security level of the Active Directory is not reinforced against cyberattacks.'),
(3071, 'NA', 'Tools, software, and other services', 'NA', 'NA', 'High', '2021-12-31', 'Done', '2022-03-31', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, '', 'ACCEPT', 'Russian tools, software and other services may be unavailable or outdated due to the current international political situation.', 'Information', 'Rare', 'Rare', 'Rare', 'Faten JOMAA', 'Tools, software, and other services offered by Russian suppliers (e.g. Kaspersky) should be identified and consolidated in a dedicated inventory.', 'Unavailable/oudated Russian tools, software and other services ', 'Tools, software, and other services offered by Russian suppliers are not identified and consolidated'),
(3072, 'NA', 'Crisis room', 'NA', 'NA', 'High', '2022-01-01', 'Done', '2022-03-31', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'Annex A.17 – Information Security Aspects of Business Continuity Management', 'ACCEPT', 'VERMEG\'s vigilance level is low considering the current uncertain external environment and there may be a difficulty to maintain a good level of alertness.', 'Information', 'Rare', 'Rare', 'Rare', 'Adel LOUDHABACHI', 'Dedicated meetings should be scheduled to assess related risks to Russian and Ukrainian crises and plan for mitigation actions while maintaining alertness for sudden changes in the situation.', 'Uncertainty of external environment. Malicious people can exploit the situation.', 'VERMEG\'s vigilance level is low regarding the Russian and Ukrainian crisis'),
(3073, 'NA', 'Vigilance status ', 'NA', 'NA', 'High', '2022-01-01', 'Done', '2022-03-31', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, 'A.7.2.2 Information Security Awareness, Education & Training\n\n', 'ACCEPT', 'VERMEG may face cybersecurity incidents relating to the current political situation and critical crisis. ', 'Information', 'Rare', 'Rare', 'Rare', 'Kamel MAZHOUDI', 'Vigilance status should be increased by VERMEG’s SOC team.', 'Cybersecurity incidents', 'VERMEG is not vigilant enough about possible cybersecurity incidents relating to the current political situation and critical crisis. '),
(3074, 'NA', 'SaaS products', 'NA', 'NA', 'High', '2022-01-08', 'In progress ', '2022-12-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, '', 'ACCEPT', 'Attackers will use Command and control servers to manage the installation and execution of malware campaigns. This will cause a harm to systems and data.', 'Information', 'Rare', 'Rare', 'Rare', 'Adel LOUDHABACHI', 'Plan for a specific Pentest for a SaaS product (e.g., Digital Apps) to identify credential mechanism protection weaknesses and vulnerabilities that may be exploited by an insider threat.', 'Cyberattack caused by unauthorized access ', 'A weak password protection (e.g., Weak encryption, stored in plaintext .. )  and/or account misconfiguration can be misused by an insider threat'),
(3075, 'NA', 'Tools,services', 'NA', 'NA', 'High', '2022-01-07', 'In progress', '2022-12-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, '', 'ACCEPT', 'The absence of a software security tool may cause harms to VERMEG products \n', 'Information', 'Rare', 'Rare', 'Rare', 'Fayez TEKITEK', 'A specific implementation plan should be established.\nA validation committee should be elected on the R&D side to instore a mitigation strategy for the migration from VeraCode to Fortify.\nEnsure that enough users can work on the platform.', 'Change from VeraCode to Fortify', '1/ No mitigations have been considered for fortify.\n\n2/ A delay in installing Fortify application itself.\n\n3/ Absence of validation committee to enforce the mitigation strategy.\n\n4/ Insufficient number of users(VERMEG only has 50 users available to access the platform and make the necessary corrections).'),
(3076, 'NA', 'product/service ', 'NA', 'NA', 'High', '2022-01-06', 'In progress ', '2022-10-30', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, '', 'ACCEPT', 'VERMEG risks to obtain an unclear report', 'Information', 'Rare', 'Rare', 'Rare', 'Adel LOUDHABACHI', 'Guarantee an internal readiness preparation & Gap Assessment by EY UK.\nEnsure continuous internal follow-up and support by InfoSec team.\n', '3 Digital Apps were proposed as new candidates in 2022- SOC2 Type II scope (Custodix - Group Insurance - Non_life Insurance)', 'VERMEG does not ensure that the new proposed products are compliant to SOC2 Type II requirements'),
(3077, 'NA', ' SaaS applications', 'NA', 'NA', 'High', '2022-01-07', 'In progress ', '2022-10-30', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, '', 'ACCEPT', 'VERMEG may not be able to easily restore temporarily disabled or permanently lost data with its BC/DR strategy', 'Information', 'Low', 'Low ', 'Rare', 'Adel Kallel \nAdel LOUDHABACHI', 'Plan for dedicated BCP test scenarios to ensure strong resilience for SaaS applications (e.g., BCP for data loss )', 'Cyber attacks', 'Weak resilience of Vermeg SaaS Applications '),
(3079, 'NA', 'Systems and application', 'NA', 'NA', 'High', '2020-12-31', 'in progress', '2021-12-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, '', '', 'Theft of sensitive documents.\n Theft of confidential information or trade secrets. ', 'Company image and reputation', '', '', 'The action still in progress\nResidual risk is to be revaluated after the action is completed', 'Faten JOMAA', '• Implementing Data loss prevention (DLP) tools to be a core component of many security suites. \n\n• Secure sensitive documents, keep track of how they are being used and by whom.  ', 'Unothorized access from illegal entities (hackers) ', 'Lack of tools to protect intellectual property'),
(3086, 'NA', 'Communication plan', 'NA', 'NA', 'High', '2021-12-31', 'in progress ', NULL, 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, '', 'ACCEPT', 'VERMEG\'s successful and clean SOC2 type 2 report is an achievement holding a great potential to increase trust of current customers and attract new prospects. VERMEG\'s external exposure and reputation could be limited if the potential is not exploited to its best by ensuring the news have a wide external reach.', 'Company image and reputation', 'Low', 'Low ', 'Rare', 'Nadia MANSOUR', 'A communication plan should be planned and put in place to ensure that VERMEG\'s SOC 2 Type II success hits a wide external reach and both current and potential clients in the market receive the news of the clean report that VERMEG obtained', 'Limited external exposure regarding VERMEG\'s successful and clean SOC2 type 2 report', 'The SOC2 achievement is not used to its best potential by ensuring the news have a wide external reach'),
(3088, 'NA', 'product/service ', 'NA', 'NA', 'High', NULL, 'Done ', '2022-03-31', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, '', 'ACCEPT', 'The supplied product/service has issues that can negatively affect VERMEG\'s business ', 'Supplier ', 'Low', 'Low ', 'Rare', 'Souheil SAID', 'Ensure regular supplier evaluation, specifically for the critical ones.', 'Supplier provides Low quality and weak security of products and/or services provided', 'VERMEG works with suppliers who do not provide high quality products and/or services'),
(3089, 'NA', 'financial applications', 'NA', 'NA', 'High', '2021-12-31', 'Done ', '2022-02-28', 'Medium (3-6 Weeks)', 'PREVENTIVE', NULL, '', 'ACCEPT', 'VERMEG\'s internal teams may face feature issues while working with financial applications.', 'Supplier ', 'Low', 'Low ', 'Rare', 'Adel LOUDHABACHI', 'Perform assessment by InfoSec team to evaluate services related to Finance Department (e.g. Expensya) and their levels of utilization.', 'Finance applications contain  feature issues', 'VERMEG finance teams rely on supplied applications that present feature issues'),
(3091, 'NA', 'Singapore site and the USA site ', 'NA', 'NA', 'High', '2021-12-31', 'in progress', '2022-12-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'Annex A.11 – Physical & Environmental Security', '', 'The sites get audited and present non conformities in several standard obligations, thus putting the certification at risk', 'Hardware', '', '', 'The action still in progress\nResidual risk is to be revaluated after the action is completed', 'Adel LOUDHABACHI', 'VERMEG should perform an internal physical audit to Singapore and USA sites to guarantee their compliance to the standard obligations. ', 'The new Singapore site and the USA site are added in the scope of the audit ', 'The new Singapore site and the USA site may not be compliant in several standard obligations'),
(3092, 'NA', 'laptops ', 'NA', 'NA', 'High', '2021-12-31', 'Done ', '2021-12-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, '', 'ACCEPT', 'Security of laptops is compromised and can be vulnerable to cyberattacks', 'Hardware', 'Low', 'Low ', 'Rare', 'Kamel MAZHOUDI', 'Vermeg could develop, implement and maintain additional MBSS for laptops ( windows OS).', 'Hackers/Cyber attacks', 'Minimum Baseline Security Standards (MBSS) or hardening standards for Laptops are not implemented.'),
(3094, 'NA', 'Key People', 'NA', 'NA', 'High', '2021-12-31', 'Done ', NULL, 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'A.7.2.2 Information Security Awareness, Education & Training', 'ACCEPT', 'If employees are unaware of the danger around their health and safety, they are put at risk of geeting sick and infecting their colleagues, causing eventual business interruption', 'People ', 'Low', 'Low ', 'Rare', 'Adel LOUDHABACHI\n', 'Mandatory vaccine passes for employees visiting the office. \nContinuous awareness and enforcing safety rules compliance.', '	\n\nEmployees\' health in danger due to Non-compliance to Covid19 safety measures', 'Weak compliance to safety rules\nLack of awareness regarding covid19 safety measures'),
(3095, 'NA', '', 'NA', 'NA', '', '2021-12-31', 'Done ', NULL, 'Medium (3-6 Weeks)', '', NULL, 'A.7.2.2 Information Security Awareness, Education & Training', 'ACCEPT', 'Employees are not aware of the importance of information security therefore might not respect processes or forget to do so.', 'People ', 'Low', 'Low ', 'Rare', 'Adel LOUDHABACHI\n', 'Plan a dedicated webinar session to highlight the importance of certifications (i.e. SOC2) and updated 2022 awareness learn-upon + quiz to remind employees about information security guidelines.', 'Breach of inormation secuirty guidelines', 'Lack of awareness regarding information security guidelines'),
(3096, 'NA', '', 'NA', 'NA', '', '2021-12-31', 'Done ', NULL, 'Medium (3-6 Weeks)', '', NULL, '', 'ACCEPT', 'VERMEG is recruiting new joiners who might not understand well their roles and responsibilities due to possible lack of details on their job descriptions', 'People ', 'Low', 'Low ', 'Rare', 'Selma ZINE\n', 'HR team should update job descriptions to be more detailed and comprehensible along with enhanced role/skills matrix for each job profile on all hierarchical levels', 'New joiners not understanding their roles and responsibilities', 'Possible lack of details on job descriptions (roles and responsibilities).'),
(3097, 'NA', '', 'NA', 'NA', '', '2021-12-31', 'Done ', NULL, 'Long (more than 6 weeks)', '', NULL, 'Annex A.17 – Information Security Aspects of Business Continuity Management', 'ACCEPT', 'Due to the elongated period of homeworking regime, the psychological health of employees might be affected (e.g. motivation, productivity..etc)', 'People ', 'Low', 'Low ', 'Rare', 'Adel LOUDHABACHI\n', 'A Business Resumption Plan should be adapted to allow progressive and flexible return to the offices while keeping employee safety as the top priority', 'Disrupted business continuity', 'Elongated period of homeworking regime could result in psychological health deterioration'),
(3100, 'NA', 'Firewall', 'NA', 'NA', 'High', '2021-12-31', 'in progress', '2022-12-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'A.13.1.1 Network Controls', 'ACCEPT', 'Firewall and Forcepoint solutions are critical and if they are not regularly checked they present vulnerabilities that can be exploited by hackers or malware.', 'Servers', 'Low', 'Low ', 'Rare', 'Naceur SAHLI', 'Perform the annual firewall HealthCheck for 2022 to ensure optimal use and operation of Forcepoint products.', 'Network malwares/ hackers', 'Firewall and Forcepoint solutions can always be subject to misuse or misconfiguration'),
(3101, 'NA', 'Servers', 'NA', 'NA', 'High', NULL, 'in progress', '2022-12-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'A.13.1.2 : Security of Network Services', 'ACCEPT', 'Servers contain critical data that may not be well identified and can present a risk if left without regular maintenance and unconfigured backup.', 'Servers', 'Low', 'Low ', 'Rare', 'Adel LOUDHABACHI \nFaten JOMAA', 'VERMEG should plan to perform an internal audit on servers by an independent team (InfoSec team) to identify servers containing critical data, verify controls, configurations and reinforce security measures.', 'Unconfigured backup and maintenance issues', 'Servers containing critical data are not identified and security measures are not being reinforced.'),
(3102, 'NA', 'Data', 'NA', 'NA', 'High', '2021-12-31', 'Done ', '2022-12-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, 'A.12.3.1 Information Backup', 'ACCEPT', 'Although data backup is performed on a daily basis, In case of an incident affecting the device,  restore can fail and data will be lost and non-recoverable.', 'Servers', 'Low', 'Low ', 'Rare', 'Khaled BEN JANNET', 'Restore tests should be conducted on a higher percentage of data, targeting 50 %.', 'Restore failure', 'Restore tests are conducted on only 10% of data.'),
(3103, 'NA', ' SaaS products', 'NA', 'NA', 'High', '2022-01-05', 'In progress ', '2022-12-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, '', '', 'VERMEG may not obtain a clean SOC2 report ', 'Servers', '', '', 'The action still in progress\nResidual risk is to be revaluated after the action is completed', 'Khaled BEN JANNET\nAdel LOUDHABACHI', 'Ensure regular maintenance and configured backups.\nSecurity evaluation for SaaS products.', 'Non compliance of security controls ', 'The level of cloud security for servers containing SaaS products may not be compliant with SOC2 requirements'),
(3104, 'NA', 'Policies ', 'NA', 'NA', 'High', '2022-01-07', 'In progress', '2023-03-31', 'Long (more than 6 weeks)', 'PREVENTIVE', NULL, '', '', 'VERMEG may not obtain a clean SOC2 report', 'Servers', '', '', 'The action still in progress\nResidual risk is to be revaluated after the action is completed', 'Adel KALLEL\nAdel LOUDHABACHI', 'Formalize the cloud computing policy in collaboration with external third-party partners RESYS.', 'SOC2 Type II assessment', 'The cloud computing policy is not formalized.\nThe concept design of the cloud computing policy for VERMEG servers is not maintained.'),
(3105, 'test', 'test', 'test', 'test', 'test', '2025-06-20', 'test', '2025-06-24', 'test', 'test', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_role` tinyint(4) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `permissions` varbinary(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `user_role`, `image`, `created_at`, `department`, `permissions`) VALUES
(35, 'sami.benzid@coficab.com', 'Sami Benzid', '$2a$10$n0HTXyv0CayEk/NPvCpAEOK96vIOQ/NjZZlPxUs/fPd6t7qSeWheS', 1, 'static/uploads/sami.jpg', '2025-05-08 06:00:07.000000', 'IT', NULL),
(41, 'dorra.mejri@coficab.com', 'Dorra Mejri', '$2a$10$JdTID.0wgevWWf.2lOufQuzmJ.JcDGYrCbNfYZIzPh8DhHzklDZGS', 0, 'static/uploads/dorra.jpg', '2025-05-14 10:33:29.000000', 'GRC', NULL),
(43, 'karim.bousnina@coficab.com', 'Karim Bousnina', '$2a$10$8XckJI0NOHNhSfRM0HWyYO2eJF4Tp.xiI8iFS0SJfRBGkNg0N1eoW', 0, 'static/uploads/karim.jpg', '2025-05-15 09:40:57.000000', 'GRC', NULL),
(44, 'fouedtellili19@gmail.com', 'Foued Tellili', '$2a$10$13z/5KkkLfpeW4SMVXws1e9G5joZlI5/CPFRO3.OI1dfvE.7jbhNi', 1, 'static/uploads/foued.jpg', '2025-05-19 15:06:21.000000', 'GRC', NULL),
(45, 'ghaddabmahrane@gmail.com', 'Ghadab Mahran', '$2a$10$12LbcdY7/UYXU1UPGKOG0O.Ge86kw4NoRFkiA6IC0iIQnrT5evL2.', 1, 'static/uploads/mahran.jpg', '2025-05-19 21:41:39.000000', 'Sales', NULL),
(46, 'mosbahisouhaieb7@gmail.com', 'Souhaieb Mosbahi', '$2a$10$q/HpwuE3JgR1QpuqDzGoe.t9juxZgIdwFFCGkzhglgwJMpKrAr.Au', 1, 'static/uploads/souhaib.jpg', '2025-05-26 20:08:15.000000', 'Sales', NULL),
(47, 'khemilihmd@gmail.com', 'Khemili Ahmed', '$2a$10$swqUKRLx8zeGPe2ONTkakuq2Ky8dnDYrNyjUeHjAYcjt6WFt6vyTK', 1, 'static/uploads/slide6.jpg', '2025-06-03 13:32:49.000000', 'Sales', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `user_id` bigint(20) NOT NULL,
  `permissions` enum('APPLICATION','COMPANY_IMAGE','HARDWARE','INFORMATION','POEPLE','SERVERS','SUPPLIERS') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user_permissions`
--

INSERT INTO `user_permissions` (`user_id`, `permissions`) VALUES
(41, 'POEPLE'),
(41, 'SUPPLIERS'),
(41, 'COMPANY_IMAGE'),
(41, 'INFORMATION'),
(41, 'HARDWARE'),
(41, 'APPLICATION'),
(41, 'SERVERS'),
(43, 'POEPLE'),
(43, 'INFORMATION'),
(43, 'HARDWARE'),
(43, 'SERVERS'),
(43, 'APPLICATION'),
(43, 'SUPPLIERS'),
(43, 'COMPANY_IMAGE'),
(44, 'INFORMATION'),
(44, 'SUPPLIERS'),
(44, 'APPLICATION'),
(45, 'APPLICATION'),
(45, 'SERVERS'),
(35, 'POEPLE'),
(35, 'INFORMATION'),
(35, 'HARDWARE'),
(35, 'SERVERS'),
(35, 'APPLICATION'),
(46, 'APPLICATION'),
(46, 'SERVERS'),
(47, 'SUPPLIERS'),
(47, 'APPLICATION');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `asset_file`
--
ALTER TABLE `asset_file`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dynamic_asset_entry`
--
ALTER TABLE `dynamic_asset_entry`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `meeting_attendees`
--
ALTER TABLE `meeting_attendees`
  ADD PRIMARY KEY (`meeting_id`,`user_id`),
  ADD KEY `FK2ok8604933c4xrov05cgtwh0t` (`user_id`);

--
-- Index pour la table `risks`
--
ALTER TABLE `risks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK82ngrq3dglgi6tvhdnh210oom` (`asset_owner_id`),
  ADD KEY `FKs8eycsjl22v1sq4nytvsplsbr` (`risk_owner_id`);

--
-- Index pour la table `risk_treatment_plan`
--
ALTER TABLE `risk_treatment_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6yd4nsip90couicx760x43plc` (`risk_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD KEY `FKkowxl8b2bngrxd1gafh13005u` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `asset_file`
--
ALTER TABLE `asset_file`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `dynamic_asset_entry`
--
ALTER TABLE `dynamic_asset_entry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `risks`
--
ALTER TABLE `risks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT pour la table `risk_treatment_plan`
--
ALTER TABLE `risk_treatment_plan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3106;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `meeting_attendees`
--
ALTER TABLE `meeting_attendees`
  ADD CONSTRAINT `FK2ok8604933c4xrov05cgtwh0t` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKjjmrfe13v8xs66xj78pudgt1h` FOREIGN KEY (`meeting_id`) REFERENCES `meeting` (`id`);

--
-- Contraintes pour la table `risks`
--
ALTER TABLE `risks`
  ADD CONSTRAINT `FK82ngrq3dglgi6tvhdnh210oom` FOREIGN KEY (`asset_owner_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKs8eycsjl22v1sq4nytvsplsbr` FOREIGN KEY (`risk_owner_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `risk_treatment_plan`
--
ALTER TABLE `risk_treatment_plan`
  ADD CONSTRAINT `FK6yd4nsip90couicx760x43plc` FOREIGN KEY (`risk_id`) REFERENCES `risks` (`id`);

--
-- Contraintes pour la table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD CONSTRAINT `FKkowxl8b2bngrxd1gafh13005u` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
