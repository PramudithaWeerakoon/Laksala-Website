-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 28, 2023 at 07:21 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21413960_adm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 740121043, 'tushan.janith@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-12-29 06:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblartist`
--

CREATE TABLE `tblartist` (
  `ID` int(11) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Education` mediumtext DEFAULT NULL,
  `Award` mediumtext DEFAULT NULL,
  `Profilepic` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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

CREATE TABLE `tblartmedium` (
  `ID` int(11) NOT NULL,
  `ArtMedium` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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

CREATE TABLE `tblartproduct` (
  `ID` int(11) NOT NULL,
  `Title` varchar(250) DEFAULT NULL,
  `Dimension` varchar(250) DEFAULT NULL,
  `Orientation` varchar(100) DEFAULT NULL,
  `Size` varchar(100) DEFAULT NULL,
  `Artist` int(11) DEFAULT NULL,
  `ArtType` int(11) DEFAULT NULL,
  `ArtMedium` int(11) DEFAULT NULL,
  `SellingPricing` decimal(10,0) DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `Image` varchar(250) DEFAULT NULL,
  `Image1` varchar(250) DEFAULT NULL,
  `Image2` varchar(250) DEFAULT NULL,
  `Image3` varchar(250) DEFAULT NULL,
  `Image4` varchar(250) DEFAULT NULL,
  `RefNum` int(11) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblartproduct`
--

INSERT INTO `tblartproduct` (`ID`, `Title`, `Dimension`, `Orientation`, `Size`, `Artist`, `ArtType`, `ArtMedium`, `SellingPricing`, `Description`, `Image`, `Image1`, `Image2`, `Image3`, `Image4`, `RefNum`, `CreationDate`) VALUES
(2, 'Radhe Krishna Painting', '56x56', 'Landscape', 'Medium', 1, 4, 9, 200, 'It is a painting of Radha Krishna.\r\nIt is a painting of Radha Krishna.\r\nIt is a painting of Radha Krishna.It is a painting of Radha Krishna.\r\nIt is a painting of Radha Krishna.It is a painting of Radha Krishna.It is a painting of Radha Krishna.', 'c565ad988a4c6fc0a9f429af43c47cce1671771454.jpg', '48424793dc9ea732f6118d4ba4326509.jpg', '', '', '', 586429003, '2022-12-23 04:57:34'),
(3, 'Shiv Tandav Painting', '100X50 inches', 'Potrait', 'Large', 6, 4, 10, 350, 'It is a painting of shiv tandav.\r\nIt is a painting of shiv tandav.\r\nIt is a painting of shiv tandav.It is a painting of shiv tandav.It is a painting of shiv tandav.It is a painting of shiv tandav.It is a painting of shiv tandav.\r\nIt is a painting of shiv tandav.It is a painting of shiv tandav.', 'cd235e034297cda7b6f935dbd4881a2f1671771582.jpg', 'cd235e034297cda7b6f935dbd4881a2f1671771582.jpg', '', '', '', 686429002, '2022-12-23 04:59:42'),
(4, 'Stutue of Afel Tower', '45 inches tall', 'Landscape', 'Medium', 7, 1, 8, 500, 'It is a stute of afel tower which is made up of metal,It is a stute of afel tower which is made up of metal,It is a stute of afel tower which is made up of metal,It is a stute of afel tower which is made up of metal,It is a stute of afel tower which is made up of metal,It is a stute of afel tower which is made up of metal,It is a stute of afel tower which is made up of metal,', '508652faabdd333b34a0ce4a1dd443411671771753.jpg', '', '', '', '', 686429003, '2022-12-23 05:02:33'),
(5, 'HKjhkj', '100x200', 'Landscape', 'Large', 7, 3, 9, 200, 'gjhgj', '7d108db512f6a6a929cd0d0ad3b593e81671772410.jpg', '', '', '', '', 586429004, '2022-12-23 05:13:30'),
(6, 'BRASS BOWL “SWAN”', '05 1/2?', 'Landscape', 'Medium', 11, 10, 14, 61, 'A brass bowl is a type of bowl made from brass, a metal alloy primarily composed of copper and zinc. Brass is known for its golden appearance and can have a variety of finishes, from polished and shiny to antique or patinated.\r\n\r\nBrass bowls can be used for a range of purposes, including:\r\n\r\nDecorative: Many brass bowls are designed for decorative purposes. They can be used as centerpieces on tables, displayed on shelves, or as part of interior decor to add a touch of elegance and warmth to a room.\r\n\r\nServing: Brass bowls can also be functional and used for serving food or drinks. Some brass bowls have decorative patterns or engravings, making them suitable for special occasions or formal dining.\r\n\r\nStorage: Smaller brass bowls can be used for storing items like jewelry, keys, or potpourri. They can serve as both decorative and practical storage solutions.\r\n\r\nRitual and religious purposes: In some cultures and religious traditions, brass bowls are used for rituals, offerings, or as ceremonial items.\r\n\r\nBrass bowls are available in various sizes, styles, and designs, making them versatile and suitable for a wide range of uses. They can be found in stores that sell home decor, kitchenware, or specialty shops that focus on brass and metal products.', 'afecc37bfadd475b4172b83095a43d2b1697665378.jpg', 'DSC_0038__large.jpg', '', '', '', 348920271, '2023-10-18 21:42:58'),
(7, 'BRASS CANDLE STAND', '12? (DANGARA)', 'Potrait', 'Medium', 11, 10, 14, 28, 'A brass candle stand is a decorative or functional item typically made of brass, a metal alloy composed of copper and zinc. These candle stands are designed to hold candles and can come in various styles and sizes. They are often used for both decorative and practical purposes. Here are a few common types and uses of brass candle stands:\r\n\r\nCandleholders: These are simple stands designed to hold candles. They come in various designs, including single candle holders and multi-candle candelabras. They can be used for lighting candles for ambiance or special occasions.\r\n\r\nCandle Sconces: Brass candle sconces are wall-mounted fixtures with holders for candles. They can add a touch of elegance and warmth to interior decor.\r\n\r\nCandle Centerpieces: Brass candle stands are often used as centerpieces on dining tables, mantels, or other display areas. They can be combined with candles of different heights for a stunning visual effect.\r\n\r\nReligious or Ritual Use: In some religious or spiritual traditions, brass candle stands are used for ceremonial purposes, such as in churches or temples.\r\n\r\nOutdoor Candle Stands: Some brass candle stands are designed for outdoor use, such as garden or patio candle holders. They are usually designed to withstand the elements.\r\n\r\nBrass candle stands can have various finishes, including polished, antique, or patinated, which can affect their appearance. They are available in many home decor stores, antique shops, or online retailers. The style and design of a brass candle stand can vary greatly, making it easy to find one that suits your aesthetic and functional needs.', '088ccf5cd57e5cf2eda1a6cad62d2d881697665557.jpg', 'bf64539b203adfd7111dcaede67e6b5d.jpg', '', '', '', 834418244, '2023-10-18 21:45:57'),
(8, 'BRASS CASKET', '12', 'Landscape', 'Medium', 11, 10, 14, 28, 'A brass casket is a type of burial or funerary casket made primarily from brass, which is a metal alloy composed of copper and zinc. These caskets are designed to provide a dignified and long-lasting resting place for the deceased. Brass caskets are known for their durability, elegance, and resistance to corrosion.\r\n\r\n', '0720c205d4ed1facd00735fa1bd970181697665901.jpg', '0720c205d4ed1facd00735fa1bd97018.jpg', '', '', '', 499829538, '2023-10-18 21:51:41'),
(9, 'BRASS MURAUDA', '18? X 06?', 'Landscape', 'Medium', 0, 10, 14, 47, 'BRASS MURAUDA – SWAN CARVING 18? X 06?', '39a7f606964daa8b91f67bdca0fbc1051697666086.jpg', '', '', '', '', 216243673, '2023-10-18 21:54:46'),
(10, 'BRASS NILAME STATUE', '15', 'Potrait', 'Medium', 11, 1, 14, 366, 'A \"Nilame statue\" likely refers to a sculpture or figurine that represents a Nilame, a traditional Sri Lankan title for a local leader or dignitary who holds a position of authority and honor. In Sri Lanka, Nilames historically held important roles in village and regional administration and played a crucial role in various cultural and religious events and ceremonies.\r\n\r\nNilame statues may depict these individuals in traditional attire or ceremonial clothing, often with symbolic items or accessories representing their role. Such statues are often used for decorative or cultural purposes, particularly in Sri Lankan homes or as part of festivities and events.\r\n', 'a480d4657aad1da0a8859968907917661697666169.jpg', '', '', '', '', 410440589, '2023-10-18 21:56:09'),
(11, 'BRASS WALL HANGR', '14?', 'Landscape', 'Small', 11, 10, 14, 85, 'BRASS WALL HANGR (SUN/MOON) 14?', '979a72ca28ecde8a783e7b69f0c314ab1697666318.jpg', '', '', '', '', 179946679, '2023-10-18 21:58:38'),
(12, 'BURN BRASS JEWELARY BOX', '05 * 03', 'Landscape', 'Medium', 11, 10, 15, 36, 'A brass jewelry box is a decorative and functional container for storing jewelry and other valuable items. These boxes are typically made of brass, a metal alloy primarily composed of copper and zinc, known for its durability and ability to be intricately designed. Brass jewelry boxes can serve both practical and decorative purposes. Here are some key features and information about brass jewelry boxes:\r\n\r\nMaterial: These boxes are primarily constructed from brass, giving them a distinctive appearance. Brass can be polished for a shiny finish or given an antique or patinated finish for a more vintage look.\r\n\r\nDesign: Brass jewelry boxes come in a wide range of designs and styles. They often feature ornate details, engravings, and sometimes additional embellishments like gemstones or enamel work. The design can vary from simple and minimalist to highly intricate and decorative.\r\n\r\nInterior: The interior of a brass jewelry box is typically lined with soft fabric, such as velvet or silk, to protect the jewelry from scratches and damage. Compartments and dividers may also be included to help organize different types of jewelry.\r\n\r\nSize: Brass jewelry boxes come in various sizes, from small tabletop boxes to larger chests. The size you choose can depend on your storage needs and available space.\r\n\r\nFunctionality: Brass jewelry boxes are designed to keep your jewelry organized, secure, and protected. Many of them have locking mechanisms or closures to keep your valuables safe.\r\n\r\nDecorative Piece: These boxes are often used as decorative pieces in bedrooms, dressing areas, or display cabinets. They can add an elegant and antique touch to your decor.\r\n\r\nBrass jewelry boxes are widely available through home decor stores, jewelry shops, online retailers, and antique stores. When choosing a brass jewelry box, consider your storage needs, the overall design and style that complements your decor, and any additional features you may require, such as a lock for security.', '0f910dc69b4bcb83580234bbcca7f638.jpg', '', '', '', '', 702862852, '2023-10-18 22:01:23'),
(13, 'BURN BRASS JEWELLARY BOX', '08? X 06? X 04 1/2?', 'Landscape', 'Medium', 11, 10, 15, 132, 'A brass jewelry box is a decorative and functional container for storing jewelry and other valuable items. These boxes are typically made of brass, a metal alloy primarily composed of copper and zinc, known for its durability and ability to be intricately designed. Brass jewelry boxes can serve both practical and decorative purposes. Here are some key features and information about brass jewelry boxes:\r\n\r\nMaterial: These boxes are primarily constructed from brass, giving them a distinctive appearance. Brass can be polished for a shiny finish or given an antique or patinated finish for a more vintage look.\r\n\r\nDesign: Brass jewelry boxes come in a wide range of designs and styles. They often feature ornate details, engravings, and sometimes additional embellishments like gemstones or enamel work. The design can vary from simple and minimalist to highly intricate and decorative.\r\n\r\nInterior: The interior of a brass jewelry box is typically lined with soft fabric, such as velvet or silk, to protect the jewelry from scratches and damage. Compartments and dividers may also be included to help organize different types of jewelry.\r\n\r\nSize: Brass jewelry boxes come in various sizes, from small tabletop boxes to larger chests. The size you choose can depend on your storage needs and available space.\r\n\r\nFunctionality: Brass jewelry boxes are designed to keep your jewelry organized, secure, and protected. Many of them have locking mechanisms or closures to keep your valuables safe.\r\n\r\nDecorative Piece: These boxes are often used as decorative pieces in bedrooms, dressing areas, or display cabinets. They can add an elegant and antique touch to your decor.\r\n\r\nBrass jewelry boxes are widely available through home decor stores, jewelry shops, online retailers, and antique stores. When choosing a brass jewelry box, consider your storage needs, the overall design and style that complements your decor, and any additional features you may require, such as a lock for security.', '13654e0a86aae9462a764fdfe000e33c1697666549.jpg', '', '', '', '', 816888649, '2023-10-18 22:02:29'),
(14, 'COCONUT HUSK ELEPHANT', '600*200', 'Landscape', 'Medium', 11, 10, 16, 28, 'A \"coconut husk elephant\" likely refers to a decorative or craft item made from the husk of a coconut and shaped to resemble an elephant. This type of craftwork is common in regions where coconuts are prevalent, such as parts of Southeast Asia, including countries like Sri Lanka, India, and Thailand.\r\n\r\n\r\n\r\n\r\n', '1a633ffffc0a6147ad4669257b33cf701697666891.jpg', '', '', '', '', 570593601, '2023-10-18 22:08:11'),
(15, 'COCONUT HUSK FACE WITH HAT', '600*200', 'Potrait', 'Medium', 11, 10, 16, 15, 'A \"coconut husk face\" typically refers to a decorative or artistic creation where the face or features of a human or an animal are carved or sculpted from a coconut husk. Coconut husks are the fibrous outer layer of a coconut and are known for their durability and versatility, making them suitable for various craft and artistic applications.', '58f9690835bf1748e91bb0a7f5f283fc1697667690.jpg', '', '', '', '', 387231760, '2023-10-18 22:21:30'),
(16, 'COCONUT HUSK MONKEY', '15', 'Potrait', 'Medium', 11, 10, 16, 8, 'COCONUT HUSK MONKEY (EATING MANGO)', 'c46089372af7214ac20c342c3d7d2fa41697667751.jpg', '', '', '', '', 626427803, '2023-10-18 22:22:31'),
(17, 'GRANAITE STATUE “AWALOKITHESHWARA”', '22 * 9', 'Potrait', 'Large', 11, 1, 17, 398, 'Avalokiteshvara, often spelled as \"Avalokitesvara,\" is a bodhisattva in Buddhism and is associated with compassion and mercy. In Hinduism, Avalokiteshvara is sometimes identified with Lord Shiva.', 'ec1ab1b1bb0cba66eeb8e6b03dcd733d1697667906.jpg', '', '', '', '', 122260935, '2023-10-18 22:25:06'),
(18, 'GRANAITE STATUE “JEASUS AND MOTHER MARRY”', '7*6', 'Landscape', 'Small', 11, 1, 17, 41, 'The depiction of Jesus and the Virgin Mary is significant in Christian religious art and is often used to symbolize the relationship between Jesus and his mother, Mary. These statues can vary in size and style, from small household ornaments to larger sculptures intended for churches or outdoor display.\r\n\r\nGranite statues are popular for religious art because granite is a strong and long-lasting material that can withstand various weather conditions when placed outdoors. If you are interested in acquiring a granite statue of Jesus and the Virgin Mary, you may consider reaching out to religious art suppliers, Christian gift shops, or local artisans who specialize in creating religious statuary. You can also explore online marketplaces and art galleries for a variety of options.', '4f692dcc10717cb92b92b6fe141da29c1697667971.jpg', '', '', '', '', 572978671, '2023-10-18 22:26:11'),
(19, 'PULP ELEPHANT', '12', 'Landscape', 'Medium', 11, 10, 18, 81, 'PULP ELEPHANT T/D 12?', 'b24f970c5e94fba07610b64c2a808a591697668751.jpg', '', '', '', '', 149734587, '2023-10-18 22:39:11'),
(20, 'PULP STATUE KANDIYAN DANCER MALE / FEMALE', '12', 'Landscape', 'Large', 11, 10, 18, 20, 'A \"pulp statue Kandyan dancer\" typically refers to a statue depicting a traditional male or female Kandyan dancer made from a material known as \"pulp.\" These statues often represent the vibrant and elaborate dance traditions of the Kandyan region in Sri Lanka.', 'e7e13e5cc2de5415602566690e65e3471697668817.jpg', '', '', '', '', 760977824, '2023-10-18 22:40:17'),
(21, 'WOODEN ELEPHANT', '1', 'Landscape', 'Small', 11, 10, 19, 9, 'WOODEN ELEPHANT – GOLD DESIGN 04? T/D', '9c8d7c56a51a0edee662cc7842f445f91697668898.jpg', '', '', '', '', 298757530, '2023-10-18 22:41:38'),
(22, 'WOODEN BEEDS DECORATED CASKET ELEPHANT', 'ELEPHANT 6? (WITH CASKET 10?)', 'Potrait', 'Medium', 11, 10, 19, 28, 'WOODEN BEEDS DECORATED CASKET ELEPHANT ', '5c34a1fb868a2193dfb7d09f31eb7be01697668945.jpg', '', '', '', '', 861629749, '2023-10-18 22:42:25'),
(23, 'WOODEN MASK – MAYURA 08? (KADURU)', '8', 'Landscape', 'Medium', 11, 10, 19, 27, 'WOODEN MASK – MAYURA 08? (KADURU)', 'b975dfe2bf7ed59a9afb573efb7bc48a1697668986.jpg', '', '', '', '', 653878255, '2023-10-18 22:43:06'),
(24, 'WOODEN MASK – KOLAM', '06? (KADURU)', 'Potrait', 'Medium', 11, 10, 19, 34, 'WOODEN MASK – KOLAM (DIFFERENT DESIGN) 06? (KADURU)', '8cf5a74ad875d9f0ad6a8aeb47f6a9601697669032.jpg', '', '', '', '', 272538760, '2023-10-18 22:43:52'),
(25, 'CERAMIC ELEPHANT PEN HOLDER', '6', 'Landscape', 'Medium', 11, 11, 20, 10, 'A ceramic elephant pen holder is a decorative and functional item typically made from ceramic or porcelain. ', '069afad54aed17ba7d860e839c1288eb1697669253.jpg', '', '', '', '', 792706623, '2023-10-18 22:47:33'),
(26, 'CERAMIC MUG ELEPHANT PRINT', '5', 'Potrait', 'Medium', 11, 11, 20, 9, 'ERAMIC MUG ELEPHANT PRINT (SRI LANKA)', '4ca640fe2cf7bb0c8ea23dce5816f53a1697669774.jpg', '', '', '', '', 358234695, '2023-10-18 22:56:14'),
(27, 'CERAMIC SITTING ELEPHANT', '05 1/2?', 'Potrait', 'Medium', 11, 11, 20, 12, 'CERAMIC SITTING ELEPHANT (MODERATE GRAY/TOP and WHITE SHINE)', '4e3eaecb628d662f1251e177937796df1697669824.jpg', '', '', '', '', 560910804, '2023-10-18 22:57:04'),
(28, 'CERAMIC TEA SET', '13', 'Landscape', 'Large', 11, 11, 20, 715, 'CERAMIC TEA SET – PLATINAM PLATED (13 PCS)', '8c7659d227d8761c62e4251f0af42fd01697669871.jpg', '', '', '', '', 178639020, '2023-10-18 22:57:51'),
(29, 'LEATHER DRUM BAG', '15? X 08 1/2?', 'Landscape', 'Large', 11, 11, 21, 58, 'LEATHER DRUM BAG – LARGE 15? X 08 1/2?\r\n\r\n', '9277a33188e5e262ac78f78f330f995a1697669975.jpg', '', '', '', '', 692251490, '2023-10-18 22:59:35'),
(30, 'LEATHER EMBOSSED TRAVELLING BAG', '14', 'Landscape', 'Large', 11, 11, 21, 49, 'LEATHER EMBOSSED TRAVELLING BAG – 14?', 'a5f77d46c1737ee549887641bdccaa511697670027.jpg', '', '', '', '', 179505256, '2023-10-18 23:00:27'),
(31, 'LEATHER HUMPTY OVAL LARGE', ' 13? X 66? X 15?', 'Landscape', 'Medium', 11, 10, 21, 93, 'ATHER HUMPTY OVAL LARGE 13? X 66? X 15?', 'd90d8078f036fc6320e3e764ff849a121697670651.jpg', '', '', '', '', 397762738, '2023-10-18 23:10:51'),
(32, 'LEATHER SMALL FILE BAG', '8 1/2? X 6 1/2?', 'Potrait', 'Small', 11, 11, 21, 31, 'LEATHER SMALL FILE BAG (SMALL) 8 1/2? X 6 1/2?', 'cea992b522b27bf053e2bbda6eabe0641697670732.jpg', '', '', '', '', 845852486, '2023-10-18 23:12:12'),
(33, 'WATAKEY HALF ROUND BAG', '9', 'Potrait', 'Small', 11, 11, 22, 10, 'WATAKEY HALF ROUND BAG', '651d35fa72542c13f8d156ec0e3596581697670782.jpg', '', '', '', '', 998097810, '2023-10-18 23:13:02'),
(34, 'HAND LOOM KIDS PURSE', ' 05? X 04 1/2?', 'Landscape', 'Medium', 0, 12, 23, 6, 'HAND LOOM KIDS PURSE 05? X 04 1/2?', '4281bfc997d3f8d2f237781ef5e2458a1697670930.jpg', '', '', '', '', 920556799, '2023-10-18 23:15:30'),
(35, 'HAND LOOM SOFT TOYS', '3', 'Landscape', 'Small', 11, 12, 23, 6, 'HAND LOOM SOFT TOYS DRESSED ELEPHANT TU 03?', 'a1950c8141d08819adc144b4aa23fd1c1697670981.jpg', '', '', '', '', 681457115, '2023-10-18 23:16:21'),
(36, 'HAND LOOM SOFT TOYS', '47?', 'Landscape', 'Medium', 11, 12, 0, 18, 'HAND LOOM SOFT TOYS – SNAKE 47?', '91244c5b282503036acb95cb5a5334551697671040.jpg', '', '', '', '', 442684895, '2023-10-18 23:17:20'),
(37, 'HAND LOOM TOYS', '6', 'Landscape', 'Medium', 11, 12, 23, 5, 'HAND LOOM TOYS – OWL 09?', '69a02c71a5d89aa0300d0093dd20e09f1697671087.jpg', '', '', '', '', 665120626, '2023-10-18 23:18:07'),
(38, 'HANDLOOM SOFT TOYS', '3 * 4', 'Landscape', 'Medium', 11, 12, 23, 4, 'HANDLOOM SOFT TOYS – ELEPHANT 03? X 04?', 'f890421f0d52bb8a604e64563e6a9a7b1697671145.jpg', '', '', '', '', 426833320, '2023-10-18 23:19:05'),
(39, 'HANDLOOM SOFT TOYS', '05 1/2?', 'Potrait', 'Medium', 11, 12, 23, 7, 'HANDLOOM SOFT TOYS – ELEPHANT 05 1/2?', '6b9b555425d1a5a7a4b582fa04c495d11697671198.jpg', '', '', '', '', 560677087, '2023-10-18 23:19:58'),
(40, 'HANDLOOM SOFT TOYS', '05 1/2?', 'Potrait', 'Medium', 11, 12, 23, 7, 'HANDLOOM SOFT TOYS – ELEPHANT 05 1/2?', '6b9b555425d1a5a7a4b582fa04c495d11697671205.jpg', '', '', '', '', 455829648, '2023-10-18 23:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `tblarttype`
--

CREATE TABLE `tblarttype` (
  `ID` int(11) NOT NULL,
  `ArtType` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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

CREATE TABLE `tblenquiry` (
  `ID` int(11) NOT NULL,
  `EnquiryNumber` varchar(10) NOT NULL,
  `Artpdid` int(11) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Message` varchar(250) DEFAULT NULL,
  `EnquiryDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` varchar(10) DEFAULT NULL,
  `AdminRemark` varchar(200) NOT NULL,
  `AdminRemarkdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`ID`, `EnquiryNumber`, `Artpdid`, `FullName`, `Email`, `MobileNumber`, `Message`, `EnquiryDate`, `Status`, `AdminRemark`, `AdminRemarkdate`) VALUES
(3, '469396759', 16, 'geemith', 'geemith@gmail.com', 7754939546, 'i want to by this', '2023-10-19 03:08:08', 'Answer', 'i called him', '2023-10-19 03:10:49'),
(4, '261533113', 6, 'ryan', 'ryansilva@gmail.com', 7754939546, 'Give me the last price', '2023-10-19 05:42:54', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` varchar(2000) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<font face=\"arial\"><span style=\"color: rgb(26, 26, 26);\">Laksala is the only State owned Gift &amp; Souvenir Boutique and was established under the&nbsp;</span><span style=\"font-weight: 700; color: rgb(26, 26, 26);\">National Crafts Council And Allied Institutions</span><span style=\"color: rgb(26, 26, 26);\">&nbsp;</span><span style=\"font-weight: 700; color: rgb(26, 26, 26);\">Act, No. 35 of 1982.</span><span style=\"color: rgb(26, 26, 26);\">&nbsp;Since then Laksala has witnessed numerous changes with an ever growing list of products on sale. Today Laksala operates through&nbsp;</span><span style=\"font-weight: 700; margin-bottom: 0px; color: rgb(26, 26, 26);\">13</span><span style=\"color: rgb(26, 26, 26);\">&nbsp;&nbsp;branches located island wide and offer the widest variety of all Sri Lankan products at a reasonable price. Most importantly, Laksala enables the numerous industries that supply goods to it to stay both profitable and in business. Today you will find an eclectic blend of items ranging from selections of beautifully packaged tea and spices to, colourful batik ware to an elaborate collection of art and craft as well as the finest collection of traditional Sri Lankan Gems and Jewellery. Laksala is therefore your one stop guide and a visit to one of our stores feels like you visited ‘all of Sri Lanka’!</span></font><br>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '<pre><font face=\"arial\"><span style=\"color: rgb(102, 102, 102); font-size: 16px; background-color: rgb(248, 248, 248);\">No. 215,<br></span></font><font face=\"arial\"><span style=\"color: rgb(102, 102, 102); font-size: 16px; background-color: rgb(248, 248, 248);\">Bauddhaloka Mawatha, Thummulla, Colombo 7</span></font></pre>', ' contact@laksala.gov.lk', '011 2580579 / 011 5846168', NULL, '10:30 am to 7:30 pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblartist`
--
ALTER TABLE `tblartist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblartmedium`
--
ALTER TABLE `tblartmedium`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblartproduct`
--
ALTER TABLE `tblartproduct`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblarttype`
--
ALTER TABLE `tblarttype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CardId` (`Artpdid`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblartist`
--
ALTER TABLE `tblartist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblartmedium`
--
ALTER TABLE `tblartmedium`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblartproduct`
--
ALTER TABLE `tblartproduct`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tblarttype`
--
ALTER TABLE `tblarttype`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
