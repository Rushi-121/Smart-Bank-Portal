package com.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class BankAcc {
	@Id
	private int id;
	private String name;
	private String accountnumber;
	private String acctype;
	private double balance;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAccountnumber() {
		return accountnumber;
	}
	public void setAccountnumber(String accountnumber) {
		this.accountnumber = accountnumber;
	}
	public String getAcctype() {
		return acctype;
	}
	public void setAcctype(String acctype) {
		this.acctype = acctype;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public BankAcc(int id, String name, String accountnumber, String acctype, double balance) {
		super();
		this.id = id;
		this.name = name;
		this.accountnumber = accountnumber;
		this.acctype = acctype;
		this.balance = balance;
	}
	public BankAcc() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "BankAcc [id=" + id + ", name=" + name + ", accountnumber=" + accountnumber + ", acctype=" + acctype
				+ ", balance=" + balance + "]";
	}
	
}
