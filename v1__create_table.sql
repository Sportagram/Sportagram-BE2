CREATE TABLE `chat` (
   `chatID` varchar(30) NOT NULL,
   `community` varchar(20) DEFAULT NULL,
   `userID` varchar(20) DEFAULT NULL,
   `chat` text,
   `chat_time` datetime DEFAULT NULL,
   PRIMARY KEY (`chatID`),
   KEY `userID` (`userID`),
   CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `compatibility` (
   `CompatibilityID` int NOT NULL AUTO_INCREMENT,
   `userID` varchar(20) DEFAULT NULL,
   `player_name` varchar(20) DEFAULT NULL,
   `win_cnt` int DEFAULT NULL,
   `loss_cnt` int DEFAULT NULL,
   PRIMARY KEY (`CompatibilityID`),
   KEY `userID` (`userID`),
   CONSTRAINT `compatibility_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `diary` (
   `diaryID` int NOT NULL AUTO_INCREMENT,
   `userID` varchar(20) DEFAULT NULL,
   `scheduleID` varchar(30) DEFAULT NULL,
   `match_cnt` int DEFAULT NULL,
   `comments` text,
   `game_result` enum('승','무','패') DEFAULT NULL,
   PRIMARY KEY (`diaryID`),
   KEY `userID` (`userID`),
   KEY `scheduleID` (`scheduleID`),
   CONSTRAINT `diary_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`),
   CONSTRAINT `diary_ibfk_2` FOREIGN KEY (`scheduleID`) REFERENCES `schedules` (`scheduleid`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `news` (
   `newsID` int NOT NULL AUTO_INCREMENT,
   `teamID` varchar(20) DEFAULT NULL,
   `title` varchar(30) DEFAULT NULL,
   `content` text,
   `url` varchar(100) DEFAULT NULL,
   `newsDate` datetime DEFAULT NULL,
   PRIMARY KEY (`newsID`),
   KEY `teamID` (`teamID`),
   CONSTRAINT `news_ibfk_1` FOREIGN KEY (`teamID`) REFERENCES `team` (`teamID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `rates` (
   `ratesID` int NOT NULL AUTO_INCREMENT,
   `userID` varchar(20) DEFAULT NULL,
   `wins` int DEFAULT NULL,
   `loss` int DEFAULT NULL,
   `match_cnt` int DEFAULT NULL,
   `win_rates` float DEFAULT NULL,
   `loss_rates` float DEFAULT NULL,
   PRIMARY KEY (`ratesID`),
   KEY `userID` (`userID`),
   CONSTRAINT `rates_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `records` (
   `recordID` int NOT NULL AUTO_INCREMENT,
   `scheduleID` varchar(30) DEFAULT NULL,
   `away_score` varchar(255) DEFAULT NULL,
   `home_score` varchar(255) DEFAULT NULL,
   `away_records` varchar(255) DEFAULT NULL,
   `home_records` varchar(255) DEFAULT NULL,
   `game_records` varchar(255) DEFAULT NULL,
   `away_pitchers` longtext,
   `home_pitchers` longtext,
   PRIMARY KEY (`recordID`),
   KEY `scheduleID` (`scheduleID`),
   CONSTRAINT `records_ibfk_1` FOREIGN KEY (`scheduleID`) REFERENCES `schedules` (`scheduleid`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `schedules` (
   `scheduleid` varchar(255) NOT NULL,
   `teamID` varchar(20) DEFAULT NULL,
   `oppID` varchar(20) DEFAULT NULL,
   `stadium` varchar(255) NOT NULL,
   `match_date` datetime(6) NOT NULL,
   `match_status` varchar(255) DEFAULT NULL,
   `match_time` time(6) NOT NULL,
   `opp_score` int NOT NULL,
   `team_score` int NOT NULL,
   PRIMARY KEY (`scheduleid`),
   KEY `teamID` (`teamID`),
   KEY `oppID` (`oppID`),
   CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`teamID`) REFERENCES `team` (`teamID`),
   CONSTRAINT `schedules_ibfk_2` FOREIGN KEY (`oppID`) REFERENCES `team` (`teamID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `team` (
   `teamID` varchar(20) NOT NULL,
   `home_stadium` varchar(255) DEFAULT NULL,
   `team_name` varchar(255) DEFAULT NULL,
   `short_name` varchar(255) DEFAULT NULL,
   PRIMARY KEY (`teamID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `users` (
   `userID` varchar(20) NOT NULL,
   `userName` varchar(20) NOT NULL,
   `email` varchar(20) NOT NULL,
   `nick_name` varchar(20) NOT NULL,
   `my_team` varchar(20) NOT NULL,
   PRIMARY KEY (`userID`),
   UNIQUE KEY `nick_name` (`nick_name`),
   KEY `my_team` (`my_team`),
   CONSTRAINT `users_ibfk_1` FOREIGN KEY (`my_team`) REFERENCES `team` (`teamID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci