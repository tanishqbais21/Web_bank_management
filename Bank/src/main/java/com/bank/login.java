package com.bank;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import org.apache.jasper.tagplugins.jstl.core.Out;

@WebServlet("/Login")
public class login extends HttpServlet {
  
   

	javachk  chk=new javachk();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		if(request.getParameter("Acc no")!=""&& request.getParameter("pin")!="")
		{
		int acc_no=Integer.parseInt(request.getParameter("Acc no"));
		String pin=request.getParameter("pin");
		String nam=null;
		try {
			nam = chk.check(acc_no,pin);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			if(nam!=null)
			{
				HttpSession session=request.getSession();
				session.setAttribute("Accountno", acc_no);
				session.setAttribute("Name", nam);
				session.setAttribute("pass", pin);
				response.sendRedirect("Welcome.jsp");
			}
			else
			{
				        
				         response.sendRedirect("Profile.jsp");
				        
			}
	}
	else
	{
		
		response.sendRedirect("Profile.jsp");
		
	}



}
}
