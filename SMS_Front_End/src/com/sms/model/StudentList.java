package com.sms.model;

import java.util.ArrayList;
import java.util.List;

public class StudentList {

	List<Student> list;

	public static List<Student> studentDB = new ArrayList<>();
	public List<Student> getList() {
		return list;
	}

	public void setList(List<Student> list) {
		this.list = list;
	}

	
	
}
