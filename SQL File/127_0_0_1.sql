-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 19, 2023 at 05:31 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agmsdb`
--
CREATE DATABASE IF NOT EXISTS `agmsdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `agmsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 740121043, 'tushan.janith@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-12-29 06:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblartist`
--

DROP TABLE IF EXISTS `tblartist`;
CREATE TABLE IF NOT EXISTS `tblartist` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Education` mediumtext,
  `Award` mediumtext,
  `Profilepic` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblartist`
--

INSERT INTO `tblartist` (`ID`, `Name`, `MobileNumber`, `Email`, `Education`, `Award`, `Profilepic`, `CreationDate`) VALUES
(1, 'Mohan Das', 7987987987, 'mohan@gmail.com', 'Completed his fine arts from kg fine arts college.\r\nSpecialized in drawing and ceramic.', 'Winner of Hugo Boss Prize in 2019, MacArthur Fellowship\r\n', 'ecebbecf28c2692aeb021597fbddb174.jpg', '2022-12-21 13:31:25'),
(2, 'Dev', 3287987987, 'dev@gmail.com', 'Completed his fine arts from kg fine arts college.\r\nSpecialized in painting and ceramic.', 'Winner of Hugo Boss Prize in 2019, MacArthur Fellowship\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2022-12-21 13:31:25'),
(3, 'Kanha', 9687987987, 'kanha@gmail.com', 'Completed his fine arts from kg fine arts college.\r\nSpecialized in painting and ceramic.', 'Winner of Hugo Boss Prize in 2019, MacArthur Fellowship\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2022-12-21 13:31:25'),
(4, 'Abir Rajwansh', 5687987987, 'abir@gmail.com', 'Completed his fine arts from klijfine arts college.\r\nSpecialized in painting and ceramic.', 'Winner of Hugo Boss Prize in 2019, MacArthur Fellowship\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2022-12-21 13:31:25'),
(5, 'Krisna Dutt', 9187987987, 'krish@gmail.com', 'Completed his fine arts from kg fine arts college.\r\nSpecialized in painting and ceramic.', 'Winner of Hugo Boss Prize in 2019, MacArthur Fellowship\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2022-12-21 13:31:25'),
(6, 'Kajol Mannati', 8187987987, 'kajol@gmail.com', 'Completed his fine arts from kg fine arts college.\r\nSpecialized in painting and ceramic.', 'Winner of Hugo Boss Prize in 2019, MacArthur Fellowship\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2022-12-21 13:31:25'),
(7, 'Meera Singh', 2987987987, 'meera@gmail.com', 'Fine Arts in Painting from College of Art, New Delhi in 2012,\r\nSpecialized in printmaking and ceramic.', 'award-winning artist, and has received a scholarship from the Ministry of Culture, Government of India in 2014 as well as the Jean-Claude Reynal Scholarship (France) in 2019.\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2022-12-21 13:31:25'),
(8, 'Narayan Das', 9987987987, 'narayan@gmail.com', 'Completed his fine arts from hjai fine arts college.\r\nSpecialized in painting and ceramic.', 'Winner of Young Artist Award in 2009, MacArthur Fellowship\r\n', 'ad04ad2d96ae326a9ca9de47d9e2fc74.jpg', '2022-12-21 13:31:25'),
(11, 'Dhanuri keshara', 7754939546, 'tushan.janith@gmail.com', 'BSE', 'non', 'bee1ec733253812f492f4a81fa32f88d.jpg', '2023-10-18 21:39:54');

-- --------------------------------------------------------

--
-- Table structure for table `tblartmedium`
--

DROP TABLE IF EXISTS `tblartmedium`;
CREATE TABLE IF NOT EXISTS `tblartmedium` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ArtMedium` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblartmedium`
--

INSERT INTO `tblartmedium` (`ID`, `ArtMedium`, `CreationDate`) VALUES
(1, 'Wood and Bronze', '2022-12-22 04:57:04'),
(2, 'Acrylic on canvas', '2022-12-22 04:57:34'),
(3, 'Resin', '2022-12-22 04:58:00'),
(4, 'Mixed Media', '2022-12-22 06:09:12'),
(5, 'Bronze', '2022-12-22 06:09:35'),
(6, 'Fibre', '2022-12-22 06:09:53'),
(7, 'Steel', '2022-12-22 06:10:16'),
(8, 'Metal', '2022-12-22 06:10:35'),
(9, 'Oil on Canvas', '2022-12-22 06:11:31'),
(10, 'Oil on Linen', '2022-12-22 06:12:12'),
(11, 'Acrylics on paper', '2022-12-22 06:13:11'),
(12, 'Hand-painted on particle wood/MDF', '2022-12-22 06:14:03'),
(14, 'BRASS', '2023-10-18 21:40:17'),
(15, 'BURN', '2023-10-18 22:00:01'),
(16, 'COCONUT HUSK', '2023-10-18 22:06:44'),
(17, 'GRANAITE STATUE', '2023-10-18 22:23:49'),
(18, 'PULP', '2023-10-18 22:37:35'),
(19, 'WOODEN', '2023-10-18 22:40:30'),
(20, 'CERAMIC ', '2023-10-18 22:46:13'),
(21, 'LEATHER', '2023-10-18 22:58:31'),
(22, 'WATAKEY', '2023-10-18 23:12:23'),
(23, 'HAND LOOM', '2023-10-18 23:14:31');

-- --------------------------------------------------------

--
-- Table structure for table `tblartproduct`
--

