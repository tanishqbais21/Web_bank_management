package com.bank;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;
@WebServlet("/history")
public class get_history extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
   

    history_class his=new history_class();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		HttpSession session=request.getSession();
		int acc_no=(int)session.getAttribute("Accountno");
		try {
			long[] fund=his.funds(acc_no);
			String[] date=his.get_date(acc_no);
			String[] mode=his.get_mode(acc_no);
			int[] transfer=his.transfer(acc_no);
			session.setAttribute("funds_arr", fund);
			session.setAttribute("date_arry", date);
			session.setAttribute("mode_arry", mode);
			session.setAttribute("transfer_arry", transfer);
			response.sendRedirect("see_history.jsp");
				
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
     
		
																			
	}



}
