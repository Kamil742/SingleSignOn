package pd.workshop.singlesignonassignment;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan({"pd.workshop.singlesignonassignment.controller", "pd.workshop.singlesignonassignment"})
@SpringBootApplication
public class SingleSignOnApplication {

	public static void main(String[] args) {

		SpringApplication.run(SingleSignOnApplication.class, args);
	}

}
