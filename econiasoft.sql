-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2024 at 08:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `econiasoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `supplier_code` varchar(255) NOT NULL,
  `tax_office` varchar(255) DEFAULT NULL,
  `tax_number` varchar(255) NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_channel` varchar(255) DEFAULT NULL,
  `payment_account_number` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `mobile_phone_notification` longtext DEFAULT NULL,
  `outgoing_einvoice_sms_notification` tinyint(1) NOT NULL DEFAULT 0,
  `sent_sms_earchive_invoice` tinyint(1) NOT NULL DEFAULT 0,
  `sent_email_earchive_invoice` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(255) DEFAULT NULL,
  `web_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gib_registration_date` varchar(255) DEFAULT NULL,
  `gib_receiver_alias` varchar(255) DEFAULT NULL,
  `gib_mailbox_label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `tax_number` varchar(255) DEFAULT NULL,
  `tax_office` varchar(255) DEFAULT NULL,
  `mersis_number` varchar(255) DEFAULT NULL,
  `business_registry_number` varchar(255) DEFAULT NULL,
  `operating_center` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `gib_registration_data` date DEFAULT NULL,
  `gib_sender_alias` varchar(255) DEFAULT NULL,
  `gib_receiver_alias` varchar(255) DEFAULT NULL,
  `e-signature_method` varchar(255) DEFAULT NULL,
  `date_of_last_update` date DEFAULT NULL,
  `last_update_user` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `tax_number`, `tax_office`, `mersis_number`, `business_registry_number`, `operating_center`, `country`, `city`, `address`, `email`, `phone_number`, `website`, `gib_registration_data`, `gib_sender_alias`, `gib_receiver_alias`, `e-signature_method`, `date_of_last_update`, `last_update_user`, `created_at`, `updated_at`) VALUES
(1, 'MI Tech', '1212', '1111', '1111', '234521', 'Operating Center', 'Argentina', 'Chaco', 'Some address here.', 'mitech@email.com', '11111111', 'www.testing.com', NULL, 'Sender Alias', 'Receiver Alia', 'The signature method', NULL, NULL, '2024-08-14 04:47:38', '2024-08-14 04:47:38'),
(2, 'ABSheikh Technologies', '12345', '029737', '2222', '2222442', 'Bauchi', 'Nigeria', 'Bauchi', 'Bauchi State', 'absheikhnet@gmail.com', '07039113840', 'www.bauchi.go', NULL, 'ABSheikh', 'ABSheikh Tech', 'Azare', NULL, NULL, '2024-08-16 20:20:14', '2024-08-16 20:20:14'),
(3, 'Yadav and Sons', '100000', '10', '10', '2343223123', '2233333432', 'India', 'Uttar Pradesh', 'asdasdasdasdasda', 'yabhi1205@outlook.com', '08791292122', 'abhinavyadav.xyz', NULL, '1234567890-23212321211111111111111', 'Abhinav Yadav', 'money', NULL, NULL, '2024-10-02 06:24:45', '2024-10-02 06:24:45');

-- --------------------------------------------------------

--
-- Table structure for table `company_user`
--

CREATE TABLE `company_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_user`
--

INSERT INTO `company_user` (`user_id`, `company_id`) VALUES
(2, 1),
(3, 1),
(4, 2),
(5, 1),
(6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `become_partner` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `message`, `become_partner`, `created_at`, `updated_at`) VALUES
(1, 'Aliyu', 'M', 'user11@email.com', '23456789078', 'u', 0, '2024-09-05 14:47:26', '2024-09-05 14:47:26'),
(2, 'Lawan', 'Aji', 'lawanmustaphaaji2015@gmail.com', '08163649865', 'ss', 0, '2024-09-10 11:27:09', '2024-09-10 11:27:09'),
(3, 'Lawan', 'Aji', 'lawanmustaphaaji2015@gmail.com', '08163649865', 'hello world', 0, '2024-09-10 11:35:17', '2024-09-10 11:35:17'),
(4, 'Lawan', 'Aji', 'lawanmustaphaaji2015@gmail.com', '08163649865', 'hello world', 0, '2024-09-10 11:35:27', '2024-09-10 11:35:27'),
(5, 'Lawan', 'Aji', 'lawanmustaphaaji2015@gmail.com', '08163649865', 'hello world', 0, '2024-09-10 13:42:37', '2024-09-10 13:42:37'),
(6, 'Lawan', 'Aji', 'lawanmustaphaaji2015@gmail.com', '08163649865', 'hello world', 1, '2024-09-10 13:42:46', '2024-09-10 13:42:46'),
(7, 'Lawan', 'Aji', 'lawanmustaphaaji2015@gmail.com', '08163649865', 'hello world', 1, '2024-09-10 13:42:47', '2024-09-10 13:42:47'),
(8, 'Lawan', 'Aji', 'lawanmustaphaaji2015@gmail.com', '08163649865', 'hello world', 1, '2024-09-10 13:42:48', '2024-09-10 13:42:48'),
(9, 'Lawan', 'Aji', 'lawanmustaphaaji2015@gmail.com', '08163649865', 'qqqqqqqq', 0, '2024-09-10 13:43:04', '2024-09-10 13:43:04'),
(10, 'Lawan', 'Aji', 'lawanmustaphaaji2015@gmail.com', '08163649865', 'qqqqqq', 1, '2024-09-10 13:43:35', '2024-09-10 13:43:35'),
(11, 'Lawan', 'Aji', 'lawanmustaphaaji2015@gmail.com', '08163649865', 'qqqqqq', 1, '2024-09-10 13:44:33', '2024-09-10 13:44:33'),
(12, 'Lawan', 'Aji', 'lawanmustaphaaji2015@gmail.com', '08163649865', 'qqqqqq', 1, '2024-09-10 13:45:07', '2024-09-10 13:45:07'),
(13, 'Lawan', 'Aji', 'lawanmustaphaaji2015@gmail.com', '08163649865', 'qqqqqq', 1, '2024-09-10 13:46:36', '2024-09-10 13:46:36'),
(14, 'Lawan', 'Aji', 'lawanmustaphaaji2015@gmail.com', '08163649865', 'qqqq', 0, '2024-09-10 14:03:42', '2024-09-10 14:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'TRY', 'Türk Lirası', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(2, 'USD', 'Amerikan Doları', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(3, 'EUR', 'Euro', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(4, 'GBP', 'İngiliz Sterlini', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(5, 'JPY', 'Japon Yeni', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(6, 'RUB', 'Rus Rublesi', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(7, 'CNY', 'Çin Yuanı', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(8, 'INR', 'Hindistan Rupisi', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(9, 'AUD', 'Avustralya Doları', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(10, 'CAD', 'Kanada Doları', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(11, 'CHF', 'İsviçre Frangı', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(12, 'SEK', 'İsveç Kronu', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(13, 'NOK', 'Norveç Kronu', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(14, 'DKK', 'Danimarka Kronu', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(15, 'SAR', 'Suudi Arabistan Riyali', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(16, 'QAR', 'Katar Riyali', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(17, 'AED', 'Birleşik Arap Emirlikleri Dirhemi', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(18, 'KWD', 'Kuveyt Dinarı', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(19, 'BHD', 'Bahreyn Dinarı', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(20, 'OMR', 'Umman Riyali', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(21, 'JOD', 'Ürdün Dinarı', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(22, 'ILS', 'İsrail Şekeli', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(23, 'ZAR', 'Güney Afrika Randı', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(24, 'BRL', 'Brezilya Reali', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(25, 'ARS', 'Arjantin Pezosu', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(26, 'MXN', 'Meksika Pezosu', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(27, 'COP', 'Kolombiya Pezosu', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(28, 'CLP', 'Şili Pezosu', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(29, 'PEN', 'Peru Solu', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(30, 'EGP', 'Mısır Lirası', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(31, 'ZMW', 'Zambiya Kvaçası', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(32, 'KES', 'Kenya Şilini', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(33, 'GHS', 'Gana Sedisi', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(34, 'NGN', 'Nijerya Nairası', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(35, 'MAD', 'Fas Dirhemi', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(36, 'TND', 'Tunus Dinarı', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(37, 'DZD', 'Cezayir Dinarı', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(38, 'LYD', 'Libya Dinarı', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(39, 'SYP', 'Suriye Lirası', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(40, 'IQD', 'Irak Dinarı', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(41, 'LBP', 'Lübnan Lirası', '2024-08-13 12:07:44', '2024-08-13 12:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `edelivery_note_despatch_type`
--

CREATE TABLE `edelivery_note_despatch_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `edelivery_note_despatch_type`
--

INSERT INTO `edelivery_note_despatch_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Despatching', '2024-08-13 12:07:44', '2024-08-13 12:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `edelivery_note_driver_info`
--

CREATE TABLE `edelivery_note_driver_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `tckn` varchar(255) DEFAULT NULL,
  `edelivery_note_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `edelivery_note_driver_info`
--

INSERT INTO `edelivery_note_driver_info` (`id`, `name`, `surname`, `tckn`, `edelivery_note_id`, `created_at`, `updated_at`) VALUES
(1, 'D1', 'DS1', '232', 1, '2024-08-14 05:17:59', '2024-08-14 05:17:59'),
(2, 'D1', 'DS1', '232', 2, '2024-08-14 05:18:18', '2024-08-14 05:18:18'),
(6, 'User22', 'DS1', '23', 6, '2024-08-21 09:41:05', '2024-08-21 09:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `edelivery_note_invoice_attachments`
--

CREATE TABLE `edelivery_note_invoice_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_url` varchar(255) DEFAULT NULL,
  `edelivery_note_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `edelivery_note_invoice_scenario`
--

CREATE TABLE `edelivery_note_invoice_scenario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `edelivery_note_invoice_scenario`
--

INSERT INTO `edelivery_note_invoice_scenario` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Basic', '2024-08-13 12:07:44', '2024-08-13 12:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `edelivery_note_products`
--

CREATE TABLE `edelivery_note_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_service` varchar(255) DEFAULT NULL,
  `quantity_one` decimal(10,5) NOT NULL,
  `unit_id_one` bigint(20) UNSIGNED NOT NULL,
  `quantity_two` decimal(10,5) NOT NULL,
  `unit_id_two` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `product_amount` decimal(10,2) DEFAULT NULL,
  `edelivery_note_id` bigint(20) UNSIGNED NOT NULL,
  `product_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `edelivery_note_products`
