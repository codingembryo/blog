-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2023 at 06:45 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eblog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add post', 7, 'add_post'),
(26, 'Can change post', 7, 'change_post'),
(27, 'Can delete post', 7, 'delete_post'),
(28, 'Can view post', 7, 'view_post'),
(29, 'Can add comment', 8, 'add_comment'),
(30, 'Can change comment', 8, 'change_comment'),
(31, 'Can delete comment', 8, 'delete_comment'),
(32, 'Can view comment', 8, 'view_comment'),
(33, 'Can add user profile', 9, 'add_userprofile'),
(34, 'Can change user profile', 9, 'change_userprofile'),
(35, 'Can delete user profile', 9, 'delete_userprofile'),
(36, 'Can view user profile', 9, 'view_userprofile'),
(37, 'Can add category', 10, 'add_category'),
(38, 'Can change category', 10, 'change_category'),
(39, 'Can delete category', 10, 'delete_category'),
(40, 'Can view category', 10, 'view_category'),
(41, 'Can add quote', 11, 'add_quote'),
(42, 'Can change quote', 11, 'change_quote'),
(43, 'Can delete quote', 11, 'delete_quote'),
(44, 'Can view quote', 11, 'view_quote');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$yFkjSHk8e9P10DhgiOmTzT$JWrPyP9BsRtEZGopNs0qhCjVzyNe2eRt7/YGdg5n2Cg=', '2023-09-24 02:40:48.428971', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-09-22 04:04:40.586867'),
(2, 'pbkdf2_sha256$600000$0ACOeMFV1uP3IvV0DsmY9f$Q8hRH392oLHQT+UG0twoUS/PfpnTZuUEl2pC3jVEv9Q=', '2023-09-23 12:03:08.820521', 0, 'blog1', '', '', '', 0, 1, '2023-09-22 16:06:19.089877'),
(3, 'pbkdf2_sha256$600000$MronZKOnHVDNAUH3ULMrEu$LWoPrdd9XIVp1lEeOLYSNBba1FL3aYV2+PEIyliMVnM=', '2023-09-23 13:50:42.536849', 0, 'blog2', '', '', '', 0, 1, '2023-09-23 13:50:40.633907'),
(4, 'pbkdf2_sha256$600000$t4kNA0Rnl6shH29VYI4N7Z$2bAtSz7xbI+WWRcEhxY2jFA1ZI7ZWTX2cg1jdaPUK/Q=', '2023-09-23 15:29:01.686823', 0, 'blog3', '', '', '', 0, 1, '2023-09-23 13:56:05.753449'),
(5, 'pbkdf2_sha256$600000$XqAZoBSHgVUGNgpJVjNgcO$3pcYrgjXV9YTbBxIfVBxk+5CKBfYIJKWnOxEhs19YOs=', '2023-09-23 15:37:16.204905', 0, 'blog4', '', '', '', 0, 1, '2023-09-23 15:30:41.746696'),
(6, 'pbkdf2_sha256$600000$RU3YeycWuHqdIYlyVYwfRd$9uSqAc3YSuIC1pRuAW9OzDj+wdtNpmYFEQF8nvg2oKU=', '2023-09-24 04:43:18.405125', 1, 'admin2', '', '', 'admin2@gmail.com', 1, 1, '2023-09-23 16:34:54.834172'),
(7, 'pbkdf2_sha256$600000$gW5z2i5JaxE33ApERcgbft$IdeQeLIri/JQsiuCNLiUpmVTP2PKMKXr0kFXfreOHjs=', '2023-09-24 04:42:53.296436', 0, 'blog5', '', '', '', 0, 1, '2023-09-23 16:36:22.457209');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-09-22 04:27:40.193627', '1', 'A First Blog For Benefits of All', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-09-22 04:42:46.144936', '2', 'Finance As a Pillar Of Your Life.', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-09-22 04:49:36.875836', '1', 'Comment What an impactful materials! by Bright', 1, '[{\"added\": {}}]', 8, 1),
(4, '2023-09-22 15:02:31.549831', '2', 'Comment Bright awesome by Ade', 1, '[{\"added\": {}}]', 8, 1),
(5, '2023-09-22 16:12:04.135308', '3', 'Comment This is an awesome blog page by Paul', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 8, 1),
(6, '2023-09-23 16:39:27.732524', '3', 'Life is a challenge', 1, '[{\"added\": {}}]', 7, 6),
(7, '2023-09-23 16:56:05.146920', '1', 'Finance', 1, '[{\"added\": {}}]', 10, 6),
(8, '2023-09-23 16:56:32.001317', '1', 'Finance', 2, '[]', 10, 6),
(9, '2023-09-23 17:02:38.160173', '1', 'Finance', 2, '[]', 10, 6),
(10, '2023-09-23 17:05:16.870198', '2', 'Health', 1, '[{\"added\": {}}]', 10, 6),
(11, '2023-09-23 17:31:57.053654', '3', 'Life is a challenge', 2, '[{\"changed\": {\"fields\": [\"Categories\"]}}]', 7, 6),
(12, '2023-09-23 17:32:19.842122', '2', 'Finance As a Pillar Of Your Life.', 2, '[{\"changed\": {\"fields\": [\"Categories\"]}}]', 7, 6),
(13, '2023-09-23 17:32:27.435574', '1', 'A First Blog For Benefits of All', 2, '[{\"changed\": {\"fields\": [\"Categories\"]}}]', 7, 6),
(14, '2023-09-24 03:20:13.105628', '2', 'Health and Wellness', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 10, 6),
(15, '2023-09-24 03:20:45.384876', '1', 'Finance and Money Management', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]', 10, 6),
(16, '2023-09-24 03:21:06.392070', '3', 'Personal Development', 1, '[{\"added\": {}}]', 10, 6),
(17, '2023-09-24 03:21:25.633538', '4', 'Relationships', 1, '[{\"added\": {}}]', 10, 6),
(18, '2023-09-24 03:21:54.619275', '5', 'Career and Professional Growth', 1, '[{\"added\": {}}]', 10, 6),
(19, '2023-09-24 03:22:18.397434', '6', 'Mental Health and Psychology', 1, '[{\"added\": {}}]', 10, 6),
(20, '2023-09-24 03:22:44.954119', '7', 'Lifestyle and Leisure', 1, '[{\"added\": {}}]', 10, 6),
(21, '2023-09-24 03:23:08.460894', '8', 'Spirituality and Mindfulness', 1, '[{\"added\": {}}]', 10, 6),
(22, '2023-09-24 03:23:38.173704', '9', 'Social Issues and Advocacy', 1, '[{\"added\": {}}]', 10, 6),
(23, '2023-09-24 03:24:02.405384', '10', 'Life Transitions', 1, '[{\"added\": {}}]', 10, 6),
(24, '2023-09-24 03:37:59.965515', '4', 'Men in Focus: 5 Steps to Great Health and Wellness', 1, '[{\"added\": {}}]', 7, 6),
(25, '2023-09-24 03:48:42.771032', '5', 'Discovering and Fulfilling Your Life\'s Purpose(PART 1)', 1, '[{\"added\": {}}]', 7, 6),
(26, '2023-09-24 03:49:09.858257', '5', 'Discovering and Fulfilling Your Life\'s Purpose(PART 1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 6),
(27, '2023-09-24 03:50:00.073765', '5', 'Discovering and Fulfilling Your Life\'s Purpose(PART 1)', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 7, 6),
(28, '2023-09-24 03:59:21.581773', '6', 'Discovering and Fulfilling Your Life\'s Purpose(PART 2)', 1, '[{\"added\": {}}]', 7, 6),
(29, '2023-09-24 03:59:28.972337', '5', 'Discovering and Fulfilling Your Life\'s Purpose(PART 1)', 2, '[{\"changed\": {\"fields\": [\"Categories\"]}}]', 7, 6),
(30, '2023-09-24 04:03:36.697375', '2', 'Finance As a Pillar Of Your Life.', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 6),
(31, '2023-09-24 04:05:36.120721', '3', 'Life is a challenge', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'eblogapp', 'category'),
(8, 'eblogapp', 'comment'),
(7, 'eblogapp', 'post'),
(6, 'sessions', 'session'),
(11, 'userapp', 'quote'),
(9, 'userapp', 'userprofile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-09-22 04:04:18.821641'),
(2, 'auth', '0001_initial', '2023-09-22 04:04:19.279890'),
(3, 'admin', '0001_initial', '2023-09-22 04:04:19.384940'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-09-22 04:04:19.389947'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-22 04:04:19.389947'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-09-22 04:04:19.454447'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-09-22 04:04:19.500992'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-09-22 04:04:19.515499'),
(9, 'auth', '0004_alter_user_username_opts', '2023-09-22 04:04:19.531216'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-09-22 04:04:19.563492'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-09-22 04:04:19.578522'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-09-22 04:04:19.578522'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-09-22 04:04:19.609775'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-09-22 04:04:19.625441'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-09-22 04:04:19.641021'),
(16, 'auth', '0011_update_proxy_permissions', '2023-09-22 04:04:19.657122'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-09-22 04:04:19.672757'),
(18, 'sessions', '0001_initial', '2023-09-22 04:04:19.704049'),
(19, 'eblogapp', '0001_initial', '2023-09-22 04:24:03.790384'),
(20, 'eblogapp', '0002_comment', '2023-09-22 04:47:39.418368'),
(21, 'userapp', '0001_initial', '2023-09-23 13:21:19.743625'),
(22, 'userapp', '0002_userprofile_bio', '2023-09-23 13:25:28.773422'),
(23, 'userapp', '0003_userprofile_date_of_birth', '2023-09-23 13:26:35.406999'),
(24, 'userapp', '0004_userprofile_phone_number', '2023-09-23 13:55:33.679317'),
(25, 'userapp', '0005_alter_userprofile_bio', '2023-09-23 15:10:27.094132'),
(26, 'userapp', '0006_userprofile_email', '2023-09-23 15:26:02.468928'),
(27, 'eblogapp', '0003_category', '2023-09-23 16:52:59.086350'),
(28, 'userapp', '0007_alter_userprofile_user', '2023-09-23 16:52:59.858846'),
(29, 'eblogapp', '0004_post_categories', '2023-09-23 17:31:22.778197'),
(30, 'userapp', '0008_quote', '2023-09-24 02:38:24.772898'),
(31, 'eblogapp', '0005_post_image', '2023-09-24 03:10:03.251103');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('g9wxc71ysc3iuculkhu0bmwffm90vxe1', 'e30:1qk4iS:t8T9zupAaDo0jsdSwCUANJphaEpuGihxNBcWyKWr_Sg', '2023-10-07 15:38:44.958944'),
('mdgrqq7hppaefg0xlo75cqv64lct9sjy', 'e30:1qkF3A:3QofUuYoF8HSQHPOdwP-j0rx2vD3rgT1kTwFQhKI8o8', '2023-10-08 02:40:48.423030'),
('oec5iobhzsdfvv43ce8uvk1bf3t6dsb2', 'e30:1qk4lP:DY1h0uLoEFJaMEWWSX6kTzv8Br2BkjfyKs3qZlINsPQ', '2023-10-07 15:41:47.890388'),
('q1a47af2ydbu7azcur3do5e93qmr6zk1', 'e30:1qk0dU:etmtuNh2OXX3JkhSGGOktBvXmsUcmUAudQaS5Mb8O-Y', '2023-10-07 11:17:20.375186'),
('sil0b4czroqtvl74zrsfkzewgsndgu67', '.eJxVjDsOwyAQBe9CHSEwaz4p0_sMCNglOIlAMnYV5e6xJRdJ-2bmvZkP21r81mnxM7Ir0-zyu8WQnlQPgI9Q742nVtdljvxQ-Ek7nxrS63a6fwcl9LLXSuoMURBlhHGICbME43CI2jkSFqwMAsAp1DsAA8ZKpUCHMSeB6AT7fAHgEzdO:1qkFVp:bF5pkQR9TXJjatFLEixhPn-SJHtuoajaphzzvUENpGU', '2023-10-08 03:10:25.319056'),
('vs6bog0ba6b0856pzgtzpmrkoddyusxi', 'e30:1qk4kl:yynh5eTVTzsXUS8T4oy6T9ZKEir17SPBxT5_J5wHkhg', '2023-10-07 15:41:07.302475'),
('x795dxzhufeeenhwg1b6qqcvi0uq54uz', '.eJxVjDsOwjAQBe_iGlmOv4GSPmew1rtrHEC2FCcV4u4QKQW0b2beS0TY1hK3zkucSVxEEKffLQE-uO6A7lBvTWKr6zInuSvyoF1Ojfh5Pdy_gwK9fGtDWWVU6MExjllbZTEwJs5GOfRD4oEzmQCELrM96xFYkw0uAVuvULw_I4M5eg:1qk60f:xeHcN4x3bZ0lzpn1cAVIp8YNt_n2BB77GOhJSOnJoLU', '2023-10-07 17:01:37.726899'),
('z9l8is47cv9qht668z0gml7dvuzr0bxr', 'e30:1qk61S:KxFLTOs_CU6BHspRMEErz-un0CC6bvv7gOnBpSFzL88', '2023-10-07 17:02:26.086320'),
('zi02uwzdiet6o4pdaj6ic28arfzg0atq', '.eJxVjDsOwyAQBe9CHSEwaz4p0_sMCNglOIlAMnYV5e6xJRdJ-2bmvZkP21r81mnxM7Ir0-zyu8WQnlQPgI9Q742nVtdljvxQ-Ek7nxrS63a6fwcl9LLXSuoMURBlhHGICbME43CI2jkSFqwMAsAp1DsAA8ZKpUCHMSeB6AT7fAHgEzdO:1qkGxi:rhIJO_d60D-hMqO9iCANrZL6NEuJTIvyJ9tDCG6x6AM', '2023-10-08 04:43:18.410107');

-- --------------------------------------------------------

--
-- Table structure for table `eblogapp_category`
--

CREATE TABLE `eblogapp_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eblogapp_category`
--

INSERT INTO `eblogapp_category` (`id`, `name`, `slug`) VALUES
(1, 'Finance and Money Management', 'Finance-and-Money-Management'),
(2, 'Health and Wellness', 'boost-your-health-as-a-man'),
(3, 'Personal Development', 'Personal-Development'),
(4, 'Relationships', 'Relationships-Matter'),
(5, 'Career and Professional Growth', 'Career-and-Professional-Growth'),
(6, 'Mental Health and Psychology', 'Mental-Health-and-Psychology'),
(7, 'Lifestyle and Leisure', 'Lifestyle-and-Leisure'),
(8, 'Spirituality and Mindfulness', 'Spirituality-and-Mindfulness'),
(9, 'Social Issues and Advocacy', 'Social-Issues-and-Advocacy'),
(10, 'Life Transitions', 'Life-Transitions');

-- --------------------------------------------------------

--
-- Table structure for table `eblogapp_comment`
--

CREATE TABLE `eblogapp_comment` (
  `id` bigint(20) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(254) NOT NULL,
  `body` longtext NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eblogapp_comment`
--

INSERT INTO `eblogapp_comment` (`id`, `name`, `email`, `body`, `created_on`, `active`, `post_id`) VALUES
(1, 'Bright', 'bright1@gmail.com', 'What an impactful materials!', '2023-09-22 04:49:36.874840', 1, 2),
(2, 'Ade', 'eauyt@gmail.com', 'Bright awesome', '2023-09-22 15:02:31.547837', 1, 2),
(3, 'Paul', 'paul1@gmail.com', 'This is an awesome blog page', '2023-09-22 16:11:28.241985', 1, 2),
(4, 'Paul', 'paul1@gmail.com', 'This is an awesome blog page', '2023-09-22 16:12:10.079880', 1, 2),
(5, 'Peter', 'peter1@gmail.com', 'A very insightful post', '2023-09-23 16:40:02.710887', 1, 3),
(6, 'Bola Adeoba', 'bolaade@gmail.com', 'This is a very good post for the men', '2023-09-24 03:38:30.508576', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `eblogapp_post`
--

CREATE TABLE `eblogapp_post` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `updated_on` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `status` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eblogapp_post`
--

INSERT INTO `eblogapp_post` (`id`, `title`, `slug`, `updated_on`, `content`, `created_on`, `status`, `author_id`, `image`) VALUES
(1, 'A First Blog For Benefits of All', 'a-first-blog', '2023-09-23 17:32:27.429350', 'New and fresh to be updated', '2023-09-22 04:27:40.192149', 1, 1, NULL),
(2, 'Finance As a Pillar Of Your Life.', 'finance-as-a-pillar-of-your-life', '2023-09-24 04:03:36.640960', 'Finance serves as a fundamental pillar in the structure of one\'s life, impacting every facet of daily existence. It extends beyond managing money; it\'s about securing stability, realizing dreams, and building a secure future. With prudent financial management, individuals can achieve their aspirations, whether it\'s homeownership, education, or retirement. It also provides a safety net during unforeseen crises, reducing stress and ensuring a comfortable life. In essence, finance is the cornerstone that empowers individuals to make choices, seize opportunities, and ultimately craft a life of financial well-being and fulfillment. It is not just a means to an end but a key to a prosperous and meaningful life.', '2023-09-22 04:42:46.143939', 1, 1, 'blog_images/finance.jpg'),
(3, 'Life is a challenge', 'life-is-a-challenge', '2023-09-24 04:05:36.107196', 'Life is a challenge, an intricate journey filled with twists and turns that test our mettle and resilience. From the moment we are born, we are thrust into a world of uncertainties, where every day presents new obstacles to overcome. Challenges come in various forms: personal, professional, physical, and emotional, each demanding a unique set of skills and strategies.\r\n\r\nOne of life\'s greatest challenges is the constant pursuit of self-improvement. It pushes us to step out of our comfort zones, confront our fears, and embrace change. Whether it\'s pursuing higher education, starting a family, or embarking on a new career path, these challenges force us to grow and evolve.\r\n\r\nRelationships, too, are a formidable challenge. Nurturing connections with others requires empathy, patience, and compromise. It\'s a delicate balancing act where we must navigate through conflicts and disagreements, all while striving to maintain meaningful bonds.\r\n\r\nOn a broader scale, societal and global challenges, such as climate change, inequality, and political unrest, confront us collectively. These issues demand our collective efforts, collaboration, and innovation to find solutions for a better future.\r\n\r\nYet, it is through these challenges that we find purpose and meaning in life. They test our limits, teach us resilience, and lead us to self-discovery. Embracing life\'s challenges allows us to become the best versions of ourselves and leaves us with a profound sense of accomplishment when we conquer them. In the end, life\'s challenges are not obstacles; they are opportunities for growth and transformation.', '2023-09-23 16:39:27.732524', 1, 1, 'blog_images/challenge.jpg'),
(4, 'Men in Focus: 5 Steps to Great Health and Wellness', 'men-in-focus-5-steps-to-great-health-and-wellness', '2023-09-24 03:37:59.948206', 'In our fast-paced world, health and wellness have become paramount concerns, and this is especially true for men. Amidst the hustle and bustle of daily life, it\'s easy for men to neglect their well-being. However, taking proactive steps towards health and wellness is essential for leading a fulfilling life. Here are five crucial steps that men can incorporate into their routine to achieve optimal health and wellness.\r\n\r\n<p>\r\n<b>Physical Activity:</b> Regular exercise is vital for overall wellness. Engaging in a mix of aerobic, strength, and flexibility exercises helps improve cardiovascular health, build muscle, and reduce the risk of chronic diseases. Aim for at least 150 minutes of moderate-intensity exercise per week.\r\n</p>\r\n\r\n<p>\r\n<b>Stress Management:</b> Chronic stress can take a toll on physical and mental health. Men should practice stress-reduction techniques such as meditation, mindfulness, deep breathing, or pursuing hobbies to relax and unwind.\r\n</p>\r\n\r\n<p>\r\n<b>Regular Check-ups:</b> Don\'t wait for symptoms to manifest. Regular check-ups and health screenings can detect potential issues early, allowing for timely intervention. Men should prioritize annual physical exams and screenings for conditions like high blood pressure, cholesterol, and cancer.\r\n</p>\r\n\r\n<p>\r\n<b>Adequate Sleep:</b> Quality sleep is essential for recovery and overall health. Men should aim for 7-9 hours of uninterrupted sleep per night. Establishing a consistent sleep schedule and creating a relaxing bedtime routine can improve sleep quality.\r\n</p>', '2023-09-24 03:37:59.958051', 1, 6, 'blog_images/menswelless.jpg'),
(5, 'Discovering and Fulfilling Your Life\'s Purpose(PART 1)', 'discovering-and-fulfilling-your-lifes-purposepart-1', '2023-09-24 03:59:28.962018', 'Have you ever pondered your life\'s purpose? Many people live without a clear sense of direction, as if they\'re adrift in a purposeless existence. Yet, this couldn\'t be further from the truth. Every person is born with a unique purpose waiting to be uncovered.\r\n  <p>\r\n    Often, people expend their energies chasing resources and societal expectations without pausing to explore and fulfill their true purpose. This can lead to a lifetime of aimless wandering, shadowing those who have discovered and are actively pursuing their calling.\r\n  </p>\r\n  <p>\r\n    Regret is a heavy burden carried by those who never unearth their purpose, or only do so later in life. It prompts a crucial question: What have I come to achieve on this Earth? Family, wealth, career success, and travel are all valuable aspects of life, but they aren\'t the core purpose of our existence. Instead, they are instruments to assist us in living our purpose to the fullest.\r\n  </p>\r\n  <p>\r\n    Each individual is endowed with a unique gift—a key to unlocking their life\'s purpose. Identifying this gift is essential for finding happiness. Money may provide temporary satisfaction, but it can\'t secure lasting happiness. True contentment comes from engaging in activities that bring inner joy, regardless of external rewards.\r\n  </p>\r\n  <p>\r\n    When your gift aligns with your life\'s purpose, you\'ll experience a fulfilling existence. The wisdom of ages reminds us of life\'s fleeting nature. However, when you discover your purpose, even as you age, you can look back with contentment, knowing you\'ve made a meaningful impact through purposeful living.\r\n  </p>', '2023-09-24 03:48:42.764058', 1, 6, 'blog_images/purpose.jpg'),
(6, 'Discovering and Fulfilling Your Life\'s Purpose(PART 2)', 'discovering-and-fulfilling-your-lifes-purposepart-2', '2023-09-24 03:59:21.563833', 'Embarking on a journey to find your life\'s purpose is a profound and transformative quest that leads to true fulfillment.\r\n\r\n<p>\r\n  <b>Life\'s Purpose Unveiled:</b> Have you ever pondered your life\'s purpose? It\'s essential to pause and explore your unique calling. Regret often follows a life without a clear purpose.\r\n</p>\r\n\r\n<p>\r\n  <b>Beyond Material Pursuits:</b> Many focus on chasing resources and societal expectations, missing the core purpose of life. Family, wealth, and success are essential, but they\'re tools to live your purpose, not the purpose itself.\r\n</p>\r\n\r\n<p>\r\n  <b>The Gift Within:</b> Every individual possesses a unique gift, a key to unlocking their life\'s purpose. Identifying this gift is crucial for finding lasting happiness and contentment.\r\n</p>\r\n\r\n<p>\r\n  <b>Fulfillment Through Purpose:</b> When your gift aligns with your life\'s purpose, you\'ll experience a fulfilling existence. Embrace your purpose, and even as you age, you\'ll look back with contentment, knowing you\'ve made a meaningful impact through purposeful living.\r\n</p>', '2023-09-24 03:59:21.570809', 1, 6, 'blog_images/purpose_QFsFBUF.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `eblogapp_post_categories`
--

CREATE TABLE `eblogapp_post_categories` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eblogapp_post_categories`
--

INSERT INTO `eblogapp_post_categories` (`id`, `post_id`, `category_id`) VALUES
(3, 1, 2),
(2, 2, 1),
(1, 3, 1),
(4, 4, 2),
(7, 5, 8),
(6, 6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `userapp_quote`
--

CREATE TABLE `userapp_quote` (
  `id` bigint(20) NOT NULL,
  `text` longtext NOT NULL,
  `author` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userapp_userprofile`
--

CREATE TABLE `userapp_userprofile` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bio` longtext NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userapp_userprofile`
--

INSERT INTO `userapp_userprofile` (`id`, `user_id`, `bio`, `date_of_birth`, `phone_number`, `email`) VALUES
(1, 3, '', NULL, '', ''),
(2, 4, 'This is my Bio Page and I love to Write Blogs', '1980-09-01', '09133554466', 'olashnj@gmail.com'),
(3, 5, 'This is my page and I like it!', '2003-07-09', '09055663388', 'bright@gmail.com'),
(4, 6, '', NULL, '', ''),
(5, 7, 'This is my blog and its cool and I really will love to keep visiting.', '1989-01-01', '08044221188', 'blog5@gmail.com');

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
-- Indexes for table `eblogapp_category`
--
ALTER TABLE `eblogapp_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `eblogapp_comment`
--
ALTER TABLE `eblogapp_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eblogapp_comment_post_id_5b85fbbb_fk_eblogapp_post_id` (`post_id`);

--
-- Indexes for table `eblogapp_post`
--
ALTER TABLE `eblogapp_post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `eblogapp_post_author_id_f31e7d31_fk_auth_user_id` (`author_id`);

--
-- Indexes for table `eblogapp_post_categories`
--
ALTER TABLE `eblogapp_post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eblogapp_post_categories_post_id_category_id_5b9aa6e8_uniq` (`post_id`,`category_id`),
  ADD KEY `eblogapp_post_catego_category_id_86b01cda_fk_eblogapp_` (`category_id`);

--
-- Indexes for table `userapp_quote`
--
ALTER TABLE `userapp_quote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userapp_userprofile`
--
ALTER TABLE `userapp_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `eblogapp_category`
--
ALTER TABLE `eblogapp_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `eblogapp_comment`
--
ALTER TABLE `eblogapp_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `eblogapp_post`
--
ALTER TABLE `eblogapp_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `eblogapp_post_categories`
--
ALTER TABLE `eblogapp_post_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userapp_quote`
--
ALTER TABLE `userapp_quote`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userapp_userprofile`
--
ALTER TABLE `userapp_userprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- Constraints for table `eblogapp_comment`
--
ALTER TABLE `eblogapp_comment`
  ADD CONSTRAINT `eblogapp_comment_post_id_5b85fbbb_fk_eblogapp_post_id` FOREIGN KEY (`post_id`) REFERENCES `eblogapp_post` (`id`);

--
-- Constraints for table `eblogapp_post`
--
ALTER TABLE `eblogapp_post`
  ADD CONSTRAINT `eblogapp_post_author_id_f31e7d31_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `eblogapp_post_categories`
--
ALTER TABLE `eblogapp_post_categories`
  ADD CONSTRAINT `eblogapp_post_catego_category_id_86b01cda_fk_eblogapp_` FOREIGN KEY (`category_id`) REFERENCES `eblogapp_category` (`id`),
  ADD CONSTRAINT `eblogapp_post_categories_post_id_cd1ff04b_fk_eblogapp_post_id` FOREIGN KEY (`post_id`) REFERENCES `eblogapp_post` (`id`);

--
-- Constraints for table `userapp_userprofile`
--
ALTER TABLE `userapp_userprofile`
  ADD CONSTRAINT `userapp_userprofile_user_id_e81156a2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
