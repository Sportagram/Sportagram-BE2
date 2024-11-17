package sa.team6.termp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import sa.team6.termp.entity.Diary;

import java.util.List;
import java.util.Optional;

public interface DiaryRepository extends JpaRepository<Diary, Integer> {
    int countByUserID(String userID);

    @Query("SELECT d FROM Diary d WHERE d.userID = :userID")
    List<Diary> findDiariesByUserID(@Param("userID") String userID);

    @Query("SELECT d FROM Diary d WHERE d.userID = :userID AND d.scheduleID = :scheduleID")
    List<Diary> findDiaryByUserIDAndScheduleID(@Param("userID") String userID, @Param("scheduleID") String scheduleID);

    Optional<Diary> findByDiaryID(String diaryID);
}
