package com.infosys.carRentalSystem.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.ArrayList;
import java.util.Collection;

@Entity
public class Customer  {

    @Id
    private String username;
    private String firstName;
    private String lastName;
    private String address;
    private String email;
    private String license;
    private String expiryDate;
    
    public Customer() {
        super();
    }

    public Customer(String username,String firstName,String lastName,String address ,String email,String license,String expiryDate) {
        super();
        this.username=username;
        this.firstName=firstName;
        this.lastName=lastName;
        this.address=address;
        this.email=email;
        this.license=license;
        this.expiryDate=expiryDate;
        
    }

    
    public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLicense() {
		return license;
	}

	public void setLicense(String license) {
		this.license = license;
	}

	public String getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}

	@Override
	public String toString() {
		return "Customer [username=" + username + ", firstName=" + firstName + ", lastName=" + lastName + ", address="
				+ address + ", email=" + email + ", license=" + license + ", expiryDate=" + expiryDate + "]";
	}

	
    
}