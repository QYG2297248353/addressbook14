package com.ms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ms.mapper.ContactMapper;
import com.ms.pojo.Contact;
import com.ms.service.ContactService;

@Service
public class ContactServiceImpl implements ContactService {
	@Autowired
	ContactMapper contactMapper;
	
	@Override
	public List<Contact> list() {
		// TODO Auto-generated method stub
		return contactMapper.list();
	}

	@Override
	public void add(Contact c) {
		// TODO Auto-generated method stub
		contactMapper.add(c);
	}

	@Override
	public void delete(Contact c) {
		// TODO Auto-generated method stub
		contactMapper.delete(c.getId());
	}

	@Override
	public List<Contact> list(int id) {
		// TODO Auto-generated method stub
		return contactMapper.get(id);
	}

	@Override
	public void update(Contact c) {
		// TODO Auto-generated method stub
		contactMapper.update(c);
	}
	
}
