package sa.team6.termp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import sa.team6.termp.entity.Users;

public interface UserRepository extends JpaRepository<Users, String> {
    Users findByUserID(String userID);
}
