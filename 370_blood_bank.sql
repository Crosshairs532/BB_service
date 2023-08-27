-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2023 at 07:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `370_blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_name` varchar(32) NOT NULL,
  `admin_email` varchar(50) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_name`, `admin_email`, `pass`) VALUES
('super_admin', 'admin@gmail.com', '370_summer23');

-- --------------------------------------------------------

--
-- Table structure for table `blood_requests`
--

CREATE TABLE `blood_requests` (
  `request_id` int(11) NOT NULL,
  `request_by` varchar(32) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(120) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `quantity` int(11) NOT NULL,
  `hospital_unit` varchar(255) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `date_needed` date NOT NULL,
  `contact` varchar(255) NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood_requests`
--

INSERT INTO `blood_requests` (`request_id`, `request_by`, `name`, `age`, `blood_group`, `quantity`, `hospital_unit`, `hospital_name`, `date_needed`, `contact`, `reason`) VALUES
(11, 'xordan77', 'Dipto Das', 21, 'A+', 2, 'ICU', 'Bangladesh Medical', '2023-08-23', '01792652047', 'Critical operation will be conducted.'),
(12, 'xordan77', 'Samsul Arefin', 22, 'A+', 1, 'ICU', 'Popular Hospital', '2023-08-29', '01792652047', 'Wounded.'),
(13, 'xordan77', 'Rifat Hasan', 42, 'A+', 1, 'SCU', 'Bangladesh Medical', '2023-08-29', '01792652047', 'Organ transplant.');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `campaign_id` int(11) NOT NULL,
  `venue` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`campaign_id`, `venue`, `start_date`, `end_date`) VALUES
