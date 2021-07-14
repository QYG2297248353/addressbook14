package com.ms.mapper;

import java.util.List;

import com.ms.pojo.Contact;

public interface ContactMapper {
//	数据查询
	public List<Contact> list();
//	添加数据
	public int add(Contact contact);
//	删除数据
	public void delete(int id);
//	更新数据
	public int update(Contact contact); 
//	数据查询id
	public List<Contact> get(int id);
}
