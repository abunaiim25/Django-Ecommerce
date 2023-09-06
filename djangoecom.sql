-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2023 at 06:51 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djangoecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add cart', 9, 'add_cart'),
(34, 'Can change cart', 9, 'change_cart'),
(35, 'Can delete cart', 9, 'delete_cart'),
(36, 'Can view cart', 9, 'view_cart'),
(37, 'Can add wishlist', 10, 'add_wishlist'),
(38, 'Can change wishlist', 10, 'change_wishlist'),
(39, 'Can delete wishlist', 10, 'delete_wishlist'),
(40, 'Can view wishlist', 10, 'view_wishlist'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add order items', 12, 'add_orderitems'),
(46, 'Can change order items', 12, 'change_orderitems'),
(47, 'Can delete order items', 12, 'delete_orderitems'),
(48, 'Can view order items', 12, 'view_orderitems'),
(49, 'Can add profile', 13, 'add_profile'),
(50, 'Can change profile', 13, 'change_profile'),
(51, 'Can delete profile', 13, 'delete_profile'),
(52, 'Can view profile', 13, 'view_profile');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$cM26ypzPnJNoUA8QrlOwff$fsclczunlnHwXKagLVu+VUs9Kos1NChom++KwofjWXg=', '2023-07-13 20:02:51.021179', 1, 'admin', '', '', 'naiimabu25@gmail.com', 1, 1, '2023-07-13 20:01:10.033400'),
(2, 'pbkdf2_sha256$600000$xAsHBvkgcfsNHGgJzO3bTx$kYKSK9mv9YSAGICJ1gtytBHVw7ewAESkMoO6sMJkxI4=', '2023-08-25 12:39:52.253818', 0, 'Naiim', '', '', 'naiimabu25@gmail.com', 0, 1, '2023-07-19 12:17:47.026010'),
(3, 'pbkdf2_sha256$600000$1D54W9ny72Kh6jl0zS9U4o$ThyFL+HtoRQURb1SFOQHKViMm3CCEqkYTPxnwPevfYo=', NULL, 0, 'Rayhan', '', '', 'abu15-13860@diu.edu.bd', 0, 1, '2023-07-19 12:28:38.499088'),
(4, 'pbkdf2_sha256$600000$2M3bXkqziuoYgepvIxkHti$rHBefFDNd3mHkYGffDlfhNj7GWEcEQaIo+SMzDDkgnc=', NULL, 0, 'Sakib', '', '', 'sakib@gmail.com', 0, 1, '2023-07-19 15:21:53.028112'),
(5, 'pbkdf2_sha256$600000$nQCHw89szy6sQJNVWC72xO$ZAnW+k9guX5XNNhLr2ZUYy/FwUNDlOrPGzS2y5Ui55k=', '2023-07-24 15:59:49.160675', 1, 'abunaiim', '', '', 'abunaiim@gmail.com', 1, 1, '2023-07-24 15:58:53.887840'),
(6, 'pbkdf2_sha256$600000$Ww5MNzpkRoJ6SyvigKDCt0$+sBT6W/wN3U+5J4+xRqIM6bn/h4u4ICMNI5swgk4KXY=', '2023-08-17 10:33:07.634766', 1, 'admin2', 'Rayhan', 'Siddique', 'admin2@gmail.com', 1, 1, '2023-08-17 10:32:21.576916');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-07-13 20:09:53.136074', '1', 'Asus laptop', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-07-13 20:11:53.759858', '1', 'Laptop', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(3, '2023-07-13 20:14:49.860678', '1', 'HP Laptop', 1, '[{\"added\": {}}]', 8, 1),
(4, '2023-07-15 09:26:37.484536', '1', 'Laptop', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1),
(5, '2023-07-15 09:26:52.253962', '1', 'Laptop', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 7, 1),
(6, '2023-07-15 09:58:44.893227', '2', 'Watch', 1, '[{\"added\": {}}]', 7, 1),
(7, '2023-07-17 14:16:28.257790', '1', 'HP Laptop', 2, '[{\"changed\": {\"fields\": [\"Tag\"]}}]', 8, 1),
(8, '2023-07-24 16:02:04.169231', '2', 'Watch 12', 1, '[{\"added\": {}}]', 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'store', 'cart'),
(7, 'store', 'category'),
(11, 'store', 'order'),
(12, 'store', 'orderitems'),
(8, 'store', 'product'),
(13, 'store', 'profile'),
(10, 'store', 'wishlist');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-13 19:58:03.429211'),
(2, 'auth', '0001_initial', '2023-07-13 19:58:04.695710'),
(3, 'admin', '0001_initial', '2023-07-13 19:58:04.957146'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-07-13 19:58:04.967119'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-13 19:58:04.981236'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-07-13 19:58:05.096328'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-07-13 19:58:05.281616'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-07-13 19:58:05.314135'),
(9, 'auth', '0004_alter_user_username_opts', '2023-07-13 19:58:05.327118'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-07-13 19:58:05.431963'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-07-13 19:58:05.443402'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-07-13 19:58:05.457775'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-07-13 19:58:05.483707'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-07-13 19:58:05.508446'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-07-13 19:58:05.536534'),
(16, 'auth', '0011_update_proxy_permissions', '2023-07-13 19:58:05.549454'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-07-13 19:58:05.577915'),
(18, 'sessions', '0001_initial', '2023-07-13 19:58:05.645349'),
(19, 'store', '0001_initial', '2023-07-13 19:58:05.819460'),
(20, 'store', '0002_cart', '2023-07-19 17:29:58.324448'),
(21, 'store', '0003_wishlist', '2023-07-30 13:29:51.692509'),
(22, 'store', '0004_order_wishlist_created_at_orderitems', '2023-08-17 15:31:34.145578'),
(23, 'store', '0005_profile', '2023-08-18 14:35:17.457450');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ayqcjups4bh5htj3aqtlaxvvpvd22iob', '.eJxVjDsOwjAQBe_iGln-G1PS5wzWrneDA8iR4qRC3B0ipYD2zcx7iQzbWvPWeckTiYsw4vS7IZQHtx3QHdptlmVu6zKh3BV50C6Hmfh5Pdy_gwq9fmuNAV0xOtBZa5MAbRiVVQWLjT4ZhY40KQ1kkV1wyDFF70ZPGBMn8OL9AdXfN8I:1qOxXc:mVPFiaxEWePddpdFdVJ8BTxqWuOnsO742LVA05cVpm0', '2023-08-10 09:44:16.779264'),
('fenps2sdnafmthnjfwauifk4sh9aaa22', '.eJxVjDsOwjAQBe_iGln-G1PS5wzWrneDA8iR4qRC3B0ipYD2zcx7iQzbWvPWeckTiYsw4vS7IZQHtx3QHdptlmVu6zKh3BV50C6Hmfh5Pdy_gwq9fmuNAV0xOtBZa5MAbRiVVQWLjT4ZhY40KQ1kkV1wyDFF70ZPGBMn8OL9AdXfN8I:1qZW6S:FXqM6BC3-zxfLZH1HFns5_Vh1GP-7F0bibFn-zViItk', '2023-09-08 12:39:52.261601');

-- --------------------------------------------------------

--
-- Table structure for table `store_cart`
--

CREATE TABLE `store_cart` (
  `id` bigint(20) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_cart`
--

INSERT INTO `store_cart` (`id`, `product_qty`, `created_at`, `product_id`, `user_id`) VALUES
(2, 2, '2023-07-26 13:35:29.385321', 1, 5),
(3, 2, '2023-07-26 13:38:12.819127', 2, 5),
(12, 1, '2023-08-07 13:48:21.821187', 1, 2),
(14, 3, '2023-08-08 14:31:38.956314', 2, 2),
(19, 1, '2023-08-18 16:40:00.144086', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `store_category`
--

CREATE TABLE `store_category` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `meta_title` varchar(150) NOT NULL,
  `meta_keywords` varchar(150) NOT NULL,
  `meta_description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_category`
--

INSERT INTO `store_category` (`id`, `slug`, `name`, `image`, `description`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`) VALUES
(1, 'laptop', 'Laptop', 'uploads/20230714020953Capture.PNG', 'hello laptop laptop laptop laptop', 0, 0, 'Laptop', 'laptop, new  laptop', 'laptop, new  laptop, laptop, new  laptop', '2023-07-13 20:09:53.135053'),
(2, 'watch', 'Watch', 'uploads/20230715155844IMG_9716-01-01.jpeg', 'WatchWatchWatch', 0, 0, 'Watch', 'Watch', 'WatchWatchWatch', '2023-07-15 09:58:44.891213');

-- --------------------------------------------------------

--
-- Table structure for table `store_order`
--

CREATE TABLE `store_order` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(150) NOT NULL,
  `lname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `pincode` varchar(150) NOT NULL,
  `totalprice` double NOT NULL,
  `payment_mode` varchar(150) NOT NULL,
  `payment_id` varchar(250) DEFAULT NULL,
  `status` varchar(150) NOT NULL,
  `message` longtext DEFAULT NULL,
  `tracking_no` varchar(150) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_order`
--

INSERT INTO `store_order` (`id`, `fname`, `lname`, `email`, `phone`, `address`, `city`, `state`, `country`, `pincode`, `totalprice`, `payment_mode`, `payment_id`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`, `user_id`) VALUES
(9, '1', '1', 'abu15-13860@diu.edu.bd', '1', '1', '1', '1', '1', '1', 29900, 'COD', NULL, 'Pending', NULL, 'naiim5370070', '2023-08-18 13:22:16.159029', '2023-08-18 13:22:16.159029', 6),
(10, 'abu', 'naiim', 'naiimabu25@gmail.com', '01316057864', 'Keranigonj', 'Dhaka', 'block B', 'Bangladesh', '1310', 29000, 'COD', NULL, 'Pending', NULL, 'naiim7805033', '2023-08-18 13:35:46.066982', '2023-08-18 13:35:46.066982', 6),
(11, 'Rayhan', 'Siddique', 'admin2@gmail.com', '01316057864', 'Keranigonj', 'Dhaka', 'block B', 'Bangladesh', '1310', 900, 'COD', NULL, 'Pending', NULL, 'naiim2486033', '2023-08-18 16:39:15.519074', '2023-08-18 16:39:15.519074', 6);

-- --------------------------------------------------------

--
-- Table structure for table `store_orderitems`
--

CREATE TABLE `store_orderitems` (
  `id` bigint(20) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_orderitems`
--

INSERT INTO `store_orderitems` (`id`, `price`, `quantity`, `order_id`, `product_id`) VALUES
(1, 900, 1, 9, 2),
(2, 29000, 1, 9, 1),
(3, 29000, 1, 10, 1),
(4, 900, 1, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `small_description` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `orginal_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `tag` varchar(150) NOT NULL,
  `meta_title` varchar(150) NOT NULL,
  `meta_keywords` varchar(150) NOT NULL,
  `meta_description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `slug`, `name`, `product_image`, `small_description`, `description`, `quantity`, `orginal_price`, `selling_price`, `status`, `trending`, `tag`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `category_id`) VALUES
(1, 'hp-laptop', 'HP Laptop', 'uploads/20230714021449IMG_20180707_104649.jpg', '4 gb ram', '4 gb ram, 500 gb ssd', 1, 30000, 29000, 0, 1, 'Hot', 'Hp laptop', 'Hp laptop, best Hp laptop', 'Hp laptop, best Hp laptop, Hp laptop, best Hp laptop', '2023-07-13 20:14:49.858683', 1),
(2, 'watch', 'Watch 12', 'uploads/20230724220204IMG_20180709_205722-01.jpeg', 'Watch 12', 'Watch 12Watch 12', 3, 1000, 900, 0, 1, 'hot', 'Watch 12', 'Watch 12', 'Watch 12', '2023-07-24 16:02:04.168231', 2);

-- --------------------------------------------------------

--
-- Table structure for table `store_profile`
--

CREATE TABLE `store_profile` (
  `id` bigint(20) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `pincode` varchar(150) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_profile`
--

INSERT INTO `store_profile` (`id`, `phone`, `address`, `city`, `state`, `country`, `pincode`, `user_id`) VALUES
(1, '01316057864', 'Keranigonj', 'Dhaka', 'block B', 'Bangladesh', '1310', 6);

-- --------------------------------------------------------

--
-- Table structure for table `store_wishlist`
--

CREATE TABLE `store_wishlist` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `store_cart`
--
ALTER TABLE `store_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_cart_product_id_b219c080_fk_store_product_id` (`product_id`),
  ADD KEY `store_cart_user_id_99e99107_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_order`
--
ALTER TABLE `store_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_order_user_id_ae5f7a5f_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `store_orderitems`
--
ALTER TABLE `store_orderitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_orderitems_order_id_78989df1_fk_store_order_id` (`order_id`),
  ADD KEY `store_orderitems_product_id_8881d2a3_fk_store_product_id` (`product_id`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_product_category_id_574bae65_fk_store_category_id` (`category_id`);

--
-- Indexes for table `store_profile`
--
ALTER TABLE `store_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_profile_user_id_d67604a1_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `store_wishlist`
--
ALTER TABLE `store_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_wishlist_product_id_8af1333d_fk_store_product_id` (`product_id`),
  ADD KEY `store_wishlist_user_id_afcc4e88_fk_auth_user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `store_cart`
--
ALTER TABLE `store_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `store_category`
--
ALTER TABLE `store_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_order`
--
ALTER TABLE `store_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `store_orderitems`
--
ALTER TABLE `store_orderitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_profile`
--
ALTER TABLE `store_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_wishlist`
--
ALTER TABLE `store_wishlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- Constraints for table `store_cart`
--
ALTER TABLE `store_cart`
  ADD CONSTRAINT `store_cart_product_id_b219c080_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_cart_user_id_99e99107_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_order`
--
ALTER TABLE `store_order`
  ADD CONSTRAINT `store_order_user_id_ae5f7a5f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_orderitems`
--
ALTER TABLE `store_orderitems`
  ADD CONSTRAINT `store_orderitems_order_id_78989df1_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`),
  ADD CONSTRAINT `store_orderitems_product_id_8881d2a3_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);

--
-- Constraints for table `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_product_category_id_574bae65_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`);

--
-- Constraints for table `store_profile`
--
ALTER TABLE `store_profile`
  ADD CONSTRAINT `store_profile_user_id_d67604a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_wishlist`
--
ALTER TABLE `store_wishlist`
  ADD CONSTRAINT `store_wishlist_product_id_8af1333d_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_wishlist_user_id_afcc4e88_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