(1, 'Kurmitola General Hospital', '2023-07-15', '2023-07-21'),
(2, 'United Hospital', '2023-07-01', '2023-07-07'),
(3, 'Bangabandhu Sheikh Mujib Medical University', '2023-08-01', '2023-08-07'),
(4, 'Holy Family Hospital', '2023-08-15', '2023-08-21'),
(5, 'Square Hospital', '2023-09-01', '2023-09-07'),
(6, 'Mugda Medical College', '2023-08-24', '2023-08-31'),
(7, 'Medinova Medical', '2023-08-26', '2023-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `donor_list`
--

CREATE TABLE `donor_list` (
  `username` varchar(32) NOT NULL,
  `previous_donation` date DEFAULT NULL,
  `approver_hospital` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donor_list`
--

INSERT INTO `donor_list` (`username`, `previous_donation`, `approver_hospital`) VALUES
('naser', '1970-01-01', 'Evercare Hospital'),
('samsu', '2023-06-07', 'United Hospital'),
('test2', '2023-08-02', 'Apollo Hospital'),
('test3', '2023-08-15', 'Holy Family Hospital'),
('test5', '1970-01-01', 'Apollo Hospital'),
('test6', '1970-01-01', 'Uttara Adhunik Medical'),
('test7', '1970-01-01', 'Apollo Hospital'),
('xordan77', '2023-08-01', 'United Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `report_box`
--

CREATE TABLE `report_box` (
  `report_no` int(11) NOT NULL,
  `reported_by` varchar(32) DEFAULT NULL,
  `donor_contact` varchar(255) DEFAULT NULL,
  `report_box` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report_box`
--

INSERT INTO `report_box` (`report_no`, `reported_by`, `donor_contact`, `report_box`) VALUES
(2, 'xordan77', '154225505', 'Did not show up to donate!'),
(3, 'test1', '01118714253', 'Did not show up to donate.'),
(4, 'xordan77', '01688914523', 'Did not show up to donate.');

-- --------------------------------------------------------

--
-- Table structure for table `trusted_hospitals`
--

CREATE TABLE `trusted_hospitals` (
  `hospital_name` varchar(50) NOT NULL,
  `hospital_mail` varchar(100) DEFAULT NULL,
  `hotline` varchar(15) DEFAULT NULL,
  `location` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trusted_hospitals`
--

INSERT INTO `trusted_hospitals` (`hospital_name`, `hospital_mail`, `hotline`, `location`) VALUES
('Ad-Din Medical', 'info@adm.com', '9996664555', 'https://goo.gl/maps/6xxYz6H4JRiHzfnH6'),
('Bangabandhu Sheikh Mujib Medical University', 'info@bsmmu.edu.bd', '9876543210', 'https://goo.gl/maps/pEUYAcs7Woqa2hVV6'),
('Bangladesh Medical', 'info@bangladeshmedical.com', '9990001111', 'https://goo.gl/maps/Zu56gRqNhUUDGjUk8'),
('Combined Military Hospital', 'info@cmh.gov.bd', '6667778888', 'https://goo.gl/maps/sr3do8nGTiNds4yn7'),
('Dhaka Medical College', 'info@dmch.gov.bd', '1234567890', 'https://goo.gl/maps/GpDgssPHTrfkyVEf7'),
('Evercare Hospital', 'info@centralhospitalltd.com', '1110009999', 'https://goo.gl/maps/bvKHccRj7oMMfhfD9'),
('Holy Family Hospital', 'info@hfrcmc.edu.bd', '3332221111', 'https://goo.gl/maps/bvcJ7s5yrrYaZqWN9'),
('Ibn Sina Hospital', 'info@ibnsinatrust.com', '2223334444', 'https://goo.gl/maps/bvcJ7s5yrrYaZqWN9'),
('Kurmitola General Hospital', 'info@kghonline.com', '5556667777', 'https://goo.gl/maps/VtexNjUttmGe92VG9'),
('Labaid Hospital', 'info@labaidgroup.com', '5554443333', 'https://goo.gl/maps/PapzejF1NzqfManM8'),
('Medinova Medical', 'info@mm.com', '7778889944', 'https://goo.gl/maps/MauBWiCEGaZ5zLzY6'),
('Mugda Medical College', 'info@mugdamch.gov.bd', '8887776666', 'https://goo.gl/maps/14G4BKDP9znydKiW7'),
('Popular Medical College and Hospital', 'info@pmch-bd.org', '8889990000', 'https://goo.gl/maps/zaENQdB8esShrtWC8'),
('Shahabuddin Medical College', 'info@shahabuddinmedical.org', '3334445555', 'https://goo.gl/maps/w68rEZfwwEvKCzNT9'),
('Square Hospital', 'info@squarehospital.com', '1112223333', 'https://goo.gl/maps/NgDsDBFS7KY3d6RB9'),
('United Hospital', 'info@uhlbd.com', '7778889999', 'https://goo.gl/maps/PvzkyavYTAytkvmz9'),
('Uttara Adhunik Medical', 'info@uam.edu.bd', '444466331', 'https://goo.gl/maps/cq8kRZcsBmkNdK856');

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE `user_list` (
  `username` varchar(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `age` int(120) DEFAULT NULL,
  `blood_group` varchar(3) DEFAULT NULL,
  `NID` varchar(13) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `police_station` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user_list` (`username`, `name`, `contact`, `email`, `pass`, `age`, `blood_group`, `NID`, `gender`, `police_station`, `city`) VALUES
('irrelevant', 'Fardous Nayeem', '01796298321', 'irrelevant552@gmail.com', '$2y$10$UfofxSQ0j5rhQ7VO6WdOPuBk5bAcDZMAWOiUDHzplYn.i9I9z2eva', 21, 'O+', '1234659870', 'Male', 'Motijheel', 'Dhaka'),
('naser', 'Naser Al Noman', '01688914523', 'naser@gmail.com', '$2y$10$qJcuKRGjzcQJ7cc63f6adOV.eRGEkZHTmaMIfBG6TfB46RHecM7bu', 20, 'AB+', '97785444525', 'Male', 'Mirpur', 'Dhaka'),
('nawrin', 'Jannatul Nawrin', '01234567890', 'nawrin92@gmail.com', '$2y$10$CIeH/27WeeP7FFiDWbgDgemEz0ZNeC5sxiFdgCnpvwVDdxSWCKy5a', 21, 'O+', '9874563210', 'Female', 'Mohammadpur', 'Dhaka'),
('samsu', 'Samsul Arefin Tanzim', '0123215459', 'crosshair@gmail.com', '$2y$10$wKoqGWMI8b/8UpYATHQALuKvlV39V/vFr4cLA/ffaDrKivzbdHb6y', 21, 'AB+', '9714055256', 'Male', 'Mirpur', 'Dhaka'),
('test1', 'Tester', '154225505', 'test1@gmail.com', '$2y$10$YGCF.gnowaJ1NKsXHGWONOfQ/zPMUd4/wAlV7SvofpfSm4bo1URsG', 20, 'O+', '1520469458', 'Other', 'Gulshan', 'Dhaka'),
('test2', 'Tester', '180099501', 'test2@gmail.com', '$2y$10$GsXZyOecQc0Na6u2wmU45OlgDNwT1xQq57BHUmIz1sOVdSxNYzFtq', 21, 'O-', '1406985033', 'Other', 'Mohakhali', 'Dhaka'),
('test3', 'Tester', '1450569132', 'test3@gmail.com', '$2y$10$BeNgIBcnZUQptiLgcLBBnONeyz9pLAm6BJhOH1Q8o0Kum7NW.abZy', 22, 'AB+', '025601456980', 'Other', 'Badda', 'Dhaka'),
('test4', 'Tester', '01666565232', 'test4@gmail.com', '$2y$10$JkxxjUlTYqu3lQllKnexF.yQR/LyzyQ/XvEh0jJBKR01pIxgvvXvG', 25, 'B-', '2691578325', 'Other', 'Kurmitola', 'Dhaka'),
('test5', 'Tester', '01118714253', 'test5@gmail.com', '$2y$10$xCUTwth8nE6tJmgpd9asXeeWMMmY9w40TFxrwF7zUZaS1KtAa4a7C', 22, 'A+', '9874412563', 'Other', 'Bashundhara', 'Dhaka'),
('test6', 'Tester', '32145678900', 'test6@gmail.com', '$2y$10$19fncEdOAtoIGC20pgxt5e/XZbSmTJsxJQ5WEsxAfyApproyIM6IW', 37, 'O-', '8974562531', 'Other', 'Khilgaon', 'Dhaka'),
('test7', 'Tester', '01234567899', 'test7@gmail.com', '$2y$10$bAtz2LJYE0/SwJqD4KOlZuOzHZQIcug7evs9rJgAh3GrRFT/s8sMy', 25, 'AB+', '9987444525', 'Other', 'Mugda', 'Dhaka'),
('xordan77', 'Md. Monowarul Islam', '01792652047', 'xordan77@gmail.com', '$2y$10$ltXY.3GI0LThkm96R5yG5.Xyy26Aw0LSStsVPPN6/GqA37ALsGGIy', 21, 'O+', '9714055257', 'Male', 'Uttara', 'Dhaka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_name`);

--
-- Indexes for table `blood_requests`
--
ALTER TABLE `blood_requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `request_by` (`request_by`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`campaign_id`),
  ADD KEY `venue` (`venue`);

--
-- Indexes for table `donor_list`
--
ALTER TABLE `donor_list`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `report_box`
--
ALTER TABLE `report_box`
  ADD PRIMARY KEY (`report_no`),
  ADD KEY `donor_contact` (`donor_contact`),
  ADD KEY `report_box_ibfk_2` (`reported_by`);

--
-- Indexes for table `trusted_hospitals`
--
ALTER TABLE `trusted_hospitals`
  ADD PRIMARY KEY (`hospital_name`);

--
-- Indexes for table `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `contact` (`contact`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `NID` (`NID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_requests`
--
ALTER TABLE `blood_requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `campaign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `report_box`
--
ALTER TABLE `report_box`
  MODIFY `report_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blood_requests`
--
ALTER TABLE `blood_requests`
  ADD CONSTRAINT `blood_requests_ibfk_1` FOREIGN KEY (`request_by`) REFERENCES `user_list` (`username`) ON DELETE CASCADE;

--
-- Constraints for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD CONSTRAINT `campaigns_ibfk_1` FOREIGN KEY (`venue`) REFERENCES `trusted_hospitals` (`hospital_name`) ON DELETE CASCADE;

--
-- Constraints for table `donor_list`
--
ALTER TABLE `donor_list`
  ADD CONSTRAINT `donor_list_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user_list` (`username`) ON DELETE CASCADE;

--
-- Constraints for table `report_box`
--
ALTER TABLE `report_box`
  ADD CONSTRAINT `report_box_ibfk_1` FOREIGN KEY (`donor_contact`) REFERENCES `user_list` (`contact`),
  ADD CONSTRAINT `report_box_ibfk_2` FOREIGN KEY (`reported_by`) REFERENCES `user_list` (`username`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
