-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 02:39 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hlocal_assign`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Cities', 7, 'add_city'),
(26, 'Can change Cities', 7, 'change_city'),
(27, 'Can delete Cities', 7, 'delete_city'),
(28, 'Can view Cities', 7, 'view_city'),
(29, 'Can add Countries', 8, 'add_country'),
(30, 'Can change Countries', 8, 'change_country'),
(31, 'Can delete Countries', 8, 'delete_country'),
(32, 'Can view Countries', 8, 'view_country'),
(33, 'Can add Districts', 9, 'add_district'),
(34, 'Can change Districts', 9, 'change_district'),
(35, 'Can delete Districts', 9, 'delete_district'),
(36, 'Can view Districts', 9, 'view_district'),
(37, 'Can add States', 10, 'add_state'),
(38, 'Can change States', 10, 'change_state'),
(39, 'Can delete States', 10, 'delete_state'),
(40, 'Can view States', 10, 'view_state'),
(41, 'Can add Person Details', 11, 'add_person'),
(42, 'Can change Person Details', 11, 'change_person'),
(43, 'Can delete Person Details', 11, 'delete_person'),
(44, 'Can view Person Details', 11, 'view_person');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$9HxpE5LEzxdkagysa8gVaN$ro+N9rJKV3HU1MgKpx1YHD4aMh2T3d1mwynLM2ZOZvU=', '2022-01-08 12:52:54.961293', 1, 'admin', '', '', '', 1, 1, '2022-01-08 12:52:42.236487');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-01-08 12:53:11.703718', '1', 'India', 1, '[{\"added\": {}}]', 8, 1),
(2, '2022-01-08 12:53:18.303606', '2', 'USA', 1, '[{\"added\": {}}]', 8, 1),
(3, '2022-01-08 12:53:25.805061', '3', 'China', 1, '[{\"added\": {}}]', 8, 1),
(4, '2022-01-08 12:53:29.409007', '4', 'NZ', 1, '[{\"added\": {}}]', 8, 1),
(5, '2022-01-08 12:53:44.535426', '1', 'Rajasthan', 1, '[{\"added\": {}}]', 10, 1),
(6, '2022-01-08 12:53:58.003635', '2', 'Usa_State', 1, '[{\"added\": {}}]', 10, 1),
(7, '2022-01-08 12:54:11.656631', '1', 'Jaipur', 1, '[{\"added\": {}}]', 9, 1),
(8, '2022-01-08 12:54:20.369870', '2', 'USA_District', 1, '[{\"added\": {}}]', 9, 1),
(9, '2022-01-08 12:54:33.104389', '1', 'Pink City Jaipur', 1, '[{\"added\": {}}]', 7, 1),
(10, '2022-01-08 12:54:54.866252', '2', 'USA_CITY', 1, '[{\"added\": {}}]', 7, 1),
(11, '2022-01-08 13:19:07.614153', '1', 'Govind', 1, '[{\"added\": {}}]', 11, 1),
(12, '2022-01-08 13:19:26.538704', '2', 'Govind S', 1, '[{\"added\": {}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'person', 'city'),
(8, 'person', 'country'),
(9, 'person', 'district'),
(11, 'person', 'person'),
(10, 'person', 'state'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-01-08 12:51:14.870838'),
(2, 'auth', '0001_initial', '2022-01-08 12:51:25.570787'),
(3, 'admin', '0001_initial', '2022-01-08 12:51:28.073543'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-01-08 12:51:28.163313'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-01-08 12:51:28.411642'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-01-08 12:51:29.580363'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-01-08 12:51:29.724962'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-01-08 12:51:29.882774'),
(9, 'auth', '0004_alter_user_username_opts', '2022-01-08 12:51:29.935358'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-01-08 12:51:30.549098'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-01-08 12:51:30.580317'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-01-08 12:51:30.640636'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-01-08 12:51:30.790717'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-01-08 12:51:30.940444'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-01-08 12:51:31.090617'),
(16, 'auth', '0011_update_proxy_permissions', '2022-01-08 12:51:31.141914'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-01-08 12:51:31.260891'),
(18, 'person', '0001_initial', '2022-01-08 12:51:47.295386'),
(19, 'sessions', '0001_initial', '2022-01-08 12:51:48.205961');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('frc9ikwywk3xr788m348ogwc81bnt2xj', '.eJxVjEEOwiAQRe_C2hAGAlNcuvcMZBhGqRqalHbVeHdt0oVu_3vvbyrRutS0dpnTWNRZgTr9bpn4KW0H5UHtPmme2jKPWe-KPmjX16nI63K4fweVev3WxgVACCb7DBwCMDIA3TzEiILs2BORo8EMgCWKI2HJaH22IYq1Ub0_ybA3lQ:1n6BDL:V65gImnCzuFkbEPgMBclJuNKKzOMbMMq9edozka9DQM', '2022-01-22 12:52:55.009248');

-- --------------------------------------------------------

--
-- Table structure for table `person_city`
--

CREATE TABLE `person_city` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_city`
--

