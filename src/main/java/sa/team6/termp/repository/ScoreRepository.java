package sa.team6.termp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import sa.team6.termp.entity.Score;

import java.util.Optional;

public interface ScoreRepository extends JpaRepository<Score, String> {
    Optional<Score> findByRecordID(String recordID);
}
