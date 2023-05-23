CREATE TABLE `users` (
  `userId` int NOT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `firstName` varchar(100) NOT NULL,
  `middleName` varchar(100) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `organization` varchar(500) NOT NULL,
  `organizationEmail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userId_UNIQUE` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci