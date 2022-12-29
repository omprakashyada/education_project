-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2022 at 11:45 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `state_filter`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `shortname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `shortname`) VALUES
(1, 'Afghanistan', '93', 'AF'),
(2, 'Aland Islands', '358', 'AX'),
(3, 'Albania', '355', 'AL'),
(4, 'Algeria', '213', 'DZ'),
(5, 'AmericanSamoa', '1684', 'AS'),
(6, 'Andorra', '376', 'AD'),
(7, 'Angola', '244', 'AO'),
(8, 'Anguilla', '1264', 'AI'),
(9, 'Antarctica', '672', 'AQ'),
(10, 'Antigua and Barbuda', '1268', 'AG'),
(11, 'Argentina', '54', 'AR'),
(12, 'Armenia', '374', 'AM'),
(13, 'Aruba', '297', 'AW'),
(14, 'Australia', '61', 'AU'),
(15, 'Austria', '43', 'AT'),
(16, 'Azerbaijan', '994', 'AZ'),
(17, 'Bahamas', '1242', 'BS'),
(18, 'Bahrain', '973', 'BH'),
(19, 'Bangladesh', '880', 'BD'),
(20, 'Barbados', '1246', 'BB'),
(21, 'Belarus', '375', 'BY'),
(22, 'Belgium', '32', 'BE'),
(23, 'Belize', '501', 'BZ'),
(24, 'Benin', '229', 'BJ'),
(25, 'Bermuda', '1441', 'BM'),
(26, 'Bhutan', '975', 'BT'),
(27, 'Bolivia, Plurinational State of', '591', 'BO'),
(28, 'Bosnia and Herzegovina', '387', 'BA'),
(29, 'Botswana', '267', 'BW'),
(30, 'Brazil', '55', 'BR'),
(31, 'British Indian Ocean Territory', '246', 'IO'),
(32, 'Brunei Darussalam', '673', 'BN'),
(33, 'Bulgaria', '359', 'BG'),
(34, 'Burkina Faso', '226', 'BF'),
(35, 'Burundi', '257', 'BI'),
(36, 'Cambodia', '855', 'KH'),
(37, 'Cameroon', '237', 'CM'),
(38, 'Canada', '1', 'CA'),
(39, 'Cape Verde', '238', 'CV'),
(40, 'Cayman Islands', ' 345', 'KY'),
(41, 'Central African Republic', '236', 'CF'),
(42, 'Chad', '235', 'TD'),
(43, 'Chile', '56', 'CL'),
(44, 'China', '86', 'CN'),
(45, 'Christmas Island', '61', 'CX'),
(46, 'Cocos (Keeling) Islands', '61', 'CC'),
(47, 'Colombia', '57', 'CO'),
(48, 'Comoros', '269', 'KM'),
(49, 'Congo', '242', 'CG'),
(50, 'Congo, The Democratic Republic of the Congo', '243', 'CD'),
(51, 'Cook Islands', '682', 'CK'),
(52, 'Costa Rica', '506', 'CR'),
(53, 'Cote dIvoire', '225', 'CI'),
(54, 'Croatia', '385', 'HR'),
(55, 'Cuba', '53', 'CU'),
(56, 'Cyprus', '357', 'CY'),
(57, 'Czech Republic', '420', 'CZ'),
(58, 'Denmark', '45', 'DK'),
(59, 'Djibouti', '253', 'DJ'),
(60, 'Dominica', '1767', 'DM'),
(61, 'Dominican Republic', '1849', 'DO'),
(62, 'Ecuador', '593', 'EC'),
(63, 'Egypt', '20', 'EG'),
(64, 'El Salvador', '503', 'SV'),
(65, 'Equatorial Guinea', '240', 'GQ'),
(66, 'Eritrea', '291', 'ER'),
(67, 'Estonia', '372', 'EE'),
(68, 'Ethiopia', '251', 'ET'),
(69, 'Falkland Islands (Malvinas)', '500', 'FK'),
(70, 'Faroe Islands', '298', 'FO'),
(71, 'Fiji', '679', 'FJ'),
(72, 'Finland', '358', 'FI'),
(73, 'France', '33', 'FR'),
(74, 'French Guiana', '594', 'GF'),
(75, 'French Polynesia', '689', 'PF'),
(76, 'Gabon', '241', 'GA'),
(77, 'Gambia', '220', 'GM'),
(78, 'Georgia', '995', 'GE'),
(79, 'Germany', '49', 'DE'),
(80, 'Ghana', '233', 'GH'),
(81, 'Gibraltar', '350', 'GI'),
(82, 'Greece', '30', 'GR'),
(83, 'Greenland', '299', 'GL'),
(84, 'Grenada', '1473', 'GD'),
(85, 'Guadeloupe', '590', 'GP'),
(86, 'Guam', '1671', 'GU'),
(87, 'Guatemala', '502', 'GT'),
(88, 'Guernsey', '44', 'GG'),
(89, 'Guinea', '224', 'GN'),
(90, 'Guinea-Bissau', '245', 'GW'),
(91, 'Guyana', '595', 'GY'),
(92, 'Haiti', '509', 'HT'),
(93, 'Holy See (Vatican City State)', '379', 'VA'),
(94, 'Honduras', '504', 'HN'),
(95, 'Hong Kong', '852', 'HK'),
(96, 'Hungary', '36', 'HU'),
(97, 'Iceland', '354', 'IS'),
(98, 'India', '91', 'IN'),
(99, 'Indonesia', '62', 'ID'),
(100, 'Iran, Islamic Republic of Persian Gulf', '98', 'IR'),
(101, 'Iraq', '964', 'IQ'),
(102, 'Ireland', '353', 'IE'),
(103, 'Isle of Man', '44', 'IM'),
(104, 'Israel', '972', 'IL'),
(105, 'Italy', '39', 'IT'),
(106, 'Jamaica', '1876', 'JM'),
(107, 'Japan', '81', 'JP'),
(108, 'Jersey', '44', 'JE'),
(109, 'Jordan', '962', 'JO'),
(110, 'Kazakhstan', '77', 'KZ'),
(111, 'Kenya', '254', 'KE'),
(112, 'Kiribati', '686', 'KI'),
(113, 'Korea,', '850', 'KP'),
(114, 'Korea, Republic of South Korea', '82', 'KR'),
(115, 'Kuwait', '965', 'KW'),
(116, 'Kyrgyzstan', '996', 'KG'),
(117, 'Laos', '856', 'LA'),
(118, 'Latvia', '371', 'LV'),
(119, 'Lebanon', '961', 'LB'),
(120, 'Lesotho', '266', 'LS'),
(121, 'Liberia', '231', 'LR'),
(122, 'Libyan Arab Jamahiriya', '218', 'LY'),
(123, 'Liechtenstein', '423', 'LI'),
(124, 'Lithuania', '370', 'LT'),
(125, 'Luxembourg', '352', 'LU'),
(126, 'Macao', '853', 'MO'),
(127, 'Macedonia', '389', 'MK'),
(128, 'Madagascar', '261', 'MG'),
(129, 'Malawi', '265', 'MW'),
(130, 'Malaysia', '60', 'MY'),
(131, 'Maldives', '960', 'MV'),
(132, 'Mali', '223', 'ML'),
(133, 'Malta', '356', 'MT'),
(134, 'Marshall Islands', '692', 'MH'),
(135, 'Martinique', '596', 'MQ'),
(136, 'Mauritania', '222', 'MR'),
(137, 'Mauritius', '230', 'MU'),
(138, 'Mayotte', '262', 'YT'),
(139, 'Mexico', '52', 'MX'),
(140, 'Micronesia, Federated States of Micronesia', '691', 'FM'),
(141, 'Moldova', '373', 'MD'),
(142, 'Monaco', '377', 'MC'),
(143, 'Mongolia', '976', 'MN'),
(144, 'Montenegro', '382', 'ME'),
(145, 'Montserrat', '1664', 'MS'),
(146, 'Morocco', '212', 'MA'),
(147, 'Mozambique', '258', 'MZ'),
(148, 'Myanmar', '95', 'MM'),
(149, 'Namibia', '264', 'NA'),
(150, 'Nauru', '674', 'NR'),
(151, 'Nepal', '977', 'NP'),
(152, 'Netherlands', '31', 'NL'),
(153, 'Netherlands Antilles', '599', 'AN'),
(154, 'New Caledonia', '687', 'NC'),
(155, 'New Zealand', '64', 'NZ'),
(156, 'Nicaragua', '505', 'NI'),
(157, 'Niger', '227', 'NE'),
(158, 'Nigeria', '234', 'NG'),
(159, 'Niue', '683', 'NU'),
(160, 'Norfolk Island', '672', 'NF'),
(161, 'Northern Mariana Islands', '1670', 'MP'),
(162, 'Norway', '47', 'NO'),
(163, 'Oman', '968', 'OM'),
(164, 'Pakistan', '92', 'PK'),
(165, 'Palau', '680', 'PW'),
(166, 'Palestinian Territory, Occupied', '970', 'PS'),
(167, 'Panama', '507', 'PA'),
(168, 'Papua New Guinea', '675', 'PG'),
(169, 'Paraguay', '595', 'PY'),
(170, 'Peru', '51', 'PE'),
(171, 'Philippines', '63', 'PH'),
(172, 'Pitcairn', '872', 'PN'),
(173, 'Poland', '48', 'PL'),
(174, 'Portugal', '351', 'PT'),
(175, 'Puerto Rico', '1939', 'PR'),
(176, 'Qatar', '974', 'QA'),
(177, 'Romania', '40', 'RO'),
(178, 'Russia', '7', 'RU'),
(179, 'Rwanda', '250', 'RW'),
(180, 'Reunion', '262', 'RE'),
(181, 'Saint Barthelemy', '590', 'BL'),
(182, 'Saint Helena, Ascension and Tristan Da Cunha', '290', 'SH'),
(183, 'Saint Kitts and Nevis', '1869', 'KN'),
(184, 'Saint Lucia', '1758', 'LC'),
(185, 'Saint Martin', '590', 'MF'),
(186, 'Saint Pierre and Miquelon', '508', 'PM'),
(187, 'Saint Vincent and the Grenadines', '1784', 'VC'),
(188, 'Samoa', '685', 'WS'),
(189, 'San Marino', '378', 'SM'),
(190, 'Sao Tome and Principe', '239', 'ST'),
(191, 'Saudi Arabia', '966', 'SA'),
(192, 'Senegal', '221', 'SN'),
(193, 'Serbia', '381', 'RS'),
(194, 'Seychelles', '248', 'SC'),
(195, 'Sierra Leone', '232', 'SL'),
(196, 'Singapore', '65', 'SG'),
(197, 'Slovakia', '421', 'SK'),
(198, 'Slovenia', '386', 'SI'),
(199, 'Solomon Islands', '677', 'SB'),
(200, 'Somalia', '252', 'SO'),
(201, 'South Africa', '27', 'ZA'),
(202, 'South Sudan', '211', 'SS'),
(203, 'South Georgia and the South Sandwich Islands', '500', 'GS'),
(204, 'Spain', '34', 'ES'),
(205, 'Sri Lanka', '94', 'LK'),
(206, 'Sudan', '249', 'SD'),
(207, 'Suriname', '597', 'SR'),
(208, 'Svalbard and Jan Mayen', '47', 'SJ'),
(209, 'Swaziland', '268', 'SZ'),
(210, 'Sweden', '46', 'SE'),
(211, 'Switzerland', '41', 'CH'),
(212, 'Syrian Arab Republic', '963', 'SY'),
(213, 'Taiwan', '886', 'TW'),
(214, 'Tajikistan', '992', 'TJ'),
(215, 'Tanzania, United Republic of Tanzania', '255', 'TZ'),
(216, 'Thailand', '66', 'TH'),
(217, 'Timor-Leste', '670', 'TL'),
(218, 'Togo', '228', 'TG'),
(219, 'Tokelau', '690', 'TK'),
(220, 'Tonga', '676', 'TO'),
(221, 'Trinidad and Tobago', '1868', 'TT'),
(222, 'Tunisia', '216', 'TN'),
(223, 'Turkey', '90', 'TR'),
(224, 'Turkmenistan', '993', 'TM'),
(225, 'Turks and Caicos Islands', '1649', 'TC'),
(226, 'Tuvalu', '688', 'TV'),
(227, 'Uganda', '256', 'UG'),
(228, 'Ukraine', '380', 'UA'),
(229, 'United Arab Emirates', '971', 'AE'),
(230, 'United Kingdom', '44', 'GB'),
(231, 'United States', '1', 'US'),
(232, 'Uruguay', '598', 'UY'),
(233, 'Uzbekistan', '998', 'UZ'),
(234, 'Vanuatu', '678', 'VU'),
(235, 'Venezuela, Bolivarian Republic of Venezuela', '58', 'VE'),
(236, 'Vietnam', '84', 'VN'),
(237, 'Virgin Islands, British', '1284', 'VG'),
(238, 'Virgin Islands, U.S.', '1340', 'VI'),
(239, 'Wallis and Futuna', '681', 'WF'),
(240, 'Yemen', '967', 'YE'),
(241, 'Zambia', '260', 'ZM'),
(242, 'Zimbabwe', '263', 'ZW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
