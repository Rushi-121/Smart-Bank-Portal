package com.demo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.model.BankAcc;
import com.demo.service.Bankservice;

@Controller
public class BankController {
	
	@Autowired
	private Bankservice service;
	
	@RequestMapping("/")
	public String getHome() {
		return "index";
	}
	
	@RequestMapping("/create")
	public String AccCrePage() {
		return"accountcreate";
	}
	@RequestMapping("/save")
	public String createAcc(@ModelAttribute BankAcc bankAcc) {
		System.out.println("Inside Create Bank Account");
		service.createAcc(bankAcc);
		return"login";
	}
	
	@RequestMapping("/log")
	public String loginLogin() {
		return"login";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam String username,
	                    @RequestParam String password,
	                    Model model) {

	    if(username.equals("admin") && password.equals("123")) {
	        return "redirect:/dashboard";
	    } else {
	        model.addAttribute("error", "Invalid Username or Password");
	        return "login";
	    }
	}
	@RequestMapping("/reg")
	public String regPage() {
		return "redirect:/login";
		
	}
	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
	    model.addAttribute("accounts", service.getAllAccounts());
	    return "dashboard";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
	    session.invalidate();
	    return "redirect:/";
	}
	
	@RequestMapping("/view")
	public String viewAccount(Model model) {
	    model.addAttribute("list", service.getAllAccounts());
	    return "viewaccount";
	}
	@RequestMapping("/edit")
	public String editAccount(@RequestParam int id, Model model) {
	    BankAcc bankAcc = service.getAccountById(id);
	    model.addAttribute("account", bankAcc);
	    return "edit";
	}
	@RequestMapping("/update")
	public String updateAcc(@ModelAttribute BankAcc bankAcc) {
	    service.updateAccount(bankAcc);
	    return "redirect:/view";
	}
	@RequestMapping("/delete")
	public String deleteAccount(@RequestParam int id) {
	    service.deleteAccount(id);;
	    return "redirect:/view";
	}
	
	// Open deposit page
	@RequestMapping("/depositPage")
	public String depositPage(@RequestParam int id, Model model) {
	    model.addAttribute("id", id);
	    return "deposit";
	}

	// Deposit money
	@RequestMapping("/deposit")
	public String deposit(@RequestParam int id, @RequestParam double amount) {
	    service.deposit(id, amount);
	    return "redirect:/view";
	}

	// Open withdraw page
	@RequestMapping("/withdrawPage")
	public String withdrawPage(@RequestParam int id, Model model) {
	    model.addAttribute("id", id);
	    return "withdraw";
	}

	// Withdraw money
	@RequestMapping("/withdraw")
	public String withdraw(@RequestParam int id, @RequestParam double amount) {
	    service.withdraw(id, amount);
	    return "redirect:/view";
	}
	@RequestMapping("/home")
	public String adminHome() {
	    return "home";
	}
}
