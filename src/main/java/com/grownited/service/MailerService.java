package com.grownited.service;

import java.nio.charset.StandardCharsets;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.grownited.entity.UserEntity;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class MailerService {
	
	@Autowired
	JavaMailSender javaMailSender;
	
	@Autowired
	private ResourceLoader resourceLoader;
	
//	public void sendWelcomeMail(UserEntity user) {
//	
//		SimpleMailMessage message = new SimpleMailMessage(); 
//		
//		message.setTo(user.getEmail());
//		message.setFrom("trivedidiya65@gmail.com");
//		message.setSubject("CodeVerse - Welcome aboard !!! ");
//		message.setText("Hey "+user.getFirstName()+", We are happy to on board in CodeVerse.");
//	
//		javaMailSender.send(message);
//	}

	public void sendWelcomeMail(UserEntity user) {

		MimeMessage message = javaMailSender.createMimeMessage();
		Resource resource = resourceLoader.getResource("classpath:templates/WelcomeMailTemplate.html");

		try {
			String html = new String(resource.getInputStream().readAllBytes(), StandardCharsets.UTF_8);

			MimeMessageHelper helper;

			String body = html.replace("${name}", user.getFirstName()).replace("${email}", user.getEmail())
					.replace("${loginUrl}", "http://localhost:9999/login").replace("${companyName}", "RetroTrade");

			helper = new MimeMessageHelper(message, true);
			helper.setTo(user.getEmail());
			helper.setFrom("trivedidiya65@gmail.com");

			helper.setSubject("RetroTrade - Welcome aboard !!! ");
			helper.setText(body, true);

			javaMailSender.send(message);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}



public void sendOtpMail(String toEmail, String otp) {
    try {
        MimeMessage message = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true);
        
        helper.setTo(toEmail);
        helper.setSubject("Your CodeVerse Password Reset OTP");
        
        // You can use a simple HTML string here
        String content = "<h3>Password Reset Request</h3>" +
                         "<p>Use the following OTP to reset your password:</p>" +
                         "<h2 style='color:#007bff;'>" + otp + "</h2>" +
                         "<p>This code will expire soon.</p>";
        
        helper.setText(content, true);
        javaMailSender.send(message);
    } catch (Exception e) {
        e.printStackTrace();
    }
}
}