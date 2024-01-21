package com.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class StudentDa {
	
     private Connection conn;
     
     public StudentDa(Connection conn){
    	 super();
    	 this.conn=conn;
     }
	public String insert(String name,String clas,String roll_no,String address,String phone_no,String gmail,String room_no)
	{
		String result = "Data entered successfully";	
		try {
	    String sql = "insert into student(name,clas,roll_no,address,phone_no,gmaill,room_no) values(?,?,?,?,?,?,?)";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1,name);
		ps.setString(2,clas);
		ps.setString(3,roll_no);
		ps.setString(4,address);
		ps.setString(5,phone_no);
		ps.setString(6,gmail);
		ps.setString(7,room_no);
		int i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e);
		}
		return result;
		
	}
	public String register(String uname,String uemail,String upass,String cpass,String contact)
	{
		String result = "Data entered successfully";	
		try {
	    String sql = "insert into student(name,clas,roll_no,address,phone_no,gmaill,room_no) values(?,?,?,?,?,?,?)";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1,uname);
		ps.setString(2,uemail);
		ps.setString(3,upass);
		ps.setString(4,cpass);
		ps.setString(5,contact);
		
		int i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e);
		}
		return result;
		
	}
	
	public List<Student> getstudents(String room) throws SQLException {
		 List<Student> studata = new ArrayList<Student>();
		 Student sd=null;
			String sql = "select * from student where room_no="+room;
			PreparedStatement ps=conn.prepareStatement(sql);
		    ResultSet rs =ps.executeQuery();
			while(rs.next()) {
				sd=new Student();
				sd.setId(rs.getInt(1));
				sd.setName(rs.getString(2));
				sd.setClas(rs.getString(3));
				sd.setRollNo(rs.getString(4));
				sd.setAddress(rs.getString(5));
				sd.setPhoneNo(rs.getString(6));
				sd.setGmail(rs.getString(7));
				sd.setRoomNo(rs.getString(8));
				studata.add(sd);
			}
			return studata;		
	
	}
	
	public String roomcheck(String room) throws SQLException {
		String sql = "select count(*) as total from student where room_no="+room;
		String count = null ;
		PreparedStatement ps=conn.prepareStatement(sql);
	    ResultSet rs =ps.executeQuery();
	    
	    while(rs.next()) {
	    	count=rs.getString("total");
	    }
		return count;
	}
	public List<Student> getstudentbyyear(String year) throws SQLException {
		 List<Student> studata = new ArrayList<Student>();
		 Student sd=null;
			String sql ="SELECT * FROM student WHERE clas='"+year+ "'";
			PreparedStatement ps=conn.prepareStatement(sql);
		    ResultSet rs =ps.executeQuery();
			while(rs.next()) {
				sd=new Student();
				sd.setName(rs.getString(2));
				sd.setClas(rs.getString(3));
				sd.setRollNo(rs.getString(4));
				sd.setAddress(rs.getString(5));
				sd.setPhoneNo(rs.getString(6));
				sd.setGmail(rs.getString(7));
				sd.setRoomNo(rs.getString(8));
				studata.add(sd);
			}
			return studata;		
	
	}
	public String searchbyname(String name) throws SQLException {
		String sql = "SELECT * FROM student WHERE name='"+name+ "'";
		String roomno = "" ;
		PreparedStatement ps=conn.prepareStatement(sql);
	    ResultSet rs =ps.executeQuery();
	    
	    while(rs.next()) {
	    	roomno=rs.getString(8);
	    }
		return roomno;
	}
	
	public List<Student> searchbyaddress(String address) throws SQLException {
		 List<Student> studata = new ArrayList<Student>();
		 Student sd=null;
			String sql ="SELECT * FROM student WHERE address='"+address+ "'";
			PreparedStatement ps=conn.prepareStatement(sql);
		    ResultSet rs =ps.executeQuery();
			while(rs.next()) {
				sd=new Student();
				sd.setName(rs.getString(2));
				sd.setClas(rs.getString(3));
				sd.setRollNo(rs.getString(4));
				sd.setAddress(rs.getString(5));
				sd.setPhoneNo(rs.getString(6));
				sd.setGmail(rs.getString(7));
				sd.setRoomNo(rs.getString(8));
				studata.add(sd);
			}
			return studata;		
	
	}
	public List<Student> searchbyroll(String rollno) throws SQLException {
		 List<Student> studata = new ArrayList<Student>();
		 Student sd=null;
			String sql ="SELECT * FROM student WHERE roll_no='"+rollno+ "'";
			PreparedStatement ps=conn.prepareStatement(sql);
		    ResultSet rs =ps.executeQuery();
			while(rs.next()) {
				sd=new Student();
				sd.setId(rs.getInt(1));
				
			}
			return studata;		
	
	}
	
	public Student getstudentbyId(int id) throws SQLException {
		 List<Student> studata = new ArrayList<Student>();
		 Student sd=null;
			String sql = "select * from student where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
		    ResultSet rs =ps.executeQuery();
			while(rs.next()) {
				sd=new Student();
				sd.setId(rs.getInt(1));
				sd.setName(rs.getString(2));
				sd.setClas(rs.getString(3));
				sd.setRollNo(rs.getString(4));
				sd.setAddress(rs.getString(5));
				sd.setPhoneNo(rs.getString(6));
				sd.setGmail(rs.getString(7));
				sd.setRoomNo(rs.getString(8));
				
			}
			return sd;		
	
	}
	public boolean updateStudent(Student stu) throws SQLException {
		boolean f=false;
		try {
			String sql = "update student set id=?,name=?,clas=?,roll_no=?,address=?,phone_no=?,gmaill=?,room_no=? where id="+stu.getId();
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1,stu.getId());
			ps.setString(2,stu.getName());
			ps.setString(3,stu.getClas());
			ps.setString(4,stu.getRollNo());
			ps.setString(5,stu.getAddress());
			ps.setString(6,stu.getPhoneNo());
			ps.setString(7,stu.getGmail());
			ps.setString(8,stu.getRoomNo());
			
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
				  e.printStackTrace();
			}
		System.out.println(f);
		
		return f;
		
	}
   public boolean deletestudent(int id) {
	boolean f=false;
	
	try {
		String sql = "delete from student where id=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1,id);
		int i=ps.executeUpdate();
		if(i==1) {
			f=true;
		 }
	  }catch(Exception e) {
		e.printStackTrace();
	}
	return f;
	
}
}
   
