package com.bank;
import java.sql.*;

public class javachk
{
	public String check (int a,String b) throws ClassNotFoundException, SQLException
	{
		int ac_num = a;
        String pin = b;
        System.out.println("hello "+ac_num);
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
        PreparedStatement q = con.prepareStatement("select`Account Number`,Name,Surname,Address,`Aadhar Number`,`Mobile Number`from info,security where `Account Number`=? and pin =? and Acc_id=`Account Number`;");
        q.setString(1, String.valueOf(ac_num));
        q.setString(2, pin);
        ResultSet res = q.executeQuery();
        String name = null;
        if(res.next())
        {

        	name = res.getString("Name");
        	return name;

        }
		return name;
        
	
	}
	public String sur (int a) throws ClassNotFoundException, SQLException
	{
		int ac_num = a;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
        PreparedStatement q = con.prepareStatement("select Surname from info where `Account Number`=?");
        q.setString(1, String.valueOf(ac_num));
        ResultSet res = q.executeQuery();
        String name1 = null;
        while(res.next())
        {

        	name1 = res.getString("Surname");
        	System.out.print(name1);
        	return name1;

        }
		return name1;
        
	
	}
	public String add (int a) throws ClassNotFoundException, SQLException
	{
		int ac_num = a;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
        PreparedStatement q = con.prepareStatement("select Address from info where `Account Number`=?");
        q.setString(1, String.valueOf(ac_num));
        ResultSet res = q.executeQuery();
        String name1 = null;
        while(res.next())
        {

        	name1 = res.getString("Address");
        	System.out.print(name1);
        	return name1;

        }
		return name1;
        
	
	}
	public String Email (int a) throws ClassNotFoundException, SQLException
	{
		int ac_num = a;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
        PreparedStatement q = con.prepareStatement("select `Email ID` from info where `Account Number`=?");
        q.setString(1, String.valueOf(ac_num));
        ResultSet res = q.executeQuery();
        String name1 = null;
        while(res.next())
        {

        	name1 = res.getString("Email ID");
        	System.out.print(name1);
        	return name1;

        }
		return name1;
        
	
	}
	public long mono (int a) throws ClassNotFoundException, SQLException
	{
		int ac_num = a;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
        PreparedStatement q = con.prepareStatement("select `Mobile Number` from info where `Account Number`=?");
        q.setString(1, String.valueOf(ac_num));
        ResultSet res = q.executeQuery();
        long name1=0;
        while(res.next())
        {

        	name1 = res.getLong("Mobile Number");
        	System.out.print(name1);
        	return name1;

        }
		return name1;
        
	
	}
	

}
