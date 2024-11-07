package com.infosys.carRentalSystem.dao;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer ,String>{
	
}