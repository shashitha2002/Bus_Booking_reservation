CREATE TABLE `admin` (
  `adminId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `NIC` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `bus_owner` (
  `bus_owner_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `NIC` varchar(10) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`bus_owner_id`),
  UNIQUE KEY `NIC_UNIQUE` (`NIC`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `complainsresponds` (
  `comId` int NOT NULL AUTO_INCREMENT,
  `pasId` int DEFAULT NULL,
  `complain` varchar(100) DEFAULT NULL,
  `respond` varchar(100) DEFAULT 'Sill not answered',
  PRIMARY KEY (`comId`),
  KEY `pas_id_idx` (`pasId`),
  CONSTRAINT `pasId` FOREIGN KEY (`pasId`) REFERENCES `passenger` (`pas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `passenger` (
  `pas_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `NIC` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`pas_id`),
  UNIQUE KEY `NIC_UNIQUE` (`NIC`),
  UNIQUE KEY `emal_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `manager` (
  `mId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `NIC` varchar(20) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tickets` (
  `ticket_no` int NOT NULL AUTO_INCREMENT,
  `date` varchar(10) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `start` varchar(45) DEFAULT NULL,
  `destination` varchar(45) DEFAULT NULL,
  `seatNo` varchar(45) DEFAULT NULL,
  `pas_id` int DEFAULT NULL,
  PRIMARY KEY (`ticket_no`),
  KEY `pas_id_idx` (`pas_id`),
  CONSTRAINT `` FOREIGN KEY (`pas_id`) REFERENCES `passenger` (`pas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `payment` (
  `card_id` int NOT NULL AUTO_INCREMENT,
  `card_number` varchar(45) DEFAULT NULL,
  `ex_month` char(2) NOT NULL,
  `ex_year` char(2) NOT NULL,
  `CVC` char(3) NOT NULL,
  `Bank` varchar(20) DEFAULT NULL,
  `pas_id` int DEFAULT NULL,
  PRIMARY KEY (`card_id`),
  UNIQUE KEY `card_number_UNIQUE` (`card_number`),
  KEY `pas_id_idx` (`pas_id`),
  CONSTRAINT `pas_id` FOREIGN KEY (`pas_id`) REFERENCES `passenger` (`pas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `travel` (
  `travel_id` int NOT NULL AUTO_INCREMENT,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `departure` varchar(25) DEFAULT NULL,
  `destination` varchar(25) DEFAULT NULL,
  `turns` varchar(10) DEFAULT NULL,
  `driverName` varchar(45) DEFAULT NULL,
  `busNo` int DEFAULT NULL,
  PRIMARY KEY (`travel_id`),
  KEY `busNo_idx` (`busNo`),
  CONSTRAINT `busNo` FOREIGN KEY (`busNo`) REFERENCES `vehicle` (`vNo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `vehicle` (
  `vNo` int NOT NULL AUTO_INCREMENT,
  `vehicle_Reg_No` varchar(10) NOT NULL,
  `chassisNo` varchar(45) DEFAULT NULL,
  `bus_owner_id` int DEFAULT NULL,
  PRIMARY KEY (`vNo`),
  UNIQUE KEY `vehicle_Reg_No_UNIQUE` (`vehicle_Reg_No`),
  KEY `bus_owner_id_idx` (`bus_owner_id`),
  CONSTRAINT `bus_owner_id` FOREIGN KEY (`bus_owner_id`) REFERENCES `bus_owner` (`bus_owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

