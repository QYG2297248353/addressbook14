package com.ms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ms.pojo.Contact;
import com.ms.service.ContactService;

@Controller
@RequestMapping("")
public class ContactController {
	@Autowired
	ContactService contactService;
	
	@RequestMapping("addressBook")
	public ModelAndView addressbook() {
		ModelAndView mav =new ModelAndView();
		List<Contact> cs=contactService.list();
		mav.addObject("cs", cs);
		mav.setViewName("addressBook/index");
		return mav;
	}
	
	@RequestMapping("addContact")
	public ModelAndView addContact(Contact contact) {
		contactService.add(contact);
		ModelAndView mav =new ModelAndView("redirect:/addressBook");
		return mav;
	}
	
	@RequestMapping("deleteContact")
	public ModelAndView deleteContact(Contact contact) {
		contactService.delete(contact);
		ModelAndView mav =new ModelAndView("redirect:/addressBook");
		return mav;
	}
	
	@RequestMapping("editContact")
	public ModelAndView editContact(Contact contact) {
		ModelAndView mav =new ModelAndView();
		List<Contact> getid=contactService.list(contact.getId());
		mav.addObject("getid", getid);
		mav.setViewName("addressBook/updateContact");
		return mav;
	}
	
	@RequestMapping("updateContact")
	public ModelAndView updateContact(Contact contact) {
		contactService.update(contact);
		ModelAndView mav =new ModelAndView();
		mav.setViewName("redirect:/addressBook");
		return mav;
	}
}
