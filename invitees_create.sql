CREATE TABLE `invitees` (
  `id` int NOT NULL,
  `eventId` int NOT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invited_to_idx` (`eventId`),
  KEY `invited_is_idx` (`userId`),
  CONSTRAINT `invited_is` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  CONSTRAINT `invited_to` FOREIGN KEY (`eventId`) REFERENCES `events` (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci