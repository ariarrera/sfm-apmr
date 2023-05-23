CREATE TABLE `materials` (
  `id` int NOT NULL,
  `eventId` int NOT NULL,
  `userId` int NOT NULL,
  `fileUri` text NOT NULL,
  `fileName` varchar(100) NOT NULL,
  `fileExtension` varchar(45) NOT NULL,
  `size_bytes` int NOT NULL,
  `path` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `eventId_idx` (`eventId`),
  KEY `userId_idx` (`userId`),
  CONSTRAINT `materialsEvent` FOREIGN KEY (`eventId`) REFERENCES `events` (`eventId`),
  CONSTRAINT `materialsUploader` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci