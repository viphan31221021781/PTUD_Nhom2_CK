-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 14, 2024 lúc 01:13 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecommerceweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `blog_id` int(11) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_content` text NOT NULL,
  `blog_date` datetime DEFAULT current_timestamp(),
  `blog_author` varchar(255) DEFAULT NULL,
  `blog_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_blog`
--

INSERT INTO `tbl_blog` (`blog_id`, `blog_title`, `blog_content`, `blog_date`, `blog_author`, `blog_image`) VALUES
(18, 'Áo Dài Tết 2025: Sự Lựa Chọn Thanh Lịch Cho Phái Đẹp', '<h3 dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 14pt; margin-bottom: 4pt;\"><span style=\"background-color: transparent; font-size: 11pt; font-family: Arial, sans-serif; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Tết Nguyên Đán 2025 đang đến gần, và như mọi năm, áo dài vẫn là lựa chọn hàng đầu của phái đẹp để chào đón năm mới. Không chỉ là trang phục truyền thống, áo dài còn mang trong mình vẻ đẹp thanh lịch, tinh tế, là biểu tượng của sự duyên dáng và nữ tính. Để chuẩn bị cho Tết này, hãy cùng </span><span style=\"background-color: transparent; font-size: 11pt; font-family: Arial, sans-serif; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Miju</span><span style=\"background-color: transparent; font-size: 11pt; font-family: Arial, sans-serif; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\"> khám phá những mẫu áo dài mới nhất, phù hợp với xu hướng và sở thích của bạn!</span></h3><h4 dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 2pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">1. Áo Dài Tết: Vẻ Đẹp Truyền Thống Nhưng Cũng Phá Cách</span></h4><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><b style=\"font-weight:normal;\"><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Áo dài Tết 2025 không chỉ giữ vững được giá trị truyền thống mà còn được làm mới với những thiết kế trẻ trung, hiện đại. Những mẫu áo dài với họa tiết hoa mai, hoa đào, hay các hình ảnh tượng trưng cho sự sum vầy, may mắn luôn được ưa chuộng vào dịp Tết. Bên cạnh đó, những chiếc áo dài cách tân với phần tay phồng, cổ áo cao, hay vạt áo được cắt xẻ tinh tế giúp phái đẹp vừa giữ được nét thanh thoát vừa thêm phần nổi bật.</span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-right: 0.177165pt; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><span style=\"border:none;display:inline-block;overflow:hidden;width:687px;height:819px;\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXfYsvIoy9KGVNuumR8GdlA2vGXMjoAUAbrBIvbgBAppoBLmmBRiBE38Ivsu4QqFhFCJW_-6Qw3si6zKg0IO44W4h-6vEbribRvAoV34PGogeYytPEqtBdlKHrqVetyyu269tPWaKQ?key=038SXZo-jYBT0_R6MRRNYCku\" width=\"687\" height=\"819\" style=\"margin-left:0px;margin-top:0px;\"></span></span></p></b></h3><h4 dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 2pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">2. Chọn Màu Sắc Phù Hợp Cho Tết</span></h4><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><b style=\"font-weight:normal;\"><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Màu sắc của áo dài cũng là một yếu tố quan trọng khi chọn trang phục Tết. </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Màu đỏ</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> và </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">vàng</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> luôn được ưa chuộng trong dịp Tết vì đây là những gam màu mang lại sự may mắn, tài lộc cho gia chủ. Tuy nhiên, để thêm phần mới mẻ và tươi tắn, bạn cũng có thể chọn những gam màu pastel nhẹ nhàng như </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">hồng</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">, </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">lam</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">, hoặc </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">tím</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">. Đừng quên rằng, việc lựa chọn màu sắc phù hợp với làn da và phong cách cá nhân sẽ giúp bạn tự tin và nổi bật hơn trong ngày Tết.</span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><span style=\"border:none;display:inline-block;overflow:hidden;width:690px;height:786px;\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXcm_E0dDDb1jD5IAg9Uwzlcu8Pjjw4trRrClg8_OyrmXdfoyx2u4Q7pPVfvdvpwTl7AEBnl-mNT6WevKgvhPPs9BGqrLi6R-FsEgPAkgQTO15uN4eWTzI6r4QOxto6TIMkn9j7XIw?key=038SXZo-jYBT0_R6MRRNYCku\" width=\"690\" height=\"786\" style=\"margin-left:0px;margin-top:0px;\"></span></span></p></b></h3><h4 dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 2pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">3. Chất Liệu Vải Áo Dài: Mềm Mại, Dễ Dàng Di Chuyển</span></h4><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><b style=\"font-weight:normal;\"><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Tết là dịp để bạn cùng gia đình quây quần, sum vầy, nên một chiếc áo dài không chỉ đẹp mà còn phải thoải mái. </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Chất liệu vải</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> đóng vai trò quan trọng trong việc tạo nên sự hoàn hảo cho chiếc áo dài. Vải </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">lụa</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">, </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">gấm</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">, hay </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">nhung</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> đều là lựa chọn tuyệt vời cho Tết vì sự mềm mại, thanh thoát và khả năng giữ form tốt. Những chất liệu này giúp bạn dễ dàng di chuyển mà không cảm thấy gò bó, đồng thời tạo nên vẻ ngoài sang trọng, đẳng cấp.</span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><span style=\"border:none;display:inline-block;overflow:hidden;width:679px;height:790px;\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXedk2urT5YxDdcGU8x4dlJO4mLRuW1wKCBf0D97_-d-7iRijGluUo2--LUHOEJdtgdWKbGFiKBhE3iMwzSV5xIapB88fOVIQ8rm6cKBdBNCNJad5aW4pL73Hj9VPIH0GyGdRhNfxA?key=038SXZo-jYBT0_R6MRRNYCku\" width=\"679\" height=\"790\" style=\"margin-left:0px;margin-top:0px;\"></span></span></p></b></h3><h4 dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 2pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">4. Kết Hợp Với Phụ Kiện Để Thêm Phần Tỏa Sáng</span></h4><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><b style=\"font-weight:normal;\"><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Áo dài Tết sẽ càng thêm nổi bật khi được kết hợp với những phụ kiện tinh tế. Một chiếc </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">khăn choàng lụa</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">, </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">nón lá</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">, hay </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">hoa cài đầu</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> sẽ là điểm nhấn hoàn hảo cho bộ trang phục của bạn. Đừng quên đôi </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">giày cao gót</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> hay </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">bánh xe gỗ</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> thanh thoát để tạo nên một tổng thể hài hòa và hoàn hảo.</span></p></b></h3><h4 dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 2pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">5. Áo Dài Tết: Lựa Chọn Hoàn Hảo Cho Mọi Dịp</span></h4><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Dù là bạn sẽ tham dự tiệc Tết gia đình, hay một buổi gặp gỡ bạn bè, hay thậm chí là tham gia những buổi lễ chùa đầu năm, áo dài vẫn luôn là lựa chọn lý tưởng. Với sự kết hợp hoàn hảo giữa vẻ đẹp truyền thống và sự sáng tạo trong thiết kế, áo dài sẽ giúp bạn tự tin khoe sắc và tỏa sáng trong mọi dịp Tết 2025.</span></p><p dir=\"ltr\" style=\"text-align: justify; line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Không chỉ là một bộ trang phục, áo dài là sự kết hợp hoàn hảo giữa văn hóa, lịch sử và phong cách cá nhân. Hãy để </span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">Miju </span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\">giúp bạn chọn lựa chiếc áo dài hoàn hảo nhất cho Tết 2025. Với các mẫu áo dài thanh lịch, màu sắc tươi mới và thiết kế tinh tế, bạn sẽ luôn là người phụ nữ nổi bật, thanh thoát trong mọi dịp lễ hội.</span></p><div style=\"text-align: justify;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span></div></h3>', '2024-12-12 19:01:53', '', 'blog-18.jpg'),
(19, 'Mùa Giáng Sinh 2025: Tặng Hộp Quà Sang Trọng Cho Đơn Hàng Từ 800K', '<p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><span style=\"border:none;display:inline-block;overflow:hidden;width:2048px;height:681px;\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXf71yz_kwkmDjt41ljcwH69t7hvLsbxAOzJ5k2aVFkvQAkWMmI92zfVw6LG3tWjf_LvacwDkWlAgblGa1yNP7Bh26SiIqnRKqGhRw2Cdk6VFlx0BAuhR27uK0-jXTi8qyKa6IUFBw?key=038SXZo-jYBT0_R6MRRNYCku\" width=\"2048\" height=\"681\" style=\"margin-left:0px;margin-top:0px;\"></span></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Mùa Giáng Sinh là thời điểm để trao gửi yêu thương và những món quà đầy ý nghĩa. Để mùa lễ hội thêm phần ấm áp, </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Miju</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> xin gửi đến bạn ưu đãi đặc biệt: </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Tặng hộp đựng quà sang trọng</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> cho mọi đơn hàng từ 800.000VND khi mua sắm trên website của chúng tôi.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Hộp quà tinh tế, sang trọng sẽ là cách hoàn hảo để bạn gửi tặng những món quà thời trang đầy yêu thương cho người thân, bạn bè hay chính mình. Với mỗi món quà từ </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Miju</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">, không chỉ là sản phẩm chất lượng mà còn là một thông điệp tràn đầy sự quan tâm, tinh tế.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Đừng bỏ lỡ cơ hội này, cùng </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Miju</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> làm mùa Giáng Sinh thêm phần lộng lẫy và ý nghĩa!</span></p><p><span id=\"docs-internal-guid-bfe81de9-7fff-a7a8-986c-45e637e717dc\"></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Chương trình áp dụng đến hết 31/12/2025.</span></p>', '2024-12-12 21:21:19', '', 'blog-19.png'),
(20, 'Miju - Lễ hội mua sắm đón mùa Thu/Đông 2024', '<h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size:13.999999999999998pt;font-family:Arial,sans-serif;color:#434343;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Miju mang đến cho bạn những ưu đãi cực kỳ hấp dẫn mà bạn không thể bỏ lỡ!</span></h3><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><span style=\"border:none;display:inline-block;overflow:hidden;width:2048px;height:299px;\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXcLaHzPW8uSaUCA8t-fxI7tWX8Ec43ByW4nYYVaMnsV302Pl67jT65h6oZqLaK2qou2xceTR9VjCiWIVempfjZPTy3vvOlRW2LTOgeycaawUYDZvtSBC62Dzuq63J2GEwChohoFOg?key=038SXZo-jYBT0_R6MRRNYCku\" width=\"2048\" height=\"299\" style=\"margin-left:0px;margin-top:0px;\"></span></span></p><h4 dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🎁 MIỄN PHÍ GIAO HÀNG CHO ĐƠN HÀNG TỪ 500.000VND</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><span style=\"border:none;display:inline-block;overflow:hidden;width:756px;height:460px;\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXfSfa_uvLpL8uzPB36ScBQahS5FfQlg5BpH_Q2lHfYStzOoMLLNEeQjXfV2Uk1j2Al2vV2cl16Xj0QZCxqs3w94Y22YLKVR-5rJWb53v3YtjRtkqkUargye-WFyXcH_vdngs-X1ZQ?key=038SXZo-jYBT0_R6MRRNYCku\" width=\"756\" height=\"460\" style=\"margin-left:0px;margin-top:0px;\"></span></span></h4><h4 dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🎉 QUÀ TẶNG ĐỘC QUYỀN TRONG LIVESTREAM</span></h4><h4 dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><span style=\"border:none;display:inline-block;overflow:hidden;width:1636px;height:632px;\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXcNQqiNZN_5QMEBuB2mcQ5b7rvXnB7qpHbj0JtmfoWsKHPhvyeFsGQhQPIEDwnG-rnhmr_g0naHDQ6MYpuLemYwCpCpWZeTM1Mt6hBk5N_Uikr9tLeNB4sT4RJe2JKOuKsol8e3uQ?key=038SXZo-jYBT0_R6MRRNYCku\" width=\"1636\" height=\"632\" style=\"margin-left:0px;margin-top:0px;\"></span></span></h4><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Từ ngày </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">06.12 đến 12.12.2024</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">, tham gia chuỗi livestream của Miju để nhận những quà tặng đặc biệt chỉ có trong livestream! Hãy đón xem những chương trình trực tiếp của chúng tôi để khám phá các món đồ thời trang ấn tượng và nhận ngay những món quà tuyệt vời!</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Chú ý:</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> Quà tặng chỉ có sẵn trong livestream, đừng bỏ lỡ cơ hội này!</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Các khuyến mãi và ưu đãi chỉ kéo dài từ </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">06.12 đến 12.12.2024</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">. Hãy nhanh tay săn những món đồ thời trang yêu thích, vì số lượng có hạn và ưu đãi chỉ áp dụng cho thành viên </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">App/Website</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Miju luôn mang đến những bất ngờ và ưu đãi hấp dẫn, đặc biệt là trong mùa lễ hội này. Đừng bỏ lỡ cơ hội để mình trở nên nổi bật với những bộ trang phục thời thượng từ </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">BST Thu/Đông 2024</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">.</span></p><p><span id=\"docs-internal-guid-58795dbe-7fff-01de-9072-d07652953a3a\"></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">👉 </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Xem livestream và nhận quà tặng ngay</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"> tại đây!</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Đừng quên theo dõi ứng dụng để không bỏ lỡ các chương trình đặc biệt!</span></p>', '2024-12-12 21:25:03', '', 'blog-20.png'),
(21, ' Quét VNPAY Nhận Ngay Ưu Đãi Giảm Lên Tới 100k Tại Miju', '<h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"background-color: transparent; font-size: 11pt; font-family: Arial, sans-serif; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\"><span style=\"border:none;display:inline-block;overflow:hidden;width:2048px;height:641px;\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXdo_eP1jxbUf_DWG8eszRnkoXOQVIFack6HogzIX_5c7whMdl70B_uq7WxKdrKB7wJ04exawwLr5moqZ4-LOpY70Em-iIlgrx_9fIqL4SZEC1Ntpo82E8uHycWTsYE3hAZux87u?key=038SXZo-jYBT0_R6MRRNYCku\" width=\"2048\" height=\"641\" style=\"margin-left:0px;margin-top:0px;\"></span></span><span style=\"background-color: transparent; font-size: 11pt; font-family: Arial, sans-serif; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; vertical-align: baseline; white-space-collapse: preserve;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Cách Thức Tham Gia</font></font></font></font></span></h3><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Chọn những sản phẩm yêu thích từ </font></font></span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Miju </font></font></span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">.</font></font></span></p></li><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Vào giỏ hàng và chọn phương thức thanh toán qua </font></font></span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">VNPAY </font></font></span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">.</font></font></span></p></li><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Quét mã QR VNPAY để thanh toán và </font></font></span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">nhận ưu đãi giảm giá </font></font></span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">.</font></font></span></p></li></ol><h4 dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:2pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Khuyến Mãi Có Hạnh Phúc&nbsp;</font></font></span></h4><ul style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:12pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><h4 dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:2pt;\" role=\"presentation\"><span style=\"font-size:12pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Ưu đãi chỉ áp dụng trong </font></font></span><span style=\"font-size:12pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">thời gian có hạn </font></font></span><span style=\"font-size:12pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">, vì vậy đừng bỏ lỡ cơ hội mua sắm tiết kiệm này!</font></font></span></h4></li></ul><p></p><ul style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Xem chi tiết ưu đãi trong ảnh</font></font></span></p></li></ul>', '2024-12-12 21:27:17', '', 'blog-21.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(37, 'Trắng'),
(38, 'Đen'),
(39, 'Xám'),
(40, 'Be'),
(41, 'Kem'),
(42, 'Nâu'),
(43, 'Đỏ'),
(44, 'Xanh Dương'),
(45, 'Vàng'),
(46, 'Hồng Nhạt'),
(47, 'Xanh Mint'),
(48, 'Xanh da trời nhạt'),
(49, 'Tím Nhạt'),
(50, 'Vàng Nhạt'),
(51, 'Đỏ đô'),
(52, 'Xanh Lá Đậm'),
(53, 'Cam Cháy'),
(54, 'Tím Than'),
(55, 'Xanh Cổ Vịt'),
(56, 'Cam neon'),
(57, 'Xanh Navy'),
(58, 'Xanh Lá Cây'),
(59, 'Tím');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'An Giang'),
(2, 'Bà Rịa - Vũng Tàu'),
(3, 'Bắc Giang'),
(4, 'Bắc Kạn'),
(5, 'Bạc Liêu'),
(6, 'Bắc Ninh'),
(7, 'Bến Tre'),
(8, 'Bình Định'),
(9, 'Bình Dương'),
(10, 'Bình Phước'),
(11, 'Bình Thuận'),
(12, 'Cà Mau'),
(13, 'Cao Bằng'),
(14, 'Đắk Lắk'),
(15, 'Đắk Nông'),
(16, 'Điện Biên'),
(17, 'Đồng Nai'),
(18, 'Đồng Tháp'),
(19, 'Gia Lai'),
(20, 'Hà Giang'),
(21, 'Hà Nam'),
(22, 'Hà Tĩnh'),
(23, 'Hải Dương'),
(24, 'Hậu Giang'),
(25, 'Hòa Bình'),
(26, 'Hưng Yên'),
(27, 'Khánh Hòa'),
(28, 'Kiên Giang'),
(29, 'Kon Tum'),
(30, 'Lai Châu'),
(31, 'Lâm Đồng'),
(32, 'Lạng Sơn'),
(33, 'Lào Cai'),
(34, 'Long An'),
(35, 'Nam Định'),
(36, 'Nghệ An'),
(37, 'Ninh Bình'),
(38, 'Ninh Thuận'),
(39, 'Phú Thọ'),
(40, 'Quảng Bình'),
(41, 'Quảng Nam'),
(42, 'Quảng Ngãi'),
(43, 'Quảng Ninh'),
(44, 'Quảng Trị'),
(45, 'Sóc Trăng'),
(46, 'Sơn La'),
(47, 'Tây Ninh'),
(48, 'Thái Bình'),
(49, 'Thái Nguyên'),
(50, 'Thanh Hóa'),
(51, 'Thừa Thiên Huế'),
(52, 'Tiền Giang'),
(53, 'Trà Vinh'),
(54, 'Tuyên Quang'),
(55, 'Vĩnh Long'),
(56, 'Vĩnh Phúc'),
(57, 'Yên Bái'),
(58, 'Phú Yên'),
(59, 'Cần Thơ'),
(60, 'Đà Nẵng'),
(61, 'Hải Phòng'),
(62, 'Hà Nội'),
(63, 'TP HCM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_cname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_zip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_datetime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_timestamp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(1, 'Liam Moore', 'WV Company', 'liam@mail.com', '7458965410', 230, '788 Cottonwood Lane', 'Nashville', 'TN', '37072', '5f4dcc3b5aa765d61d8327deb882cf99', '0081e99a29cacd4b553db15c5c5c047e', '2022-03-17 11:09:34', '1647544174', 1),
(2, 'Chad N. Carney', 'none', 'chad@mail.com', '4785690000', 230, '469 Diamond Street', 'Charlotte', 'NC', '28808', '5f4dcc3b5aa765d61d8327deb882cf99', 'ca87666426f4bc5c5128a96dabfecefb', '2022-03-17 11:15:26', '1647544526', 1),
(3, 'Jean Collins', 'none', 'jean@mail.com', '1478523698', 230, '1508 Crosswind Drive', 'Owensboro', 'KY', '13040', '5f4dcc3b5aa765d61d8327deb882cf99', '6b3439bf95644a36a1ed92bef374ebb7', '2022-03-20 10:29:39', '1647797379', 1),
(4, 'Annie Young', 'XYZ Company', 'annie@mail.com', '7770001144', 230, '79 Burwell Heights Road', 'Beaumont', 'TX', '77400', '5f4dcc3b5aa765d61d8327deb882cf99', 'fc8f07537cdd6b3f89eb94f1cad78060', '2022-03-20 10:31:35', '1647797495', 1),
(5, 'Matthew Morales', 'ABC Company', 'matthew@mail.com', '7896587450', 230, '81 Felosa Drive', 'Mira Loma', 'CA', '91002', '5f4dcc3b5aa765d61d8327deb882cf99', 'c391105908fe01a636bfa5fc39eed33d', '2022-03-20 10:33:15', '1647797595', 1),
(6, 'August F. Freels', 'none', 'august@mail.com', '1478547850', 230, '96 Johnny Lane', 'Milwaukee', 'WI', '55550', '5f4dcc3b5aa765d61d8327deb882cf99', 'decc1fc2c5dd9935df82c0233002ce66', '2022-03-20 10:34:08', '1647797648', 1),
(7, 'Carl M. Dineen', 'none', 'carl@mail.com', '789878987', 230, '77 Lyndon Street', 'Kutztown', 'PA', '19855', '5f4dcc3b5aa765d61d8327deb882cf99', 'c79bac688e70cc9665a2164c57ec172c', '2022-03-20 10:35:02', '1647797702', 1),
(8, 'Benjamin B. Louque', 'none', 'benjamin@mail.com', '7777889955', 230, '32 Bridge Street', 'Tulsa', 'OK', '74220', '5f4dcc3b5aa765d61d8327deb882cf99', '5a0e096368f9669508af7b7203382b07', '2022-03-20 10:36:31', '1647797791', 1),
(9, 'Joe K. Richardson', 'none', 'joe@mail.com', '4444445555', 230, '17 Derek Drive', 'Youngstown', 'OH', '44500', '5f4dcc3b5aa765d61d8327deb882cf99', 'e74ac0178d7833988d4b1625c42ba26e', '2022-03-20 10:37:18', '1647797838', 1),
(10, 'Will Williams', 'Test Company', 'williams@mail.com', '7410000000', 230, '39 Marcus Street', 'Anniston', 'AL', '37207', '5f4dcc3b5aa765d61d8327deb882cf99', '941c9265fb920f691cf01b12a15f80f8', '2022-03-20 11:15:59', '1647800159', 1),
(11, 'Huo', '', 'adminwwde@mail.com', '0857825', 4, 'bhjvdsj', 'ewufheriuhg', 'jknksd', 'rẹiu34', '25f9e794323b453885f5181f1b624d0b', 'f5e077bb795ae5cab784e5fc2ad3c4e8', '2024-12-09 05:54:53', '1733752493', 1),
(12, 'Vy', '', 'vy@gmail.com', '09364288725', 18, '74329/54', '2', 'sd', 'fvjhnrj', 'c03fcfdefe65a9f69c6503a3ef0d0cb2', '06c0a7768f92ed3fa4371726ace9283a', '2024-12-09 11:05:00', '1733814300', 1),
(13, 'Quỳnh', '', 'quynh@gmail.com', '091234732', 63, 'F11/27E2 đường Phạm Thị Nghĩ, ấp 6, Xã Vĩnh Lộc A, Huyện Bình Chánh, TP Hồ Chí Minh', 'Xã Vĩnh Lộc A', 'Huyện Bình Chánh', ' CÔNG TY TNHH DỊCH VỤ THƯƠNG M', '3c0d3dbda20f50e9a11f5f934075088d', 'c59f8c402dfcf92d3f2564d270f9b7aa', '2024-12-12 04:34:51', '1734006891', 1),
(14, 'Như', 'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ MỰC IN SÀI GÒN INK', 'quynhnhu@mail.com', '0456238243', 63, '223 Hoàng Văn Thụ (K3.28 Cao ốc Kingston Residence), Phường 08, Quận Phú Nhuận, TP Hồ Chí Minh', '8', 'Quận Phú Nhuận', '0305835673', '45954b36d012e7d6951c6d3450c87fa0', 'e37f5b5a9b94c3e096ec806d050d4a67', '2024-12-12 04:37:55', '1734007075', 1),
(15, 'Phúc', '', 'phuc@gmail.com', '09364723335', 63, 'Số 103, đường số 5, Phường Linh Xuân, Thành phố Thủ Đức, TP Hồ Chí Minh', ' Phường Linh Xuân', ' Thành phố Thủ Đức', '0305835673', 'd3cad61e521e60f903d5a262f7f40ae0', '692d278bf090b769b10a71eb2df73fdb', '2024-12-12 07:57:28', '1734062248', 1),
(16, 'Phan Đại Vĩ', 'Ninh Dương', 'phandaivi@gmail.com', '00000000', 34, '123', 'Hậu Nghĩa', 'Đức Hòa', '12345', '25d55ad283aa400af464c76d713c07ad', '07c26bb5091a715948dbb51a26e75438', '2024-12-13 06:40:18', '1734100818', 1),
(17, 'Trần Thanh Tường Vy nè', '2 thành viên', 'tuongvyhaaaa@gmail.com', '00000000', 18, '123', 'Sa Đéc', 'Sa Đéc', '00000', '25d55ad283aa400af464c76d713c07ad', 'c734b74e7a83c13fb18cf3c5a11ae5a2', '2024-12-13 06:46:23', '1734101183', 1),
(18, 'customer', 'ueh', 'customer@mail.com', '09364723335', 63, '279, Nguyễn Tri Phương', 'phường 5', 'quận 10', '4785y8598', 'a421e6b1f4ef36ee345db8db566d6b02', '3c005a61829115cf0a90e9c1c34e3b55', '2024-12-14 04:09:19', '1734178159', 1);

--
-- Bẫy `tbl_customer`
--
DELIMITER $$
CREATE TRIGGER `set_default_cust_status` BEFORE INSERT ON `tbl_customer` FOR EACH ROW BEGIN
    -- Đặt giá trị cust_status luôn là '1' khi chèn dữ liệu mới
    SET NEW.cust_status = '1';
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `order_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(80, 'Áo Blouson & Áo Parka', 18),
(81, 'Áo Khoác & Áo Blazer', 18),
(82, 'Áo Choàng Dáng Dài', 18),
(83, 'Áo Khoác Siêu Nhẹ', 18),
(84, 'Áo Down ', 18),
(85, 'Áo Thun', 22),
(86, 'Áo Bra Top', 22),
(87, 'Áo Nỉ & Áo Hoodie', 22),
(88, 'Áo Giả Lông Cừu', 18),
(89, 'Quần Ống Rộng', 20),
(90, 'Quần Jeans', 20),
(91, 'Quần Easy & Relaxed Pants', 20),
(92, 'Quần Nỉ', 20),
(93, 'Quần Dài Đến Mắt Cá & Quần Lửng', 20),
(94, 'Quần Tây', 20),
(95, 'Quần Short', 20),
(96, 'Quần Legging', 20),
(97, 'Quần Giữ Ấm', 20),
(98, 'Chân Váy', 23),
(99, 'Đầm & Jumpsuit', 23),
(100, 'Đồ Mặc Nhà & Pijama', 19),
(101, 'Quần Easy & Relaxed', 19),
(102, 'Túi', 28),
(103, 'Mũ & Mũ Lưỡi Trai', 28),
(104, 'Khăn Choàng & Khăn Quàng Cổ', 28),
(105, 'Thắt Lưng', 28),
(106, 'Giày & Sandals', 28),
(107, 'Kính mắt', 28),
(108, 'Găng tay', 28),
(109, 'Áo Khoác Miracle Air', 29),
(110, 'Áo Khoác & Áo Blazer', 29),
(111, 'Áo Blouson & Áo Parka', 29),
(112, 'Áo Choàng Dáng Dài', 29),
(113, 'Áo Khoác Siêu Nhẹ', 29),
(114, 'Áo Down', 29),
(115, 'Áo Thun', 38),
(116, 'Áo Giả Lông Cừu', 38),
(117, 'Áo Thun In Hoạ Tiết', 29),
(118, 'Áo Nỉ & Hoodie', 29),
(119, 'Áo Sơ Mi Công Sở', 33),
(120, 'Áo Sơ Mi Casual', 33),
(121, 'Quần Dài Dáng Rộng', 30),
(122, 'Quần Chino', 30),
(123, 'Quần Jean & Quần Jean Màu', 30),
(124, 'Quần Casual', 30),
(125, 'Quần Nỉ', 30),
(126, 'Quần Dài Đến Mắt Cá', 30),
(127, 'Quần Tây', 30),
(128, 'Quần Short', 30),
(129, 'Quần Giữ Ấm', 30),
(130, 'Đồ Mặc Nhà & Pijama', 32),
(131, 'Quần Easy & Relaxed', 32),
(132, 'Túi', 31),
(133, 'Mũ & Mũ Lưỡi Trai', 31),
(134, 'Khăn Choàng & Khăn Quàng Cổ', 31),
(135, 'Thắt Lưng', 31),
(136, 'Kính Mát', 31),
(137, 'Găng Tay', 31),
(138, 'Áo Blouson & Áo Parka', 42),
(139, 'Áo Khoác', 42),
(140, 'Áo Nỉ & Hoodie', 43),
(141, 'Áo Len & Áo Cardigan', 43),
(142, 'Áo Giả Lông Cừu', 43),
(143, 'Áo Thun + Áo Polo', 43),
(144, 'Áo Sơ Mi & Áo Kiểu', 43),
(145, 'Quần Dài', 44),
(146, 'Quần Short', 44),
(147, 'Quần Giữ Ấm', 44),
(148, 'Đồ Liền Mảnh', 48),
(149, 'Bodysuit', 48),
(150, 'Tất', 48),
(151, 'Áo GI_LÊ & CHĂN', 48),
(152, 'Đồ Mặc Ngoài', 49),
(153, 'Áo', 49),
(154, 'Quần Dài & Quần Legging', 49),
(155, 'Đồ Mặc Nhà & Pijama', 49),
(156, 'Tất', 49),
(157, 'Giày', 31),
(158, 'Áo Khoác', 18),
(159, 'Áo ', 26),
(160, 'Balo', 46);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `faq_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(2, 'Nếu tôi có việc bận và không nhận được bưu kiện thì có giao lại được không?', '<p><span style=\"font-size: 16px; font-family: &quot;Helvetica Neue&quot;, HelveticaNeue, Helvetica, &quot;Noto Sans CJK JP&quot;, &quot;Noto Sans&quot;, Roboto, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, &quot;Hiragino Sans&quot;, Osaka, Meiryo, メイリオ, &quot;MS PGothic&quot;, &quot;ＭＳ Ｐゴシック&quot;, &quot;Hiragino Sans GB&quot;, Arial, &quot;Arial Unicode MS&quot;, sans-serif;\">Trong trường hợp không liên lạc được với khách hàng, đơn hàng sẽ được giao liên tục tối đa 3 lần trong vòng 3 ngày.</span><br style=\"font-size: 16px; font-family: &quot;Helvetica Neue&quot;, HelveticaNeue, Helvetica, &quot;Noto Sans CJK JP&quot;, &quot;Noto Sans&quot;, Roboto, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, &quot;Hiragino Sans&quot;, Osaka, Meiryo, メイリオ, &quot;MS PGothic&quot;, &quot;ＭＳ Ｐゴシック&quot;, &quot;Hiragino Sans GB&quot;, Arial, &quot;Arial Unicode MS&quot;, sans-serif;\"><span style=\"font-size: 16px; font-family: &quot;Helvetica Neue&quot;, HelveticaNeue, Helvetica, &quot;Noto Sans CJK JP&quot;, &quot;Noto Sans&quot;, Roboto, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, &quot;Hiragino Sans&quot;, Osaka, Meiryo, メイリオ, &quot;MS PGothic&quot;, &quot;ＭＳ Ｐゴシック&quot;, &quot;Hiragino Sans GB&quot;, Arial, &quot;Arial Unicode MS&quot;, sans-serif;\">Nếu bưu kiện vẫn giao không thành công, đơn hàng sẽ được hoàn về kho của chúng tôi và quý khách sẽ được hoàn tiền toàn bộ (đối với phướng thức thanh toán thẻ).</span><br></p>\r\n'),
(4, 'Khi nào thì không thể trả hàng?', '<p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\">Có một số trường hợp nhất định khiến chúng tôi khó hỗ trợ trả hàng:</p><p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\">1. Yêu cầu trả hàng được thực hiện ngoài khung thời gian quy định, là 15 ngày kể từ ngày giao hàng.</p><p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\">2. Sản phẩm đã qua sử dụng, bị hỏng hoặc không còn trong tình trạng như khi bạn nhận được.</p><p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\">3. Các danh mục cụ thể như đồ lót, đồ lót, tất và quần áo miễn phí, v.v.</p><p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\">4. Sản phẩm lỗi được bảo hành theo chế độ của nhà sản xuất.</p><p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\">5. Sản phẩm có số sê-ri bị giả mạo hoặc bị thiếu.</p><p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\">6. Bất kỳ thứ gì bị thiếu trong gói hàng bạn nhận được bao gồm nhãn giá, nhãn mác, bao bì gốc, đồ miễn phí và phụ kiện.</p><p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\">6. Hàng dễ vỡ.</p>\r\n'),
(6, 'Thời gian giao hàng dự kiến là bao lâu?', '<p>Thời gian giao hàng dự kiến trong khoảng từ 2-4 ngày được tính kể từ thời điểm đơn hàng được xác nhận thành công trên hệ thống.</p><p>Vui lòng tham khảo thời gian cho từng khu vực theo thông tin bên dưới:&nbsp;</p><p><b>Đối với khu vực miền Nam:</b></p><p>- TP. Hồ Chí Minh: 02 ngày</p><p>- Các tỉnh miền Nam khác: 03 ngày</p><p><b>Đối với khu vực miền Trung:</b> 04 ngày</p><p><b>Đối với khu vực miền Bắc:</b></p><p>- Hà Nội: 03 ngày</p><p>- Các tỉnh miền Bắc: 04 ngày</p><p><b><u>*Lưu ý:</u>&nbsp;Thời gian giao hàng dự kiến được tính dựa trên ngày làm việc và có thể thay đổi theo tình trạng giao hàng thực tế</b></p><p><br></p><p><br></p>'),
(7, 'Tôi muốn hẹn thời gian giao hàng.', '<p><span style=\"font-size: 16px; font-family: &quot;Helvetica Neue&quot;, HelveticaNeue, Helvetica, &quot;Noto Sans CJK JP&quot;, &quot;Noto Sans&quot;, Roboto, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, &quot;Hiragino Sans&quot;, Osaka, Meiryo, メイリオ, &quot;MS PGothic&quot;, &quot;ＭＳ Ｐゴシック&quot;, &quot;Hiragino Sans GB&quot;, Arial, &quot;Arial Unicode MS&quot;, sans-serif;\">Quý khách vui lòng trao đổi trực tiếp với nhân viên giao hàng để sắp xếp thời gian giao hàng phù&nbsp;hợp.　</span><br></p>'),
(8, 'Đơn hàng của tôi bị hư/thất lạc/thiếu sản phẩm.', '<p><span style=\"font-size: 16px; font-family: &quot;Helvetica Neue&quot;, HelveticaNeue, Helvetica, &quot;Noto Sans CJK JP&quot;, &quot;Noto Sans&quot;, Roboto, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, &quot;Hiragino Sans&quot;, Osaka, Meiryo, メイリオ, &quot;MS PGothic&quot;, &quot;ＭＳ Ｐゴシック&quot;, &quot;Hiragino Sans GB&quot;, Arial, &quot;Arial Unicode MS&quot;, sans-serif;\">Chúng tôi thành thật xin lỗi về trải nghiệm chưa tốt. Quý khách vui lòng thực hiện các bước sau:</span><br style=\"font-size: 16px; font-family: &quot;Helvetica Neue&quot;, HelveticaNeue, Helvetica, &quot;Noto Sans CJK JP&quot;, &quot;Noto Sans&quot;, Roboto, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, &quot;Hiragino Sans&quot;, Osaka, Meiryo, メイリオ, &quot;MS PGothic&quot;, &quot;ＭＳ Ｐゴシック&quot;, &quot;Hiragino Sans GB&quot;, Arial, &quot;Arial Unicode MS&quot;, sans-serif;\"><span style=\"font-size: 16px; font-family: &quot;Helvetica Neue&quot;, HelveticaNeue, Helvetica, &quot;Noto Sans CJK JP&quot;, &quot;Noto Sans&quot;, Roboto, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, &quot;Hiragino Sans&quot;, Osaka, Meiryo, メイリオ, &quot;MS PGothic&quot;, &quot;ＭＳ Ｐゴシック&quot;, &quot;Hiragino Sans GB&quot;, Arial, &quot;Arial Unicode MS&quot;, sans-serif;\">1.&nbsp;&nbsp; &nbsp;Chụp ảnh/quay video thùng hàng và khi mở thùng hàng.&nbsp;</span><br style=\"font-size: 16px; font-family: &quot;Helvetica Neue&quot;, HelveticaNeue, Helvetica, &quot;Noto Sans CJK JP&quot;, &quot;Noto Sans&quot;, Roboto, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, &quot;Hiragino Sans&quot;, Osaka, Meiryo, メイリオ, &quot;MS PGothic&quot;, &quot;ＭＳ Ｐゴシック&quot;, &quot;Hiragino Sans GB&quot;, Arial, &quot;Arial Unicode MS&quot;, sans-serif;\"><span style=\"font-size: 16px; font-family: &quot;Helvetica Neue&quot;, HelveticaNeue, Helvetica, &quot;Noto Sans CJK JP&quot;, &quot;Noto Sans&quot;, Roboto, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, &quot;Hiragino Sans&quot;, Osaka, Meiryo, メイリオ, &quot;MS PGothic&quot;, &quot;ＭＳ Ｐゴシック&quot;, &quot;Hiragino Sans GB&quot;, Arial, &quot;Arial Unicode MS&quot;, sans-serif;\">2.&nbsp;&nbsp; &nbsp;Liên hệ trực tiếp với Trung Tâm Khách Hàng để được hỗ trợ.</span><br></p>'),
(9, 'Tôi muốn thay đổi thông tin người nhận hàng/thay đổi địa chỉ giao hàng.', '<p><span style=\"font-size: 16px; font-family: &quot;Helvetica Neue&quot;, HelveticaNeue, Helvetica, &quot;Noto Sans CJK JP&quot;, &quot;Noto Sans&quot;, Roboto, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, &quot;Hiragino Sans&quot;, Osaka, Meiryo, メイリオ, &quot;MS PGothic&quot;, &quot;ＭＳ Ｐゴシック&quot;, &quot;Hiragino Sans GB&quot;, Arial, &quot;Arial Unicode MS&quot;, sans-serif;\">Quý khách vui lòng liên hệ trực tiếp với Trung Tâm Khách Hàng để được hỗ trợ.</span><br></p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `lang_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', '$'),
(2, 'Search Product', 'Search Product'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Logged in as', 'Logged in as'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(34, 'Select Payment Method', 'Select Payment Method'),
(35, 'Select a Method', 'Select a Method'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Pay Now'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Categories'),
(50, 'Category:', 'Category:'),
(51, 'All Products Under', 'All Products Under'),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'Review not found', 'Review not found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shopping', 'Continue Shopping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(103, 'Company Name', 'Company Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'Country', 'Country'),
(107, 'City', 'City'),
(108, 'State', 'State'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
(149, 'Change Password', 'Change Password'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration.'),
(153, 'No Product Found', 'No Product Found'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Related Products'),
(156, 'See all related products from below', 'See all the related products from below'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(18, 'ĐỒ MẶC NGOÀI', 6),
(19, 'ĐỒ MẶC NHÀ', 6),
(20, 'QUẦN', 6),
(22, 'ÁO THUN, ÁO NỈ & ÁO GIẢ LÔNG CỪU', 6),
(23, 'CHÂN VÁY & ĐẦM', 6),
(24, 'ÁO LEN & ÁO DỆT KIM', 6),
(25, 'ÁO DÀI', 6),
(26, 'ÁO SƠ MI & ÁO KIỂU', 6),
(27, 'SẢN PHẨM CHỐNG NẮNG', 6),
(28, 'PHỤ KIỆN', 6),
(29, 'ĐỒ MẶC NGOÀI', 7),
(30, 'QUẦN', 7),
(31, 'PHỤ KIỆN', 7),
(32, 'ĐỒ MẶC NHÀ', 7),
(33, 'ÁO SƠ MI', 7),
(34, 'ÁO POLO', 7),
(35, 'TẤT', 7),
(38, 'ÁO THUN, ÁO NỈ & ÁO GIẢ LÔNG CỪU', 7),
(41, 'SẢN PHẨM CHỐNG NẮNG', 7),
(42, 'ĐỒ MẶC NGOÀI', 8),
(43, 'ÁO THUN, ÁO NỈ & ÁO LEN', 8),
(44, 'QUẦN', 8),
(45, 'ĐẦM & CHÂN VÁY', 8),
(46, 'PHỤ KIỆN', 8),
(48, 'EM BÉ (0 - 1 TUỔI)', 9),
(49, 'EM BÉ (6 THÁNG - 5 TUỔI)', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `size` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `quantity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `unit_price` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `size`, `color`, `quantity`, `unit_price`, `payment_id`) VALUES
(1, 83, 'Men\'s Ultra Cotton T-Shirt, Multipack', 'XL', 'Gray', '1', '19', '1647629329'),
(2, 92, 'Travelpro Laptop Carry-on Travel Tote Bag', 'One Size for All', 'Midnight Blue', '1', '91', '1647798593'),
(4, 101, 'Digital Infrared Thermometer for Adults and Kids', 'One Size for All', 'White', '1', '70', '1647799174'),
(5, 94, 'WD 5TB Elements Portable External Hard Drive HDD', '5T', 'Black', '1', '149', '1647800902'),
(7, 2, 'Áo Nỉ Hoodie Nam', 'L', 'Đen', '1', '650000', '1734098548'),
(8, 1, 'Áo Blouson Nữ Đa Năng', 'S', 'Tím Nhạt', '1', '990000', '1734102501'),
(9, 2, 'Áo Nỉ Hoodie Nam', 'L', 'Đen', '1', '650000', '1734102501');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `about_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `about_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `about_meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `about_meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `about_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `faq_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `faq_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `faq_meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `faq_meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `faq_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `blog_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `blog_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `contact_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `contact_meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `contact_meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `contact_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `pgallery_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `pgallery_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `pgallery_meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `pgallery_meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `pgallery_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `vgallery_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `vgallery_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `vgallery_meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `vgallery_meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `vgallery_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'Giới Thiệu', '<p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Chào mừng bạn đến với cửa hàng thời trang trực tuyến của chúng tôi!</span></p><p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Chúng tôi tự hào mang đến cho khách hàng một bộ sưu tập đa dạng các sản phẩm </span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">quần áo thời trang</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"> mới nhất. Với nhiều năm kinh nghiệm trong ngành, chúng tôi hiểu rõ cách mang đến cho bạn những sản phẩm chất lượng cao với giá cả phải chăng. Đồng thời, chúng tôi luôn chú trọng đến dịch vụ khách hàng xuất sắc và sự hỗ trợ tận tâm.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Chúng tôi luôn cập nhật xu hướng thời trang mới nhất và đặt sở thích của khách hàng lên hàng đầu. Chính vì vậy, chúng tôi đã nhận được sự tin yêu của khách hàng trên toàn thế giới và vinh dự góp mặt trong ngành công nghiệp thời trang.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; margin-left: 36pt; margin-top: 14pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Cam kết của chúng tôi</span></p><ul style=\"margin-top: 0px; margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"line-height: 1.38; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Sản phẩm chất lượng cao</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">: Đảm bảo hình ảnh sản phẩm đúng với thực tế, cùng chính sách đổi trả dễ dàng.</span></p></li><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Giá cả hợp lý</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">: Cam kết mang đến mức giá cạnh tranh nhất.</span></p></li><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Hỗ trợ 24/7</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">: Đội ngũ chăm sóc khách hàng sẵn sàng hỗ trợ bạn qua email, tin nhắn và điện thoại.</span></p></li><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Đa dạng size và màu sắc</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">: Phù hợp với mọi phong cách và nhu cầu cá nhân.</span></p></li><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Giao hàng toàn quốc</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">: Và chúng tôi đang từng bước mở rộng phạm vi giao hàng quốc tế.</span></p></li><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Chính sách đổi trả dễ dàng</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">: Nếu bạn không hài lòng, hãy trả lại sản phẩm trong vòng 3 ngày. Liên hệ qua email </span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">support@ecommercephp.com</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"> để được hỗ trợ thêm.</span></p></li></ul><p dir=\"ltr\" style=\"line-height: 1.38; margin-left: 36pt; margin-top: 14pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Thời trang cho mọi dịp</span></p><p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Cửa hàng chúng tôi cung cấp các sản phẩm được tuyển chọn kỹ lưỡng từ đội ngũ stylist. Nếu bạn quan tâm đến một mẫu thiết kế cụ thể, hãy liên hệ qua email, và chúng tôi sẽ cố gắng đáp ứng mong muốn của bạn.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; margin-left: 36pt; margin-top: 14pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">An tâm mua sắm với bảo mật cao</span></p><p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Tất cả các giao dịch đều được bảo mật và xác minh bởi Norton, đảm bảo an toàn tuyệt đối. Ngoài ra, chúng tôi thường xuyên có các chương trình ưu đãi hấp dẫn. Đừng quên chia sẻ trải nghiệm của bạn với bạn bè, gia đình, và đồng nghiệp để nhận những phần thưởng giá trị.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Đăng ký ngay hôm nay để khám phá những bộ sưu tập mới nhất, thỏa sức mua sắm, và tự tin tỏa sáng cùng phong cách riêng của bạn!</span></p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span id=\"docs-internal-guid-26d2c8f4-7fff-c74c-9a48-faeecdcdcbfe\"></span><br class=\"Apple-interchange-newline\"></p>\r\n', 'about-banner.jpg', 'Miju-Giới thiệu', 'về, về chúng tôi, về thời trang, về công ty, về dự án php thương mại điện tử', 'Mục tiêu của chúng tôi luôn là giúp bạn tỏa sáng với vẻ đẹp tuyệt vời nhất.\r\nChúng tôi mang đến một bộ sưu tập đa dạng, phù hợp cho mọi dịp – từ các bữa tiệc, đám cưới, đến những sự kiện đặc biệt cần một chiếc váy khiến mọi ánh nhìn phải trầm trồ.', 'Câu Hỏi Thường Gặp', 'faq-banner.jpg', 'Miju-Câu hỏi thường gặp', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Liên Hệ', 'contact-banner.jpg', 'Miju-Liên hệ', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `payment_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `card_cvv` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `card_month` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `card_year` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `bank_transaction_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `payment_method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `payment_status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `shipping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `payment_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(51, 2, 'Chad N. Carney', 'chad@mail.com', '2022-03-18 22:48:49', '', 19, '', '', '', '', 'Transaction Id: CA01010158967840\r\nTransaction Date: 3/19/2022\r\nBank: WestView Bank, CA Branch\r\nSender A/C: 102458965WV', 'Bank Deposit', 'Completed', 'Completed', '1647629329'),
(52, 3, 'Jean Collins', 'jean@mail.com', '2022-03-20 10:49:53', '', 91, '', '', '', '', '', 'PayPal', 'Completed', 'Completed', '1647798593'),
(54, 6, 'August F. Freels', 'august@mail.com', '2022-03-20 10:59:34', '', 70, '', '', '', '', 'Transaction Id: CA01101198945600\nTransaction Date: 3/20/2022 \nBank: WestView Bank, CA Branch \nSender A/C: 1100047860WV', 'Bank Deposit', 'Completed', 'Pending', '1647799174'),
(55, 10, 'Will Williams', 'williams@mail.com', '2022-03-20 11:28:22', '', 149, '', '', '', '', 'Transaction Id: CA01003177945009\r\nTransaction Date: 3/20/2022 \r\nBank: WestView Bank, CA Branch \r\nSender A/C: NQ1011050160WV', 'Bank Deposit', 'Completed', 'Completed', '1647800902'),
(58, 16, 'Vi', 'phandaivi@gmail.com', '2024-12-13 06:02:28', '', 680000, '', '', '', '', 'dsad', 'Bank Deposit', 'Pending', 'Pending', '1734098548'),
(59, 17, 'Trần Thanh Tường Vy nè', 'tuongvyhaaaa@gmail.com', '2024-12-13 07:08:21', '', 1670000, '', '', '', '', 'hkjjk', 'Bank Deposit', 'Pending', 'Pending', '1734102501');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `post_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `post_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `post_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `p_old_price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `p_current_price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `p_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `p_short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `p_feature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `p_condition` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `p_return_policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(1, 'Áo Blouson Nữ Đa Năng', '1200000', '990000', 49, 'product-featured-1.png', '<b>Mô tả sản phẩm:</b><br><p>Áo Blouson nữ đa năng với thiết kế hiện đại, chất liệu cao cấp giúp giữ ấm hiệu quả và thoải mái trong mọi hoạt động. Đây là lựa chọn hoàn hảo cho những ngày thời tiết se lạnh.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chống nước nhẹ:</b> Phù hợp cho điều kiện thời tiết thất thường.</li><li><b>Khả năng giữ ấm tốt:</b> Đảm bảo nhiệt độ cơ thể ổn định.</li><li><b>Dễ dàng giặt sạch:</b> Tiết kiệm thời gian chăm sóc sản phẩm.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Áo Blouson nữ</b> với thiết kế hiện đại và chất liệu cao cấp, giúp giữ ấm và chống nước nhẹ, thích hợp trong nhiều hoàn cảnh.</p>', 'Chống nước, giữ ấm, thời trang', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày nếu có lỗi sản phẩm.', 138, 1, 1, 80),
(2, 'Áo Nỉ Hoodie Nam', '750000', '650000', 98, 'product-featured-2.jpg', '<b>Mô tả sản phẩm:</b><br><p>Áo nỉ hoodie nam thoải mái, phù hợp cho cả hoạt động thường ngày và tập luyện thể thao. Chất liệu nỉ mềm mại, thoáng khí và giữ nhiệt tốt, đảm bảo sự linh hoạt và dễ chịu khi mặc.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu nỉ cao cấp:</b> Đem lại cảm giác mềm mại, ấm áp.</li><li><b>Kiểu dáng trẻ trung:</b> Thích hợp với mọi lứa tuổi.</li><li><b>Dễ phối đồ:</b> Hoàn hảo cho cả phong cách casual và thể thao.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Hoodie nam</b> thời trang, chất liệu mềm mại, thoáng khí và giữ nhiệt tốt, phù hợp cho mọi hoàn cảnh.</p>', 'Thoáng khí, giữ nhiệt, bền màu', 'Mới 100%', '<b>Chính sách đổi trả:</b> Hỗ trợ đổi trả trong 7 ngày.', 102, 1, 1, 118),
(3, 'Quần Legging Bé Gái', '300000', '250000', 80, 'product-featured-3.jpg', '<b>Mô tả sản phẩm:</b><br><p>Quần legging bé gái được thiết kế co giãn, tạo sự thoải mái tối đa cho bé khi vui chơi. Màu sắc đa dạng và dễ phối hợp cùng các loại áo thun hoặc váy.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu cotton co giãn:</b> Mang lại cảm giác dễ chịu khi mặc.</li><li><b>Dễ dàng giặt sạch:</b> Tiện lợi cho cha mẹ.</li><li><b>Không gây kích ứng da:</b> An toàn tuyệt đối cho trẻ nhỏ.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Quần legging bé gái</b> co giãn, thoải mái và thân thiện với làn da, hoàn hảo cho các bé năng động.</p>', 'Co giãn, dễ giặt, không gây kích ứng', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong 7 ngày nếu có lỗi từ nhà sản xuất.', 65, 1, 1, 145),
(4, 'Áo Nỉ Bé Trai', '400000', '350000', 70, 'product-featured-4.png', '<b>Mô tả sản phẩm:</b><br><p>Bộ đồ bé trai dễ thương, bao gồm áo thun và quần short. Chất liệu thoáng mát, thân thiện với làn da trẻ nhỏ, phù hợp cho cả hoạt động trong nhà và ngoài trời.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Vải cotton 100%:</b> Thấm hút tốt và thoải mái.</li><li><b>Màu sắc tươi sáng:</b> Thu hút và năng động.</li><li><b>Thiết kế tiện lợi:</b> Dễ dàng thay mặc.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Bộ đồ bé trai</b> cotton 100%, thoáng mát và tiện lợi, lý tưởng cho mùa hè.</p>', 'Thoáng mát, thân thiện với da, dễ mặc', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong 7 ngày.', 82, 1, 1, 140),
(5, 'Áo Thun Bé Trai In Hình Hoạt Hình', '250000', '200000', 90, 'product-featured-5.png', '<b>Mô tả sản phẩm:</b><br><p>Áo thun bé trai với hình in hoạt hình vui nhộn, mang lại sự thích thú cho bé khi mặc. Chất liệu cotton thoáng mát, dễ chịu khi vận động cả ngày.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu mềm mại:</b> Thích hợp cho da nhạy cảm.</li><li><b>In hình sắc nét:</b> Không bong tróc khi giặt.</li><li><b>Dễ dàng giặt sạch:</b> Tiện lợi trong chăm sóc hàng ngày.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Áo thun bé trai</b> in hình hoạt hình, chất liệu mềm mại và thoáng mát, lý tưởng cho các bé năng động.</p>', 'Thoáng mát, mềm mại, in hình sắc nét', 'Mới 100%', '<b>Chính sách đổi trả:</b> Hỗ trợ đổi trả trong 7 ngày.', 52, 1, 1, 143),
(6, 'Áo Khoác Dài Nữ', '2500000', '2100000', 30, 'product-featured-6.png', '<b>Mô tả sản phẩm:</b><br><p>Áo khoác dạ dáng dài nữ được thiết kế tinh tế, sang trọng, hoàn hảo cho mùa đông lạnh giá. Chất liệu dạ cao cấp giữ ấm tốt, đường may chắc chắn và kiểu dáng thanh lịch.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu dạ mềm mại:</b> Tạo cảm giác dễ chịu khi mặc.</li><li><b>Thiết kế hiện đại:</b> Phù hợp với mọi dáng người.</li><li><b>Màu sắc trung tính:</b> Dễ dàng phối đồ.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Áo khoác dạ nữ</b> dáng dài, chất liệu cao cấp, giữ ấm tốt và phù hợp cho mùa đông lạnh.</p>', 'Giữ ấm, thời trang, thanh lịch', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày nếu có lỗi sản phẩm.', 82, 1, 1, 82),
(7, 'Quần Jeans Nữ', '900000', '790000', 40, 'product-featured-7.png', '<b>Mô tả sản phẩm:</b><br><p>Quần jeans nam với kiểu dáng hiện đại, phù hợp cho cả phong cách thường ngày và công sở. Chất liệu denim cao cấp, co giãn nhẹ mang lại sự thoải mái suốt cả ngày.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu denim bền bỉ:</b> Đảm bảo sử dụng lâu dài.</li><li><b>Thiết kế thời trang:</b> Dễ dàng phối hợp với nhiều kiểu áo.</li><li><b>Dễ dàng giặt sạch:</b> Tiết kiệm thời gian chăm sóc.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Quần jeans nam</b> chất liệu denim cao cấp, bền bỉ và thời trang, phù hợp cho mọi hoàn cảnh.</p>', 'Bền bỉ, co giãn, thời trang', 'Mới 100%', '<b>Chính sách đổi trả:</b> Hỗ trợ đổi trả trong 7 ngày.', 85, 1, 1, 90),
(8, 'Áo Nỉ Bé Gái', '350000', '300000', 60, 'product-featured-8.png', '<b>Mô tả sản phẩm:</b><br><p>Áo nỉ bé gái mềm mại, giữ ấm tốt, thiết kế đáng yêu với họa tiết in hình ngộ nghĩnh. Chất liệu thân thiện với làn da trẻ nhỏ, thích hợp cho mùa thu và đông.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu nỉ êm ái:</b> Thoải mái khi mặc cả ngày dài.</li><li><b>Họa tiết nổi bật:</b> Tạo điểm nhấn đáng yêu cho bé.</li><li><b>Dễ dàng vệ sinh:</b> Giặt sạch nhanh chóng mà không phai màu.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Áo nỉ bé gái</b> chất liệu mềm mại, giữ ấm tốt với họa tiết đáng yêu.</p>', 'Mềm mại, giữ ấm, dễ giặt sạch', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày nếu có lỗi từ nhà sản xuất.', 50, 1, 1, 140),
(9, 'Bodysuit Bé Trai', '400000', '350000', 50, 'product-featured-9.png', '<b>Mô tả sản phẩm:</b><br><p>Bodysuit bé trai với chất liệu cotton 100%, mềm mại và thoáng khí, bảo vệ làn da nhạy cảm của bé. Thiết kế liền mảnh tiện lợi giúp mẹ dễ dàng thay đồ cho bé.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu cotton cao cấp:</b> Đảm bảo an toàn cho bé.</li><li><b>Thiết kế tiện dụng:</b> Dễ dàng mặc và tháo.</li><li><b>Màu sắc nhã nhặn:</b> Phù hợp cho mọi bé trai.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Bodysuit bé trai</b> cotton mềm mại, thoáng khí và tiện lợi.</p>', 'Mềm mại, tiện dụng, an toàn cho da', 'Mới 100%', '<b>Chính sách đổi trả:</b> Hỗ trợ đổi trả trong 7 ngày.', 66, 1, 1, 149),
(10, 'Áo Thun Trẻ Em In Hình Vui Nhộn', '250000', '200000', 90, 'product-featured-10.png', '<b>Mô tả sản phẩm:</b><br><p>Áo thun trẻ em với họa tiết in hình vui nhộn, làm từ chất liệu cotton thoáng mát, thân thiện với da bé. Thiết kế unisex phù hợp cho cả bé trai và bé gái.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Họa tiết bắt mắt:</b> Tạo niềm vui cho bé khi mặc.</li><li><b>Chất liệu thoáng mát:</b> Phù hợp cho mọi mùa.</li><li><b>Dễ phối đồ:</b> Kết hợp hoàn hảo với quần short hoặc chân váy.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Áo thun trẻ em</b> in hình, chất liệu cotton thoáng mát và thân thiện với da bé.</p>', 'Thoáng mát, bắt mắt, unisex', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày.', 75, 1, 1, 143),
(11, 'Đầm Maxi Nữ Dịu Dàng', '1500000', '1200000', 25, 'product-featured-11.png', '<b>Mô tả sản phẩm:</b><br><p>Đầm maxi nữ dáng dài, thiết kế nhẹ nhàng và bay bổng, mang lại vẻ đẹp dịu dàng và thanh lịch. Chất liệu voan cao cấp tạo cảm giác thoải mái, phù hợp cho các buổi tiệc hoặc dạo phố.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu voan mềm mại:</b> Mang lại sự thoải mái và sang trọng.</li><li><b>Thiết kế dáng dài:</b> Tạo vẻ thanh lịch và nữ tính.</li><li><b>Phù hợp nhiều dịp:</b> Thích hợp cho các buổi tiệc hoặc đi chơi.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Đầm maxi nữ</b> dáng dài, chất liệu voan, thanh lịch và nhẹ nhàng.</p>', 'Thanh lịch, thoải mái, nữ tính', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày.', 90, 1, 1, 99),
(12, 'Áo Len Cardigan Nữ', '700000', '550000', 35, 'product-featured-12.png', '<b>Mô tả sản phẩm:</b><br><p>Áo len cardigan nữ với thiết kế cổ điển, dễ dàng kết hợp với nhiều phong cách. Chất liệu len dày dặn giúp giữ ấm tốt, thích hợp cho mùa thu và đông.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu len cao cấp:</b> Bền đẹp và giữ ấm hiệu quả.</li><li><b>Thiết kế thời thượng:</b> Phù hợp mọi phong cách từ công sở đến dạo phố.</li><li><b>Dễ dàng phối đồ:</b> Kết hợp tốt với áo thun hoặc váy.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Áo len cardigan</b> nữ, chất liệu len cao cấp, giữ ấm và thời trang.</p>', 'Giữ ấm, cổ điển, dễ phối đồ', 'Mới 100%', '<b>Chính sách đổi trả:</b> Hỗ trợ đổi trả trong vòng 7 ngày.', 83, 1, 1, 81),
(13, 'Quần Tây Nam Cao Cấp', '1000000', '850000', 50, 'product-featured-13.jpg', '<b>Mô tả sản phẩm:</b><br><p>Quần tây nam cao cấp với thiết kế thanh lịch, hoàn hảo cho môi trường công sở hoặc các sự kiện quan trọng. Chất liệu cao cấp đảm bảo thoải mái và giữ phom dáng chuẩn.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu bền bỉ:</b> Giữ phom dáng đẹp và thoải mái khi mặc.</li><li><b>Thiết kế thanh lịch:</b> Phù hợp mọi dáng người.</li><li><b>Dễ bảo quản:</b> Không dễ nhăn, tiết kiệm thời gian là ủi.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Quần tây nam</b> chất liệu cao cấp, thanh lịch và dễ bảo quản.</p>', 'Thanh lịch, bền bỉ, dễ bảo quản', 'Mới 100%', '<b>Chính sách đổi trả:</b> Hỗ trợ đổi trả trong vòng 7 ngày.', 95, 1, 1, 127),
(14, 'Áo Hoodie Trẻ Em In Hình Siêu Nhân', '400000', '350000', 60, 'product-featured-14.png', '<b>Mô tả sản phẩm:</b><br><p>Áo hoodie trẻ em với họa tiết in hình siêu nhân nổi bật, phù hợp cho các bé trai năng động. Chất liệu nỉ mềm mại, giữ ấm tốt, phù hợp cho mùa thu và đông.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Thiết kế bắt mắt:</b> Họa tiết siêu nhân cực kỳ thu hút bé.</li><li><b>Chất liệu nỉ cao cấp:</b> Mềm mại và giữ ấm tốt.</li><li><b>Dễ dàng vệ sinh:</b> Bền màu và giặt sạch dễ dàng.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Áo hoodie trẻ em</b> in hình siêu nhân, chất liệu nỉ, giữ ấm và nổi bật.</p>', 'Giữ ấm, họa tiết nổi bật, dễ giặt sạch', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày.', 70, 1, 1, 140),
(15, 'Balo Trẻ Em Nhỏ Gọn', '300000', '250000', 100, 'product-featured-15.png', '<b>Mô tả sản phẩm:</b><br><p>Balo trẻ em nhỏ gọn với thiết kế dễ thương, phù hợp để bé mang sách vở hoặc đồ dùng cá nhân. Chất liệu chống thấm nước và quai đeo êm ái giúp bé luôn thoải mái khi sử dụng.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu chống thấm:</b> Bảo vệ đồ dùng bên trong khỏi nước.</li><li><b>Thiết kế nhẹ nhàng:</b> Dễ dàng mang theo mọi lúc mọi nơi.</li><li><b>Ngăn chứa tiện lợi:</b> Sắp xếp đồ đạc gọn gàng.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Balo trẻ em</b> chống thấm nước, thiết kế nhỏ gọn và dễ thương.</p>', 'Chống thấm nước, nhẹ nhàng, tiện lợi', 'Mới 100%', '<b>Chính sách đổi trả:</b> Hỗ trợ đổi trả trong 7 ngày.', 60, 1, 1, 160),
(16, 'Áo Sơ Mi Công Sở Nam', '800000', '650000', 40, 'product-featured-16.png', '<b>Mô tả sản phẩm:</b><br><p>Áo sơ mi công sở nam với thiết kế tối giản và sang trọng, phù hợp cho môi trường làm việc. Chất liệu cotton thoáng khí, giúp bạn cảm thấy dễ chịu suốt cả ngày dài.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu cotton:</b> Mềm mại và thoáng khí, dễ chịu khi mặc.</li><li><b>Thiết kế tinh tế:</b> Phù hợp cho môi trường công sở, tạo nên vẻ ngoài chuyên nghiệp.</li><li><b>Dễ phối đồ:</b> Có thể kết hợp với quần tây hoặc jeans.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Áo sơ mi công sở nam</b> chất liệu cotton, thiết kế tinh tế và dễ dàng phối đồ.</p>', 'Thoáng khí, sang trọng, dễ phối đồ', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày.', 114, 1, 1, 119),
(17, 'Quần Jean Nam Dáng Slim', '900000', '750000', 30, 'product-featured-17.png', '<b>Mô tả sản phẩm:</b><br><p>Quần jean nam dáng slim với chất liệu denim cao cấp, vừa vặn và tạo form dáng chuẩn. Phù hợp cho các dịp đi chơi, dạo phố hoặc kết hợp với áo sơ mi cho phong cách trẻ trung.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu denim cao cấp:</b> Bền đẹp, không bị co rút sau nhiều lần giặt.</li><li><b>Dáng slim hiện đại:</b> Tạo cảm giác tôn dáng, trẻ trung.</li><li><b>Phong cách thời trang:</b> Phù hợp với nhiều phong cách, dễ phối đồ.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Quần jean nam dáng slim</b>, chất liệu denim bền đẹp, phong cách trẻ trung.</p>', 'Thời trang, bền đẹp, dáng slim', 'Mới 100%', '<b>Chính sách đổi trả:</b> Hỗ trợ đổi trả trong vòng 7 ngày.', 98, 1, 1, 123),
(18, 'Áo Sơ Mi Kiểu Nữ', '650000', '550000', 60, 'product-featured-18.png', '<b>Mô tả sản phẩm:</b><br><p>Áo sơ mi kiểu nữ với chất liệu mềm mại, dễ chịu, thiết kế hiện đại và trẻ trung. Thích hợp cho các dịp đi chơi, dạo phố hoặc kết hợp cùng với quần tây trong môi trường công sở.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu vải mềm mịn:</b> Mang lại sự thoải mái khi mặc.</li><li><b>Thiết kế kiểu dáng hiện đại:</b> Phù hợp với mọi vóc dáng, dễ dàng phối hợp với nhiều kiểu trang phục khác.</li><li><b>Phong cách trẻ trung:</b> Tạo cảm giác năng động, tươi mới cho người mặc.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Áo sơ mi kiểu nữ</b>, chất liệu mềm mại, thiết kế hiện đại và trẻ trung.</p>', 'Thoải mái, trẻ trung, dễ phối đồ', 'Mới 100%', '<b>Chính sách đổi trả:</b> Hỗ trợ đổi trả trong vòng 7 ngày.', 120, 1, 1, 159),
(19, 'Giày Sneakers Nam', '1200000', '1000000', 50, 'product-featured-19.jpg', '<b>Mô tả sản phẩm:</b><br><p>Giày sneakers nam thiết kế thể thao, thoải mái và phong cách. Chất liệu da tổng hợp, bền đẹp, dễ dàng kết hợp với nhiều bộ đồ khác nhau cho phong cách thời trang hàng ngày.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu da tổng hợp:</b> Bền đẹp, dễ dàng vệ sinh.</li><li><b>Thiết kế thể thao năng động:</b> Phù hợp cho các hoạt động thể chất hoặc đi dạo phố.</li><li><b>Phong cách thời trang:</b> Kết hợp dễ dàng với nhiều bộ đồ khác nhau.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Giày sneakers nam</b>, chất liệu da tổng hợp, thiết kế thể thao năng động.</p>', 'Năng động, thoải mái, dễ phối đồ', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày.', 150, 1, 1, 157),
(20, 'Áo Phông Nữ In Hình Thú Cưng', '350000', '300000', 80, 'product-featured-20.png', '<b>Mô tả sản phẩm:</b><br><p>Áo phông nữ in hình thú cưng dễ thương, thiết kế hiện đại, phù hợp cho những ai yêu thích các hoạt động ngoài trời hoặc đi chơi cùng bạn bè. Chất liệu cotton mềm mại và thoáng khí giúp bạn luôn cảm thấy thoải mái.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu cotton:</b> Mềm mại, thoáng khí, dễ chịu.</li><li><b>Họa tiết thú cưng dễ thương:</b> Thích hợp cho những ai yêu động vật và phong cách năng động.</li><li><b>Phong cách thời trang:</b> Phù hợp để kết hợp với quần jeans hoặc váy.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Áo phông nữ</b> in hình thú cưng, chất liệu cotton thoáng khí, dễ dàng phối đồ.</p>', 'Thoải mái, dễ thương, dễ phối đồ', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày.', 140, 1, 1, 85),
(21, 'Đầm Dự Tiệc Nữ', '1500000', '1200000', 25, 'product-featured-21.png', '<b>Mô tả sản phẩm:</b><br><p>Đầm dự tiệc nữ với thiết kế sang trọng, kiểu dáng ôm body giúp tôn lên vóc dáng hoàn hảo. Chất liệu vải lụa mềm mịn, đem lại cảm giác thoải mái cho người mặc.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu vải lụa cao cấp:</b> Mềm mại, thoáng khí và không nhăn.</li><li><b>Thiết kế ôm body:</b> Tôn dáng, tạo cảm giác quyến rũ và nữ tính.</li><li><b>Phù hợp với nhiều dịp:</b> Thích hợp cho các buổi tiệc, sự kiện trang trọng.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Đầm dự tiệc nữ</b> chất liệu vải lụa mềm mại, thiết kế ôm body tôn dáng.</p>', 'Sang trọng, tôn dáng, dễ phối đồ', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày.', 85, 1, 1, 99),
(22, 'Áo Hoodie Nam', '700000', '550000', 40, 'product-featured-22.png', '<b>Mô tả sản phẩm:</b><br><p>Áo hoodie nam với chất liệu nỉ bông, giữ ấm tốt và mang lại cảm giác thoải mái. Thiết kế hiện đại, phù hợp cho các hoạt động ngoài trời hoặc dạo phố cùng bạn bè.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu nỉ bông:</b> Giữ ấm tốt, mềm mại và thoáng khí.</li><li><b>Thiết kế tiện dụng:</b> Với mũ đội có thể điều chỉnh, thích hợp cho mọi hoàn cảnh.</li><li><b>Phong cách năng động:</b> Phù hợp với phong cách thể thao, dễ dàng phối đồ.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Áo hoodie nam</b> chất liệu nỉ bông, thiết kế tiện dụng, giữ ấm tốt.</p>', 'Năng động, ấm áp, dễ phối đồ', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày.', 110, 1, 1, 118),
(23, 'Quần Short Nữ', '350000', '300000', 60, 'product-featured-23.png', '<b>Mô tả sản phẩm:</b><br><p>Quần short nữ với thiết kế thời trang và thoải mái, chất liệu vải cotton nhẹ nhàng, thích hợp cho các hoạt động ngoài trời hoặc đi dạo phố trong mùa hè.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu cotton:</b> Mềm mại, thoáng khí, không gây khó chịu khi mặc lâu.</li><li><b>Thiết kế đơn giản, thời trang:</b> Dễ dàng phối hợp với nhiều loại áo khác nhau.</li><li><b>Phù hợp cho mùa hè:</b> Tạo cảm giác thoải mái khi mặc trong mùa nóng.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Quần short nữ</b> chất liệu cotton, thời trang và thoải mái cho mùa hè.</p>', 'Thoải mái, thời trang, dễ phối đồ', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày.', 120, 1, 1, 95),
(24, 'Giày Sandals Nữ', '600000', '500000', 50, 'product-featured-24.png', '<b>Mô tả sản phẩm:</b><br><p>Giày sandals nữ thiết kế thoải mái, dễ dàng mang vào và tháo ra. Chất liệu cao su bền bỉ và đế giày chắc chắn giúp bạn di chuyển dễ dàng trong suốt ngày dài.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu cao su:</b> Bền bỉ, dễ vệ sinh và giữ cho giày luôn mới.</li><li><b>Thiết kế thoải mái:</b> Đế giày mềm, không gây đau chân khi đi lâu.</li><li><b>Phong cách đơn giản, tinh tế:</b> Dễ dàng phối hợp với nhiều trang phục khác nhau.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Giày sandals nữ</b> chất liệu cao su, thiết kế thoải mái, dễ dàng mang vào và tháo ra.</p>', 'Thoải mái, dễ sử dụng, bền bỉ', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày.', 135, 1, 1, 106),
(25, 'Túi Xách Nữ Cao Cấp', '1000000', '850000', 20, 'product-featured-25.png', '<b>Mô tả sản phẩm:</b><br><p>Túi xách nữ cao cấp được làm từ chất liệu da thật, thiết kế tinh tế và sang trọng. Với các ngăn đựng rộng rãi, giúp bạn dễ dàng sắp xếp đồ đạc và mang theo mọi thứ cần thiết trong một ngày dài.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu da thật:</b> Bền bỉ, sang trọng và dễ vệ sinh.</li><li><b>Thiết kế sang trọng:</b> Phù hợp với nhiều hoàn cảnh và phong cách.</li><li><b>Không gian rộng rãi:</b> Có thể chứa nhiều vật dụng cá nhân, ví tiền, điện thoại.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Túi xách nữ cao cấp</b> chất liệu da thật, sang trọng, thiết kế tiện dụng cho phái đẹp.</p>', 'Sang trọng, rộng rãi, bền bỉ', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày.', 152, 1, 1, 102),
(26, 'Áo Sơ Mi Nam', '500000', '450000', 70, 'product-featured-26.png', '<b>Mô tả sản phẩm:</b><br><p>Áo sơ mi nam được làm từ chất liệu cotton cao cấp, mang lại cảm giác thoải mái suốt cả ngày. Thiết kế cổ điển, có thể mặc trong các buổi họp, sự kiện hoặc đi làm hàng ngày.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu cotton:</b> Thoáng khí, không gây khó chịu khi mặc lâu.</li><li><b>Kiểu dáng cổ điển:</b> Phù hợp với nhiều hoàn cảnh, dễ dàng kết hợp với quần tây hoặc jeans.</li><li><b>Thích hợp cho công sở:</b> Mang lại sự lịch sự và chuyên nghiệp.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Áo sơ mi nam</b> chất liệu cotton, kiểu dáng cổ điển, phù hợp cho công sở và sự kiện.</p>', 'Thoải mái, lịch sự, dễ phối đồ', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày.', 160, 1, 1, 119),
(27, 'Quần Jeans Nam', '750000', '650000', 50, 'product-featured-27.png', '<b>Mô tả sản phẩm:</b><br><p>Quần jeans nam với thiết kế hiện đại, chất liệu denim bền bỉ, phù hợp cho những ai yêu thích sự năng động, khỏe khoắn. Quần có thể phối với áo thun hoặc áo sơ mi cho phong cách trẻ trung, cá tính.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu denim:</b> Bền bỉ, không dễ bị sờn hoặc rách.</li><li><b>Thiết kế ôm vừa:</b> Tôn dáng mà vẫn tạo cảm giác thoải mái.</li><li><b>Phong cách đa dạng:</b> Phù hợp với nhiều loại trang phục khác nhau.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Quần jeans nam</b> chất liệu denim, thiết kế ôm vừa, thích hợp cho nhiều phong cách thời trang.</p>', 'Bền bỉ, năng động, dễ phối đồ', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày.', 187, 1, 1, 123),
(28, 'Áo Bra Top Nữ', '350000', '300000', 90, 'product-featured-28.png', '<b>Mô tả sản phẩm:</b><br><p>Áo bra top nữ với thiết kế thể thao, phù hợp cho các hoạt động tập gym hoặc dạo phố. Chất liệu vải co giãn, tạo sự thoải mái tối đa cho người mặc mà vẫn giữ được sự chắc chắn và tôn dáng.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu co giãn:</b> Mềm mại, vừa vặn với cơ thể và dễ dàng vận động.</li><li><b>Thiết kế thể thao:</b> Tạo sự thoải mái cho các hoạt động thể chất.</li><li><b>Phong cách năng động:</b> Phù hợp cho việc tập luyện hoặc phối với quần shorts khi dạo phố.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Áo bra top nữ</b> chất liệu co giãn, thiết kế thể thao thoải mái cho các hoạt động thể chất.</p>', 'Năng động, thoải mái, dễ phối đồ', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày.', 122, 1, 1, 86),
(29, 'Áo Blazer Nữ', '1200000', '1000000', 30, 'product-featured-29.png', '<b>Mô tả sản phẩm:</b><br><p>Áo blazer nữ với thiết kế thanh lịch, phù hợp cho các buổi họp hoặc sự kiện trang trọng. Chất liệu vải cao cấp, đường may tinh tế, tôn lên phong cách chuyên nghiệp và hiện đại.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu vải cao cấp:</b> Bền bỉ, thoáng khí và dễ dàng bảo quản.</li><li><b>Thiết kế thanh lịch:</b> Phù hợp với nhiều hoàn cảnh khác nhau.</li><li><b>Phong cách chuyên nghiệp:</b> Tạo dựng hình ảnh lịch sự và tự tin.</li></ul>', '<b>Mô tả ngắn:</b><br><p><b>Áo blazer nữ</b> chất liệu cao cấp, thiết kế thanh lịch, phù hợp cho công việc và sự kiện.</p>', 'Chuyên nghiệp, lịch sự, tôn dáng', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày.', 135, 1, 1, 81),
(30, 'Giày Boots Nam', '1000000', '850000', 45, 'product-featured-30.png', '<b>Mô tả sản phẩm:</b><br><p>Giày boots nam được làm từ chất liệu da cao cấp, thiết kế mạnh mẽ và ấn tượng. Đế giày dày dặn, chống trượt hiệu quả, rất thích hợp cho những chuyến đi xa hoặc dạo phố trong mùa lạnh.</p><b>Đặc điểm nổi bật:</b><ul><li><b>Chất liệu da cao cấp:</b> Bền bỉ và dễ bảo quản, giúp giày luôn mới mẻ.</li><li><b>Đế giày chống trượt:</b> An toàn khi di chuyển trên mọi địa hình.</li><li><b>Phong cách mạnh mẽ:</b> Phù hợp với các trang phục cá tính và thời trang mùa đông.</li></ul><p></p>', '<b>Mô tả ngắn:</b><br><p><b>Giày boots nam</b> chất liệu da, thiết kế mạnh mẽ, chống trượt và thích hợp cho mùa lạnh.</p>', 'Mạnh mẽ, bền bỉ, an toàn', 'Mới 100%', '<b>Chính sách đổi trả:</b> Đổi trả trong vòng 7 ngày.', 155, 1, 1, 157);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(310, 38, 15),
(311, 44, 15),
(312, 59, 15),
(313, 37, 19),
(314, 38, 19),
(315, 38, 20),
(316, 39, 20),
(317, 37, 22),
(318, 38, 22),
(319, 39, 22),
(320, 37, 25),
(321, 38, 25),
(322, 45, 25),
(323, 49, 25),
(324, 52, 25),
(325, 37, 28),
(326, 38, 28),
(327, 39, 28),
(328, 37, 29),
(329, 40, 29),
(330, 42, 29),
(331, 37, 14),
(332, 38, 14),
(333, 44, 14),
(334, 51, 14),
(335, 46, 1),
(336, 49, 1),
(337, 50, 1),
(338, 37, 2),
(339, 38, 2),
(340, 39, 2),
(341, 44, 2),
(345, 37, 3),
(346, 39, 3),
(347, 46, 3),
(348, 37, 4),
(349, 38, 4),
(350, 39, 4),
(351, 37, 5),
(352, 39, 5),
(353, 42, 5),
(354, 48, 5),
(355, 37, 6),
(356, 38, 6),
(357, 39, 6),
(358, 40, 6),
(359, 42, 6),
(360, 37, 8),
(361, 39, 8),
(362, 44, 10),
(363, 47, 10),
(364, 48, 10),
(365, 37, 12),
(366, 38, 12),
(367, 39, 12),
(368, 46, 12),
(369, 38, 13),
(370, 39, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(106, '106.jpg', 83),
(107, '107.jpg', 83),
(108, '108.jpg', 84),
(109, '109.jpg', 84),
(110, '110.jpg', 85),
(111, '111.jpg', 85),
(112, '112.jpg', 86),
(113, '113.jpg', 86),
(114, '114.jpg', 87),
(115, '115.jpg', 87),
(116, '116.jpg', 88),
(117, '117.jpg', 88),
(118, '118.jpg', 89),
(119, '119.jpg', 89),
(120, '120.jpg', 90),
(121, '121.jpg', 91),
(122, '122.jpg', 92),
(123, '123.jpg', 92),
(124, '124.jpg', 93),
(125, '125.jpg', 94),
(126, '126.jpg', 95),
(127, '127.jpg', 96),
(128, '128.jpg', 97),
(129, '129.jpg', 98),
(130, '130.jpg', 98),
(131, '131.jpg', 100),
(137, '137.png', 17),
(138, '138.png', 17),
(139, '139.png', 17),
(140, '140.png', 16),
(141, '141.png', 16),
(142, '142.png', 15),
(143, '143.png', 15),
(144, '144.png', 15),
(145, '145.png', 18),
(146, '146.png', 18),
(147, '147.png', 18),
(148, '148.jpg', 19),
(149, '149.jpg', 19),
(150, '150.png', 20),
(151, '151.png', 20),
(152, '152.png', 20),
(153, '153.png', 21),
(154, '154.png', 21),
(155, '155.png', 22),
(156, '156.png', 22),
(157, '157.png', 22),
(158, '158.png', 23),
(159, '159.png', 23),
(160, '160.png', 24),
(161, '161.png', 24),
(162, '162.png', 24),
(163, '163.png', 25),
(164, '164.png', 25),
(165, '165.png', 25),
(166, '166.png', 26),
(167, '167.png', 26),
(168, '168.png', 26),
(169, '169.png', 27),
(170, '170.png', 27),
(171, '171.png', 28),
(172, '172.png', 28),
(173, '173.png', 28),
(174, '174.png', 29),
(175, '175.png', 29),
(176, '176.png', 30),
(177, '177.png', 30),
(178, '178.png', 14),
(179, '179.png', 1),
(180, '180.png', 1),
(181, '181.png', 1),
(182, '182.jpg', 2),
(183, '183.jpg', 2),
(184, '184.jpg', 2),
(185, '185.jpg', 3),
(186, '186.jpg', 3),
(187, '187.png', 4),
(188, '188.png', 4),
(189, '189.png', 4),
(190, '190.png', 5),
(191, '191.png', 5),
(192, '192.png', 5),
(193, '193.png', 6),
(194, '194.png', 6),
(195, '195.png', 7),
(196, '196.png', 7),
(197, '197.png', 8),
(198, '198.png', 8),
(199, '199.png', 9),
(200, '200.png', 9),
(201, '201.png', 10),
(202, '202.png', 10),
(203, '203.png', 11),
(204, '204.png', 11),
(205, '205.png', 11),
(206, '206.png', 12),
(207, '207.png', 12),
(208, '208.jpg', 13),
(209, '209.jpg', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(506, 3, 17),
(507, 4, 17),
(508, 5, 17),
(509, 6, 17),
(510, 3, 16),
(511, 4, 16),
(512, 5, 16),
(513, 2, 18),
(514, 3, 18),
(515, 4, 18),
(516, 56, 19),
(517, 57, 19),
(518, 2, 21),
(519, 3, 21),
(520, 4, 21),
(521, 5, 22),
(522, 6, 22),
(523, 2, 23),
(524, 3, 23),
(525, 4, 23),
(526, 48, 24),
(527, 49, 24),
(528, 50, 24),
(529, 51, 24),
(530, 3, 26),
(531, 4, 26),
(532, 5, 26),
(533, 6, 26),
(534, 3, 27),
(535, 4, 27),
(536, 5, 27),
(537, 6, 27),
(538, 2, 28),
(539, 3, 28),
(540, 4, 28),
(541, 2, 29),
(542, 3, 29),
(543, 4, 29),
(548, 2, 1),
(549, 3, 1),
(550, 4, 1),
(551, 4, 2),
(552, 5, 2),
(553, 6, 2),
(556, 1, 3),
(557, 2, 3),
(558, 2, 6),
(559, 3, 6),
(560, 4, 6),
(561, 5, 6),
(562, 2, 7),
(563, 3, 7),
(564, 4, 7),
(565, 5, 7),
(566, 2, 11),
(567, 3, 11),
(568, 4, 11),
(569, 5, 11),
(570, 3, 13),
(571, 4, 13),
(572, 5, 13),
(573, 6, 13),
(590, 54, 30),
(591, 55, 30),
(592, 56, 30),
(593, 57, 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Dễ dàng đổi trả', 'Trả lại bất kỳ sản phẩm nào trước 15 ngày!', 'service-5.png'),
(6, 'Vận chuyển rẻ', 'Đồng giá 30.000VNĐ cho đơn hàng trên toàn quốc', 'service-6.png'),
(7, 'Giao hàng nhanh chóng', 'Hàng sẽ được giao trong vòng 2-4 ngày.', 'service-7.png'),
(8, 'Đảm bảo sự hài lòng', 'Chúng tôi đảm bảo sự hài lòng về chất lượng.', 'service-8.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `footer_about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `footer_copyright` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `contact_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `contact_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `contact_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `contact_fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `contact_map_iframe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `receive_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `receive_email_subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `receive_email_thank_you_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `forget_password_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `meta_keyword_home` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `meta_description_home` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner_login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner_registration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner_forget_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner_reset_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner_search` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner_cart` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner_checkout` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner_product_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner_blog` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cta_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cta_read_more_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cta_read_more_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cta_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `featured_product_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `featured_product_subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `latest_product_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `latest_product_subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `popular_product_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `popular_product_subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `testimonial_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `testimonial_subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `testimonial_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `blog_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `blog_subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `newsletter_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `paypal_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `before_head` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `after_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `before_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPRESSED;

--
-- Đang đổ dữ liệu cho bảng `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.png', 'favicon.png', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', '', '279 Đ. Nguyễn Tri Phương, Phường 5, Quận 10, Hồ Chí Minh, Việt Nam', 'miju_support@gmail.com', '02873061976', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.6526865461547!2d106.66586650885426!3d10.76122775943319!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ee4ecfa255d%3A0x9e5ec3fa6801b7d6!2zMjc5IMSQLiBOZ3V54buFbiBUcmkgUGjGsMahbmcsIFBoxrDhu51uZyA1LCBRdeG6rW4gMTAsIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1733715107384!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'miju_support@gmail.com', 'Tin nhắn Email của Khách truy cập từ Trang web MIJU', 'Cảm ơn bạn đã liên hệ với chúng tôi. Chúng tôi sẽ phản hồi trong thời gian sớm nhất!', 'Một liên kết xác nhận sẽ được gửi đến địa chỉ email của bạn. Bạn sẽ nhận được thông tin đặt lại mật khẩu ở đó.', 4, 4, 5, 5, 5, 6, 8, 'MIJU', 'thoitrang, quanao, nangdong', 'Cửa hàng quần áo thời trang', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Chào Mừng Đến Với Cửa Hàng Của Chúng Tôi', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Xem thêm', '#', 'cta.jpg', 'Sản phẩm nổi bật', 'BST sản phẩm nổi bật trong cuối đông 2024', 'Sản phẩm mới nhất', 'BST sản phẩm mới nhất đầu xuân 2025', 'Sản phẩm phổ biến', 'Danh sách sản phẩm phổ biến trong năm 2024', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Đăng kí để nhận bản tin và ưu đãi sớm nhất!', 'miju@gmail.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'VIETCOMBANK\r\nTên Tài khoản : MIJU FASHION\r\nSố tài khoản : 001 100 0284 889\r\nLoại tiền tệ : VND\r\nTại Ngân hàng : Ngân hàng TMCP Ngoại thương Việt Nam, Sở giao dịch', '', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5ae370d7227d3d7edc24cb96/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 1, '30000'),
(2, 2, '30000'),
(3, 3, '30000'),
(4, 4, '30000'),
(5, 5, '30000'),
(6, 6, '30000'),
(7, 7, '30000'),
(8, 8, '30000'),
(9, 9, '30000'),
(10, 10, '30000'),
(11, 11, '30000'),
(12, 12, '30000'),
(13, 13, '30000'),
(14, 14, '30000'),
(15, 15, '30000'),
(16, 16, '30000'),
(17, 17, '30000'),
(18, 18, '30000'),
(19, 19, '30000'),
(20, 20, '30000'),
(21, 21, '30000'),
(22, 22, '30000'),
(23, 23, '30000'),
(24, 24, '30000'),
(25, 25, '30000'),
(26, 26, '30000'),
(27, 27, '30000'),
(28, 28, '30000'),
(29, 29, '30000'),
(30, 30, '30000'),
(31, 31, '30000'),
(32, 32, '30000'),
(33, 33, '30000'),
(34, 34, '30000'),
(35, 35, '30000'),
(36, 36, '30000'),
(37, 37, '30000'),
(38, 38, '30000'),
(39, 39, '30000'),
(40, 40, '30000'),
(41, 41, '30000'),
(42, 42, '30000'),
(43, 43, '30000'),
(44, 44, '30000'),
(45, 45, '30000'),
(46, 46, '30000'),
(47, 47, '30000'),
(48, 48, '30000'),
(49, 49, '30000'),
(50, 50, '30000'),
(51, 51, '30000'),
(52, 52, '30000'),
(53, 53, '30000'),
(54, 54, '30000'),
(55, 55, '30000'),
(56, 56, '30000'),
(57, 57, '30000'),
(58, 58, '30000'),
(59, 59, '30000'),
(60, 60, '30000'),
(61, 61, '30000'),
(62, 62, '30000'),
(63, 63, '30000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(48, '36'),
(49, '37'),
(50, '38'),
(51, '39'),
(52, '40'),
(53, '41'),
(54, '42'),
(55, '43'),
(56, '44'),
(57, '45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `button_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.jpg', 'Chào Mừng Đến Với MIJU', 'Mua sắm online với những xu hướng mới nhất', 'Ghé Thăm Shop', 'product-category.php?id=4&type=mid-category', 'Center'),
(2, 'Thanhtruot2.jpg', 'Siêu Sale 50%', 'Những sản phẩm tốt nhất', 'Xem thêm', '#', 'Right'),
(3, 'slider-3.jpg', 'BTS Mới Nhất', 'Hứa hẹn bùng nổ đầu xuân', 'Mua Ngay', '#', 'Left');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `social_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `social_icon` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/#', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/#', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', 'https://www.youtube.com/#', 'fa fa-youtube'),
(7, 'Instagram', 'https://www.instagram.com/#', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', 'https://www.whatsapp.com/#', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `subs_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `subs_date_time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `subs_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(10, 'vy@gmail.com', '2024-12-12', '2024-12-12 07:59:05', '1bda28d918a6f7f907dbb37ecf37cd19', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(6, 'NỮ', 1),
(7, 'NAM', 1),
(8, 'TRẺ EM', 1),
(9, 'EM BÉ', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `role` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(5, 'Quỳnh', 'quynh@gmail.com', '425903895', '$2y$10$gcfRohw0ONE/.4SEctPzCejk5rMjcygqs06/WUFCPcviVWfZboBf2', 'default.jpg', 'Quản Lý Đơn Hàng', 'active'),
(6, 'Vĩ', 'vi@gmail.com', '325099306', '$2y$10$2HMOEKIILIIGJQs.qUKQvOeOnaZbGxq7Tl/F1k1vuZxFHJyaxCMnq', 'default.jpg', 'Quản Trị Viên Cấp Cao', 'active'),
(7, 'Vy', 'vy@gmail.com', '732750', '$2y$10$.RzYQlLBZIPn4zFk4WeweO0ZDlSiChXobjLxPnlLMnogEOUWKKfiK', 'default.jpg', 'Quản Trị Viên', 'active'),
(8, 'Thảo', 'thao@gmail.com', '278970294', '$2y$10$YjJeW2bh81ac8lOdHUNeWOuMkYADqYvC62C7FnIUoDMUD3XTDjIf2', 'default.jpg', 'Quản Lý Sản Phẩm', 'active'),
(9, 'Phúc', 'phuc@gmail.com', '72947902', '$2y$10$IWiwaMrK/2zxRl3ujarDUORMdqzDqsY79LE2xJKfhtK2uTTSongQu', 'default.jpg', 'Chăm Sóc Khách Hàng', 'active'),
(11, 'heo', 'heo@gmail.com', '8207540543', '$2y$10$WdHnS0MnUycU0RU.EsocxO0RNbwqjveNs/jIiyO47EU1jIXquX6iK', 'default.jpg', 'Quản Trị Viên', 'inactive');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `iframe_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Chỉ mục cho bảng `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Chỉ mục cho bảng `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Chỉ mục cho bảng `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Chỉ mục cho bảng `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Chỉ mục cho bảng `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Chỉ mục cho bảng `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Chỉ mục cho bảng `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Chỉ mục cho bảng `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Chỉ mục cho bảng `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Chỉ mục cho bảng `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Chỉ mục cho bảng `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Chỉ mục cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Chỉ mục cho bảng `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Chỉ mục cho bảng `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT cho bảng `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT cho bảng `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT cho bảng `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT cho bảng `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT cho bảng `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
