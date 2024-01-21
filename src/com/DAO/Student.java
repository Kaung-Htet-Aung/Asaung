package com.DAO;
public class Student {
	
	private String name, clas, address, phone_no,roll_no,gmail,room_no;
	private int id;

	
	public Student() {
		super();
	}

	public Student(int id,String name,String clas, String roll_no, String address,String phone_no,String gmail,String room_no) {
		super();
		this.id=id;
		this.name = name;
		this.clas = clas;
		this.roll_no = roll_no;
		this.address = address;
		this.phone_no=phone_no;
		this.gmail=gmail;
		this.room_no=room_no;
	}
	public void setId(int id) {
		  this.id=id;
	}
    public int getId() {
    	return id;
    }
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getClas() {
		return clas;
	}

	public void setClas(String clas) {
		this.clas = clas;
	}

	public String getRollNo() {
		return roll_no;
	}

	public void setRollNo(String roll_no) {
		this.roll_no = roll_no;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getPhoneNo() {
		return phone_no;
	}

	public void setPhoneNo(String phone_no) {
		this.phone_no = phone_no;
	}
	
	public String getGmail() {
		return gmail;
	}

	public void setGmail(String gmail) {
		this.gmail = gmail;
	}
	
	public String getRoomNo() {
		return room_no;
	}

	public void setRoomNo(String room_no) {
		this.room_no = room_no;
}
	
	

}
