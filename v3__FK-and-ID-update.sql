-- 외래 키 제약 조건 삭제 (코드에서 삭제함)
ALTER TABLE records DROP FOREIGN KEY records_ibfk_1;

-- 기존 테이블 삭제
DROP TABLE IF EXISTS Diary;
DROP TABLE IF EXISTS Rates;

-- Diary 테이블 생성
CREATE TABLE Diary (
    diaryID varchar(50) PRIMARY KEY,
    userID varchar(20),
    scheduleID varchar(30),
    match_cnt int,
    comments text,
    game_result enum('승', '무', '패')
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

-- Rates 테이블 생성
CREATE TABLE Rates (
    ratesID varchar(30) PRIMARY KEY,
    userID varchar(20),
    wins int,
    loss int,
    draw int,
    match_cnt int,
    win_rates float,
    loss_rates float,
    draw_rates float
) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
