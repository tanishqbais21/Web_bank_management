package com.bank;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class insertinto 
{

	public int insert(String nam,String last, String add,String Email,Long ad_no,long mo_no)throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver"); //load mysql driver
	    String name,addr,E_mail,las,pass;
	    int a=0;
	    String nu;
	    long ad_num,mo_num;
	    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");//get connection
	    Statement s = con.createStatement();//create object of statement class
	    nu="null";
	    name=nam;
	    las=last;
	    addr=add;
	    E_mail=Email;
	    ad_num=ad_no;
	    mo_num=mo_no;
	    PreparedStatement p = con.prepareStatement("insert into info (Name,Surname,Address,`Aadhar Number`,`Mobile Number`,`Email ID`) value(?,?,?,?,?,?)");// TO INSERT INTO RELATION

	    p.setString(1,nam);
	    p.setString(2,las);
	    p.setString(3,addr);
	    p.setString(4, String.valueOf(ad_num));
	    p.setString(5,String.valueOf(mo_num));
	    p.setString(6,E_mail);
	    p.executeUpdate();
		    
		    PreparedStatement v =con.prepareStatement("select  `Account Number` from info where `Aadhar Number`=?"); // TO FETCH ACCOUNT NUMBER FROM DATABASE
		    v.setString(1, String.valueOf(ad_num));
		    ResultSet srs = v.executeQuery();
		    while(srs.next())
		    {
		        
		        a= srs.getInt("Account Number");	
		    
		    }
		
		    return a;
	}
  
}
