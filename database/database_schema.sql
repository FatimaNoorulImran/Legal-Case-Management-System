-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql209.infinityfree.com
-- Generation Time: May 24, 2026 at 12:10 PM
-- Server version: 11.4.11-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_42008238_Admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `CaseInfo`
--

CREATE TABLE `CaseInfo` (
  `CaseID` int(11) NOT NULL,
  `CaseType` varchar(100) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `FilingDate` date NOT NULL,
  `ClientID` int(11) DEFAULT NULL,
  `LawyerID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `CaseInfo`
--

INSERT INTO `CaseInfo` (`CaseID`, `CaseType`, `Status`, `FilingDate`, `ClientID`, `LawyerID`) VALUES
(1, 'Criminal', 'Ongoing', '2024-01-10', 1, 1),
(2, 'Family', 'Pending', '2024-01-15', 2, 2),
(3, 'Corporate', 'Closed', '2023-11-20', 3, 3),
(4, 'Civil', 'Ongoing', '2024-02-01', 4, 4),
(5, 'Property', 'Pending', '2024-02-10', 5, 5),
(6, 'Labour', 'Closed', '2023-12-05', 6, 6),
(7, 'Criminal', 'Ongoing', '2024-03-01', 7, 7),
(8, 'Family', 'Closed', '2023-10-15', 8, 8),
(9, 'Tax', 'Pending', '2024-03-20', 9, 9),
(10, 'Constitutional', 'Ongoing', '2024-04-01', 10, 10),
(11, 'Criminal', 'Closed', '2023-09-10', 11, 1),
(12, 'Civil', 'Ongoing', '2024-04-15', 12, 4),
(13, 'Property', 'Closed', '2023-08-20', 13, 5),
(14, 'Family', 'Pending', '2024-05-01', 14, 2),
(15, 'Corporate', 'Ongoing', '2024-05-10', 15, 3),
(16, 'Labour', 'Pending', '2024-05-15', 16, 6),
(17, 'Criminal', 'Closed', '2023-07-01', 17, 7),
(18, 'Tax', 'Ongoing', '2024-06-01', 18, 9),
(19, 'Family', 'Closed', '2023-06-15', 19, 8),
(20, 'Civil', 'Pending', '2024-06-10', 20, 4),
(21, 'Property', 'Ongoing', '2024-06-20', 1, 5),
(22, 'Criminal', 'Pending', '2024-07-01', 3, 1),
(23, 'Corporate', 'Closed', '2023-05-10', 5, 3),
(24, 'Labour', 'Ongoing', '2024-07-10', 7, 6),
(25, 'Constitutional', 'Closed', '2023-04-20', 9, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Client`
--

CREATE TABLE `Client` (
  `ClientID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Client`
--

INSERT INTO `Client` (`ClientID`, `Name`, `Email`, `Phone`, `Address`) VALUES
(1, 'Ahmed Khan', 'ahmed.khan@gmail.com', '0300-1234567', 'Lahore'),
(2, 'Sara Malik', 'sara.malik@yahoo.com', '0311-2345678', 'Karachi'),
(3, 'Bilal Hussain', 'bilal.h@hotmail.com', '0321-3456789', 'Islamabad'),
(4, 'Fatima Zahra', 'fatima.z@gmail.com', '0333-4567890', 'Rawalpindi'),
(5, 'Usman Ali', 'usman.ali@gmail.com', '0345-5678901', 'Peshawar'),
(6, 'Ayesha Siddiqui', 'ayesha.s@yahoo.com', '0301-6789012', 'Lahore'),
(7, 'Zara Noor', 'zara.noor@gmail.com', '0312-7890123', 'Karachi'),
(8, 'Hamza Tariq', 'hamza.t@gmail.com', '0322-8901234', 'Multan'),
(9, 'Nadia Iqbal', 'nadia.iqbal@yahoo.com', '0334-9012345', 'Faisalabad'),
(10, 'Imran Sheikh', 'imran.sheikh@gmail.com', '0346-0123456', 'Quetta'),
(11, 'Sana Riaz', 'sana.riaz@gmail.com', '0302-1234568', 'Lahore'),
(12, 'Tariq Mehmood', 'tariq.m@hotmail.com', '0313-2345679', 'Islamabad'),
(13, 'Mariam Butt', 'mariam.b@gmail.com', '0323-3456780', 'Rawalpindi'),
(14, 'Kamran Javed', 'kamran.j@yahoo.com', '0335-4567891', 'Karachi'),
(15, 'Hina Baig', 'hina.baig@gmail.com', '0347-5678902', 'Lahore'),
(16, 'Rizwan Chaudhry', 'rizwan.c@gmail.com', '0303-6789013', 'Sialkot'),
(17, 'Amber Shahid', 'amber.s@yahoo.com', '0314-7890124', 'Hyderabad'),
(18, 'Fahad Raza', 'fahad.raza@gmail.com', '0324-8901235', 'Peshawar'),
(19, 'Rabia Anwar', 'rabia.a@gmail.com', '0336-9012346', 'Multan'),
(20, 'Danish Qureshi', 'danish.q@hotmail.com', '0348-0123457', 'Islamabad');

-- --------------------------------------------------------

--
-- Table structure for table `CourtHearing`
--

CREATE TABLE `CourtHearing` (
  `HearingID` int(11) NOT NULL,
  `CaseID` int(11) NOT NULL,
  `HearingDate` date NOT NULL,
  `HearingTime` time DEFAULT NULL,
  `CourtLocation` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `CourtHearing`
--

INSERT INTO `CourtHearing` (`HearingID`, `CaseID`, `HearingDate`, `HearingTime`, `CourtLocation`) VALUES
(1, 1, '2024-08-05', '09:00:00', 'Lahore Court'),
(2, 2, '2024-08-07', '10:30:00', 'Karachi Court'),
(3, 3, '2024-08-10', '11:00:00', 'Islamabad Court'),
(4, 4, '2024-08-12', '09:30:00', 'Civil Court Rawalpindi'),
(5, 5, '2024-08-15', '10:00:00', 'District Court Peshawar'),
(6, 6, '2024-08-18', '11:30:00', 'Lahore Court'),
(7, 7, '2024-08-20', '09:00:00', 'Karachi Court'),
(8, 8, '2024-08-22', '10:00:00', 'Family Court Multan'),
(9, 9, '2024-08-25', '11:00:00', 'Tax Tribunal Faisalabad'),
(10, 10, '2024-08-28', '09:30:00', 'Islamabad Court'),
(11, 11, '2024-09-02', '10:30:00', 'Lahore Court'),
(12, 12, '2024-09-05', '11:00:00', 'Islamabad Court'),
(13, 13, '2024-09-08', '09:00:00', 'District Court Rawalpindi'),
(14, 14, '2024-09-10', '10:00:00', 'Karachi Court'),
(15, 15, '2024-09-12', '11:30:00', 'Lahore Court'),
(16, 16, '2024-09-15', '09:30:00', 'Labour Court Sialkot'),
(17, 17, '2024-09-18', '10:00:00', 'Sessions Court Hyderabad'),
(18, 18, '2024-09-20', '11:00:00', 'Islamabad Court'),
(19, 19, '2024-09-22', '09:00:00', 'Family Court Multan'),
(20, 20, '2024-09-25', '10:30:00', 'Civil Court Peshawar'),
(21, 21, '2024-09-28', '11:00:00', 'Lahore Court'),
(22, 22, '2024-10-01', '09:30:00', 'Islamabad Court'),
(23, 23, '2024-10-03', '10:00:00', 'Karachi Court'),
(24, 24, '2024-10-05', '11:30:00', 'Lahore Court'),
(25, 25, '2024-10-08', '09:00:00', 'Islamabad Court');

-- --------------------------------------------------------

--
-- Table structure for table `Evidence`
--

CREATE TABLE `Evidence` (
  `EvidenceID` int(11) NOT NULL,
  `CaseID` int(11) NOT NULL,
  `EvidenceType` varchar(100) NOT NULL,
  `Description` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Evidence`
--

INSERT INTO `Evidence` (`EvidenceID`, `CaseID`, `EvidenceType`, `Description`) VALUES
(1, 1, 'Document', 'FIR copy filed at local police station'),
(2, 1, 'CCTV Footage', 'Security camera footage from crime scene'),
(3, 2, 'Document', 'Nikah Nama and divorce papers'),
(4, 3, 'Contract', 'Signed business agreement between parties'),
(5, 4, 'Photograph', 'Photos of disputed property boundary'),
(6, 5, 'Document', 'Property ownership deed and transfer records'),
(7, 6, 'Document', 'Employment contract and termination letter'),
(8, 7, 'Witness Statement', 'Written statements from 3 eyewitnesses'),
(9, 8, 'Document', 'Court marriage certificate and custody records'),
(10, 9, 'Financial Record', 'Tax returns and financial statements 2022-2023'),
(11, 10, 'Document', 'Petition filed with constitutional bench'),
(12, 11, 'Forensic Report', 'Forensic lab analysis report'),
(13, 12, 'Photograph', 'Photographic evidence of damage claimed'),
(14, 13, 'Document', 'Registry documents and sale deed'),
(15, 14, 'Audio Recording', 'Phone call recording as evidence'),
(16, 15, 'Document', 'Board meeting minutes and shareholder agreement'),
(17, 16, 'Document', 'Salary slips and attendance records'),
(18, 17, 'CCTV Footage', 'ATM camera footage'),
(19, 18, 'Financial Record', 'Bank statements and tax notices'),
(20, 19, 'Document', 'Child custody agreement and medical records'),
(21, 20, 'Photograph', 'Site photographs showing encroachment'),
(22, 21, 'Document', 'Lease agreement and rent receipts'),
(23, 22, 'Witness Statement', 'Bystander written testimony'),
(24, 23, 'Contract', 'Partnership deed and dissolution notice'),
(25, 24, 'Document', 'HR policy documents and grievance letters'),
(26, 25, 'Document', 'Constitutional petition and supporting affidavits');

-- --------------------------------------------------------

--
-- Table structure for table `Lawyer`
--

CREATE TABLE `Lawyer` (
  `LawyerID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Firm` varchar(100) DEFAULT NULL,
  `Specialization` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Lawyer`
--

INSERT INTO `Lawyer` (`LawyerID`, `Name`, `Firm`, `Specialization`, `Email`, `PhoneNumber`) VALUES
(1, 'Adv. Asif Raza', 'Raza & Associates', 'Criminal Law', 'asif.raza@law.pk', '0300-9876542'),
(2, 'Adv. Nadia Shah', 'Shah Legal Firm', 'Family Law', 'nadia.shah@law.pk', '0311-8765432'),
(3, 'Adv. Omar Farooq', 'Farooq Partners', 'Corporate Law', 'omar.farooq@law.pk', '0321-7654321'),
(4, 'Adv. Sobia Mirza', 'Mirza Law Chamber', 'Civil Law', 'sobia.mirza@law.pk', '0333-6543210'),
(5, 'Adv. Khalid Awan', 'Awan & Co.', 'Property Law', 'khalid.awan@law.pk', '0345-5432109'),
(6, 'Adv. Fareeha Bano', 'Bano Legal', 'Labour Law', 'fareeha.bano@law.pk', '0301-4321098'),
(7, 'Adv. Tariq Zaman', 'Zaman Associates', 'Criminal Law', 'tariq.zaman@law.pk', '0312-3210987'),
(8, 'Adv. Huma Rashid', 'Rashid Law Firm', 'Family Law', 'huma.rashid@law.pk', '0322-2109876'),
(9, 'Adv. Junaid Malik', 'Malik & Partners', 'Tax Law', 'junaid.malik@law.pk', '0334-1098765'),
(10, 'Adv. Saima Qazi', 'Qazi Legal House', 'Constitutional Law', 'saima.qazi@law.pk', '0346-0987654');

-- --------------------------------------------------------

--
-- Table structure for table `Witness`
--

CREATE TABLE `Witness` (
  `WitnessID` int(11) NOT NULL,
  `CaseID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Contact` varchar(100) DEFAULT NULL,
  `EvidenceID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Witness`
--

INSERT INTO `Witness` (`WitnessID`, `CaseID`, `Name`, `Contact`, `EvidenceID`) VALUES
(1, 1, 'Nasir Mahmood', '0300-1112222', 1),
(2, 1, 'Shafiq Ahmed', '0311-2223333', 2),
(3, 2, 'Parveen Bibi', '0321-3334444', 3),
(4, 3, 'Arshad Karim', '0333-4445555', 4),
(5, 4, 'Gulshan Nawaz', '0345-5556666', 5),
(6, 5, 'Rehmat Ullah', '0301-6667777', 6),
(7, 7, 'Zubair Hassan', '0312-7778888', 7),
(8, 8, 'Rubina Kausar', '0322-8889999', 8),
(9, 10, 'Pervez Musharaf', '0334-9990000', 10),
(10, 12, 'Tahir Abbas', '0346-0001111', 12),
(11, 15, 'Shaheen Akhtar', '0302-1112223', 15),
(12, 17, 'Muneer Baig', '0313-2223334', 17),
(13, 20, 'Sajida Parveen', '0323-3334445', 20),
(14, 22, 'Ijaz Hussain', '0335-4445556', 22),
(15, 24, 'Bushra Nawaz', '0347-5556667', 24);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CaseInfo`
--
ALTER TABLE `CaseInfo`
  ADD PRIMARY KEY (`CaseID`),
  ADD KEY `ClientID` (`ClientID`),
  ADD KEY `LawyerID` (`LawyerID`);

--
-- Indexes for table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`ClientID`);

--
-- Indexes for table `CourtHearing`
--
ALTER TABLE `CourtHearing`
  ADD PRIMARY KEY (`HearingID`),
  ADD KEY `CaseID` (`CaseID`);

--
-- Indexes for table `Evidence`
--
ALTER TABLE `Evidence`
  ADD PRIMARY KEY (`EvidenceID`),
  ADD KEY `CaseID` (`CaseID`);

--
-- Indexes for table `Lawyer`
--
ALTER TABLE `Lawyer`
  ADD PRIMARY KEY (`LawyerID`);

--
-- Indexes for table `Witness`
--
ALTER TABLE `Witness`
  ADD PRIMARY KEY (`WitnessID`),
  ADD KEY `CaseID` (`CaseID`),
  ADD KEY `EvidenceID` (`EvidenceID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CaseInfo`
--
ALTER TABLE `CaseInfo`
  MODIFY `CaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `Client`
--
ALTER TABLE `Client`
  MODIFY `ClientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `CourtHearing`
--
ALTER TABLE `CourtHearing`
  MODIFY `HearingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `Evidence`
--
ALTER TABLE `Evidence`
  MODIFY `EvidenceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `Lawyer`
--
ALTER TABLE `Lawyer`
  MODIFY `LawyerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Witness`
--
ALTER TABLE `Witness`
  MODIFY `WitnessID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
