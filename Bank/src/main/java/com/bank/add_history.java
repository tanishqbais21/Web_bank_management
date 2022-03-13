package com.bank;
import java.sql.*;
public class add_history
{
	void add(int ac1,long fund,String mode,int ac2) throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
		int acc1=ac1;
		long funds=fund;
		String Mode=mode;
		int acc2=ac2;
		PreparedStatement p = con.prepareStatement("insert into history (account,funds,date,mode,transfer_to,time ) value (?,?,curdate(),?,?,now());");
		p.setString(1,String.valueOf(acc1));
	    p.setString(2,String.valueOf(funds));
	    p.setString(3,Mode);
	    p.setString(4, String.valueOf(acc2));
	    p.executeUpdate();
		
	}
	
	
}
