package com.ms.service;

import java.util.List;

import com.ms.pojo.Contact;

public interface ContactService {
	List<Contact> list();
	void add(Contact c);
	void delete(Contact c);
	void update(Contact c);
	List<Contact> list(int id);
}
