package com.security.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.security.model.RegisterForm;

@Controller
public class SecurityController {

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView showHome(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mav = new ModelAndView("home");
		RegisterForm registerForm = new RegisterForm();
		mav.addObject("registerForm", registerForm);
		return mav;
	}

	@RequestMapping(value = "/submitForm")
	public ModelAndView submitForm(@ModelAttribute("registerForm") RegisterForm registerForm) throws IOException {
		ModelAndView mav = new ModelAndView("home");
		
		return mav;
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView project(@ModelAttribute("registerForm") RegisterForm registerForm) throws IOException {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("registerForm", registerForm);
		return mav;
	}
}
