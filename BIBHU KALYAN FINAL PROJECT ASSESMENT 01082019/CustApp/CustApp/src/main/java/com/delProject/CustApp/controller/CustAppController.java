package com.delProject.CustApp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


import com.delProject.CustApp.model.CustApp;
import com.delProject.CustApp.service.CustAppService;


@RestController
@RequestMapping("/custApps")
public class CustAppController {
@Autowired
private CustAppService custAppService;

 @GetMapping("/")
 public ModelAndView findAll()  {
	 List<CustApp> custAppsList = custAppService.findAll();
	 
	ModelAndView modelAndView = new ModelAndView("listcustApps");
	modelAndView.addObject("CUSTAPPSLIST", custAppsList);
	return modelAndView;
 }
 
 @PostMapping("/checkuser")
 public ModelAndView requestLogin(@RequestParam String user, @RequestParam String password) {
	 ModelAndView modelAndView;
	 if ((user.contentEquals("user")) && (password.contentEquals("password")) ) {
		 modelAndView = new ModelAndView("home");
	 } else {
		 modelAndView = new ModelAndView("index");
	 }
	 return modelAndView;
 }


 @PostMapping("/save")
 public ModelAndView save(@RequestParam Integer id, @RequestParam String name, @RequestParam String city, @RequestParam String phone, @RequestParam String email) 
 {
	 CustApp custApp=new CustApp();
	 custApp.setId(id);
	 custApp.setName(name);
	 custApp.setCity(city);
	 custApp.setPhone(phone);
	 custApp.setEmail(email);
	 
	 custAppService.save(custApp);
	 List<CustApp> custAppsList = custAppService.findAll();
	 ModelAndView modelAndView = new ModelAndView("listcustApps");
	 modelAndView.addObject("CUSTAPPSLIST", custAppsList);
	 return modelAndView;
 }
 
 @PostMapping("/update")
	public ModelAndView modify(@RequestParam Integer id) {
		CustApp custApp = custAppService.findById(id);
		ModelAndView modelAndView = new ModelAndView("updatecustApp");
		modelAndView.addObject("CUSTAPP", custApp);
		return modelAndView;
	}
 
 @GetMapping("/delete")
	public ModelAndView delete(@RequestParam Integer id) {

		CustApp custApp = custAppService.findById(id);
		custAppService.delete(custApp);
		List<CustApp> custAppsList = custAppService.findAll();
		ModelAndView modelAndView = new ModelAndView("listcustApps");
		modelAndView.addObject("CUSTAPPSLIST", custAppsList);
		return modelAndView;
	}
	@PostMapping("/retrieve")
	public ModelAndView retrieve(@RequestParam Integer id) {
		CustApp custApp = custAppService.findById(id);
		ModelAndView modelAndView = new ModelAndView("custAppinfo");
		modelAndView.addObject("CUSTAPP", custApp);
		return modelAndView;
	}
 }