DROP TABLE IF EXISTS `tblartproduct`;
CREATE TABLE IF NOT EXISTS `tblartproduct` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(250) DEFAULT NULL,
  `Dimension` varchar(250) DEFAULT NULL,
  `Orientation` varchar(100) DEFAULT NULL,
  `Size` varchar(100) DEFAULT NULL,
  `Artist` int DEFAULT NULL,
  `ArtType` int DEFAULT NULL,
  `ArtMedium` int DEFAULT NULL,
  `SellingPricing` decimal(10,0) DEFAULT NULL,
  `Description` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `Image` varchar(250) DEFAULT NULL,
  `Image1` varchar(250) DEFAULT NULL,
  `Image2` varchar(250) DEFAULT NULL,
  `Image3` varchar(250) DEFAULT NULL,
  `Image4` varchar(250) DEFAULT NULL,
  `RefNum` int DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblartproduct`
--

INSERT INTO `tblartproduct` (`ID`, `Title`, `Dimension`, `Orientation`, `Size`, `Artist`, `ArtType`, `ArtMedium`, `SellingPricing`, `Description`, `Image`, `Image1`, `Image2`, `Image3`, `Image4`, `RefNum`, `CreationDate`) VALUES
(2, 'Radhe Krishna Painting', '56x56', 'Landscape', 'Medium', 1, 4, 9, '200', 'It is a painting of Radha Krishna.\r\nIt is a painting of Radha Krishna.\r\nIt is a painting of Radha Krishna.It is a painting of Radha Krishna.\r\nIt is a painting of Radha Krishna.It is a painting of Radha Krishna.It is a painting of Radha Krishna.', 'c565ad988a4c6fc0a9f429af43c47cce1671771454.jpg', '48424793dc9ea732f6118d4ba4326509.jpg', '', '', '', 586429003, '2022-12-23 04:57:34'),
(3, 'Shiv Tandav Painting', '100X50 inches', 'Potrait', 'Large', 6, 4, 10, '350', 'It is a painting of shiv tandav.\r\nIt is a painting of shiv tandav.\r\nIt is a painting of shiv tandav.It is a painting of shiv tandav.It is a painting of shiv tandav.It is a painting of shiv tandav.It is a painting of shiv tandav.\r\nIt is a painting of shiv tandav.It is a painting of shiv tandav.', 'cd235e034297cda7b6f935dbd4881a2f1671771582.jpg', 'cd235e034297cda7b6f935dbd4881a2f1671771582.jpg', '', '', '', 686429002, '2022-12-23 04:59:42'),
(4, 'Stutue of Afel Tower', '45 inches tall', 'Landscape', 'Medium', 7, 1, 8, '500', 'It is a stute of afel tower which is made up of metal,It is a stute of afel tower which is made up of metal,It is a stute of afel tower which is made up of metal,It is a stute of afel tower which is made up of metal,It is a stute of afel tower which is made up of metal,It is a stute of afel tower which is made up of metal,It is a stute of afel tower which is made up of metal,', '508652faabdd333b34a0ce4a1dd443411671771753.jpg', '', '', '', '', 686429003, '2022-12-23 05:02:33'),
(5, 'HKjhkj', '100x200', 'Landscape', 'Large', 7, 3, 9, '200', 'gjhgj', '7d108db512f6a6a929cd0d0ad3b593e81671772410.jpg', '', '', '', '', 586429004, '2022-12-23 05:13:30'),
(6, 'BRASS BOWL “SWAN”', '05 1/2?', 'Landscape', 'Medium', 11, 10, 14, '61', 'A brass bowl is a type of bowl made from brass, a metal alloy primarily composed of copper and zinc. Brass is known for its golden appearance and can have a variety of finishes, from polished and shiny to antique or patinated.\r\n\r\nBrass bowls can be used for a range of purposes, including:\r\n\r\nDecorative: Many brass bowls are designed for decorative purposes. They can be used as centerpieces on tables, displayed on shelves, or as part of interior decor to add a touch of elegance and warmth to a room.\r\n\r\nServing: Brass bowls can also be functional and used for serving food or drinks. Some brass bowls have decorative patterns or engravings, making them suitable for special occasions or formal dining.\r\n\r\nStorage: Smaller brass bowls can be used for storing items like jewelry, keys, or potpourri. They can serve as both decorative and practical storage solutions.\r\n\r\nRitual and religious purposes: In some cultures and religious traditions, brass bowls are used for rituals, offerings, or as ceremonial items.\r\n\r\nBrass bowls are available in various sizes, styles, and designs, making them versatile and suitable for a wide range of uses. They can be found in stores that sell home decor, kitchenware, or specialty shops that focus on brass and metal products.', 'afecc37bfadd475b4172b83095a43d2b1697665378.jpg', 'DSC_0038__large.jpg', '', '', '', 348920271, '2023-10-18 21:42:58'),
(7, 'BRASS CANDLE STAND', '12? (DANGARA)', 'Potrait', 'Medium', 11, 10, 14, '28', 'A brass candle stand is a decorative or functional item typically made of brass, a metal alloy composed of copper and zinc. These candle stands are designed to hold candles and can come in various styles and sizes. They are often used for both decorative and practical purposes. Here are a few common types and uses of brass candle stands:\r\n\r\nCandleholders: These are simple stands designed to hold candles. They come in various designs, including single candle holders and multi-candle candelabras. They can be used for lighting candles for ambiance or special occasions.\r\n\r\nCandle Sconces: Brass candle sconces are wall-mounted fixtures with holders for candles. They can add a touch of elegance and warmth to interior decor.\r\n\r\nCandle Centerpieces: Brass candle stands are often used as centerpieces on dining tables, mantels, or other display areas. They can be combined with candles of different heights for a stunning visual effect.\r\n\r\nReligious or Ritual Use: In some religious or spiritual traditions, brass candle stands are used for ceremonial purposes, such as in churches or temples.\r\n\r\nOutdoor Candle Stands: Some brass candle stands are designed for outdoor use, such as garden or patio candle holders. They are usually designed to withstand the elements.\r\n\r\nBrass candle stands can have various finishes, including polished, antique, or patinated, which can affect their appearance. They are available in many home decor stores, antique shops, or online retailers. The style and design of a brass candle stand can vary greatly, making it easy to find one that suits your aesthetic and functional needs.', '088ccf5cd57e5cf2eda1a6cad62d2d881697665557.jpg', 'bf64539b203adfd7111dcaede67e6b5d.jpg', '', '', '', 834418244, '2023-10-18 21:45:57'),
(8, 'BRASS CASKET', '12', 'Landscape', 'Medium', 11, 10, 14, '28', 'A brass casket is a type of burial or funerary casket made primarily from brass, which is a metal alloy composed of copper and zinc. These caskets are designed to provide a dignified and long-lasting resting place for the deceased. Brass caskets are known for their durability, elegance, and resistance to corrosion.\r\n\r\n', '0720c205d4ed1facd00735fa1bd970181697665901.jpg', '0720c205d4ed1facd00735fa1bd97018.jpg', '', '', '', 499829538, '2023-10-18 21:51:41'),
(9, 'BRASS MURAUDA', '18? X 06?', 'Landscape', 'Medium', 0, 10, 14, '47', 'BRASS MURAUDA – SWAN CARVING 18? X 06?', '39a7f606964daa8b91f67bdca0fbc1051697666086.jpg', '', '', '', '', 216243673, '2023-10-18 21:54:46'),
(10, 'BRASS NILAME STATUE', '15', 'Potrait', 'Medium', 11, 1, 14, '366', 'A \"Nilame statue\" likely refers to a sculpture or figurine that represents a Nilame, a traditional Sri Lankan title for a local leader or dignitary who holds a position of authority and honor. In Sri Lanka, Nilames historically held important roles in village and regional administration and played a crucial role in various cultural and religious events and ceremonies.\r\n\r\nNilame statues may depict these individuals in traditional attire or ceremonial clothing, often with symbolic items or accessories representing their role. Such statues are often used for decorative or cultural purposes, particularly in Sri Lankan homes or as part of festivities and events.\r\n', 'a480d4657aad1da0a8859968907917661697666169.jpg', '', '', '', '', 410440589, '2023-10-18 21:56:09'),
(11, 'BRASS WALL HANGR', '14?', 'Landscape', 'Small', 11, 10, 14, '85', 'BRASS WALL HANGR (SUN/MOON) 14?', '979a72ca28ecde8a783e7b69f0c314ab1697666318.jpg', '', '', '', '', 179946679, '2023-10-18 21:58:38'),
(12, 'BURN BRASS JEWELARY BOX', '05 * 03', 'Landscape', 'Medium', 11, 10, 15, '36', 'A brass jewelry box is a decorative and functional container for storing jewelry and other valuable items. These boxes are typically made of brass, a metal alloy primarily composed of copper and zinc, known for its durability and ability to be intricately designed. Brass jewelry boxes can serve both practical and decorative purposes. Here are some key features and information about brass jewelry boxes:\r\n\r\nMaterial: These boxes are primarily constructed from brass, giving them a distinctive appearance. Brass can be polished for a shiny finish or given an antique or patinated finish for a more vintage look.\r\n\r\nDesign: Brass jewelry boxes come in a wide range of designs and styles. They often feature ornate details, engravings, and sometimes additional embellishments like gemstones or enamel work. The design can vary from simple and minimalist to highly intricate and decorative.\r\n\r\nInterior: The interior of a brass jewelry box is typically lined with soft fabric, such as velvet or silk, to protect the jewelry from scratches and damage. Compartments and dividers may also be included to help organize different types of jewelry.\r\n\r\nSize: Brass jewelry boxes come in various sizes, from small tabletop boxes to larger chests. The size you choose can depend on your storage needs and available space.\r\n\r\nFunctionality: Brass jewelry boxes are designed to keep your jewelry organized, secure, and protected. Many of them have locking mechanisms or closures to keep your valuables safe.\r\n\r\nDecorative Piece: These boxes are often used as decorative pieces in bedrooms, dressing areas, or display cabinets. They can add an elegant and antique touch to your decor.\r\n\r\nBrass jewelry boxes are widely available through home decor stores, jewelry shops, online retailers, and antique stores. When choosing a brass jewelry box, consider your storage needs, the overall design and style that complements your decor, and any additional features you may require, such as a lock for security.', '0f910dc69b4bcb83580234bbcca7f638.jpg', '', '', '', '', 702862852, '2023-10-18 22:01:23'),
(13, 'BURN BRASS JEWELLARY BOX', '08? X 06? X 04 1/2?', 'Landscape', 'Medium', 11, 10, 15, '132', 'A brass jewelry box is a decorative and functional container for storing jewelry and other valuable items. These boxes are typically made of brass, a metal alloy primarily composed of copper and zinc, known for its durability and ability to be intricately designed. Brass jewelry boxes can serve both practical and decorative purposes. Here are some key features and information about brass jewelry boxes:\r\n\r\nMaterial: These boxes are primarily constructed from brass, giving them a distinctive appearance. Brass can be polished for a shiny finish or given an antique or patinated finish for a more vintage look.\r\n\r\nDesign: Brass jewelry boxes come in a wide range of designs and styles. They often feature ornate details, engravings, and sometimes additional embellishments like gemstones or enamel work. The design can vary from simple and minimalist to highly intricate and decorative.\r\n\r\nInterior: The interior of a brass jewelry box is typically lined with soft fabric, such as velvet or silk, to protect the jewelry from scratches and damage. Compartments and dividers may also be included to help organize different types of jewelry.\r\n\r\nSize: Brass jewelry boxes come in various sizes, from small tabletop boxes to larger chests. The size you choose can depend on your storage needs and available space.\r\n\r\nFunctionality: Brass jewelry boxes are designed to keep your jewelry organized, secure, and protected. Many of them have locking mechanisms or closures to keep your valuables safe.\r\n\r\nDecorative Piece: These boxes are often used as decorative pieces in bedrooms, dressing areas, or display cabinets. They can add an elegant and antique touch to your decor.\r\n\r\nBrass jewelry boxes are widely available through home decor stores, jewelry shops, online retailers, and antique stores. When choosing a brass jewelry box, consider your storage needs, the overall design and style that complements your decor, and any additional features you may require, such as a lock for security.', '13654e0a86aae9462a764fdfe000e33c1697666549.jpg', '', '', '', '', 816888649, '2023-10-18 22:02:29'),
(14, 'COCONUT HUSK ELEPHANT', '600*200', 'Landscape', 'Medium', 11, 10, 16, '28', 'A \"coconut husk elephant\" likely refers to a decorative or craft item made from the husk of a coconut and shaped to resemble an elephant. This type of craftwork is common in regions where coconuts are prevalent, such as parts of Southeast Asia, including countries like Sri Lanka, India, and Thailand.\r\n\r\n\r\n\r\n\r\n', '1a633ffffc0a6147ad4669257b33cf701697666891.jpg', '', '', '', '', 570593601, '2023-10-18 22:08:11'),
(15, 'COCONUT HUSK FACE WITH HAT', '600*200', 'Potrait', 'Medium', 11, 10, 16, '15', 'A \"coconut husk face\" typically refers to a decorative or artistic creation where the face or features of a human or an animal are carved or sculpted from a coconut husk. Coconut husks are the fibrous outer layer of a coconut and are known for their durability and versatility, making them suitable for various craft and artistic applications.', '58f9690835bf1748e91bb0a7f5f283fc1697667690.jpg', '', '', '', '', 387231760, '2023-10-18 22:21:30'),
(16, 'COCONUT HUSK MONKEY', '15', 'Potrait', 'Medium', 11, 10, 16, '8', 'COCONUT HUSK MONKEY (EATING MANGO)', 'c46089372af7214ac20c342c3d7d2fa41697667751.jpg', '', '', '', '', 626427803, '2023-10-18 22:22:31'),
(17, 'GRANAITE STATUE “AWALOKITHESHWARA”', '22 * 9', 'Potrait', 'Large', 11, 1, 17, '398', 'Avalokiteshvara, often spelled as \"Avalokitesvara,\" is a bodhisattva in Buddhism and is associated with compassion and mercy. In Hinduism, Avalokiteshvara is sometimes identified with Lord Shiva.', 'ec1ab1b1bb0cba66eeb8e6b03dcd733d1697667906.jpg', '', '', '', '', 122260935, '2023-10-18 22:25:06'),
(18, 'GRANAITE STATUE “JEASUS AND MOTHER MARRY”', '7*6', 'Landscape', 'Small', 11, 1, 17, '41', 'The depiction of Jesus and the Virgin Mary is significant in Christian religious art and is often used to symbolize the relationship between Jesus and his mother, Mary. These statues can vary in size and style, from small household ornaments to larger sculptures intended for churches or outdoor display.\r\n\r\nGranite statues are popular for religious art because granite is a strong and long-lasting material that can withstand various weather conditions when placed outdoors. If you are interested in acquiring a granite statue of Jesus and the Virgin Mary, you may consider reaching out to religious art suppliers, Christian gift shops, or local artisans who specialize in creating religious statuary. You can also explore online marketplaces and art galleries for a variety of options.', '4f692dcc10717cb92b92b6fe141da29c1697667971.jpg', '', '', '', '', 572978671, '2023-10-18 22:26:11'),
(19, 'PULP ELEPHANT', '12', 'Landscape', 'Medium', 11, 10, 18, '81', 'PULP ELEPHANT T/D 12?', 'b24f970c5e94fba07610b64c2a808a591697668751.jpg', '', '', '', '', 149734587, '2023-10-18 22:39:11'),
(20, 'PULP STATUE KANDIYAN DANCER MALE / FEMALE', '12', 'Landscape', 'Large', 11, 10, 18, '20', 'A \"pulp statue Kandyan dancer\" typically refers to a statue depicting a traditional male or female Kandyan dancer made from a material known as \"pulp.\" These statues often represent the vibrant and elaborate dance traditions of the Kandyan region in Sri Lanka.', 'e7e13e5cc2de5415602566690e65e3471697668817.jpg', '', '', '', '', 760977824, '2023-10-18 22:40:17'),
(21, 'WOODEN ELEPHANT', '1', 'Landscape', 'Small', 11, 10, 19, '9', 'WOODEN ELEPHANT – GOLD DESIGN 04? T/D', '9c8d7c56a51a0edee662cc7842f445f91697668898.jpg', '', '', '', '', 298757530, '2023-10-18 22:41:38'),
(22, 'WOODEN BEEDS DECORATED CASKET ELEPHANT', 'ELEPHANT 6? (WITH CASKET 10?)', 'Potrait', 'Medium', 11, 10, 19, '28', 'WOODEN BEEDS DECORATED CASKET ELEPHANT ', '5c34a1fb868a2193dfb7d09f31eb7be01697668945.jpg', '', '', '', '', 861629749, '2023-10-18 22:42:25'),
(23, 'WOODEN MASK – MAYURA 08? (KADURU)', '8', 'Landscape', 'Medium', 11, 10, 19, '27', 'WOODEN MASK – MAYURA 08? (KADURU)', 'b975dfe2bf7ed59a9afb573efb7bc48a1697668986.jpg', '', '', '', '', 653878255, '2023-10-18 22:43:06'),
(24, 'WOODEN MASK – KOLAM', '06? (KADURU)', 'Potrait', 'Medium', 11, 10, 19, '34', 'WOODEN MASK – KOLAM (DIFFERENT DESIGN) 06? (KADURU)', '8cf5a74ad875d9f0ad6a8aeb47f6a9601697669032.jpg', '', '', '', '', 272538760, '2023-10-18 22:43:52'),
(25, 'CERAMIC ELEPHANT PEN HOLDER', '6', 'Landscape', 'Medium', 11, 11, 20, '10', 'A ceramic elephant pen holder is a decorative and functional item typically made from ceramic or porcelain. ', '069afad54aed17ba7d860e839c1288eb1697669253.jpg', '', '', '', '', 792706623, '2023-10-18 22:47:33'),
(26, 'CERAMIC MUG ELEPHANT PRINT', '5', 'Potrait', 'Medium', 11, 11, 20, '9', 'ERAMIC MUG ELEPHANT PRINT (SRI LANKA)', '4ca640fe2cf7bb0c8ea23dce5816f53a1697669774.jpg', '', '', '', '', 358234695, '2023-10-18 22:56:14'),
(27, 'CERAMIC SITTING ELEPHANT', '05 1/2?', 'Potrait', 'Medium', 11, 11, 20, '12', 'CERAMIC SITTING ELEPHANT (MODERATE GRAY/TOP and WHITE SHINE)', '4e3eaecb628d662f1251e177937796df1697669824.jpg', '', '', '', '', 560910804, '2023-10-18 22:57:04'),
(28, 'CERAMIC TEA SET', '13', 'Landscape', 'Large', 11, 11, 20, '715', 'CERAMIC TEA SET – PLATINAM PLATED (13 PCS)', '8c7659d227d8761c62e4251f0af42fd01697669871.jpg', '', '', '', '', 178639020, '2023-10-18 22:57:51'),
(29, 'LEATHER DRUM BAG', '15? X 08 1/2?', 'Landscape', 'Large', 11, 11, 21, '58', 'LEATHER DRUM BAG – LARGE 15? X 08 1/2?\r\n\r\n', '9277a33188e5e262ac78f78f330f995a1697669975.jpg', '', '', '', '', 692251490, '2023-10-18 22:59:35'),
(30, 'LEATHER EMBOSSED TRAVELLING BAG', '14', 'Landscape', 'Large', 11, 11, 21, '49', 'LEATHER EMBOSSED TRAVELLING BAG – 14?', 'a5f77d46c1737ee549887641bdccaa511697670027.jpg', '', '', '', '', 179505256, '2023-10-18 23:00:27'),
(31, 'LEATHER HUMPTY OVAL LARGE', ' 13? X 66? X 15?', 'Landscape', 'Medium', 11, 10, 21, '93', 'ATHER HUMPTY OVAL LARGE 13? X 66? X 15?', 'd90d8078f036fc6320e3e764ff849a121697670651.jpg', '', '', '', '', 397762738, '2023-10-18 23:10:51'),
(32, 'LEATHER SMALL FILE BAG', '8 1/2? X 6 1/2?', 'Potrait', 'Small', 11, 11, 21, '31', 'LEATHER SMALL FILE BAG (SMALL) 8 1/2? X 6 1/2?', 'cea992b522b27bf053e2bbda6eabe0641697670732.jpg', '', '', '', '', 845852486, '2023-10-18 23:12:12'),
(33, 'WATAKEY HALF ROUND BAG', '9', 'Potrait', 'Small', 11, 11, 22, '10', 'WATAKEY HALF ROUND BAG', '651d35fa72542c13f8d156ec0e3596581697670782.jpg', '', '', '', '', 998097810, '2023-10-18 23:13:02'),
(34, 'HAND LOOM KIDS PURSE', ' 05? X 04 1/2?', 'Landscape', 'Medium', 0, 12, 23, '6', 'HAND LOOM KIDS PURSE 05? X 04 1/2?', '4281bfc997d3f8d2f237781ef5e2458a1697670930.jpg', '', '', '', '', 920556799, '2023-10-18 23:15:30'),
(35, 'HAND LOOM SOFT TOYS', '3', 'Landscape', 'Small', 11, 12, 23, '6', 'HAND LOOM SOFT TOYS DRESSED ELEPHANT TU 03?', 'a1950c8141d08819adc144b4aa23fd1c1697670981.jpg', '', '', '', '', 681457115, '2023-10-18 23:16:21'),
(36, 'HAND LOOM SOFT TOYS', '47?', 'Landscape', 'Medium', 11, 12, 0, '18', 'HAND LOOM SOFT TOYS – SNAKE 47?', '91244c5b282503036acb95cb5a5334551697671040.jpg', '', '', '', '', 442684895, '2023-10-18 23:17:20'),
(37, 'HAND LOOM TOYS', '6', 'Landscape', 'Medium', 11, 12, 23, '5', 'HAND LOOM TOYS – OWL 09?', '69a02c71a5d89aa0300d0093dd20e09f1697671087.jpg', '', '', '', '', 665120626, '2023-10-18 23:18:07'),
(38, 'HANDLOOM SOFT TOYS', '3 * 4', 'Landscape', 'Medium', 11, 12, 23, '4', 'HANDLOOM SOFT TOYS – ELEPHANT 03? X 04?', 'f890421f0d52bb8a604e64563e6a9a7b1697671145.jpg', '', '', '', '', 426833320, '2023-10-18 23:19:05'),
(39, 'HANDLOOM SOFT TOYS', '05 1/2?', 'Potrait', 'Medium', 11, 12, 23, '7', 'HANDLOOM SOFT TOYS – ELEPHANT 05 1/2?', '6b9b555425d1a5a7a4b582fa04c495d11697671198.jpg', '', '', '', '', 560677087, '2023-10-18 23:19:58'),
(40, 'HANDLOOM SOFT TOYS', '05 1/2?', 'Potrait', 'Medium', 11, 12, 23, '7', 'HANDLOOM SOFT TOYS – ELEPHANT 05 1/2?', '6b9b555425d1a5a7a4b582fa04c495d11697671205.jpg', '', '', '', '', 455829648, '2023-10-18 23:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `tblarttype`
--

DROP TABLE IF EXISTS `tblarttype`;
CREATE TABLE IF NOT EXISTS `tblarttype` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ArtType` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblarttype`
--

INSERT INTO `tblarttype` (`ID`, `ArtType`, `CreationDate`) VALUES
(1, 'Sculptures', '2022-12-21 14:21:13'),
(2, 'Serigraphs', '2022-12-21 14:24:46'),
(3, 'Prints', '2022-12-21 14:25:00'),
(4, 'Painting', '2022-12-21 14:25:31'),
(5, 'Street Art', '2022-12-21 14:26:06'),
(6, 'Visual art ', '2022-12-21 14:26:29'),
(7, 'Conceptual art', '2022-12-21 14:26:45'),
(10, 'ART AND CRAFT', '2023-10-18 21:42:15'),
(11, 'LETHER AND CERAMIC', '2023-10-18 22:45:38'),
(12, 'CLOTHING, FABRICS AND ACCESSORIES', '2023-10-18 23:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

DROP TABLE IF EXISTS `tblenquiry`;
CREATE TABLE IF NOT EXISTS `tblenquiry` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `EnquiryNumber` varchar(10) NOT NULL,
  `Artpdid` int DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Message` varchar(250) DEFAULT NULL,
  `EnquiryDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(10) DEFAULT NULL,
  `AdminRemark` varchar(200) NOT NULL,
  `AdminRemarkdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `CardId` (`Artpdid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`ID`, `EnquiryNumber`, `Artpdid`, `FullName`, `Email`, `MobileNumber`, `Message`, `EnquiryDate`, `Status`, `AdminRemark`, `AdminRemarkdate`) VALUES
(3, '469396759', 16, 'geemith', 'geemith@gmail.com', 7754939546, 'i want to by this', '2023-10-19 03:08:08', 'Answer', 'i called him', '2023-10-19 03:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

DROP TABLE IF EXISTS `tblpage`;
CREATE TABLE IF NOT EXISTS `tblpage` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` varchar(2000) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<font face=\"arial\"><span style=\"color: rgb(26, 26, 26);\">Laksala is the only State owned Gift &amp; Souvenir Boutique and was established under the&nbsp;</span><span style=\"font-weight: 700; color: rgb(26, 26, 26);\">National Crafts Council And Allied Institutions</span><span style=\"color: rgb(26, 26, 26);\">&nbsp;</span><span style=\"font-weight: 700; color: rgb(26, 26, 26);\">Act, No. 35 of 1982.</span><span style=\"color: rgb(26, 26, 26);\">&nbsp;Since then Laksala has witnessed numerous changes with an ever growing list of products on sale. Today Laksala operates through&nbsp;</span><span style=\"font-weight: 700; margin-bottom: 0px; color: rgb(26, 26, 26);\">13</span><span style=\"color: rgb(26, 26, 26);\">&nbsp;&nbsp;branches located island wide and offer the widest variety of all Sri Lankan products at a reasonable price. Most importantly, Laksala enables the numerous industries that supply goods to it to stay both profitable and in business. Today you will find an eclectic blend of items ranging from selections of beautifully packaged tea and spices to, colourful batik ware to an elaborate collection of art and craft as well as the finest collection of traditional Sri Lankan Gems and Jewellery. Laksala is therefore your one stop guide and a visit to one of our stores feels like you visited ‘all of Sri Lanka’!</span></font><br>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '<pre><font face=\"arial\"><span style=\"color: rgb(102, 102, 102); font-size: 16px; background-color: rgb(248, 248, 248);\">No. 215,<br></span></font><font face=\"arial\"><span style=\"color: rgb(102, 102, 102); font-size: 16px; background-color: rgb(248, 248, 248);\">Bauddhaloka Mawatha, Thummulla, Colombo 7</span></font></pre>', ' contact@laksala.gov.lk', '011 2580579 / 011 5846168', NULL, '10:30 am to 7:30 pm');
--
-- Database: `bakery1`
--
CREATE DATABASE IF NOT EXISTS `bakery1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `bakery1`;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
CREATE TABLE IF NOT EXISTS `billing` (
  `bId` int NOT NULL AUTO_INCREMENT COMMENT 'Unique id for each entry for the bill',
  `bNumber` varchar(45) DEFAULT NULL COMMENT 'Bill number',
  `bDate` date DEFAULT NULL COMMENT 'Biiling date',
  `bCustName` varchar(45) DEFAULT NULL,
  `item_iId` int DEFAULT NULL,
  `iName` varchar(45) DEFAULT NULL,
  `iDescription` varchar(45) DEFAULT NULL COMMENT 'Description fo the item. This is a foreighn key form the item table',
  `bQty` int DEFAULT NULL COMMENT 'Qty of the item sold',
  `iSp` int DEFAULT NULL COMMENT 'Selling price of the item taken from the item table',
  `iCp` int DEFAULT NULL COMMENT 'Cost price of the item taken from the item table',
  `bOk` varchar(5) DEFAULT 'Yes' COMMENT 'Table to know if row is active or has been deleted\nYes means row is active.\nNo means row has been deleted.',
  `bAmount` int GENERATED ALWAYS AS ((`bQty` * `iSp`)) STORED COMMENT 'Amount of that particular item',
  `bProfit` int GENERATED ALWAYS AS (((`bQty` * `iSp`) - (`bQty` * `iCp`))) STORED,
  PRIMARY KEY (`bId`),
  KEY `billing_item_fk1_idx` (`item_iId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`bId`, `bNumber`, `bDate`, `bCustName`, `item_iId`, `iName`, `iDescription`, `bQty`, `iSp`, `iCp`, `bOk`) VALUES
