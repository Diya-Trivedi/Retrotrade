package com.grownited.controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.grownited.entity.UserDetailEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserDetailRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailerService;

import jakarta.servlet.http.HttpSession;


@Controller
public class SessionController {
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	UserDetailRepository userDetailRepository;
	
	@Autowired
	MailerService mailerService;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@Autowired
	Cloudinary cloudinary;
	
	
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
	
	@PostMapping("/authenticate")
	public String authenticate(String email,String password,Model model,HttpSession session) {
		Optional<UserEntity> op = userRepository.findByEmail(email);
		
		if (op.isPresent()) {
			UserEntity dbUser = op.get();
			session.setAttribute("user", dbUser);

			if (passwordEncoder.matches(password, dbUser.getPassword())) {

			
			//if(dbUser.getPassword().equals(password)) {
				if(dbUser.getRole().equals("ADMIN")) {
					return "redirect:/admin-dashboard"; //url
				}else if(dbUser.getRole().equals("BUYER")) {
					return "redirect:/buyer-dashboard"; //url
				}else if(dbUser.getRole().equals("SELLER")) {
					return "redirect:/seller-dashboard"; 
			    }
		   }
	   }
		model.addAttribute("error","Invalid Credentials");
		return "Login";
	}
	
	@GetMapping("/forgetpassword")
	public String openForgetPassword()
	{
		return "ForgetPassword";
	}
	
	
	@PostMapping("/resetPassword") // Triggered from forgetPassword.jsp
	public String resetPassword(String email, Model model) {
	    Optional<UserEntity> userOpt = userRepository.findByEmail(email);
 
	    
	    
	    
	    if (userOpt.isPresent()) {
	        UserEntity user = userOpt.get();
	        
	        // 1. Generate a 6-digit OTP
	        String otp = String.valueOf((int)((Math.random() * 900000) + 100000));
	        
	        // 2. Save OTP to Database
	        user.setOtp(otp);
	        userRepository.save(user);
	        
	        // 3. Send OTP via Email
	        mailerService.sendOtpMail(user.getEmail(), otp);
	        
	        model.addAttribute("success", "OTP sent to your email!");
	        model.addAttribute("email", email);
	        return "ResetPassword"; // Redirects to your verification page
	    } else {
	        model.addAttribute("error", "Email not found!");
	        return "forgetPassword";
	    }
	}

	@PostMapping("/update-password") // Triggered from resetpassword.jsp
	public String updatePassword(String email, String otp,String newPassword,String confirmPassword,Model model) {
	    
	    Optional<UserEntity> userOpt = userRepository.findByEmail(email);

	    if (userOpt.isPresent()) {
	        UserEntity user = userOpt.get();
	        
	        // 1. Check if OTP matches the database
	        if (user.getOtp() != null && user.getOtp().equals(otp)) {
	            
	            // 2. Check if passwords match
	            if (newPassword.equals(confirmPassword)) {
	            	String encodedPassword = passwordEncoder.encode(newPassword);
	        		System.out.println(encodedPassword);
	        		user.setPassword(encodedPassword);
	               
	               // user.setOtp(null); // Clear OTP after use
	                userRepository.save(user);
	                
	                model.addAttribute("success", "Password updated! Please login.");
	                return "Login";
	            } else {
	                model.addAttribute("error", "Passwords do not match!");
	            }
	        } else {
	            model.addAttribute("error", "Invalid OTP!");
	        }
	    } else {
	        model.addAttribute("error", "User not found!");
	    }
	    return "ResetPassword";
	}
	
	
	

	@PostMapping("/register")
	public String register(UserEntity userEntity,UserDetailEntity userDetailEntity, MultipartFile profilePic )
	{
		System.out.println(userEntity.getFirstName());
		System.out.println(userEntity.getLastName());
		System.out.println("processor => "+Runtime.getRuntime().availableProcessors());
		System.out.println(userDetailEntity.getCountry());
		System.out.println(userDetailEntity.getState());
		
		
		userEntity.setRole("BUYER");
		userEntity.setActive(true);
		userEntity.setCreatedAt(LocalDateTime.now());
		
		
		// encode password
		String encodedPassword = passwordEncoder.encode(userEntity.getPassword());
		System.out.println(encodedPassword);
		userEntity.setPassword(encodedPassword);
		
		// file uploading
		System.out.println(profilePic.getOriginalFilename());
		
		try {
			Map  map = 	cloudinary.uploader().upload(profilePic.getBytes(), null);
			String profilePicURL = map.get("secure_url").toString();
			System.out.println(profilePicURL);
			userEntity.setProfilePicURL(profilePicURL);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		//users insert -> UserRepository
		// new -> x
		
		userRepository.save(userEntity);
		userDetailEntity.setUserId(userEntity.getUserId());//users insert  -> userId 
		userDetailRepository.save(userDetailEntity);//
		
		//welcome mail send
		mailerService.sendWelcomeMail(userEntity);
		return "Login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "Login";
	
	}
	
	
	

}
