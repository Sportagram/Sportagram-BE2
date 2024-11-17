package sa.team6.termp.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import sa.team6.termp.entity.Compatibility;

import java.util.List;
import java.util.Optional;

public interface CompatRepository extends JpaRepository<Compatibility, String> {
    Optional<Compatibility> findByPlayerNameAndUserID(String player_name, String userID);

    List<Compatibility> findByUserID(String userID);
}
