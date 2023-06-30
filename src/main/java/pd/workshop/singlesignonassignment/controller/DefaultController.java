package pd.workshop.singlesignonassignment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import pd.workshop.singlesignonassignment.config.AppUserRole;
import pd.workshop.singlesignonassignment.entity.User;
import pd.workshop.singlesignonassignment.repository.IUserRepository;

@Component
public class DefaultController implements CommandLineRunner {

    private final IUserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    @Autowired
    public DefaultController(IUserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public void run(String... args) {
        if (userRepository.count() == 0) {
            User adminUser = new User();
            adminUser.setUsername("Admin_Kamil");
            adminUser.setPassword(passwordEncoder.encode("admin123"));
            adminUser.setRole(AppUserRole.ADMIN);
            userRepository.save(adminUser);

            User employee1 = new User();
            employee1.setUsername("Ajith");
            employee1.setPassword(passwordEncoder.encode("password1"));
            employee1.setRole(AppUserRole.EMPLOYEE);
            userRepository.save(employee1);

            User employee2 = new User();
            employee2.setUsername("Midhun");
            employee2.setPassword(passwordEncoder.encode("password2"));
            employee2.setRole(AppUserRole.EMPLOYEE);
            userRepository.save(employee2);

            User employee3 = new User();
            employee3.setUsername("Arjun");
            employee3.setPassword(passwordEncoder.encode("password3"));
            employee3.setRole(AppUserRole.EMPLOYEE);
            userRepository.save(employee3);

        }
    }
}
