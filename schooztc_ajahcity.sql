-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 12, 2019 at 11:26 PM
-- Server version: 5.5.61-38.13-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schooztc_ajahcity`
--

-- --------------------------------------------------------

--
-- Table structure for table `adverts`
--

CREATE TABLE `adverts` (
  `id` bigint(255) NOT NULL,
  `token` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `subcategory` varchar(100) NOT NULL,
  `prodname` varchar(100) NOT NULL,
  `produrl` tinytext NOT NULL,
  `prodemail` varchar(100) NOT NULL,
  `prodphone` varchar(50) NOT NULL,
  `prodaddr` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `subtype` varchar(15) NOT NULL,
  `devrequirement` tinytext NOT NULL,
  `prodbanner` tinytext NOT NULL,
  `adnote` longtext NOT NULL,
  `repnotedisplay` tinyint(1) NOT NULL,
  `repname` varchar(100) NOT NULL,
  `addedby` varchar(50) NOT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `substatus` tinyint(1) NOT NULL DEFAULT '0',
  `paymenttype` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adverts`
--

INSERT INTO `adverts` (`id`, `token`, `category`, `subcategory`, `prodname`, `produrl`, `prodemail`, `prodphone`, `prodaddr`, `city`, `subtype`, `devrequirement`, `prodbanner`, `adnote`, `repnotedisplay`, `repname`, `addedby`, `updatedby`, `dateadded`, `dateupdated`, `substatus`, `paymenttype`) VALUES
(3, 'adv-20190814132036kXbh14', 'infotech', 'Information Technologies', 'Hoffenheim Technologies', 'https://www.hoffenheimtechnologies.com/', 'hoffenheimtech@gmail.com', '08115789252', '10 Tom Ogboi Way, Lekki Phase One, Lagos, Nigeria.', 'Lekki Phase One', 'inline', '', 'site/media/adverts/adv-20190814132036kXbh14_.png', '', 0, 'Leonard Oshiyemi', 'admin2', '', '2019-08-14 13:20:36', '2019-08-14 13:20:36', 1, 'adm'),
(5, 'adv-201910021219588ocqU37', 'infotech', 'COMPUTER TRAINING SALES AND SERVICES', 'Dunis Technologies Limited', 'https://www.dunistech.ng/registration', 'info@dunistech.ng', '07032276597', 'Mike Otutu street Graceland, Graceland Estate', 'Ajiwe', 'inline', '', 'site/media/adverts/adv-201910021219588ocqU37_.png', 'We are an ICT/IT professional training company. We also offer computer sales (new and original HP products) and services', 0, '', 'admin2', NULL, '2019-10-02 12:19:58', '2019-10-02 12:19:58', 1, 'adm');

-- --------------------------------------------------------

--
-- Table structure for table `adverts_backup`
--

