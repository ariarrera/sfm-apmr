CREATE TABLE `attendees` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `eventId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId_idx` (`userId`),
  KEY `eventId_idx` (`eventId`),
  CONSTRAINT `attendee` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  CONSTRAINT `event` FOREIGN KEY (`eventId`) REFERENCES `events` (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci