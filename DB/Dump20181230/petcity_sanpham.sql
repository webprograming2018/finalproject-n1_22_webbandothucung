-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: petcity
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tensp` varchar(255) NOT NULL,
  `gia` int(11) NOT NULL,
  `anh` varchar(255) NOT NULL,
  `thongtinsanpham` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (1,'petstar-tui sach nhua trong nho',240000,'./assets/images/fl1-1.png','Thiết kế bắt mắt, màu sắc hợp thời trang. Fantasy cat làm sống động ngôi nhà và mang tới những trải nghiệm tiện ích cho chú mèo đáng yêu của bạn với hình dáng ngộ nghĩnh.'),(2,'sy-ao cho thu cung cac hinh',155000,'./assets/images/fl1-2.jpg','+ Áo cotton sát nách cho chó mèo, màu sắc và kiểu dáng đẹp'),(3,'pate royal canin - mini  adult light 195g cho',59000,'./assets/images/fl1-3.jpg','Royal Canin Intense Beauty (Gravy)'),(4,'nha qua dau 38 x 45 x 38 cm',299999,'./assets/images/fl1-4.png',' Nhà Quả Dâu cho chó mèo, kiểu dáng và màu sắc đẹp, hấp dẫn thú cưng nhà bạn, chất liệu bền, chắc chắn, bán rẻ nhất tại PetCity.vn'),(5,'may say long Codos CP160',2140000,'./assets/images/fl1-5.jpg','+ Sản phẩm chuyên dụng không thể thiếu dành cho các gia đình nuôi chó mèo có bộ lông dài, dày và lâu khô.'),(6,'binh xit nature\'s miracles ',241000,'./assets/images/fl1-6.jpg','Thương hiệu 8in1 đã phát triển cùng với sự đổi mới và đã cung cấp các sản phẩm chất lượng tốt nhất cho hạnh phúc, sức khoẻ và dinh dưỡng của thú cưng - một trong những mục tiêu trọng tâm của 8in1.'),(7,'nem trai gap da nang 50cm',450000,'./assets/images/fl1-7.png','ĐẶC ĐIỂM NỔI BẬT'),(8,'sy- long son tinh dien co banh xe 65*43*53cm',1300000,'./assets/images/fl1-8.png','Chất liệu sắt sơn tĩnh điện được gia cố chắc chắn bằng ốc vít, tạo cảm giác cứng cáp tuyệt đối cho sản phẩm.'),(9,'kit cat - cat ve sinh',190000,'./assets/images/fl2-1.jpg','Thành phần : Kitcat Soya là loại cát mèo phân hủy hoàn toàn, sử dụng nguyên liệu từ ngành sản xuất đậu nành, các thành phần xơ được sử dụng trong công thức tạo ra sản phẩm cát mèo ép viên thân thiện với môi trường.'),(10,'petstar- ao ni long phoi mau',93000,'./assets/images/fl2-2.jpg','Thành phần : Kitcat Soya là loại cát mèo phân hủy hoàn toàn, sử dụng nguyên liệu từ ngành sản xuất đậu nành, các thành phần xơ được sử dụng trong công thức tạo ra sản phẩm cát mèo ép viên thân thiện với môi trường.'),(11,'balo di chuyen ',520000,'./assets/images/fl2-3.jpg','Với sản phẩm này, chó mèo cưng của bạn có thể nhìn ra thế giới và tận hưởng phong cảnh, nhìn ngắm bên ngòai, tương tác với thế giới bên ngoài'),(12,'luoc cho meo long dai',652000,'./assets/images/fl2-4.jpg','Lược FURrminator là loại lược chuyên dụng được sản xuất cho mèo dưới 10lbs (tương với 5kg) với mặt lưỡi dài 3,2 cm dùng để loại bỏ hết lớp lông chết phía sâu bên trong.'),(13,'thuc an cho meo cat\'s eye',166000,'./assets/images/fl2-5.jpg','Dành cho mèo trên 3 tháng tuổi'),(14,'long son cho meo',951000,'./assets/images/fl2-6.jpg','Chuồng mèo 3 tầng sơn tĩnh điện nan ống'),(15,'cay meo leo AFP Nature Cozy',2380000,'./assets/images/fl2-7.jpg','Được thành lập từ năm 1997, với 20 năm kinh nghiệm, mục tiêu của AFP và Pawise là cung cấp các sản phẩm dành cho thú cưng với chất lượng tốt nhất, an toàn nhất với 95% sản phẩm đã được xuất khẩu sang thị trường Châu Âu và Châu Mỹ.'),(16,'nha ve sinh meo Makar ',750000,'./assets/images/fl2-8.jpg','Thiết kế bắt mắt, màu sắc hợp thời trang. Fantasy cat làm sống động ngôi nhà và mang tới những trải nghiệm tiện ích cho chú mèo đáng yêu của bạn với hình dáng ngộ nghĩnh.');
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-30 14:47:20
