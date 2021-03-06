-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2015 at 07:52 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `healthkart`
--

-- --------------------------------------------------------

--
-- Table structure for table `medical_centre`
--

CREATE TABLE IF NOT EXISTS `medical_centre` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(124) NOT NULL,
  `PHONE_NOS` varchar(20) NOT NULL,
  `ADDRESS` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=242 ;

--
-- Dumping data for table `medical_centre`
--

INSERT INTO `medical_centre` (`ID`, `NAME`, `PHONE_NOS`, `ADDRESS`) VALUES
(2, ' Portea Medical ', '(91)-11-66731140', ' No- 304 Harsh Bhawan, 64-65, Nehru Place, Delhi - 110019 '),
(3, ' Total Care Control ', '-', ' B 294, New Ashok Nagar Extension, Mayur Vihar Phase I, Delhi - 110091, Opposite East End Apartment '),
(4, ' HCL Avitas Pvt Ltd ', '(91)-11-66534386', ' Fd-4, Pitampura, Delhi - 110034 '),
(5, ' Med Care Multispeciality Medical And Dental Lasers Centre ', '(91)-11-66444494', ' Plot No 147, Palam Extension, Dwarka Sector 7, Delhi - 110075, Near SBI And ICICI Bank '),
(6, ' Empathy Medcare ', '(91)-11-66720453', ' A-3/8, Main Market, Noida Sector 110, Noida - 201305, Next To Dominos Pizza '),
(7, ' Roy Clinic Centre ', '(91)-11-66355585', ' F 188, Dilshad Colony, Delhi - 110095, Opposite Bus Depot '),
(8, ' Dr Dhawans Medicentre ', '(91)-11-66430992', ' N 31, Malviya Nagar, Delhi - 110017, Near Appejay School '),
(9, ' Dr Atuls Medical Help Desk ', '(91)-11-66881920', ' 423, Behra Enclave, Paschim Vihar, Delhi - 110063, Opposite Radisson Hotel '),
(10, ' Paras Spring Meadows Hospital ', '(91)-11-66218042', ' F-44, East Of Kailash, Delhi - 110065, Near Kailash Colony Metro Station '),
(11, ' Dhama Clinic ', '(91)-11-66736273', ' C 46, Noida Sector 34, Noida - 201307, Near City Centre Metro Station '),
(12, ' Shakuntala Nursing Home &amp; Hospital ', '(91)-11-66585550', ' Rz- I /81a, Sagarpur, Delhi - 110046, Opp Delhi Vidyut Board Colony '),
(13, ' IRENE SWASTHIK HOSPITAL ', '(91)-11-66741251', ' A-9, Raghuveer Enclave, Dichaun Chowk, Najafgarh, Delhi - 110043, Nangloi Road '),
(14, ' Sarvodaya Hospital ', '(91)-11-66729962', ' Plot No-342, Vaishali Sector 4, Ghaziabad - 201010, Near Sector-4 Market '),
(15, ' City Clinic ', '(91)-11-66744234', ' C 17 / Navniti Apartment, Main Road Mandawali, Indraprastha Extension, Delhi - 110092, Opposite Tara... <span class="sepr">|'),
(16, ' Dr Alok Jain ', '(91)-11-66581419', ' C 218 Malik Radix Healthcare Service, Nirman Vihar, Delhi - 110092, Near Nirman Vihar Metro Station '),
(17, ' Hcl Avitas Pvt Ltd ', '(91)-11-66534398', ' E-359 nirman vihar,vikas marg, Nirman Vihar, Delhi - 110092 '),
(18, ' Sood Medicare Gynaecologist &amp; Surgeon ', '(91)-11-66359847', ' 22/1 Mukherjee Park, Chaukhandi Road, Tilak Nagar, Delhi - 110018, Near Vikas Chemist '),
(19, ' Santosh Multispeciality Hospital ', '(91)-11-66533572', ' 3f- 139, Faridabad NIT, Faridabad - 121001, Near Police Chowki '),
(20, ' Angel Mother &amp; Child Clinic ', '(91)-11-66738285', ' E-1066, Ramphal Chowk, Dwarka, Delhi - 110075, Opposite Punjab National Bank '),
(21, ' Guidemytreatment.com ', '(91)-11-66881118', ' 26, Community Centre, PVR - Saket, Saket, Delhi - 110017 '),
(22, ' Nationwide Primary Healthcare Services Pvt Ltd ', '(91)-11-66747061', ' Block C,Shop Number 6,Omaxe Gurgaon Mall, Sohna Road, Gurgaon - 122001, Near Easy Day '),
(23, ' Dr Rajshree Lal ', '(91)-11-66728443', ' C-116, Ground Floor, Front Portion, Inderpuri, Delhi - 110012, Near Amit Verma Park '),
(24, ' Dr A K Arora ', '(91)-11-66745847', ' G-272-A Hig Flats,Pratap Vihar, Ghaziabad Sector 11, Ghaziabad - 201012 '),
(25, ' Avantika Hospital ', '(91)-11-66746090', ' 137, Niti Khand-2, Indirapuram, Ghaziabad - 201014, Near Swarn Jayanti Park '),
(26, ' Yashoda Super Speciality Hospital ', '(91)-11-66535356', ' H Block, Building Number 1, Kaushambi, Ghaziabad - 201012, Near Anand Vihar Isbt '),
(27, ' Yashoda Super Speciality Hospital ', '(91)-11-66535356', ' H Block, Building Number 1, Kaushambi, Ghaziabad - 201012, Near Anand Vihar Isbt '),
(28, ' Nationwide Primary Healthcare Services Pvt Ltd ', '(91)-11-66747061', ' Block C,Shop Number 6,Omaxe Gurgaon Mall, Sohna Road, Gurgaon - 122001, Near Easy Day '),
(29, ' Santosh Multispeciality Hospital ', '(91)-11-66533572', ' 3f- 139, Faridabad NIT, Faridabad - 121001, Near Police Chowki '),
(30, ' Dr Rajshree Lal ', '(91)-11-66728443', ' C-116, Ground Floor, Front Portion, Inderpuri, Delhi - 110012, Near Amit Verma Park '),
(31, ' Dr Sunita Gupta ', '(91)-11-66438125', ' 209 The Sapphire, Sohna Road, Gurgaon - 122001, Opposite Orchid Petals &amp; Behind Omaxe Mall '),
(32, ' Dr Sunder Lal Memorial Hospital ', '(91)-11-67773136', ' C-201, Jawahar Park, Main Devli Road, Khanpur, Delhi - 110062, Dr.Sunder Lal Memorial Hospital '),
(33, ' Dr A K Arora ', '(91)-11-66745847', ' G-272-A Hig Flats,Pratap Vihar, Ghaziabad Sector 11, Ghaziabad - 201012 '),
(34, ' Asha Multi Speciality Clinic ', '(91)-11-66584353', ' Clinic No C 2, Gurgaon Sector 40, Gurgaon - 122001, Opposite Huda Market '),
(35, ' Avantika Hospital ', '(91)-11-66746090', ' 137, Niti Khand-2, Indirapuram, Ghaziabad - 201014, Near Swarn Jayanti Park '),
(36, ' Healing Temple Dr Arhat Homoeo Clinic ', '(91)-11-66581939', ' 13 LOTUS ENCLAVE PITAMPURA, Parwana road, Pitampura, Delhi - 110034, Near Bal bharti public school p... <span class="sepr">|'),
(37, ' Amar Leela Hospital Pvt Ltd ', '(91)-11-66264845', ' B-1/6, Main Najafgarh Road, Janakpuri, Delhi - 110058, Near Janak Puri East Metro Station, Pillar No... <span class="sepr">|'),
(38, ' City Mediclinic ', '(91)-11-66582685', ' D 423, Palam Extention, Ramphal Chowk, Dwarka Sector 7, Delhi - 110075 '),
(39, ' Shivom Eye And Dental Centre ', '(91)-11-67775405', ' L 1/122/123-A, Ground Floor, Alaknanda, Lig Dda Flats, Kalkaji, Delhi - 110019, Kaka Public School '),
(40, ' Samvedna ENT &amp; Dental Clinic ', '(91)-11-66228160', ' F-108 Ground Floor, Dilshad Colony, Delhi - 110095, Opposite Mcd School, And Near Kapoor Medical Cen... <span class="sepr">|'),
(41, ' Dr Rakhi Gupta ', '(91)-11-66537548', ' C 36, Ground Floor, M I Heart &amp; Women Health Care Clinic And Diagnostic Center, Sarita Vihar, Delhi ... <span class="sepr">|'),
(42, ' Meera Hospital ', '(91)-11-66264421', ' House No.34, H Block, Noida Sector 22, Noida - 201301, Opposite Sector 55 Bus Stand '),
(43, ' Nulife Hospital ', '(91)-11-66738517', ' 1616, Outram Lane, Dr Mukherjee Nagar, Kingsway Camp, Delhi - 110009, Near Gtb Nagar Metro Station '),
(44, ' Apple Hospital ', '(91)-11-66356262', ' 1788/3, Rajiv Nagar, Gurgaon - 122001, Near Shiv Mandir '),
(45, ' Dr Lal Pathlabs ', '(91)-11-66217286', ' Qu 198a, Outer Ring Road, Pitampura, Delhi - 110034, Near Income Tax Colony '),
(46, ' Biswas Heart And Mind Clinic ', '(91)-11-67772779', ' Pocket 40/65, C R Park, Delhi - 110019 '),
(47, ' Shri Nanda Medical &amp; Dental Clinic ', '(91)-11-66584362', ' Plot Number 24, Basement, Ambrahi Village Extention, Dwarka Sector 19, Delhi - 110075, Opposite DDA ... <span class="sepr">|'),
(48, ' Suntex Ayurvedic Clinic ', '(91)-11-66437962', ' 8736, Roshanara Road, Delhi - 110007, Near Metro Station Pul Bangash '),
(49, ' Total Care Control ', '-', ' B 294, New Ashok Nagar Extension, Mayur Vihar Phase I, Delhi - 110091, Opposite East End Apartment '),
(50, ' Dr A K Gupta ', '(91)-11-66217018', ' J Block, House No 158, Main Road, Rajouri Garden, Delhi - 110027, Opposite Metro Pillar No 415 And 4... <span class="sepr">|'),
(51, ' Divyam Clinin ', '-', ' No.11, Desu wali gali, Mahipalpur, Delhi - 110037, Near Shalimar public school '),
(52, ' Dr Sunita Gupta ', '(91)-11-66438125', ' 209 The Sapphire, Sohna Road, Gurgaon - 122001, Opposite Orchid Petals &amp; Behind Omaxe Mall '),
(53, ' Ross Clinics ', '(91)-11-66583958', ' Shop No 247 &amp; 255, Ameya Sapphire Sohna Road, Gurgaon Sector 49, Gurgaon - 122018, Opposite Orchid P... <span class="sepr">|'),
(54, ' Ross Clinics ', '(91)-11-66583970', ' U 16 / 49, Basement, Dlf City Phase III Gurgaon, Gurgaon - 122010, Behind Rbs '),
(55, ' Pushpanjali Hospital &amp; Trauma Centre ', '(91)-11-67773417', ' 11 Ground Floor Inder Enchlave, Main Rohtak Road, Peera Garhi, Delhi - 110063, Opposite Metro Pillar... <span class="sepr">|'),
(56, ' Doctors Point ', '(91)-11-66433384', ' Ff-06 Parshavnath Majestic Arcade, Indirapuram, Ghaziabad - 201014, Opp Shipra Suncity Gate No-6 '),
(57, ' City Medical Center ', '(91)-11-66538475', ' F- 101, Tradex Tower 2, Commercial Belt Alfa 1, Greater Noida, Noida - 201308 '),
(58, ' Dr Ashok Grover ', '(91)-11-66888608', ' B 16, Madhuban Enclave, Delhi - 110092 '),
(59, ' Singla Clinic ', '(91)-11-66438505', ' F 113, Vikaspuri, Delhi - 110018, Near F Block Market '),
(60, ' Advanced Neurotherapy Treatment Center ', '(91)-11-66431477', ' 51/3 Lower Ground Gate No. 7, Old Rajender Nagar, Delhi - 110060, Towards Sindhi Park '),
(61, ' Nazar Charitable Hospital ', '(91)-11-66731768', ' H 1/184 To 186, Sultanpuri, Delhi - 110086 '),
(62, ' Kailash Nursing Home &amp; Eye Care ', '(91)-11-66727544', ' 49-50, South Patel Nagar Market, Patel Nagar, Delhi - 110008, Opposite Metro Pillar No 190 &amp; Near Pa... <span class="sepr">|'),
(63, ' Laxmi Diagnostic Centre ', '(91)-11-66364434', ' I 1191, Police Station Road, Mangolpuri, Delhi - 110083, Near Mother Dairy Mangolpuri '),
(64, ' Asha Multi Speciality Clinic ', '(91)-11-66584353', ' Clinic No C 2, Gurgaon Sector 40, Gurgaon - 122001, Opposite Huda Market '),
(65, ' Singhal Hospital ', '(91)-11-66730617', ' C-40, St No-10, Palam Colony, Delhi - 110045, Sadh Ngr '),
(66, ' Health On Call ', '(91)-11-66585136', ' 63a/1, Arjuna nagar, Safdarjung Enclave, Delhi - 110029, Nr. Gurudwara '),
(67, ' Sheikh Sarai Medical Centre ', '(91)-11-66890279', ' 14-A, Pocket-K, Sheikh Sarai 2, Delhi - 110017 '),
(68, ' Dr Mannat Arogya ', '(91)-11-66886882', ' D 998 /Ramphal Chowk /, Dwarka Sector 7, Delhi - 110075, Near JAI Jawan Gas Agency '),
(69, ' Shubham Hospital ', '(91)-11-66360417', ' Dd 15, Kalkaji, Delhi - 110019, Near Post Office '),
(70, ' Asian Clinic ', '(91)-11-66728697', ' E 64, Greater Kailash I, Delhi - 110048, Near M Block Market '),
(71, ' Dr S K Mundhra ', '(91)-11-66357904', ' B-294 Ground Floor, On Pvr Cinema Prashant Vihar Road, Prashant Vihar, Delhi - 110085, Opposite St. ... <span class="sepr">|'),
(72, ' Dr Gupta Nursing Home &amp; Hospital ', '(91)-11-66533816', ' 25 Raj Block, Naveen Shahdra, Shahdara, Delhi - 110032, Opposite Shahdra Metro Station '),
(73, ' Dr. Hariom Ahuja ', '(91)-11-66733524', ' B-17, Golf View Apartments, Anupam PVR Road, Saket, Delhi - 110017, Near Malviya Nagar Metro '),
(74, ' Chest Clinic ', '(91)-11-66735650', ' House Number-209, 2nd Floor, Laxman Dwar Gate Number-2, Gujranwala Town 2, Delhi - 110009, Near Mode... <span class="sepr">|'),
(75, ' Dr Bhavna Malhotras Homoeopathic Clinic ', '(91)-11-66729377', ' D 135, East Of Kailash, Delhi - 110065, Near Sapna Cinema '),
(76, ' Geeta Sharma Clinic ', '(91)-11-66745604', ' D 116, Arya Samaj Road, Uttam Nagar, Delhi - 110059, Behind State Bank Of India '),
(77, ' Maheshwari Clinics ', '(91)-11-66361907', ' 215, Sukhdev Vihar Road, Sukhdev Vihar, Delhi - 110025 '),
(78, ' Clinic Sainik Farms ', '(91)-11-66748251', ' 115, central avenue, c-7 lane, Sainik Farms, Delhi - 110062 '),
(79, ' Shri Nanda Medical &amp; Dental Clinic ', '(91)-11-66584362', ' Plot Number 24, Basement, Ambrahi Village Extention, Dwarka Sector 19, Delhi - 110075, Opposite DDA ... <span class="sepr">|'),
(80, ' Ross Clinics ', '(91)-11-66583958', ' Shop No 247 &amp; 255, Ameya Sapphire Sohna Road, Gurgaon Sector 49, Gurgaon - 122018, Opposite Orchid P... <span class="sepr">|'),
(81, ' Nationwide Primary Health Care Pvt Ltd ', '(91)-11-66733893', ' Plot Number 1, Supertech Avant Garde, Vaishali Sector 5, Ghaziabad - 201010 '),
(82, ' Apple Hospital ', '(91)-11-66356262', ' 1788/3, Rajiv Nagar, Gurgaon - 122001, Near Shiv Mandir '),
(83, ' Ross Clinics ', '(91)-11-66583970', ' U 16 / 49, Basement, Dlf City Phase III Gurgaon, Gurgaon - 122010, Behind Rbs '),
(84, ' V Care Diagnostics ', '(91)-11-66884484', ' Wz 409 B, Janak Park, Hari Nagar, Delhi - 110064, Opposite Deen Dayal Upadhyay Hospital '),
(85, ' Dass Polyclinic ', '(91)-11-66537322', ' Rz D3/65, Street Number 7, Mahavir Enclave, Delhi - 110045, Near Relaxo Showroom '),
(86, ' Karuna Hospital ', '(91)-11-66747915', ' D 62, Dilshad Colony, Dilshad Garden, Delhi - 110095, Near Tahirpur Red Light &amp; Opposite District Park '),
(87, ' Mukthar Health Centre ', '(91)-11-66266818', ' chakkkar vill, behind sai mandir, Gurgaon, Delhi - 122001, nr- mega mall dlf '),
(88, ' Dr Sunder Lal Memorial Hospital ', '(91)-11-67773136', ' C-201, Jawahar Park, Main Devli Road, Khanpur, Delhi - 110062, Dr.Sunder Lal Memorial Hospital '),
(89, ' Dr S Chakravorty ', '(91)-11-66359423', ' T-21 Sector -11, Noida, Noida - 201301, Near Metro Hospital '),
(90, ' Dr Bajajs Clinic ', '(91)-11-66730425', ' 35/11, Ashok Nagar, Delhi - 110018, Behind Tilak Nagar Police Station '),
(91, ' Singhal Hospital ', '(91)-11-66730617', ' C-40, St No-10, Palam Colony, Delhi - 110045, Sadh Ngr '),
(92, ' K S HOMEOPATHY ', '(91)-11-67772314', ' G 1, Vardhman Chamber-1, Pvr Complex, Vikaspuri, Delhi - 110018, Near Mela Restaurant '),
(93, ' Dr Siddhartha Rao ', '(91)-11-66582094', ' C/O Jaipur Golden Hospital,Room No 42 Institutional Area 2, Rohini Sector 3, Delhi - 110085 '),
(94, ' Dr Vinay Walia Clinic ', '(91)-11-66741632', ' Fc/3, First Floor, Dda Shopping Centre, Munirka, Delhi - 110067, Beneath Udipi Restaurant '),
(95, ' Doctors Point ', '(91)-11-66433384', ' Ff-06 Parshavnath Majestic Arcade, Indirapuram, Ghaziabad - 201014, Opp Shipra Suncity Gate No-6 '),
(96, ' Pal Medicare Centre ', '(91)-11-66430426', ' M 52, Lajpat Nagar 2-Lajpat Nagar, Delhi - 110024, Near Kotak Mahindra Bank '),
(97, ' Keva Natural Ayurvedic Industry ', '(91)-11-66885205', ' Shop No 287,Pratap House, Sant Nagar-East Of Kailash, Delhi - 110065, Behind Reliance Fresh '),
(98, ' Dr Neeraj Dhamija ', '(91)-11-67773543', ' C-2B/62A, Noble Medicare, Janakpuri, Delhi - 110058, Near District Park '),
(99, ' Vichitra Homeo &amp; Yoga Clinic ', '(91)-11-66743894', ' I-007,SECTOR-22,NOIDA, Branch-LGF-17,Crossing Plaza Market, SECTOR-22,NOIDA, Noida - 201301, VICHITR... <span class="sepr">|'),
(100, ' Sukhmani Hospital ', '(91)-11-66228659', ' Block B 7, Hospital Number 126 A Extension, Main Road, Safdarjung Enclave, Delhi - 110029, Opposite ... <span class="sepr">|'),
(101, ' Dr S K Mundhra ', '(91)-11-66357904', ' B-294 Ground Floor, On Pvr Cinema Prashant Vihar Road, Prashant Vihar, Delhi - 110085, Opposite St. ... <span class="sepr">|'),
(102, ' Shukla Longevety Advance Research Centre Slarc ', '(91)-11-67772499', ' A-76,Azadpur Village, Railway Road, Azadpur, Delhi - 110033, Near Mother Dairy And Azadpur Metro Sta... <span class="sepr">|'),
(103, ' Sukhmani Hospital ', '(91)-11-66228659', ' Block B 7, Hospital Number 126 A Extension, Main Road, Safdarjung Enclave, Delhi - 110029, Opposite ... <span class="sepr">|'),
(104, ' Dr Vermas ENT Clinic ', '(91)-11-66437029', ' Shop No 1, 1st Floor, Lajwanti Plaza, Vaishali Sector 4, Ghaziabad - 201010, Above Apollo Pharmcay '),
(105, ' Bhaskar Homeopathic Clinic ', '(91)-11-66225284', ' Gaushala Shop Number 5, Gaushala Road, Najafgarh, Delhi - 110043, Near Delhi Gate '),
(106, ' Sankhwar Hospital ', '(91)-11-66721813', ' D 134, Kondli, Delhi - 110096, Near Mayur Vihar Phase 3 '),
(107, ' Dr S K Bakshi ', '(91)-11-66362672', ' G 36,1st Floor, Green Park, Delhi - 110016, Opposite Main Market '),
(108, ' Dr Jitender Ujla Clinic ', '(91)-11-66435092', ' 11/3, Old Rajinder Nagar, Old Rajender Nagar, Delhi - 110060, Near Ganga Ram Hospital '),
(109, ' Sanjeevani Polyclinic And Pathology Lab ', '(91)-11-66749449', ' A 2/20, Main Market, Main Road, Noida Sector 110, Noida - 201305, Opposite Kendriya Vihar 2 '),
(110, ' East Delhi Medical Center ', '(91)-11-66737342', ' 1/550, G T Road, Mansarovar Park-Shahdara, Delhi - 110032, Near Mansrover Park Metro Station '),
(111, ' Kesar Clinic ', '(91)-11-66539338', ' BA/9a,Ashok Vihar-I, Ashok Vihar I-Ashok Vihar, Delhi - 110052, oppt.kotak mahindra bank '),
(112, ' Aroras Homeo Clinic ', '(91)-11-66744691', ' Shop Number 1, C 2 ,Ganesh Nagar, Tilak Nagar, Delhi - 110018, Near Mcd School '),
(113, ' Prani Health Solutions ', '(91)-11-66887224', ' 12th Floor, Plot No 9, Awas Mediview Residency, Gurgaon Sector 39, Gurgaon - 122001, Opposite Medant... <span class="sepr">|'),
(114, ' Mohinder Hospital ', '(91)-11-66891466', ' C-5, Green Park Extension, Green Park Extension, Delhi - 110016, Near Gurudwara '),
(115, ' Asha Multi Speciality Clinic ', '(91)-11-66435901', ' C2, Near Huda Mkt, Gurgaon Sector 40, Gurgaon - 122001 '),
(116, ' DR Nakra Clinic ', '(91)-11-66242661', ' S-305, Greater Kailash, Delhi - 110048, near M Block Market Greater Kailash 2 '),
(117, ' Ansari Hospitals ', '(91)-11-66430285', ' Rz-20 F/B, Kailash Puri Road &amp; Gali No. 6, Sagarpur, Delhi - 110046, Near Lakshmi Narain Mandir '),
(118, ' Prashant Hospital ', '(91)-11-66746085', ' C-1/17 &amp; 18, Prashant Vihar, Delhi - 110085, Near Rohini East Metro Station '),
(119, ' Shree Jee Clinic &amp; Maternity Centre ', '(91)-11-66443780', ' A3/228, Rohini Sector 5, Delhi - 110085, Near Canara Bank '),
(120, ' Kapoor Poly Clinic ', '(91)-11-66223267', ' M -175, Greater Kailash, Delhi - 110048, Part-2 '),
(121, ' Kiran Memorial Hospital ', '(91)-11-66450376', ' Nand Market, Sohna Road, Gurgaon, Gurgaon - 122001, Near Kamal Mart '),
(122, ' Aar Pee Hospital ', '(91)-11-66582578', ' 1276 P, Faridabad Sector 28, Faridabad - 121008, Near Badkal Chowk '),
(123, ' Healing Hands ', '(91)-11-66534417', ' 5/2, Kalkaji Extension, Delhi - 110019, Near Greater Kailash '),
(124, ' JS Hospital ', '(91)-11-66443888', ' Opp. - A-10 (Step By Step School), Sector 132, Noida, Noida - 201303, Near ETT Tower '),
(125, ' The Apollo Clinic ', '-', ' No.11,1st Floor, Gaur Gravity, Plot No. 8, Vaibhav Khand, Indirapuram, Ghaziabad - 201014 '),
(126, ' Gayatri Nawal Hospital ', '(91)-11-66534087', ' Plot No 765, Niti Khand-1, Indirapuram, Ghaziabad - 201014, Near ATS Housing '),
(127, ' Kesar Clinic ', '(91)-11-66539338', ' BA/9a,Ashok Vihar-I, Ashok Vihar I-Ashok Vihar, Delhi - 110052, oppt.kotak mahindra bank '),
(128, ' Dr A K Arora ', '(91)-11-66745847', ' G-272-A Hig Flats,Pratap Vihar, Ghaziabad Sector 11, Ghaziabad - 201012 '),
(129, ' Healing Hands ', '(91)-11-66534417', ' 5/2, Kalkaji Extension, Delhi - 110019, Near Greater Kailash '),
(130, ' Avantika Hospital ', '(91)-11-66746090', ' 137, Niti Khand-2, Indirapuram, Ghaziabad - 201014, Near Swarn Jayanti Park '),
(131, ' Manchanda Hospital ', '(91)-11-66724293', ' A-240, Chattarpur, Delhi - 110030, Opposite 100m Ahead Tivoli Garden '),
(132, ' Dr Anil Kumar Mehta ', '(91)-11-66738967', ' 100 Rps, Sheikh Sarai 1, Malviya Nagar, Delhi - 110017, Opposite Apeejay School '),
(133, ' Ansari Hospitals ', '(91)-11-66430285', ' Rz-20 F/B, Kailash Puri Road &amp; Gali No. 6, Sagarpur, Delhi - 110046, Near Lakshmi Narain Mandir '),
(134, ' Yashoda Super Speciality Hospital ', '(91)-11-66535356', ' H Block, Building Number 1, Kaushambi, Ghaziabad - 201012, Near Anand Vihar Isbt '),
(135, ' Kapoor Poly Clinic ', '(91)-11-66223267', ' M -175, Greater Kailash, Delhi - 110048, Part-2 '),
(136, ' Amar Leela Hospital Pvt Ltd ', '(91)-11-66264845', ' B-1/6, Main Najafgarh Road, Janakpuri, Delhi - 110058, Near Janak Puri East Metro Station, Pillar No... <span class="sepr">|'),
(137, ' Mohinder Hospital ', '(91)-11-66891466', ' C-5, Green Park Extension, Green Park Extension, Delhi - 110016, Near Gurudwara '),
(138, ' City Mediclinic ', '(91)-11-66582685', ' D 423, Palam Extention, Ramphal Chowk, Dwarka Sector 7, Delhi - 110075 '),
(139, ' German Child &amp; Dental Clinic ', '(91)-11-66436223', ' B 27 Ground Floor Noor Nagar/ C-281, German Lane, Shaheen Bagh, Main Road, Jamia Nagar, Delhi - 1100... <span class="sepr">|'),
(140, ' Guidemytreatment.com ', '(91)-11-66881118', ' 26, Community Centre, PVR - Saket, Saket, Delhi - 110017 '),
(141, ' Healing Temple Dr Arhat Homoeo Clinic ', '(91)-11-66581939', ' 13 LOTUS ENCLAVE PITAMPURA, Parwana road, Pitampura, Delhi - 110034, Near Bal bharti public school p... <span class="sepr">|'),
(142, ' Shivom Eye And Dental Centre ', '(91)-11-67775405', ' L 1/122/123-A, Ground Floor, Alaknanda, Lig Dda Flats, Kalkaji, Delhi - 110019, Kaka Public School '),
(143, ' Meera Hospital ', '(91)-11-66264421', ' House No.34, H Block, Noida Sector 22, Noida - 201301, Opposite Sector 55 Bus Stand '),
(144, ' Kiran Memorial Hospital ', '(91)-11-66450376', ' Nand Market, Sohna Road, Gurgaon, Gurgaon - 122001, Near Kamal Mart '),
(145, ' Prashant Hospital ', '(91)-11-66746085', ' C-1/17 &amp; 18, Prashant Vihar, Delhi - 110085, Near Rohini East Metro Station '),
(146, ' Dr Dilbag Clinic ', '(91)-11-66539499', ' A 8, Main Najafgarh Road, Milap Nagar-Uttam Nagar, Delhi - 110059, Near Uttam Nagar East Metro Stati... <span class="sepr">|'),
(147, ' Gayatri Nawal Hospital ', '(91)-11-66534087', ' Plot No 765, Niti Khand-1, Indirapuram, Ghaziabad - 201014, Near ATS Housing '),
(148, ' Samvedna ENT &amp; Dental Clinic ', '(91)-11-66228160', ' F-108 Ground Floor, Dilshad Colony, Delhi - 110095, Opposite Mcd School, And Near Kapoor Medical Cen... <span class="sepr">|'),
(149, ' City Clinic ', '(91)-11-66744234', ' C 17 / Navniti Apartment, Main Road Mandawali, Indraprastha Extension, Delhi - 110092, Opposite Tara... <span class="sepr">|'),
(150, ' Aryan Hospital ', '(91)-11-66435434', ' Old Railway Road, Gurgaon, Gurgaon - 122001 '),
(151, ' Shree Jee Clinic &amp; Maternity Centre ', '(91)-11-66443780', ' A3/228, Rohini Sector 5, Delhi - 110085, Near Canara Bank '),
(152, ' Swasthik Hospital ', '(91)-11-66882803', ' 14, Gopal Nagar, Tilak Nagar, Delhi - 110018, Opposite Ashok Nagar And Near Tilak Nagar Metro Station '),
(153, ' Ross Clinics ', '(91)-11-66356025', ' Shop No 109, Opp SBI Main Market, Gurgaon Sector 31, Gurgaon - 122002, Sector 31 '),
(154, ' Nationwide Primary Health Care Pvt Ltd ', '(91)-11-66733893', ' Plot Number 1, Supertech Avant Garde, Vaishali Sector 5, Ghaziabad - 201010 '),
(155, ' Kiran Memorial Hospital ', '(91)-11-66450376', ' Nand Market, Sohna Road, Gurgaon, Gurgaon - 122001, Near Kamal Mart '),
(156, ' Maheshwari Clinics ', '(91)-11-66361907', ' 215, Sukhdev Vihar Road, Sukhdev Vihar, Delhi - 110025 '),
(157, ' Maheshwari Hospital ', '(91)-11-66266952', ' F 1 U /41, Pitampura, Delhi - 110034, Beside HDFC Bank And Near Income Tax Colony '),
(158, ' Modi Nursing Home &amp; Hair Care Clinic ', '(91)-11-66355204', ' B-16, Commercial Cplx, Dr Mukherjee Nagar, Delhi - 110009, Batra cinema '),
(159, ' SRL Diagnostics Center ', '(91)-11-66533937', ' G 32, Lower Ground Floor, Main Market, Main Road, Green Park, Delhi - 110016, Near Cafe Coffee Day '),
(160, ' Pushpanjali Medical Centre ', '(91)-11-66435687', ' A -14/15, Pushpanjali, Vikas Marg, Delhi - 110092 '),
(161, ' Delli Heart Care Centre ', '(91)-11-66226261', ' 118a/2, Kartik Enclave, Dilshad Garden, Delhi - 110095, Near Gtb Chowk And Behind Jeevan Jyoti Hospi... <span class="sepr">|'),
(162, ' Dr Kiran Seth ', '(91)-11-66358388', ' A 72, Noida Sector 50, Noida - 201307, nr-Water tank,Gol chaker of Kendriya vihar '),
(163, ' Dr Veena Mattu ', '(91)-11-66538268', ' C 2, Ground Floor, Vatika First India Place, M G Road, DLF City Phase II Gurgaon, Gurgaon - 122008, ... <span class="sepr">|'),
(164, ' V Care Diagnostics ', '(91)-11-66884484', ' Wz 409 B, Janak Park, Hari Nagar, Delhi - 110064, Opposite Deen Dayal Upadhyay Hospital '),
(165, ' Aryan Hospital ', '(91)-11-66435434', ' Old Railway Road, Gurgaon, Gurgaon - 122001 '),
(166, ' Gayatri Nawal Hospital ', '(91)-11-66534087', ' Plot No 765, Niti Khand-1, Indirapuram, Ghaziabad - 201014, Near ATS Housing '),
(167, ' Kesar Clinic ', '(91)-11-66539338', ' BA/9a,Ashok Vihar-I, Ashok Vihar I-Ashok Vihar, Delhi - 110052, oppt.kotak mahindra bank '),
(168, ' Dr Shailesh Jain ', '(91)-11-66355560', ' G-28/101, Rohini Sector 3, Delhi - 110085, Near Mother Divine School And Sector 3 Bus Stand '),
(169, ' Kathuria Hospital ', '(91)-11-66435162', ' 19/8, Khandsa Road, Model Town, Gurgaon, Gurgaon - 122001, Model Town Opp S.d Senior Secondary School '),
(170, ' Dr S Chakravorty ', '(91)-11-66359423', ' T-21 Sector -11, Noida, Noida - 201301, Near Metro Hospital '),
(171, ' Dr Ashar Imam ', '(91)-11-66734404', ' 501,Block 3, Plot No-1,Shahjanabad Apartment, Dwarka, Delhi - 110075 '),
(172, ' Privat Hospital Gurgaon ', '(91)-11-66262183', ' M G Road, Gurgaon, Gurgaon - 122002, Opposite Westin Hotel '),
(173, ' Ansari Hospitals ', '(91)-11-66430285', ' Rz-20 F/B, Kailash Puri Road &amp; Gali No. 6, Sagarpur, Delhi - 110046, Near Lakshmi Narain Mandir '),
(174, ' K S HOMEOPATHY ', '(91)-11-67772314', ' G 1, Vardhman Chamber-1, Pvr Complex, Vikaspuri, Delhi - 110018, Near Mela Restaurant '),
(175, ' Goyal Hospital &amp; Urology Centre ', '(91)-11-66266548', ' E 4/8, Krishna Nagar, Delhi - 110051, Near Lajpat RAI Chowk '),
(176, ' Dr Vinay Walia Clinic ', '(91)-11-66741632', ' Fc/3, First Floor, Dda Shopping Centre, Munirka, Delhi - 110067, Beneath Udipi Restaurant '),
(177, ' JS Hospital ', '(91)-11-66443888', ' Opp. - A-10 (Step By Step School), Sector 132, Noida, Noida - 201303, Near ETT Tower '),
(178, ' DDS Hospitals ', '(91)-11-66882329', ' Main Dadri Rd, Bhangel, Noida - 201304, Opp Salarpur Gate, Dadri, Bhangel '),
(179, ' A One Hospital Pvt Ltd ', '(91)-11-66355290', ' A1/7, Main Rohtak Rod And Opposite Metro Pillar 263, Paschim Vihar, Delhi - 110063, Near Peera Garhi... <span class="sepr">|'),
(180, ' Asian Clinic ', '(91)-11-66728697', ' E 64, Greater Kailash I, Delhi - 110048, Near M Block Market '),
(181, ' Healers clinic ', '(91)-11-66217633', ' K-37,Part-II, NDSE 2, Delhi - 110049, Near Post Office &amp; Mc Donald`s '),
(182, ' Chest Clinic ', '(91)-11-66735650', ' House Number-209, 2nd Floor, Laxman Dwar Gate Number-2, Gujranwala Town 2, Delhi - 110009, Near Mode... <span class="sepr">|'),
(183, ' German Child &amp; Dental Clinic ', '(91)-11-66436223', ' B 27 Ground Floor Noor Nagar/ C-281, German Lane, Shaheen Bagh, Main Road, Jamia Nagar, Delhi - 1100... <span class="sepr">|'),
(184, ' Dr Vermas ENT Clinic ', '(91)-11-66437029', ' Shop No 1, 1st Floor, Lajwanti Plaza, Vaishali Sector 4, Ghaziabad - 201010, Above Apollo Pharmcay '),
(185, ' Healing Hands ', '(91)-11-66534417', ' 5/2, Kalkaji Extension, Delhi - 110019, Near Greater Kailash '),
(186, ' The Apollo Clinic ', '(91)-11-66442352', ' C 70, Major Sudesh Kumar Marg, Rajouri Garden, Delhi - 110027, Opposite Mahadev Bindra Park '),
(187, ' Privat Hospital Gurgaon ', '(91)-11-66262183', ' M G Road, Gurgaon, Gurgaon - 122002, Opposite Westin Hotel '),
(188, ' Sanjeevani Polyclinic And Pathology Lab ', '(91)-11-66749449', ' A 2/20, Main Market, Main Road, Noida Sector 110, Noida - 201305, Opposite Kendriya Vihar 2 '),
(189, ' East Delhi Medical Center ', '(91)-11-66737342', ' 1/550, G T Road, Mansarovar Park-Shahdara, Delhi - 110032, Near Mansrover Park Metro Station '),
(190, ' Swasthik Hospital ', '(91)-11-66882803', ' 14, Gopal Nagar, Tilak Nagar, Delhi - 110018, Opposite Ashok Nagar And Near Tilak Nagar Metro Station '),
(191, ' Hcl Avitas Pvt Ltd ', '(91)-11-66724340', ' Unit No 9, Golf Course Road, Gurgaon, Gurgaon - 122001, Near Suncity Business Tower '),
(192, ' Dr Dilbag Clinic ', '(91)-11-66539499', ' A 8, Main Najafgarh Road, Milap Nagar-Uttam Nagar, Delhi - 110059, Near Uttam Nagar East Metro Stati... <span class="sepr">|'),
(193, ' Dr Aruns Health Centre ', '(91)-11-66217242', ' 6 B/1, Ramesh Nagar, Delhi - 110015, Main Market &amp; Opposite Malhotra Property Dealer '),
(194, ' Sai Polyclinic ', '(91)-11-66730961', ' E 411 A, Taksal Road,40 Foota Road, New Ashok Nagar, Delhi - 110096, Near Rajdhani Public School '),
(195, ' Gupta Poly Clinic &amp; Piles And Fistula Care Centre ', '(91)-11-66889489', ' 6/300 Lalita Park, Main C R Road, Laxmi Nagar, Delhi - 110092, Near Laxmi Nagar Metro Station Gate N... <span class="sepr">|'),
(196, ' Dr Bhavna Malhotras Homoeopathic Clinic ', '(91)-11-66729377', ' D 135, East Of Kailash, Delhi - 110065, Near Sapna Cinema '),
(197, ' SRL Diagnostic ', '(91)-11-66264464', ' Shop Number 70, 1st Floor, Huda Market, Gurgaon Sector 40, Gurgaon - 122001, Opposite Law College '),
(198, ' Dr Sunita Gupta ', '(91)-11-66438125', ' 209 The Sapphire, Sohna Road, Gurgaon - 122001, Opposite Orchid Petals &amp; Behind Omaxe Mall '),
(199, ' Aroras Homeo Clinic ', '(91)-11-66744691', ' Shop Number 1, C 2 ,Ganesh Nagar, Tilak Nagar, Delhi - 110018, Near Mcd School '),
(200, ' Dr Veena Mattu ', '(91)-11-66538268', ' C 2, Ground Floor, Vatika First India Place, M G Road, DLF City Phase II Gurgaon, Gurgaon - 122008, ... <span class="sepr">|'),
(201, ' Kapoor Poly Clinic ', '(91)-11-66223267', ' M -175, Greater Kailash, Delhi - 110048, Part-2 '),
(202, ' Laxmi Diagnostic Centre ', '(91)-11-66364434', ' I 1191, Police Station Road, Mangolpuri, Delhi - 110083, Near Mother Dairy Mangolpuri '),
(203, ' Health Point Diagnostic ', '(91)-11-66432434', ' Shop No-3,13/A, Gali No: 2, Chattarpur, Delhi - 110074, Near Dena Bank, Near Shivala Mandir '),
(204, ' Gupta Poly Clinic &amp; Piles And Fistula Care Centre ', '(91)-11-66889489', ' 6/300 Lalita Park, Main C R Road, Laxmi Nagar, Delhi - 110092, Near Laxmi Nagar Metro Station Gate N... <span class="sepr">|'),
(205, ' Nazar Charitable Hospital ', '(91)-11-66731768', ' H 1/184 To 186, Sultanpuri, Delhi - 110086 '),
(206, ' Dr Sunder Lal Memorial Hospital ', '(91)-11-67773136', ' C-201, Jawahar Park, Main Devli Road, Khanpur, Delhi - 110062, Dr.Sunder Lal Memorial Hospital '),
(207, ' Paras Spring Meadows Hospital ', '(91)-11-66218042', ' F-44, East Of Kailash, Delhi - 110065, Near Kailash Colony Metro Station '),
(208, ' Angel Mother &amp; Child Clinic ', '(91)-11-66738285', ' E-1066, Ramphal Chowk, Dwarka, Delhi - 110075, Opposite Punjab National Bank '),
(209, ' Shubham Hospital ', '(91)-11-66360417', ' Dd 15, Kalkaji, Delhi - 110019, Near Post Office '),
(210, ' City Medical Center ', '(91)-11-66538475', ' F- 101, Tradex Tower 2, Commercial Belt Alfa 1, Greater Noida, Noida - 201308 '),
(211, ' Dr S K Mundhra ', '(91)-11-66357904', ' B-294 Ground Floor, On Pvr Cinema Prashant Vihar Road, Prashant Vihar, Delhi - 110085, Opposite St. ... <span class="sepr">|'),
(212, ' Dr A K Gupta ', '(91)-11-66217018', ' J Block, House No 158, Main Road, Rajouri Garden, Delhi - 110027, Opposite Metro Pillar No 415 And 4... <span class="sepr">|'),
(213, ' Divyam Clinin ', '-', ' No.11, Desu wali gali, Mahipalpur, Delhi - 110037, Near Shalimar public school '),
(214, ' Singhal Hospital ', '(91)-11-66730617', ' C-40, St No-10, Palam Colony, Delhi - 110045, Sadh Ngr '),
(215, ' Dr Lal Pathlabs ', '(91)-11-66217286', ' Qu 198a, Outer Ring Road, Pitampura, Delhi - 110034, Near Income Tax Colony '),
(216, ' Biswas Heart And Mind Clinic ', '(91)-11-67772779', ' Pocket 40/65, C R Park, Delhi - 110019 '),
(217, ' Bhardwaj Hospital ', '(91)-11-66436298', ' N.H 1, Noida Sector 29, Noida - 201303, Opposite Ganga Shopping Complex '),
(218, ' Shri Nanda Medical &amp; Dental Clinic ', '(91)-11-66584362', ' Plot Number 24, Basement, Ambrahi Village Extention, Dwarka Sector 19, Delhi - 110075, Opposite DDA ... <span class="sepr">|'),
(219, ' Dr Ashok Grover ', '(91)-11-66888608', ' B 16, Madhuban Enclave, Delhi - 110092 '),
(220, ' City Clinic ', '(91)-11-66744234', ' C 17 / Navniti Apartment, Main Road Mandawali, Indraprastha Extension, Delhi - 110092, Opposite Tara... <span class="sepr">|'),
(221, ' DR Lal Pathlabs ', '(91)-11-66583376', ' Shop No 153 Basement, Hauz Rani-Malviya Nagar, Delhi - 110017, Opposite Max Devki Hospital Saket '),
(222, ' Apple Hospital ', '(91)-11-66356262', ' 1788/3, Rajiv Nagar, Gurgaon - 122001, Near Shiv Mandir '),
(223, ' Dr Alok Jain ', '(91)-11-66581419', ' C 218 Malik Radix Healthcare Service, Nirman Vihar, Delhi - 110092, Near Nirman Vihar Metro Station '),
(224, ' Empathy Medcare ', '(91)-11-66720453', ' A-3/8, Main Market, Noida Sector 110, Noida - 201305, Next To Dominos Pizza '),
(225, ' Dr Mahesh Gaur ', '(91)-11-66746637', ' N 23, Naveen Shahdara, Shahdara, Delhi - 110032, Behind Shyam LAL College '),
(226, ' Advanced Neurotherapy Treatment Center ', '(91)-11-66431477', ' 51/3 Lower Ground Gate No. 7, Old Rajender Nagar, Delhi - 110060, Towards Sindhi Park '),
(227, ' Bhagwati Hospital ', '(91)-11-66437398', ' CS Ocf, Rohini Sector 13, Delhi - 110085 '),
(228, ' Shri Dhanwantri Hospital ', '(91)-11-66358310', ' Rz-10a,Main Gopal Nagar, Najafgarh, Delhi - 110043, Near Khera More '),
(229, ' Shree Hospital ', '(91)-11-66584431', ' Plot No 54, Sector 12 A, Dwarka, Delhi - 110075, Opposite Bal Bharti School '),
(230, ' Dr Ravi Bhushan ', '(91)-11-66450205', ' Upper Ground Floor 11, Reliance Plaza, Sector 4b, Vasundhara, Ghaziabad - 201012 '),
(231, ' Shrivastava Nursing Home ', '(91)-11-66434409', ' D 14/151/152, Rohini Sector 8, Delhi - 110085, Near Rohini East Metro Station '),
(232, ' My Doctor Clinic ', '(91)-11-66450265', ' Shop No 303, 3rd Floor, Dwarka, Delhi - 110075, Aggarwal Mall, Above Pizza Hut '),
(233, ' Amit Seth Dermato Surgery Centre ', '-', ' Shop No 130, Shankar Road Market, Rajender Nagar, Delhi - 110060, Near Ganga Ram Hospital '),
(234, ' Dr Rainas Safe Hands ', '(91)-11-66358130', ' 227-A, Safdarjung Enclave ., Safdarjung Enclave, Delhi - 110029, Opp. Dda Mkt. Arjun Nagar, Connecti... <span class="sepr">|'),
(235, ' Health First Poly Clinic ', '-', ' 27A, 60 Feet Road , Mangal Bazaar Road, Chattarpur, Delhi - 110074, Near Corporation Bank '),
(236, ' DR D C Tewari ', '(91)-11-66355695', ' 69-Duplex , Swarnim Vihar, Noida Sector 82, Noida - 201304, Near Kendriya Vihar -2 / Opposite Sector... <span class="sepr">|'),
(237, ' Life Care Centre ', '-', ' 11 Gagan Vihar, Gagan Vihar, Delhi - 110051, Near Karkari Mor Flyover '),
(238, ' Clinic Health Com ', '(91)-11-66583480', ' Shop Number 23 , Central Market , Dda Flats, Kalkaji, Delhi - 110019, Near Community Centre ,Opposit... <span class="sepr">|'),
(239, ' Medharbour Family Clinic ', '(91)-11-67770667', ' Plot Number 50 Sp, Gurgaon Sector 45, Gurgaon - 122003, Near Artemis Hospital And Near Unitech Cyber... <span class="sepr">|'),
(240, ' Labforsure.Com ', '-', ' 87 Idc, Gurgaon Sector 16, Gurgaon - 122001, Near Gia House '),
(241, ' Dr Veena Mattu ', '-', ' Nr Mg Rd Metro Station, Vatika First India Palace, Gurgaon, Gurgaon - 122001, Gf C-2 Mg Rd Dlf City ... <span class="sepr">|');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