CREATE TABLE `adverts_backup` (
  `id` bigint(255) NOT NULL,
  `token` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `subcategory` varchar(100) NOT NULL,
  `prodname` varchar(100) NOT NULL,
  `produrl` tinytext NOT NULL,
  `prodemail` varchar(100) NOT NULL,
  `prodphone` varchar(50) NOT NULL,
  `prodaddr` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `subtype` varchar(15) NOT NULL,
  `devrequirement` tinytext NOT NULL,
  `prodbanner` tinytext NOT NULL,
  `adnote` longtext NOT NULL,
  `repnotedisplay` tinyint(1) NOT NULL,
  `repname` varchar(100) NOT NULL,
  `addedby` varchar(50) NOT NULL,
  `updatedby` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `substatus` tinyint(1) NOT NULL DEFAULT '0',
  `paymenttype` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` bigint(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `userdetails` longtext NOT NULL,
  `comment` text NOT NULL,
  `token` varchar(50) NOT NULL,
  `cv` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `confirmed` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `type`, `email`, `userdetails`, `comment`, `token`, `cv`, `status`, `dateadded`, `confirmed`) VALUES
(1, '', 'abdulwasihitopee4real@gmail.com', '{\"names\":\"Abdul Wasiu\",\"phone\":\"08188549307\"}', 'I am a software engineer, with high level experience web development fullstack to be precise.', 'job-201909031556210f6Cn2', 'site/media/applicants/abdulwasihitopee4real@gmail.com_job-201909031556210f6Cn2_Rumi Aneke - Co-op Resume.doc', 0, '2019-09-06 16:29:12', 0),
(2, '', 'oshiyemi@gmail.com', '{\"names\":\"John\",\"phone\":\"0708585858\"}', 'Pls accept this as my application for the job', 'job-201909031556210f6Cn2', 'site/media/applicants/oshiyemi@gmail.com_job-201909031556210f6Cn2_COLC SUNDAY SERVICE PROGRAM_APPROVED.pdf', 0, '2019-09-07 15:03:20', 0),
(3, '', 'sherifatayomi@gmail.com', '{\"names\":\"Bamidele Sherifat\",\"phone\":\"08103118890\"}', 'Dear Sir/Ma\r\nThank you for the opportunity to apply for the role of management trainee in your organisation.\r\nAfter reviewing your job description, it is clear that youâ€™re looking for a candidate that is extremely familiar with the responsibilities associated with the role, and canâ€™t perform them confidently. Given these requirements, I am certain that I have all the necessary skills to successfully do the job adeptly and perform the above  expectations. \r\nI am a hard-working professional who has been who has been consistently praised as proactive by co-workers and management. Over the course of my 6 years career I have developed a skill set directly to the role you are hiring for, including conflict resolution, customer satisfaction and sales administration. Overall, I have consistently demonstrated analytical, communication and team work abilities in every aspect with my last employer.\r\nAfter reviewing my resume, I hope you will agree that I am the type of competent and competitive candidate you are looking for. I look forward to elaborating on how my specific skills and abilities will benefit your organization. Please contact me on 08103118890 or via Sherifatayomi@gmail.com to arrange for a convenient meeting time.\r\n\r\nThank you for your consideration and I look forward to hearing from you soon.\r\n\r\nSincerely,\r\nBamidele Sherifat.', 'job-20190927135319IemXg6', 'site/media/applicants/sherifatayomi@gmail.com_job-20190927135319IemXg6_Bamidele Sherifat CV.docx', 0, '2019-09-27 20:56:16', 0),
(4, '', 'olugbengaemmanuel07@gmail.com', '{\"names\":\"Omotoyosi Emmanuel Olugbenga\",\"phone\":\"08068226268\"}', 'kindly see attached', 'job-20190927135319IemXg6', 'site/media/applicants/olugbengaemmanuel07@gmail.com_job-20190927135319IemXg6_Omotoyosi Emmanuel Olugbenga Lagos CV.pdf', 0, '2019-10-01 11:34:35', 0);

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int(255) NOT NULL,
  `token` varchar(30) NOT NULL,
  `category` varchar(20) NOT NULL,
  `subcategory` tinytext NOT NULL,
  `bizname` tinytext NOT NULL,
  `email` varchar(100) NOT NULL,
  `bizlogo` longtext NOT NULL,
  `url` tinytext NOT NULL,
  `phone` varchar(255) NOT NULL,
  `bizaddr` tinytext NOT NULL,
  `city` varchar(50) NOT NULL,
  `briefing` longtext NOT NULL,
  `addedby` varchar(20) NOT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `substatus` tinyint(1) NOT NULL,
  `paymenttype` varchar(10) NOT NULL,
  `daterenewed` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `token`, `category`, `subcategory`, `bizname`, `email`, `bizlogo`, `url`, `phone`, `bizaddr`, `city`, `briefing`, `addedby`, `updatedby`, `dateadded`, `substatus`, `paymenttype`, `daterenewed`) VALUES
(1, 'biz-201908101731084TnJB', 'others', 'Information Technology', 'Hoffenheim Technologies Limited', 'contact@hoffenheimtechnologies.com', 'site/media/businesses/biz-201908101731084TnJB_.png', 'https://www.hoffenheimtechnologies.com', '+234-811-578-9252', '10 Tom Ogboi Way, Lekki Phase One, Lagos, Nigeria.', 'Lekki', 'Hoffenheim Technologies Limited, is a boutique technology firm with a niche to not only be the number 1 system integrator but to also be a customer centric platform that allows for our partners, customers and end users to develop a sustainable technology platform that drives uniqueness, cost effectiveness and productivity. We are passionate about what we do and delivering beyond expectations is our signature.', 'admin2', 'admin2', '2019-08-10 17:31:07', 1, 'adm', '2019-08-10 17:31:07'),
(2, 'biz-20190811222903Ad3bQ2', 'health', 'Medical Clinic', 'Bluirays clinical diagnostic centre. ', 'bluirayshealthcareservices@gmail.com', 'site/media/businesses/biz-20190811222903Ad3bQ2_.png', 'https://www.bluirays.com/home/contact-us/', '09036635486', 'Opposite Payless supermarket. No 2 Jimoh Tiamiyu street Addo Badore Rd. Ajah ,Lekki Lagos.', 'Ajah', 'Blui Rays Clinical Diagnostic centre is a premium high standard centre located Opposite Assemblies of God church Addo Round-about, Badore Road Ajah Lekki Lagos. It boasts of modern, state-of-the-art equipment in a stylish and distinguished environment.', 'admin2', 'admin2', '2019-08-11 22:29:01', 1, 'adm', '2019-08-11 22:29:01'),
(3, 'biz-20190811223658TDOZ73', 'salon', 'Bauty Salon', 'Bola Gods time beauty salon ', 'oresanyaolawale1995@gmail.com', 'site/media/businesses/biz-20190811223658TDOZ73_.png', '', '08064113819', 'Ado Round about , badore road', 'Ajah', 'A hair dressing saloon. We specialise in Ganah weaving, braid, twisting, pedicure manicure, nails, eye lahes, wig Ganah weaving, wig braid, wig twisting, and any kind of wig deaigns. we supply wholesale and retails', 'admin2', 'admin2', '2019-08-11 22:36:58', 1, 'adm', '2019-08-11 22:44:56'),
(5, 'biz-20190819095257efFLj4', 'churches', 'Church', 'The Abiding Word Ministries (TAWN)', 'info@tawn.org', 'site/media/businesses/biz-20190819095257efFLj4_.png', '', 'info@tawn.org', '75B Ihiala Avenue New Haven Junction by Express', 'Enugu', 'The Abiding Word Ministries is a ministry geared to producing ministers for God through allowing active participation by all in the work. We desire, as God does, to reach all with the gospel of our Lord Jesus Christ. That is why we labor to place God in every heart. We will be glad if God could use us to bless you.', 'marketer1', 'marketer1', '2019-08-19 09:52:56', 1, 'adm', '2019-08-19 09:52:56'),
(6, 'biz-201908191006416PINf6', 'home', 'Real Etate', 'Tranz4m Limited ', 'tranz4mllc@gmail.com', 'site/media/businesses/biz-201908191006416PINf6_.png', '', '08162601334, 08022222436', 'Plot 9 Adewale Kolawale Crescent off T.F Kubuyi,  St. Oniru, Lekki Phase 1, Lagos', 'Lagos', 'Tranz4m Limited was established in year 2014 as a property maintenance, real estate, design & building firm. Since then our primary focus has been upon serving multinational service providers and property management firms and individuals, with various services related to civil construction, and procurement of building materials. Through our extensive task history of constructing ventures we have developed a customer service business philosophy. All employees, owner, project managers and field personnel aim to please.\r\nTranz4m is actively involved in property management, lease and sales of land. We have completed a number of deals with various local companies and individuals. Our motor is â€œWe believe in quality not quantityâ€ We are experienced in providing quality services and products.\r\n\r\nOur expertise across diverse construction domain is evident through the successful execution of various projects covering: \r\n-Residential construction â€“ Construction of multi storey building & ultra modern luxury villa and more.\r\n-Commercial & institutional building\r\n-Residential Maintenance & management- cleaning services, security services and remedial works.\r\n\r\n', 'marketer1', 'marketer1', '2019-08-19 10:06:38', 1, 'adm', '2019-08-19 10:06:38'),
(7, 'biz-20190819103106pHXSD7', 'others', ' Re-engineering & Automation,Business Continuity Training, Planning & Audits, Health, Safety & Environmental Training ', 'QRSM International Co. Ltd', 'info@qrsm-int.com', 'site/media/businesses/biz-20190819103106pHXSD7_.png', 'https://www.qrsm-int.com', ' 08023086888, 08095913158', 'Plot 18K Nana Okuribido Street, Ismail Estate, Idiroko â€“ Maryland Lagos', 'Lagos', 'QRSM International Company Ltd is an International Company registered in Nigeria that provides a range of\r\nprofessional services that includes but not limited to Process Re-engineering & Automation, Security &\r\nSurveillance solution, Management Systems Implementation, Training & Audits, Business Continuity Training,\r\nPlanning & Audits, Health, Safety & Environmental Training and Consulting Services to our individual and\r\ncorporate clients in Nigeria and beyond.', 'marketer1', 'marketer1', '2019-08-19 10:31:05', 1, 'adm', '2019-08-19 10:31:05'),
(8, 'biz-20190820151742IiCS48', 'market', 'Purchaser, Trader, Business', 'Medirac Global Resources', 'mediracglobal@gmail.com', 'site/media/businesses/biz-20190820151742IiCS48_.png', '', '07083535664', '2 Umudim Street, Badore', 'Ajah', 'Are you so busy that you hardly have the time to shop for your groceries and other needs? Are you a senior who needs help with groceries pick up, meals and food ingredients? Medirac Global Resources; is your dependable grocery shopper and we are close to you. \r\nWe only charge 7%.', 'admin', 'admin', '2019-08-20 15:17:42', 1, 'adm', '2019-08-20 15:17:42'),
(9, 'biz-201908211218125R6oV9', 'automotive', '', 'ThomasZen', 'thomasWenty@gmail.com', 'site/media/businesses/biz-201908211218125R6oV9_.png', 'https://monkeydigital.co/product/alexa-rank-service/', '88188325343', 'Santa Maria', 'Santa Maria', 'Having a better Alexa for your website will increase sales and visibility \r\n \r\nOur service is intended to improve the Global Alexa traffic rank of a website. It usually takes seven days to see the primary change and one month to achieve your desired three-month average Alexa Rank. The three-month average Alexa traffic rank is the one that Alexa.com shows on the Alexaâ€™s toolbar. \r\n \r\nFor more information visit our website \r\nhttps://monkeydigital.co/product/alexa-rank-service/ \r\n \r\nthanks and regards \r\nMike \r\nmonkeydigital.co@gmail.com', 'guest', 'guest', '2019-08-21 12:18:12', 0, 'ps', '2019-08-21 12:18:12'),
(10, 'biz-20190824215315gT6qe10', 'fashion', 'Interior Decor', 'GTP Curtain Interiors : Beautifying Homes;Establishing Relationship and Sharing Love', 'gpat2010@yahoo.com', 'site/media/businesses/biz-20190824215315gT6qe10_.png', '', '  08035838736, 08023072684', '4/13 Offina Shopping Complex, Kekere Bus Stop, Addo Road, Ajah Lekki Lagos or 16, Imperial Plaza Addo Rd Opp. Drug Matter Pharmacy Lekki -Ajah Lagos. ', 'Ajah Lagos', 'Call-in for your quality Blinds, Curtains, Wall Papers, 3D Panels, Fiber Pillows, Duvets, Curtain Accessories', 'marketer1', 'marketer1', '2019-08-24 21:53:15', 1, 'adm', '2019-08-24 21:53:15'),
(11, 'biz-20190824225547r5omC11', 'market', 'Supermarket/Shopping Mall', 'Shegsmick Payless Supermarket and Dry Cleaning', 'Shegsmickcleaners@yahoo.com', 'site/media/businesses/biz-20190824225547r5omC11_.png', '', '08170394734', 'Oando Filling Station Badore,  Opp. Papa Bus Stop Badore road Ajah', 'Lagos', 'Shegsmick Payless Supermarket offers a wide variety of food, beverages, provisions, toiletries and household products at an affordable price\r\n\r\nAlso, Shesmick Clearners  provide good services, with focus on quality cleaning and stress free packaging and delivery as you desire for affordable price', 'marketer1', 'marketer1', '2019-08-24 22:55:47', 1, 'adm', '2019-08-24 22:55:47'),
(12, 'biz-201908261536043D9V612', 'fashion', 'Fashion Designer, Tailor', 'Dare Odus Clothings', 'darejeje2014@gmail.com', 'site/media/businesses/biz-201908261536043D9V612_.png', '', '07064910787', 'Lagos', 'Lagos', 'We specialize in shirts, trousers, kaftans, agbada etc. We are the best for all your individual, ceremonial or aso-ebi needs. ', 'admin', 'admin', '2019-08-26 15:36:03', 1, 'adm', '2019-08-26 15:36:03'),
(13, 'biz-20190826225524mQbrZ13', 'others', 'Filling Stations', 'Oando Filling Station Badore', 'shegsmickcleaners@yahoo.com', 'site/media/businesses/biz-20190826225524mQbrZ13_.png', '', '08170394734', 'Oando Filling Station Badore, Opp. Papa Bus Stop Badore road Ajah', 'Ajah Lagos', 'We provide your oil and gas solutions, Lube services and lots more', 'marketer1', 'marketer1', '2019-08-26 22:55:23', 1, 'adm', '2019-08-26 22:55:23'),
(14, 'biz-20190827154950Lh2AT14', 'others', 'Plumbing', 'Abubakr Plumbing Nigeria Limited', 'abubakrplumbing@gmail.com', 'site/media/businesses/biz-20190827154950Lh2AT14_.png', '', '08173176081, 08138749140, 07034492248', '20 Addo Road, Pump & Sell B/Stop', 'Ajah, Lagos', 'We specialize in top-grade plumbing work such as Conduit, Surface and Installation. We are the best in plumbing in the Ajah Axis.', 'admin', 'admin', '2019-08-27 15:49:50', 1, 'adm', '2019-08-27 15:49:50'),
(15, 'biz-20190828104509M6kjy15', 'fashion', 'Fashion Designer', 'Adexystitches  ', 'adypwtty4me@yahoo.com', 'site/media/businesses/biz-20190828104509M6kjy15_.png', '', '08035575636', 'Shop 11 The Gate Plaza, off Oando Filling Station Badore Road Ajah', 'Lagos', 'A female fashion company that gives every woman the best look she can ask of.\r\nWe are into custom made dresses, wedding dress, all owambe asoebi styles, all English styles including trousers and blazers etc.\r\nWe train as well . We give all our student the best tips they need to standout in the fashion field.', 'marketer1', 'marketer1', '2019-08-28 10:45:09', 1, 'adm', '2019-08-28 10:45:09'),
(16, 'biz-20190828151149ikPnI16', 'others', 'INTERIOR DECORATION', 'OLUFUNMI COUTURE', 'oshiyemia@yahoo.com', 'site/media/businesses/biz-20190828151149ikPnI16_.png', '', '08050210014', 'TEJUOSHO MULTIPURPOSE SHOPPING COMPLEX', 'LAGOS', 'AT OLUFUNMI COUTURE, WE TRANSFORM YOUR ENVIRONMENT TASTEFULLY, OUR 100% AMERICAN COTTON BED SHEETS, DUVETS, CURTAINS AND THROW PILLOWS, OUR UNIQUE SHEETS ARE MADE FROM THE FINEST MATERIAL, ITS SOFT, HEAT FREE, EASY TO WASH AND DRY,ALL COMES AT A POCKET FRIENDLY PRICE, AT OLUFUNMI COUTURE, YOUR SATISFACTION IS OUR WATCHWORD.', 'guest', '', '2019-08-28 15:11:49', 1, 'ps', '2019-08-28 15:14:27'),
(17, 'biz-20190828163643Xy4OK17', 'health', 'Hospital', 'The Heritage Specialist Clinic', 'theheritagespecialistclinic@yahoo.com', 'site/media/businesses/biz-20190828163643Xy4OK17_.png', 'https://theheritagespecialistclinics.com', '08034664160, 08127710737', 'House 1, Greenville Drive, Greenville Estate, Badore Road', 'Ajah Lagos', 'We are into:\r\nPrimary Health Care Services\r\nPediatric Services with an inhouse Pediatrician\r\nMedical Examinations (Pre-School, Pre-employment, Pre-travel)\r\nImmunization services. (Adult &amp; Child Vaccination)\r\nCircumcision (Plasti Bell)\r\nFamiliy Planning Services\r\nAll manner of Health Counselling\r\nGeneral Fitness Check.\r\nFamily Medicine.', 'admin', '', '2019-08-28 16:36:43', 1, 'adm', '2019-08-28 16:36:43'),
(18, 'biz-20190829091021AkVyM18', 'automotive', '', 'Paulachife', 'aps@aps.com', 'site/media/businesses/biz-20190829091021AkVyM18_.png', 'https://drivesaversdatarecovery.com', '84195921352', 'Tomohon', 'Tomohon', 'Lost data? We can help! We can recover data from any device no matter what the problem. We have a partnership with Western Digital, Hitachi, and Seagate. Please visit our website to learn more: https://drivesaversdatarecovery.com Or read our great Yelp and Google reviews!', 'guest', '', '2019-08-29 09:10:21', 0, 'ps', '2019-08-29 09:10:21'),
(20, 'biz-20190829171948mNHEE19', 'fashion', 'Boutique', 'Hacen052 L-GQ Unisex Boutique', 'hacen052enterprise@gmail.com', 'site/media/businesses/biz-20190829171948mNHEE19_.png', 'http://hacen052unisexboutique.business.site', '+2348060932187, +2348028718567', 'HACEN052  L-GQ UNISEX BOUTIQUE â„¢ Shop 5 (Ground Floor) â€¢ Moriyanoluwa House Plaza â€¢ By Rockstone Villa Estate Gate, Bakery Bus Stop, Opposite Transformer, Badore Road, via Ajah-Badore Route, Lekki-Ajah, Lekki-Peninsular, Lagos State, Nigeria', 'Lekki-Ajah', 'Ladies &amp; Gentlemen | Corporate &amp; Casual | Original Premium Quality Apparels &amp; Accessories | We stock... | Jeans | Chinos | Joggers | Â¾ Shorts | &amp;quot;Jeggins&amp;quot; | Polo Tops [with &amp; without collars] | Shirts [Long &amp; Short Sleeves] | Jackets | Blouses | Gowns | Shoes | Slippers | Materials [African Print Fabrics] | Perfumes | Wrist-watches | Belts | Sunglasses | Laptop Bags â€¢ etc... | The Lifestyle Boutique | Fully loaded, live, up and running...', 'admin2', 'marketer1', '2019-08-29 17:19:48', 1, 'adm', '2019-08-29 17:19:48'),
(21, 'biz-20190830085423loYbR21', 'fashion', 'Mother care & Children wears', 'Rozy Baby Varieties', 'rosethaokere190@gmail.com', 'site/media/businesses/biz-20190830085423loYbR21_.png', '', '08032088836', 'Shop 8A offina shopping  complex, oke Ira kekere Ado road Ajah', 'Ajah Lagos', 'Rosy Baby Varieties deals on mother care products,  Back to school,  Men&amp;apos;s  wear, kiddies  wear and lot more. We give you the best product  at an affordable  prices.', 'marketer1', NULL, '2019-08-30 08:54:22', 1, 'adm', '2019-08-30 08:54:22'),
(22, 'biz-20190830093741FIu5322', 'schools', 'Education', 'ADE ABBA CRES&#039;SET SCHOOLS', 'abbacressetschool2008@yahoo.com', 'site/media/businesses/biz-20190830093741FIu5322_.png', '', '08033518381, 08059604309', '3,  Duckstone Ville Estate, Asekun Owoiya Street,  Lawanson Bus stop off Badore road, Ajah Lagos', 'Ajah Lagos', 'Impacting knowledge and character building,  thus moulding children to be future leader.', 'marketer1', 'marketer1', '2019-08-30 09:37:41', 1, 'adm', '2019-08-30 09:37:41'),
(23, 'biz-20190902185713qTS4W23', 'market', 'Building Materials', 'Olaoluwa Ventures', 'Adijatlukmon247@gmail.com', 'site/media/businesses/biz-20190902185713qTS4W23_.png', '', '08164763290', 'shop 14, Glory Plaza, Black Gate Bus Stop,Opposite Oando Filling Station,  Along Badore Road, Ajah Lagos', 'Ajah Lagos', 'Building materials merchants,  deals in all various size of nails,  binding wire and suppliers. Delivery to any location', 'marketer1', 'marketer1', '2019-09-02 18:57:13', 1, 'adm', '2019-09-02 18:57:13'),
(26, 'biz-20190904025550nAlok26', 'fashion', 'Unisex Boutique', 'Bounty Gold Boutique', 'akinolaoladayo818@gmail.com', 'site/media/businesses/biz-20190904025550nAlok26_.png', '', '08085320821 / 08056994330/08127812223', 'Remlek Bus stop..... Agbomabi Compound', 'Ajah Lagos', 'Bounty Gold Boutique deals in various Men-T. Shirt ( Long &amp; Short sleeve jean- Lady&amp;apos;s Gown ( Long &amp; short   Church wears) ( short &amp; Long skirt) Girls- A year old to 15 years \r\nBoy- jeans &amp; baby skirt at an affordable price.', 'marketer1', NULL, '2019-09-04 02:55:50', 1, 'adm', '2019-09-04 02:55:50'),
(25, 'biz-20190902190345tnXvs25', 'others', 'Laundry And Dry Cleaning Services', 'Immaculate Professional Laundry And Dry Cleaning Services', 'taiwofavour241@gmail.com', 'site/media/businesses/biz-20190902190345tnXvs25_.png', '', '09030827426', 'Shop 15 Glory Land Plaza Opposite Oando Filling Station Badore Ajah Lagos', 'Ajah Lagos', 'We Specialize in Cloth Washing,  Dry Cleaning,  Cloth Ironing and Cloth Packing.\r\nWe offer free home pick up and delivery\r\nBest service at affordable price.', 'marketer1', 'marketer1', '2019-09-02 19:03:45', 1, 'adm', '2019-09-02 19:03:45'),
(27, 'biz-201909040428448UTxM27', 'automotive', '', 'Ronaldfrore', 'bug.blah@yahoo.com', 'site/media/businesses/biz-201909040428448UTxM27_.png', 'http://manrebergthrop.tk/m26x', '88947985868', 'Tafraout', 'Tafraout', 'Prefer note an importantcontribution someone is concerned you. http://anilpopa.tk/ibuz', 'guest', NULL, '2019-09-04 04:28:44', 0, 'ps', '2019-09-04 04:28:44'),
(28, 'biz-20190904171336GqO0P28', 'market', 'Wine and spirits', 'STEPNIX PLEIS', 'stephane4love@gmail.com', 'site/media/businesses/biz-20190904171336GqO0P28_.png', '', '08036150297', 'Shop 13 Gloryland Plaza, Opposite Vintage Gym', 'Badore Ajah', 'We specialize in the supply of Wine, Rum, Gin, Champagne, Whisky, Vodka, Brandy, Cognac, Vermouth, Port Wine etc. When it comes to wine and spirits, look no further. We are the best in it.', 'admin', NULL, '2019-09-04 17:13:36', 1, 'adm', '2019-09-04 17:13:36'),
(29, 'biz-20190910085857wcnZt29', 'automotive', '', 'DorothyScate', 'sundance677@yahoo.com', 'site/media/businesses/biz-20190910085857wcnZt29_.png', 'http://www.google.com', '85397856539', 'Yako', 'Yako', 'Weâ€™re TrustMateÂ® Escrow in Nigeria. A Third-Party Payment Protection Against Scams! Have your customers ever worried about trusting to pay you first before you deliver goods or service? NEVER again when you let them use TrustMateÂ® Escrow payment protection solution to build trust and confedence when payment risk matter. \r\nNo matter what business you are in, your buyers or customer will be more willing and confident to pay you through TrustMateÂ® instead of paying you directly. You will make more money because your customer will not have the fear to pay you directly knowing that their money is protect by TrustMateÂ® Escrow until your customers receive their goods or services they paid for. \r\nWe keep both the Sellers (Business) &amp; Buyers (Customers) Honest in all transactions to Avoid 419 Scams. \r\nNever lose business again because your customers are NOT sure if your goods or service are legit. Use TrustMateÂ® Escrow Payment Protection to confidently accept payment confidently from your potential customers \r\nLet your customer Pay Risk-Free in confidence through TrustMateÂ® Escrow payment solution especially when they have the fear of being scammed or defrauded. \r\nUse TrustMateÂ® Escrow When Payment Protection &amp; Peace of Mind Matter For Your Customers! \r\n \r\nhttp://TrustMateEscrow.com, or Download our App TODAY!', 'guest', NULL, '2019-09-10 08:58:57', 0, 'ps', '2019-09-10 08:58:57'),
(30, 'biz-201909101517306PFDG30', 'automotive', '', 'PatsyDioma', 'patsyUnund@gmail.com', 'site/media/businesses/biz-201909101517306PFDG30_.png', 'https://googlealexarank.com/index.php/seo-packages/', '84333252929', 'Orange Walk', 'Orange Walk', 'hi there \r\nWe all know there are no tricks with google anymore \r\nSo, instead of looking for ways to trick google, why not perform a whitehat results driven monthly SEO Plan instead. \r\n \r\nCheck out our plans \r\nhttps://googlealexarank.com/index.php/seo-packages/ \r\n \r\nWe know how to get you into top safely, without risking your investment during google updates \r\n \r\nthanks and regards \r\nMike \r\nstr8creativecom@gmail.com', 'guest', NULL, '2019-09-10 15:17:30', 0, 'ps', '2019-09-10 15:17:30'),
(31, 'biz-20190910153852GgPAC31', 'recreations', 'Restaurant', 'Posh Bukka', 'poshbukka1@gmail.com', 'site/media/businesses/biz-20190910153852GgPAC31_.png', '', '08168859465', 'Onanefe Schuler Street', 'Ajah', 'Posh Bukka is the finest local restaurant within the Ajah-Badore axis. We also specialize in catering and delivery services. Check us out for all  mouth-watering fried rice, jollof rice, swallows, assorted meats, fish, amala, fufu, ofada rice etc', 'admin', 'admin', '2019-09-10 15:38:52', 1, 'adm', '2019-09-10 15:38:52'),
(32, 'biz-201909101844220ydCQ32', 'automotive', '', 'AveryfeX', 'raphaeAppatty@gmail.com', 'site/media/businesses/biz-201909101844220ydCQ32_.png', 'https://www.google.com', '87188728682', 'Baghdad', 'Baghdad', 'Hello!  ajahcity.com.ng \r\n \r\nHave you ever heard of sending messages via contact forms? \r\n \r\nThink of that your letter will be readseen by hundreds of thousands of your future buyerscustomers. \r\nYour message will not go to the spam folder because people will send the message to themselves. As an example, we have sent you our suggestion  in the same way. \r\n \r\nWe have a database of more than 30 million sites to which we can send your letter. Sites are sorted by country. Unfortunately, you can only select a country when sending a letter. \r\n \r\nThe cost of one million messages 49 USD. \r\nThere is a discount program when you buy  more than two million letter packages. \r\n \r\n \r\nFree test mailing of 50,000 messages to any country of your choice. \r\n \r\n \r\nThis letter is created automatically. Please use the contact details below to contact us. \r\n \r\n \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  FeedbackForm2019 \r\nEmail - Contact@feedbackmessages.com', 'guest', NULL, '2019-09-10 18:44:22', 0, 'ps', '2019-09-10 18:44:22'),
(33, 'biz-20190920081224LIjUp33', 'automotive', '', 'JoshuaFam', 'fax.promotion@consultant.com', 'site/media/businesses/biz-20190920081224LIjUp33_.png', 'https://www.google.com/', '82148977252', 'Al Ladhiqiyah', 'Al Ladhiqiyah', 'FROM: THE DESK OF THE VICE PRESIDENT. \r\nWEB PROMOTION PROGRAM. \r\nTELFax: +34 93 220 5465 \r\nEMAIL: af.antocrespo@consultant.com \r\n------------------------------------------ \r\nREF NO: EJk /2551256004/19 \r\nBATCH NO: 010/50013ALSP \r\n \r\nAttn: Beneficiary \r\n \r\nWe are pleased to inform you of the release of the results of our ES.INTERNATIONAL WEB PROMOTION PROGRAM. held on the 15TH OF AUGUST 2019.Due to mix up of numbers and addresses, the result were released on the 18TH OF SEPTEMBER 2019.Your e-Website was attached to ticket number 90622089237-067 with serial number 169-470 drew lucky numbers 9-24-06-18-05-26, which consequently won our website lottery program in the 2nd category. You have therefore been approved for a lump sum pay out of â‚¬1,000,000:00 (ONE MILLION EUROS ONLY). CONGRATULATION!!!!!!!!!!! \r\n \r\nAll participants were selected through a computer ballot system drawn from 25,000 website addresses from America, Asia, Africa, Europe, Canada and New Zealand as part of our international web promotion program. \r\n \r\nTo start your claim, please contact your claims agent DON MARTIN JOSE Foreign service manager (ALLIANZ SEGUROS SA) Tel: +34 632 577 591, Email: infomatinj@gmail.com. \r\n \r\nFor all necessary verifications and to avoid impersonation of vital informationâ€™s above, please fills the payment processing form below and retunes it to your claims agent to this email: infomatinj@gmail.com \r\nCongratulations once again. \r\n \r\n*Beneficiary Full name: -------------------- \r\n*Website: --------------------------------- \r\n*Email Address: -------------------------- \r\n*Tel: ------------------------------------ \r\n*Nationality: ----------------------------- \r\n*REF NO----------------------------------- \r\n*BATCH NO--------------------------------- \r\n*Mode of Payment------------------------- \r\n \r\nSincerely yours, \r\n \r\nMRS MARIA LOPEZ DANIEL. \r\n(ES.WEBSITE LOTTERY COORDINATOR)', 'guest', NULL, '2019-09-20 08:12:24', 0, 'ps', '2019-09-20 08:12:24'),
(34, 'biz-20190920223213jmQHX34', 'automotive', '', 'Hildaimmef', 'aspang@wienerstaedtische.at', 'site/media/businesses/biz-20190920223213jmQHX34_.png', 'http://facebook.comÐ¿Ñ˜ÐprizeÐ¿Ñ˜Ð@0X4E18DCC7/iCoo7', '86857215566', 'Bereeda', 'Bereeda', 'We would like to inform that you liked a comment ID:35915743 in a social network , January 9, 2019 at 19:48 \r\nThis like has been randomly selected to win the seasonal Â«Like Of The YearÂ» 2019 award! \r\nhttp://facebook.comÐ¿Ñ˜ÐmailÐ¿Ñ˜Ð@0X4E18DCC7/wHpMy', 'guest', NULL, '2019-09-20 22:32:13', 0, 'ps', '2019-09-20 22:32:13'),
(35, 'biz-20190926095356u6GVU35', 'others', 'COMPUTER TRAINING SALES AND SERVICES', 'Dunis Technologies Limited', 'info@dunistech.ng', 'site/media/businesses/biz-20190926095356u6GVU35_.png', 'https://dunistech.ng', '07032276597', 'Mike Otutu street Graceland, Graceland Estate', 'Ajiwe', 'We are an ICT/IT professional training company. We also offer computer sales (new and original HP products) and services', 'guest', 'admin', '2019-09-26 09:53:56', 1, 'ps', '2019-09-26 09:53:56'),
(36, 'biz-20190927195859vBqtc36', 'automotive', '', 'David Gomez', 'sergiodumass@gmail.com', 'site/media/businesses/biz-20190927195859vBqtc36_.png', 'https://www.google.com', '89768169785', 'Hohenems', 'Hohenems', 'Dearest in mind, \r\n \r\nI would like to introduce myself for the first time. My name is Barrister David Gomez Gonzalez, the personal lawyer to my late client. \r\nWho worked as a private businessman in the international field. In 2012, my client succumbed to an unfortunate car accident. My client was single and childless. \r\nHe left a fortune worth $12,500,000.00 Dollars in a bank in Spain. The bank sent me message that I have to introduce a beneficiary or the money in their bank will be confiscate. My purpose of contacting you is to make you the Next of Kin. \r\nMy late client left no will, I as his personal lawyer, was commissioned by the Spanish Bank to search for relatives to whom the money left behind could be paid to. I have been looking for his relatives for the past 3 months continuously without success. Now I explain why I need your support, I have decided to make a citizen of the same country with my late client the Next of Kin. \r\n \r\nI hereby ask you if you will give me your consent to present you to the Spanish Bank as the next of kin to my deceased client. \r\nI would like to point out that you will receive 45% of the share of this money, 45% then I would be entitled to, 10% percent will be donated to charitable organizations. \r\n \r\nIf you are interested, please contact me at my private contact details by Tel: 0034-604-284-281, Fax: 0034-911-881-353, Email: amucioabogadosl019@gmail.com \r\nI am waiting for your answer \r\nBest regards, \r\n \r\nLawyer: - David Gomez Gonzalez', 'guest', NULL, '2019-09-27 19:58:59', 0, 'ps', '2019-09-27 19:58:59'),
(37, 'biz-20191004093558BNkzy37', 'automotive', '', 'RobertCem', 'support@wizfairvacation.com', 'site/media/businesses/biz-20191004093558BNkzy37_.png', 'https://www.google.com', '87242774981', 'Estepona', 'Estepona', 'Wizfair Vacation Provide Domestic &amp; International Flight &amp; Package International Travel Package , Domestic Travel Package , Cheap international package , Honeymoon Package \r\n \r\nEmail : contact@wizfairvacation.com \r\nUk : 03300240982 \r\nUSA: 1-800-560-0189', 'guest', NULL, '2019-10-04 09:35:58', 0, 'ps', '2019-10-04 09:35:58'),
(38, 'biz-20191005014002vlQNK38', 'automotive', '', 'Katienus', 'sr@reitmaier-consulting.at', 'site/media/businesses/biz-20191005014002vlQNK38_.png', 'http://facebook.com+mail+@1310252231/Iv7WQw', '83143318667', 'Ligatne', 'Ligatne', 'We would like to inform that you liked a comment ID:35915743 in a social network , January 9, 2019 at 19:48 \r\nThis like has been randomly selected to win the seasonal Â«Like Of The YearÂ» 2019 award! \r\nhttp://facebook.com+mail+@1310252231/5zbqX', 'guest', NULL, '2019-10-05 01:40:02', 0, 'ps', '2019-10-05 01:40:02'),
(39, 'biz-20191007200131utgyB39', 'automotive', '', 'CrystalGaive', 'info@campingorlandoinchianti.it', 'site/media/businesses/biz-20191007200131utgyB39_.png', 'http://facebook.comÐ¿Ñ˜ÐemailÐ¿Ñ˜Ð@0X4E18DCC7/ZdALw', '86112889968', 'Muscat', 'Muscat', 'We would like to inform that you liked a comment ID:35915743 in a social network , January 9, 2019 at 19:48 \r\nThis like has been randomly selected to win the seasonal Â«Like Of The YearÂ» 2019 award! \r\nhttp://facebook.com+email+@1310252231/ji6gu', 'guest', NULL, '2019-10-07 20:01:31', 0, 'ps', '2019-10-07 20:01:31'),
(40, 'biz-20191008171135ifxlD40', 'automotive', '', 'DavidEmaw', 'amucioabogados610@mail.com', 'site/media/businesses/biz-20191008171135ifxlD40_.png', 'https://www.google.com/', '89336323434', 'Cheltenham', 'Cheltenham', 'Dearest in mind, \r\n \r\nI would like to introduce myself for the first time. My name is Barrister David Gomez Gonzalez, the personal lawyer to my late client. \r\nWho worked as a private businessman in the international field. In 2012, my client succumbed to an unfortunate car accident. My client was single and childless. \r\nHe left a fortune worth $12,500,000.00 Dollars in a bank in Spain. The bank sent me message that I have to introduce a beneficiary or the money in their bank will be confiscate. My purpose of contacting you is to make you the Next of Kin. \r\nMy late client left no will, I as his personal lawyer, was commissioned by the Spanish Bank to search for relatives to whom the money left behind could be paid to. I have been looking for his relatives for the past 3 months continuously without success. Now I explain why I need your support, I have decided to make a citizen of the same country with my late client the Next of Kin. \r\n \r\nI hereby ask you if you will give me your consent to present you to the Spanish Bank as the next of kin to my deceased client. \r\nI would like to point out that you will receive 45% of the share of this money, 45% then I would be entitled to, 10% percent will be donated to charitable organizations. \r\n \r\nIf you are interested, please contact me at my private contact details by Tel: 0034-604-284-281, Fax: 0034-911-881-353, Email: amucioabogados@infocaixa.info \r\n \r\nI am waiting for your answer \r\n \r\nBest regards, \r\n \r\nLawyer: - David Gomez Gonzalez', 'guest', NULL, '2019-10-08 17:11:35', 0, 'ps', '2019-10-08 17:11:35'),
(41, 'biz-20191008213949sX7zE41', 'automotive', '', 'RodgerAgona', 'rodgerCah@outlook.com', 'site/media/businesses/biz-20191008213949sX7zE41_.png', 'https://monkeydigital.co/product/unique-domains-backlinks/', '83323463164', 'Linguere', 'Linguere', 'When you order 1000 backlinks with this service you get 1000 unique domains, Only receive 1 backlinks from each domain. All domains come with DA above 15-20 and with actual page high PA values. Simple yet very effective service to improve your linkbase and SEO metrics. \r\n \r\nOrder this great service from here today: \r\nhttps://monkeydigital.co/product/unique-domains-backlinks/ \r\n \r\nMultiple offers available \r\n \r\nthanks and regards \r\nMike \r\nmonkeydigital.co@gmail.com', 'guest', NULL, '2019-10-08 21:39:49', 0, 'ps', '2019-10-08 21:39:49'),
(42, 'biz-20191009075525CzKqO42', 'automotive', '', 'Lornated', 'info2@revlight.com.sg', 'site/media/businesses/biz-20191009075525CzKqO42_.png', 'https://youtu.be/VPG82dnXfWY', '82358541979', 'Comilla', 'Comilla', 'Dear Customer, \r\n \r\nWe manufacture High-Definition Security Surveillance Systems for Residential &amp; Commercial uses. All our cameras are metal weatherproof and comes with sony sensor for maximum quality. \r\nIPcam video quality: https://youtu.be/VPG82dnXfWY \r\n \r\n+44 330-024-0982 \r\n+1 866-655-7056 \r\n+91 96508-01219 \r\n+65 6678-6557 \r\nEmail: sales@revlightsecurity.com \r\nW: www.revlightsecurity.com \r\n \r\nHave a nice day! :) \r\n \r\nregards, \r\nJessie Chang \r\n7 Temasek Boulevard, Level 32, Suntec Tower One, Singapore 038987', 'guest', NULL, '2019-10-09 07:55:25', 0, 'ps', '2019-10-09 07:55:25'),
(43, 'biz-201910101123199kZNe43', 'automotive', '', 'Pedro Molina', 'pedrom@uicinsuk.com', 'site/media/businesses/biz-201910101123199kZNe43_.png', 'https://www.google.com', '86575952364', 'Praia', 'Praia', 'Dear Sir, \r\nAm contacting you to partner with me to secure the life insurance of my late client, to avoid it being confiscated. For more information, please contact me on + 447452275874 or pedrom@uicinuk.com \r\nRegards \r\nPedro Molina', 'guest', NULL, '2019-10-10 11:23:19', 0, 'ps', '2019-10-10 11:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `businesses_backup`
--

CREATE TABLE `businesses_backup` (
  `id` int(255) NOT NULL,
  `token` varchar(30) NOT NULL,
  `category` varchar(20) NOT NULL,
  `subcategory` tinytext NOT NULL,
  `bizname` tinytext NOT NULL,
  `email` varchar(100) NOT NULL,
  `bizlogo` longtext NOT NULL,
  `url` tinytext NOT NULL,
  `phone` varchar(255) NOT NULL,
  `bizaddr` tinytext NOT NULL,
  `city` varchar(50) NOT NULL,
  `briefing` longtext NOT NULL,
  `addedby` varchar(20) NOT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `substatus` tinyint(1) NOT NULL,
  `paymenttype` varchar(10) NOT NULL,
  `daterenewed` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(255) NOT NULL,
  `token` varchar(50) NOT NULL,
  `jobtitle` tinytext NOT NULL,
  `category` tinytext NOT NULL,
  `company` tinytext NOT NULL,
  `description` longtext NOT NULL,
  `role` longtext NOT NULL,
  `expirydate` datetime NOT NULL,
  `postedby` tinytext NOT NULL,
  `addedby` varchar(200) NOT NULL,
  `updatedby` varchar(200) DEFAULT NULL,
  `logo` tinytext NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `salarytype` varchar(2) NOT NULL,
  `payment` varchar(11) NOT NULL,
  `url` tinytext NOT NULL,
  `city` tinytext NOT NULL,
  `location` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `open` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `token`, `jobtitle`, `category`, `company`, `description`, `role`, `expirydate`, `postedby`, `addedby`, `updatedby`, `logo`, `email`, `phone`, `dateadded`, `dateupdated`, `salary`, `salarytype`, `payment`, `url`, `city`, `location`, `status`, `open`) VALUES
(2, 'job-201909031556210f6Cn2', 'Marketing Analyst', 'Information Technology', 'Hoffenheim Technologies', 'We are looking for goal-oriented marketing analyst. Someone who can think outside the box and always be looking for ways to make things happen. If you have what it takes, then this job is for you.', 'Your job role will entail outbound marketing. Always in touch with our clients and keep them abreast of new updates.', '2019-10-03 00:00:00', 'Leonard A. Oshiyemi', 'guest', NULL, 'site/media/jobs/job-201909031556210f6Cn2_.png', 'oshiyemi@gmail.com', '08115789252', '2019-09-03 15:56:21', '2019-09-03 15:56:21', '40000.00', 'm', 'ps', 'https://hoffenheimtechnologies.com', 'Lekki', '10 Tom Ogboi Avenue', 1, 1),
(5, 'job-20190911154509adHww3', 'Freelance Reporters', 'Media', 'Ilupeju Today Community Newspaper', 'We are seeking focused and driven freelance reporters who live in or around the Lekki Peninsula to report news stories and other events happening along the entire length of the Lekki corridor. Selected candidates must find, develop, investigate, and write their own stories. Attractive remuneration offered. Send application letter or CV and one writing sample to careers@todaycommunitynewspapers.com', 'Freelance Reporters', '2019-12-11 00:00:00', 'Dayo Akintobi', 'admin2', NULL, 'site/media/jobs/job-20190911154509adHww3_.png', 'careers@todaycommunitynewspapers.com', '00000000000', '2019-09-11 15:45:09', '2019-09-11 16:56:05', '0.00', 'm', 'adm', '', 'Lekki', 'Lekki Peninsula', 1, 1),
(6, 'job-20190927135319IemXg6', 'Business Development Executive', 'Business Development', 'Promolink Media Concept', 'Promolink Media Concept is a fully integrated branding service Company that is passionate about doing exceptional work for exceptional people. Creative ideas that assist organisations in achieving target ROIs support our expertise. \r\n\r\nJob Description\r\nBusiness Development Executive \r\nDue to fast growth in our business, we are hiring a Business Development Executive to focus on Customer acquisition, lead generation, and prospect management, as this role will garner and meet with potential clients.', 'Specific Job responsibilities will include but not limited to:\r\nâ€¢	Identifying, qualifying, and securing business opportunities; coordinating business generation activities; developing customized targeted sales strategies\r\nâ€¢	Building business relationships with current and potential clients\r\nâ€¢	Understanding client needs and offering solutions and support; answering potential client questions and follow-up call questions; responding to client requests for proposals (RFPs)\r\nâ€¢	Collaborating with sales and leadership to secure, retain, and grow accounts\r\nâ€¢	Creating informative presentations; presenting and delivering information to potential clients at client meetings, industry exhibits, trade shows, and conferences\r\nâ€¢	Contacting potential clients to establish rapport and arrange meetings. Planning and overseeing new marketing initiatives. Researching organizations and individuals to find new opportunities. Increasing the value of current customers while attracting new ones. Finding and developing new markets and improving sales. Attending conferences, meetings, and industry events. Developing quotes and proposals for clients. Developing goals for the development team and business growth and ensuring they are met.\r\nâ€¢	Collaborating with management on sales goals, planning, and forecasting; maintaining short- and long-term business development plans  \r\n\r\nRequired Skills\r\nTo excel in this role, you should:\r\n 	Be an active listener, have a compelling sales personality;\r\n 	have a hunger to chase and close new business from cold calls and inbound warm leads.\r\n 	Strong communication skills and IT fluency. \r\n 	Have ability to manage complex projects and multi-task. \r\n 	Have Excellent organizational skills and ability to flourish with minimal guidance, be proactive, and handle uncertainty.\r\n 	Proficient in Word, Excel, Outlook, and PowerPoint. Compensation Basic salary + Opportunities to Earn. \r\n\r\nEducational Qualifications and Experience\r\n 	Experience with lead generation and prospect management\r\n 	Excellent verbal and written communication skills\r\n 	Minimum of a Bachelor of Science Degree in Business Administration/Marketing with 2 yearsâ€™ post NYSC experience in the marketing field.\r\n 	Interested and qualified candidates should send their CV and Application to: promolinkmedia2010@gmail.com using the &quot;Job Title&quot; as the subject of the email.', '2019-11-29 00:00:00', 'Promolink Media Concept', 'admin', NULL, 'site/media/jobs/job-20190927135319IemXg6_.png', 'promolinkmedia2010@gmail.com', '00000000000', '2019-09-27 13:53:19', '2019-09-27 13:53:19', '0.00', 'm', 'adm', '', 'Lagos', 'Oshodi', 1, 1),
(7, 'job-20191008171013NJk0g7', 'Web Developer', 'Information Technology', 'Hoffenheim Technologies Limited', 'Develeop Websit User Interface and Platform Responsiveness', 'Have Deep Knowledge of HTML, CSS, Javascript &amp; JQuery, Bootstrap, And Idea of Graphic Handlings', '2019-10-15 00:00:00', 'Akinniyi Adeola', 'guest', NULL, 'site/media/jobs/job-20191008171013NJk0g7_.png', 'amajoyeogbe@hoffenheimtechnologies.com', '08188549307', '2019-10-08 17:10:13', '2019-10-08 17:10:13', '56000.00', 'm', 'ps', '', 'Lekki Phase I', '10 Top Ogboyi Avenue', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_backup`
--

CREATE TABLE `jobs_backup` (
  `id` bigint(255) NOT NULL,
  `token` varchar(50) NOT NULL,
  `jobtitle` tinytext NOT NULL,
  `category` tinytext NOT NULL,
  `company` tinytext NOT NULL,
  `description` longtext NOT NULL,
  `role` longtext NOT NULL,
  `expirydate` datetime NOT NULL,
  `postedby` tinytext NOT NULL,
  `addedby` varchar(200) NOT NULL,
  `updatedby` varchar(200) DEFAULT NULL,
  `logo` tinytext NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `salarytype` varchar(2) NOT NULL,
  `payment` varchar(11) NOT NULL,
  `url` tinytext NOT NULL,
  `city` tinytext NOT NULL,
  `location` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `open` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs_backup`
--

INSERT INTO `jobs_backup` (`id`, `token`, `jobtitle`, `category`, `company`, `description`, `role`, `expirydate`, `postedby`, `addedby`, `updatedby`, `logo`, `email`, `phone`, `dateadded`, `dateupdated`, `salary`, `salarytype`, `payment`, `url`, `city`, `location`, `status`, `open`) VALUES
(3, 'job-20190903162549tJrS03', 'IT Officer', 'Information Technology', 'Adex Tech', 'Some Desc here', 'Roles and Reslonsibilities here', '2019-09-19 00:00:00', 'Adesola Akinsanya', 'guest', NULL, 'site/media/jobs/job-20190903162549tJrS03_.png', 'abdulwasihitopee4real@gmail.com', '08090584541', '2019-09-03 16:25:49', '2019-09-03 16:25:49', '2000.00', 'm', 'adm', '', 'Ajah', 'Some Address', 0, 1),
(1, 'job-20190903104511fY64D', 'Job Title', 'Information Technology', 'Testing Tech', 'Some description heres', 'Some Roles here', '2019-09-12 00:00:00', 'Abdulwasiu', 'guest', NULL, 'site/media/jobs/job-20190903104511fY64D_.png', 'abdulwasihitopee4real@gmail.com', '+2348188549307', '2019-09-03 10:45:11', '2019-09-04 12:48:29', '20000.00', 'm', 'ps', 'https://textweb.com.ng', 'Lekki', 'Some Address Here', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL,
  `transid` varchar(255) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `billingid` int(255) NOT NULL,
  `amount` decimal(65,2) NOT NULL,
  `transdate` datetime DEFAULT NULL,
  `paymenttype` varchar(50) NOT NULL,
  `paymentduration` int(10) NOT NULL DEFAULT '1',
  `paidby` varchar(100) NOT NULL,
  `paymentstatus` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `transid`, `token`, `billingid`, `amount`, `transdate`, `paymenttype`, `paymentduration`, `paidby`, `paymentstatus`) VALUES
(1, 'adm-nQ7az', 'biz-201908101731084TnJB', 0, '2000.00', '2019-08-10 17:31:07', 'adm', 1, 'contact@hoffenheimtechnologies.com', 1),
(2, 'adm-VSZ4p3', 'biz-20190811222903Ad3bQ2', 0, '2000.00', '2019-08-11 22:29:01', 'adm', 1, 'bluirayshealthcareservices@gmail.com', 1),
(3, 'adm-yEkwv4', 'biz-20190811223658TDOZ73', 0, '2000.00', '2019-08-11 22:36:58', 'adm', 1, 'oresanyaolawale1995@gamail.com', 1),
(4, 'adm-jlCrj4', 'adv-20190814132036kXbh14', 0, '15000.00', '2019-08-14 13:20:36', 'adm', 1, 'hoffenheimtech@gmail.com', 1),
(5, 'aclvu5j821', 'biz-20190814190529hjQ294', 0, '2000.00', '2019-08-14 19:05:47', 'ps', 1, 'oshiyemi@gmail.com', 1),
(6, 'adm-j12fd6', 'biz-20190819095257efFLj4', 0, '2000.00', '2019-08-19 09:52:56', 'adm', 1, 'info@tawn.org', 1),
(7, 'adm-Wseu87', 'biz-201908191006416PINf6', 0, '2000.00', '2019-08-19 10:06:38', 'adm', 1, 'tranz4mllc@gmail.com', 1),
(8, 'adm-xw3ol8', 'biz-20190819103106pHXSD7', 0, '2000.00', '2019-08-19 10:31:05', 'adm', 1, 'info@qrsm-int.com', 1),
(9, 'adm-FwTHg9', 'biz-20190820151742IiCS48', 0, '2000.00', '2019-08-20 15:17:42', 'adm', 1, 'mediracglobal@gmail.com', 1),
(10, 'adm-98GlE10', 'biz-20190824215315gT6qe10', 0, '2000.00', '2019-08-24 21:53:15', 'adm', 1, 'gpat2010@yahoo.com', 1),
(11, 'adm-iNPS611', 'biz-20190824225547r5omC11', 0, '2000.00', '2019-08-24 22:55:47', 'adm', 1, 'Shegsmickcleaners@yahoo.com', 1),
(12, 'adm-JfjjD12', 'gig-20190826112236yGphb', 0, '15000.00', '2019-08-26 11:22:34', 'adm', 1, 'abdulwasihitopee4real@gmail.com', 1),
(13, 'adm-58n1713', 'biz-20190826152848985be12', 0, '2000.00', '2019-08-26 15:28:47', '', 1, '', 1),
(14, 'adm-QRnDH14', 'biz-201908261536043D9V612', 0, '2000.00', '2019-08-26 15:36:03', 'adm', 1, 'darejeje2014@gmail.com', 1),
(15, 'adm-gueP015', 'biz-20190826225524mQbrZ13', 0, '2000.00', '2019-08-26 22:55:23', 'adm', 1, 'shegsmickcleaners@yahoo.com', 1),
(16, 'adm-L6Asy16', 'biz-20190827154950Lh2AT14', 0, '2000.00', '2019-08-27 15:49:50', 'adm', 1, 'abubakrplumbing@gmail.com', 1),
(17, 'adm-tfP3617', 'biz-20190828104509M6kjy15', 0, '2000.00', '2019-08-28 10:45:09', 'adm', 1, 'adypwtty4me@yahoo.com', 1),
(18, 'y6dor1pox7', 'biz-20190828151149ikPnI16', 0, '2000.00', '2019-08-28 15:14:27', 'ps', 1, 'oshiyemia@yahoo.com', 1),
(19, 'adm-KZqyM19', 'biz-20190828163643Xy4OK17', 0, '2000.00', '2019-08-28 16:36:43', 'adm', 1, 'theheritagespecialistclinic@yahoo.com', 1),
(20, 'adm-eEZER20', 'biz-20190828190525AoIkx18', 0, '2000.00', '2019-08-28 19:05:25', 'adm', 1, 'abdulwaihitopee4real@gmail.com', 1),
(21, 'adm-AqY8k21', 'adv-20190829142158mHDpx19', 0, '15000.00', '2019-08-29 14:21:58', 'adm', 1, 'abdulwasihitopee4real@gmail.com', 1),
(22, 'adm-C4h0G22', 'biz-20190829163323oizfu19', 0, '2000.00', '2019-08-29 16:33:23', 'adm', 1, 'abdulwaihitopee4real@gmail.com', 1),
(23, 'adm-H8HWZ23', 'biz-20190829171948mNHEE19', 0, '2000.00', '2019-08-29 17:19:48', 'adm', 1, 'hacen052enterprise@gmail.com', 1),
(24, 'adm-nFtaB24', 'gig-20190829184155dkWn42', 0, '5000.00', '2019-08-29 18:41:55', 'adm', 1, 'abdulwasihitopee4real@gmail.com', 1),
(25, 'adm-h40Uy25', 'biz-20190830085423loYbR21', 0, '2000.00', '2019-08-30 08:54:22', 'adm', 1, 'rosethaokere190@gmail.com', 1),
(26, 'adm-Z8Lxj26', 'biz-20190830093741FIu5322', 0, '2000.00', '2019-08-30 09:37:41', 'adm', 1, 'abbacressetschool2008@yahoo.com', 1),
(27, 'adm-HTKpk27', 'biz-20190902185713qTS4W23', 0, '5000.00', '2019-09-02 18:57:13', 'adm', 1, 'Adijatlukmon247@gmail.com', 1),
(28, 'adm-MePIW28', 'biz-20190902190333c7qj924', 0, '5000.00', '2019-09-02 19:03:33', 'adm', 1, 'taiwofavour241@gmail.com', 1),
(29, 'adm-cMmor29', 'biz-20190902190345tnXvs25', 0, '5000.00', '2019-09-02 19:03:45', 'adm', 1, 'taiwofavour241@gmail.com', 1),
(30, 'adm-I5egY30', 'job-20190903104511fY64D', 0, '1000.00', '2019-09-03 16:25:49', 'adm', 1, 'abdulwasihitopee4real@gmail.com', 1),
(31, 'adm-qoFz631', 'biz-20190904025550nAlok26', 0, '5000.00', '2019-09-04 02:55:50', 'adm', 1, 'akinolaoladayo818@gmail.com', 1),
(32, 'adm-C3hAD32', 'biz-20190904171336GqO0P28', 0, '5000.00', '2019-09-04 17:13:36', 'adm', 1, 'stephane4love@gmail.com', 1),
(33, 'adm-wHNId33', 'biz-20190910153852GgPAC31', 0, '2000.00', '2019-09-10 15:38:52', 'adm', 1, 'poshbukka1@gmail.com', 1),
(34, '6u6qpr54d9', 'res-20190910174035knb6U', 0, '1500.00', '2019-09-10 17:41:27', 'ps', 1, 'abdulwasihitopee4real@gmail.com', 1),
(35, 'adm-bbfTq35', 'job-20190911154509adHww3', 0, '1000.00', '2019-09-11 15:45:09', 'adm', 1, 'careers@todaycommunitynewspapers.com', 1),
(36, 'adm-G6Se936', 'res-20190911174214tMbCe2', 0, '1500.00', '2019-09-11 17:42:14', 'adm', 1, 'nwunyechike@gmail.com', 1),
(37, 'adm-Nmd1i37', 'job-20190927135319IemXg6', 0, '1000.00', '2019-09-27 13:53:19', 'adm', 1, 'promolinkmedia2010@gmail.com', 1),
(38, 'adm-XjyHM38', 'adv-201910021219588ocqU37', 0, '15000.00', '2019-10-02 12:19:58', 'adm', 1, 'info@dunistech.ng', 1),
(39, 'adm-jUsvG39', 'gig-20191004153450wi5Bu', 0, '3000.00', '2019-10-04 15:34:50', 'adm', 1, 'cyaabusinesfair@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_backup`
--

CREATE TABLE `payment_backup` (
  `id` bigint(20) NOT NULL,
  `transid` varchar(255) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `billingid` int(255) NOT NULL,
  `amount` decimal(65,2) NOT NULL,
  `transdate` datetime DEFAULT NULL,
  `paymenttype` varchar(50) NOT NULL,
  `paymentduration` int(10) NOT NULL DEFAULT '1',
  `paidby` varchar(100) NOT NULL,
  `paymentstatus` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_backup`
--

INSERT INTO `payment_backup` (`id`, `transid`, `token`, `billingid`, `amount`, `transdate`, `paymenttype`, `paymentduration`, `paidby`, `paymentstatus`) VALUES
(1, 'adm-1ixel', 'biz-20190809104349lPA9x', 0, '2000.00', '2019-08-09 10:43:48', 'adm', 1, 'contact@hoffenheimtechnologies.com', 1),
(2, 'adm-qkRbk2', 'biz-20190809105726U8jmy2', 0, '2000.00', '2019-08-09 10:57:24', 'adm', 1, 'bluirayshealthcareservices@gmail.com', 1),
(3, 'adm-zrviB3', 'biz-20190809110909NCMBx3', 0, '2000.00', '2019-08-09 11:09:08', 'adm', 1, 'oresanyaolawale1995@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paystack_hits`
--

CREATE TABLE `paystack_hits` (
  `id` bigint(255) NOT NULL,
  `token` varchar(100) NOT NULL,
  `data_intransit` longtext NOT NULL,
  `data_received` longtext NOT NULL,
  `status` varchar(100) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paystack_hits`
--

INSERT INTO `paystack_hits` (`id`, `token`, `data_intransit`, `data_received`, `status`, `dateadded`) VALUES
(1, 'adv-20190810215454zeW3x2', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/aysixm2jnbio4p1\",\"access_code\":\"aysixm2jnbio4p1\",\"reference\":\"m3pf5fq54j\"}}', '{\"status\":true,\"message\":\"Verification successful\",\"data\":{\"id\":236152563,\"domain\":\"test\",\"status\":\"success\",\"reference\":\"m3pf5fq54j\",\"amount\":1500000,\"message\":null,\"gateway_response\":\"Successful\",\"paid_at\":\"2019-08-10T20:55:11.000Z\",\"created_at\":\"2019-08-10T20:54:54.000Z\",\"channel\":\"card\",\"currency\":\"NGN\",\"ip_address\":\"41.190.3.174\",\"metadata\":\"\",\"log\":{\"start_time\":1565470499,\"time_spent\":12,\"attempts\":1,\"errors\":0,\"success\":true,\"mobile\":false,\"input\":[],\"history\":[{\"type\":\"action\",\"message\":\"Attempted to pay with card\",\"time\":10},{\"type\":\"success\",\"message\":\"Successfully paid with card\",\"time\":12}]},\"fees\":32500,\"fees_split\":null,\"authorization\":{\"authorization_code\":\"AUTH_nqe2gp0367\",\"bin\":\"408408\",\"last4\":\"4081\",\"exp_month\":\"12\",\"exp_year\":\"2020\",\"channel\":\"card\",\"card_type\":\"visa DEBIT\",\"bank\":\"Test Bank\",\"country_code\":\"NG\",\"brand\":\"visa\",\"reusable\":true,\"signature\":\"SIG_dvD7iLMkQa0QckDxxNSq\"},\"customer\":{\"id\":10993307,\"first_name\":null,\"last_name\":null,\"email\":\"abdul@mail.com\",\"customer_code\":\"CUS_kjluvjd4g3vynct\",\"phone\":null,\"metadata\":null,\"risk_action\":\"default\"},\"plan\":null,\"order_id\":null,\"paidAt\":\"2019-08-10T20:55:11.000Z\",\"createdAt\":\"2019-08-10T20:54:54.000Z\",\"transaction_date\":\"2019-08-10T20:54:54.000Z\",\"plan_object\":{},\"subaccount\":{}}}', 'success', '2019-08-10 21:54:55'),
(2, 'biz-20190814190529hjQ294', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/uq50prvafb24pyf\",\"access_code\":\"uq50prvafb24pyf\",\"reference\":\"aclvu5j821\"}}', '{\"status\":true,\"message\":\"Verification successful\",\"data\":{\"id\":238885189,\"domain\":\"test\",\"status\":\"success\",\"reference\":\"aclvu5j821\",\"amount\":200000,\"message\":null,\"gateway_response\":\"Successful\",\"paid_at\":\"2019-08-14T18:05:44.000Z\",\"created_at\":\"2019-08-14T18:05:29.000Z\",\"channel\":\"card\",\"currency\":\"NGN\",\"ip_address\":\"41.203.78.189\",\"metadata\":\"\",\"log\":{\"start_time\":1565805932,\"time_spent\":13,\"attempts\":1,\"errors\":0,\"success\":true,\"mobile\":false,\"input\":[],\"history\":[{\"type\":\"action\",\"message\":\"Attempted to pay with card\",\"time\":12},{\"type\":\"success\",\"message\":\"Successfully paid with card\",\"time\":13}]},\"fees\":3000,\"fees_split\":null,\"authorization\":{\"authorization_code\":\"AUTH_tanu6wje4j\",\"bin\":\"408408\",\"last4\":\"4081\",\"exp_month\":\"12\",\"exp_year\":\"2020\",\"channel\":\"card\",\"card_type\":\"visa DEBIT\",\"bank\":\"Test Bank\",\"country_code\":\"NG\",\"brand\":\"visa\",\"reusable\":true,\"signature\":\"SIG_dvD7iLMkQa0QckDxxNSq\"},\"customer\":{\"id\":11129177,\"first_name\":null,\"last_name\":null,\"email\":\"oshiyemi@gmail.com\",\"customer_code\":\"CUS_1j7ltmvuwejtu6q\",\"phone\":null,\"metadata\":null,\"risk_action\":\"default\"},\"plan\":null,\"order_id\":null,\"paidAt\":\"2019-08-14T18:05:44.000Z\",\"createdAt\":\"2019-08-14T18:05:29.000Z\",\"transaction_date\":\"2019-08-14T18:05:29.000Z\",\"plan_object\":{},\"subaccount\":{}}}', 'success', '0000-00-00 00:00:00'),
(3, 'biz-201908211218125R6oV9', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/lzk84hicxmnhx81\",\"access_code\":\"lzk84hicxmnhx81\",\"reference\":\"osprfo89k8\"}}', '', '', '0000-00-00 00:00:00'),
(4, 'biz-20190828151149ikPnI16', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/6nzrto82sjp09lt\",\"access_code\":\"6nzrto82sjp09lt\",\"reference\":\"y6dor1pox7\"}}', '{\"status\":true,\"message\":\"Verification successful\",\"data\":{\"id\":251055903,\"domain\":\"live\",\"status\":\"success\",\"reference\":\"y6dor1pox7\",\"amount\":200000,\"message\":null,\"gateway_response\":\"Approved\",\"paid_at\":\"2019-08-28T14:14:23.000Z\",\"created_at\":\"2019-08-28T14:11:49.000Z\",\"channel\":\"card\",\"currency\":\"NGN\",\"ip_address\":\"10.0.165.53\",\"metadata\":\"\",\"log\":{\"start_time\":1567001546,\"time_spent\":149,\"attempts\":4,\"authentication\":\"otp\",\"errors\":1,\"success\":true,\"mobile\":false,\"input\":[],\"history\":[{\"type\":\"input\",\"message\":\"Filled this field: card number\",\"time\":78},{\"type\":\"input\",\"message\":\"Filled this field: card expiry\",\"time\":82},{\"type\":\"input\",\"message\":\"Filled this field: card cvv\",\"time\":86},{\"type\":\"action\",\"message\":\"Attempted to pay with card\",\"time\":86},{\"type\":\"auth\",\"message\":\"Authentication Required: pin\",\"time\":87},{\"type\":\"action\",\"message\":\"Attempted to pay with card\",\"time\":93},{\"type\":\"error\",\"message\":\"Error: Incorrect PIN\",\"time\":97},{\"type\":\"input\",\"message\":\"Changed this field: card number\",\"time\":122},{\"type\":\"input\",\"message\":\"Changed this field: card expiry\",\"time\":125},{\"type\":\"input\",\"message\":\"Changed this field: card cvv\",\"time\":129},{\"type\":\"action\",\"message\":\"Attempted to pay with card\",\"time\":129},{\"type\":\"auth\",\"message\":\"Authentication Required: pin\",\"time\":130},{\"type\":\"action\",\"message\":\"Attempted to pay with card\",\"time\":133},{\"type\":\"auth\",\"message\":\"Authentication Required: otp\",\"time\":138},{\"type\":\"success\",\"message\":\"Successfully paid with card\",\"time\":149}]},\"fees\":3000,\"fees_split\":null,\"authorization\":{\"authorization_code\":\"AUTH_41gk4zymz0\",\"bin\":\"539983\",\"last4\":\"8011\",\"exp_month\":\"07\",\"exp_year\":\"2020\",\"channel\":\"card\",\"card_type\":\"mastercard DEBIT\",\"bank\":\"Guaranty Trust Bank\",\"country_code\":\"NG\",\"brand\":\"mastercard\",\"reusable\":true,\"signature\":\"SIG_HKoMNEDpl0PEloRg7n7x\"},\"customer\":{\"id\":11714046,\"first_name\":null,\"last_name\":null,\"email\":\"oshiyemia@yahoo.com\",\"customer_code\":\"CUS_31zgstr56aewy38\",\"phone\":null,\"metadata\":null,\"risk_action\":\"default\"},\"plan\":null,\"order_id\":null,\"paidAt\":\"2019-08-28T14:14:23.000Z\",\"createdAt\":\"2019-08-28T14:11:49.000Z\",\"transaction_date\":\"2019-08-28T14:11:49.000Z\",\"plan_object\":{},\"subaccount\":{}}}', 'success', '0000-00-00 00:00:00'),
(5, 'biz-20190829091021AkVyM18', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/xyll15o4tckftxd\",\"access_code\":\"xyll15o4tckftxd\",\"reference\":\"9n1brz43uv\"}}', '', '', '0000-00-00 00:00:00'),
(6, 'job-20190903104511fY64D', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/m2oopiwcb4wlnvh\",\"access_code\":\"m2oopiwcb4wlnvh\",\"reference\":\"nqhewu1e9u\"}}', '', '', '0000-00-00 00:00:00'),
(7, 'job-201909031556210f6Cn2', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/s7nis7xmr9ajfkr\",\"access_code\":\"s7nis7xmr9ajfkr\",\"reference\":\"nlh8t95kd9\"}}', '', '', '0000-00-00 00:00:00'),
(8, 'biz-201909040428448UTxM27', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/vc86tfl4lffs8v3\",\"access_code\":\"vc86tfl4lffs8v3\",\"reference\":\"rpfragkqjt\"}}', '', '', '0000-00-00 00:00:00'),
(9, 'biz-20190910085857wcnZt29', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/5777u1dolm5wdx8\",\"access_code\":\"5777u1dolm5wdx8\",\"reference\":\"ertyyui1sn\"}}', '', '', '0000-00-00 00:00:00'),
(10, 'biz-201909101517306PFDG30', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/qmykg9qdc3fmbmd\",\"access_code\":\"qmykg9qdc3fmbmd\",\"reference\":\"opk1nltdph\"}}', '', '', '0000-00-00 00:00:00'),
(11, 'res-20190910174035knb6U', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/1w3svfpkip4ob7l\",\"access_code\":\"1w3svfpkip4ob7l\",\"reference\":\"6u6qpr54d9\"}}', '{\"status\":true,\"message\":\"Verification successful\",\"data\":{\"id\":262005752,\"domain\":\"test\",\"status\":\"success\",\"reference\":\"6u6qpr54d9\",\"amount\":150000,\"message\":null,\"gateway_response\":\"Successful\",\"paid_at\":\"2019-09-10T16:41:20.000Z\",\"created_at\":\"2019-09-10T16:40:36.000Z\",\"channel\":\"card\",\"currency\":\"NGN\",\"ip_address\":\"41.190.2.20\",\"metadata\":\"\",\"log\":{\"start_time\":1568133658,\"time_spent\":23,\"attempts\":1,\"errors\":0,\"success\":true,\"mobile\":false,\"input\":[],\"history\":[{\"type\":\"action\",\"message\":\"Attempted to pay with card\",\"time\":17},{\"type\":\"success\",\"message\":\"Successfully paid with card\",\"time\":23}]},\"fees\":1500,\"fees_split\":null,\"authorization\":{\"authorization_code\":\"AUTH_fusco2h9o0\",\"bin\":\"408408\",\"last4\":\"4081\",\"exp_month\":\"12\",\"exp_year\":\"2020\",\"channel\":\"card\",\"card_type\":\"visa DEBIT\",\"bank\":\"Test Bank\",\"country_code\":\"NG\",\"brand\":\"visa\",\"reusable\":true,\"signature\":\"SIG_dvD7iLMkQa0QckDxxNSq\"},\"customer\":{\"id\":12298367,\"first_name\":null,\"last_name\":null,\"email\":\"abdulwasihitopee4real@gmail.com\",\"customer_code\":\"CUS_49axnr3orl5o4q2\",\"phone\":null,\"metadata\":null,\"risk_action\":\"default\"},\"plan\":null,\"order_id\":null,\"paidAt\":\"2019-09-10T16:41:20.000Z\",\"createdAt\":\"2019-09-10T16:40:36.000Z\",\"transaction_date\":\"2019-09-10T16:40:36.000Z\",\"plan_object\":{},\"subaccount\":{}}}', 'success', '0000-00-00 00:00:00'),
(12, 'biz-201909101844220ydCQ32', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/3t1kkwg8lkpqfy7\",\"access_code\":\"3t1kkwg8lkpqfy7\",\"reference\":\"15z2h6js2l\"}}', '', '', '0000-00-00 00:00:00'),
(13, 'biz-20190920081224LIjUp33', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/v1xtwlmsx60dcwi\",\"access_code\":\"v1xtwlmsx60dcwi\",\"reference\":\"1rb9zcfvx0\"}}', '', '', '0000-00-00 00:00:00'),
(14, 'biz-20190920223213jmQHX34', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/yx6r6yar7hn10yb\",\"access_code\":\"yx6r6yar7hn10yb\",\"reference\":\"jqsz1kz4k0\"}}', '', '', '0000-00-00 00:00:00'),
(15, 'biz-20190926095356u6GVU35', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/khpg72uvmlf45gs\",\"access_code\":\"khpg72uvmlf45gs\",\"reference\":\"6csfy845xm\"}}', '', '', '0000-00-00 00:00:00'),
(16, 'biz-20190927195859vBqtc36', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/ig8ctmtnm9l1zt9\",\"access_code\":\"ig8ctmtnm9l1zt9\",\"reference\":\"5girj0dsc1\"}}', '', '', '0000-00-00 00:00:00'),
(17, 'biz-20191004093558BNkzy37', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/h3ntcouyzfxcnvz\",\"access_code\":\"h3ntcouyzfxcnvz\",\"reference\":\"9vomulghqx\"}}', '', '', '0000-00-00 00:00:00'),
(18, 'biz-20191005014002vlQNK38', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/3ulned0u79cywbe\",\"access_code\":\"3ulned0u79cywbe\",\"reference\":\"sf1zvp27cn\"}}', '', '', '0000-00-00 00:00:00'),
(19, 'biz-20191007200131utgyB39', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/66hl3ni1r1dlaau\",\"access_code\":\"66hl3ni1r1dlaau\",\"reference\":\"69378pz6gp\"}}', '', '', '0000-00-00 00:00:00'),
(20, 'biz-20191008171135ifxlD40', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/9b4z39ppc1ydol3\",\"access_code\":\"9b4z39ppc1ydol3\",\"reference\":\"73bx6nkiqn\"}}', '', '', '0000-00-00 00:00:00'),
(21, 'biz-20191008213949sX7zE41', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/o70frqt7bzyk5dr\",\"access_code\":\"o70frqt7bzyk5dr\",\"reference\":\"u1tdkh8t8u\"}}', '', '', '0000-00-00 00:00:00'),
(22, 'biz-20191009075525CzKqO42', 'null', '', '', '0000-00-00 00:00:00'),
(23, 'biz-201910101123199kZNe43', '{\"status\":true,\"message\":\"Authorization URL created\",\"data\":{\"authorization_url\":\"https://checkout.paystack.com/3avcxhy7k1cpqhm\",\"access_code\":\"3avcxhy7k1cpqhm\",\"reference\":\"r3w2wdvofc\"}}', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(255) NOT NULL,
  `token` varchar(20) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `category` varchar(100) NOT NULL,
  `media` longtext NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `sourceurl` varchar(255) NOT NULL,
  `officer` tinytext NOT NULL,
  `postedby` varchar(50) NOT NULL,
  `dateposted` datetime NOT NULL,
  `dateupdated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `token`, `slug`, `title`, `content`, `category`, `media`, `publisher`, `source`, `sourceurl`, `officer`, `postedby`, `dateposted`, `dateupdated`) VALUES
(2, 'news201907310646191G', 'four-persons-beheaded-in-lagos-cult-clash', 'Four persons beheaded in Lagos cult clash', '&lt;p&gt;&lt;strong style=&quot;color: rgb(0, 0, 0);&quot;&gt;â€¢ Police recovered 10 headless bodies, eyewitnesses say&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;No fewer than four persons were feared killed in the early hours of yesterday as rival cult gangs clashed in Sangotedo area of Ajah, Lagos State. Eyewitnesses, however, said about 10 persons were beheaded in the clash between suspected members of Eiye Confraternity and an unidentified rival cult.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;The Guardian gathered that policemen deployed in the area had recovered four severed heads of victims of the clash. The fight took place on the main road of the area, leaving many heads scattered all over the road. Policemen are reportedly combing the bushes on the road between Ogombo community and Abraham Adesanya Estate for more victims.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;An impeccable source, who pleaded for anonymity, told The Guardian that two suspects have been arrested by the Area â€˜Jâ€™ command in connection with the bloody clash.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;The source hinted that the two groups had been at loggerheads for supremacy for sometime now in Sangotedo area of Ajah. It was learnt that the suspected cultists freely used cutlasses to slice themselves.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;â€œThe police recovered the four dead bodies and deposited them at the public mortuary. Three cutlasses were recovered from the suspects. Security had been beefed up in the area with more patrol policemen deployed. The area is calm now,â€ the source told The Guardian.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;The spokesman for the police in Lagos, DSP Bala Elkana, did not respond to messages sent to him for reaction on the matter as at press time yesterday.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;It would be recalled that two persons were killed during a clash between hoodlums, also known as â€˜Area Boysâ€™, suspected to be rival cult members at Fadeyi area of Lagos last week Wednesday. A dispatch rider who was hit by a stray bullet was among the two who lost their lives in the brawl.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;The fight started with sporadic shooting that left people scampering for their lives and the major Ikorodu road highway closed down for several hours.&lt;/span&gt;&lt;/p&gt;', 'public', '[\"T3W12fRi3ZakzjI_41.203.73.61____Cutlass.jpg\"]', 'Odita Sunday', 'The Guardian', 'https://guardian.ng/news/four-persons-beheaded-in-lagos-cult-clash/', '', 'admin2', '2019-07-31 18:46:19', '2019-07-31 18:46:19'),
(3, 'news20190731065247fi', 're:-why-lagos-is-experiencing-global-recognition', 'Re: Why Lagos is experiencing global recognition', '&lt;p&gt;&lt;strong style=&quot;color: rgb(0, 0, 0);&quot; class=&quot;ql-font-serif&quot;&gt;Sir&lt;/strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot; class=&quot;ql-font-serif&quot;&gt;: as I read the article written by your reporter â€œGbenga Salauâ€ (The Guardian of January 7, 2019) on comments by Ambode, I suddenly burst into great laughter.&lt;/span&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;I typically do not amuse myself with articles as one discussing with another invisible friend but something deep inside of me burst out laughing with the silent commentsâ€¦..global recognition for mind boggling unnecessary traffic, touts reigning and ruling on the streets with beggars adorning the streets like Christmas lights.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;Not only those, filth fills the streets and construction sites and roads not managed properly befitting of a mega city to minimize disruption.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;The tolled roads are just a sham and a huge deception in that the benefits of a tolled road such as street lights, sidewalks, coordinated public transportation and beautiful ambience all lost particularly to all the roadside mechanics and businesses rather than nice palm trees and beautiful grass by the roadside.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;Sadly, places like Tejuosho that had billions pumped into constructing a nice road layout to ease traffic has been taken over by traders and the government sits by. Maybe the same awaits the Lekki tolled road? The level of lawlessness on the roads are at its highest ever with LASTMA gone to bed completely.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;According to the article, Ambode says â€œwe should be thankful for the numerous achievements and growth so far recordedâ€.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;Contrary to my opening comments, I tend to agree with him. Not only do I agree with him but when I see politicians in Nigeria boxed into corners like Ambode has been, more and more these days, I tend to believe he is trying to do the right thing.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;Of course, itâ€™s just my opinion that corruption is fighting back but I believe eventually, no one can stop Lagos state from becoming a mega city (except natural disasters or wars).&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;When I look at the work on the railway around Costain, the humongous construction at Oshodi, the lighted mega bus stops at Oworoshokin and Maryland, the bridge at Ajah, road construction at Epe and so much more work that he has done that many deny or fail to acknowledge, I must commend Ambode.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;Moreover, he attended a Federal Government College so it is easier for him to be non partisan than others since that was the foundation of education in those schools back then.&lt;/span&gt;&lt;/p&gt;', 'public', '[\"FQRt9YBq4MJwDgF_41.203.73.61____Lagos-2.jpg\"]', 'Editor', 'The Guardian', 'https://guardian.ng/opinion/re-why-lagos-is-experiencing-global-recognition/', '', 'admin2', '2019-07-31 18:52:47', '2019-07-31 18:52:47'),
(4, 'news20190731070202zV', 'daisies-courier-launches-service-in-lagos', 'Daisies Courier launches service in Lagos', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot; class=&quot;ql-font-serif&quot;&gt;Set to tackle the significant challenges faced by courier users in the country, Daisies Courier has launched its services in Lagos.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;At present, one of the most significant issues facing the courier industry in Nigeria is the unreliable service rendered.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;One too many times, ineffectiveness on the part of delivery companies have been a major source of disappointment to Lagosians.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;To fill this gap, Daisies courier says it has come up with an excellent standard of service.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;The launch of the service will facilitate quick deliveries within the congested city and west end areas with improved efficiency.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;In order to maintain the unparalleled feat, Daisies courier operates, seven days of the week, and same day delivery thereby continuously providing excellent standard of service all year long.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;With the new administration in place, the â€˜next level Lagosâ€™ needs to get better also, with smooth operation of parcel delivery, as itâ€™s, up until now, Lagosians have been yearning for the best, when it comes to parcel delivery services.&lt;/span&gt;&lt;/p&gt;', 'public', '[\"IwhZ4ZNhFZQiJSk_41.203.73.61____daisies.jpg\"]', 'Jaiyeola Azeezat', 'The Guardian', 'https://guardian.ng/news/daisies-courier-launches-service-in-lagos/', '', 'admin2', '2019-07-31 19:02:02', '2019-08-27 19:04:57'),
(5, 'news20190731071505z4', 'police-arrest-six-over-ajah-communal-clash', 'Police arrest six over Ajah communal clash', '&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;The Lagos State Police Command has arrested 6 persons after a fatal communal clash between Ajah and Ilaje youths in Lagos State on Wednesday.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;The Police Public Relations Officer in the state, Bala Elkana, who confirmed the incident to The Guardian said one person was killed during the clash.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;Elkana said the clash was as a result of the â€œlingering crisisâ€ between the two communities over who controls a â€œtrading siteâ€.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;ql-font-serif&quot;&gt;â€œWe have deployed our resources and personalities to that place and they have brought the situation under control,â€ Elkana said.&lt;/span&gt;&lt;/p&gt;', 'public', '[\"zalec0U3MD2hmA8_41.203.73.61____Nigeria-Police.jpg\"]', 'Editor', 'The Guardian', 'https://guardian.ng/news/police-arrest-six-over-ajah-communal-clash/', '', 'admin2', '2019-07-31 19:15:05', '2019-07-31 19:15:05'),
(10, 'news20190808031011xJ', 'traders-in-ajah-want-fg-to-invest-more-in-made-in-nigeria-rice', 'Traders In Ajah Want FG To Invest More In Made In Nigeria Rice', '&lt;p&gt;&lt;strong style=&quot;color: rgb(25, 30, 35);&quot;&gt;&lt;em&gt;Traders in Ajah have called on the federal government to invest in Nigerian-made food and make them more available to the citizens, as there is an everyday increase in prices of staple foods imported into the country, especially rice.&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(25, 30, 35);&quot;&gt;A visit to Ajah market today, showed that the price of a 50KG bag of rice now sell for N16,500- N17,000, from its former price of N14,500, depending on the brand.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(25, 30, 35);&quot;&gt;Speaking with Ajahcity reporter, a rice seller, Mr. Peter, said that the prices are not predictable and there is a gradual increase as the week goes by.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(25, 30, 35);&quot;&gt;\'Rice increases daily. Just last week, I sold a bag of rice for N14,500 to N15,000 but now I sell for N16,500 to N17,000. People are seriously complaining about the hike but they still manage to buy\' he said.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(25, 30, 35);&quot;&gt;Another rice seller, Mr. Ifeanyi expressed his dissatisfaction in the scarcity of Nigerian-made rice in the market. He revealed that the local rice is also expensive, and the customs officers often seize the imported rice, which leaves them no choice but to increase the prices of the staple food.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(25, 30, 35);&quot;&gt;\'The government wants us to buy our own rice, but it is hardly available and when you eventually get it, the supply comes in small quantity and quite expensive. Meanwhile, they seize most imported bags of rice, which leaves us no choice but to increase the prices of what we have in our stores\' Mr Ifeanyi said. He added that the hike is also caused by high cost of transportation due to bad roads.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(25, 30, 35);&quot;&gt;He therefore urged the government to look into the Nigerian-made rice, make them affordable and available for all, as it is one of the ways to tackle the harsh condition of the economy.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(25, 30, 35);&quot;&gt;Also, a resident, Mrs Sarah noted that if the government could invest in the agricultural sector, there would be no need for foreign food and fluctuation of prices in agriculture would be avoided.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(25, 30, 35);&quot;&gt;However, some traders revealed that the Muslim festive period may not lead to a hike in prices of some perishable goods.&lt;/span&gt;&lt;/p&gt;', 'public', '[\"m6Qs8bJWynnFu7m_41.203.78.164____local market.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-08-08 15:10:11', '2019-08-08 15:10:11'),
(11, 'news20190809123033UB', 'eid-el-kabir:-inflation-hits-ram-sales', 'Eid el-Kabir: Inflation Hits Ram Sales', '&lt;p&gt;&lt;span style=&quot;color: black;&quot;&gt;One of the most joyful days to look out for in the Islamic calendar, is the \'Feast of the Sacrifice\', popularly known as Eid el Kabir. The days where beloved Muslims gather for prayers and sermons at local mosques and in outdoor areas. &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: black;&quot;&gt;During this period, mostly rams or an animal of some kind will be sacrificed, and the meats are partly eaten by guests and families. The sacrificed animal is meant to represent Ishmael, who was nearly sacrificed by Ibrahim before an angel stopped him.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: black;&quot;&gt;However, as Muslims prepare for this yearâ€™s celebration, Ajah City News briefly looked into ram business at Gideon Flower, in Abraham Adesanya, Ajah.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: black;&quot;&gt;Alhaji Shettima Malim Musa, a businessman who has been in ram business for some years talked about how the price of rams were suitably affordable, compared to this year.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: black;&quot;&gt;â€˜â€™Years back including last year, rams were not that expensive, you can easily afford to buy more than one ram without blinking twice but right now, people are complaining of the inflation in price. Some customers now find it hard to pay for rams while some leave with the promise of coming back to patronize usâ€™â€™ he said.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: black;&quot;&gt;â€˜â€™Although, people still patronize us, but rams are still very much available, unlike this time last year, we already ran out of rams.â€™â€™ He stated.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: black;&quot;&gt;Reiterating some of the reasons for this yearâ€™s inflation, he pointed out that the price of food for the rams are now costly, adding that the transportation fare from the North to Lagos have increased.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: black;&quot;&gt;â€˜â€™The food rams eat are now expensive, therefore, a good ram is from N160,000 to N170,000. Apart from the food, the cost of transportation from the village to Lagos this year, the challenges we encounter on our way, like bad roads are some of the things we are considering this year, making rams more expensive. More so, I can guarantee that the prices will go up before Sunday. If government can fix our roads the cost of transportation will reduce and we ram sellers, our old and new customers would be extremely happy because when a part of the problem is solved, the price will be affordableâ€™â€™ Alhaji Shettima explained.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: black;&quot;&gt;â€˜â€™Some of our Muslim brothers and sisters arenâ€™t happy about this but our days of celebration are just by the corner and we will make sure we enjoy the 12&lt;/span&gt;&lt;sup style=&quot;color: black;&quot;&gt;th&lt;/sup&gt;&lt;span style=&quot;color: black;&quot;&gt; and 13&lt;/span&gt;&lt;sup style=&quot;color: black;&quot;&gt;th&lt;/sup&gt;&lt;span style=&quot;color: black;&quot;&gt; of this August. By this time next year, I hope and pray that the price drops.â€™â€™ He added.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: black;&quot;&gt;He however wished all Muslims a memorable and blissful celebration.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;Ajah City News &lt;/span&gt;&lt;span style=&quot;color: black;&quot;&gt;says Eid mubarak to you and yours!&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'public', '[\"skA4UUwgVTO6IaN_154.118.14.173____Eid.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-08-09 00:30:32', '2019-08-09 00:30:32'),
(12, 'news20190815123824gA', 'royal-bar-homicide-victim-az-may-have-been-set-up--says-eyewitness,-friend', '\'Royal Bar Homicide Victim AZ May Have Been Set Up\'- Says Eyewitness, Friend', '&lt;p&gt;A tragic incident which led to the shut down of Royal Bar and lounge, just opposite black gate bus-stop in Badore was as a result of a young man whose life was cut off in his prime.&lt;/p&gt;&lt;p&gt;While speaking to AjahCity journalist, an eyewitness named Samuel and a friend to the deceasedâ€™s younger brother who watched how the working-class young man, simply known as AZ, was allegedly macheted and later died recounted the sad incident.&lt;/p&gt;&lt;p&gt;â€˜â€™The incident happened around 2am. Initially, the deceased was at his home when he received a call from some of his friends to come to a club along Addo. He was at the club when he got another call from a friend who insisted on seeing him at Royal bar. So, he parked his car at Car wash and took a keke to Royal Barâ€™â€™ He said&lt;/p&gt;&lt;p&gt;â€˜â€™He got to the bar but there was no sight of that friend. While leaving the bar, an unidentified man&amp;nbsp;followed him outside. The man went to the trunk of his car to retrieve a machete, which he used in attacking AZâ€™â€™ He continued.&lt;/p&gt;&lt;p&gt;According to Samuel, some people tried to stop the unidentified man from attacking AZ but he referred to himself as â€˜â€™Army Generalâ€™â€™.&lt;/p&gt;&lt;p&gt;â€˜â€™People around, including myself tried stopping him but he kept saying that \'he is a general\' and no one should interfere. After seeing that AZ sustained injuries from the attack, the unidentified man was going to drive off. In attempt to hold the man down from escaping and probably to retaliate by struggling with him while his car was on motion, he died in the processâ€™â€™ He added.&lt;/p&gt;&lt;p&gt;In his own opinion, Samson suspected a foul play, stating that, AZ was probably marked as target for some suspected cultists.&lt;/p&gt;&lt;p&gt;However, from the policeâ€™s account, it was quite different. While speaking with our newsman, the Divisional Police Officer (DPO) in-charge of Langbasa Division, SP. Adaobi Okafor, recounted the Incident as two friends who were at the bar, drinking and had an argument that escalated into a fight.&lt;/p&gt;&lt;p&gt;â€˜â€™During the fight, one was killed in the process. The bar was shut down as a result of the fight and we also arrested the bouncers who were witnesses to the fight and never tried to call us. Langbasa division is no longer in charge of the homicide case as we have handed it over to the State CID Panti for further investigationâ€™â€™ She noted.&lt;/p&gt;', 'public', '[\"TowexV4nJKDfttw_41.203.78.197____Royal bar.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-08-15 12:38:24', '2019-08-15 12:38:24'),
(13, 'news20190815063056H5', 'is-discipline-the-solution-to-heap-of-dirt-in-ajah?', 'Is Discipline The Solution To Heap Of Dirt In Ajah?', '&lt;p&gt;&lt;strong&gt;&lt;em&gt;Refuse dumps in a populated state like Lagos is no longer a new thing. It looks like it is a natural thing to have in the City, especially Ajah. Often, one must hold his or her breath or cover the nose because they are everywhere one turns to, basically, giving you and I, eyesores.&lt;/em&gt;&lt;/strong&gt; &lt;/p&gt;&lt;p&gt;You are not in Ajah yet if you cannot find dumps by roadsides, in neighborhoods, sometimes on the road, in drainage systems and to make matter worse, marketplaces. I would never forget the first day I passed by the popular Sangotedo market, I was embraced by a strong, not warm welcoming smell from a large garbage heap and to worsen my state of horror, the driver had to stop by the garbage so a passenger could alight. Would I be exaggerating if I told you that my first-time encounter has scarred me for life? Now, imagine knowing the exact places where refuses are in your head, that way, you can prepare yourself by covering your nose before passing by. &lt;/p&gt;&lt;p&gt;Anyway, after the Sallah celebration, I had a brief talk with Mr Gbenga of â€˜D Nigeria Limitedâ€™ at Ilaje. He revealed to me the reason refuse dumps are still frequently found everywhere despite the measures put in place for a cleaner city.&lt;/p&gt;&lt;p&gt;â€˜â€™As long as Nigerians arenâ€™t ready to get rid of the â€˜I donâ€™t careâ€™ attitude and indiscipline, there would still be an incessant dropping of refuses at illegal spots in the city. Normally, residents are supposed to register with a private waste collector or make use of a big bin provided by LAWMA where wastes are diligently disposed but they only break this simple instruction by dumping refuse by the roadsides, canals, marketplacesâ€™â€™ He said.&lt;/p&gt;&lt;p&gt;â€˜â€™We have specific days for collecting refuses and as a law-abiding citizen, one should know that tidying up your waste bags or arranging your waste bags in your bins are one of many ways in making your environment healthy to live in. When you have your wastes at the right place or spot, youâ€™re making it easier on waste collectors and easier for you too.â€™â€™ He added &lt;/p&gt;&lt;p&gt;â€˜â€™After cleaning up some areas, youâ€™d notice another set of wastes the next day. I eventually concluded to myself that most Nigerians are stubborn and are not ready to do the right thing or changeâ€™â€™&lt;/p&gt;&lt;p&gt;He noted that the only solution to this, is discipline.&lt;/p&gt;&lt;p&gt;â€˜â€™We dump refuses on roadsides when we realized that the big bin can no longer take more wastes. So, while we wait for waste collectors, we find a temporary solution by disposing our wastes elsewhereâ€™â€™ Rashidat, a plantain seller said. &lt;/p&gt;&lt;p&gt;A resident in Ilaje who pleaded anonymity had this to say: â€˜â€™The smell from the refuse dump around us is awful and harmful, thatâ€™s why I am urging the government to always come on time to evacuate the refuses and also provide more refuse bins for usâ€™â€™&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'public', '[\"usPDXVbn5d94asW_41.203.78.197____ajah.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-08-15 18:30:56', '2019-08-15 18:30:56'),
(14, 'news2019081909341897', 'ajah-traffic-causes-questions-on-minds', 'Ajah Traffic: Causes, Questions On Minds', '&lt;p&gt;The Ajah traffic is not an occasional thing but an enigma to the residents. Gridlock stretching as far as the eyes can see is a common occurrence on Jubilee bridge and under the bridge, down to Ilaje last bus-stop and after Ilaje is a free road, this makes one wonder why there was traffic in the first place.&lt;/p&gt;&lt;p&gt;A thirty minutesâ€™ drive often become one to three hoursâ€™ drive when stuck in traffic on the major road in the city, which is why, one is advised to leave home or office early during the weekdays, because days like these are always busy as everyone wants to beat the traffic in order to get home or office in time.&lt;/p&gt;&lt;p&gt;Officer Yomi, a LASTMA official revealed some reasons behind the popular gridlock in Ilaje.&lt;/p&gt;&lt;p&gt;â€˜â€™One of the major causes of the traffic is the people crossing to the other side of the road regularly. The road is usually a busy road with residents, so, there should be a pedestrian bridge which has been under construction for long. If the Lagos state government ever complete the construction of the bridge, the traffic will totally reduceâ€™â€™&lt;/p&gt;&lt;p class=&quot;ql-align-center&quot;&gt;&lt;strong&gt;&lt;em&gt;â€˜â€™Also, the commercial buses cause this hold-up. We have provided a lane for them to use but some of these bus drivers are stubbornâ€™â€™&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;â€˜â€™They like picking up passengers illegally by not using the lane provided for them. They are meant to stay on the lane, pick up and leave, not stop by the roadside to pick up passengers. While picking up commuters by the roadside often causes traffic jam and that is why we have strategically placed ourselves on the road to arrest themâ€™â€™ he added.&lt;/p&gt;&lt;p&gt;Whether the arrests so far have been effective, or the completion of the bridge would be a permanent solution are possible questions Ajah residents keep asking.&lt;/p&gt;', 'public', '[\"tInNRQrg1ZLYkuF_154.118.63.10____Lagos-Traffic-Ajah-Traffic.png\"]', 'Eve', '', '', '', 'reporter1', '2019-08-19 21:34:17', '2019-08-19 21:34:17'),
(15, 'news20190821120111wI', 'man-arrested-for-alleged-defilement-of-14-year-old-girl', 'Man Arrested for Alleged Defilement of 14-Year-old girl', '&lt;p&gt;A suspect has been arrested for allegedly defiling a 14-year-old girl in Ikota. The man whose name was withheld got arrested after her guardian reported the incident to Ajiwe police station in Ajah.&lt;/p&gt;&lt;p&gt;According to a statement made available to the station by the guardian, she noticed that her ward suddenly left home for a whole day only to show up the next day. She suspected a foul play and decided to question her whereabout. &lt;/p&gt;&lt;p&gt;With firm insistence, the ward said that, the suspect and a lady in the neighborhood lured her to a hotel where he had canal knowledge of her and gave her some money to keep her mouth shut.&lt;/p&gt;&lt;p&gt;On interrogation, the suspect said he had no idea that the girl was 14 and what they had was a three-some and consensual.&lt;/p&gt;&lt;p&gt;â€œI spoke to my girlfriend about wanting to have a three-some. So, she brought her to me. It is true that she spent the night with me in a hotel. We all had a good time, there was no force and I didnâ€™t take advantage of her. We agreed on a price and I paid her after the sex. I am wondering why sheâ€™s changed the narrativeâ€™â€™ the suspect reiterated.&lt;/p&gt;&lt;p&gt;Although, details of this incident remain sketchy but Ajahcity will keep you abreast as the story unfolds.&lt;/p&gt;', 'public', '[\"ZvtucuciejFM8KQ_41.190.2.218____arrested-2.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-08-21 12:01:10', '2019-08-21 12:01:10'),
(16, 'news20190821120517WF', 'police-arrest-two-armed-robbers-in-oke-ira-nla', 'Police Arrest Two Armed Robbers in Oke-ira nla', '&lt;p&gt;30-year-old Raimi Taiwo and 28-year-old John Adewale have been arrested in connection to a robbery reported by residents of Obodo Avenue, Oke-ira nla Ajah.&lt;/p&gt;&lt;p&gt;Police authority revealed that the robbers used a knife to break into a premise, using the same knife to stab one of the residents and stole some valuables.&lt;/p&gt;&lt;p&gt;However, the Ajiwe police officers were able to recover some loots; one unregistered motorcycle, two mobile phones, one power bank, one mp3 player, one wristwatch, a torchlight, one jack-knife used in committing the crime.&lt;/p&gt;&lt;p&gt;The investigation is ongoing as operatives of the Anti-Robbery Squad have taken over the case and launched a manhunt for other fleeing suspects.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'public', '[\"tBUsq4UnRT3MbG0_41.190.3.218____images.jpeg.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-08-21 12:05:17', '2019-08-21 12:05:17'),
(17, 'news20190822012440Ml', '16-year-old-housemaid-accuses-boss-of-impregnating-her', '16-year-old housemaid Accuses Boss of Impregnating her', '&lt;p&gt;A housemaid, name withheld, has accused her madamâ€™s husband of impregnating her and denying their secret affair. The girl who is only 16 and lives with the couple in Ajah, alleged that her boss had sex with her on two different occasions, while the wife was pregnant and when she newly put to bed.&lt;/p&gt;&lt;p&gt;According to a report made available by the suspectâ€™s wife (name withheld) to the Ajiwe Police Station, she said that, the maid attempted to hide the pregnancy, but she noticed some changes in her attitude and features.&lt;/p&gt;&lt;p&gt;â€˜â€™My house-help has been with me for a while now. Just recently, I started to notice some changes about her, but I didnâ€™t question that, until, I had my baby. I later got to know that she was pregnant. She was not going to tell me who impregnated her. After so many interrogations, she spoke up. I find it difficult to believe it was my husband who impregnated herâ€™â€™ She revealed.&lt;/p&gt;&lt;p&gt;Meanwhile, the suspect, name also withheld, has denied having an affair with her and impregnating the young girl.&lt;/p&gt;&lt;p&gt;However, a source told our correspondent that the police is interested in the case and has directed the couple and the girl to Lagos State DNA and Forensic Center, CMS for DNA test.&lt;/p&gt;&lt;p&gt;The source noted that the result of the test would determine what to do next.&lt;/p&gt;&lt;p&gt;Ajahcity will keep you posted as the story unfolds&lt;/p&gt;', 'public', '[\"OkOlod6eKUDW8xq_154.118.23.182____pregnant girl.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-08-22 13:24:40', '2019-08-22 13:24:40'),
(18, 'news20190827011955s6', 'man-killed,-others-injured-in-road-accident', 'Man Killed, Others Injured In Road Accident', '&lt;p&gt;A motor accident along Oko-Addo road, Sangotedo axis in Ajah has left a man dead, at least five commuters seriously injured and few with minor injuries.&lt;/p&gt;&lt;p&gt;The accident which occurred around 5pm yesterday caused a gridlock in Oko-Addo but efforts were made by the road safety officials to control the traffic and the bus has been taken off the road.&lt;/p&gt;&lt;p&gt;A witness who gave an account of what happened said that the bus was only trying to avoid hitting a tricycle while on speed, only to swerve and collide with a trailer parked by the road.&lt;/p&gt;&lt;p&gt;â€˜â€™A tricycle wanted to overtake the bus while they were both on speed. The bus suspected a future impact with the tricycle, so the driver tried to swerve just to avoid the tricycle hitting his bus. By so doing and on speed, it was a direct collision with a trailer parked by the road. This accident occurred due to speed and dangerous drivingâ€™â€™ The witness recounted.&lt;/p&gt;&lt;p&gt;&amp;nbsp;â€˜â€™The occupant next to the driver died instantly due to the impact. The driver and some of the passengers were in critical shape. At least five suffered various degrees of injuries. Some commuters who sustained cuts left the scene immediatelyâ€™â€™ Another eyewitness, Mr Goke said.&lt;/p&gt;&lt;p&gt;Some good Samaritans and road safety officials who rushed to the scene immediately, carried out a rescue operation and were seen rushing the victims to an unidentified hospital in Ajah.&lt;/p&gt;&lt;p&gt;Meanwhile, some of the Samaritans told Ajahcity that while trying to save the victims, few phones, money belonging to the victims were stolen at the scene and they were unable to reach the family of the victims.&lt;/p&gt;&lt;p&gt;However, it was gathered that one of the occupants of the bus who survived the accident, stole an I-phone and was later apprehended.&lt;/p&gt;', 'public', '[\"PTAQcd6qk30N1l2_41.203.78.233____accident.jpeg\"]', 'Eve', '', '', '', 'reporter1', '2019-08-26 23:19:55', '2019-08-26 22:19:55'),
(21, 'news20190827051934gH', 'you-can-get-drivers-license-within-a-month.-sometimes,-within-3-weeks---ajah-licensing-station', 'You can get driver&apos;s license within a month or within 3 weeks - Ajah Licensing Station Manager', '&lt;p&gt;Mr Olaniran Ibrahim, a station manager at the Motor Vehicle Administration Agency (MVAA), Ajah licensing center, took the time out to answer the frequently asked questions submitted by car owners/road users and how to probably obtain your driverâ€™s license.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;What do you need to renew vehicle license?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Vehicle license is a vital part of oneâ€™s vehicle document. It is the one displayed on your windscreen. Just at the corner of your windscreen. Once, itâ€™s expired, all you need do is take it to a vehicle licensing office, we will run it on our system to confirm its expiry date. Take for example, if the expiry date is August 2018, we will confirm using the plate number, so we can figure out when to issue you a renewal. Through your details, we would know if have an outstanding bill, if you do, it is an automatic roll-over, meaning you will have to clear that before proceeding or processing a new license. Same procedure for Hackney permit.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;How much is the renewal of Vehicle registration?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;It is on our website. Visit www.nigeriadriverslicence.org&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;How can I renew my car license online?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;It is possible but I donâ€™t think Lagos State has provided an official online platform for it and Nigerians need to be careful because online fraudsters may have provided fake websites, so, it is best Nigerians visit the designated offices for this. Although, there are some domains being handled by some agencies affiliated with the government like&lt;strong&gt; &lt;/strong&gt;Vehicle Inspection Office (&lt;strong&gt;VIO)&lt;/strong&gt;, Road worthiness; you know the document which shows if your vehicle is fit for the road, Alpha-beta; they have their own domain recognized by the government, so when you pay, it gives you your license automatically. &lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;How can I renew my driving license online?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;It is very possible and easy. Just log on to &lt;a href=&quot;http://www.nigeriadriverslicence.org/&quot; target=&quot;_blank&quot;&gt;www.nigeriadriverslicence.org&lt;/a&gt; to apply. Follow the instruction on the site and pay there. You can also track your application status on the site. However, you will still need us to ensure that your online transaction was successful, and you will also have to pass through the &lt;strong&gt;VIO.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;How long does it take to get Driving license in Nigeria?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Formally, it takes 3-6 months but now, you can get it within a month. Sometimes, within 3weeks.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;How do I check my car license online?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt; &lt;/em&gt;&lt;/strong&gt;For now, you can not until there is an official online platform&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;What is the process for renewal of a driverâ€™s license?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;When your driverâ€™s license has expired, make sure you visit our website. All you need is your license number and date of birth. If you are getting a license for the first time, you must come to our office.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;How do you change car ownership?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;One is advised to visit one of our centers. Weâ€™ll provide all the necessary information&lt;/p&gt;', 'public', '[\"sVGIXJTzsmFBOh9_41.217.120.56____Ketu-gridlock.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-08-27 17:19:34', '2019-08-27 17:19:34'),
(23, 'news20190828073515ag', 'young-driver-allegedly-used-bossâ€™-car-for-armed-robbery', 'Young Driver Allegedly Used Bossâ€™ Car For Armed Robbery', '&lt;p&gt;A businesswoman known as Alhaja could not believe her ears when information got to her that her trusted young driver Sherif who uses her Sienna to pick up goods, allegedly used it for a robbery operation.&lt;/p&gt;&lt;p&gt;The suspect was apprehended and surrounded by â€˜â€™area boysâ€™â€™ around Alesh in Ilaje, following a tip off that he and some other boys, armed, allegedly robbed some houses in Ilaje. &lt;/p&gt;&lt;p&gt;â€˜â€™Sherif and some of his friends came to my area with guns to rob residents of their belongings. I was not there but I was told, and the description of the boy and the car is a perfect match. In fact, I was told that he stole our baaleâ€™s phone and when I got hold of him today and searched him, I saw the phone. He has the phone with him. Now he can not explain where he got our Baaleâ€™s phone fromâ€™â€™ one of the community boys recounted to Alhaja.&lt;/p&gt;&lt;p&gt;â€˜â€™Earlier today, I still saw him in your carâ€™â€™ another said.&lt;/p&gt;&lt;p&gt;The boss who was startled by the allegation, stated that he was yet to come by her shop in order to drop her car but did not worry because she trusted him. &lt;/p&gt;&lt;p&gt;Already with a swollen face, Sherif was still holding on to his madamâ€™s key while trying to deny the alleged robbery.&lt;/p&gt;&lt;p&gt;â€˜â€™I didnâ€™t use your car for robbery maâ€™â€™ was all he told his madam.&lt;/p&gt;&lt;p&gt;With rage and collective effort from the community boys, he was taken to a nearby police station in a tricycle. &amp;nbsp;&lt;/p&gt;&lt;p&gt;However, in a recent development, Ajahcity journalist caught up with Alhaja, she happily revealed that her car has been cleared from the mess and Sheriff is currently behind bars.&lt;/p&gt;', 'public', '[\"zTKzTW6Wa1pfqk8_197.242.111.33____handcuff hands.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-08-28 19:35:15', '2019-08-28 19:35:15'),
(24, 'news20190830092638bD', 'five-gunmen-rob-two-ladies,-exchange-fire-with-police', 'Five Gunmen Rob Two Ladies, Exchange Fire With Police', '&lt;p&gt;Five armed men held two ladies, Mercy Joseph and Anita at gunpoint, after withdrawing some money from the Automated Teller Machine (ATM) along Badore road, Ajah.&lt;/p&gt;&lt;p&gt;While handing over their money and phones, one of the ladies was attacked with a short knife in the process.&lt;/p&gt;&lt;p&gt;According to an eyewitness who pleaded anonymity, alerted the Police who rushed to the scene immediately.&lt;/p&gt;&lt;p&gt;â€˜â€™We were all scared and some of the passers-by had to run to stay safe when we saw the armed robbers pulled out a gun. I was able to alert the police immediately and thankfully; it didnâ€™t take long before they showed up. It was like they were nearby alreadyâ€™â€™ the witness said.&lt;/p&gt;&lt;p&gt;It was gathered that men of the Nigerian Police Force Area â€˜Jâ€™ Division Ajah stormed the area with the armed robbers opening fire on them.&lt;/p&gt;&lt;p&gt;Meanwhile, during the exchange of gun fire, one of the robbers was gunned down while others escaped from the scene.&lt;/p&gt;&lt;p&gt;The Police was able to recover one short gun and three cartridges.&lt;/p&gt;&lt;p&gt;However, the lady who sustained injuries from the attack has been taken to the hospital for treatment.&lt;/p&gt;', 'public', '[\"YyaPnlappsWjJJQ_154.120.115.116____Short gun.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-08-30 21:26:37', '2019-08-30 21:26:37'),
(25, 'news201909021226375Q', 'naked-prostitutes-drag-customer-to-police-station', 'Naked Prostitutes Drag Customer To Police Station', '&lt;p&gt;Two prostitutes recently caused a scene while dragging a â€˜â€™customerâ€™â€™ down the street of Ajiwe to the police station. The prostitutes who were half naked, dragged the client to Ajiwe police station after he refused to pay an amount of service charge agreed upon, the previous night.&lt;/p&gt;&lt;p&gt;According to eyewitnesses, the half-naked ladies were seen entering the police station while holding on to the manâ€™s pant, insisting that he must pay them, or he would be locked up. &lt;/p&gt;&lt;p&gt;â€˜â€™I saw two half naked women dragged a man into the police compound this afternoon. On sighting them, I knew who they were. They stated that the man slept with both of them and refused to pay the agreed amount of 10,000 naira and that is why they brought him to the police stationâ€™â€™ an eyewitness recounted.&lt;/p&gt;&lt;p&gt;Speaking to the officers of the law, the client was heard saying, they indeed had an agreement, but he was unable to pay them for their services because he does not have the money. &lt;/p&gt;&lt;p&gt;Meanwhile, a report stated that the man was given a phone to call for someone who would help him out of the situation before he was eventually placed behind bars. &lt;/p&gt;&lt;p&gt;However, at the time of this report, the ladies were later seen clothed. They insisted on waiting for the customerâ€™s helper to bring their money before leaving the police station.&lt;/p&gt;', 'public', '[\"LJCOitiiFalQFcQ_154.120.114.95____prostitutes.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-09-02 12:26:37', '2019-09-02 12:26:37'),
(26, 'news20190902041857lA', 'pastor-swindles-mum-of-three,-sleeps-with-her-two-daughters', 'Pastor Swindles Mum Of Three, Sleeps With Her Two Daughters', '&lt;p&gt;A pastor, name withheld, has been arrested and in police custody for swindling a mother of three and sleeping with two of her daughters. &lt;/p&gt;&lt;p&gt;It was gathered that the mother (name withheld), a former member of the pastorâ€™s church and a single mother was instructed by the pastor to sell her car in the name of sowing a seed.&lt;/p&gt;&lt;p&gt;She claimed that she was placed under a spell or charms when the pastor collected her car and sold it. The woman further claimed that the pastor has her two beautiful daughters, the first and last daughters (names withheld) who were under his spells because they now refer to as a witch.&lt;/p&gt;&lt;p&gt;The issue escalated when the last daughter visited the police station to see the detained pastor and on seeing her mother, she embarrassed and called her a witch.&lt;/p&gt;&lt;p&gt;â€˜â€™The man who claims to be a man of God is sleeping with two sisters and has rendered their mother penniless. He made sure that the girls are hardly available for their mother and she strongly believed that they are under a spell. She said she was once under his spell because he made her sell some of her properties but now that her eyes are open, she can boldly say that the pastor is evil and not a man of Godâ€™â€™ our source said.&lt;/p&gt;&lt;p&gt;â€˜â€™When police officers went to arrest the pastor, they saw some undies belonging to the last born who later confirmed that they belonged to her. The last-born claims she loves the pastor and they are in love, while the first born is not ready to let go of the man. The first-born who is doing pretty well for herself used to have two cars and gave one to the pastor while the mother uses commercial busesâ€™â€™ our source continued.&lt;/p&gt;&lt;p&gt;It however became a mild drama in the police station when the two sisters discovered that they have been sleeping with the same man and he has been duping them. &lt;/p&gt;&lt;p&gt;Meanwhile, one of our sources stated that the ladies have apologized for causing their mother pain and for treating her badly. &lt;/p&gt;&lt;p&gt;All efforts to also hear from the pastor proved abortive.&amp;nbsp;&lt;/p&gt;', 'public', '[\"stly2MilZC4uZWt_154.120.114.95____handcuff hands.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-09-02 16:18:57', '2019-09-02 16:18:57'),
(27, 'news20190903094743ZD', 'xenophobia:-protesters-destroy-stores,-steal-gadgets-in-ajah', 'Xenophobia: Protesters Destroy Stores, Steal Gadgets In Ajah', '&lt;p&gt;A Shopping mall called Novare which houses Shoprite outlet in Sangotedo, Ajah has been partially shut down by angry protesters, who stormed the place today.&lt;/p&gt;&lt;p&gt;The protesters, largely made up of young Nigerians, made their way into the place, destroying properties. Despite the presence of heavily-armed security personnel, the angry mob ensured that they created tension at the place.They broke into many stores in the mall, destroying properties worth millions and taking gadgets, drinks, jewelries, electronic devices, shoes, bags and Cloths.&lt;/p&gt;&lt;p&gt;However, the officers of the law have been able to arrest some hoodlums and youths who were there to rob some of the stores, recoving some goods.&lt;/p&gt;&lt;p&gt;As at the time of this report, officers are currently in strategic positions to prevent further robberies.Their action follows ongoing attacks on Nigerians and other African migrants in South Africa since August 28.The situation has led to loss of lives and businesses belonging to Nigerians in South Africa, raising fears of more disaster in the coming days.The latest xenophobic attacks have been condemned by Nigerians across the globe with many calling for reprisal attacks in Nigeria where several South African businesses have continued to flourish. &lt;/p&gt;', 'public', '[\"GwqVwaWTjE55EQy_197.242.104.215____IMG_0103-480x353.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-09-03 21:47:43', '2019-09-03 22:45:20'),
(28, 'news20190904024043xb', 'xenophobia:-shoprite-on-locks-as-police-recover-loots', 'Xenophobia: Shoprite On Locks As Police Recover Loots', '&lt;p&gt;Following the mob of an angry suspected miscreants who alongside other protesters invaded Novare mall; Shoprite in Ajah yesterday, the officers of the law have been able to recover some of the stolen items. \r\n&lt;/p&gt;&lt;p&gt;Items recovered; televisions, chair, clothes, back-packs, traveling boxes, hand bags, fans, trolleys, water dispensers, amongst others. \r\n&lt;/p&gt;&lt;p&gt;The mall which is currently on lock until further notice, has been under police surveillance since yesterday till the time of this report. It was gathered that some hoodlums returned to the facility very early in the morning to loot again. \r\n&lt;/p&gt;&lt;p&gt;However, more security personnel have been deployed to secure the facilities and prevent another reprisal attack on businesses today. \r\n&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'public', '[\"mDXfQdZyW0qYMKj_154.120.79.42____IMG-20190904-WA0001.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-09-04 14:40:43', '2019-09-04 17:51:34'),
(29, 'news201909051209418y', 'police-beef-up-security-as-touts-try-to-loot-in-ajah', 'Police Beef Up Security As Touts Try To Loot In Ajah', '&lt;p&gt;&lt;strong&gt;&lt;em&gt;Langbasa&lt;/em&gt;&lt;/strong&gt;: A report says that hoodlums are trying to loot some stores belonging to Lebanese along Addo Road, Langbasa. It was gathered that the hoodlums in the area, popularly known as &quot;Area boys&quot; have continued to cause trouble after the looting and destruction of Shoprite outlets across the state on Tuesday. The hoodlums are seen parading themselves every evening for access into the stores. Meanwhile, police officers of the Langbasa Division who are now on standby, assured that they have everything under control and they are always seen chasing the miscreants off the premises.&amp;nbsp;&amp;nbsp;&lt;/p&gt;', 'public', '[\"V7BxnLoIVTptE8N_154.118.23.239____police.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-09-05 12:09:41', '2019-09-05 12:09:41'),
(30, 'news20190909072427Lm', 'police-arrest-twelve-suspected-cultists-in-addo', 'Police Arrest Twelve Suspected Cultists In Addo', '&lt;p&gt;Police officers of Langbasa Division have arrested twelve suspected cultists in connection to last nightâ€™s rampage and robbery along Addo road, Ajah.&lt;/p&gt;&lt;p&gt;According to a report gathered by Ajahcity correspondent, the cultists were terrorizing road users, robbing them of their gadgets and money, damaging cars.&lt;/p&gt;&lt;p&gt;The report stated that a team of Policemen was immediately mobilized to the scene, leading to the arrest of some of the cultists while others escaped. Machetes and some phones were recovered from the suspected cultists who are currently in police custody.&lt;/p&gt;&lt;p&gt;&amp;nbsp;â€˜â€™It was almost 10pm when I heard some gunshots and I was in my car at that time. I saw people rushing out of their cars for safety and others running for their dear lives. The tension was much so I had to abandon my car to be safe as well. There was no movement at all. I couldnâ€™t say if it was a gang of robbers or some cultistsâ€™ reprisal attack, but some cars were vandalized. At the arrival of policemen, it became a battle between the police and the gangs. Thankfully, they arrested some of themâ€™â€™ an eyewitness recounted.&lt;/p&gt;&lt;p&gt;However, some residents stated that the gangs started a rampage in the area last week, damaging cars and some were certain that they heard several gun shots.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'public', '[\"19soIYKBFz0xSfW_154.118.35.156____Cultists -WA0005.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-09-09 19:24:27', '2019-09-09 19:30:21');
INSERT INTO `posts` (`id`, `token`, `slug`, `title`, `content`, `category`, `media`, `publisher`, `source`, `sourceurl`, `officer`, `postedby`, `dateposted`, `dateupdated`) VALUES
(31, 'news20190910011546h5', 'unregistered-motorcycle-hampers-armed-suspects-arrest-', 'Unregistered motorcycle hampers armed suspects&#039; arrest', '&lt;p&gt;Despite the efforts to stem the growth of criminal actions in Ajah and its environment, bypassing registration of vehicles and motorcycles in the nation has been identified by the security operatives as a major tool hampering the apprehension of perpetrators most times. Thus, the lack of registration of cars and motorcycles used by suspects make tracking down the criminals difficult until further investigations. In a report gathered by Ajah City correspondent, four armed men recently escaped apprehension at Addo Village after abandoning their unregistered motorcycle during a chase by police men. â€œAt about 13:30 hours of the day, four armed men with an unregistered motorcycle were chased opposite Addo Primary school, but ran and abandoned their motorcycleâ€ an eyewitness said. Meanwhile, a local gun was said to have been recovered from the motorcycle after conducting a search.&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;However, it becomes pertinent for security operatives to enforce vehicular and motorcycle registration for commuters in the environment and the state by extention. &lt;/p&gt;', 'public', '[\"QW2bSC27GqmkvrC_41.217.125.27____IMG-20190829-WA0005.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-09-10 13:15:46', '2019-09-10 13:15:46'),
(32, 'pif20190911104916D6', 'police-notice', 'Police Notice', '&lt;p&gt;If u are recently robbed by the robbers/cultist along Ajah/Addo road recently you are required to report to the Lamgbasa Police Station. Without your allegation/report we won&apos;t be able to charge the arrested gangs to court. Thanks - The Area Commander!&lt;/p&gt;', 'police', '[\"Wd1C2N52StLHzse_41.190.3.22____policepost1.jpeg\"]', 'Eve', 'Ajiwe Police Station', '', 'Mr Gbolahan Olugbemi (Area Commander)', 'admin2', '2019-09-11 10:49:16', '2019-09-11 10:49:16'),
(33, 'news20190912112748GI', 'police-arrest-cultists-in-addo', 'Police Arrest Cultists in Addo', '&lt;p&gt;Operatives from the Anti-Cultism Unit have arrested 2 suspected cultists in Addo-Badore, Ajah. It was gathered that the operatives arrested one 22 year-old Rilwan Balogun and one 22 year-old Sikiru Taiwo, while on patrol at Addo-Badore road.&lt;/p&gt;&lt;p&gt;Our source stated that the suspects who are currently in police custody, confessed to being members of â€œEye Confraternityâ€ after they were searched.&lt;/p&gt;&lt;p&gt;According to the report, one knife, one axe, blue beret with â€œeye-confraternity logoâ€ were recovered from both of them. &lt;/p&gt;&lt;p&gt;However, a follow-up operation to arrest more cultists terrorising the community is ongoing.&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/p&gt;', 'public', '[\"HuvZLXmL3uVH70A_41.190.3.209____images (9).jpeg\"]', 'Eve', '', '', '', 'reporter1', '2019-09-12 11:27:48', '2019-09-12 11:30:40'),
(34, 'news20190916081313Lc', 'postpartum-depression-makes-it-difficult-for-women-to-complete-their-daily-care-activities---expert.', '&#039;Postpartum Depression Makes It Difficult for Women To Complete Their Daily Care Activities&#039; - Expert.', '&lt;p&gt;In an interview with Miss Rebecca Akinkuade, an expert and a lead volunteer for Postpartum Network Africa (PSN), has disclosed what Postpartum depression (PPD) is and who is at risk of suffering from the depression.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;What is Postpartum depression? Are the â€˜baby bluesâ€™ the same thing as Postpartum depression?&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Postpartum depression is a mood disorder that can affect women after childbirth. Mothers with postpartum depression experience feelings of extreme sadness, anxiety and exhaustion that may make it difficult for them to complete their daily care activities for themselves or for their loved ones.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;What causes postpartum depression?&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;There are no biological facts about the causes of postpartum depression but there are multiple factors that can cause it which I will give few&lt;/p&gt;&lt;p&gt;- the levels of hormone in a woman&apos;s body quickly drop after childbirth and it can lead to changes in her brain that may trigger mood swings &lt;/p&gt;&lt;p&gt;- emotional tribulations which also means lack of emotional support &lt;/p&gt;&lt;p&gt;-Finances - when things are tight and no means of getting the baby the essential things needed &lt;/p&gt;&lt;p&gt;- circumstances surrounding the conception of the baby&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Who is at risk of getting postpartum depression?&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;First time mothers, young mothers or old mothers are more at risk of suffering from postpartum depression. Also, the women who are at risk of getting postpartum depression are women who lack social support, in an unstable relationship with their spouse, women who have traumatic birth experience or suffer from miscarriage, with low self-esteem etc.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Why do women get postpartum depression?&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;No one can really ascertain why women suffer from it but there are risk factors (people that are more at risk of suffering from postpartum depression which I have mentioned earlier). However, it can happen to anybody, including men. Know that it is not a spiritual attack neither a myth. It is real and it is not made up. Study shows that at least one in seven new mothers suffer from postpartum depression and up to 50% of women with PPD are never detected and women who have had one episode of PPD have a 50% chance of experiencing it again with a second pregnancy. &lt;/p&gt;&lt;p&gt;&lt;strong&gt;Do fathers experience PPD?&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Yes, they do. One in 10 men experience depression during the pregnancy or after his baby is born The symptoms are; &lt;em&gt;tiredness&lt;/em&gt;, &lt;em&gt;pain or headaches, lack of appetite&lt;/em&gt;, &lt;em&gt;trouble sleeping&lt;/em&gt; or &lt;em&gt;sleeping&lt;/em&gt; and &lt;em&gt;waking up&lt;/em&gt; &lt;em&gt;at odd times&lt;/em&gt;, &lt;em&gt;weight loss or gain&lt;/em&gt;, &lt;em&gt;trouble concentrating at work or working for longer hours&lt;/em&gt;, &lt;em&gt;irritability or anger, engaging in risky behaviour&lt;/em&gt; (&lt;em&gt;gambling or engaging in extra marital affairs),&lt;/em&gt; &lt;em&gt;substance abuse&lt;/em&gt; (&lt;em&gt;drugs or alcohol&lt;/em&gt;) amongst others.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;What are the signs of postpartum depression?&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;They are;&lt;/p&gt;&lt;p&gt;. Feeling sad, hopeless, empty or overwhelmed &lt;/p&gt;&lt;p&gt;. Crying more than usual or for no apparent reason&lt;/p&gt;&lt;p&gt;. Worrying or feeling overly anxious &lt;/p&gt;&lt;p&gt;. Feeling moody, irritable or restless &lt;/p&gt;&lt;p&gt;. Oversleeping or being unable to sleep even when the baby is sleeping &lt;/p&gt;&lt;p&gt;. Having trouble concentrating, remembering details and making decisions &lt;/p&gt;&lt;p&gt;. Experiencing anger or rage &lt;/p&gt;&lt;p&gt;. Losing interest in activities that are usually enjoyable &lt;/p&gt;&lt;p&gt;. Eating too little or eating too much &lt;/p&gt;&lt;p&gt;. Withdrawing from or avoiding friends and family &lt;/p&gt;&lt;p&gt;. Having trouble bonding or forming an emotional attachment with her baby &lt;/p&gt;&lt;p&gt;. Persistently doubting her ability to care for her baby &lt;/p&gt;&lt;p&gt;. Thinking about harming herself or her baby.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;How is postpartum depression treated?&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;. Taking enough rest cause stress itself affects the brain plus it&apos;s well known that taking care of a newborn is not easy &lt;/p&gt;&lt;p&gt;. Exercise well and I don&apos;t mean rigorous exercise (the body is still tender), taking a stroll, checking up on loved ones or hanging out with friends &lt;/p&gt;&lt;p&gt;. Counseling / medication: it depends on how severe the situation is, for some all they would need is counseling while for some other mothers they would need medication and counseling together.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;What can I do to take better care of myself if I get postpartum depression?&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;The major thing to do is to speak out. I mean confide in someone you know you can trust. You can contact us; Instagram- @psnafrica. Facebook - postpartum support network or you can send us an email - psnafrica@gmail.com and we would take it up from there and treatment with us is absolutely free cause our major aim @psnafrica is to provide support for mother&apos;s experiencing postpartum moods disorder and like I said before it&apos;s absolutely free&lt;/p&gt;&lt;p&gt;Also, to add to it, postpartum depression when it&apos;s not well treated, can lead to postpartum psychosis that Yoruba refer to as &quot;abisinwin&quot; and some people do think it&apos;s a spiritual attack but it is not an attack.&lt;/p&gt;', 'public', '[\"lbrKxVdNXCTNT62_41.217.92.90____tired woman.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-09-16 20:13:13', '2019-09-16 20:13:13'),
(35, 'news20190917030412x8', 'police-nab-man-with-20-bags-of-indian-hemp', 'Police Nab Man With 20 Bags Of Indian Hemp', '&lt;p&gt;Operatives of the Ajiwe Police Station have arrested a driver identified as Usman Adeyemi with twenty bags of Indian hemp yesterday. &lt;/p&gt;&lt;p&gt;The driver who lives in Itafaji, Lagos Island drove his bus with twenty bags of Indian hemp well hidden in the bus. &lt;/p&gt;&lt;p&gt;According to a report, the arrest of Usman followed a tip-off to the operatives of the Ajiwe Police Station. &lt;/p&gt;&lt;p&gt;He was searched and apprehended on his way to deliver the Indian hemp. &lt;/p&gt;&lt;p&gt;However, interrogation is still ongoing. &lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'public', '[\"IDhj2miSKI5kJun_154.118.8.98____IMG-20190917-WA0000.jpg\",\"IDhj2miSKI5kJun_154.118.8.98____IMG-20190917-WA0001.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-09-17 15:04:12', '2019-09-17 15:04:12'),
(36, 'news20190918110659SU', 'court-dissolves-26-year-old-marriage-over-lack-of-love', 'Court Dissolves 26-year-old Marriage Over Lack Of Love', '&lt;p&gt;A customary court, sitting in Sangotedo Ajah, on Tuesday has dissolved a twenty-six-year-old marriage between 57-year-old Anifowose Idris and 45-year-old Anifowose Temitope.&lt;/p&gt;&lt;p&gt;The petitioner, Idris, a resident of Awoyaya, told the court to dissolve his marriage on grounds of alleged infidelity, lack of love and irreconcilable differences.&lt;/p&gt;&lt;p&gt;He stated that his wife had cheated on him severally and was fond of bringing her lover into their matrimonial home.&lt;/p&gt;&lt;p&gt;Idris told the court that on few occasions, her wifeâ€™s lover had embarrassed him, calling him names.&lt;/p&gt;&lt;p&gt;â€˜â€™Our marriage lacks love. We no longer love each other. I heard that my wife has a lover which I have confirmed recently. I was at a party when her lover walked up to me and insulted me. We had a fight and I was locked up because of him. I want nothing to do with her. I lived out of our matrimonial home since 2016, due our lack of love, infidelity and lack of respect for me but now my lord, I want to take possession of my house, so, I want her outâ€™â€™ He said.&lt;/p&gt;&lt;p&gt;The petitioner, who insisted on the dissolution of the marriage, told the court that he needed to be at peace with himself and to take care of his three children.&lt;/p&gt;&lt;p&gt;The respondent, however, denied ever having any sexual relationship with any other man since she met her husband, claiming that her husband was under the influence of a third wife.&lt;/p&gt;&lt;p&gt;She told the court that in-order for peace to reign, the marriage needed to be dissolved, following the fact that, the case was earlier presented to the court in 2017 and May, 2019.&lt;/p&gt;&lt;p&gt;The female court president, however dissolved the marriage, ordering Ms Temitope out of the petitionerâ€™s house. She also ordered that the petitioner gets a new apartment for Ms Temitope, take care of the childrenâ€™s welfare and to always send her a monthly allowance of N10,000.&lt;/p&gt;', 'public', '[\"LQTCwt4IMiY5XCK_197.242.113.164____images (10).jpeg\"]', 'Eve', '', '', '', 'reporter1', '2019-09-18 11:06:59', '2019-09-18 11:06:59'),
(37, 'news20190919094301mu', 'â€˜â€™my-husband-drops-n500-to-take-care-of-our-five-kids,-i-want-a-divorceâ€™â€™', 'â€˜â€™My Husband Drops N500 To Take Care Of Our Five Kids, I Want A Divorceâ€™â€™', '&lt;p&gt;&lt;span style=&quot;color: black;&quot;&gt;Mrs Blessing Okafor, a mother of five, dragged her husband Godwin Okafor to a customary court sitting at Sangotedo, Ajah, seeking for divorce.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: black;&quot;&gt;Blessing Okafor who has been married for 12years stated that her husband has been irresponsible and constantly beating her when she asked for money.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: black;&quot;&gt;â€˜â€™My lord, since I got married to him, each time I asked for money he refuses to give me, but I know for sure that whenever he is out, he takes care of himself. Sometimes, he drops just 500 naira to take care of five children. Our children are currently not in any school and it is all his faultâ€ said Blessing.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: black;&quot;&gt;â€œI sell corn by the roadside, which is what my children and I depend on. Meanwhile, my husband has a shop where he sells fairly used (akube) clothes, yet he brings only 500 nairaâ€™â€™ She told the court.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;In response to the allegations, Mr Okafor denied them all, including giving her 500 naira to take care of the children.&lt;/p&gt;&lt;p&gt;â€˜â€™My wife is telling lies my lord. I give her 2000 naira daily and when I am broke, I give 1,500 naira. When I do not make sales, I make sure I buy foodstuff. As for the school, I have seen a school to enroll them in. By next month, they will start going to schoolâ€™â€™ He said&lt;/p&gt;&lt;p&gt;When asked for the exact date he last provided the N2,000 or N1,500, Mr Okafor was unable to provide an answer. &lt;/p&gt;&lt;p&gt;After the jury had listened to the couple, for the sake of monitoring Okaforâ€™s level of responsibility according to his claim, he was ordered to drop the daily N2,000 or N1,500 for his wife through the court registrar. &lt;/p&gt;&lt;p&gt;The case was however adjourned to 1&lt;sup&gt;st&lt;/sup&gt; of November 2019.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'public', '[\"pTcX6Yi3ep3cxeL_41.217.122.245____gravel.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-09-19 09:43:01', '2019-09-19 09:43:01'),
(38, 'news20190923084327T2', 'state-of-business-after-xenophobia-instigated-attack.', 'State of Business After Xenophobia Instigated Attack.', '&lt;p&gt;A visit to the Novare Mall (shoprite) Sangotedo 48 hours after resumption exposes the ripple effect of the September 3rd attack on the mall, ranging from extreme low patronage to reparation.&lt;/p&gt;&lt;p&gt;Ajah city reporter who visited the mall at the close of work, which is expected to be the peak of business, reports that itâ€™s not business as usual since re-opening on Saturday 21st September.&lt;/p&gt;&lt;p&gt;A respondent, Michael who works with the mall, expresses optimism that the turnout of customers would get better as time goes by, adding that fear on the part of customers is the apparent reason for the low patronage.&lt;/p&gt;&lt;p&gt;â€˜â€™Shoprite reopened on Saturday and things arenâ€™t the way they used to be. The patronage is extremely low. The stores that were raided and damaged are yet to reopen and I canâ€™t blame them because most of the stores were emptied. With time, things will surely get betterâ€™â€™ Michael said.&lt;/p&gt;&lt;p&gt;However, operatives of the Nigerian Police Force were sighted at the entrance of mall.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt; &lt;/p&gt;', 'public', '[]', 'Eve', '', '', '', 'reporter1', '2019-09-23 20:43:27', '2019-09-23 21:14:13'),
(39, 'news201909250929523s', 'wife-leaves-court-hearing-to-stop-divorce', 'Wife Leaves Court Hearing To Stop Divorce', '&lt;p&gt;A 50-year-old Austin Nwachukwu sadly told a court sitting in Sangotedo, Ajah to give a final advise to his wife who wonâ€™t desist from her unnecessary spending and lavish lifestyle.&amp;nbsp;&lt;/p&gt;&lt;p&gt;The man who requested for a divorce during a first sitting which took place in April, said he had tried working things out with his wife but all she did was frustrate his efforts and plans for their three children and their future.&lt;/p&gt;&lt;p&gt;His wife who was seen at the court premises earlier today had left just before the sitting. It was later said that, his wife stopped picking his calls and her number became unreachable.&lt;/p&gt;&lt;p&gt;â€˜â€™My lord, I have tried everything humanly possible to tame the lavish routine of my wife, but we always end up arguing over it. I was well-to-do and life happened, but my wife does not seem to understand that our lifestyles have got to adjust. I have great plans and I have been working towards making our lives better once again, but she scatters my plans, spend money on unnecessary things like buying expensive jewelries, clothes and cosmetics. I am tiredâ€™â€™ Mr Austin told the court.&lt;/p&gt;&lt;p&gt;â€˜â€™She has no priority. She spends too much. I recently moved my children to another school, a school we can afford. My wife was not pleased with the school, saying it doesnâ€™t befit her profile, forgetting that, the school is what my pocket can afford. I am tired of the marriage. She is affecting my life negatively. She now keeps late night. I am still willing to work things out for the last time because I do not have a choice. But my lord, if she doesnâ€™t follow my conditions, which are taking care of my children and to also stop wasting money she didnâ€™t work for, then I am pleading for a divorce.â€™â€™ He added.&lt;/p&gt;&lt;p&gt;After the female president had listened to Mr Austin, she revealed that a letter of advice would be sent to his wife and the judgement would be placed on hold till the 1&lt;sup&gt;st&lt;/sup&gt; of November.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'public', '[\"yFtC9yUz57Udax6_41.217.95.26____gravel.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-09-25 09:29:52', '2019-09-25 09:29:52'),
(40, 'news20190926092935T6', 'we-have-fought-crime-to-a-standstill---area-j-command-', '&quot;We have fought crime to a standstill&quot; - Area J Command', '&lt;p&gt;Area â€˜Jâ€™ command headquarters, lekki peninsula, ACP Gbolahan Olugbemi who remarks that, though, the police have been able to fight crimes to a standstill in the community, stressed the need for a better police/public relationship to maintain the peace in Ajah city.&lt;/p&gt;&lt;p&gt;He made this known at a police/community town-hall meeting, themed; Community Policing: A panacea to crime prevention and social economic development.&lt;/p&gt;&lt;p&gt;â€˜â€™As a society is growing, there is tendency for crime to grow too. Notwithstanding, we have fought violent crime such as armed robberies, kidnappings, communal clashes, burglary, stealing and land grabbing to a standstillâ€™â€™ He said.&lt;/p&gt;&lt;p&gt;â€˜â€™We are presently giving cultism a good fight. hitting them hard, and we are certain that in the next two weeks, we will have succeeded in grounding themâ€™â€™ he added.&lt;/p&gt;&lt;p&gt;While addressing the public present, the Area Commander reiterated the purpose of the occasion, which was to re-engineer police/community relations and set in motion a honest attempt to possibly resolve the dichotomy that exists between the police and the public.&lt;/p&gt;&lt;p&gt;He stressed that partnering with the people of the community will guarantee a secured society and protection of lives and property.&lt;/p&gt;&lt;p&gt;â€˜â€™Police/Community partnership is necessary. We want times where police can always count and rely on the peopleâ€™s supports. We look forward to it and we are working towards itâ€™â€™&lt;/p&gt;&lt;p&gt;He implored the residents to form vigilante groups to assist the police in the fight against crime.&lt;/p&gt;&lt;p&gt;The height of the occasion was a launch of a community newspaper, â€˜â€™Lekki Peninsula Todayâ€™â€™. A newspaper solely for the Lekki and Epe residents.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'public', '[\"X7zro9NaTp111Le_41.217.90.91____images (11).jpeg\"]', 'Eve', '', '', '', 'reporter1', '2019-09-26 09:29:35', '2019-09-26 09:29:35'),
(41, 'news20191001105457Ht', 'quack-nurse-arrested-over-death-of-pregnant-woman', 'Quack Nurse Arrested Over Death Of Pregnant Woman', '&lt;p&gt;Police operatives of the Langbasa Division have arrested a quack nurse who caused the death of a pregnant woman who was due to give birth.&lt;/p&gt;&lt;p&gt;Mariam who has been parading herself as a nurse and midwife at her home &apos;clinic&apos;, was unable to aid the pregnant woman identified as Shikemi, deliver of her baby. &lt;/p&gt;&lt;p&gt;According to information gathered, the deceased lost a lot of blood while trying to give birth, she was said to have become unconscious while the baby died in the process.&lt;/p&gt;&lt;p&gt;The suspect could not resuscitate her, leading to Shikemiâ€™s death, a development that did not go down well with the husband of the woman who reported the matter at the police station and she was subsequently arrested. The information further revealed that the deceased died as a result of complications that arose while trying to deliver of her baby. &lt;/p&gt;&lt;p&gt;&quot;I didn&apos;t know she&apos;s a quack nurse. My deceased wife had always known her as nurse Mariam and that is why I had to take her to the home clinic. I spent hours waiting for the good news and when I saw her hours later, she told me that she is working on my wife, that she&apos;d give birth soon. She later broke the news to me. I forced my way into the room where my late wife was, I was devasted&quot; the husband said. &lt;/p&gt;&lt;p&gt;However, her corpse has been deposited at an undisclosed mortuary and the quack nurse has been transferred to the State CID Panti&amp;nbsp;&amp;nbsp;&lt;/p&gt;', 'public', '[]', 'Eve', '', '', '', 'reporter1', '2019-10-01 10:54:57', '2019-10-01 19:56:39'),
(42, 'news20191002075817OF', 'man-locked-up-for-buying-and-using-stolen-phone', 'Man Locked Up For Buying And Using Stolen Phone', '&lt;p&gt;A 23 year old man, name withheld, was thrown behind bars for buying and using a stolen mobile phone that belonged to a wife of a Nigerian Naval officer. \r\n&lt;/p&gt;&lt;p&gt;According to report, the wife (name withheld) forgot her mobile phone in Murtala Muhammed International Airport in Lagos, November, last year. \r\n&lt;/p&gt;&lt;p&gt;She revealed that she tried looking for her 300,000 naira phone but gave up when all efforts had proved abortive, only to discover recently, that she could track the mobile device. \r\n&lt;/p&gt;&lt;p&gt;The officerâ€™s wife further said that, with the help of someone, she was able to track her phone used by the man in Alakuko, on the mainland. \r\n&lt;/p&gt;&lt;p&gt;She however, got security officers from Ajah to get him arrested, locked him behind bars, until he provided the man who sold the phone to him. &lt;/p&gt;&lt;p&gt;A source close to the officer&apos;s wife stated that, she wanted the 23-year-old to pay back the full amount of money she used in getting the phone last year and to also provide the alleged phone thief. &lt;/p&gt;&lt;p&gt;Meanwhile, the young man who had just completed his undergraduate degree, begged that he was no thief, stating, that he swapped his old phone for the said mobile phone, from a man whom he met last year.\r\n&lt;/p&gt;&lt;p&gt;The 23-year-old explained that the man was into phone business, they often kept in touch with each other when it was about business, without thinking that he was a thief until the day the police came for him. &lt;/p&gt;&lt;p&gt;While trying to reach the businessman on WhatsApp, he disclosed that the businessman had told him that he was no longer in the country but could still run the business. \r\n&lt;/p&gt;&lt;p&gt;Responding to the allegation, a source said that the family of the 23-year-old who met with the wife of the Naval officer, begged for his release while affirming his innocence. \r\n&lt;/p&gt;&lt;p&gt;â€œThe mother of the boy has been crying and begging for the release of her son. She wants the police to get to the root of the matter but while they are working on tracking the seller, she is begging that they release her son, knowing fully well that heâ€™s spent some days in cell. The family doesnâ€™t live in Ajah. They all come to the Police station from Alakuko but a family friend who is an aunt to the boy stays in Ajah. She said she would have the boy stay with her while the investigation is ongoingâ€, the source said. \r\n&lt;/p&gt;&lt;p&gt;â€œAt the look of things, the madam wants her money back and also wants the guy who sold the phone to the boy. Although, he was able to prove that he didnâ€™t steal the phone by chatting with the alleged phone thief, talking about swapping phones and paying for the phones he intend to swap, but sheâ€™s not buying that chat. All the family members wants right now, is for the madam to tell the police to release the boy for now. They have been crying and begging the madam. This case wouldnâ€™t be so complicated if the alleged phone thief was in Nigeria. Right now, he claims that heâ€™s in Germany. The boy&apos;s mother has promised to look for the money and buy the madam a new phone but she is not responding to that again. She really wants the alleged phone thief to begin with. I was told that the alleged phone thief will be tracked down but we do not know how long it would takeâ€ the source added. \r\n&lt;/p&gt;&lt;p&gt;A source close to the wife of the Naval officer said that, she is positive that the boy would be released to go home soon. \r\n&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'public', '[\"7ERxJC5pBybuMbs_197.210.61.12____prison.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-10-02 07:58:17', '2019-10-02 18:13:31'),
(43, 'news20191003035005iU', 'my-wife-uses-my-sperm-for-fetishism--husband-tells-court', '&quot;My Wife Uses My Sperm For Fetishism&quot;- Husband Tells Court', '&lt;p&gt;Mr Nonso has accused his wife of casting spells on him and using his sperm for fetishism as well as making him jobless for many years. &lt;/p&gt;&lt;p&gt;Nonso who has been married for 15 years and a father of three, presented the accusations before a customary court sitting in Sangotedo on Tuesday. &lt;/p&gt;&lt;p&gt;He said that his life has been turned up side down since he married her, despite the warnings he received from his family. &lt;/p&gt;&lt;p&gt;The petitioner alleged that the respondent was fetish, explaining how a prophet revealed to him that his wife used his sperm to cause him harm and he confirmed it himself. &lt;/p&gt;&lt;p&gt;â€œMy life is not going well and to my greatest surprise, I was told that she is the one behind my problems. I found it hard to believe because she is a deacon in Church and she likes to go to church all the time. Few years ago, she told me that she loves my sperm which is the reason she likes cleaning me up after love making. Sometimes, she likes having it on her palm. When I asked her why she preferred my sperm on her hand, she told me she liked using it. I thought she was joking but now I know that it is true. You can ask her yourself my lord. She said it with her own mouthâ€ he told the court. &lt;/p&gt;&lt;p&gt;The respondent, Mrs Grace, denied the allegations, accusing her husband of â€Žlack of care, stubbornness, death threats and domestic violence.&lt;/p&gt;&lt;p&gt;â€œI will never harm him. I do not even have the time to do that. All I care for are my children, my business and my service to God. I canâ€™t count the number of times he has beaten me. I had to move myself and my children out of our home because I couldnâ€™t stand the beatings againâ€ She said. &lt;/p&gt;&lt;p&gt;â€œSomehow he got to know the place I moved into and came to threaten me. He said he would have me killed by his brother who is a cultist. He would disturb me with calls. So, one night, he called and I gave the phone to my daughter to speak with him without knowing the phone was on loud speaker. He called me dirty names and hung up. My neighbour was a witness when he came to threaten me at my place and my daughter was also a witness to all the name callingâ€ she added. &lt;/p&gt;&lt;p&gt;The petitioner, however, denied ever threatening her and prayed the court dissolve the marriage and give him the custody of the three children.&lt;/p&gt;&lt;p&gt;Responding to the couple, the President asked if they really wanted a divorce, the husband replied that the divorce was the only way forward but the respondent remained quite. &lt;/p&gt;&lt;p&gt;However, the president adjourned the case to 22nd of October&lt;/p&gt;', 'public', '[\"HCXMUm8Oztjract_197.210.63.23____pTcX6Yi3ep3cxeL_41.217.122.245____gravel.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-10-03 15:50:05', '2019-10-03 15:50:05'),
(44, 'news20191007090118Lq', 'tension-as-area-boys-clash-in-ajah,-osapa-and-jakande.-', 'Tension As &#039;Area Boys&#039; Clash In Ajah, Osapa And Jakande.', '&lt;p&gt;There was a serious pandemonium in Ajah yesterday, after two separate factions of &apos;area boys&apos; in the area clashed, which led to the unavailability of motorists, residents and road users, running to save their lives. &lt;/p&gt;&lt;p&gt;The hoodlums who were armed with machetes, bottles, charms and other dangerous weapons, fought each other -injuring themselves in a brawl for supremacy. &lt;/p&gt;&lt;p&gt;&quot;It took me minutes before getting a cab to Ajah and when I eventually got to Ilaje. Everywhere looked so scanty. There was no keke or bike to take me home. On getting a keke, the fare was on the high side. Normally, from Ajah to Sangotedo is one hundred naira but it became two hundred. I felt tension everywhere. I was later told that a fight occurred between some miscreants&quot; a resident recounted. &lt;/p&gt;&lt;p&gt;According to information received, the fight extended to Osapa London and Jakande, with some of the miscreants sighted with stones, woods and other dangerous weapons. &lt;/p&gt;&lt;p&gt;However, Police patrol operatives who were deployed to ensure safety and normalcy have been sighted this morning to monitor situations around the areas. &lt;/p&gt;&lt;p&gt;Therefore road users are advised to exercise extreme caution and maintain situational awareness while commuting through the Epe - Ajah - Jakande route today.&lt;/p&gt;&lt;p&gt;Ajahcity will keep you abreast of any or further development. &lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'public', '[]', 'Eve', '', '', '', 'reporter1', '2019-10-07 09:01:17', '2019-10-07 09:01:17'),
(45, 'news20191007103155nt', '23-year-old-armed-robber-arrested-in-langbasa-', '23-year-old Armed Robber Arrested In Langbasa', '&lt;p&gt;Security officers have apprehended a 23 year old armed robber in Langbasa, Ajah.\r\n&lt;/p&gt;&lt;p&gt;Ayobami, who belonged to a gang of armed robbers terrorising Langbasa residence, was apprehended after attacking a photographer, kicked him to a pulp and taking his belongings. \r\n&lt;/p&gt;&lt;p&gt;According to a tip, Ayobami got arrested few minutes later with the photographerâ€™s camera and bag, one locally made pistol, three machetes, one cleaver knife, some stolen amount of money. \r\n&lt;/p&gt;&lt;p&gt;A report gathered revealed that Ayobami led the police officers to the crime scene where the photographer (name withheld) was and taken to a nearby hospital. \r\n&lt;/p&gt;&lt;p&gt;Ayobami, who was willing to cooperate with security officers, stated that, there are other members of the gang whose whereabouts are currently unknown as they have fled their usual location. \r\n&lt;/p&gt;&lt;p&gt;He said that his members, including him, specialised in robbing people of their valuables and attacking them if they refused to cooperate. \r\n&lt;/p&gt;&lt;p&gt;However, information says that investigation is ongoing as Detectives are working to nab the members. \r\n&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'public', '[\"Hvx0vTImkRznCrg_197.210.61.15____images (17).jpeg\"]', 'Eve', '', '', '', 'reporter1', '2019-10-07 10:31:55', '2019-10-07 10:31:55'),
(46, 'news20191008071849MQ', 'couple-accuse-each-other-of-adultery,-seek-marriage-dissolution-', 'Couple accuse each other of adultery, seek marriage dissolution', '&lt;p&gt;A Sangotedo Customary Court today dissolved an eight-year-old marriage between Mrs Tina Chibuike and Mr Emeka over infidelity, anger issues and domestic violence. \r\n&lt;/p&gt;&lt;p&gt;The petitioner, Mrs Tina had pleaded with the court to dissolve the marriage, citing her husbandâ€™s promiscuity, lack of care and battery.\r\n&lt;/p&gt;&lt;p&gt;She told the court that her husband Mr Emeka, with whom she had two children, had cheated on her, was always angry at her and beating her when they had little arguments.\r\n&lt;/p&gt;&lt;p&gt;â€œHe beats me a lot. There were times when he would be so angry and wrestle me till he tears off the dress on me and then chases me out with nothing on. I can also recall the time he left our matrimonial home for nine months to be with his lover. There was no communication or care towards our children at that time. I have had enough. I want a divorce,â€™â€™ she said.\r\n&lt;/p&gt;&lt;p&gt;However, the respondent denied the allegations, saying she was the one who practices infidelity by inviting her lover over into their matrimonial home.\r\n&lt;/p&gt;&lt;p&gt;He further revealed that, they both fought each other and her lover often sent him messages, stating that he would also sleep with his daughter.\r\n&lt;/p&gt;&lt;p&gt;He went ahead to show the jury the messages received but there was no proof that they were sent by his wife&apos;s alleged lover. &lt;/p&gt;&lt;p&gt;â€œShe&apos;s accusing me of infidelity, when she has a lover.In fact, they both share our matrimonial bed when I was away. There were times I got some messages saying that my daughter isnâ€™t safe and that my daughter would be molested. I suspect that these messages were from my wifeâ€™s lover. I went to my service providerâ€™ centre to find out who the sender was but it was impossible. I would like a divorce as well and I plead for the custody of my two children. I dont want them to learn nonsense from herâ€œ He told the court.\r\n&lt;/p&gt;&lt;p&gt;President of the court, however declared that the two would no longer be husband and wife, as the marriage had broken down irretrievably.\r\n&lt;/p&gt;&lt;p&gt;â€œHenceforth, you are no longer to be called husband and wife, as investigation revealed that the respondent has anger issues which youâ€™ve constantly demonstrated during and after counselling. It was also confirmed that youâ€™re a wife beater. You both were caught in the act of infidelity, meaning that, you both are currently seeing somebody else while marriedâ€ the president said. \r\n&lt;/p&gt;&lt;p&gt;â€œEach of you should go on his or her separate ways. The court wishes both of you well in your future endeavour. However, the court hereby award the custody of the two children to the petitioner because they are still minorsâ€ She said. \r\n&lt;/p&gt;&lt;p&gt;She ordered Mr Emeka to be responsible for the childrenâ€™s upkeep and education,. &lt;/p&gt;&lt;p&gt;â€œThe children must be jointly groomed toward a better life, as your separation should not affect their upbringing,â€ She said. \r\n&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'public', '[\"sLOD4j4ueS51J7C_197.210.63.23____wedding-ring-768x507.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-10-08 19:18:49', '2019-10-08 19:18:49'),
(47, 'news20191009060326Te', 'we-should-all-focus-on-agriculture-because-it-has-a-lot-of-potential.-for-example,-lagos-has-the-biggest-food-market-in-africa---special-adviser-on-agric-and-social-development.', 'We should all focus on agriculture because it has a lot of potential. For example, Lagos has the biggest food market in Africa - Special Adviser on Agric And Social Development.', '&lt;p&gt;The Special Adviser on Agric &amp;amp; Social Development. (Eti-Osa Local Government), Mr. Fadipe Olajide, tells Toluwalope Eve in this interview that Agriculture is the surest way of generating resources and at the same time, reducing unemployment. &lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;Lagos is not known to be a state doing too well in the area of arable crop production, possibly because of the little or no farm land. How is the state sustaining it&apos;s agricultural sector? &lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;In spite of the oil, agriculture remains the base of the Nigerian economy, providing the main source of livelihood for most Nigerians. &lt;/p&gt;&lt;p&gt;Although, the sector faces many challenges, notably an outdated land tenure system that constrains access to land (1.8 ha/farming household), a very low level of irrigation development (less than 1 percent of cropped land under irrigation), limited adoption of research findings and technologies, high cost of farm inputs, poor access to credit, inefficient fertilizer procurement and distribution, inadequate storage facilities and poor access to markets have all combined to keep agricultural productivity low (average of 1.2 metric tons of cereals/ha) with high postharvest losses and waste. Despite these challenges, agriculture still remains the largest sector of the Nigerian economy and employs two-thirds of the entire labour force. &lt;/p&gt;&lt;p&gt;We should all focus on agriculture because it has a lot of potential. Lagos State, for example, has the biggest food market in Africa. According to researches, Mile 12 market has been reported to generate a turnover of over N4bn per day. &lt;/p&gt;&lt;p&gt;Thus, Agriculture is the surest way of generating resources and at the same time, reducing unemployment. However, we must add value to our agricultural produce. &lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;Agriculture is a wide field, which animal husbandry is part of, what height has the state gotten to in developing this part of agriculture, being another option the state got? &lt;/em&gt;&lt;/strong&gt;Yes agreed agriculture is a wide field which animals husbandry is part of. But looking at independent in 1960 agriculture accounted for well over half of our Gross domestic product (GDP), and was the main source of export earnings and public revenues, with the agricultural marketing boards playing a leading role, but today this leading role in the economy has been taken over by the national oil company, the Nigerian National Petroleum Company (NNPC). &lt;/p&gt;&lt;p&gt;Thus, according to central bank of Nigeriaâ€™s data (2008) oil still account for our major revenue ( gearing up to 80%) and almost 100% of our export earnings. &lt;/p&gt;&lt;p&gt;Although agriculture particularly, forestry, livestock and fishing is shown to serve as major activity of the majority of Nigerians.&lt;/p&gt;&lt;p&gt;It is clear that we indulge in agriculture purely as personal survival strategies rather than as a calculated effort to warming the engine of our countryâ€™s economy. This is really where the national economic problems lies. &lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;There are seas and rivers all around Lagos. Are there rules guiding fishery in Lagos?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Yes they&apos;re all round Lagos state because Lagos state itself is a riverine area and it was surrounded by water. However, Fishing is the activity of trying to catch fish. Fish are normally caught in the wild. &lt;/p&gt;&lt;p&gt;Techniques for catching fish include hand gathering, spearing, netting, angling and trapping. â€œFishingâ€ may include catching aquatic animals other than fish, such as molluscs, cephalopods, crustaceans, and echinoderms. &lt;/p&gt;&lt;p&gt;The term is not normally applied to catching farmed fish, or to aquatic mammals, such as whales where the term whaling is more appropriate. In addition to being caught to be eaten, fish are caught as recreational pastimes. Fishing tournaments are held, and caught fish are sometimes kept as preserved or living trophies. When bioblitzes occur, fish are typically caught, identified, and then released. But these chemicals end up in the tissues at different [levels of] concentration. They accumulate in different tissues of the fish and we donâ€™t look at fish as one and the same thing. &lt;/p&gt;&lt;p&gt;We have the muscle, the kidney, the liver and others, so the concentration of these toxic chemicals varies with different tissues. If you look at the liver, it varies because it is the detoxification centre of the body of any living creature. When these chemicals are taken in large quantities by fish, they become toxic; as a result, the oxygen-carrying capacity of the blood will be hampered. Again, the mere presence of GamalinR or DDT on the surface of the water also reduces the oxygen absorption of that water at that level. &lt;/p&gt;&lt;p&gt;That is to say, when you have a large quantity of organophosphorus taken in by the fish it will be absorbed through the intestine, then the blood system, then the red blood cells that carry oxygen to the tissues will be impaired while tissue respiration will be affected and they will be damage to those tissues. &quot;Artisan Fishermen use Chemicals to catch fish out of desperationâ€ &lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;How is government generating funds from agriculture? Any exportation of fishes or plans? &lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;The Federal Government of Nigeria (FGN) did recognize the importance of the agricultural sector early enough, so it decided to pursue policies that promote access to finance and financial infrastructure for agricultural production, with the ultimate aim of achieving the countryâ€™s developmental goals. &lt;/p&gt;&lt;p&gt;The reasons for government&apos;s intervention in the agricultural financial market are to: - Smoothen out imperfections in the agricultural financial market. The agricultural finance market (also the rural financial market) exists to facilitate exchange, a platform for the reconciliation of demand and supply of capital for agriculture and rural development.&lt;/p&gt;&lt;p&gt;Often times, the market is constrained by certain factors such as information asymmetry, moral hazard, adverse selection, etc, from performing its roles effectively. Government then intervenes to iron out those imperfections and create a more Pareto-optimal environment for market players. Government also ensures food security. &lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;Any partnership with states or countries to improve agricultural section of the state, knowing its another sector capable of drastically reducing unemployment amongst the youths.&lt;/em&gt;&lt;/strong&gt; &lt;/p&gt;&lt;p&gt;Sure the federal and state government are partnering with other countries. The state partners with Kebbi State in making sure we have our own rice. For instance, we have LAKE RICE. &lt;/p&gt;&lt;p&gt;The production of LAKE RICE is currently creating employment for some of our youths. &lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;What is your take about the involvement of youths in agriculture in Lagos? Or how can you rate it? &lt;/em&gt;&lt;/strong&gt;Agriculture is important to the development of any nation; this development includes fostering the full participation of youth in the agricultural sector. &lt;/p&gt;&lt;p&gt;The ageing smallholder farmers are less likely to adopt the new technologies needed to sustain the increase in agricultural productivity, so the sector today now offers career opportunities in research, environment, financial management, engineering and technical areas for the youths to explore. &lt;/p&gt;&lt;p&gt;This effort seeks to change the negative perception of some youths who believe that farmers are uneducated, unskilled, and physical labourers with extremely low economic return.&lt;/p&gt;&lt;p&gt;Agriculture has gone beyond that right now. I can categorically say about 60% of the youths are into farming now. &lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;Thereâ€™s been reoccurring news of youth fights and cultism lately. Though the new government just took off not so long. But, is there any plan to stem the menace? &lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;The most essential problem facing tertiary institutions in Nigeria is the problem of cultism here and there. &lt;/p&gt;&lt;p&gt;To curb cultism in our institutions therefore, government must ensure it creates an enabling environment to promote teaching and learning. &lt;/p&gt;&lt;p&gt;Government should also engage in the provision of massive infrastructure which would include recreational facilities for sports to engage the students positively. Currently, there are so many distractions on our campuses. &lt;/p&gt;&lt;p&gt;One of them is having politicians invading our campuses to campaign and lure students with so many promises and offer them money. &lt;/p&gt;&lt;p&gt;At the end of the day, some of these students end up as thugs for these politicians. Government must stop this ugly trend by discouraging such action. &lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;We all know health is wealth, and the health of the society is your goal. But considering the heaps of dirt all around the neighbourhood, peopleâ€™s health are challenged. What is governmentâ€™s plan to reduce this or possibly eradicate heaps of dirt around. What will your ministry advice the residents amidst all these? &lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;There are lot of items that we use everyday and then get rid of them by throwing them in the garbage. Unfortunately, this results in pile of garbage as we throw old items, as well as packaging of new items. &lt;/p&gt;&lt;p&gt;Reducing solid waste is reducing the amount of trash that goes to landfills. Reduce, Reuse and Recycle are most common methods to reduce landfill waste. &lt;/p&gt;&lt;p&gt;Landfill waste poses a huge problem as it has economic and environmental impact and secondly, due to slow decomposition rate which takes thousands of years, several acres of land has already been virtually rendered useless that could have been actually used for setting up new residential colonies or industries. &lt;/p&gt;&lt;p&gt;My advise is that we should always take reusable bags to the store when shopping. Reduce or eliminate the use of paper, plates and cups. Reduce or minimise use of plates bag and polystyrene foam. &lt;/p&gt;&lt;p&gt;Store leftover foods in reusable containers instead of single use plastic bags or polystyrene foam containers.&amp;nbsp;&amp;nbsp;&lt;/p&gt;', 'public', '[\"DrWeTlkX1AiscwT_197.210.61.16____20191009_172721.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-10-09 18:03:26', '2019-10-10 16:52:29'),
(48, 'news20191011121243Ks', 'lady-takes-friend-to-police-station-for-allegedly-stealing-wig', 'Lady Takes Friend To Police Station For Allegedly Stealing Wig', '&lt;p&gt;There was a mild drama at a police station in Langbasa, as a lady, Sadiat, accused her friend and customer of stealing her expensive wig from her home. \r\n&lt;/p&gt;&lt;p&gt;Sadiat revealed that, she made a wig specifically for her own use, only to discover it was no where to be found. &lt;/p&gt;&lt;p&gt;â€œI am a hairdresser and so I make wig for myself and for my customers. She is a friend and she sometimes patronizes me. One of my wigs got missing in my home and I almost gave up searching for it, only to discover that sheâ€™s the one who stole it. I saw the wig on her head when she posted her picture on WhatsApp. When I saw it, I knew right away that it was my wig. The only difference now is, she dyed the hair from brown to black and changed the closure â€œ She said. \r\n&lt;/p&gt;&lt;p&gt;Responding to the allegation, the friend insisted that she bought the wig at a market and she had no reason to dye it. \r\n&lt;/p&gt;&lt;p&gt;â€œI would never steal her wig. I own it. I bought it some months ago and I have no reason to dye itâ€ she said. \r\n&lt;/p&gt;&lt;p&gt;A witness who pleaded anonymity said Sadiat wanted to prove that the hair belonged to her by washing off the dye to reveal its former colour, brown but it didnâ€™t work out. \r\n&lt;/p&gt;&lt;p&gt;However, one of the officers, who attended to the ladies told them to return to the station with a solid proof. \r\n&lt;/p&gt;&lt;p&gt;In the meantime, the station keeps the wig. \r\n&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'public', '[\"vj3Dmehd7KmZb98_197.210.61.16____hair.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-10-11 00:12:43', '2019-10-11 09:12:24');
INSERT INTO `posts` (`id`, `token`, `slug`, `title`, `content`, `category`, `media`, `publisher`, `source`, `sourceurl`, `officer`, `postedby`, `dateposted`, `dateupdated`) VALUES
(49, 'news20191012110529PS', 'three-injured-as-three-storey-building-collapses-in-abijo-', 'Three injured as three-storey building collapses in Abijo', '&lt;p&gt;A three-storey building situated at Sharks Squad, Abijo, Lekki-Epe, collapsed at about 7:14 p.m on Thursday, injuring three persons.\r\n&lt;/p&gt;&lt;p&gt;The Director-General, Lagos State Emergency Management Agency (LASEMA), Dr Olufemi Oke-Osanyintolu, who made the disclosure to journalists, said that, the collapsed building was under construction and there no death recorded. \r\n&lt;/p&gt;&lt;p&gt;â€œThe three persons sustained various degrees of injuries and they have been treated and discharged. Officials are still working and monitoring situation at the site.â€ Oke-Osanyintolu said.\r\n&lt;/p&gt;&lt;p&gt;He, however, said that the Lagos State Building Control Agency (LABSCA), as well as the Ministry of Solid Material Testing Agency And Physical Planning had been informed to conduct further investigation.\r\n&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'public', '[\"F5O1CjQpX46WrGT_197.210.63.23____The-three-storey-building-that-gave-way-in-Lekki-Lagos-on-Thursday--e1570742280458.jpg\"]', 'Eve', '', '', '', 'reporter1', '2019-10-12 11:05:29', '2019-10-12 11:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `posts1`
--

CREATE TABLE `posts1` (
  `id` bigint(255) NOT NULL,
  `token` varchar(20) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `category` varchar(20) NOT NULL,
  `media` longtext NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `source` varchar(100) NOT NULL,
  `sourceurl` varchar(100) NOT NULL,
  `postedby` varchar(50) NOT NULL,
  `dateposted` datetime NOT NULL,
  `dateupdated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts_backup`
--

CREATE TABLE `posts_backup` (
  `id` bigint(255) NOT NULL,
  `token` varchar(20) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `category` varchar(20) NOT NULL,
  `media` longtext NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `source` varchar(100) NOT NULL,
  `sourceurl` varchar(100) NOT NULL,
  `postedby` varchar(50) NOT NULL,
  `dateposted` datetime NOT NULL,
  `dateupdated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `push_nots`
--

CREATE TABLE `push_nots` (
  `id` bigint(255) NOT NULL,
  `ipaddress` varchar(50) NOT NULL,
  `browser` tinytext NOT NULL,
  `platform` tinytext NOT NULL,
  `vendor` tinytext NOT NULL,
  `language` varchar(50) NOT NULL,
  `appname` varchar(50) NOT NULL,
  `useragent` tinytext NOT NULL,
  `dateadded` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `version` varchar(50) NOT NULL,
  `os` tinytext NOT NULL,
  `lastnotified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `push_nots`
--

INSERT INTO `push_nots` (`id`, `ipaddress`, `browser`, `platform`, `vendor`, `language`, `appname`, `useragent`, `dateadded`, `status`, `version`, `os`, `lastnotified`) VALUES
(344, '197.210.44.135', 'Mozilla', 'Linux armv8l', 'Google Inc.', 'en-US', 'Netscape', 'Mozilla/5.0 (Linux; Android 7.0; TECNO CA6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', '2019-10-11 00:12:22', 1, '76.0.3809.', 'Linux', '2019-10-11 00:12:55'),
(345, '197.210.63.23', 'Mozilla', 'Linux armv8l', 'Google Inc.', 'en-CA', 'Netscape', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-G935F Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.91 Mobile Safari/537.36', '2019-10-11 00:14:54', 0, '68.0.3440.', 'Linux', '2019-10-11 11:07:11'),
(346, '129.205.112.130', 'Mozilla', 'Linux armv8l', 'Google Inc.', 'en-AU', 'Netscape', 'Mozilla/5.0 (Linux; Android 8.1.0; Infinix X605) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.92 Mobile Safari/537.36', '2019-10-11 07:09:18', 0, '77.0.3865.', 'Linux', '2019-10-10 07:12:40'),
(347, '105.112.26.117', 'Mozilla', 'Linux armv8l', 'Google Inc.', 'en-GB', 'Netscape', 'Mozilla/5.0 (Linux; Android 9; SM-A105F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Mobile Safari/537.36', '2019-10-11 07:47:05', 0, '74.0.3729.', 'Linux', '2019-10-10 07:47:05'),
(348, '41.203.78.191', 'Mozilla', 'Win32', 'Google Inc.', 'en-US', 'Netscape', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '2019-10-11 09:03:05', 0, '77.0.3865.', 'Windows', '2019-10-10 17:01:39'),
(349, '197.210.63.23', 'Mozilla', 'Linux armv8l', 'Google Inc.', 'en-GB', 'Netscape', 'Mozilla/5.0 (Linux; Android 8.0.0; SAMSUNG SM-G935F Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/9.2 Chrome/67.0.3396.87 Mobile Safari/537.36', '2019-10-11 09:11:22', 0, '67.0.3396.', 'Linux', '2019-10-11 10:59:36'),
(350, '66.249.73.90', 'Mozilla', 'Linux x86_64', 'Google Inc.', 'en-US', 'Netscape', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; Googlebot/2.1; +http://www.google.com/bot.html) Safari/537.36', '2019-10-11 10:08:41', 0, 'UnKnown', '', '2019-10-10 10:08:41'),
(351, '41.203.78.191', 'Mozilla', 'Win32', 'Google Inc.', 'en-US', 'Netscape', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', '2019-10-11 14:10:16', 0, '77.0.3865.', 'Windows', '2019-10-10 16:55:46'),
(352, '105.112.30.114', 'Mozilla', 'Linux armv7l', 'Google Inc.', 'en-US', 'Netscape', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO KA7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', '2019-10-11 15:52:22', 1, '76.0.3809.', 'Linux', '2019-10-10 15:54:32'),
(353, '197.210.55.212', 'Mozilla', 'Linux armv8l', 'Google Inc.', 'en-US', 'Netscape', 'Mozilla/5.0 (Linux; Android 9; SM-J400F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', '2019-10-12 04:05:21', 0, '76.0.3809.', 'Linux', '2019-10-11 04:05:21'),
(354, '197.210.55.116', 'Mozilla', 'Linux armv7l', 'Google Inc.', 'en-US', 'Netscape', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.143 Mobile Safari/537.36', '2019-10-12 11:06:58', 0, '75.0.3770.', 'Linux', '2019-10-11 11:06:58'),
(341, '197.149.91.86', 'Mozilla', 'Linux armv8l', 'Google Inc.', 'en-GB', 'Netscape', 'Mozilla/5.0 (Linux; Android 9; SAMSUNG SM-G955F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/10.1 Chrome/71.0.3578.99 Mobile Safari/537.36', '2019-10-09 12:42:37', 0, '71.0.3578.', 'Linux', '2019-10-08 12:42:37'),
(343, '105.112.11.171', 'Mozilla', 'Linux armv7l', 'Google Inc.', 'en-GB', 'Netscape', 'Mozilla/5.0 (Linux; Android 8.1.0; SM-J410F Build/M1AJB; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 SamsungBrowser/7.2 Chrome/72.0.3626.121 Mobile Safari/537.36', '2019-10-10 16:42:53', 1, '72.0.3626.', 'Linux', '2019-10-10 16:42:53'),
(342, '129.205.113.88', 'Mozilla', 'Linux armv8l', 'Google Inc.', 'en-US', 'Netscape', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-G930V) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.92 Mobile Safari/537.36', '2019-10-10 11:29:10', 1, '77.0.3865.', 'Linux', '2019-10-12 17:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `push_nots1`
--

CREATE TABLE `push_nots1` (
  `id` bigint(255) NOT NULL,
  `ipaddress` varchar(50) NOT NULL,
  `browser` tinytext NOT NULL,
  `platform` tinytext NOT NULL,
  `vendor` tinytext NOT NULL,
  `language` varchar(50) NOT NULL,
  `appname` varchar(50) NOT NULL,
  `useragent` tinytext NOT NULL,
  `dateadded` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `version` varchar(50) NOT NULL,
  `os` tinytext NOT NULL,
  `lastnotified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `userdetails` longtext NOT NULL,
  `comment` text NOT NULL,
  `token` varchar(50) NOT NULL,
  `recordid` varchar(50) NOT NULL,
  `rating` int(1) NOT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `confirmed` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `type`, `email`, `userdetails`, `comment`, `token`, `recordid`, `rating`, `dateadded`, `confirmed`) VALUES
(1, 'business', 'sarah@gmail.com', '{\"names\":\"Sarah Adelakin\",\"phone\":\"08065375211\"}', 'what a great salon', 'biz-20190811223658TDOZ73', '', 3, '2019-08-16 19:15:13', 0),
(2, 'business', 'oshiyemi@gmail.com', '{\"names\":\"Leonard A. Oshiyemi\",\"phone\":\"4163027214\"}', 'This is the best technology company around. You can never go wrong!', 'biz-201908101731084TnJB', '', 5, '2019-08-16 19:27:46', 0),
(3, 'business', 'oshiyemi@gmail.com', '{\"names\":\"Leonard A. Oshiyemi\",\"phone\":\"4163027214\"}', 'This is about the best salon around Addo. So what are you waiting for?', 'biz-20190811223658TDOZ73', '', 2, '2019-08-16 19:29:03', 0),
(4, 'business', 'Tony@mail.com', '{\"names\":\"Tony\",\"phone\":\"083252524245\"}', 'This is the best hospital and diagnostic centre around. So check them out.', 'biz-20190811222903Ad3bQ2', '', 3, '2019-08-16 19:31:00', 0),
(5, 'business', 'leonard.oshiyemi@gmail.com', '{\"names\":\"Leonard\",\"phone\":\"08115789252\"}', 'This is a good company to do business with. So check them out!', 'biz-201908191006416PINf6', '', 4, '2019-08-19 10:24:07', 0),
(6, 'business', 'taiwo.pg918619@st.futminna.edu.ng', '{\"names\":\"Favour T.\",\"phone\":\"08065375211\"}', 'What a fantastic diagnostic center with conducive environment . \r\nTheir services is superb', 'biz-20190811222903Ad3bQ2', '', 5, '2019-08-19 10:41:00', 0),
(7, 'business', 'John@mail.com', '{\"names\":\"John\",\"phone\":\"0708585858\"}', 'I did some training at QRSM and they were on point with their service delivery. Thumps up!', 'biz-20190819103106pHXSD7', '', 4, '2019-08-19 19:37:06', 0),
(8, 'business', 'christopher@gmail.com', '{\"names\":\"Chris\",\"phone\":\"090877777765\"}', 'I used them once and they blew me away. So I highly recommend them.', 'biz-20190820151742IiCS48', '', 4, '2019-08-20 15:35:33', 0),
(9, 'business', 'leonard.oshiyemi@gmail.com', '{\"names\":\"Leonard\",\"phone\":\"08115789252\"}', 'It was a pleasant time in the presence of the lord. I will recommend it.', 'biz-20190819095257efFLj4', '', 4, '2019-08-20 18:27:50', 0),
(10, 'business', 'stephaniebrownashlay@gmail.com', '{\"names\":\"Stephanie \",\"phone\":\"08060137431\"}', 'You guys are simply amazing, you wowed me with the delivery of the foodstuffs and your service is top notch. May God continue to bless Medirac Global Resources.', 'biz-20190820151742IiCS48', '', 5, '2019-08-21 10:38:00', 0),
(11, 'business', 'abdulwasihitopee4real@gmail.com', '{\"names\":\"Abdul Majoyeogbe\",\"phone\":\"+2348188549307\"}', 'Hoffenheim Technologies Limited is limitless with abilities and resources to build the best technology that suit your actual imagination. Trust me!!!', 'biz-201908101731084TnJB', '', 5, '2019-08-22 09:55:05', 0),
(12, 'business', 'akabunmaemmanuel@gmail.com', '{\"names\":\"Akabunma Emmanuel\",\"phone\":\"08167427288\"}', 'If you need anything partaining to groceries, think MEDIRAC GLOBAL RESOURCES. They are your best bet with qualified staff who are willing to attend to your every need. ', 'biz-20190820151742IiCS48', '', 4, '2019-08-22 17:29:33', 0),
(13, 'business', 'nj_oasis@yahoo.ca', '{\"names\":\"NJ\",\"phone\":\"09080222265\"}', 'This Technology company generates top-notch APPS that are tailored to my clients needs. I will recommend it anytime.', 'biz-201908101731084TnJB', '', 5, '2019-08-24 23:53:04', 0),
(14, 'business', 'peacen@gmail.com', '{\"names\":\"Peace\",\"phone\":\"07088611656\"}', 'I did my NEBOSH IGC Course with QRSM and I am glad I chose them. Delivery was effortless, couese materials and reources were up to date, excellent facility and faculty.', 'biz-20190819103106pHXSD7', '', 5, '2019-08-25 07:52:38', 0),
(15, 'business', 'oshiyemi@gmail.com', '{\"names\":\"Leonard A. Oshiyemi\",\"phone\":\"4163027214\"}', 'They are good and on point in the discharge of their duties. So check them out.', 'biz-20190827154950Lh2AT14', '', 4, '2019-08-27 15:54:12', 0),
(16, 'business', 'sanniabubakr@yahoo.com', '{\"names\":\"Sanni \",\"phone\":\"08173176081\"}', 'Diligent,hardworking n trustworthy to deliver ur work ', 'biz-20190827154950Lh2AT14', '', 5, '2019-08-27 17:18:38', 0),
(17, 'business', 'oshiyemi@gmail.com', '{\"names\":\"Leonard A. Oshiyemi\",\"phone\":\"4163027214\"}', 'They are about the best fashion designer that I have come across in Lagos. They are not only timely but efficient as well. A rare trait among the artisans in Lagos these days.', 'biz-201908261536043D9V612', '', 4, '2019-08-27 22:12:53', 0),
(18, 'business', 'abdulwasihitopee4real@gmail.com', '{\"names\":\"Abdul Majoyeogbe\",\"phone\":\"+2348188549307\"}', 'I&#039;ve patronized this filling station in multiple times and their services is always on point', 'biz-20190826225524mQbrZ13', '', 4, '2019-08-28 09:54:43', 0),
(19, 'business', 'olayinka@gmail.com', '{\"names\":\"olayinka Lawal\",\"phone\":\"08027697386\"}', 'Olufunmi couture is a one stop shop for all your 100% americac cotton, their materials are top notch. Thank you and please keep up the good works. Bed-sheets are so soft and easy to wash.', 'biz-20190828151149ikPnI16', '', 1, '2019-08-28 15:20:09', 0),
(20, 'business', 'physayor@yahoo.com', '{\"names\":\"Olufisayo Shokoya\",\"phone\":\"08082833215\"}', 'Olufunmi couture really keeps to their promise of quality bedsheet, their fibre pillow is so soft and helps with my neck. no more pain at night. Thumps up', 'biz-20190828151149ikPnI16', '', 5, '2019-08-28 15:22:32', 0),
(21, 'business', 'oshiyemi@gmail.com', '{\"names\":\"Leonard A. Oshiyemi\",\"phone\":\"4163027214\"}', 'The Heritage Specialist Clinic lives up to their name and reputation. So check them out.', 'biz-20190828163643Xy4OK17', '', 4, '2019-08-28 16:39:40', 0),
(22, 'business', 'enoedem10@gmail.com', '{\"names\":\"Doris\",\"phone\":\"07064778207\"}', 'Childcare services are unmatched', 'biz-20190828163643Xy4OK17', '', 5, '2019-09-12 09:26:42', 0),
(23, 'business', 'Olatundebola2017@yahoo.com', '{\"names\":\"Olatunde Onabajo\",\"phone\":\"2023048793\"}', 'I live abroad in another country and can tell you that I love Olufunmi Couture!!!! Their bedsheets, curtains, children&#039;s bedsheets are so beautiful and modern! For winter season, their duvet/comforter  kept me warm during cold,  snowy nights. Please patronize their business and you won&#039;t regret your decision! I know I&#039;ll be ordering more bedsheets.', 'biz-20190828151149ikPnI16', '', 5, '2019-08-28 18:44:41', 0),
(24, 'business', 'oluyetunde@yahoo.com', '{\"names\":\"Oluyetunde Oshiyemi\",\"phone\":\"2025287131\"}', 'Olufunmi Couture is the best business for your beautiful bedsheets, duvets and curtains. Their bedshets beautified my bed so lovely my friends have also ordered from them.', 'biz-20190828151149ikPnI16', '', 5, '2019-08-28 19:04:35', 0),
(25, 'business', 'james@mail.com', '{\"names\":\"James\",\"phone\":\"0708585858\"}', 'Adexa Stitches is about the best fashion house for the ladies around this corridor. So check them out to corroborate my points.', 'biz-20190828104509M6kjy15', '', 4, '2019-08-28 20:21:03', 0),
(26, 'business', 'oshiyemi@gmail.com', '{\"names\":\"Leonard A. Oshiyemi\",\"phone\":\"4163027214\"}', 'Great products, great pricing. So check them out.', 'biz-20190902185713qTS4W23', '', 4, '2019-09-04 17:15:30', 0),
(27, 'business', 'leonard.oshiyemi@gmail.com', '{\"names\":\"Leonard A. Oshiyemi\",\"phone\":\"4163027214\"}', 'Their pricepoint is great and the products are equally great. So check them out.', 'biz-20190904171336GqO0P28', '', 5, '2019-09-04 17:16:42', 0),
(28, 'business', 'James@mail.com', '{\"names\":\"James\",\"phone\":\"4163027214\"}', 'Good job. I recommend them.', 'biz-20190902190345tnXvs25', '', 4, '2019-09-04 17:21:45', 0),
(29, 'business', 'nannaonoriode@gmail.com', '{\"names\":\"El Nando\",\"phone\":\"08147419946\"}', 'Price  AFFORDABLE\r\nCustomer Service PERFECT\r\nHIGHLY RECOMMENDABLE', 'biz-20190904171336GqO0P28', '', 5, '2019-09-04 19:31:30', 0),
(30, 'business', 'phestoriazeekah@yahoo.com', '{\"names\":\"Zeekah\",\"phone\":\"08022009518\"}', 'Price are very affordable and friendly ðŸ‘', 'biz-20190904171336GqO0P28', '', 5, '2019-09-05 17:28:10', 0),
(31, 'business', 'John@gmail.com', '{\"names\":\"John\",\"phone\":\"4163027214\"}', 'If you are looking for an homegrown, clean, delicious restaurant that doesn&#039;t break the bank around here then look no further.', 'biz-20190910153852GgPAC31', '', 5, '2019-09-10 15:44:39', 0),
(32, 'business', 'Seyioluwa@gmail.com', '{\"names\":\"Seyi\",\"phone\":\"0909090909099\"}', 'The food is really good. I really enjoyed them.', 'biz-20190910153852GgPAC31', '', 5, '2019-09-10 15:46:17', 0),
(33, 'business', 'Emeka247@yahoo.com', '{\"names\":\"Emeka\",\"phone\":\"4163027214\"}', 'The food is not only delicious but affordable too. So check them out.', 'biz-20190910153852GgPAC31', '', 4, '2019-09-10 15:47:47', 0),
(34, 'business', 'oegofficial@gmail.com', '{\"names\":\"OEG\",\"phone\":\"08156121738\"}', 'Amazing food and such hospitable environment. I recommend to each and everyone', 'biz-20190910153852GgPAC31', '', 5, '2019-09-10 23:14:55', 0),
(35, 'business', 'oshiyemi@gmail.com', '{\"names\":\"Leonard A. Oshiyemi\",\"phone\":\"4163027214\"}', 'This is a place to be for your top flight IT training in this area. So check them out.', 'biz-20190926095356u6GVU35', '', 4, '2019-09-26 20:12:00', 0),
(36, 'business', 'simismiles@ymail.com', '{\"names\":\"Simisola\",\"phone\":\"08171507228\"}', 'It is a place to be.my kids always ready for weeknd class.', 'biz-20190926095356u6GVU35', '', 4, '2019-09-27 19:54:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `real_estate`
--

CREATE TABLE `real_estate` (
  `id` bigint(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `company` tinytext NOT NULL,
  `category` tinytext NOT NULL,
  `purchase` varchar(50) NOT NULL,
  `logo` tinytext NOT NULL,
  `images` longtext NOT NULL,
  `title` tinytext NOT NULL,
  `person` tinytext NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `payment` char(3) NOT NULL,
  `url` tinytext NOT NULL,
  `worth` decimal(62,2) NOT NULL,
  `location` text NOT NULL,
  `description` longtext NOT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `addedby` varchar(255) NOT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `dateupdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `real_estate`
--

INSERT INTO `real_estate` (`id`, `token`, `company`, `category`, `purchase`, `logo`, `images`, `title`, `person`, `email`, `phone`, `payment`, `url`, `worth`, `location`, `description`, `dateadded`, `addedby`, `updatedby`, `dateupdated`, `status`) VALUES
(1, 'res-20190910174035knb6U', 'Agent Name', 'commercial', 'lease', 'site/media/properties/res-20190910174035knb6U_logo.png', '[\"site/media/properties/res-20190910174035knb6U_image.png\"]', 'Property Type', '', 'abdulwasihitopee4real@gmail.com', '08188549307', 'ps', '', '20000.00', 'Some address here', 'some text here', '2019-09-12 12:01:37', 'guest', NULL, '2019-09-10 17:40:35', 0),
(2, 'res-20190911174214tMbCe2', 'Tranz4m', 'house-apartment', 'lease', 'site/media/properties/res-20190911174214tMbCe2_logo.png', '[\"site/media/properties/res-20190911174214tMbCe2_image1.png\",\"site/media/properties/res-20190911174214tMbCe2_image3.png\",\"site/media/properties/res-20190911174214tMbCe2_image5.png\",\"site/media/properties/res-20190911174214tMbCe2_image7.png\"]', 'A 3 bedroom ensuite', 'Chichi ', 'nwunyechike@gmail.com', '0803 327 8238', 'adm', '', '3000000.00', '9 Adewale Kolawole Crescent, Off Kuboye Street, Lekki Phase 1 ( Behind Oniru Estate), Lagos', 'A 3 bedroom ensuite rent cost of 3 million per annum', '2019-09-12 11:17:08', 'admin2', 'admin2', '2019-09-12 12:15:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `real_estate_backup`
--

CREATE TABLE `real_estate_backup` (
  `id` bigint(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `company` tinytext NOT NULL,
  `category` tinytext NOT NULL,
  `purchase` varchar(50) NOT NULL,
  `logo` tinytext NOT NULL,
  `images` longtext NOT NULL,
  `title` tinytext NOT NULL,
  `person` tinytext NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `payment` char(3) NOT NULL,
  `url` tinytext NOT NULL,
  `worth` decimal(62,2) NOT NULL,
  `location` text NOT NULL,
  `description` longtext NOT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `addedby` varchar(255) NOT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `dateupdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(1) NOT NULL,
  `banner` longtext NOT NULL,
  `business` longtext NOT NULL,
  `gigs` longtext NOT NULL,
  `jobs` longtext NOT NULL,
  `adverts` longtext NOT NULL,
  `property` longtext NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `banner`, `business`, `gigs`, `jobs`, `adverts`, `property`, `updated`, `updatedby`) VALUES
(1, '{\"title\":\"Ajah City launch Promo!!!\",\"content\":\"Publicize Your Business Today Wthi a Low Sum of N2000 As We launction Ajag City\",\"On\":\"1\",\"bannerImg\":\"site/media/i/settings/banner.png\"}', '{\"subamount\":\"2000\",\"promo\":\"0\",\"businessoftheyear\":\"0\",\"discount\":\"0\",\"discountStat\":\"0\"}', '{\"subamount\":\"3000\",\"promo\":\"0\",\"discount\":\"0\",\"discountStat\":\"0\"}', '{\"subamount\":\"1000\",\"promo\":\"0\",\"discount\":\"0\",\"discountStat\":\"0\"}', '{\"inline\":\"15000\", \"fullpage\":\"50000\"}', '{\"subamount\":\"1500\",\"promo\":\"0\",\"discount\":\"0\",\"discountStat\":\"0\"}', '2019-08-09 13:28:37', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `upload_track`
--

CREATE TABLE `upload_track` (
  `id` int(100) NOT NULL,
  `user` varchar(50) NOT NULL,
  `ipaddress` varchar(20) NOT NULL,
  `token` varchar(50) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_track`
--

INSERT INTO `upload_track` (`id`, `user`, `ipaddress`, `token`, `dateadded`) VALUES
(321, 'reporter1', '197.210.63.26', 'YI4gMX5Kt6K4NlP', '2019-10-10 16:24:27'),
(327, 'reporter1', '197.210.61.16', 'jwhPV86fZ7xdQFH', '2019-10-11 00:12:43'),
(333, 'reporter1', '197.210.63.23', 'zaZvpSkvZ38rauQ', '2019-10-12 11:05:29'),
(324, 'reporter1', '197.210.63.19', 'K6AAORX1b7zCsmE', '2019-10-10 16:52:29'),
(330, 'reporter1', '197.210.61.12', 'WSHFNzVfeSzQ2hd', '2019-10-11 09:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE `userprofile` (
  `id` bigint(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `password` tinytext NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `address1` tinytext NOT NULL,
  `address2` tinytext NOT NULL,
  `state` tinytext NOT NULL,
  `city` tinytext NOT NULL,
  `country` tinytext NOT NULL,
  `emergencycontacts` text NOT NULL,
  `usertype` varchar(15) NOT NULL,
  `usercat` varchar(10) NOT NULL DEFAULT 'client',
  `userrole` varchar(15) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  `datehired` date NOT NULL,
  `datefired` date NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `addedby` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userprofile`
--

INSERT INTO `userprofile` (`id`, `token`, `email`, `title`, `firstname`, `lastname`, `middlename`, `gender`, `password`, `username`, `phone`, `address1`, `address2`, `state`, `city`, `country`, `emergencycontacts`, `usertype`, `usercat`, `userrole`, `verified`, `dateadded`, `datehired`, `datefired`, `active`, `addedby`) VALUES
(1, '739108aca187307e27d325dcec3adad8e7567a9a', 'admin@mail.com', '', 'John', 'Doe', 'Anonymous', 'male', 'aG9mZnRlY2gyMDIw', 'admin', '08012345678', 'Some Address', 'Address 2', 'Lagos', 'Ikeja', 'Nigeria', '', 'admin', 'admin', 'level1', 1, '2019-07-04 14:27:12', '0000-00-00', '0000-00-00', 1, 'self'),
(2, 'cd0a4647b30ce71d6803691347ed994625b08c8e', 'admin2@mail.com', '', 'Sean', 'Remin', 'Paul', 'male', 'cGFzc3dvcmQ=', 'admin2', '08098765432', 'Address 1', 'Address 2', 'Ogun', 'Abeokuta', 'Nigeria', '', 'admin', 'admin', 'level0', 1, '2019-07-04 14:30:15', '0000-00-00', '0000-00-00', 1, 'root'),
(3, 'b07521405cda4735bbd33a76991270d4456a64f7', 'eve_tolu@yahoo.com', '', 'Tolulope', 'Eve', '', 'female', 'QFRIYjNtMXVDUg==', 'reporter1', '08090584540', '', '', '', '', '', '[\"\",\"\"]', 'reporter', 'admin', 'level2', 1, '2019-08-05 12:03:54', '2019-08-05', '0000-00-00', 1, 'admin2'),
(4, '85ee189988965b54a5cb84a833292ef7ee32a134', 'taiwofavour241@gmail.com', '', 'Olatunji', 'Favour', '', 'female', 'cCtaY09wYVI0WA==', 'marketer1', '08065375211', 'No 20 dockstone ville estate', 'badore road', 'Lagos', 'ajah', 'Nigeria', '[\"\",\"\"]', 'marketer', 'admin', 'level3', 1, '2019-08-09 10:16:12', '2019-08-04', '0000-00-00', 1, 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `weekends`
--

CREATE TABLE `weekends` (
  `id` bigint(255) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` tinytext NOT NULL,
  `direction` longtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `venue` mediumtext NOT NULL,
  `names` tinytext NOT NULL,
  `organizer` tinytext NOT NULL,
  `event_date` datetime NOT NULL,
  `no_of_days` int(11) NOT NULL,
  `dateposted` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dateupdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `payment` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `addedby` varchar(20) NOT NULL,
  `updatedby` varchar(100) DEFAULT NULL,
  `url` tinytext NOT NULL,
  `banner` tinytext NOT NULL,
  `theme` tinytext NOT NULL,
  `briefing` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weekends`
--

INSERT INTO `weekends` (`id`, `token`, `title`, `direction`, `email`, `phone`, `venue`, `names`, `organizer`, `event_date`, `no_of_days`, `dateposted`, `dateupdated`, `payment`, `status`, `addedby`, `updatedby`, `url`, `banner`, `theme`, `briefing`) VALUES
(3, 'gig-20191004153450wi5Bu', 'The Christian Business Fair 2019', '', 'cyaabusinesfair@gmail.com', '09059100776', 'Our lady Mother and Queen, Catholic Church, Badore, Ajah-Lekki', 'Joy 08027621292, Jumai 08034506091', 'Harvest Planning Committee (HPC)\r\nOur lady Mother and Queen, Catholic Church, Badore, Ajah-Lekki', '2019-10-05 09:00:00', 2, '2019-10-04 15:34:50', '2019-10-04 17:15:35', 'adm', 1, 'admin2', 'admin2', '', 'site/media/gigs/gig-20191004153450wi5Bu_.png', '', 'The Christian Business Fair');

-- --------------------------------------------------------

--
-- Table structure for table `weekends_backup`
--

CREATE TABLE `weekends_backup` (
  `id` bigint(255) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` tinytext NOT NULL,
  `direction` longtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `venue` mediumtext NOT NULL,
  `names` tinytext NOT NULL,
  `organizer` tinytext NOT NULL,
  `event_date` datetime NOT NULL,
  `no_of_days` int(11) NOT NULL,
  `dateposted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dateupdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `payment` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `addedby` varchar(20) NOT NULL,
  `updatedby` varchar(100) DEFAULT NULL,
  `url` tinytext NOT NULL,
  `banner` tinytext NOT NULL,
  `theme` tinytext NOT NULL,
  `briefing` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adverts`
--
ALTER TABLE `adverts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `adverts_backup`
--
ALTER TABLE `adverts_backup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `businesses_backup`
--
ALTER TABLE `businesses_backup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `jobs_backup`
--
ALTER TABLE `jobs_backup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transid` (`transid`);

--
-- Indexes for table `payment_backup`
--
ALTER TABLE `payment_backup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transid` (`transid`);

--
-- Indexes for table `paystack_hits`
--
ALTER TABLE `paystack_hits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `posts1`
--
ALTER TABLE `posts1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `posts_backup`
--
ALTER TABLE `posts_backup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `push_nots`
--
ALTER TABLE `push_nots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_nots1`
--
ALTER TABLE `push_nots1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `real_estate`
--
ALTER TABLE `real_estate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `real_estate_backup`
--
ALTER TABLE `real_estate_backup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_track`
--
ALTER TABLE `upload_track`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `weekends`
--
ALTER TABLE `weekends`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `weekends_backup`
--
ALTER TABLE `weekends_backup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adverts`
--
ALTER TABLE `adverts`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adverts_backup`
--
ALTER TABLE `adverts_backup`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `businesses_backup`
--
ALTER TABLE `businesses_backup`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs_backup`
--
ALTER TABLE `jobs_backup`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `payment_backup`
--
ALTER TABLE `payment_backup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paystack_hits`
--
ALTER TABLE `paystack_hits`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `posts1`
--
ALTER TABLE `posts1`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_backup`
--
ALTER TABLE `posts_backup`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `push_nots`
--
ALTER TABLE `push_nots`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `push_nots1`
--
ALTER TABLE `push_nots1`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `real_estate`
--
ALTER TABLE `real_estate`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `real_estate_backup`
--
ALTER TABLE `real_estate_backup`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upload_track`
--
ALTER TABLE `upload_track`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `userprofile`
--
ALTER TABLE `userprofile`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `weekends`
--
ALTER TABLE `weekends`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `weekends_backup`
--
ALTER TABLE `weekends_backup`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
