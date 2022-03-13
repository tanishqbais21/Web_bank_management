package com.bank;
import java.sql.*;
public class setpass
{

	public void genpass(String password)throws Exception
	{
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");//get connection
	    Statement s = con.createStatement();//create object of statement class
		String pass=password;
		PreparedStatement q =con.prepareStatement("insert into security (pin) value(?)");
	    q.setString(1,pass);
	    q.executeUpdate();
	    
	    
	}
  
}
