-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 19, 2022 at 04:22 PM
-- Server version: 8.0.28
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.jpg',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lever` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `image`, `description`, `password`, `token`, `lever`, `created_at`, `updated_at`) VALUES
(1, 'tài khoản cá nhân admin', 'admin@gmail.com', 'admin.1666834305.jpg', 'đây là tài khoản admin của e-learing', '$2y$10$/1OiAqeLYry5GT61olv0jORZnF31To/4TD5HPZIVkeEFEyNPSvhlO', '59f3608d3f6577dc339384516df100f7', 2, '2022-05-17 00:29:31', '2022-10-26 18:31:45'),
(79, 'test1', 'test01@gmail.com', 'avatar.jpg', 'tai thoan demo', '$2y$10$rUXsxgbhdK8cVQ8BkPr3He4aMeQJKLvUabewq6ACkIfwThYShGkL.', '5f23c8d374294b9560737b9342bf4d25', 1, '2022-10-03 01:06:13', '2022-10-03 06:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint UNSIGNED NOT NULL,
  `id_admin` bigint UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `type` tinyint NOT NULL DEFAULT '2',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `id_admin`, `name`, `image`, `price`, `type`, `description`, `created_at`, `updated_at`) VALUES
(213, 79, 'Khóa học lập trình Python cơ bản', '1667411584.jpg', 500000, 2, 'Python là một ngôn ngữ lập trình kịch bản (scripting language) do Guido van Rossum tạo ra năm 1990.\r\n\r\nĐến nay thì cộng đồng người sử dụng ngôn ngữ này rất đông, nếu so sánh từ bảng xếp hạng các ngôn ngữ năm 2017 thì Python đứng tứ 5 trong top 10 ngôn ngữ phổ biến nhất.\r\n\r\nVới Python bạn có thể làm được nhiều điều khác nhau, như xây dựng web, application hay xây dựng các ứng dụng trí tuệ nhân tạo ....', '2022-11-02 10:53:04', '2022-11-02 10:53:04'),
(214, 79, 'Khóa học lập trình Java đến OOP', '1667412950.jpg', 720000, 2, 'Java là một một ngôn ngữ lập trình hiện đại, bậc cao, hướng đối tượng, bảo mật và mạnh mẽ.', '2022-11-02 11:15:50', '2022-11-02 11:15:50'),
(215, 79, 'Khóa học lập trình C++ Cơ bản', '1667413822.png', 450000, 2, 'Nói đến C++ thì không thể không nhắc đến những điểm mạnh của nó dưới đây:\r\n\r\nTính phổ biến : C++ là một trong những ngôn ngữ lập trình phổ biến trên thế giới.\r\nTính thực thi nhanh: Nếu bạn rành C++ thì bạn có thể lập trình nhanh. Một trong những mục tiêu của C++ là khả năng thực thi. Và nếu bạn cần thêm các tính năng cho chương trình, C++ cho phép bạn dùng ngôn ngữ Assembly (Hợp ngữ) – Ngôn ngữ lập trình bậc thấp nhất – để giao tiếp trực tiếp với phần cứng của máy tính.\r\nThư viện đầy đủ: Có rất nhiều tài nguyên cho người lập trình bằng C++, bao gồm cả đồ hoạ API, 2D, 3D, vật lý các thiết bị âm thanh hỗ trợ giúp cho lập trình viên dễ dàng thực thi.\r\nĐa mô hình: C++ cho phép bạn lập trình theo cấu trúc tuyến tính, hướng chức năng, hướng đối tượng đa dạng tuỳ theo yêu cầu của người lập trình', '2022-11-02 11:30:22', '2022-11-02 11:30:22'),
(216, 79, 'Lập trình PHP basic', '1667414595.png', 550000, 2, 'PHP là viết tắt của chữ \"Hypertext Preprocessor\", đây là một ngôn ngữ lập trình được sử dụng để viết ở phía máy chủ (server side). Và PHP là một open source, nên chính vì thế nó có tính cộng đồng của nó cao và đồng thời cũng sẽ có rất nhiều các framawork, CMS hỗ trợ như Laravel, Wordpress.', '2022-11-02 11:43:15', '2022-11-02 11:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint UNSIGNED NOT NULL,
  `courses_id` bigint UNSIGNED NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `courses_id`, `name`, `link`, `description`, `created_at`, `updated_at`) VALUES
