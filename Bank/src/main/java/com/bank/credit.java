package com.bank;
import java.sql.*;
public class credit
{
  public void add_money(int a,long c) throws SQLException
  {
	  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
      Statement smt=con.createStatement();
      String sql=String.format("update funds set fund=%d where Acc_ID=%d",c,a);
      PreparedStatement p= con.prepareStatement(sql);
      p.executeUpdate();
  }
	
}
