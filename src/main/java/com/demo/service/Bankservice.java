package com.demo.service;

import com.demo.model.BankAcc;


public interface Bankservice {
	public boolean loginCheck(String Username, String Password);
	public void createAcc(BankAcc bankAcc);
	public Iterable<BankAcc> getAllAccounts(); 
	public void deleteAccount(int id);
	public BankAcc getAccountById(int id);
	public void updateAccount(BankAcc bankAcc);
	public void deposit(int id, double amount);
	public void withdraw(int id, double amount);

}
