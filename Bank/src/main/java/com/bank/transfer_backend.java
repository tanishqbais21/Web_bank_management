package com.bank;
import java.sql.*;
public class transfer_backend 
{

	credit cid=new credit();
	public void transfer(int acc1,int acc2,long money1,long money2) throws SQLException
	{
	  cid.add_money(acc1, money1);
	  cid.add_money(acc2, money2);
	}
}
