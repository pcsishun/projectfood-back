-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2021 at 11:26 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `menulist`
--

CREATE TABLE `menulist` (
  `id` int(11) NOT NULL,
  `page_running` int(11) NOT NULL,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `price` text NOT NULL,
  `path_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menulist`
--

INSERT INTO `menulist` (`id`, `page_running`, `title`, `desc`, `price`, `path_img`) VALUES
(1, 1, 'CLARIDGE’S BLEND', 'A bespoke blend created exclusively for Afternoon Tea at Claridge’s. The blend has \r\na unique depth of flavour that combines the \r\npower of an English Breakfast Tea with a \r\nsatisfying complexity. The flavour is rich and \r\naromatic with a deep, malty finish. Perfect \r\nserved without milk, partnered by a fresh \r\nwarm scone.', '250', 'aft4.jpg'),
(2, 1, 'RARE EARL GREY', 'A traditional Earl Grey tea made from single \r\nestate black tea and pure bergamot oil sourced \r\nfrom the ancient citrus groves of Calabria. This \r\nis a classic British tea made to exacting standards. \r\nThe result is a clean and exceptionally bright \r\ninfusion with exhilarating citrus notes. It can \r\nbe enjoyed with milk or a twist of lemon zest.', '300', 'aft5.jpg'),
(3, 1, 'CORNISH EARL GREY', 'This Earl Grey is grown at the first ever English \r\ntea garden on the Cornish Estate of Tregothnan, \r\nestablished in 1335. Enjoying a unique \r\nmicroclimate and protected by a walled garden \r\nthis is the only English tea in commercial \r\nproduction. It has been blended with a finest \r\nquality Assam and delicately flavoured with \r\npure bergamot oil. Best enjoyed black with \r\na twist of lemon. ', '330', 'aft6.jpg'),
(4, 1, '2ND FLUSH MUSCATEL SIKKIM', 'High in the Indian Himalayas, at the border with \r\nDarjeeling and Tibet lies the secret region of \r\nSikkim. Not as famous as its Darjeeling \r\nneighbours, but making a black tea of such \r\ndelicious delicacy that the heart soars. This tea \r\nhas a heady floral aroma with soft notes of \r\nmuscatel grapes and is best served black to \r\nappreciate its subtle complexity.', '310', 'aft7.jpg'),
(5, 1, 'HIMALAYAN FIRST FLUSH', 'This highly fragrant black tea is plucked in the \r\nspring from the delicate first leaves of the season \r\nThis very rare Nepali tea comes from the tiny \r\nand exquisite Jun Chiyabari Estate which \r\nproduces just a few kilos of some of the finest \r\ntea in the world. A particularly pure black tea \r\nwith delicate sweetness and notes of deep, dark \r\nchocolate, bright citrus and apricots. It is best \r\nserved without milk.', '230', 'aft8.jpg'),
(6, 1, 'WAIKATO BLACK', 'A rare find from New Zealand; showcasing an \r\ninnovative new tea terroir. In 1996 the Zealong \r\nEstate imported rigorously-selected tea cuttings \r\nfrom the best tea growing regions across Asia. \r\nThis whole leaf black tea has a full-bodied biscuity \r\nmouth feel that’s both distinct and gentle. Notes \r\nof gingerbread and late summer honey.', '340', 'aft9.jpg'),
(7, 2, 'RARE CHAI', 'A rich black tea with freshly ground spices. \r\nUnlike a traditional Chai, which often uses a \r\nlow-grade tea and disguises it with spices, this is a \r\nbeautifully hand-crafted tea carefully enhanced \r\nwith spices. Deliciously enlivening.\r\n', '360', 'atf11.jpg'),
(8, 2, 'CLOUD TEA', 'A delicate black tea plucked from the tiny \r\nLaKyrsiew tea garden in the forgotten forest \r\nregion of Meghalaya known as the “Abode of \r\nClouds.” The tea is meticulously rolled to keep \r\nthe beautiful leaves whole. This tender crafting \r\nallows the leaves to retain a delicacy and softness \r\nthat is very rare in black tea. Heady floral aromas \r\nwith a smooth buttery finish and a note of cherry \r\nBest enjoyed without milk.', '360', 'atf12.jpg'),
(9, 2, 'HUNTINGTON HAND ROLLED', 'Hand rolled black tea with a surprising depth and \r\nintensity. Rich as an Assam with spicy top notes \r\nand honey blossom aroma. Remarkably for such \r\nan elegant hand-made tea it has enough body to \r\ntake milk.', '270', 'atf15.jpg'),
(10, 2, 'MORIUCHI KOUCHA', 'A rare black Japanese tea hand-crafted in \r\nShizuoka by the revered master Moriuchi-san. \r\nSmooth, soft, buttery mouthfeel with flavours of \r\nwalnuts and enoki mushrooms. A rare contrast of \r\nsweetness and umami. Best enjoyed without milk.', '210', 'atf16.jpg'),
(11, 2, 'SRI LANKAN HAND ROLLED', 'Only a few precious kilos are produced each year \r\ndue to the quality of the leaf required and the \r\namount of craftsmanship entailed in hand rolling \r\nthe leaf. A uniquely sweet and delicate tea made \r\nwith a great deal of devotion with a hint of \r\nhoneysuckle. Best enjoyed without milk.', '365', 'atf17.jpg'),
(12, 2, 'CLARIDGE’S REAL FRUIT TEA', 'This bright and invigorating infusion combines a \r\ndelicate black China tea scented with Madagascan \r\nvanilla pods blended with sweet seasonal syrup.', '400', 'atf18.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`) VALUES
(1, 'test', '1234', 'test@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menulist`
--
ALTER TABLE `menulist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menulist`
--
ALTER TABLE `menulist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
