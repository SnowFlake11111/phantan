-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2022 at 03:39 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Password` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(2, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2022-06-01 07:14:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `FromDate` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ToDate` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Comment` longtext COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(14, 7, 'what@gmail.com', '2022-06-14', '2022-06-17', 'Pyramid trip ?? Hell ye', '2022-06-30 04:13:34', 2, 'a', '2022-06-30 08:06:51'),
(15, 9, 'test@gmail.com', '2022-06-05', '2022-06-21', 'No comment', '2022-06-30 08:44:25', 1, NULL, '2022-07-07 02:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `EmailId` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MobileNumber` char(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Subject` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Description` longtext COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(4, 'Test', 'test@gm.com', '4747474747', 'Test', 'iidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiid', '2022-06-25 07:54:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Issue` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Description` longtext COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` longtext COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(12, 'what@gmail.com', 'Other', 'Need better frontpage', '2022-06-30 04:13:55', NULL, NULL),
(17, 'test@gmail.com', 'Hủy vé', 'test', '2022-07-07 02:18:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT '',
  `detail` longtext COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																				<p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: small; font-weight: 700;\">Testststststst</span></p>\r\n										\r\n										'),
(2, 'privacy', '<h1 style=\"font-family: objektiv-mk2, sans-serif; font-weight: 700; font-size: 2.8rem; line-height: 3.8rem; color: rgb(54, 59, 72);\">Privacy Policy</h1><p style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem; color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif;\"><em>Effective as of June 22, 2022</em></p><p style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem; color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif;\">Protecting your private information is our priority. This Statement of Privacy applies to tourapp.co and Tour by Monos Digital Inc. and governs data collection and usage. For the purposes of this Privacy Policy, unless otherwise noted, all references to Tour by Monos Digital Inc. include tourapp.co and Tour. Tour is a travel planning mobile application which is also accompanied by a website at&nbsp;<a href=\"http://tourapp.co/\">http://tourapp.co</a>. By using the Tour website and mobile application (the \"App\"), you consent to the data practices described in this statement.</p><h2 style=\"font-family: objektiv-mk2, sans-serif; margin-bottom: 1rem; font-weight: 700; color: rgb(54, 59, 72);\">Collection of your Personal Information</h2><p style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem; color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif;\">Tour collects anonymous demographic information, which is not unique to you, such as your age and gender. We do not collect any personal information about you unless you voluntarily provide it to us. However, you may be required to provide certain personal information to us when you elect to use certain products or services available on the App and website. These may include: (a) registering for an account on our App; (b) entering a sweepstakes or contest sponsored by us or one of our partners; (c) signing up for special offers from selected third parties; (d) sending us an email message; (e) submitting your credit card or other payment information when ordering and purchasing products and services on our App. To wit, we will use your information for, but not limited to, communicating with you in relation to services and/or products you have requested from us. We also may gather additional personal or non-personal information in the future.</p><h2 style=\"font-family: objektiv-mk2, sans-serif; margin-bottom: 1rem; font-weight: 700; color: rgb(54, 59, 72);\">Use of your Personal Information</h2><p style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem; color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif;\">Tour collects and uses your personal information to operate its website(s) and deliver the services you have requested. Tour uses the data in order to conduct machine-learning analysis, and uses it for suggestions and optimization of user experience, as-well as sustain communications with our userbase in order to notify them of updates, changes, and special offers. Tour may also use your personally identifiable information to inform you of other products or services available from Tour and its affiliates.</p><h2 style=\"font-family: objektiv-mk2, sans-serif; margin-bottom: 1rem; font-weight: 700; color: rgb(54, 59, 72);\">Sharing Information with Third Parties</h2><p style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem; color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif;\">Tour does not sell, rent, or lease your anonymous data, such as age, gender, country/state/province of residence, hardware information, and similar, to any third parties. All of our trusted partners and other third parties are prohibited from using your personal information, and are required to maintain the confidentiality of your information. Tour may disclose your personal information, without notice, if required to do so by law or in the good faith belief that such action is necessary to: (a) conform to the edicts of the law or comply with legal process served on Tour or the site; (b) protect and defend the rights or property of Tour; and/or (c) act under exigent circumstances to protect the personal safety of users of Tour, or the public.</p><h2 style=\"font-family: objektiv-mk2, sans-serif; margin-bottom: 1rem; font-weight: 700; color: rgb(54, 59, 72);\">Tracking User Behavior</h2><p style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem; color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif;\">Tour may keep track of the websites and pages our users visit within Tour, in order to determine what Tour services are the most popular. This data is used to deliver customized content for Tour customers whose behavior indicates that they are interested in a particular subject area.</p><h2 style=\"font-family: objektiv-mk2, sans-serif; margin-bottom: 1rem; font-weight: 700; color: rgb(54, 59, 72);\">Automatically Collected Information</h2><p style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem; color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif;\">Information about your computer hardware and software may be automatically collected by Tour. This information can include: your IP address, browser type, domain names, access times and referring website addresses. This information is used for the operation of the service, to maintain quality of the service, and to provide general statistics regarding use of the Tour website.</p><h2 style=\"font-family: objektiv-mk2, sans-serif; margin-bottom: 1rem; font-weight: 700; color: rgb(54, 59, 72);\">Use of Cookies</h2><p style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem; color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif;\">The Tour website may use \"cookies\" to help you personalize your online experience. A cookie is a text file that is placed on your hard disk by a web page server. Cookies cannot be used to run programs or deliver viruses to your computer. Cookies are uniquely assigned to you, and can only be read by a web server in the domain that issued the cookie to you. One of the primary purposes of cookies is to provide a convenience feature to save you time. The purpose of a cookie is to tell the Web server that you have returned to a specific page. For example, if you personalize Tour pages, or register with Tour app, website, or services, a cookie helps Tour to recall your specific information on subsequent visits. This simplifies the process of recording your personal information, such as billing addresses, shipping addresses, and so on. When you return to the same Tour website, the information you previously provided can be retrieved, so you can easily use the Tour features that you customized. You have the ability to accept or decline cookies. Most Web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. If you choose to decline cookies, you may not be able to fully experience the interactive features of the Tour services or websites you visit.</p><h2 style=\"font-family: objektiv-mk2, sans-serif; margin-bottom: 1rem; font-weight: 700; color: rgb(54, 59, 72);\">Links</h2><p style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem; color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif;\">The Tour website and mobile application contains links and embeds to/of other sites and services. Please be aware that we are not responsible for the content or privacy practices of such other sites and services. We encourage our users to be aware when they leave our site and to read the privacy statements of any other site and service that collects personally identifiable information. Security of your Personal Information Tour secures your personal information from unauthorized access, use, or disclosure. Tour uses the following methods for this purpose:</p><ul style=\"color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif; font-size: medium;\"><li style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem;\">SSLProtocol</li><li style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem;\">AES256-bit encryption using Google Cloud Standard Encryption When personal information (such as a credit card number) is transmitted to other websites, it is protected through the use of encryption, such as the Secure Sockets Layer (SSL) protocol. We strive to take appropriate security measures to protect against unauthorized access to or alteration of your personal information. Unfortunately, no data transmission over the Internet or any wireless network can be guaranteed to be 100% secure. As a result, while we strive to protect your personal information, you acknowledge that: (a) there are security and privacy limitations inherent to the Internet which are beyond our control; and (b) security, integrity, and privacy of any and all information and data exchanged between you and us through the App and website cannot be guaranteed.</li></ul><h2 style=\"font-family: objektiv-mk2, sans-serif; margin-bottom: 1rem; font-weight: 700; color: rgb(54, 59, 72);\">Children Under Sixteen</h2><p style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem; color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif;\">Tour does not knowingly collect, either online or offline, personal information (as defined by the Children Online Privacy Protection Act) from persons under the age of sixteen.</p><h2 style=\"font-family: objektiv-mk2, sans-serif; margin-bottom: 1rem; font-weight: 700; color: rgb(54, 59, 72);\">Data Removal, Opt-Out, &amp; GDPR Compliance</h2><p style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem; color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif;\">As per the recent adoption of the General Data Protection Regulation for users in the European Union, as an act of compliance and respect for our users’ privacy, Tour has two ways to manage your data and opt-out of data collection.</p><ol style=\"color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif; font-size: medium;\"><li style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem;\">You can delete your account, which will permanently remove all data stored for your profile from our database.</li><li style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem;\">You can send an email to founders@tourapp.co and request us to manually remove any collected data, or to stop collecting any or a particular type of data at any time. We will process your request with 24-48 hours.</li></ol><p style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem; color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif;\">Opting out may potentially negatively impact user experience, but the App will no longer collect any data that you request us to stop collecting. Additionally, after deleting your account, no data will be stored inside or outside the app.</p><p style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem; color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif;\">Additionally, we respect your privacy and also give you an opportunity to opt-out of receiving announcements and sustaining communications with Tour and its affiliates also by clicking or tapping the “UNSUBSCRIBE” in any email sent to you, or by muting all or certain notifications via the settings menu of your device.</p><h2 style=\"font-family: objektiv-mk2, sans-serif; margin-bottom: 1rem; font-weight: 700; color: rgb(54, 59, 72);\">E-mail Communications</h2><p style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem; color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif;\">From time to time, Tour may contact you via email for the purpose of providing announcements, promotional offers, alerts, confirmations, surveys, and/or other general communication.</p><p style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem; color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif;\">If you would like to stop receiving marketing or promotional communications via email from Tour, you may opt out of such communications by clicking or tapping \"UNSUBSCRIBE\" within any email, or by toggling the feature in the mobile application settings.</p><h2 style=\"font-family: objektiv-mk2, sans-serif; margin-bottom: 1rem; font-weight: 700; color: rgb(54, 59, 72);\">External Data Storage Sites</h2><p style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem; color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif;\">We may store your data on servers provided by third party hosting vendors with whom we have contracted.</p><h2 style=\"font-family: objektiv-mk2, sans-serif; margin-bottom: 1rem; font-weight: 700; color: rgb(54, 59, 72);\">Changes to this Statement</h2><p style=\"font-size: 0.8rem; line-height: 1.7rem; letter-spacing: 0.02rem; color: rgb(54, 59, 72); font-family: objektiv-mk3, sans-serif;\">Tour reserves the right to change this Privacy Policy from time to time. We will notify you about significant changes in the way we treat personal information by sending a notice to the primary email address specified in your account, by placing a prominent notice on our website, and/or by updating any privacy information on this page. Your continued use of the App and website and/or Services available through this App and website after such modifications will constitute your: (a) acknowledgment of the modified Privacy Policy; and (b) agreement to abide and be bound by that Policy.</p>'),
(3, 'aboutus', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Test</span>'),
(11, 'contact', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `PackageType` varchar(150) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `PackageLocation` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `PackageDetails` longtext COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `PackageImage` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(7, 'Pyramid trip', 'J4F Package', 'Pyramid (Probably)', 1000, 'Comfy', 'Just a trip to the past :)', '71894921_p13_master1200.jpg', '2022-06-30 03:44:42', NULL),
(8, 'Unknown Trip ver 2', 'Nothing', 'Smosh', 1500, 'Laugh till you die (literally)', 'Just a fun trip for le whole family', '146220589_719349285422089_5223829838624367171_n.jpg', '2022-06-30 03:55:42', '2022-06-30 03:56:24'),
(9, 'Chill', 'unknown', 'meme-island', 1000, 'nothing', 'testest', '5d99930839ffe.png', '2022-06-30 08:11:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MobileNumber` char(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `EmailId` varchar(70) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Password` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(7, 'test', '7676767676', 'test@gm.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-10 10:54:56', '0000-00-00 00:00:00'),
(12, 'John', '0848080500', 'tuanvietnam76@gmail.com', '34fc8d25103313d42562f6813be8344e', '2022-04-17 09:48:21', NULL),
(13, '123', '123456789', 'no@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-04-18 03:02:08', NULL),
(14, 'Johny johnson', '1111111111', 'jonhy@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-06-30 04:11:08', NULL),
(15, 'what', '123456789', 'what@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-06-30 04:12:23', NULL),
(17, 'yes', '1111111111', 'yes@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-06-30 08:29:53', NULL),
(18, 'test', '1234567890', 'test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-06-30 08:41:47', NULL),
(20, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2022-07-07 02:16:56', NULL),
(21, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2022-07-07 02:18:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
