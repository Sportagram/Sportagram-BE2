package sa.team6.termp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import sa.team6.termp.entity.Rate;

public interface RatesRepository extends JpaRepository<Rate, Integer> {
    Rate findByUserID(String userID);
}
