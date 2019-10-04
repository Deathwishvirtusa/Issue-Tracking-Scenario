CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(45) NOT NULL,
  `project_client` varchar(45) NOT NULL,
  `project_fromduration` varchar(45) NOT NULL,
  `project_toduration` varchar(45) NOT NULL,
  `issue_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`),
  KEY `issue_id_idx` (`issue_id`),
  CONSTRAINT `issue_id` FOREIGN KEY (`issue_id`) REFERENCES `issue` (`issue_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `user_phno` varchar(45) NOT NULL,
  `user_password` varchar(45) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `issue` (
  `issue_id` int(11) NOT NULL,
  `issue_date` varchar(45) NOT NULL,
  `issue_status` varchar(45) NOT NULL,
  `issue_desc` varchar(45) NOT NULL,
  `issue_type` varchar(45) NOT NULL,
  `dev_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  PRIMARY KEY (`issue_id`),
  KEY `dev_id_idx` (`dev_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `admin_id_idx` (`admin_id`),
  CONSTRAINT `admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dev_id` FOREIGN KEY (`dev_id`) REFERENCES `developer` (`dev_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `developer` (
  `dev_id` int(11) NOT NULL,
  `dev_name` varchar(45) NOT NULL,
  `dev_designation` varchar(45) NOT NULL,
  `dev_phno` varchar(45) NOT NULL,
  `dev_password` varchar(45) NOT NULL,
  `dev_email` varchar(45) NOT NULL,
  PRIMARY KEY (`dev_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
