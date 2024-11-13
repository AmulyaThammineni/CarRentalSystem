package com.infosys.carRentalSystem.controller;

import com.infosys.carRentalSystem.bean.Car;
import com.infosys.carRentalSystem.bean.CarVariant;
import com.infosys.carRentalSystem.bean.Customer;
import com.infosys.carRentalSystem.dao.CarDao;
import com.infosys.carRentalSystem.dao.CarUserRepository;
import com.infosys.carRentalSystem.dao.CarVariantDao;
import com.infosys.carRentalSystem.dao.CustomerDao;
import com.infosys.carRentalSystem.service.CarUserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@RestController
public class CarRentController {

    @Autowired
    CarVariantDao carVariantDao;

    @Autowired
    CarDao carDao;
    
    @Autowired
    CarUserService service;
    
    @Autowired
    CustomerDao customerDao;
    
    @Autowired
    private CarUserRepository repository;

    @GetMapping("/variantAdd")
    public ModelAndView showVariantEntryPage() {
        String newId = carVariantDao.generateVariantId();
        CarVariant carVariant = new CarVariant(newId);
        ModelAndView mv =  new ModelAndView("variantEntryPage");
        mv.addObject("variantRecord", carVariant);
        return mv;
    }
    @PostMapping("/variantAdd")
    public ModelAndView saveVariant(@ModelAttribute("variantRecord") CarVariant carVariant) {
        carVariantDao.save(carVariant);
        return new ModelAndView("redirect:/index");
    }

    @GetMapping("/variantReport")
    public ModelAndView showVariantReportPage() {
        List<CarVariant> variantList = carVariantDao.findAll();
        variantList.forEach(v-> System.out.println(v));
        ModelAndView mv = new ModelAndView("variantReportPage");
        mv.addObject("variantList", variantList);
        return mv;
    }
    @GetMapping("/variantDeletion/{id}")
    public ModelAndView deleteVariant(@PathVariable String id) {
        carVariantDao.deleteVariantById(id);
        return new ModelAndView("redirect:/variantReport");
    }

    @GetMapping("/carAdd")
    public ModelAndView showCarEntryPage() {
        Car car = new Car();
        List<String> variantIdList = carVariantDao.getAllVariantIds();
        ModelAndView mv = new ModelAndView("carEntryPage");
        mv.addObject("carRecord", car);
        mv.addObject("variantIdList", variantIdList);
        return mv;
    }

    @PostMapping("/carAdd")
    public ModelAndView saveCar(@ModelAttribute("carRecord") Car car) {
        carDao.save(car);
        return new ModelAndView("redirect:/index");
    }

    
	 @GetMapping("/carReport")
		public ModelAndView showCarReportPage() {
			String role=service.getRole();
			String page="";
			if(role.equalsIgnoreCase("Admin"))
				page="carReportPage1";
			else if(role.equalsIgnoreCase("Customer"))
				page="carReportPage2";
			List<Car> carList = carDao.findAll();
			List<CarVariant> variantList=carVariantDao.findAll();
			Map<String,CarVariant> variantMap=new HashMap<>();
			for(CarVariant cv:variantList){
				variantMap.put(cv.getVariantId(),cv);
			}
		ModelAndView mv = new ModelAndView(page);
		mv.addObject("carList", carList);
		mv.addObject("carMap",variantMap);
		return mv;
		}
		@GetMapping("/carDeletion/{id}")
		public ModelAndView deleteCar (@PathVariable String id) {
		carDao.deleteCarById(id);
		return new ModelAndView("redirect:/carReport");
		}  
		@GetMapping("/carUpdate/{id}")
		public ModelAndView showCarUpdatePage (@PathVariable String id) {
		Car car=carDao.findById(id);
		ModelAndView mv=new ModelAndView("carUpdatePage");
		mv.addObject("carRecord",car);
		return mv;
		}  
		@PostMapping("/carUpdate")
		public ModelAndView saveCarUpdatePage(@ModelAttribute("carRecord") Car car) {
			carDao.save(car);
			return new ModelAndView("redirect:/carReport");
		}
		
		@GetMapping("/customerAdd")
		public ModelAndView showCustomerEntryPage() {
			String username=service.getUserName();
			String email=service.getEmail();
			Customer customer=new Customer(username,email);
			ModelAndView mv=new ModelAndView("customerEntryPage");
			mv.addObject("customerRecord",customer);
			return mv;
		}
		@PostMapping("/customerAdd")
		public ModelAndView saveCustomer(@ModelAttribute("customerRecord") Customer customer) {
			customerDao.save(customer);
			return new ModelAndView("redirect:/index");
		}
		@GetMapping("/customerReport")
		public ModelAndView showCustomerReportPage() {
		    List<Customer> customerList = customerDao.findAll();
		    ModelAndView mv = new ModelAndView("customerReportPage");
		    mv.addObject("customerList", customerList);
		    return mv;
		}
		@GetMapping("/singleCustomerReport")
		public ModelAndView showSingleCustomerReportPage() {
			String username=service.getUserName();
			Customer customer=customerDao.findById(username);
		    ModelAndView mv = new ModelAndView("singleCustomerReportPage");
		    mv.addObject("customer", customer);
		    return mv;
		}
		@GetMapping("/customerUpdate/{id}")
		public ModelAndView showCustomerUpdatePage(@PathVariable String id) {
			String role=service.getRole();
			String page="";
			if(role.equalsIgnoreCase("Admin"))
				page="customerUpdatePage1";
			else if(role.equalsIgnoreCase("Customer"))
				page="customerUpdatePage2";
			Customer customer=customerDao.findById(id);
			ModelAndView mv=new ModelAndView(page);
			mv.addObject("customerRecord",customer);
			return mv;
		}
		@PostMapping("/customerUpdate")
		public ModelAndView updateCustomer(@ModelAttribute("customerRecord") Customer customer) {
			String role=service.getRole();
			String page="";
			if(role.equalsIgnoreCase("Admin"))
				page="redirect:/customerReport";
			else if(role.equalsIgnoreCase("Customer"))
				page="redirect:/singleCustomerReport";
			customerDao.save(customer);
			return new ModelAndView(page);
		}
		@GetMapping("/customerDelete/{id}")
		public ModelAndView deleteCustomer(@PathVariable String id) {
			customerDao.deleteCustomerById(id);
			repository.deleteById(id);
			return new ModelAndView("redirect:/singleCustomerReport");
		}

	} 
