-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2018 lúc 11:17 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tranhtuong`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `user_id`, `name`, `alias`, `photo`, `background`, `mota`, `link`, `content`, `status`, `title`, `keyword`, `description`, `com`, `created_at`, `updated_at`) VALUES
(1, 8, 'Tầm nhìn', 'tam-nhin', '1533089542_about-1.jpg', NULL, NULL, NULL, '<p>Tầm nh&igrave;n của ch&uacute;ng t&ocirc;i được ho&agrave;n thiện khi mỗi gia đ&igrave;nh tr&ecirc;n đất nước Việt Nam đều c&oacute; &iacute;t nhất một sản phẩm nội thất của Vidcom</p>', 0, NULL, NULL, NULL, 'tam-nhin', '2018-08-01 02:12:22', '2018-07-31 19:12:22'),
(2, 8, 'Sứ mệnh', 'su-menh', '1533089598_about-2.jpg', NULL, NULL, NULL, '<p>Sứ mệnh của Vidcom l&agrave; cung cấp c&aacute;c sản phẩm nội thất c&oacute; thiết kế v&agrave; c&ocirc;ng năng ph&ugrave; hợp đi k&egrave;m với gi&aacute; cả phải chăng. Ch&uacute;ng t&ocirc;i cũng cung cấp dịch vụ tư vấn thiết kế nội thất v&agrave; vận chuyển sản phẩm đến từng gia đ&igrave;nh Việt Nam th&ocirc;ng qua c&aacute;c dịch vụ vận chuyển đa dạng.</p>', 0, NULL, NULL, NULL, 'su-menh', '2018-08-01 02:13:18', '2018-07-31 19:13:18'),
(3, 8, 'Tranh sơn dầu Bạch Vân Mậu', 'tranh-son-dau-bach-van-mau', '1542881443_img_intro1.png', '1542881433_img_intro2.png', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.sf&nbsp;</p>', NULL, '<p class=\"text-center\" style=\"text-align: left;\">Nội dung giới thiệu</p>', 0, NULL, NULL, NULL, 'gioi-thieu', '2018-11-22 10:11:08', '2018-11-22 10:11:08'),
(6, 8, NULL, '', NULL, NULL, NULL, NULL, '<p>Nội dung b&aacute;o gi&aacute;</p>', 0, NULL, NULL, NULL, 'bao-gia', '2018-11-22 02:22:11', '2018-11-22 02:22:11'),
(4, 8, 'Giá trị cốt lõi', 'gia-tri-cot-loi', NULL, NULL, NULL, NULL, '<h3 class=\"vk-about__title-sub\">CON NGƯỜI</h3>\r\n<p>Đại diện cho nền tảng của thương hiệu UMA. Điều n&agrave;y được thể hiện bằng việc ch&uacute;ng t&ocirc;i quan t&acirc;m đến c&aacute;ch sống v&agrave; l&agrave;m việc của kh&aacute;ch h&agrave;ng cũng như cung cấp cho mỗi nh&acirc;n vi&ecirc;n một m&ocirc;i trường l&agrave;m việc l&agrave;nh mạnh, cơ hội để học hỏi v&agrave; ph&aacute;t triển. UMA cũng đ&aacute;nh gi&aacute; cao sự đa dạng v&agrave; kh&aacute;c biệt văn h&oacute;a, nhằm phấn đấu cải thiện chất lượng cuộc sống của cộng đồng.</p>\r\n<h3 class=\"vk-about__title-sub\">THIẾT KẾ</h3>\r\n<p>L&agrave; đặc điểm tạo n&ecirc;n sự kh&aacute;c biệt của ch&uacute;ng t&ocirc;i. Những thiết kế được li&ecirc;n tục ph&aacute;t triển v&agrave; khuyến kh&iacute;ch tự đ&aacute;nh gi&aacute; để ho&agrave;n thiện. C&aacute;c xu hướng hiện đại lu&ocirc;n được phản &aacute;nh trong thiết kế của Vidcom, nhưng cũng đảm bảo kh&ocirc;ng mất đi n&eacute;t văn h&oacute;a Việt Nam. Điều n&agrave;y gi&uacute;p Vidcom trở th&agrave;nh một trong những c&ocirc;ng ty thiết kế nội thất chủ đạo ở Việt Nam.</p>\r\n<h3 class=\"vk-about__title-sub\">DỊCH VỤ</h3>\r\n<p>Lu&ocirc;n được đảm bảo t&iacute;nh tối ưu, lấy kh&aacute;ch h&agrave;ng l&agrave;m trọng t&acirc;m v&agrave; thể hiện sự thấu hiểu nhu cầu của kh&aacute;ch h&agrave;ng trong việc giao h&agrave;ng, thiết kế nội thất, lắp đặt cũng như tư vấn chuy&ecirc;n nghiệp tại cửa h&agrave;ng lẫn tr&ecirc;n website.</p>\r\n<h3 class=\"vk-about__title-sub\">SỰ PH&Aacute;T TRIỂN</h3>\r\n<p>Bất kể Vidcom muốn x&acirc;y dựng c&aacute;c thiết kế, dẫn đầu xu thế cạnh tranh hoặc đảm bảo tương lai th&igrave; Vidcom vẫn lu&ocirc;n lu&ocirc;n cần phải ph&aacute;t triển.</p>', 0, NULL, NULL, NULL, 'cot-loi', '2018-08-01 02:17:25', '2018-07-31 19:17:25'),
(5, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'taisao', '2018-08-01 00:29:56', '2018-08-01 00:29:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_account`
--