--

INSERT INTO `edelivery_note_products` (`id`, `product_service`, `quantity_one`, `unit_id_one`, `quantity_two`, `unit_id_two`, `price`, `product_amount`, `edelivery_note_id`, `product_category_id`, `product_subcategory_id`, `created_at`, `updated_at`) VALUES
(1, 'Product', 5.00000, 1, 11.00000, 2, 12000.00, 22.00, 1, 1, NULL, '2024-08-14 05:17:59', '2024-08-14 05:17:59'),
(2, 'Product', 5.00000, 1, 11.00000, 2, 12000.00, 22.00, 2, 1, NULL, '2024-08-14 05:18:18', '2024-08-14 05:18:18'),
(6, 'Product', 33.00000, 3, 11.00000, 3, 11.00, 22.00, 6, 3, NULL, '2024-08-21 09:41:05', '2024-08-21 09:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `edelivery_note_submission_type`
--

CREATE TABLE `edelivery_note_submission_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `edelivery_note_submission_type`
--

INSERT INTO `edelivery_note_submission_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'e-Despatch', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(2, 'e-Archive', '2024-08-13 12:07:44', '2024-08-13 12:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `edelivery_note_table`
--

CREATE TABLE `edelivery_note_table` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_uuid` varchar(255) NOT NULL,
  `submission_type_id` bigint(20) UNSIGNED NOT NULL,
  `despatch_date` timestamp NULL DEFAULT NULL,
  `despatch_id` varchar(255) DEFAULT NULL,
  `despatch_type_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_scenario_id` bigint(20) UNSIGNED NOT NULL,
  `currency_unit_id` bigint(20) UNSIGNED NOT NULL,
  `carrier_title` varchar(255) DEFAULT NULL,
  `carrier_tin` varchar(255) DEFAULT NULL,
  `vehicle_plate_number` varchar(255) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `wild_card1` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_tax_number` varchar(255) DEFAULT NULL,
  `receiver_gib_postacute` varchar(255) DEFAULT NULL,
  `receiver_tax_office` varchar(255) DEFAULT NULL,
  `receiver_country` varchar(255) DEFAULT NULL,
  `receiver_city` varchar(255) DEFAULT NULL,
  `receiver_destrict` varchar(255) DEFAULT NULL,
  `receiver_address` longtext DEFAULT NULL,
  `receiver_mobile_number` varchar(255) DEFAULT NULL,
  `real_buyer` varchar(255) DEFAULT NULL,
  `buyer_tax_number` varchar(255) DEFAULT NULL,
  `buyer_tax_admin` varchar(255) DEFAULT NULL,
  `buyer_tax_office` varchar(255) DEFAULT NULL,
  `buyer_country` varchar(255) DEFAULT NULL,
  `buyer_city` varchar(255) DEFAULT NULL,
  `buyer_destrict` varchar(255) DEFAULT NULL,
  `buyer_address` longtext DEFAULT NULL,
  `real_seller` varchar(255) DEFAULT NULL,
  `seller_tax_number` varchar(255) DEFAULT NULL,
  `seller_tax_admin` varchar(255) DEFAULT NULL,
  `seller_tax_office` varchar(255) DEFAULT NULL,
  `seller_country` varchar(255) DEFAULT NULL,
  `seller_city` varchar(255) DEFAULT NULL,
  `seller_destrict` varchar(255) DEFAULT NULL,
  `seller_address` longtext DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `order_date` varchar(255) DEFAULT NULL,
  `shipment_time` varchar(255) DEFAULT NULL,
  `additional_document_id` varchar(255) DEFAULT NULL,
  `second_receiver_country` varchar(255) DEFAULT NULL,
  `second_receiver_ill` varchar(255) DEFAULT NULL,
  `second_receiver_postal_code` varchar(255) DEFAULT NULL,
  `second_receiver_district` varchar(255) DEFAULT NULL,
  `second_receiver_address` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `edelivery_note_table`
--

INSERT INTO `edelivery_note_table` (`id`, `user_id`, `company_id`, `invoice_uuid`, `submission_type_id`, `despatch_date`, `despatch_id`, `despatch_type_id`, `invoice_scenario_id`, `currency_unit_id`, `carrier_title`, `carrier_tin`, `vehicle_plate_number`, `total_amount`, `wild_card1`, `receiver_name`, `receiver_tax_number`, `receiver_gib_postacute`, `receiver_tax_office`, `receiver_country`, `receiver_city`, `receiver_destrict`, `receiver_address`, `receiver_mobile_number`, `real_buyer`, `buyer_tax_number`, `buyer_tax_admin`, `buyer_tax_office`, `buyer_country`, `buyer_city`, `buyer_destrict`, `buyer_address`, `real_seller`, `seller_tax_number`, `seller_tax_admin`, `seller_tax_office`, `seller_country`, `seller_city`, `seller_destrict`, `seller_address`, `order_number`, `order_date`, `shipment_time`, `additional_document_id`, `second_receiver_country`, `second_receiver_ill`, `second_receiver_postal_code`, `second_receiver_district`, `second_receiver_address`, `notes`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '7e55582d-45d0-4c51-8901-e1a67248880f', 1, '2024-08-14 00:00:00', 'TK', 1, 1, 2, 'title', 'New ID', '2332', 123.00, 'Remarks', 'John Doe', '223', '1223d2', '2s2s', 'Algeria', 'Aïn Defla', 'District 1', 'Some address here', '23422', 'Mercy', '323', 'www', 'eee', 'Albania', 'Elbasan', 'Nassarawa', 'Some address here', 'Peter Paul', 'dsded', 'sddde', 'dsde', 'Albania', 'Durrës', 'District 132', 'Some address here', '11', '2024-08-21', '06:12', 'dd323f', 'Algeria', 'Algeria', 'Some addressxx', 'USA 1', 'Some address here', 'Some address', '2024-08-14 05:17:59', '2024-08-14 05:17:59'),
(2, 3, 1, '2ffd9d4f-08cd-4754-a40e-8b7e5950edfe', 1, '2024-08-14 00:00:00', 'TK', 1, 1, 2, 'title', 'New ID', '2332', 123.00, 'Remarks', 'Saul', '223', '1223d2', '2s2s', 'Algeria', 'Aïn Defla', 'District 1', 'Some address here', '23422', 'Mercy', '323', 'www', 'eee', 'Albania', 'Elbasan', 'Nassarawa', 'Some address here', 'Peter Paul', 'dsded', 'sddde', 'dsde', 'Albania', 'Durrës', 'District 132', 'Some address here', '11', '2024-08-21', '06:12', 'dd323f', 'Algeria', 'Algeria', 'Some addressxx', 'USA 1', 'Some address here', 'Some address', '2024-08-14 05:18:18', '2024-08-14 05:18:18'),
(6, 3, 1, 'd2993ded-7e31-47db-a23a-8f2e910ae238', 2, '2024-08-21 00:00:00', 'TK', 1, 1, 2, 'Education', 'New ID', '2332', 343.00, 'Remarks', 'John Doe', '223', '1223d2', '2s2s', 'Albania', 'Durrës', 'District 1', 'Some address here.', '23422', 'Buyer', '323', 'Admin', 'eee', 'Algeria', 'Annaba', 'Nassarawa', 'Some address here.', 'Peter Paul', 'dsded', 'sddde', 'dsde', 'Albania', 'Elbasan', 'District 132', 'Some address here.', '12345', '2024-08-21', '10:36', 'dd323f', 'Algeria', 'Algeria', 'Some addressxx', 'USA 1', 'Some address here.', 'Some notes here', '2024-08-21 09:41:05', '2024-08-21 09:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `edelivery_note_trailer_info`
--

CREATE TABLE `edelivery_note_trailer_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plate_number` varchar(255) DEFAULT NULL,
  `edelivery_note_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `edelivery_note_trailer_info`
--

INSERT INTO `edelivery_note_trailer_info` (`id`, `plate_number`, `edelivery_note_id`, `created_at`, `updated_at`) VALUES
(1, '1121', 1, '2024-08-14 05:17:59', '2024-08-14 05:17:59'),
(2, '1121', 2, '2024-08-14 05:18:18', '2024-08-14 05:18:18'),
(6, '1121', 6, '2024-08-21 09:41:05', '2024-08-21 09:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `einvoice`
--

CREATE TABLE `einvoice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_uuid` varchar(255) NOT NULL,
  `invoice_date` varchar(255) NOT NULL,
  `invoice_date_time` varchar(255) NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `exchange_rate` varchar(255) DEFAULT NULL,
  `wildcard` varchar(255) DEFAULT NULL,
  `invoice_tapdk_number` varchar(255) DEFAULT NULL,
  `charge_start_date` date DEFAULT NULL,
  `charge_start_date_time` varchar(255) DEFAULT NULL,
  `charge_end_date` date DEFAULT NULL,
  `charge_end_date_time` varchar(255) DEFAULT NULL,
  `plate_number` varchar(255) DEFAULT NULL,
  `vehicle_idenfitication_number` varchar(255) DEFAULT NULL,
  `esu_rapor_id` varchar(255) DEFAULT NULL,
  `esu_rapor_date` date DEFAULT NULL,
  `esu_rapor_date_time` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) NOT NULL,
  `receiver_tax_number` varchar(255) NOT NULL,
  `receiver_gib_postbox` varchar(255) NOT NULL,
  `receiver_tapdk_no` varchar(255) DEFAULT NULL,
  `receiver_tax_office` varchar(255) DEFAULT NULL,
  `receiver_country` varchar(255) NOT NULL,
  `receiver_city` varchar(255) DEFAULT NULL,
  `receiver_county` varchar(255) DEFAULT NULL,
  `receiver_address` longtext DEFAULT NULL,
  `receiver_telephone` varchar(255) DEFAULT NULL,
  `receiver_email` varchar(255) DEFAULT NULL,
  `receiver_web` varchar(255) DEFAULT NULL,
  `payment_date` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_channel_code` varchar(255) DEFAULT NULL,
  `payee_financial_account` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `order_date` varchar(255) DEFAULT NULL,
  `dispatch_number` varchar(255) DEFAULT NULL,
  `despatch_date` date DEFAULT NULL,
  `mode_code` varchar(255) DEFAULT NULL,
  `tr_id_number` varchar(255) DEFAULT NULL,
  `declarer_name` varchar(255) DEFAULT NULL,
  `export_buyer_name` varchar(255) DEFAULT NULL,
  `export_buyer_surname` varchar(255) DEFAULT NULL,
  `export_buyer_nationality` varchar(255) DEFAULT NULL,
  `export_buyer_passport_number` varchar(255) DEFAULT NULL,
  `export_buyer_passport_date` date DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `total_products_services` decimal(10,2) NOT NULL,
  `total_discounts` decimal(10,2) NOT NULL,
  `total_increase` decimal(10,2) NOT NULL,
  `total_0015_vat` decimal(10,2) NOT NULL,
  `total_taxes` decimal(10,2) NOT NULL,
  `bottom_total_discount_rate` decimal(10,2) NOT NULL,
  `invoice_send_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_scenario_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `einvoice_item`
--

CREATE TABLE `einvoice_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product` varchar(255) NOT NULL,
  `quantity` double(10,2) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `0015_vat_rate` double(10,2) DEFAULT NULL,
  `0015_vat_amount` double(10,2) DEFAULT NULL,
  `taxline_total` double(10,2) DEFAULT NULL,
  `payable_total` double(10,2) DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `increases_decreases_id` bigint(20) UNSIGNED NOT NULL,
  `einvoice_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `einvoice_item_increases_decreases`
--

CREATE TABLE `einvoice_item_increases_decreases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('increase','decrease') NOT NULL,
  `rate` double(10,2) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eledgers`
--

CREATE TABLE `eledgers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `transaction_type_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_date` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `attachment_url` varchar(255) DEFAULT NULL,
  `tax_info_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payer_name` varchar(255) DEFAULT NULL,
  `payer_id_number` varchar(255) DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eledgers`
--

INSERT INTO `eledgers` (`id`, `account_name`, `transaction_type_id`, `amount`, `currency_id`, `transaction_date`, `description`, `reference_number`, `category_id`, `attachment_url`, `tax_info_id`, `tax_amount`, `payment_method_id`, `payer_name`, `payer_id_number`, `status_id`, `created_by`, `updated_by`, `file`, `user_id`, `company_id`, `created_at`, `updated_at`) VALUES
(2, 'John Doe', 1, 700.00, 3, '2024-09-10', 'Some description goes here', '2345678', 2, NULL, 1, 32432.00, 2, 'Mercy', '2345678', 2, 'User11', 'User11', NULL, 3, 1, '2024-09-10 09:41:36', '2024-09-10 09:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `eledger_categories`
--

CREATE TABLE `eledger_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eledger_categories`
--

INSERT INTO `eledger_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sales', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(2, 'Purchases', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(3, 'Expenses', '2024-08-13 12:07:44', '2024-08-13 12:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `eledger_statuses`
--

CREATE TABLE `eledger_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eledger_statuses`
--

INSERT INTO `eledger_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pending', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(2, 'Completed', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(3, 'Cancelled', '2024-08-13 12:07:44', '2024-08-13 12:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `eledger_tax_infos`
--

CREATE TABLE `eledger_tax_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eledger_tax_infos`
--

INSERT INTO `eledger_tax_infos` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'VAT', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(2, 'GSR', '2024-08-13 12:07:44', '2024-08-13 12:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `eledger_transaction_types`
--

CREATE TABLE `eledger_transaction_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eledger_transaction_types`
--

INSERT INTO `eledger_transaction_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Debit', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(2, 'Credit', '2024-08-13 12:07:44', '2024-08-13 12:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `incoming_delivery_notes_archive`
--

CREATE TABLE `incoming_delivery_notes_archive` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_tax_number` varchar(255) NOT NULL,
  `gib_dispatch_type` varchar(255) NOT NULL,
  `supplier_code` varchar(255) DEFAULT NULL,
  `dispatch_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dispatch_id` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `dispatch_uuid` varchar(255) NOT NULL,
  `wild_card1` varchar(255) DEFAULT NULL,
  `erp_reference` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `package_info` varchar(255) NOT NULL,
  `portal_status` varchar(255) DEFAULT NULL,
  `connector_status` varchar(255) DEFAULT NULL,
  `last_update_user` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incoming_delivery_notes_call`
--

CREATE TABLE `incoming_delivery_notes_call` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_company` varchar(255) NOT NULL,
  `gib_dispatch_type` varchar(255) NOT NULL,
  `buyer_company_vkn` varchar(255) NOT NULL,
  `receipient_company_mailbox` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_tax_number` varchar(255) NOT NULL,
  `supplier_code` varchar(255) DEFAULT NULL,
  `dispatch_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dispatch_id` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `dispatch_uuid` varchar(255) NOT NULL,
  `wild_card1` varchar(255) DEFAULT NULL,
  `erp_reference` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `package_info` varchar(255) NOT NULL,
  `portal_status` varchar(255) DEFAULT NULL,
  `connector_status` varchar(255) DEFAULT NULL,
  `last_update_user` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `is_archive` tinyint(1) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incoming_delivery_notes_incoming`
--

CREATE TABLE `incoming_delivery_notes_incoming` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_tax_number` varchar(255) NOT NULL,
  `gib_dispatch_type` varchar(255) NOT NULL,
  `supplier_code` varchar(255) DEFAULT NULL,
  `dispatch_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dispatch_id` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `dispatch_uuid` varchar(255) NOT NULL,
  `wild_card1` varchar(255) DEFAULT NULL,
  `erp_reference` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `activity_envelope` varchar(255) DEFAULT NULL,
  `package_info` varchar(255) NOT NULL,
  `recieved_date` timestamp NULL DEFAULT NULL,
  `response_date` timestamp NULL DEFAULT NULL,
  `mail_delivery_status` varchar(255) DEFAULT NULL,
  `portal_status` varchar(255) DEFAULT NULL,
  `connector_status` varchar(255) DEFAULT NULL,
  `last_update_user` varchar(255) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `send_type` bigint(20) UNSIGNED NOT NULL,
  `invoice_uuid` varchar(255) NOT NULL,
  `invoice_date` varchar(255) NOT NULL,
  `invoice_time` varchar(255) NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `invoice_type` bigint(20) UNSIGNED NOT NULL,
  `invoice_scenario` bigint(20) UNSIGNED NOT NULL,
  `invoice_currency` bigint(20) UNSIGNED NOT NULL,
  `exchange_rate` varchar(255) DEFAULT NULL,
  `wildcard_1` varchar(255) DEFAULT NULL,
  `your_tapdk_number` varchar(255) DEFAULT NULL,
  `charge_start_date` varchar(255) DEFAULT NULL,
  `charge_start_time` varchar(255) DEFAULT NULL,
  `charge_end_date` varchar(255) DEFAULT NULL,
  `charge_end_time` varchar(255) DEFAULT NULL,
  `plate_number` varchar(255) DEFAULT NULL,
  `vehicle_id` varchar(255) DEFAULT NULL,
  `esu_report_id` varchar(255) DEFAULT NULL,
  `esu_report_date` varchar(255) DEFAULT NULL,
  `esu_report_time` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `order_date` varchar(255) DEFAULT NULL,
  `dispatch_number` varchar(255) DEFAULT NULL,
  `dispatch_date` varchar(255) DEFAULT NULL,
  `dispatch_time` varchar(255) DEFAULT NULL,
  `mode_code` varchar(255) DEFAULT NULL,
  `tr_id_number` varchar(255) DEFAULT NULL,
  `name_declarer` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `passport_number` varchar(255) DEFAULT NULL,
  `passport_date` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `tax_number` varchar(255) DEFAULT NULL,
  `gib_post_box` varchar(255) DEFAULT NULL,
  `receiver_tapdk_number` varchar(255) DEFAULT NULL,
  `tax_office` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `receiver_email` varchar(255) DEFAULT NULL,
  `receiver_web` varchar(255) DEFAULT NULL,
  `receiver_phone` varchar(255) DEFAULT NULL,
  `payment_date` varchar(255) DEFAULT NULL,
  `payment_means` varchar(255) DEFAULT NULL,
  `payment_channel_code` varchar(255) DEFAULT NULL,
  `payee_financial_account` varchar(255) DEFAULT NULL,
  `total_products` int(11) DEFAULT NULL,
  `total_discount` decimal(15,2) DEFAULT NULL,
  `total_increase` decimal(15,2) DEFAULT NULL,
  `zero_zero_one_five_vat` decimal(15,2) DEFAULT NULL,
  `total_taxes` decimal(15,2) DEFAULT NULL,
  `bottom_total_discount_rate` decimal(15,2) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `user_id`, `company_id`, `send_type`, `invoice_uuid`, `invoice_date`, `invoice_time`, `invoice_id`, `invoice_type`, `invoice_scenario`, `invoice_currency`, `exchange_rate`, `wildcard_1`, `your_tapdk_number`, `charge_start_date`, `charge_start_time`, `charge_end_date`, `charge_end_time`, `plate_number`, `vehicle_id`, `esu_report_id`, `esu_report_date`, `esu_report_time`, `order_number`, `order_date`, `dispatch_number`, `dispatch_date`, `dispatch_time`, `mode_code`, `tr_id_number`, `name_declarer`, `name`, `surname`, `nationality`, `passport_number`, `passport_date`, `receiver_name`, `tax_number`, `gib_post_box`, `receiver_tapdk_number`, `tax_office`, `country`, `city`, `address`, `receiver_email`, `receiver_web`, `receiver_phone`, `payment_date`, `payment_means`, `payment_channel_code`, `payee_financial_account`, `total_products`, `total_discount`, `total_increase`, `zero_zero_one_five_vat`, `total_taxes`, `bottom_total_discount_rate`, `notes`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, '8c298ef0-59f8-11ef-9ed4-55e706b1f944', '2024-08-14', '05:49', 'TK', 1, 1, 2, '11', '232', '1111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2024-08-14', '1111', '2024-08-14', '05:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'John Doe', '1212', '12221', '1212', '234', 'Albania', 'Berat', 'Some address here', 'someone@email.com', 'www.testingsite.com', '1234321', '2024-08-14', 'Cash', '4567', 'account', 250, 1250.00, 500.00, NULL, 250.00, 500.00, 'Some notes here.', NULL, '2024-08-14 04:51:06', '2024-08-14 04:51:06'),
(3, 3, 1, 1, 'e42eab80-59f8-11ef-9ed4-55e706b1f944', '2024-08-14', '05:49', 'TK', 1, 1, 2, '11', '232', '1111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2024-08-14', '1111', '2024-08-14', '05:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Peter Paul', '1212', '12221', '1212', '234', 'Albania', 'Berat', 'Some address here', 'someone@email.com', 'www.testingsite.com', '1234321', '2024-08-14', 'Cash', '4567', 'account', 250, 1250.00, 500.00, NULL, 250.00, 500.00, 'Some notes here.', NULL, '2024-08-14 04:51:40', '2024-08-14 04:51:40'),
(4, 3, 1, 2, 'ea9e0240-59f8-11ef-9ed4-55e706b1f944', '2024-08-14', '05:49', 'TK', 1, 1, 2, '11', '232', '1111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2024-08-14', '1111', '2024-08-14', '05:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mercy', '1212', '12221', '1212', '234', 'Albania', 'Berat', 'Some address here', 'someone@email.com', 'www.testingsite.com', '1234321', '2024-08-14', 'Cash', '4567', 'account', 250, 1250.00, 500.00, NULL, 250.00, 500.00, 'Some notes here.', NULL, '2024-08-14 04:52:02', '2024-08-14 04:52:02'),
(11, 3, 1, 1, 'd940f4a0-6f59-11ef-95d1-f5fd2deba679', '2024-09-10', '10:48', 'TK', 1, 1, 2, '11', 'Remarks', '1111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '2024-09-11', '1111', '2024-09-11', '11:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mr. Musa Wakili', '1212', '12221', '1212', '234', 'Nigeria', 'Plateau', 'Address here', 'someone@email.com', 'www.testingsite.com', '12345678', '2024-09-11', 'Cash', '4567', '12342', 750, 3750.00, 1500.00, NULL, 750.00, 1500.00, 'Some notes here', NULL, '2024-09-10 09:51:11', '2024-09-10 09:51:11'),
(15, 6, 3, 1, '38a771f0-8196-11ef-8de0-e77e2fef5c5f', '2024-10-02', '22:18', 'TK', 1, 1, 1, NULL, '1', '-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1212', '2024-10-04', 'abc123', '2024-10-18', '22:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abhinav Yadav', '111111111111111111111111', '1111111111', 'Abhinav Yadav', NULL, 'Angola', 'Cabinda', 'Vashundhra Colony', NULL, NULL, NULL, '2024-10-02', 'Cash', '33333', '333333', 0, 0.00, 0.00, NULL, 0.00, 0.00, 'demo', NULL, '2024-10-03 09:22:26', '2024-10-03 09:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_attachment`
--

CREATE TABLE `invoice_attachment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_attachments`
--

CREATE TABLE `invoice_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_decrease_increase`
--

CREATE TABLE `invoice_decrease_increase` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('decrease','increase') NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `invoice_product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_decrease_increase`
--

INSERT INTO `invoice_decrease_increase` (`id`, `type`, `rate`, `amount`, `invoice_product_id`, `created_at`, `updated_at`) VALUES
(1, 'increase', 1, 250.00, 1, '2024-08-14 04:51:06', '2024-08-14 04:51:06'),
(3, 'increase', 1, 250.00, 3, '2024-08-14 04:51:40', '2024-08-14 04:51:40'),
(4, 'increase', 1, 250.00, 4, '2024-08-14 04:52:02', '2024-08-14 04:52:02'),
(8, 'increase', 1, 750.00, 8, '2024-09-10 09:51:11', '2024-09-10 09:51:11'),
(9, 'increase', 0, 0.00, 9, '2024-10-03 09:22:26', '2024-10-03 09:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_service` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_measurement` varchar(255) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `taxable_amount` decimal(15,2) DEFAULT NULL,
  `zero_zero_one_five_vat_rate` decimal(5,2) DEFAULT NULL,
  `zero_zero_one_five_vat_amount` decimal(15,2) DEFAULT NULL,
  `taxline_total` decimal(5,2) DEFAULT NULL,
  `payabl_line_total` decimal(15,2) DEFAULT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_products`
--

INSERT INTO `invoice_products` (`id`, `product_service`, `quantity`, `unit_measurement`, `price`, `taxable_amount`, `zero_zero_one_five_vat_rate`, `zero_zero_one_five_vat_amount`, `taxline_total`, `payabl_line_total`, `invoice_id`, `product_category_id`, `product_subcategory_id`, `created_at`, `updated_at`) VALUES
(1, 'Product', 5, '1', 500.00, 250.00, 0.20, 50.00, 250.00, 500.00, 1, 1, NULL, '2024-08-14 04:51:06', '2024-08-14 04:51:06'),
(3, 'Product', 5, '1', 500.00, 250.00, 0.20, 50.00, 250.00, 500.00, 3, 1, NULL, '2024-08-14 04:51:40', '2024-08-14 04:51:40'),
(4, 'Product', 5, '1', 500.00, 250.00, 0.20, 50.00, 250.00, 500.00, 4, 1, NULL, '2024-08-14 04:52:02', '2024-08-14 04:52:02'),
(8, 'Product', 5, '1', 1500.00, 750.00, 0.20, 150.00, 750.00, 1500.00, 11, 3, NULL, '2024-09-10 09:51:11', '2024-09-10 09:51:11'),
(9, 'Demo', 1, '1', 100.00, 0.00, 12.00, 0.00, 0.00, 0.00, 15, 3, NULL, '2024-10-03 09:22:26', '2024-10-03 09:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_received_tables`
--

CREATE TABLE `invoice_received_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `add_payment` varchar(255) NOT NULL,
  `amount_paid` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_scenario`
--

CREATE TABLE `invoice_scenario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_scenarios`
--

CREATE TABLE `invoice_scenarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_scenarios`
--

INSERT INTO `invoice_scenarios` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Basic', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(2, 'Commercial', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(3, 'Export', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(4, 'Accomplished Invoice', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(5, 'Exclusive', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(6, 'Government', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(7, 'HKS', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(8, 'ENEGERY', '2024-08-13 12:07:44', '2024-08-13 12:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_send_type`
--

CREATE TABLE `invoice_send_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_send_types`
--

CREATE TABLE `invoice_send_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_send_types`
--

INSERT INTO `invoice_send_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'e-Invoice', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(2, 'e-Archive', '2024-08-13 12:07:44', '2024-08-13 12:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_type`
--

CREATE TABLE `invoice_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_types`
--

CREATE TABLE `invoice_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_types`
--

INSERT INTO `invoice_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sales', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(2, 'Return', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(3, 'HKS Sales', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(4, 'With Holding', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(5, 'Exception', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(6, 'Special Base', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(7, 'Export Registration', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(8, 'Textbook', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(9, 'Broker', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(10, 'CHARGE', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(11, 'SURGERY', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(12, 'Accommodation Tax', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(13, 'HKS Broker', '2024-08-13 12:07:44', '2024-08-13 12:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `measurement_units`
--

CREATE TABLE `measurement_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `measurement_units`
--

INSERT INTO `measurement_units` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Set', 'Set', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(2, 'Year', 'Year', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(3, 'Box', 'Box', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(4, 'Piece', 'Piece', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(5, 'Euro', 'Square Centimetre', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(6, 'Day', 'Day', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(7, 'Dozen', 'Dozen', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(8, 'Foot', 'Foot', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(9, 'Gram', 'Gram', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(10, 'Gross ton', 'Gross ton', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(11, 'Hour', 'Hour', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(12, 'Barrel', 'Barrel', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(13, 'Kilogram', 'Kilogram', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(14, 'Kilojoules', 'Kilojoules', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(15, 'Kilowatt-hour', 'Kilowatt-hour', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(16, 'Lot', 'Lot', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(17, 'Litre', 'Litre', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(18, 'Milligrams', 'Milligrams', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(19, 'Minute', 'Minute', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(20, 'Cubic Millimetre', 'Cubic Millimetre', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(21, 'Month', 'Month', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(22, 'Square metre', 'Square metre', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(23, 'Cubic Metre', 'Cubic Metre', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(24, 'Metre', 'Metre', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(25, 'Pair', 'Pair', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(26, 'Pacakge', 'Package', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(27, 'Thousand cubic metre', 'Thousand cubic metre', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(28, 'Truckload', 'Truckload', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(29, 'Ton (metric)', 'Ton (metric)', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(30, 'Pallet', 'Pallet', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(31, 'Koli', 'Koli', '2024-08-13 12:07:44', '2024-08-13 12:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_01_13_144701_create_companies_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_01_21_204317_create_permission_tables', 1),
(7, '2024_01_23_094142_create_products_table', 1),
(8, '2024_02_06_160512_product_categories', 1),
(9, '2024_02_17_200842_create_table_invoice_type', 1),
(10, '2024_02_17_202346_create_invoice_scenario', 1),
(11, '2024_02_17_202420_create_invoice_send_type', 1),
(12, '2024_02_17_202703_utils_tables', 1),
(13, '2024_02_19_01_create_table_einvoice', 1),
(14, '2024_02_19_02_create_units', 1),
(15, '2024_02_19_03_create_einvoice_item_increases_decreases_table', 1),
(16, '2024_02_19_03_create_table_einvoice_item', 1),
(17, '2024_02_19_04_create_invoice_attachment_table', 1),
(18, '2024_03_12_080721_create_table_outgoing_delivery_note_archive', 1),
(19, '2024_03_12_080721_create_table_outgoing_delivery_note_call', 1),
(20, '2024_03_12_080721_create_table_outgoing_delivery_note_cancellation', 1),
(21, '2024_03_12_080721_create_table_outgoing_delivery_note_outgoing', 1),
(22, '2024_03_19_102534_create_incoming_delivery_notes_archive_table', 1),
(23, '2024_03_19_102534_create_incoming_delivery_notes_call_table', 1),
(24, '2024_03_19_102534_create_incoming_delivery_notes_incoming_table', 1),
(25, '2024_03_29_090707_company_user', 1),
(26, '2024_04_04_093_table_invoice_scenarios', 1),
(27, '2024_04_04_093_table_invoice_send_types', 1),
(28, '2024_04_04_093_table_invoice_types', 1),
(29, '2024_04_04_115308_table_invoices', 1),
(30, '2024_04_04_131609_table_invoice_products', 1),
(31, '2024_04_04_133031_table_invoice_decrease_increase', 1),
(32, '2024_04_04_215530_create_invoice_attachments', 1),
(33, '2024_04_04_215530_payment_methods', 1),
(34, '2024_04_15_130518_create_outgoing_producer_receipt_tables', 1),
(35, '2024_06_01_083055_edelivery_note_tables', 1),
(36, '2024_06_12_135125_create_producer_receipts_table', 1),
(37, '2024_06_12_162249_create_invoice_received_tables', 1),
(38, '2024_06_27_135635_eledgers', 1),
(39, '2024_06_28_181237_address_book', 1),
(40, '2024_07_10_092136_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `outgoing_delivery_note_archive`
--

CREATE TABLE `outgoing_delivery_note_archive` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_tax_number` varchar(255) NOT NULL,
  `gib_dispatch_type` varchar(255) DEFAULT NULL,
  `gib_dispatch_send_type` varchar(255) DEFAULT NULL,
  `supplier_code` varchar(255) DEFAULT NULL,
  `dispatch_date` date NOT NULL,
  `dispatch_id` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `dispatch_uuid` varchar(255) DEFAULT NULL,
  `gib_post_box_email` varchar(255) DEFAULT NULL,
  `wild_card1` varchar(255) DEFAULT NULL,
  `erp_reference` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `send_date` datetime DEFAULT NULL,
  `received_date` datetime DEFAULT NULL,
  `response_date` datetime DEFAULT NULL,
  `mail_delivery_status` varchar(255) DEFAULT NULL,
  `portal_status` varchar(255) DEFAULT NULL,
  `connector_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `outgoing_delivery_note_call`
--

CREATE TABLE `outgoing_delivery_note_call` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `sender_company` varchar(255) NOT NULL,
  `sender_company_vkn` varchar(255) NOT NULL,
  `sender_company_mailbox` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_tax_number` varchar(255) NOT NULL,
  `gib_dispatch_type` varchar(255) DEFAULT NULL,
  `gib_dispatch_send_type` varchar(255) DEFAULT NULL,
  `supplier_code` varchar(255) DEFAULT NULL,
  `dispatch_date` date NOT NULL,
  `dispatch_id` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `dispatch_uuid` varchar(255) DEFAULT NULL,
  `gib_post_box_email` varchar(255) DEFAULT NULL,
  `wild_card1` varchar(255) DEFAULT NULL,
  `erp_reference` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `package_info` varchar(255) DEFAULT NULL,
  `send_date` datetime DEFAULT NULL,
  `received_date` datetime DEFAULT NULL,
  `response_date` datetime DEFAULT NULL,
  `mail_delivery_status` varchar(255) DEFAULT NULL,
  `portal_status` varchar(255) DEFAULT NULL,
  `connector_status` varchar(255) DEFAULT NULL,
  `cancel_status` varchar(255) DEFAULT NULL,
  `is_archive` tinyint(1) DEFAULT NULL,
  `last_update_user` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `outgoing_delivery_note_cancellation`
--

CREATE TABLE `outgoing_delivery_note_cancellation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_tax_number` varchar(255) NOT NULL,
  `gib_dispatch_type` varchar(255) DEFAULT NULL,
  `gib_dispatch_send_type` varchar(255) DEFAULT NULL,
  `supplier_code` varchar(255) DEFAULT NULL,
  `dispatch_date` date NOT NULL,
  `dispatch_id` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `dispatch_uuid` varchar(255) DEFAULT NULL,
  `gib_post_box_email` varchar(255) DEFAULT NULL,
  `wild_card1` varchar(255) DEFAULT NULL,
  `erp_reference` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `send_date` datetime DEFAULT NULL,
  `received_date` datetime DEFAULT NULL,
  `response_date` datetime DEFAULT NULL,
  `mail_delivery_status` varchar(255) DEFAULT NULL,
  `portal_status` varchar(255) DEFAULT NULL,
  `connector_status` varchar(255) DEFAULT NULL,
  `cancellation_time` datetime DEFAULT NULL,
  `last_update_user` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `outgoing_delivery_note_outgoing`
--

CREATE TABLE `outgoing_delivery_note_outgoing` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_tax_number` varchar(255) NOT NULL,
  `gib_dispatch_type` varchar(255) DEFAULT NULL,
  `gib_dispatch_send_type` varchar(255) DEFAULT NULL,
  `supplier_code` varchar(255) DEFAULT NULL,
  `dispatch_date` date NOT NULL,
  `dispatch_id` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `dispatch_uuid` varchar(255) DEFAULT NULL,
  `gib_post_box_email` varchar(255) DEFAULT NULL,
  `wild_card1` varchar(255) DEFAULT NULL,
  `erp_reference` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `activity_envelope` varchar(255) DEFAULT NULL,
  `package_info` varchar(255) DEFAULT NULL,
  `send_date` datetime DEFAULT NULL,
  `received_date` datetime DEFAULT NULL,
  `response_date` datetime DEFAULT NULL,
  `mail_delivery_status` varchar(255) DEFAULT NULL,
  `portal_status` varchar(255) DEFAULT NULL,
  `last_update_user` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('musailliasu7@gmail.com', '$2y$12$21BBWbqKbZt2SFtYRMsDcefeBpLVPUF9HDyTz4OewcKK2KZMOxcz.', '2024-09-10 11:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cash', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(2, 'Bank Transfer', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(3, 'Cheque', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(4, 'Credit Card', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(5, 'Debit Card', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(6, 'Mobile Money', '2024-08-13 12:07:44', '2024-08-13 12:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `producer_receipts`
--

CREATE TABLE `producer_receipts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producer_uuid` varchar(255) NOT NULL,
  `producer_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `producer_name` varchar(255) NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `receiver_tax_number` varchar(255) NOT NULL,
  `receiver_tax_office` varchar(255) DEFAULT NULL,
  `sms_notification_for_earchive` tinyint(1) NOT NULL DEFAULT 0,
  `add_to_address_book` tinyint(1) NOT NULL DEFAULT 0,
  `buyer_country` varchar(255) NOT NULL,
  `buyer_city` varchar(255) DEFAULT NULL,
  `buyer_email` varchar(255) DEFAULT NULL,
  `buyer_mobile_number` varchar(255) DEFAULT NULL,
  `buyer_web_address` varchar(255) DEFAULT NULL,
  `buyer_address` varchar(255) NOT NULL,
  `total_product_services` decimal(10,2) NOT NULL,
  `total_0003_stoppage` decimal(10,2) NOT NULL,
  `total_taxes` decimal(10,2) NOT NULL,
  `total_payable` decimal(10,2) NOT NULL,
  `notes` longtext DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producer_receipts`
--

INSERT INTO `producer_receipts` (`id`, `producer_uuid`, `producer_date`, `producer_name`, `unit_id`, `total_amount`, `title`, `receiver_name`, `receiver_tax_number`, `receiver_tax_office`, `sms_notification_for_earchive`, `add_to_address_book`, `buyer_country`, `buyer_city`, `buyer_email`, `buyer_mobile_number`, `buyer_web_address`, `buyer_address`, `total_product_services`, `total_0003_stoppage`, `total_taxes`, `total_payable`, `notes`, `company_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2ecc9760-59fe-11ef-8225-270f7db26fe6', '2024-08-14 00:00:00', 'Mercy', 2, 433.00, 'Education', 'John Doe', '223', '2s2s', 1, 1, 'Afghanistan', 'Badakhshān', 'some@email.com', '13543', 'www.testing.com', 'Some address here', 11.00, 22.00, 11.00, 22.00, 'Some notes here', 1, 3, '2024-08-14 05:32:14', '2024-08-14 05:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `producer_receipt_archives`
--

CREATE TABLE `producer_receipt_archives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_tax_number` varchar(255) NOT NULL,
  `producer_receipt_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `producer_receipt_no` varchar(255) NOT NULL,
  `ettn` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `gib_post_box_email` varchar(255) NOT NULL,
  `portal_status` varchar(255) NOT NULL DEFAULT 'reload',
  `connector_status` varchar(255) NOT NULL DEFAULT 'unread',
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `producer_receipt_calls`
--

CREATE TABLE `producer_receipt_calls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_company` varchar(255) NOT NULL,
  `sender_company_vkn` varchar(255) NOT NULL,
  `sender_company_mailbox` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_tax_number` varchar(255) NOT NULL,
  `mm_tarihi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mm_no` varchar(255) NOT NULL,
  `ettn` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Update/waiting Accept',
  `gib_post_box_email` varchar(255) NOT NULL,
  `portal_status` varchar(255) NOT NULL DEFAULT 'unread',
  `connector_status` varchar(255) NOT NULL DEFAULT 'unread',
  `cancell_status` varchar(255) DEFAULT NULL,
  `is_archive` tinyint(1) NOT NULL DEFAULT 0,
  `last_update_user` varchar(255) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `producer_receipt_cancellations`
--

CREATE TABLE `producer_receipt_cancellations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_tax_number` varchar(255) NOT NULL,
  `producer_receipt_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `producer_receipt_no` varchar(255) NOT NULL,
  `ettn` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `gib_post_box_email` varchar(255) NOT NULL,
  `mail_delivery_status` varchar(255) DEFAULT NULL,
  `portal_status` varchar(255) NOT NULL DEFAULT 'reload',
  `connector_status` varchar(255) NOT NULL DEFAULT 'unread',
  `cancellation_time` timestamp NULL DEFAULT NULL,
  `last_update_user` varchar(255) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `producer_receipt_outgoings`
--

CREATE TABLE `producer_receipt_outgoings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_tax_number` varchar(255) NOT NULL,
  `producer_receipt_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mm_no` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `ettn` varchar(255) NOT NULL,
  `gib_post_box_email` varchar(255) NOT NULL,
  `mail_delivery_status` varchar(255) DEFAULT NULL,
  `portal_status` varchar(255) NOT NULL DEFAULT 'reload',
  `connector_status` varchar(255) NOT NULL DEFAULT 'unread',
  `last_update_user` varchar(255) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `producer_receipt_products`
--

CREATE TABLE `producer_receipt_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_reason` varchar(255) DEFAULT NULL,
  `quantity1` decimal(10,5) NOT NULL,
  `quantity2` decimal(10,5) NOT NULL,
  `unit_id1` bigint(20) UNSIGNED NOT NULL,
  `unit_id2` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `gross_amount` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `tax_line_total` decimal(10,2) DEFAULT NULL,
  `payable_line` decimal(10,2) DEFAULT NULL,
  `product_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `producer_receipt_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producer_receipt_products`
--

INSERT INTO `producer_receipt_products` (`id`, `fee_reason`, `quantity1`, `quantity2`, `unit_id1`, `unit_id2`, `price`, `gross_amount`, `rate`, `amount`, `tax_line_total`, `payable_line`, `product_category_id`, `product_subcategory_id`, `producer_receipt_id`, `created_at`, `updated_at`) VALUES
(1, 'Fee reason 1', 4.00000, 5.00000, 1, 3, 12000.00, 0.50, 578.00, 700.00, 564.00, 987.00, 2, NULL, 1, '2024-08-14 05:32:14', '2024-08-14 05:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'E-Invoice', 'E-Invoice', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(2, 'E-Invoice Archived', 'E-Invoice Archived', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(3, 'E-Delivery Notes', 'E-Delivery Notes', '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(4, 'E-Producer', 'E-Producer', '2024-08-13 12:07:44', '2024-08-13 12:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `vat` decimal(10,5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `vat`, `created_at`, `updated_at`) VALUES
(1, 'Electronics (e.g., smartphones, laptops, tablets)', 20.00000, '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(2, 'Clothing and Apparels', 10.00000, '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(3, 'Food and Beverages', NULL, '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(4, 'Furniture (e.g., chairs, tables, cabinets)', 10.00000, '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(5, 'Books and Educational Materials', 0.00000, '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(6, 'Medical Products (e.g., pharmaceuticals, medical devices)', NULL, '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(7, 'Automotive (e.g., cars, motorcycles, parts)', 20.00000, '2024-08-13 12:07:44', '2024-08-13 12:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_subcategories`
--

CREATE TABLE `product_subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `vat` decimal(10,5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_subcategories`
--

INSERT INTO `product_subcategories` (`id`, `name`, `product_category_id`, `vat`, `created_at`, `updated_at`) VALUES
(1, 'Basic food items (e.g., bread, milk)', 3, 1.00000, '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(2, 'Processed foods and beverages', 3, 1.00000, '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(3, 'Pharmaceuticals', 6, 10.00000, '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(4, 'Medical devices', 6, 10.00000, '2024-08-13 12:07:44', '2024-08-13 12:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'api', '2024-08-13 12:07:43', '2024-08-13 12:07:43'),
(2, 'admin', 'api', '2024-08-13 12:07:43', '2024-08-13 12:07:43'),
(3, 'user', 'api', '2024-08-13 12:07:43', '2024-08-13 12:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `notification_einvoice` tinyint(1) NOT NULL DEFAULT 0,
  `notification_edispatch` tinyint(1) NOT NULL DEFAULT 0,
  `luca_username` varchar(255) DEFAULT NULL,
  `luca_member_number` varchar(255) DEFAULT NULL,
  `luca_password` varchar(255) DEFAULT NULL,
  `export_only` tinyint(1) NOT NULL DEFAULT 0,
  `earchive` tinyint(1) NOT NULL DEFAULT 0,
  `einvoice_only` tinyint(1) NOT NULL DEFAULT 0,
  `ssi_only` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `phone`, `mobile`, `username`, `address`, `email_verified_at`, `password`, `company_id`, `notification_einvoice`, `notification_edispatch`, `luca_username`, `luca_member_number`, `luca_password`, `export_only`, `earchive`, `einvoice_only`, `ssi_only`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'e4f5e3da-944c-4a79-8d5c-8dfccba21b8f', 'Admin', 'admin@localhost', '081234567890', NULL, 'admin', NULL, NULL, '$2y$12$iDpGxdjKFFwDxqB5KOnnoe0uqHjaaoHoSRFX5JcDbUjzdHEdOfr6S', NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, NULL, '2024-08-13 12:07:44', '2024-08-13 12:07:44'),
(2, '9cee8054-6af8-4e44-8695-8e9373f43cf2', 'MI', 'musailliasu7@gmail.com', '08149347975', NULL, 'Illiase', NULL, NULL, '$2y$12$GpHhnSiQA5FgGWZyPViAYe0Zb99G2WHExc5F4Qlm9OceQD11.W0hq', NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, NULL, '2024-08-13 13:34:40', '2024-08-13 13:34:40'),
(3, 'c6c3e21d-bc06-487b-b886-bf325a41ac0b', 'User11', 'user11@email.com', '11111111', '11111111', 'user11', NULL, NULL, '$2y$12$TSr.yVut0c5g4oIcs5cO1O0MghV5kE3zxy/FS21ipd9rbcrxSDo.G', 1, 1, 1, 'Luca User11', 'Luca Member 11', '$2y$12$NH/kEDhNdMKg42R5zgisdOSBDi9LPX00U5hS07CsyKEgU3Hk54XLq', 1, 0, 0, 1, NULL, '2024-08-14 04:48:20', '2024-09-12 13:13:15'),
(4, '81878b1e-3fc6-4a25-853c-38f5e162bc1d', 'Aminu Babayo', 'absheikhnet@gmail.com', '09074748664', NULL, 'absheikh', NULL, NULL, '$2y$12$dRLCGzzebgRXt2q1SrDOe.81kwlN1eV8lUl23plbuYLE0QSuTi1y.', NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, NULL, '2024-08-16 20:17:32', '2024-08-16 20:17:32'),
(5, '8d0bbd0a-ce72-45dd-88fd-321bbd17e5cc', 'User22', 'user22@email.com', '22222222', '22222222', 'user22', NULL, NULL, '$2y$12$Z/LhR4Swk1aN7B6wkr7tC.s58apQXoFFfywbFxFsRg70xqkSVRWGy', 1, 1, 1, 'Luca User22', 'Luca Member 22', '$2y$12$DV9QJaHyP6M0DgLLNZOGHeD4Kd7Jjfd1zbrfOKsjg.wGJcU1NoPGW', 1, 0, 0, 1, NULL, '2024-08-19 13:26:18', '2024-08-19 13:26:18'),
(6, 'e52eb5fc-8b16-48c4-9262-4dbc94d099d2', 'John', 'John@gmail.com', '1234567890', NULL, 'John4Real', NULL, NULL, '$2y$12$6qKEt415XTZjI7fH28.1He70CaoqSIOh1DP38HvxgymtndfqHB6e.', 3, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, NULL, '2024-10-02 06:07:30', '2024-10-02 06:07:30'),
(7, '41ee8dc6-54f4-4963-b72f-5402d8c907f4', 'Abhinav Yadav', 'yabhi1205@gmail.com', '08791292122', NULL, 'yabhi1205', NULL, NULL, '$2y$12$ENBFKrWwJIFccRIr9dPRZ.h5vDsSage36iwc5D14jKRLN1K0dTKSm', NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, NULL, '2024-10-03 13:17:44', '2024-10-03 13:17:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_book_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_user`
--
ALTER TABLE `company_user`
  ADD KEY `company_user_user_id_foreign` (`user_id`),
  ADD KEY `company_user_company_id_foreign` (`company_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edelivery_note_despatch_type`
--
ALTER TABLE `edelivery_note_despatch_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edelivery_note_driver_info`
--
ALTER TABLE `edelivery_note_driver_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `edelivery_note_driver_info_edelivery_note_id_foreign` (`edelivery_note_id`);

--
-- Indexes for table `edelivery_note_invoice_attachments`
--
ALTER TABLE `edelivery_note_invoice_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `edelivery_note_invoice_attachments_edelivery_note_id_foreign` (`edelivery_note_id`);

--
-- Indexes for table `edelivery_note_invoice_scenario`
--
ALTER TABLE `edelivery_note_invoice_scenario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edelivery_note_products`
--
ALTER TABLE `edelivery_note_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `edelivery_note_products_unit_id_one_foreign` (`unit_id_one`),
  ADD KEY `edelivery_note_products_unit_id_two_foreign` (`unit_id_two`),
  ADD KEY `edelivery_note_products_edelivery_note_id_foreign` (`edelivery_note_id`),
  ADD KEY `edelivery_note_products_product_category_id_foreign` (`product_category_id`),
  ADD KEY `edelivery_note_products_product_subcategory_id_foreign` (`product_subcategory_id`);

--
-- Indexes for table `edelivery_note_submission_type`
--
ALTER TABLE `edelivery_note_submission_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edelivery_note_table`
--
ALTER TABLE `edelivery_note_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `edelivery_note_table_invoice_uuid_unique` (`invoice_uuid`),
  ADD KEY `edelivery_note_table_user_id_foreign` (`user_id`),
  ADD KEY `edelivery_note_table_company_id_foreign` (`company_id`),
  ADD KEY `edelivery_note_table_submission_type_id_foreign` (`submission_type_id`),
  ADD KEY `edelivery_note_table_despatch_type_id_foreign` (`despatch_type_id`),
  ADD KEY `edelivery_note_table_invoice_scenario_id_foreign` (`invoice_scenario_id`),
  ADD KEY `edelivery_note_table_currency_unit_id_foreign` (`currency_unit_id`);

--
-- Indexes for table `edelivery_note_trailer_info`
--
ALTER TABLE `edelivery_note_trailer_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `edelivery_note_trailer_info_edelivery_note_id_foreign` (`edelivery_note_id`);

--
-- Indexes for table `einvoice`
--
ALTER TABLE `einvoice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `einvoice_invoice_uuid_unique` (`invoice_uuid`),
  ADD KEY `einvoice_invoice_send_type_id_foreign` (`invoice_send_type_id`),
  ADD KEY `einvoice_invoice_type_id_foreign` (`invoice_type_id`),
  ADD KEY `einvoice_invoice_scenario_id_foreign` (`invoice_scenario_id`),
  ADD KEY `einvoice_invoice_currency_id_foreign` (`invoice_currency_id`),
  ADD KEY `einvoice_company_id_foreign` (`company_id`);

--
-- Indexes for table `einvoice_item`
--
ALTER TABLE `einvoice_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `einvoice_item_unit_id_foreign` (`unit_id`),
  ADD KEY `einvoice_item_increases_decreases_id_foreign` (`increases_decreases_id`),
  ADD KEY `einvoice_item_einvoice_id_foreign` (`einvoice_id`);

--
-- Indexes for table `einvoice_item_increases_decreases`
--
ALTER TABLE `einvoice_item_increases_decreases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eledgers`
--
ALTER TABLE `eledgers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eledgers_transaction_type_id_foreign` (`transaction_type_id`),
  ADD KEY `eledgers_currency_id_foreign` (`currency_id`),
  ADD KEY `eledgers_category_id_foreign` (`category_id`),
  ADD KEY `eledgers_tax_info_id_foreign` (`tax_info_id`),
  ADD KEY `eledgers_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `eledgers_status_id_foreign` (`status_id`),
  ADD KEY `eledgers_user_id_foreign` (`user_id`),
  ADD KEY `eledgers_company_id_foreign` (`company_id`);

--
-- Indexes for table `eledger_categories`
--
ALTER TABLE `eledger_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eledger_statuses`
--
ALTER TABLE `eledger_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eledger_tax_infos`
--
ALTER TABLE `eledger_tax_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eledger_transaction_types`
--
ALTER TABLE `eledger_transaction_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `incoming_delivery_notes_archive`
--
ALTER TABLE `incoming_delivery_notes_archive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incoming_delivery_notes_archive_company_id_foreign` (`company_id`),
  ADD KEY `incoming_delivery_notes_archive_user_id_foreign` (`user_id`);

--
-- Indexes for table `incoming_delivery_notes_call`
--
ALTER TABLE `incoming_delivery_notes_call`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incoming_delivery_notes_call_company_id_foreign` (`company_id`),
  ADD KEY `incoming_delivery_notes_call_user_id_foreign` (`user_id`);

--
-- Indexes for table `incoming_delivery_notes_incoming`
--
ALTER TABLE `incoming_delivery_notes_incoming`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incoming_delivery_notes_incoming_company_id_foreign` (`company_id`),
  ADD KEY `incoming_delivery_notes_incoming_user_id_foreign` (`user_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoices_invoice_uuid_unique` (`invoice_uuid`),
  ADD KEY `invoices_user_id_foreign` (`user_id`),
  ADD KEY `invoices_company_id_foreign` (`company_id`),
  ADD KEY `invoices_send_type_foreign` (`send_type`),
  ADD KEY `invoices_invoice_type_foreign` (`invoice_type`),
  ADD KEY `invoices_invoice_scenario_foreign` (`invoice_scenario`),
  ADD KEY `invoices_invoice_currency_foreign` (`invoice_currency`);

--
-- Indexes for table `invoice_attachment`
--
ALTER TABLE `invoice_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_attachment_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_attachments_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `invoice_decrease_increase`
--
ALTER TABLE `invoice_decrease_increase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_decrease_increase_invoice_product_id_foreign` (`invoice_product_id`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_products_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_products_product_category_id_foreign` (`product_category_id`),
  ADD KEY `invoice_products_product_subcategory_id_foreign` (`product_subcategory_id`);

--
-- Indexes for table `invoice_received_tables`
--
ALTER TABLE `invoice_received_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_scenario`
--
ALTER TABLE `invoice_scenario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_scenarios`
--
ALTER TABLE `invoice_scenarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_send_type`
--
ALTER TABLE `invoice_send_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_send_types`
--
ALTER TABLE `invoice_send_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_type`
--
ALTER TABLE `invoice_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_types`
--
ALTER TABLE `invoice_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `measurement_units`
--
ALTER TABLE `measurement_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `outgoing_delivery_note_archive`
--
ALTER TABLE `outgoing_delivery_note_archive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `outgoing_delivery_note_archive_user_id_foreign` (`user_id`),
  ADD KEY `outgoing_delivery_note_archive_company_id_foreign` (`company_id`);

--
-- Indexes for table `outgoing_delivery_note_call`
--
ALTER TABLE `outgoing_delivery_note_call`
  ADD PRIMARY KEY (`id`),
  ADD KEY `outgoing_delivery_note_call_user_id_foreign` (`user_id`),
  ADD KEY `outgoing_delivery_note_call_company_id_foreign` (`company_id`);

--
-- Indexes for table `outgoing_delivery_note_cancellation`
--
ALTER TABLE `outgoing_delivery_note_cancellation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `outgoing_delivery_note_cancellation_user_id_foreign` (`user_id`),
  ADD KEY `outgoing_delivery_note_cancellation_company_id_foreign` (`company_id`);

--
-- Indexes for table `outgoing_delivery_note_outgoing`
--
ALTER TABLE `outgoing_delivery_note_outgoing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `outgoing_delivery_note_outgoing_user_id_foreign` (`user_id`),
  ADD KEY `outgoing_delivery_note_outgoing_company_id_foreign` (`company_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `producer_receipts`
--
ALTER TABLE `producer_receipts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_receipts_unit_id_foreign` (`unit_id`),
  ADD KEY `producer_receipts_company_id_foreign` (`company_id`),
  ADD KEY `producer_receipts_user_id_foreign` (`user_id`);

--
-- Indexes for table `producer_receipt_archives`
--
ALTER TABLE `producer_receipt_archives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_receipt_archives_company_id_foreign` (`company_id`),
  ADD KEY `producer_receipt_archives_user_id_foreign` (`user_id`);

--
-- Indexes for table `producer_receipt_calls`
--
ALTER TABLE `producer_receipt_calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_receipt_calls_company_id_foreign` (`company_id`),
  ADD KEY `producer_receipt_calls_user_id_foreign` (`user_id`);

--
-- Indexes for table `producer_receipt_cancellations`
--
ALTER TABLE `producer_receipt_cancellations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_receipt_cancellations_company_id_foreign` (`company_id`),
  ADD KEY `producer_receipt_cancellations_user_id_foreign` (`user_id`);

--
-- Indexes for table `producer_receipt_outgoings`
--
ALTER TABLE `producer_receipt_outgoings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_receipt_outgoings_company_id_foreign` (`company_id`),
  ADD KEY `producer_receipt_outgoings_user_id_foreign` (`user_id`);

--
-- Indexes for table `producer_receipt_products`
--
ALTER TABLE `producer_receipt_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_receipt_products_unit_id1_foreign` (`unit_id1`),
  ADD KEY `producer_receipt_products_unit_id2_foreign` (`unit_id2`),
  ADD KEY `producer_receipt_products_product_category_id_foreign` (`product_category_id`),
  ADD KEY `producer_receipt_products_product_subcategory_id_foreign` (`product_subcategory_id`),
  ADD KEY `producer_receipt_products_producer_receipt_id_foreign` (`producer_receipt_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_subcategories`
--
ALTER TABLE `product_subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_subcategories_product_category_id_foreign` (`product_category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_uuid_unique` (`uuid`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_luca_username_unique` (`luca_username`),
  ADD KEY `users_company_id_foreign` (`company_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_book`
--
ALTER TABLE `address_book`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `edelivery_note_despatch_type`
--
ALTER TABLE `edelivery_note_despatch_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `edelivery_note_driver_info`
--
ALTER TABLE `edelivery_note_driver_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `edelivery_note_invoice_attachments`
--
ALTER TABLE `edelivery_note_invoice_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `edelivery_note_invoice_scenario`
--
ALTER TABLE `edelivery_note_invoice_scenario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `edelivery_note_products`
--
ALTER TABLE `edelivery_note_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `edelivery_note_submission_type`
--
ALTER TABLE `edelivery_note_submission_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `edelivery_note_table`
--
ALTER TABLE `edelivery_note_table`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `edelivery_note_trailer_info`
--
ALTER TABLE `edelivery_note_trailer_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `einvoice`
--
ALTER TABLE `einvoice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `einvoice_item`
--
ALTER TABLE `einvoice_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `einvoice_item_increases_decreases`
--
ALTER TABLE `einvoice_item_increases_decreases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eledgers`
--
ALTER TABLE `eledgers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `eledger_categories`
--
ALTER TABLE `eledger_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `eledger_statuses`
--
ALTER TABLE `eledger_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `eledger_tax_infos`
--
ALTER TABLE `eledger_tax_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `eledger_transaction_types`
--
ALTER TABLE `eledger_transaction_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incoming_delivery_notes_archive`
--
ALTER TABLE `incoming_delivery_notes_archive`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incoming_delivery_notes_call`
--
ALTER TABLE `incoming_delivery_notes_call`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incoming_delivery_notes_incoming`
--
ALTER TABLE `incoming_delivery_notes_incoming`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `invoice_attachment`
--
ALTER TABLE `invoice_attachment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_decrease_increase`
--
ALTER TABLE `invoice_decrease_increase`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `invoice_received_tables`
--
ALTER TABLE `invoice_received_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_scenario`
--
ALTER TABLE `invoice_scenario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_scenarios`
--
ALTER TABLE `invoice_scenarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `invoice_send_type`
--
ALTER TABLE `invoice_send_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_send_types`
--
ALTER TABLE `invoice_send_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoice_type`
--
ALTER TABLE `invoice_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_types`
--
ALTER TABLE `invoice_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `measurement_units`
--
ALTER TABLE `measurement_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `outgoing_delivery_note_archive`
--
ALTER TABLE `outgoing_delivery_note_archive`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `outgoing_delivery_note_call`
--
ALTER TABLE `outgoing_delivery_note_call`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `outgoing_delivery_note_cancellation`
--
ALTER TABLE `outgoing_delivery_note_cancellation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `outgoing_delivery_note_outgoing`
--
ALTER TABLE `outgoing_delivery_note_outgoing`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producer_receipts`
--
ALTER TABLE `producer_receipts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `producer_receipt_archives`
--
ALTER TABLE `producer_receipt_archives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producer_receipt_calls`
--
ALTER TABLE `producer_receipt_calls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producer_receipt_cancellations`
--
ALTER TABLE `producer_receipt_cancellations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producer_receipt_outgoings`
--
ALTER TABLE `producer_receipt_outgoings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producer_receipt_products`
--
ALTER TABLE `producer_receipt_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_subcategories`
--
ALTER TABLE `product_subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address_book`
--
ALTER TABLE `address_book`
  ADD CONSTRAINT `address_book_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`);

--
-- Constraints for table `company_user`
--
ALTER TABLE `company_user`
  ADD CONSTRAINT `company_user_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `company_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `edelivery_note_driver_info`
--
ALTER TABLE `edelivery_note_driver_info`
  ADD CONSTRAINT `edelivery_note_driver_info_edelivery_note_id_foreign` FOREIGN KEY (`edelivery_note_id`) REFERENCES `edelivery_note_table` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `edelivery_note_invoice_attachments`
--
ALTER TABLE `edelivery_note_invoice_attachments`
  ADD CONSTRAINT `edelivery_note_invoice_attachments_edelivery_note_id_foreign` FOREIGN KEY (`edelivery_note_id`) REFERENCES `edelivery_note_table` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `edelivery_note_products`
--
ALTER TABLE `edelivery_note_products`
  ADD CONSTRAINT `edelivery_note_products_edelivery_note_id_foreign` FOREIGN KEY (`edelivery_note_id`) REFERENCES `edelivery_note_table` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `edelivery_note_products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`),
  ADD CONSTRAINT `edelivery_note_products_product_subcategory_id_foreign` FOREIGN KEY (`product_subcategory_id`) REFERENCES `product_subcategories` (`id`),
  ADD CONSTRAINT `edelivery_note_products_unit_id_one_foreign` FOREIGN KEY (`unit_id_one`) REFERENCES `measurement_units` (`id`),
  ADD CONSTRAINT `edelivery_note_products_unit_id_two_foreign` FOREIGN KEY (`unit_id_two`) REFERENCES `measurement_units` (`id`);

--
-- Constraints for table `edelivery_note_table`
--
ALTER TABLE `edelivery_note_table`
  ADD CONSTRAINT `edelivery_note_table_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `edelivery_note_table_currency_unit_id_foreign` FOREIGN KEY (`currency_unit_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `edelivery_note_table_despatch_type_id_foreign` FOREIGN KEY (`despatch_type_id`) REFERENCES `edelivery_note_despatch_type` (`id`),
  ADD CONSTRAINT `edelivery_note_table_invoice_scenario_id_foreign` FOREIGN KEY (`invoice_scenario_id`) REFERENCES `edelivery_note_invoice_scenario` (`id`),
  ADD CONSTRAINT `edelivery_note_table_submission_type_id_foreign` FOREIGN KEY (`submission_type_id`) REFERENCES `edelivery_note_submission_type` (`id`),
  ADD CONSTRAINT `edelivery_note_table_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `edelivery_note_trailer_info`
--
ALTER TABLE `edelivery_note_trailer_info`
  ADD CONSTRAINT `edelivery_note_trailer_info_edelivery_note_id_foreign` FOREIGN KEY (`edelivery_note_id`) REFERENCES `edelivery_note_table` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `einvoice`
--
ALTER TABLE `einvoice`
  ADD CONSTRAINT `einvoice_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `einvoice_invoice_currency_id_foreign` FOREIGN KEY (`invoice_currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `einvoice_invoice_scenario_id_foreign` FOREIGN KEY (`invoice_scenario_id`) REFERENCES `invoice_scenario` (`id`),
  ADD CONSTRAINT `einvoice_invoice_send_type_id_foreign` FOREIGN KEY (`invoice_send_type_id`) REFERENCES `invoice_send_type` (`id`),
  ADD CONSTRAINT `einvoice_invoice_type_id_foreign` FOREIGN KEY (`invoice_type_id`) REFERENCES `invoice_type` (`id`);

--
-- Constraints for table `einvoice_item`
--
ALTER TABLE `einvoice_item`
  ADD CONSTRAINT `einvoice_item_einvoice_id_foreign` FOREIGN KEY (`einvoice_id`) REFERENCES `einvoice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `einvoice_item_increases_decreases_id_foreign` FOREIGN KEY (`increases_decreases_id`) REFERENCES `einvoice_item_increases_decreases` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `einvoice_item_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eledgers`
--
ALTER TABLE `eledgers`
  ADD CONSTRAINT `eledgers_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `eledger_categories` (`id`),
  ADD CONSTRAINT `eledgers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `eledgers_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `eledgers_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `eledgers_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `eledger_statuses` (`id`),
  ADD CONSTRAINT `eledgers_tax_info_id_foreign` FOREIGN KEY (`tax_info_id`) REFERENCES `eledger_tax_infos` (`id`),
  ADD CONSTRAINT `eledgers_transaction_type_id_foreign` FOREIGN KEY (`transaction_type_id`) REFERENCES `eledger_transaction_types` (`id`),
  ADD CONSTRAINT `eledgers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `incoming_delivery_notes_archive`
--
ALTER TABLE `incoming_delivery_notes_archive`
  ADD CONSTRAINT `incoming_delivery_notes_archive_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `incoming_delivery_notes_archive_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `incoming_delivery_notes_call`
--
ALTER TABLE `incoming_delivery_notes_call`
  ADD CONSTRAINT `incoming_delivery_notes_call_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `incoming_delivery_notes_call_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `incoming_delivery_notes_incoming`
--
ALTER TABLE `incoming_delivery_notes_incoming`
  ADD CONSTRAINT `incoming_delivery_notes_incoming_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `incoming_delivery_notes_incoming_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `invoices_invoice_currency_foreign` FOREIGN KEY (`invoice_currency`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `invoices_invoice_scenario_foreign` FOREIGN KEY (`invoice_scenario`) REFERENCES `invoice_scenarios` (`id`),
  ADD CONSTRAINT `invoices_invoice_type_foreign` FOREIGN KEY (`invoice_type`) REFERENCES `invoice_types` (`id`),
  ADD CONSTRAINT `invoices_send_type_foreign` FOREIGN KEY (`send_type`) REFERENCES `invoice_send_types` (`id`),
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `invoice_attachment`
--
ALTER TABLE `invoice_attachment`
  ADD CONSTRAINT `invoice_attachment_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `einvoice` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD CONSTRAINT `invoice_attachments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`);

--
-- Constraints for table `invoice_decrease_increase`
--
ALTER TABLE `invoice_decrease_increase`
  ADD CONSTRAINT `invoice_decrease_increase_invoice_product_id_foreign` FOREIGN KEY (`invoice_product_id`) REFERENCES `invoice_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD CONSTRAINT `invoice_products_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`),
  ADD CONSTRAINT `invoice_products_product_subcategory_id_foreign` FOREIGN KEY (`product_subcategory_id`) REFERENCES `product_subcategories` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `outgoing_delivery_note_archive`
--
ALTER TABLE `outgoing_delivery_note_archive`
  ADD CONSTRAINT `outgoing_delivery_note_archive_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `outgoing_delivery_note_archive_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `outgoing_delivery_note_call`
--
ALTER TABLE `outgoing_delivery_note_call`
  ADD CONSTRAINT `outgoing_delivery_note_call_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `outgoing_delivery_note_call_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `outgoing_delivery_note_cancellation`
--
ALTER TABLE `outgoing_delivery_note_cancellation`
  ADD CONSTRAINT `outgoing_delivery_note_cancellation_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `outgoing_delivery_note_cancellation_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `outgoing_delivery_note_outgoing`
--
ALTER TABLE `outgoing_delivery_note_outgoing`
  ADD CONSTRAINT `outgoing_delivery_note_outgoing_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `outgoing_delivery_note_outgoing_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `producer_receipts`
--
ALTER TABLE `producer_receipts`
  ADD CONSTRAINT `producer_receipts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `producer_receipts_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `measurement_units` (`id`),
  ADD CONSTRAINT `producer_receipts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `producer_receipt_archives`
--
ALTER TABLE `producer_receipt_archives`
  ADD CONSTRAINT `producer_receipt_archives_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producer_receipt_archives_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `producer_receipt_calls`
--
ALTER TABLE `producer_receipt_calls`
  ADD CONSTRAINT `producer_receipt_calls_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producer_receipt_calls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `producer_receipt_cancellations`
--
ALTER TABLE `producer_receipt_cancellations`
  ADD CONSTRAINT `producer_receipt_cancellations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producer_receipt_cancellations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `producer_receipt_outgoings`
--
ALTER TABLE `producer_receipt_outgoings`
  ADD CONSTRAINT `producer_receipt_outgoings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producer_receipt_outgoings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `producer_receipt_products`
--
ALTER TABLE `producer_receipt_products`
  ADD CONSTRAINT `producer_receipt_products_producer_receipt_id_foreign` FOREIGN KEY (`producer_receipt_id`) REFERENCES `producer_receipts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producer_receipt_products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`),
  ADD CONSTRAINT `producer_receipt_products_product_subcategory_id_foreign` FOREIGN KEY (`product_subcategory_id`) REFERENCES `product_subcategories` (`id`),
  ADD CONSTRAINT `producer_receipt_products_unit_id1_foreign` FOREIGN KEY (`unit_id1`) REFERENCES `measurement_units` (`id`),
  ADD CONSTRAINT `producer_receipt_products_unit_id2_foreign` FOREIGN KEY (`unit_id2`) REFERENCES `measurement_units` (`id`);

--
-- Constraints for table `product_subcategories`
--
ALTER TABLE `product_subcategories`
  ADD CONSTRAINT `product_subcategories_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
