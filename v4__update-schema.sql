-- 기존 테이블 삭제
DROP TABLE IF EXISTS Compatibility;
DROP TABLE IF EXISTS Records;

-- Records 테이블 생성
CREATE TABLE Records (
recordID varchar(30) PRIMARY KEY,
scheduleID varchar(30),
away_score text,
home_score text,
away_records text,
home_records text,
game_records text,
away_pitchers text,
home_pitchers text
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

-- Compatibility 테이블 생성
CREATE TABLE Compatibility (
compatibilityID varchar(50) PRIMARY KEY,
userID varchar(20),
player_name varchar(20),
win_cnt int,
draw_cnt int,
loss_cnt int,
match_cnt int,
win_rates float,
draw_rates float,
loss_rates float
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;_ai_ci;