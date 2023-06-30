package pd.workshop.singlesignonassignment.controller;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import pd.workshop.singlesignonassignment.config.AppUserRole;
import pd.workshop.singlesignonassignment.entity.User;
import pd.workshop.singlesignonassignment.repository.IUserRepository;
import pd.workshop.singlesignonassignment.service.AuthServiceImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller()
@SessionAttributes("loggedInUser")
@RequestMapping("/api/v1")
public class AuthenticationController {

    @Autowired
    private IUserRepository userRepository;

    @Autowired
    private AuthServiceImpl authService;

    @Autowired
    private PasswordEncoder passwordEncoder;



    @GetMapping("/welcome")
    public String showWelcomePage(@ModelAttribute("user") User user) {

        return "index";
    }
    @GetMapping("/register")
    public String showRegisterForm(@ModelAttribute("user") User user) {
        return "registerform";
    }


    @PostMapping(value = "/processRegister")
    public String registerUser(@ModelAttribute("user") User user) {
        if (user.getUsername() != null && user.getPassword() != null) {
            String encodedPassword = passwordEncoder.encode(user.getPassword());
            user.setPassword(encodedPassword);
            user.setRole(AppUserRole.USER);
            userRepository.save(user);
        }
        return "redirect:/api/v1/login?role=user";
    }
@GetMapping("/login")
public String showLoginForm(Model model, @RequestParam("role") String role, HttpSession session) {
    model.addAttribute("loginForm", new User());
    session.setAttribute("role", role);

    return "loginForm";
}

    @PostMapping("/processLogin")
    public ModelAndView processLoginForm(@ModelAttribute("loginForm") User user, HttpSession session) {
        String role = (String) session.getAttribute("role");
        user.setRole(getUserRole(role));

        User validUser = authService.findUserByUsername(user.getUsername());

        AppUserRole roles = AppUserRole.valueOf(validUser.getRole().toString());

        if (validUser != null && roles.equals(user.getRole()) ) {

            String storedEncodedPassword = validUser.getPassword();
            boolean isPasswordValid = passwordEncoder.matches(user.getPassword(), storedEncodedPassword);

            if (isPasswordValid) {
                session.setAttribute("loggedInUser", validUser);
                return new ModelAndView("redirect:/api/v1/success");
            }
        }

        ModelAndView modelAndView = new ModelAndView("loginForm");
        modelAndView.addObject("loginForm", user);
        modelAndView.addObject("error", "Invalid username or password");
        return modelAndView;
    }

    private AppUserRole getUserRole(String role) {

        switch (role) {
            case "admin":
                return AppUserRole.ADMIN;
            case "employee":
                return AppUserRole.EMPLOYEE;
            default:
                return AppUserRole.USER;
        }
    }


    @GetMapping("/success")
    public String showSuccessPage() {
        return "success";
    }


}

