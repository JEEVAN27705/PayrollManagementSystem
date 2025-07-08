SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";




CREATE TABLE `wy_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_code` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `wy_admin` (`admin_id`, `admin_code`, `admin_name`, `admin_email`, `admin_password`, `admin_time`) VALUES
(1, 'WY00', 'Admin', 'admin@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2019-04-18 02:22:37');

CREATE TABLE `wy_attendance` (
  `attendance_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `attendance_date` date NOT NULL,
  `action_name` enum('punchin','punchout') NOT NULL,
  `action_time` time NOT NULL,
  `emp_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `wy_attendance` (`attendance_id`, `emp_code`, `attendance_date`, `action_name`, `action_time`, `emp_desc`) VALUES
(2, 'WY01', '2021-04-13', 'punchin', '10:41:27', '21'),
(3, 'WY01', '2021-04-13', 'punchout', '17:37:36', '220'),
(4, 'WY02', '2021-04-14', 'punchin', '15:05:42', 'D114'),
(5, 'WY02', '2021-04-14', 'punchout', '22:19:14', 'out-144'),
(6, 'WY03', '2021-04-14', 'punchin', '10:30:30', 'IN'),
(7, 'WY03', '2021-04-14', 'punchout', '17:30:52', 'OUT'),
(8, 'WY04', '2021-04-14', 'punchin', '10:00:59', 'IS1'),
(9, 'WY04', '2021-04-14', 'punchout', '14:31:27', 'IS1'),
(10, 'WY05', '2021-04-14', 'punchin', '19:11:29', 'In'),
(11, 'WY05', '2021-04-14', 'punchout', '19:13:02', 'Outt');



CREATE TABLE `wy_employees` (
  `emp_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `emp_password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL DEFAULT 'male',
  `merital_status` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `identity_doc` varchar(255) NOT NULL,
  `identity_no` varchar(255) NOT NULL,
  `emp_type` varchar(255) NOT NULL,
  `joining_date` varchar(255) NOT NULL,
  `blood_group` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `pan_no` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `pf_account` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `wy_employees` (`emp_id`, `emp_code`, `emp_password`, `first_name`, `last_name`, `dob`, `gender`, `merital_status`, `nationality`, `address`, `city`, `state`, `country`, `email`, `mobile`, `telephone`, `identity_doc`, `identity_no`, `emp_type`, `joining_date`, `blood_group`, `photo`, `designation`, `department`, `pan_no`, `bank_name`, `account_no`, `ifsc_code`, `pf_account`, `created`) VALUES
(6, 'WY01', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Jeevan', 'Patil', '1995-01-04', 'male', 'Single', 'Indian', 'Flat 302, Blue Ridge Society, Hinjewadi', 'Pune', 'Maharashtra', 'India', 'jeevan.patil@email.com', '9876543210', '02012345678', 'Aadhar', '1234-5678-9012', 'Permanent', '2019-01-29', 'B+', 'WY01.jpg', 'Software Developer', 'IT', 'ABCDE1234F', 'State Bank of India', '123456789012', 'SBIN0000456', 'SBI12345678', '2021-04-12 13:54:49'),
(7, 'WY02', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Rohan', 'Deshmukh', '1993-04-01', 'male', 'Married', 'Indian', 'Bungalow No 7, Prabhat Road, Deccan', 'Pune', 'Maharashtra', 'India', 'rohan.deshmukh@email.com', '9865001122', '02040055666', 'Aadhar', '2345-6789-0123', 'Permanent', '2020-04-01', 'AB+', 'WY02.jpg', 'Marketing Head', 'Marketing', 'BCDEA5678G', 'HDFC Bank', '456789123456', 'HDFC0001234', 'HDFC789654', '2021-04-14 13:18:32'),
(8, 'WY03', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Priya', 'Sharma', '1995-04-20', 'female', 'Single', 'Indian', 'Row House 8, Magarpatta City', 'Pune', 'Maharashtra', 'India', 'priya.sharma@email.com', '9823003344', '02021234567', 'Aadhar', '3456-7890-1234', 'Part-time', '2021-04-01', 'A+', 'WY03.jpg', 'Assistant Manager', 'HR', 'CDEFG1234H', 'ICICI Bank', '789456123012', 'ICIC0000123', 'ICICI654321', '2021-04-14 14:23:30'),
(9, 'WY04', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Amit', 'Kulkarni', '1992-12-10', 'male', 'Single', 'Indian', '303, Green Park Apartments, Baner', 'Pune', 'Maharashtra', 'India', 'amit.kulkarni@email.com', '9850011223', '02033008877', 'Aadhar', '4567-8901-2345', 'Intern', '2021-04-14', 'O+', 'WY04.jpg', 'Intern', 'Engineering', 'DEFGH1234J', 'Bank of Maharashtra', '369852147012', 'MAHB0000333', 'BOM123987', '2021-04-14 15:49:34');


CREATE TABLE `wy_holidays` (
  `holiday_id` int(11) NOT NULL,
  `holiday_title` varchar(255) NOT NULL,
  `holiday_desc` varchar(255) NOT NULL,
  `holiday_date` varchar(50) NOT NULL,
  `holiday_type` enum('compulsory','restricted') NOT NULL DEFAULT 'compulsory'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `wy_holidays` (`holiday_id`, `holiday_title`, `holiday_desc`, `holiday_date`, `holiday_type`) VALUES
(1, 'Republic Day', 'Republic Day 2025', '01/26/2025', 'compulsory'),
(2, 'Holi', 'Festival of Colors - Holi 2025', '03/14/2025', 'restricted'),
(3, 'Good Friday', 'Good Friday 2025', '04/18/2025', 'compulsory'),
(4, 'Mahavir Jayanti', 'Mahavir Jayanti 2025', '04/10/2025', 'restricted'),
(5, 'Eid al-Fitr', 'Ramzan Eid (Eid al-Fitr) 2025', '03/31/2025', 'compulsory'),
(6, 'Independence Day', 'Independence Day 2025', '08/15/2025', 'compulsory'),
(7, 'Raksha Bandhan', 'Raksha Bandhan 2025', '08/08/2025', 'restricted'),
(8, 'Ganesh Chaturthi', 'Ganesh Chaturthi 2025', '08/27/2025', 'compulsory'),
(9, 'Gandhi Jayanti', 'Gandhi Jayanti 2025', '10/02/2025', 'compulsory'),
(10, 'Dussehra', 'Vijayadashami / Dussehra 2025', '10/02/2025', 'restricted'),
(11, 'Diwali', 'Diwali (Laxmi Pujan) 2025', '10/20/2025', 'compulsory'),
(12, 'Bhai Dooj', 'Bhai Dooj 2025', '10/22/2025', 'restricted'),
(13, 'Christmas Day', 'Christmas Day 2025', '12/25/2025', 'compulsory'),
(14, 'New Year', 'New Year 2026', '01/01/2026', 'restricted');


CREATE TABLE `wy_leaves` (
  `leave_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `leave_subject` varchar(255) NOT NULL,
  `leave_dates` varchar(255) NOT NULL,
  `leave_message` longtext NOT NULL,
  `leave_type` varchar(255) NOT NULL,
  `leave_status` enum('pending','approve','reject') NOT NULL DEFAULT 'pending',
  `apply_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `wy_leaves` (`leave_id`, `emp_code`, `leave_subject`, `leave_dates`, `leave_message`, `leave_type`, `leave_status`, `apply_date`) VALUES
(1, 'WY01', 'Requesting for leave days', '04/13/2021', 'this is a demo leave message', 'Sick Leave', 'approve', '2021-04-13 10:09:02'),
(3, 'WY03', 'Leave for 2 days', '04/15/2021,04/17/2021', 'Dear admin, i\'d like to apply leave for 2 days as i\'ve been a regular employee since my first day at office. And now, i finally got to rest and spend some time with my family too!', 'Casual Leave', 'reject', '2021-04-14 15:47:06'),
(4, 'WY05', 'Leave for a week', '04/15/2021,04/23/2021', 'i wont be able to join office as i\'ve been suffering from a rough common cold and fever. so, i\'d like to request a leave for week', 'Sick Leave', 'approve', '2021-04-14 19:15:11');


CREATE TABLE `wy_payheads` (
  `payhead_id` int(11) NOT NULL,
  `payhead_name` varchar(255) NOT NULL,
  `payhead_desc` varchar(255) NOT NULL,
  `payhead_type` enum('earnings','deductions') NOT NULL DEFAULT 'earnings'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `wy_payheads` (`payhead_id`, `payhead_name`, `payhead_desc`, `payhead_type`) VALUES
(1, 'Basic Salary', 'Basic Salary', 'earnings'),
(2, 'Dearness Allowance', 'Dearness Allowance', 'deductions'),
(3, 'House Rent Allowance', 'House Rent Allowance', 'deductions'),
(4, 'Conveyance Allowance', 'Conveyance Allowance', 'deductions'),
(5, 'Medical Allowance', 'Medical Allowance', 'deductions'),
(7, 'Overtime', 'Overtime', 'earnings'),
(8, 'Traveling Expenses', 'Traveling Expenses', 'earnings'),
(9, 'Loans & Advance', 'Loans & Advance', 'earnings'),
(10, 'Other Allowance', 'Other Allowance', 'earnings'),
(11, 'Professional Tax', 'Professional Tax', 'deductions'),
(12, 'Income Tax', 'Income Tax', 'deductions'),
(13, 'Employee Provident Fund', 'Employee Provident Fund', 'deductions'),
(14, 'Loans & Advance', 'Loans & Advance', 'deductions'),
(15, 'Other Deductions', 'Other Deductions', 'deductions');


CREATE TABLE `wy_pay_structure` (
  `salary_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `payhead_id` int(11) NOT NULL,
  `default_salary` float(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wy_pay_structure`
--

INSERT INTO `wy_pay_structure` (`salary_id`, `emp_code`, `payhead_id`, `default_salary`) VALUES
(129, 'WY01', 1, 45000.00),
(130, 'WY01', 15, 5000.00),
(131, 'WY03', 7, 5500.00),
(132, 'WY03', 1, 21000.00),
(133, 'WY05', 1, 51500.00),
(134, 'WY05', 7, 6500.00),
(135, 'WY05', 12, 5510.00),
(136, 'WY04', 1, 39000.00),
(137, 'WY04', 7, 5600.00),
(138, 'WY04', 12, 4250.00),
(139, 'WY02', 1, 21000.00),
(140, 'WY02', 7, 6500.00);



CREATE TABLE `wy_salaries` (
  `salary_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `payhead_name` varchar(255) NOT NULL,
  `pay_amount` float(11,2) NOT NULL,
  `earning_total` float(11,2) NOT NULL,
  `deduction_total` float(11,2) NOT NULL,
  `net_salary` float(11,2) NOT NULL,
  `pay_type` enum('earnings','deductions') NOT NULL,
  `pay_month` varchar(255) NOT NULL,
  `generate_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wy_salaries`
--

INSERT INTO `wy_salaries` (`salary_id`, `emp_code`, `payhead_name`, `pay_amount`, `earning_total`, `deduction_total`, `net_salary`, `pay_type`, `pay_month`, `generate_date`) VALUES
(244, 'WY01', 'Basic Salary', 45000.00, 45000.00, 0.00, 45000.00, 'earnings', 'March, 2021', '2021-04-12 13:48:19'),
(245, 'WY03', 'Overtime', 5500.00, 39500.00, 0.00, 39500.00, 'earnings', 'March, 2021', '2021-04-14 16:09:02'),
(246, 'WY03', 'Basic Salary', 34000.00, 39500.00, 0.00, 39500.00, 'earnings', 'March, 2021', '2021-04-14 16:09:02'),
(247, 'WY05', 'Basic Salary', 51500.00, 58000.00, 5510.00, 52490.00, 'earnings', 'April, 2021', '2021-04-14 19:17:13'),
(248, 'WY05', 'Overtime', 6500.00, 58000.00, 5510.00, 52490.00, 'earnings', 'April, 2021', '2021-04-14 19:17:13'),
(249, 'WY05', 'Income Tax', 5510.00, 58000.00, 5510.00, 52490.00, 'deductions', 'April, 2021', '2021-04-14 19:17:14'),
(250, 'WY04', 'Basic Salary', 39000.00, 44600.00, 4250.00, 40350.00, 'earnings', 'April, 2021', '2021-04-14 19:22:25'),
(251, 'WY04', 'Overtime', 5600.00, 44600.00, 4250.00, 40350.00, 'earnings', 'April, 2021', '2021-04-14 19:22:25'),
(252, 'WY04', 'Income Tax', 4250.00, 44600.00, 4250.00, 40350.00, 'deductions', 'April, 2021', '2021-04-14 19:22:25');

ALTER TABLE `wy_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_email` (`admin_email`),
  ADD UNIQUE KEY `admin_code` (`admin_code`);

ALTER TABLE `wy_attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `emp_code` (`emp_code`);

ALTER TABLE `wy_employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `emp_code` (`emp_code`);

ALTER TABLE `wy_holidays`
  ADD PRIMARY KEY (`holiday_id`);

ALTER TABLE `wy_leaves`
  ADD PRIMARY KEY (`leave_id`);

ALTER TABLE `wy_payheads`
  ADD PRIMARY KEY (`payhead_id`);

ALTER TABLE `wy_pay_structure`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `emp_code` (`emp_code`),
  ADD KEY `payhead_id` (`payhead_id`);

ALTER TABLE `wy_salaries`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `emp_code` (`emp_code`);

ALTER TABLE `wy_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `wy_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `wy_employees`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `wy_holidays`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `wy_leaves`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `wy_payheads`
  MODIFY `payhead_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

ALTER TABLE `wy_pay_structure`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

ALTER TABLE `wy_salaries`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