CREATE TABLE `bank_account` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `info` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bank_account`
--

INSERT INTO `bank_account` (`id`, `img`, `info`, `created_at`, `updated_at`) VALUES
(1, '1533204557_bank-1.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN HẢI YẾN</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh Đống Đa</p>', '2018-08-02 10:09:17', '2018-08-02 03:09:17'),
(3, '1533204568_bank-2.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN Ho&agrave;ng&nbsp;Hải</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh&nbsp;H&agrave; Nội</p>\r\n<p>&nbsp;</p>', '2018-08-02 10:09:28', '2018-08-02 03:09:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_content`
--

CREATE TABLE `banner_content` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `title` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `mota` text CHARACTER SET utf8,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_position`
--

CREATE TABLE `banner_position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `banner_position`
--

INSERT INTO `banner_position` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '2017-09-20 08:29:24', '2017-09-20 01:29:24'),
(2, 'Tin tức phong thủy', '2018-07-30 02:46:57', '2018-07-29 19:46:57'),
(3, 'Trang giới thiệu', '2017-11-08 02:03:36', '2017-11-07 19:03:36'),
(4, 'Trang dự án', '2018-07-09 01:38:06', '2018-07-08 18:38:06'),
(5, 'Trang liên hệ', '2018-07-09 01:38:30', '2018-07-08 18:38:30'),
(8, 'Trang kiến trúc', '2018-07-31 01:57:00', '2018-07-30 18:57:00'),
(9, 'Trang nội thất đẹp', '2018-07-30 18:57:09', '2018-07-30 18:57:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `note` text,
  `status` tinyint(2) DEFAULT '0',
  `total` int(11) DEFAULT NULL,
  `detail` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `card_code` varchar(250) DEFAULT NULL,
  `payment` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `full_name`, `email`, `phone`, `address`, `province`, `district`, `note`, `status`, `total`, `detail`, `created_at`, `updated_at`, `card_code`, `payment`) VALUES