(3037, 213, '[Khóa học lập trình Python cơ bản] - Bài 1_ Function trong python - Positional', 'test1Video1667411722.mp4', 'function là một nhóm các câu lệnh (khối code) liên quan tới nhau, nhằm mục đích thực hiện một công việc nào đó', '2022-11-02 10:55:22', '2022-11-02 10:55:22'),
(3038, 213, '[Khóa học lập trình Python cơ bản] - Bài 2_ Function trong Python - Return', 'test1Video1667411839.mp4', 'Lệnh return trong Python thường được dùng để thoát hàm và trở về nơi mà tại đó hàm được gọi.', '2022-11-02 10:57:19', '2022-11-02 10:57:19'),
(3039, 214, '[Khóa học lập trình Java đến OOP] - Bài 1_ Break và Continue trong Java', 'test1Video1667413065.mp4', 'Từ khóa break trong java dùng để thoát một vòng lặp, từ khóa continue được dùng để bỏ tiếp tục vòng lặp.', '2022-11-02 11:17:45', '2022-11-02 11:17:45'),
(3040, 214, '[Khóa học lập trình Java đến OOP] - Bài 2_Switch trong Java', 'test1Video1667413178.mp4', 'Mệnh đề switch-case trong java được sử dụng để thực thi 1 hoặc nhiều khối lệnh từ nhiều điều kiện.', '2022-11-02 11:19:38', '2022-11-02 11:19:38'),
(3041, 214, '[Khóa học lập trình Java đến OOP] - Bài 3_ Overriding và Overloading trong Java', 'test1Video1667413277.mp4', 'Overloading (Nạp chồng phương thức) và Overriding (ghi đè phương thức) là hai khái niệm cơ bản trong lập trình mà bất kì newbie nào cũng cần phân biệt', '2022-11-02 11:21:17', '2022-11-02 11:21:17'),
(3042, 214, '[Khóa học lập trình Java đến OOP] - Bài 4_ Giải thích hàm main trong Java', 'test1Video1667413524.mp4', 'Phương thức main trong Java là một trong những phương thức đầu tiên mà người học Java tiếp cận khi bắt đầu học ngôn ngữ lập trình Java.', '2022-11-02 11:25:24', '2022-11-02 11:25:24'),
(3043, 215, '[Khóa học lập trình C++ Cơ bản] - Bài 1_ Kiểu Boolean và Câu điều kiện If', 'test1Video1667413973.mp4', 'Trong C++, ngoài kiểu integer, floating point, character, thì vẫn còn một kiểu dữ liệu cực kỳ quan trọng. Bạn sẽ được học nó trong bài học hôm nay: Kiểu luận lý và cơ bản về Câu điều kiện If trong C++ (Boolean and If statements basic)', '2022-11-02 11:32:53', '2022-11-02 11:32:53'),
(3044, 215, '[Khóa học lập trình C++ Cơ bản] - Bài 2_ Biến tĩnh trong C++ (Static variables in C++)', 'test1Video1667414044.mp4', 'Biến tĩnh (static variables) là biến được tạo ra duy nhất một lần khi gọi hàm lần đầu tiên và nó sẽ tiếp tục tồn trong suốt vòng đời của chương trình.', '2022-11-02 11:34:04', '2022-11-02 11:34:04'),
(3045, 215, '[Khóa học lập trình C++ Cơ bản] - Bài 3_ Ép kiểu tường minh (Explicit type conversion)', 'test1Video1667414106.mp4', 'Ép kiểu tường minh (Explicit type conversion) là quá trình chuyển đổi kiểu dữ liệu một cách tường minh (rõ ràng) bởi lập trình viên, sử dụng toán tử ép kiểu (casting operator) để thực hiện việc chuyển đổi.', '2022-11-02 11:35:06', '2022-11-02 11:35:06'),
(3046, 216, 'Bài 1 _ Lập trình PHP basic - for, while, do while, foreach, function', 'test1Video1667414718.mp4', 'Sử dụng các vòng lặp như vòng lặp for, vòng lặp foreach, vòng lặp while và do while trong PHP cũng như từ khóa break và continue trong các vòng lặp PHP', '2022-11-02 11:45:18', '2022-11-02 11:45:18'),
(3047, 216, 'Bài 2 _ Thực hiện truy vấn dữ liệu từ PHP tới MySql', 'test1Video1667414855.mp4', 'Trong bài học này chúng ta sẽ tìm hiểu cách lấy về dữ liệu từ một bảng cho trước sử dụng MySQLi extension.', '2022-11-02 11:47:35', '2022-11-02 11:47:35'),
(3048, 216, 'Bài 3_ Tối ưu hoá code  mysql +php, tạo thư viện chung trong lập trình PHP căn bản', 'test1Video1667414942.mp4', 'Hiện nay, PHP là loại ngôn ngữ lập trình phổ biến được rất người dùng dùng tin tưởng và lựa chọn để phát triển các ứng dụng web. Bởi đây là một trong những ngôn ngữ tương thích cao với mọi ngôn ngữ và trình duyệt web.\r\n\r\nVì thế mà PHP là lựa chọn tối ưu dành cho các doanh nghiệp vừa và nhỏ khi muốn thiết kế và phát triển web của mình.', '2022-11-02 11:49:02', '2022-11-02 11:49:02'),
(3049, 216, 'Bài 4 _ Thực hiện đăng nhập tài khoản sử dụng php mysql', 'test1Video1667415001.mp4', 'Sau khi các bạn đã học các kiến thức cơ bản về PHP và MySQL thì trong bài này mình sẽ hướng dẫn các bạn xây dựng chức năng đăng nhập và đăng ký sử dụng php và mysql.', '2022-11-02 11:50:01', '2022-11-02 11:50:01'),
(3050, 215, '[Khóa học lập trình C++ Cơ bản] - Bài 4_ Câu điều kiện Switch (Switch statements)', 'test1Video1667415261.mp4', 'Trong bài này chúng ta sẽ tìm hiểu lệnh switch case trong C++, đây là cũng là một lệnh rẻ nhánh rất hữu ích.', '2022-11-02 11:54:21', '2022-11-02 11:54:21'),
(3051, 213, '[Khóa học lập trình Python cơ bản] - Bài 3_ Function trong Python - Đệ Quy', 'test1Video1667415566.mp4', 'Hàm đệ quy trong Python là gì? Đệ quy là cách lập trình hoặc code một vấn đề, trong đó hàm tự gọi lại chính nó một hoặc nhiều lần trong khối code.', '2022-11-02 11:59:26', '2022-11-02 11:59:26'),
(3052, 213, '[Khóa học lập trình Python cơ bản] - Bài 4_ Comment trong Python', 'test1Video1667415699.mp4', 'Python hỗ trợ hai kiểu comment đó là comment 1 dòng và nhiều dòng.', '2022-11-02 12:01:39', '2022-11-02 12:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `courses_id` bigint UNSIGNED NOT NULL,
  `price_buy` int NOT NULL,
  `rate` double(8,2) DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `users_id`, `courses_id`, `price_buy`, `rate`, `comment`, `created_at`, `updated_at`) VALUES
