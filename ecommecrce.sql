/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - aptech_ecommerce
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`aptech_ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `aptech_ecommerce`;

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(255) DEFAULT NULL,
  `prod_price` int(11) DEFAULT 0,
  `prod_stock` int(11) DEFAULT 0,
  `prod_img` varchar(255) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `products` */

insert  into `products`(`prod_id`,`prod_name`,`prod_price`,`prod_stock`,`prod_img`,`added_by`,`update_by`,`status`,`created_at`,`updated_at`) values 
(1,'Apple',12000,10,'prod_image/image-removebg-preview.png',1,NULL,1,'2024-06-28 15:10:37',NULL),
(2,'Vivo',4500,450,'prod_image/image-removebg-preview.png',1,NULL,1,'2024-06-28 15:10:59',NULL),
(3,'Samsang',600,120,'prod_image/image-removebg-preview.png',1,NULL,1,'2024-06-28 15:11:17',NULL),
(5,'TCL Updated latest',45,5,'prod_image/image-removebg-preview.png',1,1,1,'2024-06-28 15:25:43','2024-07-01 14:24:37'),
(6,'VGA',450,7800,'prod_image/image-removebg-preview.png',1,NULL,1,'2024-06-28 15:42:44',NULL),
(7,'Smart Watch',45600,2,'prod_image/image-removebg-preview.png',2,NULL,1,'2024-06-28 15:43:54',NULL),
(8,'Shoes',1111,222,'prod_image/image-removebg-preview.png',1,NULL,1,'2024-07-01 14:44:30',NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_role` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`email`,`password`,`user_role`) values 
(1,'Khalid','admin@ecom.com','Abc@1234',0),
(2,'Murtaza','m@gmail.com','Abc@1234',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