INSERT INTO `person_city` (`id`, `name`, `country_id`, `district_id`, `state_id`) VALUES
(1, 'Pink City Jaipur', 1, 1, 1),
(2, 'USA_CITY', 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `person_country`
--

CREATE TABLE `person_country` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_country`
--

INSERT INTO `person_country` (`id`, `name`) VALUES
(1, 'India'),
(2, 'USA'),
(3, 'China'),
(4, 'NZ');

-- --------------------------------------------------------

--
-- Table structure for table `person_district`
--

CREATE TABLE `person_district` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `counrty_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_district`
--

INSERT INTO `person_district` (`id`, `name`, `counrty_id`, `state_id`) VALUES
(1, 'Jaipur', 1, 1),
(2, 'USA_District', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `person_person`
--

CREATE TABLE `person_person` (
  `id` bigint(20) NOT NULL,
  `name` varchar(124) NOT NULL,
  `birth_date` date NOT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_person`
--

INSERT INTO `person_person` (`id`, `name`, `birth_date`, `city_id`, `country_id`, `district_id`, `state_id`) VALUES
(1, 'Govind', '2022-01-18', 1, 1, 1, 1),
(2, 'Govind S', '2022-01-08', 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `person_state`
--

CREATE TABLE `person_state` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `counrty_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_state`
--

INSERT INTO `person_state` (`id`, `name`, `counrty_id`) VALUES
(1, 'Rajasthan', 1),
(2, 'Usa_State', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `person_city`
--
ALTER TABLE `person_city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_city_country_id_500b19ba_fk_person_country_id` (`country_id`),
  ADD KEY `person_city_district_id_36b3685c_fk_person_district_id` (`district_id`),
  ADD KEY `person_city_state_id_09943bef_fk_person_state_id` (`state_id`);

--
-- Indexes for table `person_country`
--
ALTER TABLE `person_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_district`
--
ALTER TABLE `person_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_district_state_id_7ba6f202_fk_person_state_id` (`state_id`),
  ADD KEY `person_district_counrty_id_61626b35_fk_person_country_id` (`counrty_id`);

--
-- Indexes for table `person_person`
--
ALTER TABLE `person_person`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_person_city_id_935f8063_fk_person_city_id` (`city_id`),
  ADD KEY `person_person_country_id_1b502906_fk_person_country_id` (`country_id`),
  ADD KEY `person_person_district_id_0ff6cbc1_fk_person_district_id` (`district_id`),
  ADD KEY `person_person_state_id_e0459891_fk_person_state_id` (`state_id`);

--
-- Indexes for table `person_state`
--
ALTER TABLE `person_state`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_state_counrty_id_029876f4_fk_person_country_id` (`counrty_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `person_city`
--
ALTER TABLE `person_city`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `person_country`
--
ALTER TABLE `person_country`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `person_district`
--
ALTER TABLE `person_district`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `person_person`
--
ALTER TABLE `person_person`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `person_state`
--
ALTER TABLE `person_state`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `person_city`
--
ALTER TABLE `person_city`
  ADD CONSTRAINT `person_city_country_id_500b19ba_fk_person_country_id` FOREIGN KEY (`country_id`) REFERENCES `person_country` (`id`),
  ADD CONSTRAINT `person_city_district_id_36b3685c_fk_person_district_id` FOREIGN KEY (`district_id`) REFERENCES `person_district` (`id`),
  ADD CONSTRAINT `person_city_state_id_09943bef_fk_person_state_id` FOREIGN KEY (`state_id`) REFERENCES `person_state` (`id`);

--
-- Constraints for table `person_district`
--
ALTER TABLE `person_district`
  ADD CONSTRAINT `person_district_counrty_id_61626b35_fk_person_country_id` FOREIGN KEY (`counrty_id`) REFERENCES `person_country` (`id`),
  ADD CONSTRAINT `person_district_state_id_7ba6f202_fk_person_state_id` FOREIGN KEY (`state_id`) REFERENCES `person_state` (`id`);

--
-- Constraints for table `person_person`
--
ALTER TABLE `person_person`
  ADD CONSTRAINT `person_person_city_id_935f8063_fk_person_city_id` FOREIGN KEY (`city_id`) REFERENCES `person_city` (`id`),
  ADD CONSTRAINT `person_person_country_id_1b502906_fk_person_country_id` FOREIGN KEY (`country_id`) REFERENCES `person_country` (`id`),
  ADD CONSTRAINT `person_person_district_id_0ff6cbc1_fk_person_district_id` FOREIGN KEY (`district_id`) REFERENCES `person_district` (`id`),
  ADD CONSTRAINT `person_person_state_id_e0459891_fk_person_state_id` FOREIGN KEY (`state_id`) REFERENCES `person_state` (`id`);

--
-- Constraints for table `person_state`
--
ALTER TABLE `person_state`
  ADD CONSTRAINT `person_state_counrty_id_029876f4_fk_person_country_id` FOREIGN KEY (`counrty_id`) REFERENCES `person_country` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
