package com.ms.mapper;

import java.util.List;

import com.ms.pojo.Contact;

public interface ContactMapper {
//	���ݲ�ѯ
	public List<Contact> list();
//	�������
	public int add(Contact contact);
//	ɾ������
	public void delete(int id);
//	��������
	public int update(Contact contact); 
//	���ݲ�ѯid
	public List<Contact> get(int id);
}
