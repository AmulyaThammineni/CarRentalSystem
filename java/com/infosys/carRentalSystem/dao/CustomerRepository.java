package com.infosys.carRentalSystem.dao;

import com.infosys.carRentalSystem.bean.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

// Repository interface for Customer entity
public interface CustomerRepository extends JpaRepository<Customer, String> {

    // Custom query method to find customers by last name
    //List<Customer> findByLastName(String lastName);
    // You can add more query methods here as needed
	@Query("select status from Customer where username=?1")
	public Boolean getCustomerStatusByUsername(String username);
	
	@Query("select expiryDate from Customer where username=?1")
	public String getLicenceExpiryDate(String username);
}