(2, 'Hoàng Hồng Chương', 'admin@team.vn', '0987654321', 'Hà Nội', NULL, NULL, NULL, 2, 1200000, '[{\"product_name\":\"S\\u1ea3n ph\\u1ea9m demo 1\",\"product_numb\":\"3\",\"product_price\":400000,\"product_img\":\"1542855845_2.jpg\",\"product_code\":null}]', '2018-11-22 04:58:54', '2018-11-22 04:58:54', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `campaign_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `campaign_type` int(2) DEFAULT NULL,
  `campaign_value` int(10) DEFAULT NULL,
  `campaign_expired` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` int(1) NOT NULL DEFAULT '0',
  `card_numb` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaign_cards`
--

CREATE TABLE `campaign_cards` (
  `id` int(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `card_code` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `del_flg` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chinhanh`
--

CREATE TABLE `chinhanh` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `map` text,
  `photo` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(2, 'Màu 1', '#00FF22', '2018-08-02 03:04:21', '2018-08-01 20:04:21'),
(3, 'màu 2', '#6E00FF', '2018-08-01 20:04:09', '2018-08-01 20:04:09'),
(4, 'Màu 3', '#092E00', '2018-08-01 20:04:39', '2018-08-01 20:04:39'),
(5, 'Màu 4', '#000', '2018-08-01 20:04:52', '2018-08-01 20:04:52'),
(6, 'Màu 5', '#D10000', '2018-08-01 20:05:20', '2018-08-01 20:05:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `province_id` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `address` text,
  `content` text CHARACTER SET latin1,
  `website` varchar(250) DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `province_id`, `name`, `email`, `phone`, `address`, `content`, `website`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Hoàng Hồng Chương', 'admin@team.vn', '0987654321', 'Hà Nội', 'sf sdf', NULL, 0, '2018-11-21 08:00:55', '2018-11-21 08:01:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `counter`
--

CREATE TABLE `counter` (
  `id` int(10) UNSIGNED NOT NULL,
  `tm` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `district_name` varchar(250) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `district_name`, `province_id`, `created_at`, `updated_at`) VALUES
(1, 'Ba Đình', 4, '2017-09-24 18:03:47', '2017-09-24 18:03:47'),
(2, 'Từ Liêm', 4, '2017-09-24 18:04:29', '2017-09-24 18:04:29'),
(3, 'Hoàn Kiếm', 4, '2017-09-24 18:04:40', '2017-09-24 18:04:40'),
(4, 'Cầu giấy', 4, '2017-09-25 00:14:58', '2017-09-25 00:14:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `photo` text,
  `position` varchar(250) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `photo`, `position`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn A', '1542871749_cate3.jpg', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>', '2018-11-22 07:29:09', '2018-11-22 07:29:09'),
(2, 'Nguyễn Văn B', '1542871783_4 - Copy.jpg', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>', '2018-11-22 07:29:43', '2018-11-22 07:29:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer`
--

CREATE TABLE `footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioithieu`
--

CREATE TABLE `gioithieu` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `image` text,
  `mota` text,
  `content` text,
  `title` varchar(250) DEFAULT NULL,
  `keyword` varchar(250) DEFAULT NULL,
  `description` text,
  `status` int(2) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `gioithieu`
--

INSERT INTO `gioithieu` (`id`, `name`, `alias`, `image`, `mota`, `content`, `title`, `keyword`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Về công ty', 've-cong-ty', '1509935372_home-1.png', '<h3 class=\"vk-about__title text-uppercase animation fadeIn animation-active\">C&Ocirc;NG TY TNHH SẢN XUẤT NHỰA CH&Acirc;U &Acirc;U</h3>\r\n<p class=\"animation fadeIn delay1 animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>', '<p class=\"animation fadeIn animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n<p class=\"animation fadeIn animation-active\">Tại C&ocirc;ng ty TNHH sản xuất nhựa Ch&acirc;u &Acirc;u ch&uacute;ng t&ocirc;i tin tưởng rằng chỉ c&oacute; nghi&ecirc;m ngặt tu&acirc;n theo quy tr&igrave;nh quản l&yacute; chất lượng để tạo ra những sản phẩm đạt chất lượng cao v&agrave; dịch vụ tốt, ch&uacute;ng t&ocirc;i mới chiếm được l&ograve;ng tin của kh&aacute;ch h&agrave;ng đồng thời x&aacute;c lập vị tr&iacute; của m&igrave;nh tr&ecirc;n thị trường, để người Việt c&oacute; thể tin d&ugrave;ng h&agrave;ng Việt</p>\r\n<div class=\"row\">\r\n<div class=\"col-lg-9\">\r\n<p class=\"animation fadeIn delay1 animation-active\"><strong>Lịch sử h&igrave;nh th&agrave;nh</strong></p>\r\n<p class=\"animation fadeIn delay1 animation-active\">C&ocirc;ng ty TNHH Thiết Bị Điện Nước H&agrave; Th&agrave;nh được ch&iacute;nh thức th&agrave;nh lập v&agrave; đi v&agrave;o hoạt động từ th&aacute;ng 3 năm 2009. Ng&agrave;nh nghề ch&iacute;nh của ch&uacute;ng t&ocirc;i l&agrave; sản xuất thiết bị điện nước mang thương hiệu HATHACO. Nh&agrave; m&aacute;y sản xuất phụ kiện ống nhựa HDPE đặt tại Th&agrave;nh phố Hải Dương. Với nhiều m&aacute;y &eacute;p phun, m&aacute;y &eacute;p gioăng cao su v&agrave; hơn 200 bộ khu&ocirc;n sản phẩm kh&aacute;c nhau, ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang sản xuất cung cấp cho thị trường c&aacute;c loại phụ kiện HDPE vặn ren v&agrave; đai khởi thủy k&iacute;ch thước từ D20 đến D110 mang thương hiệu HATHACO đạt ti&ecirc;u chuẩn Dụng cụ bằng nhựa tiếp x&uacute;c trực tiếp thực phẩm của Bộ Y Tế: QCVN 12-1:2011/BYT v&agrave; tu&acirc;n theo Quy tr&igrave;nh quản l&yacute; chất lượng TCVN ISO 9001:2008.</p>\r\n<p class=\"animation fadeIn delay1 animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, 1, '2017-11-06 02:33:45', '2017-11-05 19:33:45'),
(2, 'Về nhà xưởng', 've-nha-xuong', NULL, NULL, '<p class=\"animation fadeIn animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n<p class=\"animation fadeIn animation-active\">Tại C&ocirc;ng ty TNHH sản xuất nhựa Ch&acirc;u &Acirc;u ch&uacute;ng t&ocirc;i tin tưởng rằng chỉ c&oacute; nghi&ecirc;m ngặt tu&acirc;n theo quy tr&igrave;nh quản l&yacute; chất lượng để tạo ra những sản phẩm đạt chất lượng cao v&agrave; dịch vụ tốt, ch&uacute;ng t&ocirc;i mới chiếm được l&ograve;ng tin của kh&aacute;ch h&agrave;ng đồng thời x&aacute;c lập vị tr&iacute; của m&igrave;nh tr&ecirc;n thị trường, để người Việt c&oacute; thể tin d&ugrave;ng h&agrave;ng Việt</p>\r\n<div class=\"row\">\r\n<div class=\"col-lg-9\">\r\n<p class=\"animation fadeIn delay1 animation-active\"><strong>Lịch sử h&igrave;nh th&agrave;nh</strong></p>\r\n<p class=\"animation fadeIn delay1 animation-active\">C&ocirc;ng ty TNHH Thiết Bị Điện Nước H&agrave; Th&agrave;nh được ch&iacute;nh thức th&agrave;nh lập v&agrave; đi v&agrave;o hoạt động từ th&aacute;ng 3 năm 2009. Ng&agrave;nh nghề ch&iacute;nh của ch&uacute;ng t&ocirc;i l&agrave; sản xuất thiết bị điện nước mang thương hiệu HATHACO. Nh&agrave; m&aacute;y sản xuất phụ kiện ống nhựa HDPE đặt tại Th&agrave;nh phố Hải Dương. Với nhiều m&aacute;y &eacute;p phun, m&aacute;y &eacute;p gioăng cao su v&agrave; hơn 200 bộ khu&ocirc;n sản phẩm kh&aacute;c nhau, ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang sản xuất cung cấp cho thị trường c&aacute;c loại phụ kiện HDPE vặn ren v&agrave; đai khởi thủy k&iacute;ch thước từ D20 đến D110 mang thương hiệu HATHACO đạt ti&ecirc;u chuẩn Dụng cụ bằng nhựa tiếp x&uacute;c trực tiếp thực phẩm của Bộ Y Tế: QCVN 12-1:2011/BYT v&agrave; tu&acirc;n theo Quy tr&igrave;nh quản l&yacute; chất lượng TCVN ISO 9001:2008.</p>\r\n<p class=\"animation fadeIn delay1 animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, 1, '2017-11-08 02:12:34', '2017-11-07 19:12:34'),
(3, 'Về chi nhánh', 've-chi-nhanh', NULL, NULL, '<p class=\"animation fadeIn animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n<p class=\"animation fadeIn animation-active\">Tại C&ocirc;ng ty TNHH sản xuất nhựa Ch&acirc;u &Acirc;u ch&uacute;ng t&ocirc;i tin tưởng rằng chỉ c&oacute; nghi&ecirc;m ngặt tu&acirc;n theo quy tr&igrave;nh quản l&yacute; chất lượng để tạo ra những sản phẩm đạt chất lượng cao v&agrave; dịch vụ tốt, ch&uacute;ng t&ocirc;i mới chiếm được l&ograve;ng tin của kh&aacute;ch h&agrave;ng đồng thời x&aacute;c lập vị tr&iacute; của m&igrave;nh tr&ecirc;n thị trường, để người Việt c&oacute; thể tin d&ugrave;ng h&agrave;ng Việt</p>\r\n<div class=\"row\">\r\n<div class=\"col-lg-9\">\r\n<p class=\"animation fadeIn delay1 animation-active\"><strong>Lịch sử h&igrave;nh th&agrave;nh</strong></p>\r\n<p class=\"animation fadeIn delay1 animation-active\">C&ocirc;ng ty TNHH Thiết Bị Điện Nước H&agrave; Th&agrave;nh được ch&iacute;nh thức th&agrave;nh lập v&agrave; đi v&agrave;o hoạt động từ th&aacute;ng 3 năm 2009. Ng&agrave;nh nghề ch&iacute;nh của ch&uacute;ng t&ocirc;i l&agrave; sản xuất thiết bị điện nước mang thương hiệu HATHACO. Nh&agrave; m&aacute;y sản xuất phụ kiện ống nhựa HDPE đặt tại Th&agrave;nh phố Hải Dương. Với nhiều m&aacute;y &eacute;p phun, m&aacute;y &eacute;p gioăng cao su v&agrave; hơn 200 bộ khu&ocirc;n sản phẩm kh&aacute;c nhau, ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang sản xuất cung cấp cho thị trường c&aacute;c loại phụ kiện HDPE vặn ren v&agrave; đai khởi thủy k&iacute;ch thước từ D20 đến D110 mang thương hiệu HATHACO đạt ti&ecirc;u chuẩn Dụng cụ bằng nhựa tiếp x&uacute;c trực tiếp thực phẩm của Bộ Y Tế: QCVN 12-1:2011/BYT v&agrave; tu&acirc;n theo Quy tr&igrave;nh quản l&yacute; chất lượng TCVN ISO 9001:2008.</p>\r\n<p class=\"animation fadeIn delay1 animation-active\">B&ecirc;n cạnh việc sản xuất, ch&uacute;ng t&ocirc;i c&ograve;n nhập khẩu v&agrave; ph&acirc;n phối c&aacute;c sản phẩm như: phụ kiện HDPE h&agrave;n nối đầu, phụ kiện HDPE h&agrave;n điện trở, c&aacute;c loại m&aacute;y h&agrave;n ống nhựa HDPE, m&aacute;y thử &aacute;p lực&hellip;</p>\r\n</div>\r\n</div>', 'Chi nhánh', 'chi nhánh', 'sf s', 1, '2017-11-08 02:12:39', '2017-11-07 19:12:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT '0',
  `news_id` int(10) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `product_id`, `news_id`, `name`, `alias`, `photo`, `status`, `image_path`, `alt`, `stt`, `created_at`, `updated_at`) VALUES
(7, 1, NULL, NULL, NULL, '1542859805_5 - Copy (2).jpg', 1, NULL, NULL, 0, '2018-11-22 04:10:05', '2018-11-22 04:10:05'),
(2, 1, NULL, NULL, NULL, '1542856598_4.jpg', 1, NULL, NULL, 0, '2018-11-22 03:16:38', '2018-11-22 03:16:38'),
(5, 2, NULL, NULL, NULL, '1542856872_4.jpg', 1, NULL, NULL, 0, '2018-11-22 03:21:12', '2018-11-22 03:21:12'),
(6, 2, NULL, NULL, NULL, '1542856872_5 - Copy - Copy.jpg', 1, NULL, NULL, 0, '2018-11-22 03:21:12', '2018-11-22 03:21:12'),
(8, 1, NULL, NULL, NULL, '1542859805_111.jpg', 1, NULL, NULL, 0, '2018-11-22 04:10:05', '2018-11-22 04:10:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienket`
--

CREATE TABLE `lienket` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `document` text COLLATE utf8_unicode_ci,
  `photo2` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lienket`
--

INSERT INTO `lienket` (`id`, `user_id`, `name`, `link`, `photo`, `document`, `photo2`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 8, 'Catalog 2018', NULL, '', '1533112457_tuan1_7.xlsx', '', NULL, '<p>CON NGƯỜI đại diện cho nền tảng của thương hiệu Vidcom. Điều n&agrave;y được thể hiện bằng việc ch&uacute;ng t&ocirc;i quan t&acirc;m đến c&aacute;ch sống v&agrave; l&agrave;m việc của kh&aacute;ch h&agrave;ng cũng như cung cấp cho mỗi nh&acirc;n vi&ecirc;n một m&ocirc;i trường l&agrave;m việc l&agrave;nh mạnh, cơ hội để học hỏi v&agrave; ph&aacute;t triển. Vidcom cũng đ&aacute;nh gi&aacute; cao sự đa dạng v&agrave; kh&aacute;c biệt văn h&oacute;a, nhằm phấn đấu cải thiện chất lượng cuộc sống của cộng đồng.</p>\r\n<p><img src=\"http://localhost/vidcom/upload/cata-log-1.jpg\" alt=\"\" width=\"757\" height=\"392\" /></p>', 0, 0, 'catalog', 1, '2018-08-01 08:38:41', '2018-08-01 01:38:41'),
(2, 8, '1', NULL, '1534403716_ads-1.jpg', NULL, '', NULL, NULL, 1, 0, 'quang-cao', 1, '2018-08-16 07:15:16', '2018-08-16 07:15:16'),
(3, 8, NULL, NULL, '1534403723_ads-2.jpg', NULL, '', NULL, NULL, 1, 0, 'quang-cao', 2, '2018-08-16 07:15:23', '2018-08-16 07:15:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `alias`, `photo`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(3, 'Trang chủ', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 1, '2017-08-24 04:42:40', '2017-08-23 21:42:40'),
(2, 'Giới thiệu', 'gioi-thieu', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 2, '2017-09-01 01:33:58', '2017-08-31 18:33:58'),
(12, 'Sản phẩm', 'http://localhost/eu/san-pham', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 3, '2017-11-08 02:41:38', '2017-11-07 19:41:38'),
(13, 'Tin tức', 'http://localhost/eu/tin-tuc', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 6, '2017-11-08 03:44:27', '2017-11-07 20:44:27'),
(18, 'Bảng giá', 'http://localhost/eu/bang-gia', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 4, '2017-11-08 01:54:33', '2017-11-07 18:54:33'),
(19, 'Chứng chỉ kĩ thuật', 'http://localhost/eu/chung-chi-ki-thuat', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 5, '2017-11-08 01:13:44', '2017-11-07 18:13:44'),
(20, 'Về chi nhánh', 'http://localhost/eu/gioi-thieu/ve-chi-nhanh', NULL, 1, 0, 2, NULL, NULL, NULL, 'menu-top', 7, '2017-11-08 01:37:27', '2017-11-07 18:37:27'),
(21, 'Về nhà xưởng', 'http://localhost/eu/gioi-thieu/ve-nha-xuong', NULL, 1, 0, 2, NULL, NULL, NULL, 'menu-top', 8, '2017-11-07 18:15:34', '2017-11-07 18:15:34'),
(23, 'Hàng vặn ren', 'http://localhost/eu/san-pham/hang-van-ren', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 9, '2017-11-07 18:43:17', '2017-11-07 18:43:17'),
(24, 'Đai khởi thủy', 'http://localhost/eu/san-pham/dai-khoi-thuy', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 10, '2017-11-07 18:43:39', '2017-11-07 18:43:39'),
(25, 'Van', 'http://localhost/eu/san-pham/van', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 11, '2017-11-07 18:43:54', '2017-11-07 18:43:54'),
(26, 'Phụ kiện HDPE hàn đối đầu', 'http://localhost/eu/san-pham/phu-kien-hdpe-han-doi-dau', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 12, '2017-11-07 18:44:22', '2017-11-07 18:44:22'),
(27, 'Phụ kiện HDPE hàn điện trở', 'https://developer6.gco.vn/euplastic/san-pham/phu-kien-hdpe-han-dien-tro', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 13, '2017-11-07 18:45:09', '2017-11-07 18:45:09'),
(28, 'Phụ kiện HDPE hàn lồng', 'http://localhost/eu/san-pham/phu-kien-hdpe-han-long', NULL, 1, 0, 12, NULL, NULL, NULL, 'menu-top', 14, '2017-11-07 18:45:43', '2017-11-07 18:45:43'),
(29, 'Bảng giá tại Hà Nội', 'http://localhost/eu/bang-gia/bang-gia-tai-ha-noi.html', NULL, 1, 0, 18, NULL, NULL, NULL, 'menu-top', 15, '2017-11-07 18:46:20', '2017-11-07 18:46:20'),
(30, 'Bảng giá tại TP.Hồ Chí Minh', 'http://localhost/eu/bang-gia/bang-gia-tai-tpho-chi-minh.html', NULL, 1, 0, 18, NULL, NULL, NULL, 'menu-top', 16, '2017-11-07 18:46:40', '2017-11-07 18:46:40'),
(31, 'Về công ty', 'http://localhost/eu/gioi-thieu/ve-cong-ty', NULL, 1, 0, 2, NULL, NULL, NULL, 'menu-top', 17, '2017-11-07 19:09:40', '2017-11-07 19:09:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_06_05_042524_create_products_table', 1),
('2017_06_05_045215_create_images_table', 1),
('2017_06_07_033057_create_news_categories_table', 1),
('2017_06_07_033135_create_news_table', 1),
('2017_06_07_033425_create_setting_table', 1),
('2017_06_07_033619_create_pages_table', 1),
('2017_06_07_033944_create_contact_table', 1),
('2017_06_07_034012_create_footer_table', 1),
('2017_06_07_034035_create_slider_table', 1),
('2017_06_07_034117_create_useronline_table', 1),
('2017_06_07_034335_create_order_table', 1),
('2017_06_07_034407_create_order_detail_table', 1),
('2017_06_07_034448_create_newsletter_table', 1),
('2017_06_07_034655_create_order_status_table', 1),
('2017_06_07_064339_create_counter_table', 1),
('2017_06_07_070934_create_partner_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `noibat` int(11) DEFAULT '0',
  `home` int(11) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `cate_id`, `user_id`, `name`, `alias`, `photo`, `background`, `mota`, `content`, `status`, `noibat`, `home`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 0, 8, 'VẼ TRANH TƯỜNG PHÒNG KHÁCH HỢP PHONG THỦY GIA CHỦ', 've-tranh-tuong-phong-khach-hop-phong-thuy-gia-chu', '1542788998_news1.jpg', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 1, 1, 0, NULL, NULL, NULL, 'tin-tuc', 1, '2018-11-22 06:52:00', '2018-11-22 06:52:00'),
(2, 0, 8, 'NHỮNG LÝ DO KHIẾN DỊCH VỤ VẼ TRANH TƯỜNG PHÒNG BÉ ĐƯỢC ƯA CHUỘNG', 'nhung-ly-do-khien-dich-vu-ve-tranh-tuong-phong-be-duoc-ua-chuong', '1542789128_news3.jpg', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 1, 1, 0, NULL, NULL, NULL, 'tin-tuc', 2, '2018-11-22 07:05:53', '2018-11-22 07:05:53'),
(3, 0, 8, 'TỔNG HỢP 15 KIỂU TRANG TRÍ PHÒNG KHÁCH ĐẸP NHẤT TỪ VẼ TRANH TƯỜNG', 'tong-hop-15-kieu-trang-tri-phong-khach-dep-nhat-tu-ve-tranh-tuong', '1542789161_news.jpg', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 1, 1, 0, NULL, NULL, NULL, 'tin-tuc', 3, '2018-11-22 07:05:56', '2018-11-22 07:05:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `background` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `com` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partner`
--

CREATE TABLE `partner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `partner`
--

INSERT INTO `partner` (`id`, `name`, `url`, `photo`, `desc`, `content`, `com`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, '1542872049_news3.jpg', NULL, NULL, 'doi-tac', 1, '2018-11-22 07:34:09', '2018-11-22 07:34:09'),
(2, '2', NULL, '1542872058_5.jpg', NULL, NULL, 'doi-tac', 1, '2018-11-22 07:34:18', '2018-11-22 07:34:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `code` text COLLATE utf8_unicode_ci,
  `color_id` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) DEFAULT '0',
  `price_old` int(11) DEFAULT '0',
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `thuonghieu` text COLLATE utf8_unicode_ci,
  `tinhtrang` int(11) NOT NULL DEFAULT '1',
  `baohanh` text COLLATE utf8_unicode_ci,
  `properties` text CHARACTER SET utf8,
  `model` text COLLATE utf8_unicode_ci,
  `namsanxuat` text COLLATE utf8_unicode_ci,
  `ratepoint` int(2) DEFAULT NULL,
  `quatang` text COLLATE utf8_unicode_ci,
  `huongdan` text COLLATE utf8_unicode_ci,
  `vanchuyen` text COLLATE utf8_unicode_ci,
  `noibat` int(11) DEFAULT '0',
  `spbc` int(11) NOT NULL DEFAULT '0',
  `com` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `user_id`, `cate_id`, `code`, `color_id`, `stt`, `name`, `alias`, `photo`, `price`, `sale`, `price_old`, `mota`, `content`, `thuonghieu`, `tinhtrang`, `baohanh`, `properties`, `model`, `namsanxuat`, `ratepoint`, `quatang`, `huongdan`, `vanchuyen`, `noibat`, `spbc`, `com`, `status`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 8, 2, 'abscc', 'null', 1, 'Sản phẩm demo 1', 'san-pham-demo-1', '1542855845_2.jpg', 400000, 0, 600000, '<p>sdf sdf</p>', '<p>Nội dung chi tiết</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'san-pham-mau', 1, NULL, NULL, NULL, '2018-11-22 04:19:29', '2018-11-22 04:19:29'),
(2, 8, 3, 'ggg', 'null', 1, 'Sản phẩm đã làm demo 1', 'san-pham-da-lam-demo-1', '1542856882_5.jpg', 400000, 0, 600000, '<p>gggg</p>', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'san-pham', 1, NULL, NULL, NULL, '2018-11-22 03:21:22', '2018-11-22 03:21:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `stt` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `noibat` int(2) DEFAULT '0',
  `mota` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `lever` int(11) DEFAULT '0',
  `com` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `stt`, `name`, `alias`, `photo`, `noibat`, `mota`, `status`, `lever`, `com`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Vẽ tranh tường 3D', 've-tranh-tuong-3d', '', 1, NULL, 1, 0, 'san-pham-mau', NULL, NULL, '<p>veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', '2018-11-22 08:55:50', '2018-11-22 08:55:50'),
(2, 0, NULL, 'Vẽ tranh tường mầm non', 've-tranh-tuong-mam-non', '', 1, '<p>&nbsp;sdf sdfs fsd f</p>', 1, 0, 'san-pham-mau', NULL, NULL, NULL, '2018-11-22 08:55:42', '2018-11-22 08:55:42'),
(3, 0, NULL, 'Vẽ tranh tường 3D', 've-tranh-tuong-3d', '', 0, NULL, 1, 0, 'san-pham', NULL, NULL, NULL, '2018-11-22 03:17:41', '2018-11-22 03:17:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tenkhongdau` varchar(255) DEFAULT NULL,
  `mota_vi` text,
  `mota_en` text,
  `photo` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `stt` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`id`, `name`, `tenkhongdau`, `mota_vi`, `mota_en`, `photo`, `thumb`, `stt`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Chí Minh', '', '', '', '', '', 30, 1, '0000-00-00 00:00:00', '2017-11-23 21:04:04'),
(2, 'Hà Nội', '', '', '', '', '', 24, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Hải Phòng', '', '', '', '', '', 28, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'An Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Bà Rịa Vũng Tàu', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Bạc Liêu', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Bắc Cạn', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Bắc Giang', '', '', '', '', '', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Bắc Ninh', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Bến Tre', '', '', '', '', '', 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Bình Dương', '', '', '', '', '', 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Bình Định', '', '', '', '', '', 9, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Bình Phước', '', '', '', '', '', 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Bình Thuận', '', '', '', '', '', 11, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Cà Mau', '', '', '', '', '', 12, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Cao Bằng', '', '', '', '', '', 13, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Cần Thơ', '', '', '', '', '', 14, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Đà Nẵng', '', '', '', '', '', 15, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Đắk Lắc ', '', '', '', '', '', 16, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Đắk Nông', '', '', '', '', '', 17, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Điện Biện', '', '', '', '', '', 18, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Đồng Nai', '', '', '', '', '', 19, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Đồng Tháp', '', '', '', '', '', 20, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Gia Lai', '', '', '', '', '', 21, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Hà Giang', '', '', '', '', '', 22, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Hà Nam', '', '', '', '', '', 23, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Hà Tây', '', '', '', '', '', 25, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Hà Tĩnh', '', '', '', '', '', 26, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Hải Dương', '', '', '', '', '', 27, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Hòa Bình', '', '', '', '', '', 29, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Hậu Giang', '', '', '', '', '', 31, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Hưng Yên', '', '', '', '', '', 32, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Khánh Hòa', '', '', '', '', '', 33, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Kiên Giang', '', '', '', '', '', 34, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Kon Tum', '', '', '', '', '', 35, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Lai Châu', '', '', '', '', '', 36, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Lào Cai', '', '', '', '', '', 37, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Lạng Sơn', '', '', '', '', '', 38, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Lâm Đồng ', '', '', '', '', '', 39, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Long An', '', '', '', '', '', 40, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Nam Định', '', '', '', '', '', 41, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Nghệ An', '', '', '', '', '', 42, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Ninh Bình', '', '', '', '', '', 43, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Ninh Thuận', '', '', '', '', '', 44, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Phú Thọ', '', '', '', '', '', 45, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Phú Yên', '', '', '', '', '', 46, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Quảng Bình ', '', '', '', '', '', 47, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Quảng Nam', '', '', '', '', '', 48, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Quảng Ngãi', '', '', '', '', '', 49, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Quảng Ninh', '', '', '', '', '', 50, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Quảng Trị', '', '', '', '', '', 51, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Sóc Trăng', '', '', '', '', '', 52, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Sơn La', '', '', '', '', '', 53, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Tây Ninh', '', '', '', '', '', 54, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Thái Bình', '', '', '', '', '', 55, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Thái Nguyên', '', '', '', '', '', 56, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Thanh Hóa', '', '', '', '', '', 57, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Thừa Thiên - Huế', '', '', '', '', '', 58, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Tiền Giang', '', '', '', '', '', 59, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Trà Vinh', '', '', '', '', '', 60, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Tuyên Quang', '', '', '', '', '', 61, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Vĩnh Long', '', '', '', '', '', 62, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Vĩnh Phúc', '', '', '', '', '', 63, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Yên Bái', '', '', '', '', '', 64, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `hotline` text COLLATE utf8_unicode_ci,
  `fax` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `photo_footer` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `photo_page` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `favico` text COLLATE utf8_unicode_ci,
  `title_index` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `facebook` text COLLATE utf8_unicode_ci,
  `twitter` text COLLATE utf8_unicode_ci,
  `skype` text COLLATE utf8_unicode_ci,
  `google` text COLLATE utf8_unicode_ci,
  `youtube` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT '0',
  `toado` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `iframemap` text COLLATE utf8_unicode_ci,
  `codechat` longtext COLLATE utf8_unicode_ci,
  `analytics` longtext COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `name`, `title`, `company`, `website`, `address`, `phone`, `hotline`, `fax`, `email`, `photo`, `photo_footer`, `photo_page`, `favico`, `title_index`, `mota`, `content`, `facebook`, `twitter`, `skype`, `google`, `youtube`, `status`, `toado`, `copyright`, `iframemap`, `codechat`, `analytics`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Tranh Tường', 'Tranh Tường', 'Tranh Tường', NULL, 'Vạn Phúc, Hà Nội', '0987654321', NULL, 'Chúng tôi vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rối nghĩa dễ gây rối trí và cảm trở công việc tập trung vào yếu tố trình bày văn bản.', 'acb@gmail.com', '1542771860_logo.png', '1542772513_logo_trang.png', '1542771860_logo1.png', '1542771860_logo1.png', 'http://abc.com.vn', NULL, NULL, 'https://www.facebook.com/FacebookforDevelopers/', 'https://twitter.com/?lang=vi', NULL, 'https://plus.google.com/?hl=vi', 'https://www.youtube.com/', 1, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.7749747466096!2d105.82069491439643!3d21.00165548601309!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac8429ac32cb%3A0x592668996cef591f!2zMzE1IFRyxrDhu51uZyBDaGluaCwgS2jGsMahbmcgVGjGsOG7o25nLCDEkOG7kW5nIMSQYSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1531887013298\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2018-11-21 03:55:13', '2018-11-21 03:55:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `photo1` text CHARACTER SET utf8,
  `photo2` text CHARACTER SET utf8,
  `icon` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `user_id`, `name`, `link`, `photo`, `photo1`, `photo2`, `icon`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 8, '1', NULL, '1542773262_banner.png', '', '', NULL, NULL, NULL, 1, 0, 'gioi-thieu', 1, '2018-11-21 04:07:42', '2018-11-21 04:07:42'),
(2, 8, '2', NULL, '1542773272_banner.png', '', '', NULL, NULL, NULL, 1, 0, 'gioi-thieu', 2, '2018-11-21 04:07:52', '2018-11-21 04:07:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slogan`
--

CREATE TABLE `slogan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `photo` text,
  `photo2` text,
  `stt` int(11) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `useronline`
--

CREATE TABLE `useronline` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '2',
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `level`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'tuanduy2012', '$2y$10$DceYJxR4ALmUW.Vt6k9En.1ubJhJGvWX1HISRloBERLNJ8Qq85itO', 'Tuan Duy', 'duydoan.nina@gmail.com', '', '', 1, NULL, 1, 'X37mpbjW1WDCjwH3s4Vq1Jkv3WRNJceXZlbLwHaa', '2017-06-14 23:42:39', '2017-06-14 23:42:39'),
(4, 'evernigh', '$2y$10$pprRO9LhYKADS60bvetRnOYoS3L74giVWf3D/wNZXlDLDRRx0bH6e', 'Duy Đoàn', 'tuanduy_mc2006@yahoo.com', '', '', 0, NULL, 1, '6CirvIekDhWLx3xFrnv7v39bFmalTsH21F4WABTq', '2017-06-16 02:51:34', '2017-06-16 02:51:34'),
(5, 'gco_admin', '$2y$10$IP3633RgCQNAfs6J8cic9.XRNb4v7KxvcI0oF1HpWBQKqPT4v.JYG', 'Admin', 'gco@gmail.com', '0985431797', '315 Trường chinh, Thanh Xuân, Hà Nội', 1, '5.jpg', 1, 'Ljivi1hsYgR59Oy0OVCKjGS9jXPufymhqIPUw5KmqOOltNBeg2cHsAjOZ4Ve', '2018-07-13 09:06:16', '2018-07-13 02:06:16'),
(7, 'hoangchuong', '$2y$10$PnaSJxmZdL0x0wRtj4q0tODPWKtxI85VefEFNZWDQKEH6q8rxjLc6', 'chuong', 'chuonghoanghong@gmail.com', NULL, NULL, 1, NULL, 1, 'DSYV3dr0q7IjUiVKsa4tl4ApOSuDPybd17EupcaO', '2017-11-07 01:31:10', '2017-11-07 01:31:10'),
(8, 'admin', '$2y$10$54bF9zCcwvAY1oDKCLsN3O/sEUOF/a0Q8Zz/UKti5CzFogRactG3O', 'admin', 'admin@gmail.com', NULL, NULL, 1, 'logo-home-2.png', 1, 'mBaTHa9DMxbdT8l2IW7o5lJGKK3tfAHhp05s6YkXlK1vkLlFYbIDo0dgqqyt', '2018-07-31 10:05:50', '2018-07-13 18:38:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `link` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `link`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nvy3XBg-tmU\" frameborder=\"0\" allowfullscreen></iframe>', '2017-10-15 20:31:58', '2017-10-15 20:34:30');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner_content`
--
ALTER TABLE `banner_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner_position`
--
ALTER TABLE `banner_position`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `campaign_cards`
--
ALTER TABLE `campaign_cards`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `lienket`
--
ALTER TABLE `lienket`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `news_categories` ADD FULLTEXT KEY `name1` (`name`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slogan`
--
ALTER TABLE `slogan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `banner_content`
--
ALTER TABLE `banner_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `banner_position`
--
ALTER TABLE `banner_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `campaign_cards`
--
ALTER TABLE `campaign_cards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `lienket`
--
ALTER TABLE `lienket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `slogan`
--
ALTER TABLE `slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `useronline`
--
ALTER TABLE `useronline`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
