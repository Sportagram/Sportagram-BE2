package sa.team6.termp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication(scanBasePackages = "sa.team6.termp")
public class SaTermpApplication {

	public static void main(String[] args) {

		SpringApplication.run(SaTermpApplication.class, args);
	}

}