(2022, 1204, 213, 500000, 5.00, 'hmm', '2022-11-02 12:03:48', '2022-11-02 12:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `password`, `token`, `created_at`, `updated_at`) VALUES
(1201, 'Hung', 'test01@gmail.com', 'avatar.png', '$2y$10$nvxpEFY1nM/nJvzi9aidUuejJ7RSwUz5H9fg8MukVEUjEIPou78bi', 'c0c0e4af3f0948f128449f3ec12f6c85', '2022-10-03 06:21:44', '2022-10-03 06:21:44'),
(1202, 'tai khoan so 2', 'test02@gmail.com', 'avatar.png', '$2y$10$EbCDnCw0aKsraDUot1vpCeDOMmy.hW0Ccg.rMySCa.U8R0PUqXM4y', '6fed1480cdd98cbc82468c5aed279581', '2022-10-05 01:53:57', '2022-10-05 01:53:57'),
(1203, 'tai khoan so 3', 'test03@gmail.com', 'avatar.png', '$2y$10$Rpq.N8Zg3bLXwexhiN5B.O2IXVJmnlDxgQgQKsFa52j5rTnhz9N.e', '9b46ff110ff77d2c22b7e997ae42bb3c', '2022-10-05 02:07:39', '2022-10-05 02:07:39'),
(1204, 'duong', 'duong@gmail.com', 'avatar.png', '$2y$10$rgDOqZBPSvIWIfO4sFx70ujAp22k6zIaAxAnWeRamrEwihcAg1Dwq', 'bcd7f2e61da96520ef75c8f7010101c6', '2022-10-12 18:38:31', '2022-10-12 18:38:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_id_admin_foreign` (`id_admin`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_courses_id_foreign` (`courses_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_users_id_foreign` (`users_id`),
  ADD KEY `orders_courses_id_foreign` (`courses_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_token_unique` (`token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3053;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1205;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_id_admin_foreign` FOREIGN KEY (`id_admin`) REFERENCES `admins` (`id`);

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_courses_id_foreign` FOREIGN KEY (`courses_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_courses_id_foreign` FOREIGN KEY (`courses_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `orders_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