(9, NULL, NULL, 'dhanuri', NULL, 'Choco cup * 2, Apple cake * 2', NULL, 4, 60, NULL, 'Yes'),
(10, NULL, NULL, 'dhanuri', NULL, 'Choco cup * 2, Dark chocolate cake * 1', NULL, 3, 42, NULL, 'Yes'),
(16, 'RB/7c833204-a03f-444c-9fd4-3fe4bf6b23c0', '2023-10-04', 'dhanuri', NULL, 'Choco cup * 2', NULL, 2, 20, NULL, 'Yes'),
(17, 'RB/e8c63d2b-35f7-462f-93c0-1103b084722e', '2023-10-04', 'dhanuri', NULL, 'Apple cake * 2', NULL, 2, 40, NULL, 'Yes'),
(18, 'RB/3dad514c-00e7-44e5-ba1c-d78d3a5459a7', '2023-10-04', 'dhanuri', NULL, 'Apple cake * 2', NULL, 2, 40, NULL, 'Yes'),
(19, 'RB/353b5b18-d3c4-4b23-b53c-88580512b777', '2023-10-04', 'dhanuri', NULL, 'Dark chocolate cake * 2', NULL, 2, 44, NULL, 'Yes'),
(20, 'RB/28e04296-7e7a-400c-8ada-7cf4d6ec58ad', '2023-10-04', 'dhanuri', NULL, 'Apple cake * 2', NULL, 2, 40, NULL, 'Yes'),
(26, 'RB/e82e9738-09f8-47f4-9535-20db259d0717', '2023-10-05', 'dhanuri', NULL, 'croissant * 2', NULL, 2, 40, NULL, 'Yes'),
(28, 'RB/1658ca50-a37d-47bf-8f6a-92aee93ea326', '2023-10-05', 'dhanuri', NULL, 'croissant * 1', NULL, 1, 20, NULL, 'Yes'),
(29, 'RB/5d1b218d-c54c-432b-b8d8-79445c9a89b3', '2023-10-05', 'dhanuri', NULL, 'sdc * 1', NULL, 1, 2, NULL, 'Yes'),
(30, 'RB/bf018bbc-8fdb-481b-abd2-259704ecc779', '2023-10-06', 'dhanuri', NULL, 'croissant * 2', NULL, 2, 40, NULL, 'Yes'),
(31, 'RB/c91fc5b7-0fc4-468f-81d5-97d29749b780', '2023-10-06', 'dhanuri', NULL, 'Cake * 2', NULL, 2, 14, NULL, 'Yes'),
(32, 'RB/79f7505c-5a29-4741-815e-32d30a956bb5', '2023-10-06', 'dhanuri', NULL, 'Bery * 2', NULL, 2, 8, NULL, 'Yes'),
(33, 'RB/7cfdfa62-ab74-4b43-9446-5a132e6fb4da', '2023-10-06', 'dhanuri', NULL, 'sdc * 2, croissant * 2', NULL, 4, 44, NULL, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `cus_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(2000) NOT NULL,
  `password` int NOT NULL,
  `payment` varchar(2000) NOT NULL,
  `fullname` varchar(2000) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `promo` varchar(2000) NOT NULL,
  `address` varchar(2000) NOT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `name`, `password`, `payment`, `fullname`, `phone`, `promo`, `address`) VALUES
(1, 'dhanuri', 123, 'Cash on Delivery', 'disal', '074012103', 'makanda', 'makanda');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `eId` int NOT NULL AUTO_INCREMENT COMMENT 'Unique Id for each employee in the employee table',
  `eName` varchar(45) DEFAULT NULL COMMENT 'Name of the employee',
  `eAddress` varchar(45) DEFAULT NULL COMMENT 'Address of the employee',
  `ePhoneNo` varchar(10) DEFAULT NULL COMMENT 'Phone No of the employee',
  `eDateOfBirth` date DEFAULT NULL COMMENT 'Dare of Birth of the employee',
  `eType` varchar(45) DEFAULT NULL COMMENT 'Type of the employee\n- Admin\n- Manager\n- Billing executive',
  `eImage` blob COMMENT 'Image of the employee',
  `eActive` varchar(3) DEFAULT 'Yes' COMMENT 'Whether the emplyee is still active. It is used to avoid deletring the details of the employee the have left the bakery',
  PRIMARY KEY (`eId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eId`, `eName`, `eAddress`, `ePhoneNo`, `eDateOfBirth`, `eType`, `eImage`, `eActive`) VALUES
(1, 'ryan', NULL, NULL, NULL, NULL, NULL, 'Yes'),
(2, 'geemith', NULL, NULL, NULL, NULL, NULL, 'Yes'),
(3, 'Dhanuri', NULL, NULL, NULL, NULL, NULL, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `inId` int NOT NULL AUTO_INCREMENT COMMENT 'Unique id for each entry of the inventory',
  `inDate` date DEFAULT NULL,
  `item_iId` int NOT NULL,
  `iniName` varchar(45) DEFAULT NULL,
  `inQty` int DEFAULT NULL COMMENT 'Quantity of the item added in the stock',
  `inActive` varchar(3) DEFAULT 'Yes',
  PRIMARY KEY (`inId`),
  KEY `inventory_item_fk1_idx` (`item_iId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `iId` int NOT NULL AUTO_INCREMENT COMMENT 'Unique Id of the item',
  `iName` varchar(45) DEFAULT NULL COMMENT 'Name of the item',
  `iDescription` varchar(45) DEFAULT NULL COMMENT 'Description of the item',
  `iMinStock` int DEFAULT '5' COMMENT 'Minimum stock of item to be on the showboard. Used to check when more qty of the item is required',
  `iCp` int DEFAULT NULL COMMENT 'The expense for making the item (Cost price)',
  `iSp` int DEFAULT NULL COMMENT 'The selling price of the item',
  `iActive` varchar(3) DEFAULT 'Yes' COMMENT 'Whether the item is still active. It is used to avoid deletring the item when it is removed from the meny',
  `image_data` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`iId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`iId`, `iName`, `iDescription`, `iMinStock`, `iCp`, `iSp`, `iActive`, `image_data`) VALUES
(17, 'ed', NULL, 2, 2, 2, 'No', 'C:\\\\Users\\\\Pramuditha\\\\OneDrive\\\\Desktop\\\\New project\\\\Japanese-Milk-Bread-Shokupan-I-1.jpg'),
(18, 'sdc', NULL, 2, 2, 2, 'Yes', 'C:\\Users\\Pramuditha\\OneDrive\\Desktop\\New project\\The-Ultimate-Croissant-Sandwich-Recipe-SQUARE2.jpg'),
(19, 'croissant', NULL, 10, 15, 20, 'Yes', 'C:\\Users\\Pramuditha\\OneDrive\\Desktop\\New project\\The-Ultimate-Croissant-Sandwich-Recipe-SQUARE2.jpg'),
(20, 'Cake', NULL, 10, 5, 7, 'No', 'C:\\Users\\Pramuditha\\OneDrive\\Desktop\\New project\\277000-easy-vanilla-cake-ddmfs-1X2-0101-8ac1f0aed3294888921a87d9bce9c43c.jpg'),
(21, 'Bery', NULL, 10, 20, 4, 'Yes', 'C:\\Users\\Pramuditha\\OneDrive\\Desktop\\New project\\Sour-Cream-Blueberry-Muffins-Recipe-4.jpg'),
(22, 'bread', NULL, 5, 8, 10, 'Yes', 'C:\\Users\\Pramuditha\\OneDrive\\Desktop\\New project\\The-Ultimate-Croissant-Sandwich-Recipe-SQUARE2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `uId` int NOT NULL AUTO_INCREMENT COMMENT 'Unique use id for each user',
  `uName` varchar(45) DEFAULT NULL COMMENT 'Username for login page of the user',
  `uPassword` varchar(45) DEFAULT NULL COMMENT 'Password for the login page of the user',
  `employee_eId` int NOT NULL,
  `uActive` varchar(3) DEFAULT 'Yes' COMMENT 'Whether the user is still active. It is used to avoid deletring the details of the user that have left the bakery',
  `uType` varchar(45) DEFAULT NULL COMMENT 'Type of the employee\n- Admin\n- Manager\n- Billing executive',
  PRIMARY KEY (`uId`),
  KEY `user_employee_fk_idx` (`employee_eId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uId`, `uName`, `uPassword`, `employee_eId`, `uActive`, `uType`) VALUES
(1, 'Admin', '123', 1, 'Yes', 'Admin');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billing`
--
ALTER TABLE `billing`
  ADD CONSTRAINT `billing_item_fk1` FOREIGN KEY (`item_iId`) REFERENCES `item` (`iId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_item_fk1` FOREIGN KEY (`item_iId`) REFERENCES `item` (`iId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_employee_fk` FOREIGN KEY (`employee_eId`) REFERENCES `employee` (`eId`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `bookstoredb`
--
CREATE DATABASE IF NOT EXISTS `bookstoredb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `bookstoredb`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `name` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`name`,`pass`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `book_isbn` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int UNSIGNED NOT NULL,
  PRIMARY KEY (`book_isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('978-0-321-94786-4', 'Learning Mobile App Development', 'Jakob Iversen, Michael Eierman', 'mobile_app.jpg', 'Now, one book can help you master mobile app development with both market-leading platforms: Apple\'s iOS and Google\'s Android. Perfect for both students and professionals, Learning Mobile App Development is the only tutorial with complete parallel coverage of both iOS and Android. With this guide, you can master either platform, or both - and gain a deeper understanding of the issues associated with developing mobile apps.\r\n\r\nYou\'ll develop an actual working app on both iOS and Android, mastering the entire mobile app development lifecycle, from planning through licensing and distribution.\r\n\r\nEach tutorial in this book has been carefully designed to support readers with widely varying backgrounds and has been extensively tested in live developer training courses. If you\'re new to iOS, you\'ll also find an easy, practical introduction to Objective-C, Apple\'s native language.', '20.00', 6),
('978-0-7303-1484-4', 'Doing Good By Doing Good', 'Peter Baines', 'doing_good.jpg', 'Doing Good by Doing Good shows companies how to improve the bottom line by implementing an engaging, authentic, and business-enhancing program that helps staff and business thrive. International CSR consultant Peter Baines draws upon lessons learnt from the challenges faced in his career as a police officer, forensic investigator, and founder of Hands Across the Water to describe the Australian CSR landscape, and the factors that make up a program that benefits everyone involved. Case studies illustrate the real effect of CSR on both business and society, with clear guidance toward maximizing involvement, engaging all employees, and improving the bottom line. The case studies draw out the companies that are focusing on creating shared value in meeting the challenges of society whilst at the same time bringing strong economic returns.\r\n\r\nConsumers are now expecting that big businesses with ever-increasing profits give back to the community from which those profits arise. At the same time, shareholders are demanding their share and are happy to see dividends soar. Getting this right is a balancing act, and Doing Good by Doing Good helps companies delineate a plan of action for getting it done.', '20.00', 2),
('978-1-118-94924-5', 'Programmable Logic Controllers', 'Dag H. Hanssen', 'logic_program.jpg', 'Widely used across industrial and manufacturing automation, Programmable Logic Controllers (PLCs) perform a broad range of electromechanical tasks with multiple input and output arrangements, designed specifically to cope in severe environmental conditions such as automotive and chemical plants.Programmable Logic Controllers: A Practical Approach using CoDeSys is a hands-on guide to rapidly gain proficiency in the development and operation of PLCs based on the IEC 61131-3 standard. Using the freely-available* software tool CoDeSys, which is widely used in industrial design automation projects, the author takes a highly practical approach to PLC design using real-world examples. The design tool, CoDeSys, also features a built in simulator / soft PLC enabling the reader to undertake exercises and test the examples.', '20.00', 2),
('978-1-1180-2669-4', 'Professional JavaScript for Web Developers, 3rd Edition', 'Nicholas C. Zakas', 'pro_js.jpg', 'If you want to achieve JavaScript\'s full potential, it is critical to understand its nature, history, and limitations. To that end, this updated version of the bestseller by veteran author and JavaScript guru Nicholas C. Zakas covers JavaScript from its very beginning to the present-day incarnations including the DOM, Ajax, and HTML5. Zakas shows you how to extend this powerful language to meet specific needs and create dynamic user interfaces for the web that blur the line between desktop and internet. By the end of the book, you\'ll have a strong understanding of the significant advances in web development as they relate to JavaScript so that you can apply them to your next website.', '20.00', 1),
('978-1-44937-019-0', 'Learning Web App Development', 'Semmy Purewal', 'web_app_dev.jpg', 'Grasp the fundamentals of web application development by building a simple database-backed app from scratch, using HTML, JavaScript, and other open source tools. Through hands-on tutorials, this practical guide shows inexperienced web app developers how to create a user interface, write a server, build client-server communication, and use a cloud-based service to deploy the application.\r\n\r\nEach chapter hi practice problems, full examples, and mental models of the development workflow. Ideal for a college-level course, this book helps you get started with web app development by providing you with a solid grounding in the process.', '20.00', 3),
('978-1-44937-075-6', 'Beautiful JavaScript', 'Anton Kovalyov', 'beauty_js.jpg', 'JavaScript is arguably the most polarizing and misunderstood programming language in the world. Many have attempted to replace it as the language of the Web, but JavaScript has survived, evolved, and thrived. Why did a language created in such hurry succeed where others failed?\r\n\r\nThis guide gives you a rare glimpse into JavaScript from people intimately familiar with it. Chapters contributed by domain experts such as Jacob Thornton, Ariya Hidayat, and Sara Chipps show what they love about their favorite language - whether it\'s turning the most feared features into useful tools, or how JavaScript can be used for self-expression.', '20.00', 3),
('978-1-4571-0402-2', 'Professional ASP.NET 4 in C# and VB', 'Scott Hanselman', 'pro_asp4.jpg', 'ASP.NET is about making you as productive as possible when building fast and secure web applications. Each release of ASP.NET gets better and removes a lot of the tedious code that you previously needed to put in place, making common ASP.NET tasks easier. With this book, an unparalleled team of authors walks you through the full breadth of ASP.NET and the new and exciting capabilities of ASP.NET 4. The authors also show you how to maximize the abundance of features that ASP.NET offers to make your development process smoother and more efficient.', '20.00', 1),
('978-1-484216-40-8', 'Android Studio New Media Fundamentals', 'Wallace Jackson', 'android_studio.jpg', 'Android Studio New Media Fundamentals is a new media primer covering concepts central to multimedia production for Android including digital imagery, digital audio, digital video, digital illustration and 3D, using open source software packages such as GIMP, Audacity, Blender, and Inkscape. These professional software packages are used for this book because they are free for commercial use. The book builds on the foundational concepts of raster, vector, and waveform (audio), and gets more advanced as chapters progress, covering what new media assets are best for use with Android Studio as well as key factors regarding the data footprint optimization work process and why new media content and new media data optimization is so important.', '20.00', 4),
('978-1-484217-26-9', 'C++ 14 Quick Syntax Reference, 2nd Edition', '	Mikael Olsson', 'c_14_quick.jpg', 'This updated handy quick C++ 14 guide is a condensed code and syntax reference based on the newly updated C++ 14 release of the popular programming language. It presents the essential C++ syntax in a well-organized format that can be used as a handy reference.\r\n\r\nYou won\'t find any technical jargon, bloated samples, drawn out history lessons, or witty stories in this book. What you will find is a language reference that is concise, to the point and highly accessible. The book is packed with useful information and is a must-have for any C++ programmer.\r\n\r\nIn the C++ 14 Quick Syntax Reference, Second Edition, you will find a concise reference to the C++ 14 language syntax. It has short, simple, and focused code examples. This book hi a well laid out table of contents and a comprehensive index allowing for easy review.', '20.00', 4),
('978-1-49192-706-9', 'C# 6.0 in a Nutshell, 6th Edition', 'Joseph Albahari, Ben Albahari', 'c_sharp_6.jpg', 'When you have questions about C# 6.0 or the .NET CLR and its core Framework assemblies, this bestselling guide has the answers you need. C# has become a language of unusual flexibility and breadth since its premiere in 2000, but this continual growth means there\'s still much more to learn.\r\n\r\nOrganized around concepts and use cases, this thoroughly updated sixth edition provides intermediate and advanced programmers with a concise map of C# and .NET knowledge. Dive in and discover why this Nutshell guide is considered the definitive reference on C#.', '20.00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customerid` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(5, 'angel jude suarez', 'brgy. tooy', 'himamaylan city', '6108', 'philippines');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `customerid` int UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ship_name` char(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(7, 5, '20.00', '2021-03-10 05:03:55', 'angel jude suarez', 'brgy. tooy', 'himamaylan city', '6108', 'philippines');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `orderid` int UNSIGNED NOT NULL,
  `book_isbn` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', '20.00', 1),
(1, '978-1-44937-019-0', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(2, '978-1-118-94924-5', '20.00', 1),
(2, '978-1-44937-019-0', '20.00', 1),
(2, '978-1-49192-706-9', '20.00', 1),
(3, '978-0-321-94786-4', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(5, '978-1-484217-26-9', '20.00', 4),
(5, '978-1-118-94924-5', '20.00', 1),
(7, '978-0-321-94786-4', '20.00', 1),
(7, '978-0-7303-1484-4', '20.00', 1),
(7, '978-1-118-94924-5', '20.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
CREATE TABLE IF NOT EXISTS `publisher` (
  `publisherid` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`publisherid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Wrox'),
(2, 'Wiley'),
(3, 'O\'Reilly Media'),
(4, 'Apress'),
(5, 'Packt Publishing'),
(6, 'Addison-Wesley');
--
-- Database: `managements`
--
CREATE DATABASE IF NOT EXISTS `managements` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `managements`;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
CREATE TABLE IF NOT EXISTS `invoices` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `total_quantity` int NOT NULL,
  `total` int NOT NULL,
  PRIMARY KEY (`Order_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`Order_ID`, `total_quantity`, `total`) VALUES
(1, 27, 1470),
(2, 29, 2850),
(3, 26, 1050),
(4, 2, 3500),
(5, 3, 1270),
(6, 2, 324);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `full_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `admin_code` int NOT NULL,
  `department` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`user_id`,`user_name`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `user_name`, `password`, `status`, `full_name`, `admin_code`, `department`) VALUES
(1, 'gayatri', '123', 'normal', 'Gayatri Pawar', 3, 'Bakery'),
(3, 'shree', '123', 'admin', 'Amar Gosavi', 1, 'Bakery'),
(11, 'sarvesha', '123', 'normal', 'Sarvesha Sawant', 3, 'Bakery'),
(12, 'purva', '123', 'normal', 'Sakpal Purva', 3, 'Bakery'),
(30, 'albert', '123', 'normal', 'Albert', 3, 'Bakery');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `image`, `price`) VALUES
(5, 'Cafe Mocha ', 'cake5.jpg', 400.00),
(4, 'Coco Coffee Delight Bust', 'cake4.jpg', 350.00),
(2, 'Coco Vanilla ', 'cake2.jpg', 300.00),
(3, 'Vanila Coco Blast', 'cake3.jpg', 450.00),
(1, 'Chocolate Delight', 'cake1.jpg', 300.00),
(6, 'Choco Berry', 'cake6.jpg', 400.00),
(7, 'Cupcake puff', 'cupcake2.jpg', 450.00),
(8, 'Muffeins Special', 'cupcake3.jpg', 500.00),
(9, 'Vaneela Berry Cupcake', 'cupcake4.jpg', 500.00),
(10, 'Margarita Cupcakes', 'cupcake5.jpg', 550.00),
(11, 'Mesthi Donuts Combo', 'Donut1.jpg', 700.00),
(12, 'Jelly Doughnut', 'Donut3.jpg', 600.00),
(13, 'Strawberry Frosted Doughnut', 'Donuts2.jpg', 650.00),
(14, 'Fluffy milk bread', 'snacks1.jpg', 30.00),
(15, 'Ban Pav', 'snacks2.jpg', 20.00),
(16, 'Samosa Plate', 'snacks3.jpg', 24.00),
(17, 'Butter', 'snackscover.jpg', 30.00),
(18, 'Kaju Katri', 'sweets1.jpg', 800.00),
(19, 'Kaju Roll', 'sweets2.jpg', 900.00),
(20, 'Roas Gulla', 'sweets4.jpg', 500.00),
(21, 'Gulab Jamun', 'sweets5.jpg', 650.00),
(22, 'Motichur Laddu', 'sweets6.jpg', 420.00),
(23, 'Kesar Barfi', 'sweets7.jpg', 700.00),
(24, 'Coconut Burfi', 'sweets8.jpg', 270.00),
(26, 'Diwali Big Bucket', '607bf75bb854c3.05090455.jpg', 2000.00),
(25, 'Maha Raja Bucket', '607bf51d353573.36848771.jpg', 1500.00);
--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'sec', '$2y$10$aKQIVoagZsH8IiBsP/czleDGfbRhQKykxzXGU8tw0wbAz2XkRfuI2'),
(2, 'csxa', '$2y$10$.bKBIJFr5yckwlPJVrykIuyqqfTyE86EWT8KCSoLOug9RHhwgRkPe');
--
-- Database: `nibm`
--
CREATE DATABASE IF NOT EXISTS `nibm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `nibm`;

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
CREATE TABLE IF NOT EXISTS `student_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` varchar(2000) NOT NULL,
  `student_name` varchar(2000) NOT NULL,
  `student_password` varchar(2000) NOT NULL,
  `number` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`id`, `student_id`, `student_name`, `student_password`, `number`) VALUES
(1, '011', 'seniya', '', '1129');
--
-- Database: `pharmacy`
--
CREATE DATABASE IF NOT EXISTS `pharmacy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `pharmacy`;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
CREATE TABLE IF NOT EXISTS `medicine` (
  `Medicine_Code` varchar(2000) NOT NULL,
  `Medicine_Name` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`Medicine_Code`, `Medicine_Name`) VALUES
('200', 'panadole');
--
-- Database: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_name` varchar(40) NOT NULL,
  `customer_ID` int NOT NULL,
  PRIMARY KEY (`customer_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_name`, `customer_ID`) VALUES
('amal', 1001),
('Dilshan', 1002);

-- --------------------------------------------------------

--
-- Table structure for table `customer1`
--

DROP TABLE IF EXISTS `customer1`;
CREATE TABLE IF NOT EXISTS `customer1` (
  `cus_id` int NOT NULL,
  `cus_first_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `testtable`
--

DROP TABLE IF EXISTS `testtable`;
CREATE TABLE IF NOT EXISTS `testtable` (
  `name` varchar(200) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `testtable`
--

INSERT INTO `testtable` (`name`, `id`) VALUES
('hi', 1),
('machan', 2),
('dhanuri', 3),
('pramuditha', 4);
--
-- Database: `test_db`
--
CREATE DATABASE IF NOT EXISTS `test_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `test_db`;
--
-- Database: `weather`
--
CREATE DATABASE IF NOT EXISTS `weather` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `weather`;

-- --------------------------------------------------------

--
-- Table structure for table `temperature`
--

DROP TABLE IF EXISTS `temperature`;
CREATE TABLE IF NOT EXISTS `temperature` (
  `Date` date NOT NULL,
  `District` varchar(10) NOT NULL,
  `value` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
