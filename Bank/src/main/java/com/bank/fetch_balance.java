package com.bank;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class fetch_balance
{
	 public static long return_fund(int a) throws Exception
	 {
		 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
	        PreparedStatement p = con.prepareStatement("select fund from funds where acc_Id=?;");
	        p.setString(1, String.valueOf(a));
	        ResultSet res = p.executeQuery();
	        long fund = 0;
	        while (res.next()) {
	            
	            fund = res.getLong("fund");
	        }
	        return fund;
	 }

}
