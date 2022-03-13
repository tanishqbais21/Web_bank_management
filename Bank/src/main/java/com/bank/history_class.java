package com.bank;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class history_class
{
	
   public long[] funds(int acc) throws Exception
   {
	   long[] fund=new long[10];
	   int ac_num = acc;
       System.out.println("hello "+ac_num);
       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
       PreparedStatement q = con.prepareStatement("select funds from history where account=?  order by  time desc;");
       q.setString(1, String.valueOf(ac_num));
       ResultSet res = q.executeQuery();
       int i=0;
       while(res.next()&&i<10)
       {

       	fund[i] = res.getLong("funds");
       	i++;

       }
	   
	   return fund;
   }
   public String[] get_date(int acc) throws Exception
   {
	   String[] date1=new String[10];
	   int ac_num = acc;
       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
       PreparedStatement q = con.prepareStatement("select date from history where account=?  order by  time desc;");
       q.setString(1, String.valueOf(ac_num));
       ResultSet res = q.executeQuery();
       int i=0;
       while(res.next()&&i<10)
       {

       	date1[i] = String.valueOf(res.getString("date"));
       	
       	System.out.println(date1[i]);
       	i++;

       }
	   
	   return date1;
}
   public String[] get_mode(int acc) throws Exception
   {
	   String[] date1=new String[10];
	   int ac_num = acc;
       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
       PreparedStatement q = con.prepareStatement("select mode from history where account=?  order by  time desc;");
       q.setString(1, String.valueOf(ac_num));
       ResultSet res = q.executeQuery();
       int i=0;
       while(res.next()&&i<10)
       {

       	date1[i] = res.getString("mode");
       	
       	System.out.println(date1[i]);
       	i++;

       }
	   
	   return date1;
}
   public int[] transfer(int acc) throws Exception
   {
	   int[] fund=new int[10];
	   int ac_num = acc;
       System.out.println("hello "+ac_num);
       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
       PreparedStatement q = con.prepareStatement("select transfer_to from history where account=?  order by  time desc;");
       q.setString(1, String.valueOf(ac_num));
       ResultSet res = q.executeQuery();
       int i=0;
       while(res.next()&&i<10)
       {

       	fund[i] = res.getInt("transfer_to");
       	i++;

       }
	   
	   return fund;
   }
   
}
