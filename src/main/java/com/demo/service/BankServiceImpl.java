package com.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.model.BankAcc;
import com.demo.repo.BankRepo;

@Service
public class BankServiceImpl implements Bankservice {
	
	@Autowired
	private BankRepo repo;

	@Override
	public void createAcc(BankAcc bankAcc) {
		
		repo.save(bankAcc);
		
	}

	@Override
	public Iterable<BankAcc> getAllAccounts() {
		return repo.findAll();
	}

	@Override
	public boolean loginCheck(String Username, String Password) {
		if(Username.equalsIgnoreCase("Rushi")&&Password.equalsIgnoreCase("Rushi@123"))
		{
			return true;
		}
		return false;
	}

	@Override
	public void deleteAccount(int id) {
		repo.deleteById(id);
		System.out.println("Account Deleted Sucessfully...");
	}

	@Override
	public BankAcc getAccountById(int id) {
		
		return repo.findById(id).get();
	}

	@Override
	public void updateAccount(BankAcc bankAcc) {
		repo.save(bankAcc);
		
	}
	public void deposit(int id, double amount) {
	    BankAcc acc = repo.findById(id).get();
	    if (acc != null) {
	        acc.setBalance(acc.getBalance() + amount);
	        repo.save(acc);
	    }
	}

	public void withdraw(int id, double amount) {
	    BankAcc acc = repo.findById(id).orElse(null);

	    if (acc == null) {
	        throw new RuntimeException("Account not found");
	    }

	    if (amount <= 0) {
	        throw new RuntimeException("Invalid amount");
	    }

	    if (acc.getBalance() < amount) {
	        throw new RuntimeException("Insufficient balance");
	    }

	    acc.setBalance(acc.getBalance() - amount);
	    repo.save(acc);
	}

}
