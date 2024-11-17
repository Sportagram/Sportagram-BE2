package sa.team6.termp;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import sa.team6.termp.entity.Team;
import sa.team6.termp.repository.TeamRepository;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/*
@SpringBootApplication
public class termpApplication implements CommandLineRunner {

    @Autowired
    private TeamRepository teamRepository;

    public static void main(String[] args) {
        SpringApplication.run(termpApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        // DB에서 모든 Team 데이터를 가져와서 콘솔에 출력
        List<Team> teams = teamRepository.findAll();
        for (Team team : teams) {
            System.out.println(team); // toString() 메소드에 의해 출력
        }
    }
}

 */
