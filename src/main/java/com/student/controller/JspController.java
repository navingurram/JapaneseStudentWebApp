package com.student.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JspController {
	
	@GetMapping("/enroll")
	public String enroll() {
		return "overview/enroll";
	}

	@GetMapping("/completed")
	public String complete() {
		return "overview/completed";
	}

	@GetMapping("/upcoming")
	public String upcoming() {
		return "overview/upcoming";
	}

	@GetMapping("/testExam")
	public String testExam() {
		return "Test&Exam/testExam";
	}

	@GetMapping("/homework")
	public String homework() {
		return "Homework/homework";
	}

	@GetMapping("/profile")
	public String profile() {
		return "Profile/profile";
	}

	@GetMapping("/help")
	public String help() {
		return "Profile/help";
	}

	@GetMapping("/password")
	public String password() {
		return "Profile/password";
	}

	@GetMapping("/changepassword")
	public String getchangepassword() {
		return "Profile/changepassword";
	}

	@GetMapping("/notification")
	public String getnotification() {
		return "notification";
	}

	@GetMapping("/question")
	public String getquestion() {
		return "Test&Exam/question";
	}

	@GetMapping("/repeat")
	public String getrepeat() {
		return "Test&Exam/repeat";
	}

	@GetMapping("/viewtest")
	public String getviewtest() {
		return "Test&Exam/viewtest";
	}

	@GetMapping("/submit")
	public String getsubmit() {
		return "Test&Exam/submit";
	}
}
