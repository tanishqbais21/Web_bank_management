package com.bank;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class newacc
 */
@WebServlet("/new_acc")
public class newacc extends HttpServlet {
	private static final long serialVersionUID = 1L;
     insertinto newe =new insertinto(); 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String chk1=request.getParameter("aadhar");
		int s=chk1.length();
		System.out.println("len "+s);
		String chk2=request.getParameter("mobno");
		int s1=chk2.length();
		
		if(request.getParameter("fname")!=""&&request.getParameter("lname")!=""&&request.getParameter("city")!=""&&request.getParameter("email")!=""&&request.getParameter("aadhar")!=""&&request.getParameter("mobno")!=""&&s==12&&s1==10)
		{
			
	
		
		long addrno=0,mobno=0;
		addrno=Long.parseLong(request.getParameter("aadhar"));
		mobno=Long.parseLong(request.getParameter("mobno"));
		int acc_no = 0;
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String city=request.getParameter("city");
		String email=request.getParameter("email");
		
		try {
			acc_no=newe.insert(fname, lname, city, email, addrno, mobno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpSession session=request.getSession();
		session.setAttribute("first_name", fname);
		session.setAttribute("last_name", lname);
		session.setAttribute("acc_no", acc_no);
		response.sendRedirect("new_pass.jsp");
	}
		else
		{
			 
			response.sendRedirect("NewAcc.jsp");
		}
	}

	
	

}
