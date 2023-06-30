package pd.workshop.singlesignonassignment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import pd.workshop.singlesignonassignment.config.AppUserRole;
import pd.workshop.singlesignonassignment.entity.User;
import pd.workshop.singlesignonassignment.repository.IUserRepository;

import java.security.Principal;

@Controller
public class GoogleSignController {

    @Autowired
    private IUserRepository userRepository;
    @GetMapping
    public String welcome() {
        return "success";
    }

    @PostMapping ("/user")
    public void user(Principal principal, User user) {
        if(principal.getName() != null )
            user.setUsername(principal.getName());
            user.setRole(AppUserRole.USER);
            userRepository.save(user);
    }
}
