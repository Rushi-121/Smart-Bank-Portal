package com.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.demo.model.BankAcc;
@Repository
public interface BankRepo extends JpaRepository<BankAcc, Integer> {

}
