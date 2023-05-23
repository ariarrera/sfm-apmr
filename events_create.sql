CREATE TABLE `events` (
  `eventId` int NOT NULL,
  `eventName` varchar(255) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `isOnline` tinyint NOT NULL,
  `restrictPublication` tinyint NOT NULL,
  `place` varchar(100) DEFAULT NULL,
  `meetingLink` text,
  `agenda` varchar(255) NOT NULL,
  `description` varchar(2400) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `creatorId` int DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`eventId`),
  UNIQUE KEY `eventId_UNIQUE` (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci