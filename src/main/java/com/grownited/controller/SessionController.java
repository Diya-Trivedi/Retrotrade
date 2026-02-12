package com.grownited.controller;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserDetailEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserDetailRepository;
import com.grownited.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class SessionController {
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	UserDetailRepository userDetailRepository;
	
	
	@GetMapping("/signup")
	public String openSignupPage()
	{
		return "Signup"; //jsp name
	}
	@GetMapping("/login")
	public String openLoginPage()
	{
		return "Login";
	}
	@GetMapping("/forgetpassword")
	public String openForgetPassword()
	{
		return "ForgetPassword";
	}
	
	
	@PostMapping("/login")
    public String loginProcess(
            UserEntity userEntity,
            HttpSession session) {

        UserEntity dbUser =
                userRepository.findByEmailAndPassword(
                        userEntity.getEmail(),
                        userEntity.getPassword());

        if (dbUser == null) {
            return "Login"; // invalid login
        }

        session.setAttribute("user", dbUser);
        session.setAttribute("userId", dbUser.getUserId());
        session.setAttribute("role", dbUser.getRole());

        return "redirect:/dashboard";
    }
	
	//@GetMapping("/dashboard")
    //public String openDashboard(HttpSession session) {

        //return "Dashboard"; // dashboard.jsp
    //}

    //✅ LOGOUT
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }

	@PostMapping("/register")
	public String register(UserEntity userEntity,UserDetailEntity userDetailEntity )
	{
		System.out.println(userEntity.getFirstName());
		System.out.println(userEntity.getLastName());
		System.out.println("processor => "+Runtime.getRuntime().availableProcessors());
		System.out.println(userDetailEntity.getCountry());
		System.out.println(userDetailEntity.getState());
		
		
		userEntity.setRole("BUYER");
		userEntity.setActive(true);
		userEntity.setCreatedAt(LocalDateTime.now());
		
		//users insert -> UserRepository
		// new -> x
		
		userRepository.save(userEntity);
		userDetailEntity.setUserId(userEntity.getUserId());//users insert  -> userId 
		userDetailRepository.save(userDetailEntity);//
		return "Login";
	}
	

}
